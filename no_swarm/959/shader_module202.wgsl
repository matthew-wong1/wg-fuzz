struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<u32, 3> = array<u32, 3>(52957u, 19379u, 59366u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: Struct_5) -> vec4<u32> {
    var var_0 = Struct_3(Struct_2(vec3<f32>(1576f, global0.c.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.x + global0.b.x))))), -1i, -767f, -firstTrailingBit(select(-vec4<i32>(arg_1.a, -41097i, u_input.b.x, 2147483647i), -vec4<i32>(-378i, u_input.b.x, arg_1.a, u_input.b.x), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)))));
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2678f, global0.a.x, -157f)), global0.b.wyy, u_input.d.x > arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(exp2(global0.c.a.x)), var_0.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -430f))))), Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x)))))));
    var var_1 = vec2<i32>(0i, -30961i) | vec2<i32>(abs(firstTrailingBit(1i >> (arg_0 % 32u))), -2147483647i);
    var_0 = Struct_3(Struct_2(vec3<f32>(-458f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1281f + -578f), 1761f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1747f) * _wgslsmith_f_op_f32(-global0.a.x)))), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-763f)))))), select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.x, 17171i, u_input.b.x, -27694i), vec4<i32>(var_0.d.x, -14941i, 2147483647i, -27755i)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, var_1.x, 52997i), var_0.d.wwx) ^ ~(-23603i), _wgslsmith_mod_i32(~arg_1.a, -var_1.x), -6046i), -(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -1i, arg_1.a, arg_1.a), vec4<i32>(u_input.b.x, var_0.d.x, -2147483647i, -2147483647i))), true));
    var var_2 = Struct_2(vec3<f32>(_wgslsmith_div_f32(520f, var_0.a.a.x), _wgslsmith_f_op_f32(-global0.c.a.x), 1000f));
    return u_input.c;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> Struct_5 {
    global1 = array<u32, 3>();
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.a.x, -1372f)), global0.c.a)) * global0.c.a)), u_input.b.x & _wgslsmith_mult_i32(-17384i, u_input.b.x), _wgslsmith_f_op_f32(global0.c.a.x - 1298f), vec4<i32>(firstTrailingBit(reverseBits(-2147483647i)), u_input.b.x, -1i, ~u_input.b.x));
    global0 = Struct_4(var_0.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(470f, -569f, global0.c.a.x, var_0.a.a.x))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a.x, var_0.a.a.x, -219f, -1053f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b))) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, var_0.a.a.x, _wgslsmith_f_op_f32(step(804f, var_0.a.a.x)), _wgslsmith_f_op_f32(global0.c.a.x - var_0.c)), vec4<f32>(-411f, _wgslsmith_f_op_f32(-520f + var_0.c), _wgslsmith_f_op_f32(global0.c.a.x + var_0.c), _wgslsmith_f_op_f32(-var_0.a.a.x)))), var_0.a);
    let var_1 = 43059u;
    var var_2 = func_3(countOneBits(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_sub_u32(21704u, global1[_wgslsmith_index_u32(var_1, 3u)]), _wgslsmith_dot_vec3_u32(u_input.c.ywx, u_input.a)))), Struct_5(u_input.b.x));
    return Struct_5(1i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5) -> vec3<bool> {
    var var_0 = _wgslsmith_div_i32(arg_1.a, ~(_wgslsmith_mult_i32(u_input.b.x, arg_1.a) << (firstTrailingBit(1u) % 32u))) | ((arg_1.a >> (1u % 32u)) & _wgslsmith_div_i32(-arg_1.a, arg_1.a));
    global1 = array<u32, 3>();
    global1 = array<u32, 3>();
    global1 = array<u32, 3>();
    let var_1 = firstTrailingBit(~vec3<u32>(reverseBits(1u), 0u, countOneBits(103204u))) | vec3<u32>(u_input.c.x << (1u % 32u), 4294967295u, ~1492u);
    return vec3<bool>(!any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), select(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(step(-310f, global0.a.x))) != _wgslsmith_f_op_f32(-2130f * _wgslsmith_f_op_f32(571f + 907f)), !(_wgslsmith_dot_vec3_i32(vec3<i32>(-24207i, arg_1.a, arg_1.a), vec3<i32>(-59140i, u_input.b.x, arg_1.a)) == countOneBits(3168i)), !(!(579f != global0.c.a.x))), _wgslsmith_f_op_f32(max(511f, -233f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c.a.x))) - _wgslsmith_f_op_f32(-global0.b.x)));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> i32 {
    var var_0 = !select(select(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, true, true), vec3<bool>(arg_1, false, arg_1)), vec3<bool>(!arg_1, true, any(vec4<bool>(arg_1, arg_1, true, true))), !select(vec3<bool>(false, false, true), vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, false, false))), func_4(Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(-1179f, 1206f, arg_2.a.a.x), arg_2.a.a)), func_2(countOneBits(arg_3), -arg_2.d.zyx)), !func_4(Struct_2(vec3<f32>(global0.b.x, arg_2.c, 3313f)), Struct_5(1i)));
    var var_1 = max(1i, -5860i);
    var var_2 = ~_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(arg_2.d.yz, arg_2.d.yw)), vec2<i32>(1i, ~2147483647i), _wgslsmith_sub_vec2_i32(arg_2.d.zy, vec2<i32>(u_input.b.x, u_input.b.x)) & select(u_input.b, u_input.b, var_0.yy)), vec2<i32>(_wgslsmith_sub_i32(-13244i, 32913i), u_input.b.x) ^ vec2<i32>(_wgslsmith_div_i32(arg_3, arg_3), -25932i));
    var var_3 = Struct_5(u_input.b.x);
    var var_4 = arg_2;
    return u_input.b.x;
}

