struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(2147483647i, 38312i, -1i, -20516i, -1i, -5124i, i32(-2147483648), 16659i, 2147483647i, 2147483647i, 37938i, 1i, -850i, i32(-2147483648), 2147483647i, i32(-2147483648), 0i, i32(-2147483648), 2147483647i, 0i, -1i, 2147483647i);

var<private> global1: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(4294967295u, 0u, 1u, 7920u), vec4<u32>(1u, 60449u, 23618u, 11257u), vec4<u32>(11512u, 1u, 4294967295u, 49256u), vec4<u32>(24284u, 1u, 0u, 0u), vec4<u32>(1u, 4294967295u, 34069u, 1u), vec4<u32>(65406u, 25691u, 1u, 0u), vec4<u32>(36148u, 4294967295u, 0u, 19478u), vec4<u32>(24927u, 71538u, 0u, 4294967295u), vec4<u32>(39148u, 0u, 18184u, 4294967295u), vec4<u32>(1u, 42164u, 6157u, 0u), vec4<u32>(1u, 42587u, 0u, 8264u), vec4<u32>(1u, 40289u, 0u, 23113u), vec4<u32>(0u, 0u, 42638u, 1u), vec4<u32>(15808u, 4294967295u, 17226u, 68597u), vec4<u32>(3315u, 1u, 10660u, 36168u), vec4<u32>(0u, 1u, 23407u, 0u), vec4<u32>(0u, 4416u, 1u, 1u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(2616u, 42991u, 4294967295u, 23521u), vec4<u32>(50846u, 1u, 1u, 29967u), vec4<u32>(1u, 70841u, 4475u, 1u), vec4<u32>(26084u, 4294967295u, 3320u, 22797u));

var<private> global2: array<vec4<u32>, 20>;

var<private> global3: array<i32, 13>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(max(-632f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(719f + 270f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -552f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(580f, 239f, 986f, 2482f))))))));
    let var_2 = _wgslsmith_f_op_f32(select(349f, _wgslsmith_f_op_f32(var_1.x + -1278f), max(abs(global0[_wgslsmith_index_u32(22333u, 22u)]), max(~28947i, -34746i)) <= global3[_wgslsmith_index_u32(select(max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 19162u, u_input.a), vec3<u32>(1u, 0u, u_input.a)), firstLeadingBit(0u)), u_input.a, any(vec4<bool>(true, true, true, true))), 13u)]));
    global3 = array<i32, 13>();
    let var_3 = Struct_3(min(countOneBits(vec2<u32>(_wgslsmith_sub_u32(1u, u_input.a), 0u & u_input.a)), ~(vec2<u32>(u_input.a, u_input.a) << (max(vec2<u32>(4467u, u_input.a), vec2<u32>(0u, 1u)) % vec2<u32>(32u)))), Struct_2(!vec4<bool>(true, all(vec2<bool>(true, false)), all(vec3<bool>(true, true, false)), all(vec2<bool>(false, true))), vec2<u32>(~firstLeadingBit(u_input.a), 0u), Struct_1(~abs(vec2<u32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1, vec4<f32>(var_2, 143f, 1456f, 760f), vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_vec4_f32(min(var_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(389f, -1525f, var_2, var_2) - vec4<f32>(-599f, var_2, var_1.x, var_2)))), vec4<f32>(_wgslsmith_f_op_f32(1730f + -1145f), _wgslsmith_div_f32(var_1.x, 1830f), var_1.x, 1332f))), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, u_input.a, 95614u) ^ ~vec3<u32>(44968u, 69267u, 4294967295u), vec3<u32>(12628u, ~4294967295u, 4294967295u | u_input.a)), -1000f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-653f + var_2) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2)))));
    return max(u_input.a, _wgslsmith_div_u32(0u << (var_3.b.c.a.x % 32u), _wgslsmith_add_u32(~var_3.b.b.x ^ ~var_3.b.b.x, u_input.a)));
}

