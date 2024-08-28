struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(11720u, 47256u);

var<private> global1: array<i32, 9> = array<i32, 9>(1i, 0i, i32(-2147483648), 4912i, -2956i, i32(-2147483648), -23952i, -3642i, 9927i);

var<private> global2: Struct_1;

var<private> global3: array<vec3<i32>, 6>;

var<private> global4: vec2<i32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_sub_i32(countOneBits(-3370i), ~(~(-31197i)));
    let var_1 = reverseBits(-vec3<i32>(~global1[_wgslsmith_index_u32(min(26049u, 1u), 9u)], global4.x, -17903i));
    var var_2 = reverseBits(30980i);
    var_2 = i32(-1i) * -select(firstTrailingBit(global4.x), var_1.x, true);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1083f, global2.a, 165f, global2.a), vec4<f32>(global2.a, -304f, 846f, global2.a)))))), vec4<f32>(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-358f, 560f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a, global2.a))), _wgslsmith_f_op_f32(max(-689f, _wgslsmith_f_op_f32(-global2.a)))), true & (var_0 <= global4.x))));
    return firstTrailingBit(var_1.x);
}

fn func_2(arg_0: vec2<u32>) -> vec2<i32> {
    global4 = abs(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(0i, _wgslsmith_dot_vec4_i32(-vec4<i32>(43598i, global4.x, u_input.b.x, 0i), -u_input.d))));
    let var_0 = _wgslsmith_add_i32(-(~func_3()), ~_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(~abs(global0.x), 9u)], 0i));
    var var_1 = vec4<i32>(~_wgslsmith_dot_vec3_i32(-global3[_wgslsmith_index_u32(arg_0.x, 6u)], ~u_input.b) >> (~u_input.a.x % 32u), -44038i, 29955i, global4.x);
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0, vec2<u32>(24720u, u_input.c), arg_0 | arg_0), min(firstTrailingBit(vec2<u32>(45926u, 22055u)), select(arg_0, vec2<u32>(arg_0.x, 0u), true))), 9u)] <= (_wgslsmith_mod_i32(~(-648i), 2147483647i) & var_0);
    var_2 = any(select(select(vec3<bool>(true, any(vec2<bool>(true, false)), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), global4.x >= var_0)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(false, true, any(vec4<bool>(true, false, false, false)) & true)));
    return _wgslsmith_clamp_vec2_i32(min(reverseBits(u_input.b.xz), ~vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 9u)], _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(u_input.c, 9u)]))), var_1.wy, u_input.b.xy);
}

fn func_1() -> Struct_1 {
    global4 = -_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(1u, 6u)], vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 9u)], 1i, global4.x)), i32(-1i) * -global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), func_2(u_input.a));
    let var_0 = u_input.d.x;
    let var_1 = var_0;
    global3 = array<vec3<i32>, 6>();
    let var_2 = abs(~_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.c, 9u)], u_input.b.x), 0i), _wgslsmith_mod_vec2_i32(select(u_input.b.zx, vec2<i32>(global1[_wgslsmith_index_u32(36567u, 9u)], -1i), false), vec2<i32>(var_1, -36273i))));
    return Struct_1(global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.a);
    let var_1 = !select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), all(vec2<bool>(false, false))));
    var var_2 = 1019f;
    var var_3 = global0.x >= global0.x;
    global2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(reverseBits(global1[_wgslsmith_index_u32(70231u, 9u)]), -global1[_wgslsmith_index_u32(~14616u, 9u)]));
}

