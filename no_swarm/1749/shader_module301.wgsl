struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(false, vec4<u32>(33262u, 0u, 81025u, 67090u), 1831f), Struct_2(true, vec4<u32>(1u, 1u, 14542u, 25807u), -505f), Struct_2(true, vec4<u32>(0u, 88000u, 1u, 64092u), -678f), Struct_2(true, vec4<u32>(1u, 100689u, 4294967295u, 1u), 695f), Struct_2(false, vec4<u32>(47095u, 19964u, 3978u, 4294967295u), 295f), Struct_2(false, vec4<u32>(19157u, 1888u, 4294967295u, 65591u), 1232f), Struct_2(true, vec4<u32>(10110u, 1u, 10941u, 1u), -858f), Struct_2(false, vec4<u32>(1u, 0u, 54269u, 15094u), -1000f), Struct_2(true, vec4<u32>(40505u, 17985u, 4294967295u, 0u), -2158f), Struct_2(true, vec4<u32>(4294967295u, 4294967295u, 1u, 52951u), -1612f), Struct_2(false, vec4<u32>(46633u, 22829u, 7201u, 83886u), 316f), Struct_2(false, vec4<u32>(1u, 4464u, 3614u, 0u), -827f), Struct_2(false, vec4<u32>(0u, 28117u, 17817u, 4294967295u), 254f), Struct_2(false, vec4<u32>(51967u, 4294967295u, 59933u, 43514u), -1396f), Struct_2(false, vec4<u32>(0u, 1u, 1u, 116419u), -1001f), Struct_2(false, vec4<u32>(1u, 4294967295u, 19183u, 0u), -413f), Struct_2(true, vec4<u32>(1u, 0u, 4294967295u, 60230u), 399f), Struct_2(false, vec4<u32>(41464u, 2603u, 1u, 1u), 556f), Struct_2(true, vec4<u32>(13877u, 4294967295u, 4294967295u, 0u), 701f), Struct_2(true, vec4<u32>(46698u, 79793u, 4294967295u, 0u), 974f), Struct_2(false, vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), 1493f), Struct_2(false, vec4<u32>(1u, 46484u, 0u, 1u), -170f), Struct_2(true, vec4<u32>(4294967295u, 43599u, 47941u, 21230u), 1231f), Struct_2(true, vec4<u32>(1u, 56418u, 0u, 1u), 335f), Struct_2(false, vec4<u32>(0u, 4294967295u, 1u, 64839u), 1139f), Struct_2(false, vec4<u32>(4294967295u, 71790u, 2237u, 1u), 2182f), Struct_2(false, vec4<u32>(16090u, 25496u, 761u, 40772u), 455f), Struct_2(false, vec4<u32>(1u, 12665u, 0u, 53446u), -1000f));

var<private> global1: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(vec4<i32>(i32(-2147483648), i32(-2147483648), -5610i, 54350i), vec2<f32>(-1846f, -2086f)), Struct_5(vec4<i32>(-1i, 1543i, 8256i, 2147483647i), vec2<f32>(-970f, 721f)), Struct_5(vec4<i32>(15078i, 21473i, 25845i, 0i), vec2<f32>(2106f, -457f)), Struct_5(vec4<i32>(-1i, -32417i, -46636i, -1i), vec2<f32>(-2545f, -1698f)), Struct_5(vec4<i32>(-7516i, 0i, 0i, 0i), vec2<f32>(1647f, 1000f)), Struct_5(vec4<i32>(1i, 1i, i32(-2147483648), -7090i), vec2<f32>(569f, 1272f)), Struct_5(vec4<i32>(i32(-2147483648), 23859i, 2147483647i, 8126i), vec2<f32>(-528f, 247f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1() -> Struct_4 {
    global1 = array<Struct_5, 7>();
    var var_0 = abs(-_wgslsmith_mult_vec3_i32((vec3<i32>(2147483647i, 2147483647i, -1i) >> (vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u))) >> (~vec3<u32>(17944u, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<i32>(abs(-2147483647i), i32(-1i) * -11245i, firstTrailingBit(-6628i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1957f)), 558f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-111f, 201f) + vec2<f32>(2422f, -1625f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(989f, 286f), vec2<f32>(339f, 1000f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1595f, 153f), vec2<f32>(2551f, -172f)))))))));
    return Struct_4(false);
}

fn func_3() -> f32 {
    let var_0 = ~(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(9062u, u_input.a, u_input.a, 32546u), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), u_input.a), abs(u_input.a)) | _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 35124u)), ~select(vec2<u32>(47617u, u_input.a), vec2<u32>(87690u, u_input.a), vec2<bool>(false, false))));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-959f - 356f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(3229f))), -950f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1452f, 561f, -1052f), vec3<f32>(-2933f, 825f, 227f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1413f, 1237f, -264f), vec3<f32>(-1655f, -836f, 1122f))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(613f, -1234f, -949f), vec3<f32>(1215f, -186f, -517f), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(430f, -1934f, 796f)), vec3<bool>(true, true, true)))))));
    global1 = array<Struct_5, 7>();
    let var_2 = select(vec4<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), !select(true, true, true) | all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), false, !any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), !vec4<bool>(true, true || any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(step(var_1.x, var_1.x)) <= _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(1164f)) > var_1.x), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(u_input.a <= var_0, false, any(vec4<bool>(true, true, true, false)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true))));
    var var_3 = ~abs(4294967295u);
    return var_1.x;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(trunc(1318f)), _wgslsmith_f_op_f32(func_3()));
    global0 = array<Struct_2, 28>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-649f)))), countOneBits(~(~reverseBits(1u))), 923f);
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    return _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-1024f * 1137f));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> StorageBuffer {
    return StorageBuffer(1i, 0u, ~arg_2.b.yyz);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(250f, -1334f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(808f, -401f)))))), Struct_2(false, select(reverseBits(~vec4<u32>(u_input.a, 12068u, 0u, u_input.a)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, u_input.a, 1u), vec4<u32>(52934u, 1u, u_input.a, u_input.a))), true), 133f), min(~select(-32234i, ~62360i, u_input.a == u_input.a), abs(_wgslsmith_mult_i32(i32(-1i) * -19663i, min(-1i, 1i)))));
}

