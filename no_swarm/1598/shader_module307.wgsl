struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: vec4<i32> = vec4<i32>(9757i, i32(-2147483648), 2147483647i, 44109i);

var<private> global2: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(1u, 4294967295u, 1u, 10484u), vec4<u32>(5150u, 1u, 71724u, 0u), vec4<u32>(37056u, 51664u, 56430u, 42679u), vec4<u32>(33563u, 1u, 56121u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 8441u), vec4<u32>(65937u, 0u, 4294967295u, 0u), vec4<u32>(60327u, 53833u, 1u, 1u), vec4<u32>(23883u, 0u, 30200u, 39487u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = Struct_4(3405u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 * arg_0))))));
    return vec2<i32>(~abs(max(global1.x, reverseBits(u_input.e.x))), 3898i);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-222f, 1851f))), u_input.a.xz, Struct_1(~global1.wz, 464f)), -1867f), ~(-reverseBits(u_input.c.zy & u_input.e)), Struct_1(~u_input.c.xy | vec2<i32>(select(u_input.d, 1i, arg_0.x), 1i), -646f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1907f + -321f) - -1993f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-651f)))) - -342f));
    var var_1 = select(~29744u, ~max(_wgslsmith_dot_vec4_u32(~u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 6995u, global0[_wgslsmith_index_u32(4294967295u, 27u)], u_input.a.x), global2[_wgslsmith_index_u32(0u, 8u)])), 84150u), all(!arg_0));
    var_1 = ~global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(27262u, 27u)]), ~u_input.b.x), 27u)];
    let var_2 = max(u_input.c.yy, ~vec2<i32>(max(-622i, 12537i), _wgslsmith_mod_i32(0i, u_input.d)));
    let var_3 = select(select(select(vec4<bool>(select(arg_0.x, false, arg_0.x), all(vec2<bool>(arg_0.x, false)), arg_0.x, arg_0.x), vec4<bool>(any(vec4<bool>(false, false, arg_0.x, arg_0.x)), select(arg_0.x, true, false), arg_0.x, true), true), vec4<bool>(all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), !arg_0.x, all(!arg_0), arg_0.x), any(select(!vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)))), vec4<bool>(59533u <= abs(u_input.a.x), !select(true, all(arg_0), arg_0.x), true, arg_0.x), all(vec3<bool>(arg_0.x, !all(vec3<bool>(false, true, arg_0.x)), any(select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, true, arg_0.x))))));
    return var_0.a;
}

fn func_1() -> f32 {
    var var_0 = ~(~u_input.a);
    var var_1 = Struct_2(func_2(vec3<bool>(true & all(vec4<bool>(true, true, true, true)), true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))))), _wgslsmith_mod_vec2_i32(u_input.c.zx, ~(-global1.zy)) | (func_2(vec3<bool>(true, true, true)).a | ~(~vec2<i32>(global1.x, global1.x))), func_2(vec3<bool>(any(vec3<bool>(true, true, true)), true, false)), -428f);
    var var_2 = true;
    var_1 = Struct_2(var_1.a, u_input.e, Struct_1(_wgslsmith_add_vec2_i32(u_input.c.xz, vec2<i32>(14900i, ~(-52439i))), var_1.c.b), var_1.c.b);
    let var_3 = false;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-964f * var_1.d))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1639f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1435f;
    global1 = reverseBits(min(select(reverseBits(vec4<i32>(global1.x, 11225i, u_input.d, 2147483647i)), -vec4<i32>(global1.x, u_input.d, 0i, u_input.e.x), true), vec4<i32>(-22094i, _wgslsmith_add_i32(-2147483647i, u_input.c.x) >> (global0[_wgslsmith_index_u32(30962u, 27u)] % 32u), -u_input.d, u_input.e.x)));
    let var_1 = 14478i;
    var var_2 = Struct_3(!(var_1 <= firstLeadingBit(var_1)), _wgslsmith_f_op_f32(func_1()), true, all(vec3<bool>(true, true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)))));
    let var_3 = select(vec3<bool>(false, !(any(vec3<bool>(var_2.a, true, true)) & true), false), !select(vec3<bool>(true, var_1 != 59143i, true), !(!vec3<bool>(true, true, var_2.d)), select(vec3<bool>(var_2.a, var_2.a, var_2.a), vec3<bool>(false, var_2.a, var_2.a), false)), vec3<bool>(any(!select(vec4<bool>(false, true, false, var_2.a), vec4<bool>(var_2.a, true, var_2.a, var_2.a), vec4<bool>(var_2.d, var_2.a, var_2.c, false))), !var_2.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.b * var_2.b))) < _wgslsmith_f_op_f32(422f + var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

