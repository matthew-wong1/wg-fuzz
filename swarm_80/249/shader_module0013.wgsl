struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

var<private> global1: array<Struct_3, 16>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = array<Struct_3, 19>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(987f, 870f, -951f))))))));
    let var_1 = Struct_4(Struct_3(~((u_input.d & u_input.d) << (u_input.d % vec2<u32>(32u))), u_input.d.x, Struct_2(var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-513f, 857f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1634f, -376f, var_0.x, 799f))), Struct_1(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), _wgslsmith_f_op_vec2_f32(select(var_0.yy, vec2<f32>(-256f, var_0.x), vec2<bool>(true, true))), u_input.d.x, select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false)), Struct_1(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true), vec2<f32>(-1000f, -2249f), u_input.a, vec4<bool>(true, false, false, false))), Struct_2(_wgslsmith_div_f32(-883f, -129f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 455f, var_0.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -356f, var_0.x, -1000f), vec4<f32>(var_0.x, 1021f, var_0.x, -666f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(137f, -274f, 1045f, var_0.x) * vec4<f32>(var_0.x, -384f, var_0.x, var_0.x)))), Struct_1(vec4<bool>(true, false, false, true), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, 1400f))), u_input.a >> (0u % 32u), vec4<bool>(true, true, true, true)), Struct_1(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(422f, -964f)), u_input.d.x, select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true))), Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(var_0.x))), abs(u_input.a), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d.b.x));
    var var_3 = var_1.a.c;
    return var_3.b.x;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_5 {
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    global1 = array<Struct_3, 16>();
    global1 = array<Struct_3, 16>();
    var var_0 = vec3<u32>(u_input.d.x, u_input.a, u_input.a);
    return Struct_5(-1i, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1699f, _wgslsmith_f_op_f32(f32(-1f) * -700f))), vec2<f32>(765f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3())))))), !vec3<bool>(!(!arg_0), !all(vec4<bool>(false, arg_0, true, arg_0)), _wgslsmith_div_i32(-10099i, -608i) != u_input.c));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_5 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.b.x, 653f, arg_2.b.x))), vec3<f32>(207f, arg_2.b.x, 702f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.b.x, -322f, 1754f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-456f, -586f, 1411f), vec3<f32>(-201f, arg_2.b.x, 247f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, arg_2.b.x, -428f))) * vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.b.x * arg_2.b.x), _wgslsmith_f_op_f32(2029f * -707f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.b.x))), arg_2.b.x)));
    global1 = array<Struct_3, 16>();
    let var_1 = u_input.e;
    return func_2(898f < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(698f, _wgslsmith_f_op_f32(select(var_0.x, -652f, arg_2.a.x)))), _wgslsmith_f_op_f32(-arg_2.b.x));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    var var_0 = u_input.d;
    global1 = array<Struct_3, 16>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_3.b);
    return arg_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 16>();
    global0 = array<Struct_3, 19>();
    let var_0 = Struct_1(vec4<bool>(true, true, all(func_4(func_1(u_input.e, vec2<i32>(u_input.e, 2147483647i), Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(-1572f, 1595f), u_input.d.x, vec4<bool>(true, false, false, true))), u_input.a, countOneBits(-1i), Struct_1(vec4<bool>(true, true, false, false), vec2<f32>(-909f, 645f), u_input.a, vec4<bool>(true, true, false, false)))), false), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(func_1(34401i, vec2<i32>(u_input.b, u_input.c), Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(-2582f, -468f), u_input.a, vec4<bool>(false, true, false, false))).b, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(468f, 1207f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1227f, -1124f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1140f, 1054f) + vec2<f32>(1000f, 341f)))) + vec2<f32>(_wgslsmith_f_op_f32(func_3()), -746f)))), 35074u, select(vec4<bool>(true, true, true, true), vec4<bool>(func_2(any(vec3<bool>(false, false, true)), 1f).c.x, true, !func_2(false, 117f).c.x, true), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false))));
    var var_1 = Struct_1(!select(var_0.a, !var_0.d, vec4<bool>(var_0.a.x | false, u_input.d.x >= 31542u, true, var_0.a.x)), var_0.b, min(43719u, 1u), select(vec4<bool>(_wgslsmith_f_op_f32(step(-103f, 1000f)) >= _wgslsmith_f_op_f32(ceil(1732f)), true, select(!var_0.d.x, false, false), true), !(!(!vec4<bool>(true, var_0.a.x, true, var_0.a.x))), !(_wgslsmith_f_op_f32(1079f + var_0.b.x) >= _wgslsmith_f_op_f32(f32(-1f) * -912f))));
    var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x)))));
    global1 = array<Struct_3, 16>();
    global1 = array<Struct_3, 16>();
    global0 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-u_input.b, _wgslsmith_div_i32(u_input.c, u_input.c), ~u_input.b, -1i) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 20289u, 4294967295u, var_1.c), firstLeadingBit(vec4<u32>(u_input.a, 1u, u_input.a, 1u)) << (vec4<u32>(84401u, 4294967295u, 0u, var_1.c) % vec4<u32>(32u))) % vec4<u32>(32u)), select(max(vec2<i32>(u_input.e, 1i), vec2<i32>(_wgslsmith_mod_i32(u_input.e, 2147483647i), 0i)), ~(-vec2<i32>(45822i, u_input.b)), vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(24560u, u_input.a, u_input.a), vec3<u32>(66357u, var_0.c, var_0.c)) != u_input.a, !any(var_1.a.wy))), _wgslsmith_f_op_f32(abs(-585f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-427f + var_2), _wgslsmith_div_f32(_wgslsmith_div_f32(-804f, -931f), _wgslsmith_div_f32(var_2, -295f)), var_0.b.x, _wgslsmith_f_op_f32(-var_2)) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_1.b.x, var_2)))), var_2, _wgslsmith_f_op_f32(step(-1000f, 551f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.c, u_input.d.x, var_0.c, ~(var_1.c << (var_1.c % 32u))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1103u, u_input.d.x, 0u, var_0.c), vec4<u32>(50666u, 1058u, var_0.c, 0u)), vec4<u32>(0u, 4294967295u, var_1.c, u_input.a) ^ vec4<u32>(42649u, u_input.a, 9478u, 1u)) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.c, 73674u, u_input.d.x, 38941u), vec4<u32>(var_0.c, u_input.a, 16193u, 20154u) & vec4<u32>(var_0.c, 10275u, var_0.c, 28336u)) % vec4<u32>(32u))));
}

