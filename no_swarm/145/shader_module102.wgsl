struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec3<f32>, 6>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    return arg_1.x;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32) -> vec3<i32> {
    let var_0 = Struct_2(arg_0.d, arg_0.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c.b.x, arg_0.c.a)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-987f, _wgslsmith_f_op_f32(-arg_0.b.a), _wgslsmith_f_op_f32(select(-707f, arg_0.b.b.x, global0.x)), _wgslsmith_f_op_f32(func_1(vec4<u32>(1u, 1u, u_input.b, u_input.b), global1[_wgslsmith_index_u32(4294967295u, 6u)], false, arg_0.c))), vec4<f32>(571f, arg_0.c.a, arg_0.c.a, 1081f), true))), !(!(!vec4<bool>(global0.x, arg_0.a.x, arg_0.d.x, arg_0.a.x))));
    let var_1 = arg_0;
    var var_2 = vec4<f32>(var_1.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.c.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.a * 1000f) + var_1.b.b.x)))), -134f, arg_0.b.a);
    global0 = !arg_0.a.zz;
    var var_3 = arg_0.d.wz;
    return _wgslsmith_mod_vec3_i32(min(select(-arg_1.yyy, ~arg_1.xwy, true), firstLeadingBit(arg_1.wzx)), select(min(vec3<i32>(arg_1.x, arg_2, arg_1.x) >> (vec3<u32>(1u, u_input.b, 42468u) % vec3<u32>(32u)), arg_1.zzw), vec3<i32>(_wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(u_input.c.x, 19675i, 0i, arg_1.x)), 2777i, u_input.a.x), select(arg_0.d.xzx, !var_0.d.zxz, vec3<bool>(true, false, false)))) | ~vec3<i32>(-arg_2, arg_2, ~abs(-1i));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> vec4<bool> {
    global1 = array<vec3<f32>, 6>();
    global0 = vec2<bool>(_wgslsmith_dot_vec3_i32(select(~vec3<i32>(-1i, 7517i, -2147483647i), -vec3<i32>(u_input.c.x, 2147483647i, 2147483647i), u_input.b > arg_1.x), ~func_3(Struct_2(vec4<bool>(true, false, arg_0, global0.x), Struct_1(1685f, vec4<f32>(893f, -866f, -311f, -1089f)), Struct_1(1456f, vec4<f32>(1290f, -1342f, -222f, -224f)), vec4<bool>(true, arg_0, false, false)), vec4<i32>(-4448i, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.x)) > ((select(31323i, 1i, global0.x) & _wgslsmith_mod_i32(u_input.c.x, u_input.c.x)) >> (1u % 32u)), true);
    var var_0 = arg_1.wz;
    var_0 = max(~arg_1.wz, vec2<u32>(~1496u, 20001u | arg_1.x));
    var_0 = select(arg_1.yz, arg_1.yy, select(vec2<bool>(any(vec2<bool>(global0.x, true)), _wgslsmith_div_u32(0u, var_0.x) >= select(105348u, 4294967295u, arg_0)), vec2<bool>(arg_0, false), !any(vec4<bool>(true, true, global0.x, global0.x))));
    return !vec4<bool>(true, false, true, !global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-107f + _wgslsmith_f_op_f32(1150f + 709f)), -1014f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-926f)), _wgslsmith_div_f32(-174f, 960f), _wgslsmith_div_f32(-638f, -2540f), _wgslsmith_div_f32(-413f, 1042f))), vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(-930f))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -697f) * _wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), global1[_wgslsmith_index_u32(u_input.b, 6u)], global0.x, Struct_1(-331f, vec4<f32>(-826f, -685f, 775f, 947f))))), -117f), select(!func_2(false, vec4<u32>(u_input.b, 55943u, u_input.b, u_input.b)), !(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)), vec4<bool>(!global0.x, any(vec4<bool>(false, false, true, false)), true, true)))));
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - var_0.a) - _wgslsmith_f_op_f32(-1177f - _wgslsmith_f_op_f32(var_0.b.x * var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-307f)) + var_0.a)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 0u, u_input.b), vec4<u32>(0u, 3457u, 56879u, 1u)), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(4294967295u, 6u)]), u_input.b >= 4294967295u, Struct_1(var_0.b.x, vec4<f32>(252f, var_0.b.x, var_0.a, var_0.b.x)))), var_0.a, var_0.b.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, var_0.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.a)))), _wgslsmith_f_op_f32(-223f + _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(select(2220f, -617f, false)), !global0.x)))));
    var var_1 = u_input.b;
    var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + var_0.b.x)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(step(var_0.b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, -1000f)))))) + _wgslsmith_div_vec4_f32(vec4<f32>(699f, _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x, 1000f), vec4<f32>(var_0.a, var_0.a, _wgslsmith_div_f32(var_0.b.x, -1000f), _wgslsmith_f_op_f32(trunc(var_0.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, u_input.b);
}

