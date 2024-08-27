struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 7>;

var<private> global2: Struct_5;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(min(select(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), ~vec4<u32>(38146u, u_input.a.x, u_input.a.x, u_input.a.x), true), vec4<u32>(u_input.a.x & 40250u, 1u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x)), vec4<u32>(1u, firstLeadingBit(countOneBits(1u)), _wgslsmith_mult_u32(u_input.a.x, 34720u & u_input.a.x), abs(30513u))), reverseBits(54784u), firstLeadingBit(u_input.a.x));
    global1 = array<bool, 7>();
    global1 = array<bool, 7>();
    let var_1 = abs(~(-33434i));
    global2 = Struct_5(vec2<i32>(-(~global2.a.x), ~var_1) & vec2<i32>(min(_wgslsmith_clamp_i32(-26081i, -24809i, var_1), 40433i), 0i));
    return var_0.x;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<i32>) -> Struct_4 {
    let var_0 = u_input.a;
    global2 = Struct_5(~arg_2.xx);
    let var_1 = -global2.a;
    global2 = Struct_5(var_1);
    global0 = func_3() | ~countOneBits(~(~var_0.x));
    return Struct_4(vec3<bool>(all(vec4<bool>(!arg_1, global1[_wgslsmith_index_u32(firstLeadingBit(27709u), 7u)], true, true)), global1[_wgslsmith_index_u32(abs(firstTrailingBit(_wgslsmith_div_u32(55160u, 1u))), 7u)], _wgslsmith_f_op_f32(trunc(-417f)) == 2125f), Struct_1(~(-30208i), select(arg_2 & arg_2, _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -13438i, -9753i, global2.a.x), select(vec4<i32>(global2.a.x, global2.a.x, global2.a.x, arg_2.x), vec4<i32>(-2147483647i, var_1.x, var_1.x, global2.a.x), arg_1)), any(vec2<bool>(false, false)) & true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 314f, 1452f, -1159f), vec4<f32>(485f, -1891f, -455f, 127f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-366f, 2299f, 565f), _wgslsmith_f_op_vec3_f32(vec3<f32>(826f, 783f, -1236f) + vec3<f32>(-522f, 1162f, -1007f)), !arg_1)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-693f, 1f, _wgslsmith_div_f32(-742f, -604f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1761f, 534f, -227f)))), arg_1 & (all(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 7u)], true, false, global1[_wgslsmith_index_u32(u_input.a.x, 7u)])) != true))), _wgslsmith_dot_vec3_i32(arg_2.xxy ^ (select(vec3<i32>(arg_2.x, -2147483647i, global2.a.x), arg_2.yww, true) | vec3<i32>(global2.a.x, -48961i, global2.a.x)), -min(-arg_2.wzw, -vec3<i32>(-29404i, arg_2.x, -1i))));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    var var_0 = arg_0.d;
    global0 = _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(~u_input.a.x, u_input.a.x));
    var var_1 = select(!select(vec4<bool>(true, arg_0.a.x, !arg_0.a.x, false), select(!vec4<bool>(arg_0.a.x, arg_0.a.x, true, true), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], false), arg_0.a.x), 35735u > ~u_input.a.x), vec4<bool>(func_2(u_input.a.x & reverseBits(11491u), 2147483647i != arg_0.d, -vec4<i32>(39439i, global2.a.x, arg_0.b.a, 2147483647i)).a.x, all(arg_0.a), !select(true, all(vec3<bool>(arg_0.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], global1[_wgslsmith_index_u32(14977u, 7u)])), true), global1[_wgslsmith_index_u32((u_input.a.x & (u_input.a.x ^ 12327u)) << (max(~13148u, 27970u) % 32u), 7u)]), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.c.x, 368f)) * _wgslsmith_f_op_f32(f32(-1f) * -1208f)) > _wgslsmith_f_op_f32(430f + -496f), arg_0.a.x, -879f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2914f, arg_0.c.x))), ~u_input.a.x != (_wgslsmith_div_u32(u_input.a.x, 66903u) ^ min(1u, 4294967295u))));
    var var_2 = firstLeadingBit(4294967295u);
    var var_3 = false;
    return Struct_3(countOneBits(global2.a.x), Struct_1(-19212i, vec4<i32>(-1i) * -arg_0.b.b, _wgslsmith_f_op_vec4_f32(exp2(arg_0.b.c))), _wgslsmith_f_op_f32(select(arg_0.c.x, 1f, any(select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], arg_0.a.x, true, true), vec4<bool>(var_1.x, global1[_wgslsmith_index_u32(12405u, 7u)], arg_0.a.x, true), false), !vec4<bool>(false, true, arg_0.a.x, global1[_wgslsmith_index_u32(32367u, 7u)]), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], var_1.x, arg_0.a.x), vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 7u)], var_1.x), false))))), arg_0.b);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    let var_0 = select(u_input.a.x, 12350u, true);
    let var_1 = firstTrailingBit(~vec3<i32>(_wgslsmith_mod_i32(arg_0.d.b.x, arg_0.a), func_2(30180u, global1[_wgslsmith_index_u32(var_0, 7u)], vec4<i32>(arg_0.b.b.x, arg_0.a, global2.a.x, -1i)).b.a, global2.a.x) << (vec3<u32>(var_0, _wgslsmith_sub_u32(min(19898u, 1u), reverseBits(u_input.a.x)), 1u) % vec3<u32>(32u)));
    global1 = array<bool, 7>();
    var var_2 = arg_0;
    let var_3 = arg_1.b.x;
    return _wgslsmith_f_op_f32(floor(1748f));
}

