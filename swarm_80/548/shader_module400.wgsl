struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec3<i32>(-1i, 28890i, -13055i)), vec4<u32>(37293u, 53466u, 1u, 88602u), Struct_1(vec4<u32>(1u, 29292u, 34346u, 25566u), vec3<i32>(12206i, i32(-2147483648), -32319i)), vec3<i32>(25074i, -1i, -33727i)), Struct_2(Struct_1(vec4<u32>(7987u, 1u, 0u, 74928u), vec3<i32>(0i, 23851i, -13115i)), vec4<u32>(32277u, 70029u, 1u, 1u), Struct_1(vec4<u32>(4294967295u, 74837u, 24284u, 4294967295u), vec3<i32>(0i, i32(-2147483648), i32(-2147483648))), vec3<i32>(21662i, 0i, -8901i)), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec3<i32>(-1i, i32(-2147483648), 12090i)), vec4<u32>(1u, 0u, 0u, 15570u), Struct_1(vec4<u32>(2724u, 4294967295u, 0u, 0u), vec3<i32>(0i, 55511i, 34871i)), vec3<i32>(20092i, -1i, -1i)), Struct_2(Struct_1(vec4<u32>(9325u, 0u, 1u, 26099u), vec3<i32>(i32(-2147483648), 49820i, 9359i)), vec4<u32>(29530u, 5576u, 0u, 58895u), Struct_1(vec4<u32>(24517u, 0u, 51654u, 88841u), vec3<i32>(-1i, 21747i, 2147483647i)), vec3<i32>(19158i, i32(-2147483648), -36279i)));

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, arg_0.b, -1797f) - vec4<f32>(1076f, 246f, arg_0.b, -438f)), vec4<f32>(arg_0.b, arg_0.b, -262f, -1000f), !vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1366f + 391f) - 853f), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(trunc(-949f)))), arg_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1371f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.b, arg_0.b, arg_0.b, 230f))), vec4<f32>(arg_0.b, arg_0.b, 1337f, arg_0.b)))));
    var var_1 = Struct_1(~vec4<u32>(select(0u, 4294967295u, arg_0.a.x), ~9257u, 1u, select(~19946u, 37438u >> (0u % 32u), arg_0.a.x)), vec3<i32>(firstTrailingBit(-78087i), -u_input.b.x, u_input.b.x));
    return _wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, 1u, var_1.a.x), ~vec4<u32>(var_1.a.x, 4294967295u, 4294967295u, 0u)), ~var_1.a.x >> (var_1.a.x % 32u), ~(var_1.a.x >> (17167u % 32u)), var_1.a.x), ~var_1.a << (var_1.a % vec4<u32>(32u)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec2<bool>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec4<u32>(1u, 1u, 1u, 1u) ^ func_3(Struct_3(vec3<bool>(true, arg_2.x, true), 442f)), -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, arg_0, arg_0), firstTrailingBit(vec3<i32>(52331i, u_input.a.x, u_input.b.x)))), ~select(vec4<u32>(4294967295u, 1u, 24228u, 27508u), vec4<u32>(1u, 1u, 1u, 1u), any(arg_2)) ^ ~vec4<u32>(6874u, 1u, _wgslsmith_clamp_u32(1u, 14282u, 37287u), ~32590u), Struct_1(vec4<u32>(1u, 1u, 1u, 1u), -(-vec3<i32>(1i, 1i, arg_0) ^ vec3<i32>(u_input.b.x, -1i, 2147483647i))), vec3<i32>(-1i) * -vec3<i32>(2147483647i, arg_0, -arg_0));
    let var_1 = Struct_4(Struct_1(abs(vec4<u32>(44027u, var_0.a.a.x, var_0.a.a.x >> (var_0.b.x % 32u), 0u)), _wgslsmith_clamp_vec3_i32(-(vec3<i32>(arg_0, var_0.c.b.x, 47066i) & var_0.c.b), -var_0.d & _wgslsmith_mod_vec3_i32(var_0.d, vec3<i32>(-1i, arg_0, arg_0)), -var_0.c.b ^ abs(var_0.d))), Struct_3(vec3<bool>(select(false | arg_2.x, false || arg_2.x, arg_2.x), arg_2.x, 6565i < select(u_input.b.x, arg_0, arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-687f - 382f) - _wgslsmith_f_op_f32(f32(-1f) * -857f))), vec4<i32>(min(-47233i, 1i), firstTrailingBit(_wgslsmith_div_i32(abs(u_input.b.x), u_input.a.x)), ~27339i, arg_0));
    global1 = 1i;
    let var_2 = select(var_1.b.a, vec3<bool>(!all(var_1.b.a), var_1.b.a.x, any(!select(vec4<bool>(true, arg_2.x, true, arg_2.x), vec4<bool>(var_1.b.a.x, false, true, false), vec4<bool>(false, false, arg_2.x, var_1.b.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b)) > -992f);
    global0 = array<Struct_2, 4>();
    return Struct_1(abs(func_3(var_1.b)), ~abs(-var_1.a.b << (vec3<u32>(1u, var_0.b.x, var_0.b.x) % vec3<u32>(32u))));
}

fn func_1() -> vec4<i32> {
    let var_0 = ~(~select(vec2<u32>(35974u >> (1u % 32u), ~1u), firstLeadingBit(vec2<u32>(52342u, 4294967295u)), true));
    let var_1 = func_2(select(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, -28815i), vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x)), _wgslsmith_div_i32(~2147483647i, u_input.a.x), u_input.a.x), u_input.b.x, any(vec4<bool>(true, true, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1122f)))) + -1042f), !select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), 1f);
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1341f, 902f)) - _wgslsmith_div_f32(-1343f, -404f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1139f, -1496f, true))))));
    var var_3 = global0[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(min(func_2(1i, var_2.x, select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), _wgslsmith_f_op_f32(-var_2.x)).a.x, min(_wgslsmith_div_u32(var_0.x, var_1.a.x), _wgslsmith_sub_u32(var_1.a.x, 1776u))), 4294967295u, 26826u), ~(~var_0.x) >> (abs(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, var_0.x, 1u), vec4<u32>(0u, 0u, var_1.a.x, 1u), var_1.a), var_1.a)) % 32u)), 4u)];
    let var_4 = _wgslsmith_add_vec4_u32(var_1.a, func_2(~(-1i), -1229f, !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), _wgslsmith_div_f32(-444f, -579f)).a) | vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x, 1u), 1u), ~abs(~var_0.x), ~(~6444u) >> (~_wgslsmith_clamp_u32(var_0.x, 1u, 25968u) % 32u), 4294967295u);
    return -max(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.x, u_input.a.x, 28489i, 0i), vec4<i32>(u_input.b.x, 0i, u_input.a.x, 0i)), countOneBits(vec4<i32>(var_3.c.b.x, u_input.a.x, 2147483647i, var_3.c.b.x))), max(vec4<i32>(0i, 1i, 1i, var_3.a.b.x), firstTrailingBit(vec4<i32>(-1i, u_input.b.x, 10003i, var_3.a.b.x)))), vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, ~48709i), var_3.a.b.x, (2147483647i << (var_4.x % 32u)) ^ ~1i, var_3.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(1u, 1u);
    var_0 = ~vec2<u32>(6478u, ~(~76569u));
    var_0 = _wgslsmith_mod_vec2_u32(max(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(20400u, var_0.x)) << (abs(vec2<u32>(12871u, var_0.x)) % vec2<u32>(32u))), ~vec2<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 56824u, 1u), vec3<u32>(0u, 35489u, 0u)))), firstLeadingBit(~_wgslsmith_div_vec2_u32(~vec2<u32>(73491u, 1u), vec2<u32>(var_0.x, var_0.x))));
    let var_1 = _wgslsmith_mod_i32(firstTrailingBit(-12707i), 1i | (_wgslsmith_div_i32(u_input.a.x, -1i | u_input.b.x) & ~_wgslsmith_mod_i32(7252i, 2147483647i)));
    var var_2 = (firstLeadingBit(vec4<i32>(var_1, u_input.a.x, ~u_input.a.x, -9642i >> (var_0.x % 32u))) ^ firstTrailingBit(vec4<i32>(var_1, u_input.b.x, -u_input.a.x, select(var_1, var_1, false)))) ^ (_wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, 1i, u_input.a.x), vec4<i32>(var_1, 2147483647i, -2147483647i, u_input.a.x)), max(vec4<i32>(-23272i, -2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, 2147483647i, -24714i, -1i)) ^ func_1()) ^ _wgslsmith_add_vec4_i32(abs(~vec4<i32>(-2147483647i, 18130i, u_input.b.x, u_input.b.x)), vec4<i32>(-22400i, abs(var_1), 1i, u_input.a.x)));
    let var_3 = -2147483647i;
    var var_4 = vec4<i32>(abs(2480i) | ((~(-2147483647i) ^ (var_3 >> (var_0.x % 32u))) ^ _wgslsmith_div_i32(u_input.a.x ^ -8932i, 1i)), -14638i, i32(-1i) * -9787i, u_input.a.x);
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1033f + -2084f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1062f + 1243f), _wgslsmith_f_op_f32(440f * -1315f), false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 941f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_5, _wgslsmith_f_op_f32(ceil(-495f)), var_5))))), ~(-_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(var_1, var_1)), var_2.ww, reverseBits(u_input.b))), vec2<f32>(var_5, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(289f * 1010f)))), var_5, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-667f)), _wgslsmith_div_f32(-905f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1083f))), false)));
}

