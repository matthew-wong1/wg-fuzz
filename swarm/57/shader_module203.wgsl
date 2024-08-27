struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: f32;

var<private> global2: i32;

var<private> global3: array<Struct_1, 22>;

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_3(vec3<u32>(0u, (0u | _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.b.x, u_input.d, 0u, u_input.d))) | 1u, u_input.b.x), global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(min(u_input.d, u_input.d) | u_input.e.x, ~max(u_input.e.x, u_input.d)), 22u)], select(vec2<bool>(true, false), global0[_wgslsmith_index_u32(firstTrailingBit(0u), 13u)], false), Struct_2(1u, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(_wgslsmith_mult_u32(u_input.b.x, 82817u)), ~45391u), 22u)], Struct_1(vec3<bool>(true, true, 551f == arg_0), -2147483647i, !select(true, false, false), u_input.e.x), vec4<f32>(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(f32(-1f) * -191f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) * _wgslsmith_f_op_f32(-533f * arg_0)), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -456f)), u_input.b.x));
    return 540f;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = false;
    var var_1 = u_input.e.ww;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1105f, arg_0))) + _wgslsmith_f_op_f32(func_3(arg_0)));
    global2 = 1i;
    global4 = ~(var_1.x | var_1.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -584f);
}

fn func_1() -> vec3<u32> {
    global0 = array<vec2<bool>, 13>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1984f - _wgslsmith_f_op_f32(f32(-1f) * -758f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(218f, false, 1i))))) - 181f));
    global0 = array<vec2<bool>, 13>();
    let var_0 = Struct_1(vec3<bool>(all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true)), false, true), u_input.c.x, !(!(u_input.c.x < (-42165i >> (u_input.e.x % 32u)))), abs(~(~41321u) ^ abs(select(u_input.d, 52900u, true))));
    let var_1 = Struct_3(~(vec3<u32>(_wgslsmith_div_u32(var_0.d, 41410u), ~u_input.d, ~54530u) << (vec3<u32>(~u_input.d, ~137095u, 5058u) % vec3<u32>(32u))), Struct_1(select(select(select(var_0.a, var_0.a, false), var_0.a, select(vec3<bool>(true, true, var_0.c), vec3<bool>(var_0.a.x, false, true), var_0.a.x)), !(!vec3<bool>(false, var_0.a.x, true)), !(!var_0.a)), (-2147483647i | firstTrailingBit(2147483647i)) << (43712u % 32u), any(select(!vec4<bool>(var_0.a.x, var_0.c, false, var_0.a.x), select(vec4<bool>(true, false, true, var_0.c), vec4<bool>(var_0.c, var_0.a.x, var_0.a.x, false), var_0.a.x), all(vec4<bool>(false, false, false, var_0.a.x)))), u_input.b.x), select(vec2<bool>(true, all(select(vec3<bool>(var_0.c, false, true), var_0.a, vec3<bool>(false, true, true)))), select(var_0.a.xx, !var_0.a.yz, true | !var_0.a.x), !global0[_wgslsmith_index_u32(abs(max(0u, u_input.b.x)), 13u)]), Struct_2(abs(56968u | (u_input.d | u_input.e.x)), Struct_1(select(var_0.a, vec3<bool>(var_0.a.x, false, false), vec3<bool>(true, false, var_0.a.x)), ~var_0.b, var_0.c, 61364u), var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1446f, -244f, 618f)))), ~(~select(43054u, 46798u, true))));
    return ~u_input.e.yzz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1518f - _wgslsmith_f_op_f32(1556f - _wgslsmith_div_f32(-529f, -550f)))));
    let var_1 = (~func_1() ^ ~(u_input.e.xyw ^ u_input.e.zwy)) & ((vec3<u32>(u_input.d, ~u_input.d, 1u) & _wgslsmith_mod_vec3_u32(u_input.e.yww, u_input.e.zzz)) >> (vec3<u32>(~3381u, u_input.b.x, 56083u) % vec3<u32>(32u)));
    global4 = u_input.e.x;
    let var_2 = Struct_1(select(vec3<bool>(false, true, _wgslsmith_f_op_f32(-var_0) >= _wgslsmith_f_op_f32(var_0 * var_0)), vec3<bool>(true, any(global0[_wgslsmith_index_u32(u_input.e.x, 13u)]), true), select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true)), u_input.a, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)) & any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), true)), var_1.x);
    var var_3 = Struct_2(14745u, var_2, Struct_1(var_2.a, var_2.b, false, ~0u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -420f, var_0, var_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(456f, var_0, 1000f, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(585f, -788f, 1328f, -2593f), vec4<f32>(var_0, -1856f, -1895f, var_0)))), select(select(vec4<bool>(var_2.a.x, true, var_2.c, var_2.c), vec4<bool>(true, true, var_2.c, var_2.a.x), vec4<bool>(var_2.c, var_2.a.x, var_2.a.x, var_2.c)), vec4<bool>(false, true, false, var_2.a.x), !vec4<bool>(var_2.a.x, true, true, var_2.c)))))), 1u);
    global4 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(12500i, 0i, u_input.c.x, 1i), ~(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(43760u, 31294u), var_1.x)), _wgslsmith_f_op_f32(abs(var_3.d.x)), ~u_input.e);
}

