struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = firstTrailingBit(2147483647i);
    var_0 = _wgslsmith_sub_i32(~4704i, -_wgslsmith_mod_i32(-27286i, ~(-2147483647i)));
    var var_1 = arg_0.a;
    var var_2 = Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(~(~866u), min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 10839u, 966u, 27225u), vec4<u32>(0u, 0u, 1u, 0u)), firstTrailingBit(0u)), 31456u), vec3<u32>(1u, ~1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 17758u, 20679u), vec3<u32>(1u, 71532u, 40577u)))));
    var var_3 = 409f;
    return all(select(vec3<bool>(all(vec2<bool>(true, true)), true, true), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), true)), any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, false))))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: f32) -> i32 {
    var var_0 = vec2<bool>(!(!(!arg_2.x)) & func_3(Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3, 565f, -1217f, arg_0), vec4<f32>(-1689f, 725f, arg_0, arg_3)))), Struct_1(vec4<f32>(-875f, -668f, 1293f, 1000f))), !arg_2.x);
    var_0 = arg_2;
    return 22370i;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    let var_0 = 13951i <= u_input.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_2.a.zyw * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_2.a.x)), _wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.a.x - -965f), _wgslsmith_f_op_f32(-arg_2.a.x), select(false, var_0, var_0)))), arg_2.a.wyw));
    global0 = array<Struct_2, 32>();
    let var_2 = !(!vec2<bool>(false, !(!var_0)));
    global0 = array<Struct_2, 32>();
    return !vec4<bool>(any(select(!vec4<bool>(var_0, false, var_0, false), select(vec4<bool>(true, var_2.x, false, false), vec4<bool>(var_2.x, var_2.x, true, var_0), vec4<bool>(var_2.x, var_2.x, var_2.x, var_0)), all(vec4<bool>(var_2.x, var_0, var_0, var_2.x)))), var_0, all(vec2<bool>(any(vec3<bool>(var_0, var_2.x, true)), true)), var_2.x);
}

fn func_1() -> vec4<bool> {
    let var_0 = ~(~vec2<u32>(18179u, 8914u));
    var var_1 = func_4(func_2(_wgslsmith_f_op_f32(-1547f + _wgslsmith_f_op_f32(abs(-484f))), global0[_wgslsmith_index_u32(4294967295u, 32u)], vec2<bool>(true, true), 1000f) & ~1i, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-164f, 535f, -1000f, 1236f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1170f, -1564f, 629f, 350f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1113f, -454f, -901f, 832f)))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(305f, 1577f, 157f, -828f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1631f), _wgslsmith_f_op_f32(103f - 607f), _wgslsmith_f_op_f32(select(401f, 1729f, false)), _wgslsmith_f_op_f32(943f + -1767f))))), _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_sub_i32(u_input.a, ~u_input.a)), _wgslsmith_div_i32(78324i, -65257i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(172f - 2290f), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1733f, -1870f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-799f + 1000f) * _wgslsmith_f_op_f32(min(592f, 644f))), 360f))));
    global0 = array<Struct_2, 32>();
    var var_3 = select(var_1.zwx, vec3<bool>(func_3(Struct_1(vec4<f32>(-414f, var_2.x, 865f, -1748f)), Struct_1(vec4<f32>(-827f, -1404f, var_2.x, var_2.x))), true, !var_1.x), any(!select(vec2<bool>(var_1.x, true), !var_1.xx, var_1.wz)));
    return vec4<bool>(true, select(var_1.x, !(false || var_3.x), var_1.x), func_4((firstLeadingBit(-2147483647i) ^ _wgslsmith_mult_i32(-694i, u_input.a)) << (1u % 32u), Struct_1(vec4<f32>(-1206f, _wgslsmith_f_op_f32(-579f - var_2.x), 1000f, _wgslsmith_f_op_f32(-2104f * -1373f))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, 1790f, var_2.x, 1579f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, var_2.x, var_2.x, 765f), vec4<f32>(var_2.x, var_2.x, 1982f, var_2.x))))), _wgslsmith_add_i32(~u_input.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(56854u, 1u), vec2<u32>(21582u, 4294967295u)) % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), ~u_input.a, u_input.a))).x, func_4(~26626i & _wgslsmith_add_i32(48300i, u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, 288f))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 448f, var_2.x, var_2.x))), u_input.a).x || (((var_3.x || true) || true) || true));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_2 {
    global0 = array<Struct_2, 32>();
    let var_0 = vec3<i32>(u_input.a, -_wgslsmith_dot_vec2_i32(~(vec2<i32>(0i, 3036i) << (vec2<u32>(4294967295u, arg_2.a) % vec2<u32>(32u))), -(vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(arg_2.a, arg_2.a) % vec2<u32>(32u)))), u_input.a);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1040f, 476f, -1086f, -1399f) + vec4<f32>(-800f, 418f, -296f, 1510f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1108f, 985f, -130f, -1933f)))))));
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_1.a.x)))), -234f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x), var_1.a.x), vec4<f32>(_wgslsmith_f_op_f32(floor(428f)), _wgslsmith_f_op_f32(-var_1.a.x), -1572f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-912f * var_1.a.x) - var_1.a.x))));
    let var_3 = arg_1;
    return Struct_2(_wgslsmith_mult_u32(99037u, arg_2.a));
}

