struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-781f, arg_3, 958f, arg_2.x) + vec4<f32>(arg_0.e, 642f, arg_3, arg_0.e))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1156f, arg_0.c, 1403f, -1274f) * vec4<f32>(1168f, arg_3, 233f, arg_1.c))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.e, arg_1.c, -1074f, -1225f), vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_3))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3, arg_2.x, arg_3, arg_2.x), vec4<f32>(-1204f, arg_0.e, arg_1.c, 337f)))))))));
    global0 = array<vec4<bool>, 5>();
    var var_1 = vec3<bool>(arg_1.b.x, arg_0.c < arg_3, -arg_1.a.x <= -35315i);
    let var_2 = Struct_1(vec2<i32>(arg_1.a.x, u_input.b & arg_0.a.x), var_1.yx, _wgslsmith_f_op_f32(trunc(-139f)), ~(~firstLeadingBit(arg_0.d)) | arg_0.d, 462f);
    let var_3 = var_0.ywy;
    return 1805f;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> bool {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(f32(-1f) * -848f), arg_1.b.x)) + var_0.c) <= _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(-arg_1.c));
    var_0 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(step(-1283f, -869f));
    global0 = array<vec4<bool>, 5>();
    return any(select(vec3<bool>(arg_2, !(!arg_2), true), select(select(vec3<bool>(false, var_0.b.x, false), select(vec3<bool>(false, var_0.b.x, arg_2), vec3<bool>(false, arg_2, true), false), true), !vec3<bool>(arg_2, true, true), ~0u <= (u_input.a ^ u_input.a)), _wgslsmith_f_op_f32(sign(var_0.e)) >= -839f));
}