fn func_5(arg_0: vec3<i32>, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> Struct_4 {
    let var_0 = select(vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(44761u, 3u)] | u_input.e.x), 3u)], countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(39898u, global1[_wgslsmith_index_u32(u_input.d.x, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)]), u_input.c))), 3u)], ~min(u_input.d.x, u_input.c.x) << ((~u_input.a.x << (abs(u_input.d.x) % 32u)) % 32u), _wgslsmith_dot_vec2_u32(reverseBits(~vec2<u32>(0u, global1[_wgslsmith_index_u32(0u, 3u)])), ~vec2<u32>(1u, u_input.e.x) << (_wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32138u, 3u)], 3u)], 1u), vec2<u32>(1u, 64712u)) % vec2<u32>(32u)))), vec3<u32>(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(101113u, ~abs(0u), select(true, all(vec3<bool>(true, false, false)), false)), 3u)], 3u)], firstLeadingBit(~_wgslsmith_div_u32(9620u, 4294967295u))), func_4(Struct_2(arg_3.a), Struct_5(i32(-1i) * -u_input.b.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c.a.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1368f)), _wgslsmith_f_op_f32(round(global0.b.x)), 1523f, _wgslsmith_f_op_f32(max(arg_3.a.x, _wgslsmith_f_op_f32(sign(global0.a.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.b, vec4<f32>(arg_1, arg_3.a.x, arg_2, -1006f)) * vec4<f32>(-1496f, 1782f, global0.b.x, 437f)), _wgslsmith_f_op_vec4_f32(select(global0.b, global0.b, true))))));
    let var_3 = vec3<u32>(4294967295u, countOneBits(global1[_wgslsmith_index_u32(4294967295u, 3u)]), 45003u);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-547f)));
    return Struct_4(vec3<f32>(_wgslsmith_f_op_f32(ceil(-2112f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1740f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -187f), _wgslsmith_f_op_f32(round(arg_1)), true)))), _wgslsmith_div_f32(1070f, _wgslsmith_f_op_f32(-548f - 104f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_div_f32(1710f, -1985f), 556f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 * -630f)))), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c;
    var var_1 = func_5(vec3<i32>(func_1(countOneBits(u_input.c), true, Struct_3(global0.c, 0i, 583f, vec4<i32>(u_input.b.x, u_input.b.x, 3867i, u_input.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 15731i), vec3<i32>(u_input.b.x, -11442i, u_input.b.x))), 1i ^ select(u_input.b.x, u_input.b.x, false), _wgslsmith_add_i32(-42726i, ~u_input.b.x)) ^ (-vec3<i32>(u_input.b.x, u_input.b.x, 880i) | reverseBits(~vec3<i32>(u_input.b.x, u_input.b.x, 19431i))), -483f, var_0.a.x, global0.c);
    let var_2 = Struct_1(~(~u_input.b.x), global1[_wgslsmith_index_u32(reverseBits(38082u), 3u)], vec3<bool>(true, true, true), false);
    global1 = array<u32, 3>();
    var var_3 = vec2<u32>(~(~firstTrailingBit(var_2.b)), _wgslsmith_mod_u32(1u, u_input.e.x & ~u_input.e.x));
    global1 = array<u32, 3>();
    let var_4 = firstLeadingBit(vec4<i32>(-2147483647i, -51997i, var_2.a, 2147483647i));
    global0 = func_5(-firstTrailingBit(var_4.wwx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)))))), var_0.a.x, Struct_2(global0.c.a));
    var var_5 = func_3(func_3(var_3.x, func_2(~_wgslsmith_mult_i32(0i, 0i), ~_wgslsmith_add_vec3_i32(var_4.xwy, vec3<i32>(u_input.b.x, -38585i, -1i)))).x, Struct_5(abs(-12591i))).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a.x) + 323f) * var_1.a.x), -var_4.xzw, u_input.d.x << (var_2.b % 32u));
}