fn func_2() -> Struct_1 {
    global2 = array<vec4<u32>, 20>();
    let var_0 = u_input.a;
    global1 = array<vec4<u32>, 22>();
    let var_1 = Struct_3(~vec2<u32>(0u, func_3()), Struct_2(select(vec4<bool>(false, all(vec3<bool>(true, false, false)), all(vec4<bool>(false, true, true, true)), true), vec4<bool>(false, any(vec3<bool>(false, false, false)), global0[_wgslsmith_index_u32(0u, 22u)] >= -2147483647i, false), false), vec2<u32>(u_input.a, 40546u), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(56516u, var_0) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, 1u), false), vec2<u32>(47994u, u_input.a)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1027f, 1351f, 922f, -896f)))), vec4<f32>(-1693f, -208f, _wgslsmith_div_f32(2125f, 2103f), 111f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1222f, 708f, 1026f, 897f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-692f, 263f, -196f, 564f), vec4<f32>(1000f, 982f, 1056f, 1335f), false))))), ~(~(select(vec3<u32>(var_0, 33342u, 22665u), vec3<u32>(4294967295u, u_input.a, var_0), true) >> (~vec3<u32>(var_0, var_0, 0u) % vec3<u32>(32u)))), !select(true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false)), true));
    global2 = array<vec4<u32>, 20>();
    return Struct_1(vec2<u32>(~func_3(), max(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, var_1.c.x), global1[_wgslsmith_index_u32(45593u, 22u)]), _wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(18281u, 22u)], vec4<u32>(87728u, u_input.a, 71373u, var_0))), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0, 4294967295u), u_input.a))), vec4<f32>(var_1.b.c.d.x, _wgslsmith_f_op_f32(825f + _wgslsmith_f_op_f32(-var_1.b.c.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b.c.b.x - var_1.b.c.b.x))) - _wgslsmith_f_op_f32(292f - _wgslsmith_f_op_f32(-var_1.b.c.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(869f + 247f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-297f, var_1.b.c.d.x, var_1.b.c.d.x, var_1.b.c.b.x)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b.c.d.x, var_1.b.c.b.x, var_1.b.c.b.x, 558f), var_1.b.c.d)), !var_1.b.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.b.c.b, var_1.b.c.c) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(915f, -1675f, -131f, var_1.b.c.b.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.c.c.x, var_1.b.c.d.x, var_1.b.c.c.x, -557f) + var_1.b.c.b))), vec4<f32>(_wgslsmith_f_op_f32(round(-291f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.b.c.c.x, var_1.b.c.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b.c.d.x, -513f)) - 992f))), _wgslsmith_div_f32(1000f, var_1.b.c.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1117f))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_add_u32(arg_0.a.x, u_input.a) == arg_0.a.x), !vec2<bool>(true, ~4294967295u <= _wgslsmith_sub_u32(arg_1.a.x, 8975u)), !all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true)));
    let var_1 = Struct_3(vec2<u32>(arg_0.a.x, ~(~46097u)), Struct_2(select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(true, any(var_0), !var_0.x, all(vec2<bool>(true, var_0.x))), !vec4<bool>(false, var_0.x, var_0.x, true)), arg_1.a, Struct_1(vec2<u32>(func_2().a.x, max(4294967295u, 23941u)), _wgslsmith_f_op_vec4_f32(-arg_0.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(-641f, 474f, arg_0.d.x, 1463f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_2.x, 475f, arg_2.x))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d.x, arg_1.c.x, arg_2.x, -165f), _wgslsmith_f_op_vec4_f32(arg_0.b + arg_1.c)))), abs(vec3<u32>(arg_1.a.x, ~_wgslsmith_mod_u32(4294967295u, 9405u), 0u)), false);
    global1 = array<vec4<u32>, 22>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c.c.x, -1009f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(346f - 1394f)))), _wgslsmith_f_op_f32(abs(arg_2.x))));
    var var_3 = true;
    return Struct_1(firstTrailingBit(arg_1.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_2, vec4<f32>(-180f, var_1.b.c.b.x, 1623f, -986f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1095f + -1399f)), _wgslsmith_f_op_f32(arg_0.c.x + var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.c.c.x) - 673f), _wgslsmith_f_op_f32(round(arg_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_2 - vec4<f32>(418f, var_1.b.c.d.x, -592f, arg_1.c.x)))), _wgslsmith_div_vec4_f32(var_1.b.c.b, _wgslsmith_f_op_vec4_f32(-var_1.b.c.d)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.b.c.d.x, -405f, all(vec3<bool>(false, var_1.b.a.x, var_0.x)))), var_2.x), -1439f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-623f, _wgslsmith_f_op_f32(floor(arg_1.d.x))))), 1239f));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec2_u32(abs(abs(~max(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)))), vec2<u32>(~_wgslsmith_add_u32(firstLeadingBit(u_input.a), u_input.a), max(u_input.a, _wgslsmith_sub_u32(u_input.a, 1u))), (_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 12649u), ~vec2<u32>(u_input.a, u_input.a)) | _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.a, 1u), ~vec2<u32>(4294967295u, u_input.a))) & vec2<u32>(u_input.a, u_input.a));
    var var_1 = func_4(func_2(), func_2(), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(398f * arg_0)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1096f, arg_0) * vec2<f32>(-1000f, arg_0)) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 134f), vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(142f, arg_0)) * vec2<f32>(347f, 435f))))));
    global1 = array<vec4<u32>, 22>();
    let var_2 = any(!vec4<bool>(true, (global0[_wgslsmith_index_u32(u_input.a, 22u)] > 1i) & false, false, true));
    var_1 = Struct_1(_wgslsmith_mult_vec2_u32(var_1.a, ~var_0), vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(vec2<u32>(u_input.a, 0u), var_1.d, var_1.c, vec4<f32>(arg_0, var_1.b.x, var_1.c.x, arg_0)), func_2(), _wgslsmith_f_op_vec2_f32(min(var_1.c.zx, vec2<f32>(-833f, var_1.c.x)))).c.x - -496f), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -2370f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1333f))) - 1169f), 2029f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(ceil(var_1.c.x)), func_2().b.x, _wgslsmith_f_op_f32(151f * var_1.d.x))), var_1.d)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))), _wgslsmith_f_op_f32(round(var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.c.x, -558f)), arg_0)), -323f));
    return func_4(Struct_1(~var_0, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_1.d - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, var_1.d.x, -394f, -725f), var_1.b))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_1.b, var_1.d)), _wgslsmith_f_op_vec4_f32(var_1.c * var_1.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 435f)), arg_0, _wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), var_1.b.x))), func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1.d.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.b.yz, vec2<f32>(913f, var_1.b.x))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-331f, var_1.b.x)))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b.ww - vec2<f32>(arg_0, 1052f)) * var_1.d.wy)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 22>();
    let var_0 = vec2<bool>(((~u_input.a >> (_wgslsmith_sub_u32(u_input.a, 9012u) % 32u)) << (1u % 32u)) > ~u_input.a, false);
    let var_1 = func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1360f + _wgslsmith_f_op_f32(abs(260f)))), _wgslsmith_f_op_f32(step(-687f, 659f)), !var_0.x)));
    var var_2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + 544f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))).c.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(max(var_1.d.zxx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b.x, var_1.b.x, 151f), var_1.c.zwx)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.d.x, var_1.c.x, -324f))))))));
    var_2 = _wgslsmith_f_op_f32(round(125f));
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(1i, global3[_wgslsmith_index_u32(var_4.a.x, 13u)]);
}

