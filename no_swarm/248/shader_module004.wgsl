struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: vec2<f32> = vec2<f32>(-280f, -654f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = arg_0.c.d;
    let var_1 = Struct_3(vec3<u32>(56461u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, 0u, 5576u), vec4<u32>(~arg_0.a.x, 1u, countOneBits(1u), _wgslsmith_mult_u32(arg_0.c.e.x, 25348u))), ~1u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, -1093f, arg_0.b.x, -1123f), arg_0.b)), _wgslsmith_f_op_vec4_f32(-arg_0.b)))))), arg_0.c);
    var_0 = _wgslsmith_add_vec2_i32(-(~(-var_1.c.d)), select(abs(-_wgslsmith_mod_vec2_i32(var_1.c.d, vec2<i32>(u_input.d, 0i))), vec2<i32>(_wgslsmith_add_i32(var_0.x, -1i) >> (1u % 32u), 0i), all(!vec4<bool>(var_1.c.a.a.x, true, global0[_wgslsmith_index_u32(0u, 18u)], true))));
    let var_2 = reverseBits(~var_0.x);
    var var_3 = 926f;
    return !(!((max(var_1.c.b, var_0.x) ^ 1i) > _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.d.x, var_0.x), -var_1.c.d)));
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(566f + arg_0.b.x)))));
    var var_1 = vec2<bool>(any(select(vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 18u)], true, arg_0.c.a.a.x)), arg_0.c.a.a.x, true), !(!arg_0.c.c.a.wwx), arg_0.c.a.a.xwz)), global0[_wgslsmith_index_u32(~(~countOneBits(arg_0.a.x)) >> (reverseBits(~39546u) % 32u), 18u)]);
    var var_2 = var_0 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -742f));
    let var_3 = arg_0.c.d.x;
    return Struct_3(arg_0.c.e, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_f32(-931f, arg_0.b.x))), var_0, var_0, var_0) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-arg_0.b.x), var_0)))), Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.a.x, 46332u, arg_0.c.e.x), 18u)], true, all(vec2<bool>(false, false)), func_3(arg_0))), reverseBits(max(u_input.c << (u_input.a.x % 32u), reverseBits(-7399i))), Struct_1(select(select(vec4<bool>(false, var_1.x, true, false), arg_0.c.c.a, arg_0.c.c.a), select(arg_0.c.a.a, arg_0.c.a.a, vec4<bool>(false, true, false, true)), var_1.x | false)), _wgslsmith_add_vec2_i32(~(-arg_0.c.d), vec2<i32>(5050i, arg_0.c.d.x)), abs(reverseBits(firstTrailingBit(arg_0.a)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = func_2(arg_2);
    var var_1 = Struct_2(Struct_1(select(select(!var_0.c.a.a, arg_2.c.a.a, any(var_0.c.a.a)), var_0.c.c.a, ~82628u >= u_input.b)), 8901i, var_0.c.a, firstTrailingBit(var_0.c.d), firstLeadingBit(~(~vec3<u32>(5187u, var_0.a.x, 22226u))));
    let var_2 = var_1.c;
    var var_3 = func_2(arg_2);
    let var_4 = -989f;
    return select(var_3.c.a.a, !select(vec4<bool>(arg_2.c.a.a.x, global0[_wgslsmith_index_u32(~var_1.e.x, 18u)], false, all(var_3.c.a.a.yw)), vec4<bool>(arg_2.c.a.a.x, -1428f >= var_0.b.x, false, func_2(arg_2).c.c.a.x), select(vec4<bool>(var_2.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], var_2.a.x, true), arg_2.c.a.a, var_0.b.x <= 1117f)), !(!(!vec4<bool>(true, false, true, var_1.a.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(60690i, u_input.c >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, u_input.c), _wgslsmith_sub_vec2_i32(~vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(2147483647i, u_input.c)))), u_input.d), ~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-22533i, u_input.c), 0i | u_input.d), _wgslsmith_add_i32(u_input.d, -2147483647i), -43817i, u_input.d));
    global0 = array<bool, 18>();
    global1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-586f, global1.x) + _wgslsmith_f_op_f32(-global1.x)) - 417f), -162f)));
    let var_1 = Struct_1(!(!func_1(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(0u, 61288u), vec2<u32>(u_input.a.x, u_input.a.x)), max(vec4<u32>(14741u, u_input.a.x, 57372u, 0u), vec4<u32>(u_input.b, 59065u, 1u, 0u)), Struct_3(vec3<u32>(u_input.a.x, 0u, 5790u), vec4<f32>(2446f, 683f, -1165f, global1.x), Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true, false, global0[_wgslsmith_index_u32(14153u, 18u)])), -59818i, Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), vec2<i32>(-2147483647i, 18268i), vec3<u32>(4294967295u, u_input.a.x, 0u))))));
    var var_2 = func_2(Struct_3(~((vec3<u32>(1u, 4294967295u, u_input.a.x) & vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)) | _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), vec3<u32>(u_input.a.x, 0u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, global1.x, -191f, 1351f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 404f, global1.x, global1.x)))) - vec4<f32>(-432f, _wgslsmith_f_op_f32(f32(-1f) * -1276f), 277f, global1.x)), func_2(Struct_3(~vec3<u32>(56786u, 0u, 609u), vec4<f32>(778f, 450f, global1.x, 305f), Struct_2(Struct_1(var_1.a), u_input.d, var_1, vec2<i32>(u_input.c, u_input.c), vec3<u32>(u_input.a.x, 16190u, 4294967295u)))).c));
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(1u, firstTrailingBit(42311u))), ((~0i >> (var_2.a.x % 32u)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c.b, u_input.d, var_2.c.b) ^ vec3<i32>(var_2.c.d.x, var_2.c.b, -2147483647i), abs(vec3<i32>(-2241i, 1i, var_2.c.b)))) >> (_wgslsmith_div_u32(~firstTrailingBit(0u), 51473u) % 32u), _wgslsmith_div_f32(447f, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1133f))));
}

