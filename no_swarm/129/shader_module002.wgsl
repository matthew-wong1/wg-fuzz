struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: f32 = 461f;

var<private> global2: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(-490f, -847f), vec2<f32>(-1190f, 1926f), vec2<f32>(-595f, -1773f), vec2<f32>(2293f, -2469f), vec2<f32>(-141f, 137f), vec2<f32>(481f, 1335f), vec2<f32>(-819f, 387f), vec2<f32>(-1176f, 389f), vec2<f32>(930f, 1094f), vec2<f32>(186f, -439f), vec2<f32>(-195f, -729f), vec2<f32>(-1000f, 2480f), vec2<f32>(-672f, 1000f), vec2<f32>(1266f, -207f), vec2<f32>(-918f, 940f), vec2<f32>(1000f, 2028f), vec2<f32>(1187f, -602f), vec2<f32>(421f, 473f), vec2<f32>(-554f, -1156f), vec2<f32>(111f, 797f), vec2<f32>(-904f, 1653f), vec2<f32>(1891f, -466f), vec2<f32>(2163f, 1022f), vec2<f32>(433f, -161f), vec2<f32>(832f, 630f), vec2<f32>(288f, -1128f), vec2<f32>(1000f, 1277f), vec2<f32>(460f, -1709f), vec2<f32>(578f, -1000f), vec2<f32>(-852f, 960f), vec2<f32>(906f, 1394f), vec2<f32>(-1163f, -999f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_4) -> vec3<i32> {
    var var_0 = countOneBits(u_input.a.wz);
    var var_1 = Struct_5(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-47431i, arg_2.a.e.x, arg_2.a.a) << (u_input.a.zzz % vec3<u32>(32u)), vec3<i32>(44059i, arg_0.e.x, -1i), ~vec3<i32>(0i, arg_2.a.a, arg_2.a.e.x)), -vec3<i32>(arg_2.a.e.x, -21814i, arg_2.a.a)), arg_0.e.x), arg_2.b);
    var_0 = _wgslsmith_add_vec2_u32(~firstTrailingBit(u_input.a.wx), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(var_1.b.b, arg_1)), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 15917u), u_input.a.wy))));
    let var_2 = arg_2.b.a.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 8u)], -689f, 2046f, arg_2.a.c.x) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c, arg_2.c, 459f, -942f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], arg_2.a.c.x, arg_2.a.c.x, global0[_wgslsmith_index_u32(var_1.b.a.b, 8u)]))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, -607f, global0[_wgslsmith_index_u32(1u, 8u)], -411f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_2.a.c)), arg_0.c))) - _wgslsmith_f_op_vec4_f32(arg_0.c + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(-790f, arg_2.c), _wgslsmith_f_op_f32(select(arg_2.a.c.x, arg_2.c, true)), _wgslsmith_f_op_f32(-arg_2.c), arg_2.a.c.x)))));
    return ~_wgslsmith_add_vec3_i32(firstLeadingBit(~_wgslsmith_mod_vec3_i32(vec3<i32>(-42459i, arg_2.a.a, -2147483647i), vec3<i32>(arg_2.a.e.x, -49855i, 38499i))), _wgslsmith_mod_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-54632i, arg_2.a.a, arg_0.a), vec3<i32>(15198i, 1i, var_1.a))), abs(vec3<i32>(var_1.a, -1i, 0i))));
}

fn func_4(arg_0: vec3<i32>) -> u32 {
    return _wgslsmith_sub_u32(u_input.a.x << (u_input.a.x % 32u), u_input.a.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<bool>) -> vec3<u32> {
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-522f + 1138f)))));
    var var_0 = Struct_3(Struct_1(vec3<bool>(arg_2.x, !(!arg_0.x), true), ~26095u), ~0u);
    var var_1 = true;
    var var_2 = -1i;
    var_0 = Struct_3(var_0.a, ~(21818u << (func_4(func_3(Struct_2(arg_1.e.x, 8163u, arg_1.c, var_0.a.a.x, vec2<i32>(arg_1.e.x, -10342i)), 4294967295u, Struct_4(Struct_2(arg_1.e.x, 4294967295u, arg_1.c, false, arg_1.e), Struct_3(var_0.a, arg_1.b), global0[_wgslsmith_index_u32(arg_1.b, 8u)]))) % 32u)));
    return firstLeadingBit(vec3<u32>(var_0.a.b, abs(1u), firstTrailingBit(6778u)));
}

