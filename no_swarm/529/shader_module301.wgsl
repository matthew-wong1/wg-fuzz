struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> f32 {
    var var_0 = Struct_5(arg_0.b.a, 4294967295u, vec2<u32>(_wgslsmith_sub_u32(arg_0.b.a.b.x, max(_wgslsmith_div_u32(4294967295u, 1u), ~4294967295u)), countOneBits(~1u)), Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(661f * -1223f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -152f))))), arg_0.b, Struct_3(u_input.b.xx, Struct_2(Struct_1(arg_0.b.a.a, arg_0.b.a.a.yyx), false))));
    let var_1 = vec2<bool>(true, -253f >= _wgslsmith_f_op_f32(-214f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.a - var_0.d.a))));
    var_0 = Struct_5(arg_0.b.a, ~arg_0.b.a.b.x, arg_0.b.a.b.zx, var_0.d);
    var_0 = Struct_5(var_0.a, u_input.c, arg_0.b.a.b.xy | arg_0.b.a.a.yx, Struct_4(-1000f, var_0.d.b, Struct_3(arg_0.a, Struct_2(arg_0.b.a, true))));
    let var_2 = Struct_3(u_input.b.wz, arg_0.b);
    return _wgslsmith_f_op_f32(-var_0.d.a);
}

fn func_2() -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(-1f);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(vec2<i32>(u_input.b.x, ~u_input.b.x), Struct_2(Struct_1(vec4<u32>(u_input.c, 41701u, u_input.c, 4294967295u), vec3<u32>(51462u, 21483u, u_input.c)), any(vec3<bool>(true, true, false)))), 105228u)));
    let var_0 = Struct_1(vec4<u32>(~u_input.c, countOneBits(u_input.c), 31837u, ~select(abs(4294967295u), 43604u, true)), vec3<u32>(4294967295u, ~8889u, 1u) ^ select(~vec3<u32>(48943u, 4294967295u, 29325u), vec3<u32>(4294967295u, 6226u, u_input.c), select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), 0i < u_input.b.x)));
    let var_1 = -1076f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-153f, _wgslsmith_f_op_f32(-var_1))));
    return Struct_2(Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_0.a, countOneBits(var_0.a)), vec4<u32>(55073u, 20052u, 29047u, u_input.c) << (var_0.a % vec4<u32>(32u))), vec3<u32>(var_0.a.x, var_0.a.x, min(70274u, 1u))), !any(vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(func_3(Struct_3(vec2<i32>(-21079i, u_input.a), Struct_2(arg_3.a, arg_3.b)), arg_3.a.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-182f, -425f))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x));
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3189f)), func_2(), Struct_3(_wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.b.yw), vec2<i32>(arg_0.x, 19619i >> (arg_2.b.x % 32u))), Struct_2(Struct_1(select(arg_2.a, arg_2.a, vec4<bool>(arg_3.b, arg_3.b, arg_3.b, arg_3.b)), vec3<u32>(arg_2.b.x, 1u, 84206u)), true)));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(214f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(-1121f + -1723f)), 889f)))));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(690f, _wgslsmith_f_op_f32(round(-169f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * arg_1.x))), arg_1);
    return all(!vec4<bool>(var_0.b.b, false, true & any(vec3<bool>(var_0.c.b.b, var_0.c.b.b, false)), var_0.b.b));
}

fn func_1() -> vec4<bool> {
    return select(!vec4<bool>(false, func_4(u_input.b.wy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1248f, 1450f, -755f)), Struct_1(vec4<u32>(4294967295u, u_input.c, 45887u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)), func_2()), 1u >= _wgslsmith_div_u32(u_input.c, u_input.c), true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true && (-21220i != u_input.a), true, true)));
}