fn func_1() -> u32 {
    global1 = array<bool, 7>();
    let var_0 = ~u_input.a;
    global2 = Struct_5(vec2<i32>(2147483647i, global2.a.x) | _wgslsmith_div_vec2_i32(~select(vec2<i32>(global2.a.x, global2.a.x), vec2<i32>(global2.a.x, global2.a.x), global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec2<i32>(-global2.a.x, abs(27089i))));
    var var_1 = _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_0.x, 10702u, var_0.x, 77227u)), vec4<u32>(reverseBits(u_input.a.x), ~35066u, var_0.x, 1u)), ~(~vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(var_0.x, 86054u), ~u_input.a.x, 1u)));
    var var_2 = _wgslsmith_f_op_f32(func_5(func_4(func_2(35586u | (var_1.x >> (0u % 32u)), true, select(-vec4<i32>(global2.a.x, 34218i, 27122i, -8267i), vec4<i32>(global2.a.x, 26589i, 0i, 29848i), vec4<bool>(global1[_wgslsmith_index_u32(12069u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(var_0.x, 7u)], false)))), Struct_2(103f, !(!select(vec2<bool>(global1[_wgslsmith_index_u32(47651u, 7u)], false), vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 7u)]), global1[_wgslsmith_index_u32(var_0.x, 7u)])), 1502f)));
    return reverseBits(var_1.x);
}

