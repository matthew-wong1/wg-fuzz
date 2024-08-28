struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(0i), vec2<u32>(0u, 1u), 9219i), Struct_2(Struct_1(-1i), vec2<u32>(21832u, 30033u), 2147483647i), Struct_2(Struct_1(20382i), vec2<u32>(4294967295u, 4294967295u), 1i), Struct_2(Struct_1(-19819i), vec2<u32>(38406u, 37886u), i32(-2147483648)), Struct_2(Struct_1(2147483647i), vec2<u32>(63549u, 1u), -41012i), Struct_2(Struct_1(i32(-2147483648)), vec2<u32>(32400u, 6552u), 1i), Struct_2(Struct_1(-34309i), vec2<u32>(0u, 1189u), 1i), Struct_2(Struct_1(-1i), vec2<u32>(24200u, 13081u), -1i), Struct_2(Struct_1(1i), vec2<u32>(0u, 25411u), 15745i), Struct_2(Struct_1(-19522i), vec2<u32>(4294967295u, 1u), 1764i), Struct_2(Struct_1(i32(-2147483648)), vec2<u32>(95634u, 38529u), -32411i), Struct_2(Struct_1(i32(-2147483648)), vec2<u32>(9961u, 4294967295u), 0i), Struct_2(Struct_1(-6561i), vec2<u32>(37023u, 47885u), 59144i), Struct_2(Struct_1(0i), vec2<u32>(22240u, 81873u), 11233i), Struct_2(Struct_1(-23741i), vec2<u32>(4294967295u, 0u), 80056i));

var<private> global1: array<f32, 20>;

var<private> global2: bool = false;

var<private> global3: array<vec2<u32>, 21>;

