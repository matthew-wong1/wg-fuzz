struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(true, Struct_1(false, vec3<bool>(false, false, false)), false, 191f, 63063u), Struct_3(true, Struct_1(true, vec3<bool>(false, true, true)), false, -1118f, 4294967295u), Struct_3(true, Struct_1(true, vec3<bool>(true, false, true)), false, -273f, 612u), Struct_3(false, Struct_1(false, vec3<bool>(false, true, false)), true, 477f, 4294967295u), Struct_3(true, Struct_1(false, vec3<bool>(false, true, false)), false, -963f, 1u), Struct_3(false, Struct_1(true, vec3<bool>(false, true, false)), true, -160f, 4294967295u), Struct_3(false, Struct_1(true, vec3<bool>(false, false, true)), true, -329f, 18634u), Struct_3(false, Struct_1(true, vec3<bool>(false, true, false)), true, 375f, 23496u), Struct_3(false, Struct_1(true, vec3<bool>(false, false, false)), true, 696f, 4294967295u), Struct_3(false, Struct_1(false, vec3<bool>(false, false, false)), true, -1188f, 0u), Struct_3(false, Struct_1(false, vec3<bool>(true, false, false)), false, 1704f, 4294967295u), Struct_3(true, Struct_1(false, vec3<bool>(true, true, true)), true, 493f, 4294967295u), Struct_3(true, Struct_1(true, vec3<bool>(false, false, true)), true, 1505f, 4294967295u), Struct_3(true, Struct_1(true, vec3<bool>(false, false, false)), true, -212f, 4294967295u), Struct_3(true, Struct_1(true, vec3<bool>(true, true, true)), false, -1564f, 1u), Struct_3(true, Struct_1(true, vec3<bool>(false, false, true)), false, -1517f, 8289u), Struct_3(false, Struct_1(true, vec3<bool>(true, false, false)), true, 706f, 0u), Struct_3(true, Struct_1(true, vec3<bool>(true, true, true)), true, -405f, 4294967295u), Struct_3(false, Struct_1(true, vec3<bool>(true, true, true)), false, 1390f, 10016u), Struct_3(true, Struct_1(true, vec3<bool>(false, false, true)), true, -1683f, 41623u), Struct_3(true, Struct_1(true, vec3<bool>(false, false, false)), true, -1000f, 1u), Struct_3(false, Struct_1(true, vec3<bool>(true, false, true)), true, -791f, 4294967295u), Struct_3(false, Struct_1(false, vec3<bool>(true, false, false)), false, -727f, 88447u), Struct_3(true, Struct_1(true, vec3<bool>(true, true, false)), false, 2389f, 1u), Struct_3(true, Struct_1(true, vec3<bool>(false, true, true)), true, 740f, 0u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = arg_1.b;
    var var_1 = countOneBits(vec3<u32>(max(0u, _wgslsmith_div_u32(~u_input.d, 4294967295u)), _wgslsmith_mult_u32(1u, 1u), u_input.d));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.d)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(296f)) + _wgslsmith_f_op_f32(-340f * 274f))) - 255f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, var_0.d))))), var_0.d);
    var_1 = vec3<u32>(var_1.x, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a.d, 0u, var_0.e, arg_1.b.e), vec4<u32>(arg_1.b.e, var_1.x, 4294967295u, 38898u) ^ vec4<u32>(u_input.d, 3798u, u_input.d, var_0.e)), countOneBits(var_1.x)), arg_1.a.b.x << (_wgslsmith_mod_u32(~0u & ~var_1.x, _wgslsmith_clamp_u32(u_input.d, ~56430u, 26524u)) % 32u));
    var_1 = max(~vec3<u32>(~u_input.d, _wgslsmith_clamp_u32(~110528u, var_0.e ^ 0u, ~1u), ~firstLeadingBit(4254u)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~select(vec3<u32>(60962u, 30533u, u_input.d), vec3<u32>(59106u, 58063u, 4294967295u), false), vec3<u32>(firstTrailingBit(var_1.x), 1u, var_1.x), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(var_1.x, arg_1.b.e, 1u)), vec3<u32>(1u, 1u, 1u))), ~(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, 39997u, 4294967295u), vec3<u32>(37072u, 106681u, arg_1.b.e)) << (~vec3<u32>(0u, arg_1.a.d, 38839u) % vec3<u32>(32u)))));
    return _wgslsmith_mod_vec2_u32(abs(var_1.zy) | vec2<u32>(var_1.x, 0u), ~arg_1.a.b);
}

