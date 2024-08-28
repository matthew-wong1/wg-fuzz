struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false));

var<private> global2: array<f32, 21> = array<f32, 21>(-1000f, 655f, -210f, -1574f, -655f, 738f, 1000f, 861f, 534f, 1342f, 595f, -1601f, 1105f, -186f, -1000f, -746f, 2018f, 1089f, -1585f, 845f, 778f);

var<private> global3: Struct_1 = Struct_1(vec4<u32>(1u, 4294967295u, 0u, 27222u), vec4<i32>(0i, 2147483647i, 2147483647i, 0i), 2147483647i, vec3<f32>(1000f, -368f, 781f), 482f);

var<private> global4: array<u32, 12> = array<u32, 12>(1u, 43574u, 85349u, 4294967295u, 4294967295u, 4294967295u, 6046u, 18097u, 48853u, 4294967295u, 1u, 1u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = countOneBits((1u | (~47457u << ((global3.a.x << (99561u % 32u)) % 32u))) >> (1u % 32u));
    let var_1 = Struct_1(firstTrailingBit(abs(vec4<u32>(~4294967295u, ~5092u, 1u, var_0))), min(global3.b, global3.b), 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, global3.d.x, global2[_wgslsmith_index_u32(u_input.c.x, 21u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 14u)]) + _wgslsmith_f_op_f32(floor(688f))) + _wgslsmith_f_op_f32(-global3.e))));
    let var_2 = _wgslsmith_div_vec4_u32(min(_wgslsmith_div_vec4_u32(~global3.a, abs(vec4<u32>(global3.a.x, u_input.c.x, var_0, 10981u))) & ~vec4<u32>(u_input.c.x, var_1.a.x, 58226u, global4[_wgslsmith_index_u32(u_input.c.x, 12u)]), ~firstLeadingBit(vec4<u32>(4294967295u, var_1.a.x, u_input.c.x, var_0) | vec4<u32>(global4[_wgslsmith_index_u32(23019u, 12u)], u_input.c.x, var_0, var_1.a.x))), abs(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.x, 18411u, 4294967295u, global3.a.x) << (var_1.a % vec4<u32>(32u)), vec4<u32>(15686u, 17147u, global4[_wgslsmith_index_u32(var_0, 12u)], 0u), ~global3.a))));
    var var_3 = -2147483647i;
    var var_4 = !vec3<bool>(any(vec2<bool>(false, true)), select(any(vec3<bool>(true, true, true)), any(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 12u)], 14u)]) && true, true), true);
    return 37601u;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: f32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(vec4<u32>(firstLeadingBit(_wgslsmith_mult_u32(global3.a.x, 75576u)), ~1u, func_3(), ~(global3.a.x >> (global4[_wgslsmith_index_u32(0u, 12u)] % 32u))) | ~(~(global3.a >> (vec4<u32>(u_input.c.x, u_input.c.x, global3.a.x, 48336u) % vec4<u32>(32u)))), select(reverseBits(global3.b), vec4<i32>(~global3.c, 1i, -_wgslsmith_add_i32(-30477i, -45585i), _wgslsmith_sub_i32(-11058i, u_input.b)), any(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), arg_1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.d), global3.d)) * _wgslsmith_f_op_vec3_f32(select(global3.d, vec3<f32>(-178f, arg_0.x, _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(global3.a.x, 21u)], arg_2))), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))))));
    let var_1 = global3.e;
    var var_2 = var_0.b.x;
    let var_3 = select(select(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(min(-2147483647i, 2147483647i) < _wgslsmith_dot_vec3_i32(arg_1.zzy, global3.b.zzz), true), false && any(vec2<bool>(true, false))), select(vec2<bool>(true, any(vec2<bool>(false, false))), vec2<bool>(true, true), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), !select(vec2<bool>(true, true), vec2<bool>(false, false), false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), false)));
    global1 = array<vec4<bool>, 14>();
    return var_0;
}

fn func_1() -> Struct_1 {
    global1 = array<vec4<bool>, 14>();
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(global3.d.xx + vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 21u)] * 346f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 12u)], 21u)] * global0[_wgslsmith_index_u32(global3.a.x, 14u)])))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-2698i, u_input.b << (0u % 32u), _wgslsmith_mult_i32(global3.b.x, u_input.b), -u_input.a), vec4<i32>(~abs(27391i), u_input.b, -firstLeadingBit(u_input.b), abs(abs(u_input.b))), -_wgslsmith_div_vec4_i32(vec4<i32>(-18116i, -1i, u_input.a, u_input.b), _wgslsmith_mult_vec4_i32(global3.b, global3.b))), _wgslsmith_f_op_f32(-425f - _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 42796u, u_input.c.x, global3.a.x), global3.a), 21u)], global3.e, true))), ~(~(~1u)));
    var var_1 = Struct_1(func_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-637f, -1338f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-858f, -423f) * global3.d.zz)))), vec4<i32>(2147483647i, -abs(0i), global3.c, -_wgslsmith_div_i32(u_input.b, -74645i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.d.x))))), 40487u).a, vec4<i32>(2147483647i, ~4941i, abs(var_0.c), var_0.b.x), u_input.a, var_0.d, _wgslsmith_f_op_f32(-global3.e));
    global4 = array<u32, 12>();
    var var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(countOneBits(abs(var_0.b.xyx))), var_0.b.xyz), global3.b.x);
    return func_2(global3.d.xy, ~max(vec4<i32>(abs(2775i), -1i, ~var_1.b.x, select(u_input.b, 2147483647i, true)), _wgslsmith_clamp_vec4_i32(~var_1.b, vec4<i32>(var_1.b.x, var_2.x, var_2.x, -1i), vec4<i32>(var_0.c, var_2.x, 9933i, var_1.b.x))), 688f, (~max(0u, global4[_wgslsmith_index_u32(66085u, 12u)]) >> (_wgslsmith_sub_u32(~1u, ~var_0.a.x) % 32u)) ^ _wgslsmith_mult_u32(var_0.a.x, _wgslsmith_div_u32(74299u, ~var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global3 = func_1();
    var var_1 = var_0.b.yw;
    let x = u_input.a;
    s_output = StorageBuffer(global3.b, (max(_wgslsmith_add_u32(var_0.a.x, global3.a.x), abs(var_0.a.x)) >> (var_0.a.x % 32u)) & 18659u, var_0.b.xxz);
}

