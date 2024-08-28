struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: u32 = 0u;

var<private> global2: array<bool, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_3) -> f32 {
    var var_0 = arg_2.d;
    var var_1 = ~45216u;
    let var_2 = 24056u;
    var var_3 = arg_2.d;
    var var_4 = Struct_3(~select(arg_0.zy & u_input.a.xz, arg_0.yw, !(!vec2<bool>(arg_1.x, false))), vec2<bool>(arg_2.b.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1360f))), arg_2.d);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(var_4.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c.c.x * arg_2.d.c.c.x), 1300f)));
}

fn func_3(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(0i >> (reverseBits(firstLeadingBit(~6108u)) % 32u), Struct_1(!(true & !global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, u_input.a), u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(sign(arg_0.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) + _wgslsmith_f_op_vec2_f32(arg_0.yz * arg_0.wy)))), Struct_1(global2[_wgslsmith_index_u32(abs(u_input.a.x), 11u)], u_input.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, arg_0.x), arg_0.wy), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.x, arg_0.x))))));
    let var_1 = _wgslsmith_sub_u32(~1u, ~1u);
    var var_2 = var_0.c;
    global2 = array<bool, 11>();
    var var_3 = var_0;
    return var_0.b;
}

fn func_1() -> vec3<u32> {
    let var_0 = func_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1070f))), _wgslsmith_f_op_f32(min(1183f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.a.x, 34115u, 0u, u_input.a.x), vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), Struct_3(u_input.a.yy, vec2<bool>(true, false), -431f, Struct_2(-1521i, Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], 124u, vec2<f32>(-1242f, -1040f)), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], u_input.a.x, vec2<f32>(824f, 388f)))))) + _wgslsmith_f_op_f32(2032f * 332f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 11u)], true, false), Struct_3(u_input.a.yz, vec2<bool>(false, global2[_wgslsmith_index_u32(369u, 11u)]), 642f, Struct_2(-1i, Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], 0u, vec2<f32>(-694f, 576f)), Struct_1(true, u_input.a.x, vec2<f32>(-292f, -558f))))))) - -835f), _wgslsmith_f_op_f32(round(-1786f))));
    var var_1 = Struct_2(-global0[_wgslsmith_index_u32(min(15283u, 20058u), 13u)], var_0, Struct_1(var_0.c.x <= -437f, u_input.a.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -755f)), var_0.c, !(!vec2<bool>(false, global2[_wgslsmith_index_u32(36383u, 11u)]))))));
    let var_2 = u_input.a.xxx >> (_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.a.yxy, abs(u_input.a.zzy)), _wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(0u), var_0.b, _wgslsmith_div_u32(3883u, u_input.a.x)), u_input.a.yyz)) % vec3<u32>(32u));
    var var_3 = Struct_2(var_1.a, func_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.c.x, 332f, 1445f, -474f), vec4<f32>(952f, 481f, var_1.b.c.x, var_0.c.x)))))), var_0);
    global2 = array<bool, 11>();
    return vec3<u32>(4294967295u, var_1.c.b, 24837u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 11>();
    let var_0 = (~(-vec3<i32>(global0[_wgslsmith_index_u32(0u, 13u)], 0i, -2147483647i) & ~vec3<i32>(-57130i, -2147483647i, -1i)) & select(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], -1i), vec2<i32>(global0[_wgslsmith_index_u32(65317u, 13u)], -67581i)), -43402i, -15131i), (vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], -18029i, global0[_wgslsmith_index_u32(u_input.a.x, 13u)]) & vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)], -1i)) << (func_1() % vec3<u32>(32u)), all(select(vec3<bool>(true, global2[_wgslsmith_index_u32(30985u, 11u)], true), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), true)))) >> (vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(40480u, 2535u, _wgslsmith_mod_u32(u_input.a.x, ~54578u)), 1u >> (abs(min(44751u, u_input.a.x)) % 32u)) % vec3<u32>(32u));
    global0 = array<i32, 13>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-850f, 335f, -427f, 484f))).c.x)), -446f);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(243f, 1009f, 920f, 1017f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-286f, -207f, 612f, 163f) - vec4<f32>(220f, -435f, -383f, 540f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-988f, -251f, 774f, 936f))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(339f, 307f, -680f, -142f))))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1320f)), -117f, _wgslsmith_f_op_f32(round(-153f)), _wgslsmith_f_op_f32(abs(1000f))), vec4<f32>(-2007f, _wgslsmith_div_f32(-364f, 1000f), _wgslsmith_f_op_f32(sign(-896f)), _wgslsmith_f_op_f32(round(-512f))))));
    var var_3 = ~(~_wgslsmith_clamp_vec3_u32(min(vec3<u32>(0u, u_input.a.x, 108453u), vec3<u32>(u_input.a.x, u_input.a.x, 100584u)) & u_input.a.xwy, ~u_input.a.yxz, _wgslsmith_sub_vec3_u32(u_input.a.wyw, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) ^ vec3<u32>(u_input.a.x, 11990u, 4187u)));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