var<private> global4: vec3<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> vec3<i32> {
    return ~_wgslsmith_sub_vec3_i32(~vec3<i32>(-arg_3.c, 1i >> (arg_0.x % 32u), ~arg_3.a.a), firstLeadingBit(vec3<i32>(arg_3.c, arg_3.c, arg_3.a.a)) ^ vec3<i32>(~global4.x, ~43409i, arg_1.a.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = countOneBits(-max(abs(func_3(vec4<u32>(4294967295u, 4294967295u, 0u, arg_1.b.x), Struct_3(vec3<i32>(17336i, u_input.a.x, 3166i)), 1u, Struct_2(Struct_1(global4.x), vec2<u32>(arg_1.b.x, 81239u), arg_1.a.a))), ~(-vec3<i32>(-11067i, -40659i, 1i))));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_0.x, ~3379i), -_wgslsmith_add_vec3_i32(vec3<i32>(2288i, -1i, u_input.a.x), var_0)), vec3<i32>(i32(-1i) * -2147483647i, select(global4.x, u_input.a.x, true) << (6982u % 32u), abs(21205i))));
    let var_2 = firstTrailingBit(vec2<u32>(~(~_wgslsmith_mod_u32(13093u, arg_1.b.x)), _wgslsmith_mult_u32(reverseBits(29855u), arg_1.b.x)));
    global3 = array<vec2<u32>, 21>();
    var_1 = Struct_1(reverseBits(-47592i));
    return Struct_1(~arg_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    global4 = ~select(vec3<i32>(func_2(arg_1.a, Struct_2(arg_0, vec2<u32>(0u, arg_1.b.x), u_input.a.x), -122f).a, ~arg_1.c, global4.x), _wgslsmith_clamp_vec3_i32(min(_wgslsmith_mod_vec3_i32(vec3<i32>(-33093i, u_input.a.x, arg_0.a), vec3<i32>(8253i, arg_1.a.a, u_input.a.x)), -vec3<i32>(-1i, arg_0.a, global4.x)), ~vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.c, arg_1.a.a, global4.x), vec3<i32>(arg_1.a.a, u_input.a.x, 24364i)), ~vec3<i32>(-39209i, arg_1.c, 1i), vec3<i32>(global4.x, global4.x, global4.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 20u)])), -1000f, true)) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(700f)))));
    var var_0 = arg_1.b.x;
    var var_1 = 1028f;
    var var_2 = -global4.yy;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(561f - global1[_wgslsmith_index_u32(4294967295u, 20u)]) - _wgslsmith_f_op_f32(f32(-1f) * -436f));
    return global1[_wgslsmith_index_u32(arg_1.b.x ^ 364u, 20u)];
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(26084u, 1u, 1u, 74705u), vec4<u32>(87407u, 15946u, 4294967295u, 1u)), ~4294967295u), 20u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(reverseBits(4294967295u), 20u)] - -438f), _wgslsmith_f_op_f32(func_4(func_2(Struct_1(u_input.a.x), global0[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(9110u, 20u)]), Struct_2(Struct_1(2147483647i), global3[_wgslsmith_index_u32(6145u, 21u)], global4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 20u)]) * _wgslsmith_f_op_f32(sign(-1628f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(~54666u, 20u)], _wgslsmith_f_op_f32(abs(1976f)), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(4294967295u, 20u)])), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(33307u, 20u)])))), vec4<f32>(_wgslsmith_f_op_f32(min(-409f, -536f)), -269f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~0u, 20u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~1u, 20u)]))));
    var var_1 = -52411i;
    global0 = array<Struct_2, 15>();
    global4 = firstTrailingBit(-abs(_wgslsmith_add_vec3_i32(vec3<i32>(-5363i, u_input.a.x, 49976i), -vec3<i32>(arg_0, arg_0, -39521i))));
    var_1 = -9165i;
    return Struct_3(select(vec3<i32>(i32(-1i) * -1i, arg_0 | ~20018i, -global4.x ^ (u_input.a.x >> (11312u % 32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, 2147483647i, global4.x), _wgslsmith_add_vec3_i32(vec3<i32>(global4.x, global4.x, u_input.a.x), vec3<i32>(arg_0, 1i, -1i))) & firstLeadingBit(func_3(vec4<u32>(95564u, 18996u, 0u, 60544u), Struct_3(vec3<i32>(3042i, arg_0, 2147483647i)), 1u, global0[_wgslsmith_index_u32(4294967295u, 15u)])), vec3<bool>(true, true, true)));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>) -> StorageBuffer {
    global4 = ~vec3<i32>(firstTrailingBit(-(~92217i)), arg_0.a.x, max(2147483647i, -global4.x));
    global2 = true;
    let var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(~(~1u)), 20u)];
    let var_1 = abs(vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)), 1u));
    var var_2 = Struct_2(Struct_1(1i), select(min(~var_1, _wgslsmith_mult_vec2_u32(var_1, vec2<u32>(var_1.x, 0u)) >> (vec2<u32>(4294967295u, var_1.x) % vec2<u32>(32u))), vec2<u32>(~(~46595u), 4254u), arg_1.x), select(-_wgslsmith_div_i32(-32480i, ~global4.x), -1i, false & select(arg_1.x & false, true, global1[_wgslsmith_index_u32(var_1.x, 20u)] != global1[_wgslsmith_index_u32(var_1.x, 20u)])));
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(0u), 20u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(30769u, 20u)] + -599f)))), 1000f, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(countOneBits(var_2.b.x), 20u)]))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(832f * 1216f), global1[_wgslsmith_index_u32(~var_1.x, 20u)]) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_1.x, 20u)], -1034f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 20u)], -1000f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1300f, 1416f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, global1[_wgslsmith_index_u32(var_1.x, 20u)]))))))), _wgslsmith_add_vec2_u32(var_2.b, var_1), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_2.b.x, var_1.x)), vec2<u32>(var_1.x, var_1.x)), var_2.b.x), ~(~global3[_wgslsmith_index_u32(4294967295u, 21u)] >> (abs(vec2<u32>(17728u, 1u)) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1(2147483647i), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
}

