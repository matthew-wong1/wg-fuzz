struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11>;

var<private> global1: vec4<i32> = vec4<i32>(1i, -57092i, -1i, -1i);

var<private> global2: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    let var_0 = 108f;
    global1 = abs(_wgslsmith_sub_vec4_i32(firstLeadingBit(-(~vec4<i32>(global1.x, global1.x, 9275i, global1.x))), reverseBits(vec4<i32>(global1.x & -2147483647i, firstTrailingBit(80911i), global1.x, ~0i))));
    let var_1 = !select(vec3<bool>(false, true, (17031i ^ global1.x) != _wgslsmith_sub_i32(global1.x, 1i)), vec3<bool>(true, -1942f < _wgslsmith_f_op_f32(var_0 - var_0), !any(vec2<bool>(false, false))), vec3<bool>(any(vec3<bool>(true, true, true)), true, true != (global1.x > global1.x)));
    global0 = array<vec3<i32>, 11>();
    global2 = Struct_1(u_input.b.zz);
    return global1.x | -68179i;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: i32, arg_3: vec3<i32>) -> vec2<u32> {
    var var_0 = Struct_1(reverseBits(u_input.b.zy));
    global2 = Struct_1(global2.a);
    let var_1 = Struct_1(reverseBits(~min(vec2<u32>(4294967295u, 4294967295u), u_input.b.xx | var_0.a)));
    var_0 = var_1;
    return reverseBits(vec2<u32>(35u, 1u) << (u_input.b.zx % vec2<u32>(32u)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = !vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true, any(vec2<bool>(true, false)));
    global2 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(u_input.a, 1u), global2.a.x));
    global1 = ~_wgslsmith_div_vec4_i32(-vec4<i32>(-arg_0, select(-28297i, 0i, var_0.x), ~global1.x, firstLeadingBit(38755i)), vec4<i32>(-20424i, 1i >> (~global2.a.x % 32u), global1.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2902i, arg_0, 2147483647i, global1.x), vec4<i32>(-43245i, -12375i, global1.x, -2147483647i)), -global1.x)));
    let var_1 = 34525u;
    global0 = array<vec3<i32>, 11>();
    return Struct_1(func_4(148f, firstTrailingBit(~_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, global1.x, 32193i), vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(arg_0, -2147483647i, arg_0))), -func_3(vec3<u32>(42821u, 3052u, var_1)), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global2.a << (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u)), ~vec2<u32>(33080u, 16552u)), 11u)]));
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    global2 = func_2(_wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(-(17544i & global1.x), _wgslsmith_dot_vec2_i32(min(global1.zz, vec2<i32>(0i, global1.x)), abs(global1.zx)))));
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(~abs(arg_0), select(firstLeadingBit(u_input.b.zy), arg_0 & vec2<u32>(arg_0.x, u_input.b.x), select(vec2<bool>(false, true), vec2<bool>(false, true), true))), ~((1u >> (1u % 32u)) & func_4(1015f, vec3<i32>(29530i, global1.x, 72569i), global1.x, global0[_wgslsmith_index_u32(43802u, 11u)]).x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-650f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(739f * -218f)))));
    let var_2 = Struct_1(~var_0.a);
    var var_3 = func_2(~(-_wgslsmith_mult_i32(_wgslsmith_div_i32(global1.x, global1.x), 1i)));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(~_wgslsmith_mod_i32(reverseBits(global1.x >> (global2.a.x % 32u)), func_1(global2.a) | global1.x), _wgslsmith_div_i32(~global1.x, _wgslsmith_dot_vec4_i32(select(~vec4<i32>(global1.x, 2147483647i, 2147483647i, global1.x), -vec4<i32>(global1.x, global1.x, global1.x, 30547i), vec4<bool>(true, true, false, false)), select(vec4<i32>(global1.x, 1i, 13117i, global1.x), vec4<i32>(1i, global1.x, global1.x, -8305i), true) >> (countOneBits(u_input.b) % vec4<u32>(32u)))), func_3(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global2.a.x, 0u), ~global2.a.x), 1u, 4294967295u)), ~(-22433i));
    let var_0 = func_2(2147483647i);
    global1 = ~(-(~(vec4<i32>(-1i) * -vec4<i32>(global1.x, global1.x, global1.x, global1.x))));
    global0 = array<vec3<i32>, 11>();
    global0 = array<vec3<i32>, 11>();
    global0 = array<vec3<i32>, 11>();
    var var_1 = select(vec4<bool>(true, false, ~var_0.a.x == u_input.b.x, true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, false))), vec4<bool>(4294967295u == u_input.a, 1u >= _wgslsmith_sub_u32(0u, u_input.b.x), false, true), false), select(select(vec4<bool>(true, var_0.a.x >= 10790u, true, any(vec4<bool>(true, true, false, true))), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(global1.x < global1.x, all(vec4<bool>(false, false, true, true)), select(true, false, false), any(vec2<bool>(true, false)))), select(vec4<bool>(false, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(false, false, true, false), true), false), vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), ~global2.a.x <= ~global2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(0u, ~var_0.a.x, _wgslsmith_mod_u32(var_0.a.x, global2.a.x), u_input.a)) & ~u_input.b);
}

