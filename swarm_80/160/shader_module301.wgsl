struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(-2879f, -325f, -366f, -1771f, 1000f, 170f, 148f, 592f, -686f, -615f, -1387f, 2262f, 625f, 327f, -661f, 1683f, -557f, 752f, 216f, -2824f, 377f, -946f, 1000f);

var<private> global1: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global2: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<f32> {
    var var_0 = u_input.a.xy;
    global2 = array<vec4<bool>, 15>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-682f + global0[_wgslsmith_index_u32(4294967295u, 23u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(45629u, 23u)], -1039f, false)) + _wgslsmith_f_op_f32(-660f + 1306f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(0u, 23u)])) - -525f), -1846f), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2397f * 322f))), 660f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -995f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global0[_wgslsmith_index_u32(4294967295u, 23u)]) + global0[_wgslsmith_index_u32(abs(40421u), 23u)]))));
    var_0 = vec2<i32>(-(i32(-1i) * -40670i), -2147483647i);
    let var_2 = global0[_wgslsmith_index_u32(~min(~_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 55985u, 0u, 0u), vec4<u32>(14683u, 22006u, 0u, 1u)), ~vec4<u32>(38914u, 17575u, 4294967295u, 81647u)), _wgslsmith_div_u32(~24680u, countOneBits(select(1u, 1u, true)))), 23u)];
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2090f), global0[_wgslsmith_index_u32(~(~(~min(0u, 60655u))), 23u)]);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<bool>) -> bool {
    global1 = array<vec2<bool>, 13>();
    let var_0 = Struct_2((firstLeadingBit(_wgslsmith_div_u32(1u, 5182u)) > arg_1.b.x) == (select(select(false, arg_3.x, true), arg_2.a, true) == arg_3.x), vec3<u32>(~_wgslsmith_clamp_u32(38205u, arg_2.b.x, arg_2.b.x), ~min(arg_1.b.x, arg_2.b.x), firstTrailingBit(arg_2.b.x)) << (reverseBits(~_wgslsmith_mult_vec3_u32(arg_2.b, arg_1.b)) % vec3<u32>(32u)));
    global2 = array<vec4<bool>, 15>();
    global0 = array<f32, 23>();
    global2 = array<vec4<bool>, 15>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_0.b.x | abs(arg_1.b.x), 23u)] - _wgslsmith_f_op_f32(sign(-1111f))))) < -1529f;
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = !(select(func_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1508f, 501f), vec2<f32>(1289f, -699f))), Struct_2(arg_1.a, arg_1.b), arg_1, select(vec2<bool>(false, arg_0), global1[_wgslsmith_index_u32(arg_1.b.x, 13u)], true)), false, arg_1.a) && !(select(true, false, false) & all(vec3<bool>(true, arg_1.a, false))));
    let var_1 = 48701u;
    var_0 = any(select(vec2<bool>(!arg_1.a, 1f >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 23u)])), !vec2<bool>(true, arg_0), arg_1.a));
    let var_2 = firstLeadingBit(2147483647i);
    let var_3 = _wgslsmith_div_vec2_i32(u_input.a.xx & -firstLeadingBit(~vec2<i32>(2147483647i, u_input.a.x)), (_wgslsmith_clamp_vec2_i32(u_input.a.yz ^ vec2<i32>(var_2, -83534i), vec2<i32>(9303i, 35880i), _wgslsmith_mod_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, 0i))) >> (arg_1.b.xy % vec2<u32>(32u))) & (u_input.a.yy | -(~vec2<i32>(18266i, u_input.a.x))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(454f, global0[_wgslsmith_index_u32(var_1, 23u)])), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(35984u, 23u)])))), global0[_wgslsmith_index_u32(var_1 >> (min(54809u, 61276u) % 32u), 23u)])) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, var_1), 23u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(29181u, 23u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_1, 23u)], 285f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]) - vec2<f32>(global0[_wgslsmith_index_u32(arg_1.b.x, 23u)], 176f)))), !arg_1.a)));
}