fn func_6(arg_0: bool, arg_1: f32) -> i32 {
    let var_0 = func_4(Struct_4(vec3<bool>(false, true, global1[_wgslsmith_index_u32(3294u, 7u)]), Struct_1(-28141i, vec4<i32>(1i, _wgslsmith_mult_i32(global2.a.x, 1i), -global2.a.x, ~(-2147483647i)), vec4<f32>(arg_1, _wgslsmith_f_op_f32(select(arg_1, 406f, true)), 460f, 2942f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 263f, arg_1)))))), _wgslsmith_dot_vec4_i32(~(vec4<i32>(global2.a.x, global2.a.x, 1486i, global2.a.x) ^ vec4<i32>(global2.a.x, global2.a.x, global2.a.x, -12633i)), vec4<i32>(min(global2.a.x, global2.a.x), ~global2.a.x, 1i, 1i))));
    let var_1 = -_wgslsmith_mod_i32((-var_0.a << (1u % 32u)) << (~(u_input.a.x & u_input.a.x) % 32u), max(~(-global2.a.x), global2.a.x));
    let var_2 = var_0.b.b.x;
    global1 = array<bool, 7>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -613f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c)))))));
    return -2147483647i ^ _wgslsmith_add_i32(abs(60551i), var_0.d.a);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.a))))), vec2<bool>(!((arg_2.x << (0u % 32u)) > arg_2.x), arg_1.a.x), _wgslsmith_f_op_f32(floor(-2966f)));
    let var_1 = var_0.c;
    var var_2 = Struct_4(vec3<bool>(any(arg_1.a.xx), func_2(func_1(), var_0.b.x, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, arg_1.d), arg_0.b.zx), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.a, 2147483647i, -2460i), vec3<i32>(-16592i, 2147483647i, arg_0.b.x)), arg_0.b.x, reverseBits(2147483647i))).a.x, !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(37126u, 52407u, u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 31891u, 36678u, 85277u), vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x))), 7u)]), func_2(~_wgslsmith_add_u32(firstTrailingBit(u_input.a.x), abs(u_input.a.x)), true, _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-1i, -27635i, -110538i, -2147483647i) >> (vec4<u32>(43003u, u_input.a.x, 1u, 0u) % vec4<u32>(32u))), arg_0.b)).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.c.zyy)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a, -186f, 963f))))))), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, _wgslsmith_mult_i32(36741i, abs(-3689i)), _wgslsmith_dot_vec4_i32(max(vec4<i32>(global2.a.x, 2109i, global2.a.x, -13361i), vec4<i32>(arg_1.d, -2147483647i, arg_1.b.a, -35799i)), vec4<i32>(1i, -1i, 46561i, arg_1.b.b.x))), vec3<i32>(arg_1.b.b.x, ~_wgslsmith_clamp_i32(1i, arg_0.b.x, arg_1.b.b.x), -_wgslsmith_sub_i32(arg_1.d, 31870i))));
    var var_3 = func_4(func_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), 0u), _wgslsmith_sub_u32(~u_input.a.x, u_input.a.x) >= _wgslsmith_clamp_u32(firstTrailingBit(1u), 4294967295u, u_input.a.x), ~var_2.b.b >> (~(vec4<u32>(u_input.a.x, u_input.a.x, 20801u, 36352u) << (vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4971u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global0 = 38270u << ((func_1() >> ((u_input.a.x ^ 45131u) % 32u)) % 32u);
    return func_4(arg_1).d;
}

fn func_8(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = arg_1.x;
    var var_1 = global2.a;
    global1 = array<bool, 7>();
    let var_2 = arg_0.b.x;
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, -1240f, -1000f)), arg_1.xyy);
    return func_4(Struct_4(func_2(select(~u_input.a.x, ~30403u, true), any(vec2<bool>(true, true)), _wgslsmith_add_vec4_i32(vec4<i32>(80239i, 37221i, var_1.x, arg_0.a), vec4<i32>(68341i, -2147483647i, arg_0.a, -21220i)) | arg_0.b).a, Struct_1(global2.a.x, vec4<i32>(-36944i, 1i, var_1.x, _wgslsmith_mod_i32(2147483647i, var_2)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) - _wgslsmith_div_vec4_f32(vec4<f32>(195f, var_3.x, arg_1.x, -1318f), arg_1))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x * -393f))), -148f, 1588f), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -472f);
    var var_1 = func_8(func_7(Struct_1(func_6(global1[_wgslsmith_index_u32(func_1(), 7u)], var_0), select(vec4<i32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x), ~vec4<i32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x), all(vec4<bool>(global1[_wgslsmith_index_u32(32611u, 7u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-346f, 998f, var_0, 282f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1527f, var_0, var_0)))), func_2(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 19683u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 133400u)), vec4<u32>(u_input.a.x, 24643u, 1u, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 3987u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30980u, 0u, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 1u) ^ vec3<u32>(u_input.a.x, 39119u, 19084u)), 7u)], vec4<i32>(global2.a.x, -global2.a.x, max(-2147483647i, 43888i), _wgslsmith_sub_i32(-40579i, global2.a.x))), vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global2.a.x, -45771i, 1274i), vec4<i32>(global2.a.x, -75821i, global2.a.x, -30168i)), 20331i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, global2.a.x, global2.a.x, 1i), vec4<i32>(global2.a.x, global2.a.x, global2.a.x, -27314i))) >> (~(~vec4<u32>(38424u, u_input.a.x, 110876u, 9937u)) % vec4<u32>(32u)), Struct_2(710f, func_2(_wgslsmith_sub_u32(u_input.a.x, 1u), any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)])), ~vec4<i32>(global2.a.x, 0i, 23592i, 53307i)).a.yy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(796f)) * 688f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, var_0, var_0, var_0), vec4<f32>(var_0, -1139f, 188f, var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-518f, -501f, var_0, -2568f)), any(vec4<bool>(global1[_wgslsmith_index_u32(15437u, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)], global1[_wgslsmith_index_u32(27230u, 7u)]))))))));
    global1 = array<bool, 7>();
    let var_2 = Struct_5(~abs(_wgslsmith_mod_vec2_i32(global2.a, global2.a)) & firstTrailingBit(firstLeadingBit(func_8(var_1.b, var_1.b.c).d.b.zz)));
    var var_3 = func_4(func_2(u_input.a.x, !any(!vec4<bool>(true, global1[_wgslsmith_index_u32(16556u, 7u)], false, global1[_wgslsmith_index_u32(0u, 7u)])), vec4<i32>(-13368i, reverseBits(1i) >> (1u % 32u), 70871i, var_2.a.x))).d.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.c.wy, var_1.d.c, ((vec2<u32>(u_input.a.x, 1u) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(8454u, 0u))) << (~vec2<u32>(13226u, u_input.a.x) % vec2<u32>(32u))) & u_input.a, u_input.a.x, var_1.b.b.wxw);
}