fn func_5(arg_0: f32, arg_1: vec4<bool>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(1000f * arg_0);
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), 1518f, !(all(arg_1.xy) || false)));
    var var_1 = ~func_2().a.a << (vec4<u32>(1u >> (1u % 32u), u_input.c & u_input.c, 0u, u_input.c) % vec4<u32>(32u));
    var var_2 = -firstTrailingBit(select(~u_input.b, _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(2147483647i, u_input.b.x, -1111i, u_input.b.x)), true));
    let var_3 = Struct_3(_wgslsmith_add_vec2_i32(select(_wgslsmith_clamp_vec2_i32(var_2.zy, var_2.wy, vec2<i32>(var_2.x, -46057i)) | (vec2<i32>(218i, var_2.x) << (var_1.wz % vec2<u32>(32u))), abs(var_2.zz) ^ abs(u_input.b.wy), vec2<bool>(arg_1.x, arg_1.x)), ~vec2<i32>(var_2.x, 0i) | -select(vec2<i32>(1i, 13514i), vec2<i32>(6318i, u_input.b.x), vec2<bool>(true, false))), func_2());
    return Struct_5(var_3.b.a, select(_wgslsmith_dot_vec4_u32(vec4<u32>(max(var_3.b.a.a.x, 40551u), ~u_input.c, ~u_input.c, _wgslsmith_clamp_u32(var_1.x, 4294967295u, 52569u)), ~vec4<u32>(63926u, 59982u, 33398u, u_input.c)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_1.x, 0u), 12623u), var_3.b.b), var_1.zx, Struct_4(-232f, Struct_2(Struct_1(countOneBits(var_3.b.a.a), var_1.zyy), var_3.b.b), var_3));
}

fn func_6(arg_0: bool, arg_1: Struct_5, arg_2: vec4<f32>) -> u32 {
    global0 = 1000f;
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2870f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, true)))), func_5(_wgslsmith_f_op_f32(round(-431f)), vec4<bool>(false, false, arg_1.d.b.b, arg_0)).d.a)), !select(vec4<bool>(true, true, -31221i <= arg_1.d.c.a.x, all(vec2<bool>(true, arg_1.d.b.b))), !func_1(), vec4<bool>(false, arg_1.d.a >= arg_1.d.a, !arg_0, true))).d;
    global0 = 353f;
    var var_1 = Struct_3(u_input.b.xx, Struct_2(Struct_1(abs(~vec4<u32>(arg_1.a.a.x, 63633u, 38758u, u_input.c)), vec3<u32>(arg_1.d.b.a.a.x, func_2().a.a.x, select(var_0.b.a.b.x, arg_1.a.b.x, arg_0))), arg_0));
    let var_2 = var_0.c.b.b;
    return var_0.c.b.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~(~(~vec3<u32>(u_input.c, u_input.c, 1u)))));
    var_0 = vec3<u32>(~(~(~u_input.c)) & var_0.x, var_0.x, u_input.c);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-591f * -1886f))))));
    var var_2 = u_input.c;
    let var_3 = vec3<i32>(-u_input.a, firstLeadingBit(-(~(-69016i))), -u_input.a);
    var var_4 = -u_input.b.wz;
    var_0 = vec3<u32>(1u, 1u, var_0.x & 43636u);
    var var_5 = Struct_1(vec4<u32>(_wgslsmith_div_u32(abs(~var_0.x), 0u), 4294967295u, ~4294967295u, func_6(!(var_4.x >= 1i), func_5(_wgslsmith_f_op_f32(ceil(1177f)), func_1()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(727f, -796f, -287f, -370f) - vec4<f32>(-1383f, 1057f, 1334f, 250f))))), select(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, u_input.c, ~1u), ~vec3<u32>(1u, 21858u, u_input.c) << (~vec3<u32>(7963u, var_0.x, u_input.c) % vec3<u32>(32u))), ~(~vec3<u32>(var_0.x, 0u, 4294967295u)) | _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, var_0.x, 32945u), func_2().a.b), func_1().xyx));
    let var_6 = _wgslsmith_clamp_u32(~(~(~40964u)), ~max(53067u, ~(~17875u)), func_5(-1492f, vec4<bool>(false, all(vec2<bool>(true, false)), true, true)).a.a.x ^ (~(~44242u) ^ u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_i32(max(-1i, abs(43561i)), var_4.x), 20277i), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(368f, -500f, -543f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-125f + -2871f), _wgslsmith_f_op_f32(trunc(1826f)), -1070f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1419f - -467f)))))));
}

