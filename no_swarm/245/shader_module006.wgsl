struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<i32, 28>;

var<private> global2: array<i32, 4> = array<i32, 4>(2147483647i, 1i, 44792i, 1i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec3<bool> {
    let var_0 = u_input.b;
    var var_1 = true & !arg_1;
    global1 = array<i32, 28>();
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(811f, 1014f)))));
    return vec3<bool>(true, true, true);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>) -> f32 {
    var var_0 = Struct_3(arg_0.x, vec2<u32>(15229u & _wgslsmith_mod_u32(~0u, _wgslsmith_add_u32(41386u, u_input.b.x)), u_input.b.x), !any(select(vec3<bool>(true, true, true), func_3(global0.x, false), 1i > global1[_wgslsmith_index_u32(1u, 28u)])));
    global0 = firstLeadingBit(-(vec4<i32>(global2[_wgslsmith_index_u32(select(u_input.b.x, var_0.b.x, var_0.c), 4u)], ~1i, 1i, 19577i) >> (select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 56148u, var_0.b.x, 4294967295u), vec4<u32>(var_0.b.x, 4294967295u, 37377u, 104116u)), reverseBits(vec4<u32>(u_input.b.x, 1u, 1u, 0u)), vec4<bool>(false, var_0.c, true, var_0.c)) % vec4<u32>(32u))));
    global0 = -_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(global0.x, -12077i, 11242i, u_input.d), vec4<i32>(1i, global1[_wgslsmith_index_u32(19829u, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 17107i), var_0.c) >> (vec4<u32>(u_input.b.x, 13325u, 74967u, 0u) % vec4<u32>(32u)), -countOneBits(vec4<i32>(u_input.d, -31892i, -25532i, -14053i))), select(vec4<i32>(42888i, -22109i, -1i, i32(-1i) * -34170i), ~vec4<i32>(33869i, u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 28u)], -71251i), select(vec4<bool>(var_0.c, var_0.c, true, false), !vec4<bool>(false, var_0.c, false, true), false)));
    var var_1 = _wgslsmith_div_u32(var_0.b.x, 0u);
    let var_2 = vec4<u32>(~firstTrailingBit(_wgslsmith_mult_u32(0u, u_input.b.x)), 14125u, 42009u, 4294967295u) & vec4<u32>(~(~(~47106u)), countOneBits(_wgslsmith_mod_u32(463u | var_0.b.x, 40531u)), ~u_input.b.x, u_input.b.x);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(min(-805f, 1f)))));
}

fn func_1(arg_0: i32, arg_1: f32) -> vec3<bool> {
    global1 = array<i32, 28>();
    let var_0 = Struct_3(_wgslsmith_div_f32(691f, _wgslsmith_f_op_f32(func_2(vec2<f32>(arg_1, _wgslsmith_f_op_f32(abs(185f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -1058f, arg_1)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1, arg_1)))))), _wgslsmith_mult_vec2_u32(u_input.b.yy, u_input.b.zy), true);
    global1 = array<i32, 28>();
    global2 = array<i32, 4>();
    global1 = array<i32, 28>();
    return select(vec3<bool>(all(!(!vec4<bool>(true, true, var_0.c, var_0.c))), !(!var_0.c), var_0.c), !vec3<bool>(!var_0.c, select(var_0.c, all(vec3<bool>(true, var_0.c, true)), true && var_0.c), any(!vec3<bool>(false, var_0.c, var_0.c))), !vec3<bool>(all(vec2<bool>(true, true)), 2931f > var_0.a, select(-5436i, 2147483647i, false) <= _wgslsmith_add_i32(u_input.d, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(-(~(i32(-1i) * -global1[_wgslsmith_index_u32(u_input.b.x, 28u)])));
    global2 = array<i32, 4>();
    var var_1 = select(!vec3<bool>(true, select(true, true, false) | select(true, false, false), true != all(vec2<bool>(false, false))), func_1(0i, -1500f), vec3<bool>(func_3(_wgslsmith_add_i32(2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 28u)]) & global2[_wgslsmith_index_u32(92187u, 4u)], false).x, any(vec3<bool>(true, true, true)), !func_1(-34742i, _wgslsmith_f_op_f32(max(1494f, -190f))).x));
    let var_2 = 1i;
    global2 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.b.x, 10979u, 10947u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), select(vec4<u32>(1u, u_input.b.x, 0u, 0u), vec4<u32>(u_input.b.x, 48065u, 4294967295u, u_input.b.x), var_1.x)) & ~countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), firstTrailingBit(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 14148u), vec4<u32>(11914u, 0u, u_input.b.x, 40893u))))));
}

