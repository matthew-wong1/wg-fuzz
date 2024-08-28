struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: Struct_2,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: i32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<i32>, 6>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> u32 {
    return max(~max(1u, 0u) ^ min(_wgslsmith_dot_vec4_u32(vec4<u32>(4060u, 0u, 4294967295u, 86684u), vec4<u32>(4294967295u, 25692u, 7028u, 1u)), _wgslsmith_mult_u32(14741u, 7951u)), 1u) & 1u;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec4<i32>, arg_3: vec2<bool>) -> f32 {
    global1 = array<vec3<i32>, 6>();
    let var_0 = Struct_5(arg_1, Struct_3(~_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, arg_0, arg_0))), -u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-2925f, 1620f)), -1232f)))), _wgslsmith_f_op_f32(1064f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(2116f, 1000f) + -2160f))));
    global0 = _wgslsmith_f_op_f32(-var_0.e.x);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.e.x + -2694f), 815f));
    global0 = _wgslsmith_f_op_f32(1225f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(f32(-1f) * -373f)));
    return var_0.d.x;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> f32 {
    global0 = arg_0;
    global0 = _wgslsmith_f_op_f32(round(452f));
    var var_0 = vec3<f32>(-1769f, 424f, arg_0);
    var_0 = vec3<f32>(1162f, var_0.x, _wgslsmith_f_op_f32(func_4(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(148f)) - _wgslsmith_f_op_f32(var_0.x * -2314f))), any(select(arg_1.xx, select(vec2<bool>(arg_1.x, false), arg_1.xy, arg_1.zz), arg_1.x)), vec4<i32>(_wgslsmith_sub_i32(~u_input.a, 57407i), _wgslsmith_div_i32(-32001i, u_input.a) >> (1u % 32u), min(u_input.a, firstLeadingBit(u_input.a)), abs(-2147483647i)), !vec2<bool>(false, arg_1.x))));
    global1 = array<vec3<i32>, 6>();
    return -1000f;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: u32, arg_3: Struct_4) -> i32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + arg_1) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_1, vec3<bool>(arg_3.d, true, false))) - arg_1) * _wgslsmith_f_op_f32(select(arg_1, 778f, any(vec3<bool>(true, false, arg_3.d)))))));
    var var_0 = Struct_5(arg_3.d, Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(80171u, abs(71205u), ~arg_3.c.b.x), _wgslsmith_mult_vec3_u32(arg_0, ~arg_0))), u_input.a, vec3<f32>(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1200f + -1153f) + -930f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.c.a, 1075f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.c.a))) + _wgslsmith_f_op_f32(select(787f, _wgslsmith_div_f32(-487f, -1453f), true)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(617f, 2314f), _wgslsmith_div_vec2_f32(vec2<f32>(arg_3.c.a, -1315f), vec2<f32>(arg_3.c.a, 1736f)))), vec2<f32>(-793f, -1507f)))));
    var_0 = Struct_5(arg_3.c.b.x >= var_0.b.a.x, Struct_3(vec3<u32>(_wgslsmith_sub_u32(~4294967295u, arg_0.x), _wgslsmith_mult_u32(22731u, _wgslsmith_mult_u32(var_0.b.a.x, 35454u)), max(~1u, 0u))), _wgslsmith_clamp_i32(-(~(~arg_3.b)), var_0.c, 3678i), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, arg_1, -1056f), _wgslsmith_f_op_vec3_f32(-var_0.d))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(527f, -558f, 457f)))))), _wgslsmith_div_vec2_f32(var_0.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(arg_1 - 134f)) - vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.e.x)), arg_1))));
    let var_1 = arg_3.d;
    let var_2 = Struct_5(all(select(select(!vec2<bool>(var_0.a, arg_3.d), select(vec2<bool>(var_0.a, true), vec2<bool>(var_1, false), vec2<bool>(var_1, true)), !var_1), !vec2<bool>(var_1, false), vec2<bool>(var_0.a, false))), var_0.b, _wgslsmith_sub_i32(u_input.a, -47584i), var_0.d, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-822f)), -933f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2052f + -2157f))));
    return _wgslsmith_clamp_i32(-58080i, -2147483647i, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(~select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), ~vec4<i32>(0i, u_input.a, u_input.a, 0i), vec4<bool>(true, true, true, false)), vec4<i32>(-2147483647i ^ -u_input.a, ~min(u_input.a, -8376i), _wgslsmith_sub_i32(0i, u_input.a), func_1(vec3<u32>(8135u, 10358u, 106772u), -294f, 1u, Struct_4(vec2<u32>(1u, 65254u), u_input.a, Struct_2(-1065f, vec2<u32>(15501u, 0u), u_input.a), false, 1u)) >> (1u % 32u))), vec4<i32>(-2659i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a, -55208i), ~_wgslsmith_mod_i32(1i, 56738i), max(-u_input.a, u_input.a)), ~(~u_input.a & u_input.a), _wgslsmith_add_i32(_wgslsmith_clamp_i32(9529i, u_input.a, 2147483647i), 0i)));
    var var_1 = vec4<bool>(true, select(all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(51209u, 21471u), vec2<u32>(45697u, 12479u)), 0u, _wgslsmith_add_u32(44618u, 85946u)) >= firstTrailingBit(3132u), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1528f * _wgslsmith_f_op_f32(1936f - -775f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-483f, 1599f))))) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -265f)))), select(!select(true, true, true), true, true));
    global0 = 1000f;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-296f, _wgslsmith_f_op_f32(f32(-1f) * -362f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1698f - 185f) * _wgslsmith_f_op_f32(func_2(-1515f, var_1.zwz))), _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_u32(4294967295u, 27524u), var_1.x, vec4<i32>(u_input.a, 0i, var_0.x, var_0.x), var_1.yw))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(-465f)), 1213f, _wgslsmith_f_op_f32(-458f * 156f), _wgslsmith_f_op_f32(f32(-1f) * -103f)), vec4<f32>(_wgslsmith_f_op_f32(-987f + -1264f), _wgslsmith_f_op_f32(f32(-1f) * -950f), -300f, 845f)))), vec3<i32>(select(-1i, 1i, false), -57248i, abs(-_wgslsmith_add_i32(u_input.a, var_0.x))), 4294967295u);
    var_2 = Struct_1(vec4<f32>(551f, var_2.a.x, var_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1916f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * _wgslsmith_f_op_f32(round(-2615f))))), global1[_wgslsmith_index_u32(firstLeadingBit(var_2.c), 6u)], _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(47627u, var_2.c, 0u, 7776u), vec4<u32>(var_2.c, 24354u, 4294967295u, var_2.c), ~vec4<u32>(var_2.c, 64396u, 0u, var_2.c)) & ~(~vec4<u32>(17285u, 13800u, 57257u, var_2.c)), ~(~select(vec4<u32>(var_2.c, var_2.c, var_2.c, var_2.c), vec4<u32>(25660u, var_2.c, 44546u, var_2.c), vec4<bool>(false, false, var_1.x, true)))));
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(var_2.a, vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(var_2.a.x * -946f), var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1224f)), select(vec4<bool>(true, false, true, true), !vec4<bool>(false, var_1.x, false, var_1.x), !vec4<bool>(true, true, var_1.x, true)))), var_2.a)), vec3<i32>(reverseBits(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, 2147483647i), var_2.b.x ^ var_0.x)), firstLeadingBit(-46823i), i32(-1i) * -max(var_2.b.x, -2405i)), 60750u | reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, var_2.c))));
    var_0 = ~(-vec4<i32>(~u_input.a, u_input.a, u_input.a, var_2.b.x) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(var_2.c, var_2.c, 76020u, 4294967295u) >> (vec4<u32>(var_2.c, 4294967295u, var_2.c, var_2.c) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.c, 1098u, var_2.c, var_2.c), vec4<u32>(var_2.c, var_2.c, 111581u, 0u), vec4<u32>(0u, var_2.c, 58142u, 16131u)), ~vec4<u32>(1u, 0u, var_2.c, var_2.c))) % vec4<u32>(32u)));
    var_0 = vec4<i32>(abs(countOneBits(-u_input.a)), -2147483647i, -34006i, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(872f - _wgslsmith_f_op_f32(step(var_2.a.x, var_2.a.x))), var_2.a.x)), abs(~0u), _wgslsmith_sub_i32(var_0.x, -33135i) | firstLeadingBit(var_0.x), var_2.a.x, _wgslsmith_sub_i32(-2147483647i, u_input.a));
}