fn func_5(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_1(!vec3<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))), true, true), 45455u);
    global2 = array<vec2<f32>, 32>();
    var var_1 = all(select(select(select(var_0.a, var_0.a, vec3<bool>(var_0.a.x, false, false)), var_0.a, true), !(!vec3<bool>(var_0.a.x, var_0.a.x, false)), var_0.a.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(arg_0.x, 32u)] + vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x & (1u << (var_0.b % 32u)), 8u)], global0[_wgslsmith_index_u32(305u, 8u)]));
    let var_3 = Struct_3(Struct_1(var_0.a, arg_0.x), u_input.a.x);
    return Struct_2(func_3(Struct_2(1i, 24717u, vec4<f32>(-1237f, 1189f, _wgslsmith_f_op_f32(floor(-237f)), var_2.x), var_0.a.x || true, vec2<i32>(firstTrailingBit(-3985i), ~0i)), 1u, Struct_4(Struct_2(-22938i, abs(u_input.a.x), vec4<f32>(global0[_wgslsmith_index_u32(arg_0.x, 8u)], var_2.x, var_2.x, global0[_wgslsmith_index_u32(5539u, 8u)]), any(vec4<bool>(true, true, true, var_0.a.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(13925i, 0i), vec2<i32>(-29374i, -15449i), vec2<i32>(1i, 0i))), Struct_3(Struct_1(vec3<bool>(false, var_3.a.a.x, true), var_3.a.b), 31598u | u_input.a.x), _wgslsmith_f_op_f32(var_2.x * -281f))).x, 81112u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x * 1441f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-197f - -1000f))))), 1177f, 1f), false || var_3.a.a.x, -vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(1i, -6012i), func_3(Struct_2(-57042i, 0u, vec4<f32>(var_2.x, 1000f, var_2.x, var_2.x), var_0.a.x, vec2<i32>(25059i, -1i)), 25932u, Struct_4(Struct_2(0i, arg_0.x, vec4<f32>(global0[_wgslsmith_index_u32(18374u, 8u)], -668f, global0[_wgslsmith_index_u32(var_3.a.b, 8u)], -497f), true, vec2<i32>(-8466i, -2147483647i)), Struct_3(var_3.a, 0u), var_2.x)).x), abs(~(-10010i))));
}

fn func_1() -> f32 {
    var var_0 = func_5(vec2<u32>(_wgslsmith_dot_vec3_u32(~func_2(vec2<bool>(false, true), Struct_2(15360i, 29706u, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 639f, 594f), false, vec2<i32>(4160i, -1i)), vec2<bool>(true, false)), _wgslsmith_sub_vec3_u32(u_input.a.yxx >> (u_input.a.xzx % vec3<u32>(32u)), u_input.a.wyz)), firstLeadingBit(0u) | u_input.a.x));
    var var_1 = _wgslsmith_div_u32(~40610u, var_0.b);
    let var_2 = Struct_1(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), !vec3<bool>(var_0.d, true, var_0.d), !vec3<bool>(var_0.d, var_0.d, true)), vec3<bool>(true, true, select(false, var_0.d, var_0.d))), !(!vec3<bool>(true, false, var_0.d)), vec3<bool>(var_0.d, _wgslsmith_mod_i32(16011i, 32999i) >= var_0.a, true)), abs(0u));
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(-57991i, var_0.e.x, var_0.a), -vec3<i32>(_wgslsmith_div_i32(0i, 18079i), ~1i, var_0.e.x));
    let var_4 = Struct_4(func_5(u_input.a.zw), Struct_3(Struct_1(vec3<bool>(50546u >= var_0.b, var_2.a.x || true, func_5(u_input.a.yx).d), firstTrailingBit(var_0.b) >> (u_input.a.x % 32u)), 1u), _wgslsmith_f_op_f32(-1765f * _wgslsmith_f_op_f32(-var_0.c.x)));
    return global0[_wgslsmith_index_u32(u_input.a.x, 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(63172u, 8u)] + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(u_input.a.x), 8u)] - _wgslsmith_f_op_f32(-121f * global0[_wgslsmith_index_u32(u_input.a.x, 8u)])));
    global1 = _wgslsmith_f_op_f32(func_1());
    let var_1 = 5067u;
    let var_2 = var_1;
    let var_3 = Struct_3(Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), !any(vec2<bool>(false, false))), ~abs(~u_input.a.x)), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, 254f, ~(~var_2), _wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(0i, -2147483647i)), _wgslsmith_div_i32(0i >> (var_1 % 32u), _wgslsmith_div_i32(-35921i, -2147483647i)), _wgslsmith_mult_i32(1i, ~2147483647i), _wgslsmith_add_i32(2147483647i, 0i)), -(~vec4<i32>(-2147483647i, 0i, 2147483647i, -18126i))), min(~(-_wgslsmith_sub_i32(52870i, 53385i)), -(_wgslsmith_clamp_i32(-25369i, 2147483647i, 1i) & 1i)));
}

