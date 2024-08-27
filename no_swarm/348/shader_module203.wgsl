struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(48973u, vec3<u32>(1u, 9685u, 57103u)), Struct_3(51952u, vec3<u32>(6712u, 4294967295u, 4294967295u)), Struct_3(64878u, vec3<u32>(10781u, 7605u, 4294967295u)), Struct_3(1u, vec3<u32>(55272u, 812u, 19292u)), Struct_3(2861u, vec3<u32>(1u, 4294967295u, 0u)), Struct_3(4294967295u, vec3<u32>(22429u, 4294967295u, 26129u)), Struct_3(4294967295u, vec3<u32>(75650u, 13944u, 91719u)), Struct_3(0u, vec3<u32>(4294967295u, 54595u, 7861u)), Struct_3(37866u, vec3<u32>(4294967295u, 0u, 34491u)), Struct_3(0u, vec3<u32>(1u, 57669u, 80457u)), Struct_3(2448u, vec3<u32>(0u, 0u, 1u)), Struct_3(4294967295u, vec3<u32>(1u, 1u, 12764u)), Struct_3(4294967295u, vec3<u32>(0u, 1u, 0u)), Struct_3(45778u, vec3<u32>(1u, 0u, 1u)), Struct_3(1u, vec3<u32>(38245u, 54791u, 30096u)), Struct_3(28957u, vec3<u32>(0u, 81189u, 1u)), Struct_3(0u, vec3<u32>(22285u, 1u, 19273u)), Struct_3(0u, vec3<u32>(66121u, 8908u, 40952u)), Struct_3(25934u, vec3<u32>(49542u, 48117u, 51494u)), Struct_3(148452u, vec3<u32>(13317u, 51245u, 0u)), Struct_3(4294967295u, vec3<u32>(16998u, 1u, 6871u)), Struct_3(1u, vec3<u32>(4294967295u, 1u, 29814u)), Struct_3(2787u, vec3<u32>(0u, 0u, 45204u)), Struct_3(4294967295u, vec3<u32>(0u, 1u, 38565u)), Struct_3(4294967295u, vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_3(0u, vec3<u32>(1u, 0u, 19998u)), Struct_3(39372u, vec3<u32>(0u, 0u, 64783u)), Struct_3(8987u, vec3<u32>(1u, 53498u, 17721u)));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-47941i, -43478i), -1201f, true, vec4<bool>(true, true, true, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = select(-30538i, 2147483647i, !(true | arg_0.x));
    var_0 = u_input.a.x;
    var var_1 = select(global1.d, global1.d, !all(!select(arg_0.zw, arg_0.zy, global1.d.yz)));
    global0 = array<Struct_3, 28>();
    var_1 = arg_0;
    return Struct_1(-global1.a, _wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(f32(-1f) * -379f)), arg_0.x, !vec4<bool>(true, !global1.d.x, true, u_input.b.x < 0u));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> Struct_5 {
    let var_0 = func_2(select(vec4<bool>(arg_0, true, !arg_0, true), global1.d, !vec4<bool>(global1.c, u_input.b.x == 16115u, all(arg_2.b.yy), !global1.d.x)), 27369i);
    var var_1 = Struct_2(arg_2.a, global1.d);
    var var_2 = ~vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 64082u, 29124u, arg_1.a), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a, 4294967295u, u_input.b.x, arg_1.a), vec4<u32>(arg_1.a, 1u, u_input.b.x, 1u))), 10398u);
    let var_3 = arg_1;
    var var_4 = arg_2;
    return Struct_5(arg_1, var_0, ~(~firstTrailingBit(4294967295u)), var_0.d.zx);
}

fn func_3() -> Struct_1 {
    let var_0 = func_2(vec4<bool>(1u < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 24969u, u_input.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(20660u, 9474u, u_input.b.x), vec3<u32>(83116u, u_input.b.x, 30356u))), global1.c || global1.c, true & global1.c, all(!vec4<bool>(false, global1.d.x, global1.c, global1.c))), -2147483647i).d.yy;
    var var_1 = Struct_2(abs(_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(u_input.a.x, -29587i))) < ~u_input.a.x, func_2(!vec4<bool>(false, global1.c, all(vec4<bool>(false, global1.d.x, var_0.x, true)), select(true, false, false)), abs(max(max(global1.a.x, 50374i), -global1.a.x))).d);
    var_1 = Struct_2(false & !var_1.a, var_1.b);
    var_1 = Struct_2(func_2(vec4<bool>(_wgslsmith_clamp_u32(3534u, u_input.b.x, u_input.b.x) < u_input.b.x, var_1.a, true & func_1(global1.c, global0[_wgslsmith_index_u32(4294967295u, 28u)], Struct_2(var_1.b.x, vec4<bool>(var_0.x, var_1.b.x, var_1.b.x, false))).d.x, all(vec4<bool>(var_1.a, true, var_1.a, true))), func_2(select(!global1.d, vec4<bool>(var_0.x, false, false, var_0.x), var_1.b), u_input.a.x).a.x).d.x, global1.d);
    var var_2 = abs(47757u >> (_wgslsmith_mod_u32(~abs(u_input.b.x), 4294967295u) % 32u));
    return func_2(select(!(!func_2(var_1.b, u_input.a.x).d), vec4<bool>(all(global1.d.xxw), func_2(global1.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, -1i, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, global1.a.x, 29873i))).d.x, any(vec3<bool>(var_0.x, true, true)), var_1.b.x), any(vec3<bool>(var_1.a, true, all(global1.d)))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true, Struct_3(~1u, select(~vec3<u32>(u_input.b.x, 17163u, 1u), vec3<u32>(~u_input.b.x, u_input.b.x, 1u), _wgslsmith_f_op_f32(1000f + global1.b) != -1000f)), Struct_2(global1.b <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(880f * global1.b))), !global1.d));
    var var_1 = var_0.c;
    global0 = array<Struct_3, 28>();
    global0 = array<Struct_3, 28>();
    let var_2 = _wgslsmith_f_op_f32(-global1.b);
    global0 = array<Struct_3, 28>();
    var var_3 = func_3();
    let var_4 = ~(-23066i);
    var var_5 = var_0.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-575f, _wgslsmith_f_op_vec3_f32(vec3<f32>(-2414f, _wgslsmith_f_op_f32(f32(-1f) * -888f), global1.b) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1176f, 1000f, -613f), vec3<f32>(global1.b, 478f, global1.b))))))), vec2<i32>(-11564i, -var_0.b.a.x), var_0.a.b.yy << (select(select(~u_input.b, firstTrailingBit(vec2<u32>(var_0.c, 1u)), select(vec2<bool>(true, var_0.b.c), vec2<bool>(true, var_0.d.x), var_3.d.yz)), ~vec2<u32>(1u, u_input.b.x), global1.d.ww) % vec2<u32>(32u)), 406f);
}

