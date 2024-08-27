struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32) -> f32 {
    global0 = -651f;
    let var_0 = Struct_1(2061f, true);
    global0 = 240f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1011f + arg_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -1385f) * -1143f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, -1624f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a), -350f)), arg_0)));
    let var_1 = _wgslsmith_sub_u32(0u, abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, ~0u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 62020u), firstLeadingBit(4294967295u)))));
    return arg_0;
}

fn func_3() -> vec4<f32> {
    global0 = 144f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-567f, -965f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-818f)))))));
    var var_0 = !(any(vec4<bool>(true, true, true, true)) && true);
    let var_1 = Struct_1(-919f, false);
    let var_2 = !(!(!(!vec4<bool>(false, var_1.b, var_1.b, var_1.b))));
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(f32(-1f) * -926f))), -887f, _wgslsmith_f_op_f32(func_1(-256f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -2478f, -1000f, -499f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(913f, 356f, var_1.a, -647f)))), select(var_2.x, true, var_2.x))));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    var var_0 = ~u_input.c.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_2.a)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.a))))), arg_3.x)));
}

fn func_2() -> bool {
    global0 = _wgslsmith_f_op_f32(func_4(abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), 1u)), ~1u, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1667f, 170f))))), true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, -582f, 335f, 1813f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1499f, 1757f, -781f, 1001f), vec4<f32>(-254f, -411f, -2854f, -499f))), vec4<f32>(-1000f, 431f, 766f, -995f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(316f, 1024f, 1916f, -1554f) - vec4<f32>(-191f, 754f, -129f, 209f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(326f, -1038f, -116f, 378f) - vec4<f32>(-1000f, 139f, -191f, -644f))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1142f - -439f)) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3()).x))))));
    let var_0 = Struct_1(612f, false);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -568f, var_0.a, 484f) * vec4<f32>(1495f, -1000f, 2686f, var_0.a)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-104f, 668f, var_0.a, var_0.a)))) * vec4<f32>(_wgslsmith_div_f32(var_0.a, -625f), _wgslsmith_f_op_f32(-464f * 1579f), var_0.a, _wgslsmith_f_op_f32(func_1(-1404f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-312f)) + 270f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -678f)), var_0.a)));
    let var_2 = select(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(4294967295u, 0u)), ~firstLeadingBit(vec2<u32>(4294967295u, 0u))), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(51987u, 25324u)) >> (select(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u), vec2<bool>(false, true)) % vec2<u32>(32u)), min(firstLeadingBit(vec2<u32>(1u, 19512u)), vec2<u32>(5348u, 4294967295u))), vec2<bool>(true, true)) & abs(vec2<u32>(~(~19194u), ~(~4294967295u)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), var_0.b);
    return !any(select(vec3<bool>(var_0.b, var_3.b, select(true, true, false)), vec3<bool>(var_0.b, true, true && var_0.b), vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -588f) - _wgslsmith_f_op_f32(f32(-1f) * -1553f))))));
    var var_0 = 0i;
    var var_1 = select(vec2<bool>(!all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, true, false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(true, func_2()), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(true, true)))), select(vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), any(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true), true))));
    let var_2 = _wgslsmith_add_u32(~1u, _wgslsmith_sub_u32(1u, ~select(4294967295u, 3040u, false)) ^ firstLeadingBit(1u));
    let var_3 = -firstTrailingBit(-max(6394i, u_input.c.x << (var_2 % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(var_2, 1u, var_2)), _wgslsmith_dot_vec3_i32(u_input.c.wzw, select(abs(~u_input.c.zyx), reverseBits(-vec3<i32>(6777i, 0i, 1i)), var_1.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-101f, -621f, 934f, 191f) + vec4<f32>(185f, 2366f, 969f, 1242f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-327f, -1115f, -152f, -121f), vec4<f32>(141f, -385f, 112f, -1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1021f, -522f, -693f, -597f) * _wgslsmith_div_vec4_f32(vec4<f32>(-500f, 1059f, 1426f, 1768f), vec4<f32>(-228f, 338f, 1371f, -2151f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-491f, -1171f, 1640f, 1195f), vec4<f32>(294f, 956f, 1523f, -251f), var_1.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(121f, 334f, 227f, -384f), vec4<f32>(1000f, -125f, -1664f, -1088f)))))))), vec3<u32>(var_2, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_2, var_2, var_2, var_2)), _wgslsmith_div_vec4_u32(vec4<u32>(var_2, var_2, 35706u, var_2), _wgslsmith_add_vec4_u32(vec4<u32>(var_2, 84780u, var_2, var_2), vec4<u32>(var_2, var_2, var_2, var_2)))), var_2), ~select(reverseBits(vec4<i32>(2147483647i, 0i, var_3, var_3)), abs(vec4<i32>(21083i, 1i, u_input.c.x, var_3)), false) << (select(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(25869u, var_2, 1u, 0u)), firstLeadingBit(vec4<u32>(8533u, var_2, 12217u, var_2))), ~countOneBits(vec4<u32>(var_2, var_2, 1u, var_2)), select(!vec4<bool>(false, false, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true))) % vec4<u32>(32u)));
}

