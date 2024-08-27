struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec2<i32>, 13>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(5296i, 1i, 1i, i32(-2147483648)));

var<private> global3: array<i32, 5> = array<i32, 5>(-3240i, 1i, 9388i, -31505i, 0i);

var<private> global4: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(0u, vec3<i32>(2147483647i, 24931i, -1i), vec2<f32>(2009f, -1000f)), Struct_4(4294967295u, vec3<i32>(i32(-2147483648), 1i, -9738i), vec2<f32>(1458f, 367f)), Struct_4(4180u, vec3<i32>(65669i, -29421i, -22539i), vec2<f32>(1979f, 2840f)), Struct_4(27506u, vec3<i32>(38751i, -68873i, -1i), vec2<f32>(-188f, -1039f)), Struct_4(10804u, vec3<i32>(2147483647i, 0i, -31642i), vec2<f32>(248f, -246f)), Struct_4(13066u, vec3<i32>(67178i, i32(-2147483648), -63702i), vec2<f32>(748f, -660f)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1821f)) * _wgslsmith_f_op_f32(f32(-1f) * -451f));
    var var_2 = _wgslsmith_mult_vec4_i32(~(~vec4<i32>(max(global3[_wgslsmith_index_u32(5595u, 5u)], 8423i), 1i, 2147483647i, u_input.a)), _wgslsmith_mult_vec4_i32(-abs(vec4<i32>(global2.a.x, global3[_wgslsmith_index_u32(0u, 5u)], 2147483647i, 71717i)), -countOneBits(vec4<i32>(-1i, global3[_wgslsmith_index_u32(u_input.b, 5u)], arg_1.a.a.x, u_input.a) >> (vec4<u32>(1u, 0u, global0.x, u_input.b) % vec4<u32>(32u)))));
    var_0 = arg_1.b.x;
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 38342u, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(global0.x, u_input.b, 18348u), vec3<u32>(arg_0.a.x, 16969u, arg_0.a.x))), abs(~(~global0.x))), ~(~12086u)), 6u)];
    return arg_1.b.x;
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<i32>(-global3[_wgslsmith_index_u32(4294967295u & u_input.b, 5u)], _wgslsmith_sub_i32(~max(~global2.a.x, -17105i << (global0.x % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x << (global0.x % 32u), i32(-1i) * -2147483647i, firstTrailingBit(global3[_wgslsmith_index_u32(global0.x, 5u)]), 1i), select(_wgslsmith_mod_vec4_i32(global2.a, vec4<i32>(u_input.a, global3[_wgslsmith_index_u32(u_input.b, 5u)], -15290i, -1i)), vec4<i32>(-35595i, global2.a.x, -43413i, -5100i), func_3(Struct_3(vec2<u32>(33771u, 37398u)), Struct_2(Struct_1(vec4<i32>(global2.a.x, 26255i, 0i, -2147483647i)), vec2<bool>(true, true)))))));
    let var_1 = Struct_5(Struct_4(abs(4294967295u), vec3<i32>(1i, -54345i, -_wgslsmith_mult_i32(-155i, -31656i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-911f, 253f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(724f, -890f))), true))));
    global3 = array<i32, 5>();
    global2 = Struct_1(vec4<i32>(1i, 1i, _wgslsmith_add_i32(~1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(global0.x, 5u)], global2.a.x, global2.a.x, 1i), vec4<i32>(global2.a.x, 1i, var_1.a.b.x, 1i)), global3[_wgslsmith_index_u32(max(u_input.b, 0u), 5u)])), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(2147483647i, -2147483647i)), vec2<i32>(-1i, 25830i)), 16469i)));
    let var_2 = global2.a.wz;
    return Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(1i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(904i, 7180i), vec2<i32>(global3[_wgslsmith_index_u32(14908u, 5u)], global3[_wgslsmith_index_u32(14324u, 5u)])), var_2.x, 4330i, 0i), -_wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_2.x, global2.a.x, var_2.x, var_0.x), vec4<i32>(2147483647i, global2.a.x, -23339i, var_1.a.b.x), vec4<bool>(false, false, true, true)), vec4<i32>(-11577i, global2.a.x, 1i, -77336i), abs(vec4<i32>(-1i, -2147483647i, -6417i, global3[_wgslsmith_index_u32(u_input.b, 5u)])))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = !(1000f == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(640f - arg_1.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -657f), _wgslsmith_f_op_f32(trunc(arg_1.x))))) + _wgslsmith_f_op_f32(-arg_1.x)) + 1f);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1, arg_1) - _wgslsmith_div_vec4_f32(vec4<f32>(359f, 1079f, var_2, arg_1.x), vec4<f32>(-1689f, var_1, var_1, 474f))), arg_1))));
    var var_4 = -30151i;
    return Struct_1(vec4<i32>(global3[_wgslsmith_index_u32(max(~30023u, 57321u), 5u)], _wgslsmith_mod_i32(~countOneBits(u_input.a), func_2().a.x), countOneBits(arg_2.a.a.x), select(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(24934u, 5u)], arg_0.a.a.x), vec3<i32>(global3[_wgslsmith_index_u32(global0.x, 5u)], -12537i, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(23810i, arg_0.a.a.x, -12275i), global2.a.zxx)), func_2().a.x, true)));
}