fn func_2() -> Struct_3 {
    global0 = array<bool, 30>();
    global1 = array<Struct_3, 25>();
    global1 = array<Struct_3, 25>();
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-2467f * 842f)))), func_3(max(vec4<i32>(2147483647i, u_input.c.x, -2895i, 5027i), vec4<i32>(-20384i, -1i, 1i, u_input.c.x)), Struct_4(Struct_2(-692f, vec2<u32>(u_input.d, u_input.d), u_input.a.yz, u_input.d, global0[_wgslsmith_index_u32(u_input.d, 30u)]), global1[_wgslsmith_index_u32(1u, 25u)], vec3<f32>(1050f, 659f, 830f)), Struct_1(global0[_wgslsmith_index_u32(u_input.d, 30u)], vec3<bool>(true, false, false))) << (countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(38751u, u_input.d), vec2<u32>(u_input.d, 4294967295u))) % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -925i, u_input.a.x), u_input.d, !(!global0[_wgslsmith_index_u32(min(u_input.d, u_input.d), 30u)])), global1[_wgslsmith_index_u32(u_input.d & 0u, 25u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * 616f), _wgslsmith_f_op_f32(-540f + -142f), 508f) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + 1523f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-767f - 1665f) * _wgslsmith_f_op_f32(1695f - -240f)), 407f)));
    let var_1 = !select(var_0.b.b.b.xx, vec2<bool>(select(true, !global0[_wgslsmith_index_u32(u_input.d, 30u)], true), !(u_input.b >= var_0.a.c.x)), all(!vec2<bool>(false, var_0.a.e)) & global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 4294967295u), var_0.a.b.x), 30u)]);
    return var_0.b;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_5, arg_3: Struct_1) -> f32 {
    let var_0 = func_2();
    let var_1 = ~_wgslsmith_mult_i32(-(_wgslsmith_add_i32(1i, u_input.a.x) & arg_1), firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, arg_1, -12398i), u_input.c.x)));
    var var_2 = var_0.b;
    let var_3 = abs(_wgslsmith_mod_vec4_i32(-select(vec4<i32>(8248i, 32474i, arg_1, arg_1), vec4<i32>(-23753i, 2659i, arg_0.c.x, arg_1) << (vec4<u32>(u_input.d, 39619u, u_input.d, 1u) % vec4<u32>(32u)), true), _wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -36359i, var_1, -42706i), vec4<i32>(-23637i, var_1, 25881i, -33029i)), vec4<i32>(_wgslsmith_sub_i32(arg_1, arg_0.c.x), u_input.b, arg_0.c.x, ~(-33179i)))));
    global1 = array<Struct_3, 25>();
    return arg_0.a;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: vec2<f32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1163f);
    var var_1 = global1[_wgslsmith_index_u32(u_input.d, 25u)];
    var_1 = global1[_wgslsmith_index_u32(~u_input.d, 25u)];
    var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(var_1.e), 25u)];
    var var_2 = func_2();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<f32>(663f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(Struct_2(-493f, vec2<u32>(u_input.d, u_input.d), vec2<i32>(-2147483647i, u_input.c.x), 59179u, global0[_wgslsmith_index_u32(0u, 30u)]), -22424i, Struct_5(-1316f, vec2<f32>(1684f, -229f), global0[_wgslsmith_index_u32(u_input.d, 30u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.d, 30u)], vec3<bool>(true, global0[_wgslsmith_index_u32(8214u, 30u)], false)))), -1061f)) + -585f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1422f * -270f))), _wgslsmith_f_op_f32(f32(-1f) * -552f)), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-367f, -230f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-201f, 855f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1866f, -2106f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-303f, -1000f)))), true), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(2112f, 332f), _wgslsmith_f_op_f32(485f - -1021f)) + vec2<f32>(-1186f, _wgslsmith_f_op_f32(744f + -2767f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(396f, -989f), vec2<f32>(1025f, 1885f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-538f, 836f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-320f, -224f), _wgslsmith_f_op_vec2_f32(vec2<f32>(610f, 1000f) * vec2<f32>(447f, -1000f)))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(735f, -568f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1351f), vec2<f32>(-1103f, 258f), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 30u)]))))))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, var_0.a))) - var_0.b.x) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, -1784f) + 919f)))), ~select(vec2<u32>(0u, 0u), vec2<u32>(u_input.d, 4294967295u) >> (vec2<u32>(u_input.d, 20594u) % vec2<u32>(32u)), !var_0.c) & _wgslsmith_div_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.d, u_input.d)), min(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(23702u, u_input.d), vec2<u32>(0u, u_input.d)))), ~u_input.a.xz, u_input.d, func_2().c);
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1746f, -277f, _wgslsmith_f_op_f32(select(var_0.b.x, -1075f, false)), _wgslsmith_f_op_f32(abs(-2118f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(round(var_0.a)), 217f, 158f))), Struct_5(var_0.b.x, var_0.b, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-582f, var_0.b.x), _wgslsmith_f_op_vec2_f32(var_0.b - var_0.b)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b.x, 1815f)))) - _wgslsmith_div_vec2_f32(vec2<f32>(-1047f, _wgslsmith_f_op_f32(-var_1.a)), vec2<f32>(var_1.a, var_0.b.x))), var_0.b);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-882f, var_0.a)))), select(vec2<u32>(var_1.b.x >> (u_input.d % 32u), var_1.b.x), var_1.b, u_input.d < (~1u ^ var_1.b.x)), var_1.c, (var_1.b.x << (26290u % 32u)) | _wgslsmith_div_u32(_wgslsmith_add_u32(26405u, ~u_input.d), ~func_2().e), false);
    var var_4 = var_3;
    var_2 = Struct_5(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, var_4.a)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))))), var_3.c.x >= ~(~_wgslsmith_dot_vec2_i32(var_4.c, var_3.c)));
    var_4 = Struct_2(_wgslsmith_f_op_f32(min(-484f, _wgslsmith_f_op_f32(var_4.a + _wgslsmith_f_op_f32(1229f - _wgslsmith_f_op_f32(-var_0.b.x))))), vec2<u32>(var_1.b.x, abs(~2412u)), vec2<i32>(~(-_wgslsmith_mod_i32(0i, var_4.c.x)), -(_wgslsmith_mod_i32(u_input.a.x, u_input.c.x) ^ var_3.c.x)), ~0u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~var_3.b, vec2<u32>(~u_input.d, _wgslsmith_div_u32(var_4.d, 32888u) & 0u)), 30u)]);
    var var_5 = func_4(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1042f, _wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-434f, var_1.a, var_1.a, var_2.a))), func_4(vec4<f32>(-1227f, 999f, var_4.a, var_4.a), Struct_5(var_2.a, vec2<f32>(1019f, -1689f), var_4.e), vec2<f32>(-618f, -366f), vec2<f32>(var_4.a, 697f)), vec2<f32>(var_0.b.x, 1183f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1076f, 842f), var_2.b))).b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-538f, var_2.a)))), _wgslsmith_f_op_f32(-1001f - _wgslsmith_f_op_f32(floor(-2236f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(756f, var_1.b, vec2<i32>(u_input.c.x, u_input.c.x), var_4.d, var_4.e), -var_3.c.x, func_4(vec4<f32>(-319f, var_0.a, -1000f, var_4.a), Struct_5(var_0.b.x, var_2.b, var_2.c), var_2.b, vec2<f32>(-891f, var_3.a)), func_2().b)) + -329f)), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.a)), -279f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(var_2.b, var_0.b)))) - vec2<f32>(_wgslsmith_f_op_f32(select(997f, var_2.b.x, global0[_wgslsmith_index_u32(var_1.d, 30u)])), _wgslsmith_f_op_f32(f32(-1f) * -485f))), all(vec2<bool>(global0[_wgslsmith_index_u32(var_3.b.x, 30u)], var_2.c))), _wgslsmith_f_op_vec2_f32(var_0.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 788f)) + var_0.b))), var_0.b).a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

