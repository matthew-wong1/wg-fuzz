struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1>;

var<private> global1: f32 = -347f;

var<private> global2: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(2147483647i, 4098i, 0i, 8435i), vec4<i32>(19755i, i32(-2147483648), 25455i, -14046i), vec4<i32>(17708i, -12175i, -19357i, 16065i), vec4<i32>(1i, 1i, -46999i, 63448i), vec4<i32>(-66323i, 30798i, 32387i, -1i), vec4<i32>(1i, 62981i, 2147483647i, -1i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 65478i), vec4<i32>(0i, i32(-2147483648), -5259i, -56246i), vec4<i32>(1i, i32(-2147483648), 36412i, -2838i), vec4<i32>(-18159i, 2147483647i, 0i, -1i), vec4<i32>(i32(-2147483648), 32404i, 1i, 1i), vec4<i32>(1i, 25566i, i32(-2147483648), 14497i), vec4<i32>(-15695i, 0i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), -20469i, -32914i, 63013i), vec4<i32>(282i, 19467i, 28501i, 1i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -36282i), vec4<i32>(-92559i, -4830i, 0i, 0i));

var<private> global3: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false));

var<private> global4: f32 = 1552f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4) -> u32 {
    global2 = array<vec4<i32>, 17>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1460f)) - _wgslsmith_f_op_f32(f32(-1f) * -591f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1751f, 398f)) + _wgslsmith_f_op_f32(f32(-1f) * -1637f)), _wgslsmith_f_op_f32(-498f + _wgslsmith_f_op_f32(max(858f, -1286f))))), ~(~(-18078i)), Struct_1(_wgslsmith_mod_u32(abs(u_input.b.x), u_input.b.x) ^ abs(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-156f, -250f, arg_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-317f, _wgslsmith_f_op_f32(236f - 1746f), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1453f * 149f), -242f)))), Struct_1(_wgslsmith_sub_u32(u_input.b.x << (_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) % 32u), ~40342u | ~u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1119f)) + _wgslsmith_div_f32(1332f, 706f))), _wgslsmith_f_op_f32(454f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(709f + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(817f, 1065f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.c), _wgslsmith_f_op_f32(-263f - _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.d.d, var_0.a.x), _wgslsmith_div_f32(571f, -810f))), var_0.e), _wgslsmith_f_op_vec3_f32(-var_0.a)));
    global1 = var_1.x;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(var_0.a + var_0.a), _wgslsmith_sub_i32(~(-(~59308i)), ~arg_0.x), var_0.c, Struct_1(u_input.b.x, 139f, _wgslsmith_f_op_f32(f32(-1f) * -1234f), 591f), var_1.x);
    return 1u;
}

fn func_2(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = _wgslsmith_div_u32(func_3(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(70906i, -75162i, u_input.a, 0i), select(global2[_wgslsmith_index_u32(53326u, 17u)], vec4<i32>(2147483647i, 13360i, u_input.a, u_input.a), vec4<bool>(true, true, true, arg_0.a))), -(global2[_wgslsmith_index_u32(39259u, 17u)] | vec4<i32>(u_input.a, -39329i, u_input.a, u_input.a)), global2[_wgslsmith_index_u32(u_input.b.x, 17u)]), Struct_4(true)), ~(~u_input.b.x));
    global0 = array<vec3<u32>, 1>();
    let var_1 = Struct_3(vec3<bool>(all(select(!vec2<bool>(arg_0.a, true), select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, true)), true)), true, (arg_0.a && true) && !(!arg_0.a)), true);
    var var_2 = firstLeadingBit(select((firstTrailingBit(vec4<u32>(u_input.b.x, 0u, 4294967295u, 0u)) >> ((vec4<u32>(u_input.b.x, 0u, u_input.b.x, 1u) << (vec4<u32>(71788u, 4294967295u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (~(~vec4<u32>(0u, 0u, u_input.b.x, 17037u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(68053u, 0u, u_input.b.x, 824u)), ~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 56248u) & ~vec4<u32>(33196u, 4294967295u, 0u, u_input.b.x)), vec4<bool>(false, any(vec4<bool>(false, false, false, true)), !(!arg_0.a), arg_0.a && (var_1.b && false))));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, var_2.x << (87025u % 32u)) ^ var_2.x, 4u)];
    return vec4<bool>(var_1.a.x || var_3.a, all(select(select(vec2<bool>(false, true), !var_1.a.zx, var_1.a.zz), select(vec2<bool>(var_1.a.x, false), !var_1.a.yz, any(vec3<bool>(var_3.a, var_3.a, var_3.a))), !select(vec2<bool>(false, var_3.a), vec2<bool>(var_1.b, arg_0.a), false))), all(var_1.a.yy), true);
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_3(vec3<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), all(func_2(global3[_wgslsmith_index_u32(28879u, 4u)])) || true, firstTrailingBit(i32(-1i) * -6174i) <= -68742i), !(func_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(52914u, 39122u), vec2<u32>(11482u, u_input.b.x)), 4u)]).x | true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(373f)), 768f)) * _wgslsmith_f_op_f32(trunc(-1068f)))) > _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(992f, 1482f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(189f + 1819f) - _wgslsmith_f_op_f32(998f * -141f)))));
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2344f - 686f))) + _wgslsmith_f_op_f32(f32(-1f) * -124f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2011f)), _wgslsmith_f_op_f32(ceil(483f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1194f - -1367f) + 1f))), -1i, Struct_1(0u, 1f, -363f, -952f), Struct_1(108221u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(156f, 375f)), -934f)), 906f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -758f)))), -390f);
    global1 = -1000f;
    global1 = -1096f;
    return global3[_wgslsmith_index_u32(~0u, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-702f - 1f)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(102f * -1152f));
    let var_0 = ~1u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-699f, -1993f))))))));
    var var_2 = func_1();
    let var_3 = vec4<i32>(u_input.a, ~(-13455i), ~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a << (4294967295u % 32u), abs(u_input.a)), -16244i), -vec2<i32>(u_input.a, u_input.a >> (var_0 % 32u))));
    let var_4 = var_3.zy;
    var var_5 = var_3.yx;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(vec4<u32>(var_0, u_input.b.x, 18491u, u_input.b.x) ^ select(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(10465u, var_0, 47112u, u_input.b.x), vec4<bool>(var_2.a, var_2.a, var_2.a, true)))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-896f)), 1657f), _wgslsmith_f_op_f32(-299f - _wgslsmith_f_op_f32(select(-1274f, 1343f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-335f * 945f))) - _wgslsmith_f_op_f32(160f + -951f)), 1279f), 3765u & u_input.b.x, -1299f);
}