fn func_1(arg_0: Struct_3) -> u32 {
    global2 = func_4(Struct_2(func_2(), !vec2<bool>(true, any(vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(675f, 1211f, -2124f, -347f) - vec4<f32>(-1737f, 690f, 565f, 1511f)), vec4<f32>(-835f, -555f, 931f, 1669f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-212f, 178f, 878f, 1040f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(146f, -690f, 1029f, 1299f)))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(133f, -1881f)) * -572f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -400f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -213f)) * -1384f), _wgslsmith_f_op_f32(sign(559f)))), Struct_2(Struct_1(global2.a), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, false)), func_3(Struct_3(arg_0.a), Struct_2(Struct_1(global2.a), vec2<bool>(true, true))), global2.a.x == u_input.a, false), true), vec4<bool>(true, true, true, true), true));
    var var_0 = ~arg_0.a.x;
    var_0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(~arg_0.a.x, abs(u_input.b)), global0.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -445f) * 1f))))) + 231f);
    let var_2 = 0i;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, global0.x), func_1(Struct_3(vec2<u32>(global0.x, 127595u)))), 1u) << (select(_wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(4788u, 0u), vec2<u32>(33281u, global0.x)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, u_input.b), vec2<u32>(global0.x, global0.x))), ~_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(15120u, 39250u)), vec2<u32>(35085u, global0.x)), true) % vec2<u32>(32u));
    global2 = func_4(Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(~vec4<i32>(-17638i, u_input.a, -2147483647i, global3[_wgslsmith_index_u32(54262u, 5u)]), global2.a)), vec2<bool>(true, select(true, func_3(Struct_3(vec2<u32>(global0.x, 8787u)), Struct_2(Struct_1(global2.a), vec2<bool>(true, false))), select(false, true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), -1570f, _wgslsmith_f_op_f32(1000f - -908f), _wgslsmith_f_op_f32(1143f * -305f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1000f, 153f, false)), -400f, 1044f, _wgslsmith_f_op_f32(floor(102f))))), Struct_2(Struct_1(countOneBits(-global2.a)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true), func_1(Struct_3(vec2<u32>(global0.x, global0.x))) <= global0.x)), !vec4<bool>(true, false, func_3(Struct_3(vec2<u32>(5938u, 101427u)), Struct_2(Struct_1(vec4<i32>(global2.a.x, u_input.a, -2147483647i, -1i)), vec2<bool>(false, true))) || true, true));
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-671f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1376f + 306f))))));
    let var_1 = var_0;
    var var_2 = Struct_5(Struct_4(u_input.b, -firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, global2.a.x, 10507i), vec3<i32>(-17360i, global3[_wgslsmith_index_u32(global0.x, 5u)], u_input.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(653f, var_0)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2744f, -769f))))));
    var_2 = Struct_5(Struct_4(0u, _wgslsmith_mult_vec3_i32(~(vec3<i32>(global3[_wgslsmith_index_u32(28624u, 5u)], global3[_wgslsmith_index_u32(0u, 5u)], global2.a.x) ^ global2.a.xwx), global2.a.yzy), _wgslsmith_f_op_vec2_f32(var_2.a.c - _wgslsmith_f_op_vec2_f32(sign(var_2.a.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(max(firstTrailingBit(vec4<u32>(7096u, 0u, 132523u, 1u) << (vec4<u32>(0u, global0.x, 14836u, global0.x) % vec4<u32>(32u))), select(select(vec4<u32>(var_2.a.a, 0u, 4294967295u, u_input.b), vec4<u32>(global0.x, u_input.b, 1u, 8777u), false), ~vec4<u32>(0u, 1u, u_input.b, u_input.b), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)))), vec4<u32>(global0.x, u_input.b, min(_wgslsmith_add_u32(60261u, global0.x), global0.x), 1u), vec4<bool>(false, true, false, false)), vec2<f32>(885f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(var_1)))));
}