fn func_2() -> u32 {
    var var_0 = vec2<bool>(false, func_4(~34705u, Struct_1(~firstTrailingBit(vec2<i32>(u_input.b, -1i)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -888f) * _wgslsmith_f_op_f32(f32(-1f) * -963f)), ~(vec4<u32>(0u, u_input.a, u_input.a, u_input.a) | vec4<u32>(u_input.a, 1u, 1090u, u_input.a)), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(-15780i, -2147483647i), vec2<bool>(true, false), -1543f, vec4<u32>(31032u, 101951u, u_input.a, 17929u), 1060f), Struct_1(vec2<i32>(18736i, u_input.b), vec2<bool>(true, true), -1079f, vec4<u32>(7690u, u_input.a, u_input.a, 4294967295u), 922f), _wgslsmith_div_vec2_f32(vec2<f32>(186f, 1325f), vec2<f32>(1630f, -314f)), -511f))), !any(vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1090f, 317f))))), 869f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -635f) - 193f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-523f, -1039f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-227f, -456f, var_0.x)), _wgslsmith_f_op_f32(2519f * 308f))))));
    global0 = array<vec4<bool>, 5>();
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1058f, _wgslsmith_f_op_f32(f32(-1f) * -438f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(-var_1.x))) - var_1.x), -443f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1828f, var_1.x, 136f, -591f)) * vec4<f32>(var_1.x, var_1.x, -591f, var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1123f, 1319f, -227f) * vec4<f32>(var_1.x, var_1.x, var_1.x, 1129f)) + vec4<f32>(var_1.x, var_1.x, var_1.x, 684f))))));
    var var_2 = Struct_1(~vec2<i32>(min(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, -2147483647i))), 1i), !vec2<bool>(-u_input.b >= ~(-57189i), !var_0.x), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(var_1.x, -783f)), min(reverseBits((vec4<u32>(64618u, 0u, u_input.a, 1u) & vec4<u32>(27584u, u_input.a, 11234u, 55506u)) ^ ~vec4<u32>(u_input.a, 0u, 21501u, 91726u)), _wgslsmith_add_vec4_u32(~select(vec4<u32>(u_input.a, u_input.a, u_input.a, 62157u), vec4<u32>(1u, 49078u, u_input.a, 14697u), false), vec4<u32>(~13024u, ~42813u, 4294967295u, min(13388u, 31439u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_1.x)), var_1.x)))));
    return 4882u;
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    global0 = array<vec4<bool>, 5>();
    let var_0 = vec3<bool>(119681u > func_2(), arg_0.b.x, true);
    var var_1 = Struct_1(arg_0.a, vec2<bool>(func_4(1u, Struct_1(arg_0.a, vec2<bool>(arg_0.b.x, false), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0.d, -677f), var_0.x), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), var_0.x))), _wgslsmith_f_op_f32(floor(-1000f)), ~countOneBits(select(arg_0.d, ~arg_0.d, !vec4<bool>(var_0.x, false, var_0.x, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.e))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_0.e, 575f, func_4(1u, arg_0, arg_0.b.x)))))));
    var var_2 = ~_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(min(var_1.a | arg_0.a, vec2<i32>(var_1.a.x, u_input.b)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.a, var_1.a), _wgslsmith_clamp_vec2_i32(var_1.a, arg_0.a, var_1.a))), var_1.a);
    global0 = array<vec4<bool>, 5>();
    return select(var_0, vec3<bool>(any(var_0), arg_0.b.x, !var_0.x), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(vec3<bool>(true, true, false), func_1(Struct_1(vec2<i32>(u_input.b, u_input.b), vec2<bool>(false, true), -363f, vec4<u32>(u_input.a, 1u, 1u, u_input.a), -2429f)), true), func_1(Struct_1(abs(vec2<i32>(u_input.b, u_input.b)), vec2<bool>(false, true), _wgslsmith_f_op_f32(859f * -1180f), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 13473u, u_input.a), vec4<u32>(u_input.a, u_input.a, 30945u, u_input.a)), 1f)), !(false && any(vec2<bool>(false, true))));
    global0 = array<vec4<bool>, 5>();
    let var_1 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.b << (u_input.a % 32u), firstLeadingBit(18840i)), u_input.b), vec2<i32>(min(u_input.b, 0i) & select(40135i, u_input.b, var_0.x), max(12322i, _wgslsmith_div_i32(-26259i, -23864i)))), func_1(Struct_1(-(~vec2<i32>(36773i, 0i)), vec2<bool>(false, !var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-206f, 1149f)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, 6623u, u_input.a)) << (max(vec4<u32>(u_input.a, u_input.a, 49146u, u_input.a), vec4<u32>(u_input.a, 52856u, 0u, u_input.a)) % vec4<u32>(32u)), _wgslsmith_div_f32(-651f, 2353f))).yz, 792f, select(vec4<u32>(~_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_mod_u32(~u_input.a, min(u_input.a, u_input.a)), 1u, 4294967295u), countOneBits(~select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(3403u, u_input.a, u_input.a, 0u), var_0.x)), !global0[_wgslsmith_index_u32((u_input.a >> (85789u % 32u)) ^ 3114u, 5u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -343f) - _wgslsmith_f_op_f32(670f - -303f)))));
    var var_2 = Struct_1(var_1.a, vec2<bool>(!(!func_4(var_1.d.x, var_1, var_1.b.x)), all(var_0)), -1282f, ~(~select(var_1.d, vec4<u32>(40296u, var_1.d.x, 75252u, var_1.d.x), any(vec2<bool>(var_1.b.x, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e))));
    var var_3 = var_1;
    var_3 = Struct_1(min(vec2<i32>(var_3.a.x, -1i), countOneBits(-min(vec2<i32>(var_2.a.x, 0i), var_1.a))), vec2<bool>(!(var_3.d.x >= _wgslsmith_div_u32(51176u, var_2.d.x)), !var_3.b.x), _wgslsmith_f_op_f32(var_1.e - _wgslsmith_f_op_f32(var_2.e * var_1.c)), abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.d.x, var_1.d.x, var_2.d.x, var_3.d.x), var_1.d ^ vec4<u32>(var_3.d.x, 30818u, var_1.d.x, u_input.a))), _wgslsmith_f_op_f32(-var_2.e));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(519f, 226f, 836f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(463f, var_1.c, -382f) * vec3<f32>(-1364f, var_2.c, -443f)), var_0.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.e, var_2.e, var_2.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.e, 899f, var_3.c) * vec3<f32>(var_2.e, -1130f, var_2.e)))), func_4(max(u_input.a, var_1.d.x), var_1, any(global0[_wgslsmith_index_u32(var_1.d.x, 5u)])))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(-772f)), _wgslsmith_f_op_f32(2057f + -1149f), 644f), vec3<f32>(_wgslsmith_f_op_f32(var_3.c - 1000f), var_1.e, -431f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1199f, -228f, 191f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1060f, var_2.c, var_1.e))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2196f, -493f, var_3.e) - vec3<f32>(184f, var_2.c, -1180f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1219f, var_1.e, var_1.e)))))));
    var_3 = Struct_1(vec2<i32>(39661i, _wgslsmith_add_i32(_wgslsmith_mod_i32(0i, 2147483647i) >> (_wgslsmith_mod_u32(var_2.d.x, 49750u) % 32u), var_2.a.x)), select(var_2.b, !select(select(vec2<bool>(var_0.x, var_1.b.x), var_0.yx, var_2.b.x), vec2<bool>(true, true), var_2.b), select(var_0.xy, select(vec2<bool>(false, false), func_1(var_1).xx, select(var_3.b, var_3.b, var_3.b.x)), true)), _wgslsmith_f_op_f32(f32(-1f) * -175f), var_2.d, var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(557f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.c))))), _wgslsmith_f_op_f32(-1000f * var_1.e), var_3.c));
}