fn func_6(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_4) -> vec2<i32> {
    let var_0 = ~(~firstLeadingBit(~(~arg_3.a.a.x)));
    var var_1 = Struct_3(vec3<u32>(func_5(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), arg_3.a, Struct_2(arg_3.a.a.x), vec4<bool>(true, true, true, func_4(u_input.a, Struct_1(vec4<f32>(415f, arg_1.x, arg_1.x, arg_1.x)), Struct_1(vec4<f32>(arg_1.x, arg_1.x, -657f, arg_1.x)), 1i).x)).a, 95985u, ~1u | func_5(vec2<bool>(true, true), arg_3.a, arg_2, vec4<bool>(false, false, true, true)).a));
    var var_2 = arg_0;
    var_1 = Struct_3(reverseBits(select(vec3<u32>(87099u, func_5(vec2<bool>(true, false), arg_3.a, Struct_2(0u), vec4<bool>(false, true, true, false)).a, 1u), firstLeadingBit(vec3<u32>(arg_2.a, arg_3.a.a.x, 4294967295u)), false)));
    var var_3 = arg_3.a.a.x;
    return _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, -(arg_0 & countOneBits(arg_0))), countOneBits(select(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 632i) | vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, u_input.a)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_0, 0i), vec2<i32>(-25505i, 0i) ^ vec2<i32>(2017i, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, -1613i))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(347f, _wgslsmith_f_op_f32(sign(2181f)), _wgslsmith_f_op_f32(f32(-1f) * -1043f))), func_5(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(false, false)), u_input.a > u_input.a), vec2<bool>(true, true)), Struct_3(~(~vec3<u32>(47835u, 0u, 4294967295u))), global0[_wgslsmith_index_u32(0u, 32u)], func_1()), Struct_4(Struct_3(~vec3<u32>(28189u, 4294967295u, 37241u))));
    var var_1 = ~min(func_5(!func_4(2147483647i, Struct_1(vec4<f32>(-775f, 533f, -205f, -166f)), Struct_1(vec4<f32>(-381f, 1161f, -144f, 1000f)), u_input.a).wx, Struct_3(~vec3<u32>(345u, 37884u, 0u)), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1731u, 19117u, 2448u), vec4<u32>(49165u, 42925u, 2797u, 69923u))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, false, false)))).a, 1u);
    var_1 = _wgslsmith_mult_u32(~max(abs(60939u), 1u) | ((_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 48053u), vec2<u32>(80163u, 4294967295u)) << (1u % 32u)) << (1u % 32u)), ~firstTrailingBit(29387u));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(213f - 505f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-451f)), 535f)) + _wgslsmith_f_op_f32(f32(-1f) * -258f))));
}

