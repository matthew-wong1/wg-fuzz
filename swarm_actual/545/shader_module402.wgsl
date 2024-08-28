struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(102375u, 0u, 1u, 12953u), vec4<u32>(20451u, 58827u, 1287u, 4294967295u), vec4<u32>(556u, 29040u, 0u, 5554u), vec4<u32>(57633u, 18936u, 9238u, 44804u), vec4<u32>(0u, 22479u, 1u, 1u), vec4<u32>(1u, 36119u, 3761u, 0u), vec4<u32>(36894u, 57502u, 49986u, 16752u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(0u, 27117u, 1u, 14015u), vec4<u32>(29730u, 4294967295u, 40233u, 0u), vec4<u32>(8710u, 415u, 9270u, 1u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(1u, 4294967295u, 1u, 80809u), vec4<u32>(4082u, 50455u, 3751u, 14630u), vec4<u32>(31810u, 0u, 0u, 1u), vec4<u32>(1u, 15724u, 3938u, 28873u), vec4<u32>(0u, 0u, 65208u, 69141u), vec4<u32>(4294967295u, 1u, 3327u, 26160u), vec4<u32>(1242u, 82674u, 3782u, 1u), vec4<u32>(1u, 4294967295u, 22938u, 0u), vec4<u32>(1u, 136715u, 26491u, 11710u));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>) -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(442f, arg_0.x, arg_0.x))), ~vec2<u32>(~(~97590u), 4294967295u));
    let var_1 = u_input.c;
    global0 = array<vec4<u32>, 21>();
    var var_2 = Struct_3(Struct_2(var_0.a, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(49272u, 11163u), vec2<u32>(var_0.b.x, var_0.b.x)), 1u), var_0.b.x)), var_0, Struct_2(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, 1297f, arg_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(995f, arg_0.x, -2037f)))), vec2<u32>(0u >> (1u % 32u), 0u) ^ firstTrailingBit(_wgslsmith_clamp_vec2_u32(var_0.b, var_0.b, vec2<u32>(4198u, 1u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(385f, -1722f), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.a, var_0.a, false)), _wgslsmith_f_op_vec3_f32(var_0.a + var_0.a)) * var_0.a)), abs(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b)));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-511f * 813f)))), _wgslsmith_div_f32(var_0.a.x, 1275f), var_2.d.x) * var_0.a);
    return u_input.a;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-u_input.a.x, 1i), ~_wgslsmith_div_i32(-57605i, 28437i), 0i, -u_input.a.x) << (vec4<u32>(1u, 32266u, _wgslsmith_dot_vec4_u32(vec4<u32>(54182u, 4294967295u, 4294967295u, 4294967295u), ~vec4<u32>(1u, 1u, 46781u, 24162u)), _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(13939u, 0u))) % vec4<u32>(32u)), -func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(103f, 216f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1059f, 1283f))), true))));
    var var_1 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, select(true, false, true)), vec3<bool>(any(vec4<bool>(false, false, true, false)), true, true)), !vec3<bool>(!any(vec4<bool>(false, false, true, true)), true, true), vec3<bool>(select(select(true, all(vec2<bool>(true, false)), select(true, false, false)), true, any(vec3<bool>(true, true, true))), true, !(!all(vec2<bool>(true, true)))));
    var var_2 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(391f + -107f)), _wgslsmith_f_op_f32(step(-575f, 606f)), _wgslsmith_f_op_f32(-1f)), _wgslsmith_clamp_vec2_u32(vec2<u32>(~0u, ~4294967295u), vec2<u32>(1u >> (1u % 32u), ~56287u), vec2<u32>(1u, ~24892u))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-576f, -295f, -1103f)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-729f, 160f, 497f), vec3<f32>(-1066f, 955f, -700f), false))))), _wgslsmith_add_vec2_u32(select(~vec2<u32>(1u, 0u), vec2<u32>(25805u, 8277u), !var_1.xz), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(33521u, 4294967295u), min(vec2<u32>(0u, 4294967295u), vec2<u32>(11291u, 1u))))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(496f, 1000f, 2656f)))), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(36056u, 0u)), vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u))), vec3<f32>(1f, 1f, 1f), ~11969i);
    return Struct_1(_wgslsmith_mult_vec2_u32(~max(vec2<u32>(1u, var_2.c.b.x), var_2.c.b), ~vec2<u32>(var_2.c.b.x, 0u)) & var_2.c.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a.x - -182f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1152f, -959f)), -808f)), var_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.a.x) + _wgslsmith_f_op_f32(-var_2.d.x)))), true);
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = func_2();
    let var_1 = !select(vec2<bool>(true, arg_0.c), select(!select(vec2<bool>(var_0.c, false), vec2<bool>(false, arg_0.c), arg_0.c), select(vec2<bool>(arg_0.c, var_0.c), !vec2<bool>(arg_0.c, true), !vec2<bool>(false, arg_0.c)), select(vec2<bool>(var_0.c, var_0.c), select(vec2<bool>(true, arg_0.c), vec2<bool>(arg_0.c, var_0.c), vec2<bool>(var_0.c, false)), true)), select(select(vec2<bool>(false, arg_0.c), select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, arg_0.c), vec2<bool>(true, var_0.c)), false), select(select(vec2<bool>(true, arg_0.c), vec2<bool>(var_0.c, arg_0.c), arg_0.c), select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(arg_0.c, var_0.c), true), vec2<bool>(true, arg_0.c)), false));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 1000f, var_0.b.x)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.x, -1267f, var_0.b.x), vec3<f32>(165f, arg_0.b.x, -750f)))), vec3<f32>(_wgslsmith_f_op_f32(min(760f, -640f)), _wgslsmith_f_op_f32(f32(-1f) * -530f), _wgslsmith_f_op_f32(-461f - var_0.b.x)), any(!var_1))), arg_0.a), Struct_2(arg_0.b, reverseBits(~vec2<u32>(32535u, 0u)) | ~(vec2<u32>(15276u, var_0.a.x) & vec2<u32>(0u, 1u))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(abs(-1498f)), var_0.b.x)), var_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * -722f), _wgslsmith_f_op_f32(f32(-1f) * -113f), -637f)), ~u_input.b.x);
    var_2 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1981f), var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(487f * 605f))), select(vec2<u32>(arg_0.a.x, 1u), ~vec2<u32>(0u, var_0.a.x), true)), var_2.b, var_2.b, arg_0.b, var_2.e);
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.b.x, var_3.b.x)), func_2().b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1423f, 1734f)), _wgslsmith_f_op_f32(func_1(Struct_1(vec2<u32>(0u, 1u), vec3<f32>(-143f, -648f, -1422f), true))))) + _wgslsmith_f_op_f32(exp2(func_2().b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -168f) * _wgslsmith_f_op_f32(f32(-1f) * -673f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-846f - 1229f) * _wgslsmith_f_op_f32(func_1(Struct_1(vec2<u32>(0u, 0u), vec3<f32>(1450f, -905f, 1310f), true))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-754f, 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -364f))))), abs(~firstTrailingBit(vec2<u32>(91219u, 58261u))) & ~reverseBits(~vec2<u32>(18545u, 0u)));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x * 1101f), _wgslsmith_f_op_f32(f32(-1f) * -1243f)), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(291f, var_0.a.x)) - _wgslsmith_f_op_f32(-1807f - -190f)))), vec2<u32>(23494u, 94487u));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_div_f32(var_0.a.x, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -683f))))), var_0.b);
    var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -166f))) - _wgslsmith_f_op_f32(342f * -1759f)), _wgslsmith_f_op_f32(622f * _wgslsmith_f_op_f32(-2165f + 871f)), 1f), vec2<u32>(var_1.b.x, 18319u));
    let var_2 = Struct_2(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-348f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, var_1.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -794f)) * _wgslsmith_f_op_f32(f32(-1f) * -1497f))), reverseBits(~var_0.b));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, 400f, var_2.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -212f), -791f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 184f, var_0.a.x, -319f) * vec4<f32>(-230f, -578f, var_1.a.x, -1135f)))))));
    var_1 = var_2;
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -526f, _wgslsmith_f_op_f32(var_2.a.x + 861f))), var_1.b);
    let var_4 = vec4<i32>(-u_input.a.x, u_input.b.x, _wgslsmith_clamp_i32(u_input.a.x, ~14261i, ~(-19480i)), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)) + -1372f), -467f, _wgslsmith_f_op_f32(exp2(var_3.x))), var_2.b.x, countOneBits(_wgslsmith_mult_vec2_i32(~(-u_input.a.zw), vec2<i32>(reverseBits(1i), _wgslsmith_add_i32(0i, 1i)))));
}