fn func_2() -> vec4<u32> {
    global1 = array<vec2<bool>, 13>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())), Struct_2(all(vec2<bool>(true, false)) | all(vec3<bool>(true, false, false)), vec3<u32>(1u, _wgslsmith_add_u32(24948u, 32391u), firstTrailingBit(80368u))), Struct_2(all(vec3<bool>(false, true, true)) || true, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 0u, 47739u), ~vec3<u32>(0u, 29605u, 0u))), !(!global1[_wgslsmith_index_u32(1u, 13u)])), Struct_2(1588f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 23u)])) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(2525u, 23u)])), _wgslsmith_mod_vec3_u32(min(vec3<u32>(6631u, 26342u, 1u), max(vec3<u32>(21833u, 0u, 28255u), vec3<u32>(27738u, 23306u, 4294967295u))), abs(reverseBits(vec3<u32>(2094u, 17259u, 86177u)))))));
    return ~(~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, 59804u, 0u, 16408u)), max(vec4<u32>(0u, 75850u, 1u, 62358u), vec4<u32>(1u, 1u, 1u, 24097u))), ~select(vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), false)));
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = ~func_2();
    let var_1 = Struct_1(arg_0.x, -(~(-vec4<i32>(u_input.a.x, u_input.a.x, -2993i, 53889i) | (vec4<i32>(u_input.a.x, 30579i, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_f_op_f32(-476f + global0[_wgslsmith_index_u32(~var_0.x, 23u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-293f, global0[_wgslsmith_index_u32(var_0.x, 23u)]))), _wgslsmith_f_op_f32(f32(-1f) * -502f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-685f, global0[_wgslsmith_index_u32(14950u, 23u)], -975f)) + vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)])) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], 680f, global0[_wgslsmith_index_u32(var_0.x, 23u)]) - vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 23u)], global0[_wgslsmith_index_u32(var_0.x, 23u)], global0[_wgslsmith_index_u32(var_0.x, 23u)])))))));
    global2 = array<vec4<bool>, 15>();
    let var_2 = Struct_3(-46614i, ~abs(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0.wx))), Struct_2(all(select(arg_0.ywy, !vec3<bool>(var_1.a, false, var_1.a), arg_0.wxy)), _wgslsmith_mult_vec3_u32(~var_0.wxz, abs(abs(vec3<u32>(var_0.x, var_0.x, var_0.x))))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -12989i, u_input.a.x, i32(-1i) * -2147483647i, u_input.a.x ^ var_1.b.x), firstTrailingBit(_wgslsmith_mult_vec4_i32(var_1.b, var_1.b))));
    global1 = array<vec2<bool>, 13>();
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(vec4<bool>(true, !select(false, true, true), false, true), select(!global2[_wgslsmith_index_u32(25490u << (0u % 32u), 15u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(31195u, 4294967295u), vec2<u32>(4294967295u, 33848u)), _wgslsmith_mod_u32(51380u, 4294967295u)), 15u)], true), true));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, select(_wgslsmith_div_u32(_wgslsmith_clamp_u32(128u, 4294967295u, var_0.b.x), var_0.b.x), 0u, all(vec3<bool>(true, false, var_0.a)))), ~reverseBits(~(~0u)));
    var var_2 = var_1;
    global2 = array<vec4<bool>, 15>();
    global2 = array<vec4<bool>, 15>();
    var var_3 = func_1(global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(max(4294967295u, var_0.b.x), 1u)) << (var_1 % 32u), 15u)]);
    let var_4 = Struct_3(reverseBits(_wgslsmith_div_i32(~u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(u_input.a.x, u_input.a.x))) | _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), u_input.a.zz), vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(1u, 24026u)), ~func_1(select(vec4<bool>(false, false, var_0.a, var_0.a), vec4<bool>(true, true, var_0.a, true), vec4<bool>(var_0.a, var_0.a, var_3.a, var_3.a))).b.xx), func_1(!(!vec4<bool>(var_3.a, var_3.a, var_0.a, var_3.a))), _wgslsmith_mult_vec4_i32(min(-abs(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), (vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x) >> (vec4<u32>(65442u, var_3.b.x, var_1, var_1) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 64050u, 4294967295u), vec4<u32>(var_0.b.x, 0u, 1u, 0u)) % vec4<u32>(32u))), -reverseBits(vec4<i32>(14464i, -2147483647i, -1i, u_input.a.x) >> (vec4<u32>(var_3.b.x, var_3.b.x, var_1, 99906u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(func_2().yz), var_4.a);
}

