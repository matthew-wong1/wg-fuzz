struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(56296u, 100222u), vec2<u32>(47899u, 37749u), vec2<u32>(1u, 0u));

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<vec3<u32>, 18>;

var<private> global3: array<Struct_1, 5>;

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a * vec3<f32>(825f, 1414f, arg_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_2.a))))), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(~arg_2.b, ~arg_2.b), -vec3<i32>(-2147483647i | arg_2.b.x, -45366i | arg_2.b.x, select(arg_2.b.x, 20075i, arg_1.x))), u_input.d);
    let var_1 = ~0u;
    let var_2 = ~(~max(countOneBits(~u_input.b), vec4<u32>(var_0.c.x >> (u_input.a % 32u), ~75510u, arg_3, 0u)));
    var var_3 = global1[_wgslsmith_index_u32(20441u, 31u)];
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_3.a))))))), vec3<i32>(-1i, _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_2.b.x, var_0.b.x), var_3.b), _wgslsmith_dot_vec3_i32(var_3.b, ~vec3<i32>(arg_2.b.x, arg_2.b.x, var_3.b.x))), ~firstTrailingBit(select(var_3.b.x, 30022i, arg_1.x))), global2[_wgslsmith_index_u32(var_2.x, 18u)]);
    return -max(_wgslsmith_div_i32(_wgslsmith_clamp_i32(~var_3.b.x, -2147483647i, _wgslsmith_sub_i32(var_4.b.x, var_3.b.x)), max(33347i, max(var_4.b.x, var_4.b.x))), -_wgslsmith_clamp_i32(var_3.b.x, 1i, firstLeadingBit(0i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(arg_0.a, vec3<i32>(_wgslsmith_sub_i32(arg_1.b.x, _wgslsmith_add_i32(arg_0.b.x, -1i) | (-2147483647i ^ arg_1.b.x)), ~_wgslsmith_mult_i32(~(-2147483647i), arg_1.b.x), _wgslsmith_add_i32(func_3(vec2<f32>(arg_0.a.x, 1000f), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false), Struct_1(arg_1.a, vec3<i32>(9892i, 52772i, -1898i), arg_1.c), 6612u), max(arg_1.b.x, -2147483647i) | arg_0.b.x)), vec3<u32>(~13314u, arg_1.c.x, arg_0.c.x));
    global2 = array<vec3<u32>, 18>();
    let var_1 = firstLeadingBit(u_input.b);
    let var_2 = global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_1.x, select(0u, ~4294967295u, true || all(vec2<bool>(false, false)))), 24u)];
    global4 = array<Struct_1, 24>();
    return -1524f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    return global1[_wgslsmith_index_u32(arg_1.c.x, 31u)];
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = func_4(arg_0, arg_0, vec4<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.a.x)))), _wgslsmith_f_op_f32(func_2(arg_0, Struct_1(arg_0.a, ~arg_0.b, ~arg_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1172f)) - 1f) + _wgslsmith_f_op_f32(round(arg_3)))), Struct_1(arg_0.a, countOneBits(arg_0.b), ~(~(~vec3<u32>(4294967295u, 19084u, arg_2)))));
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    global4 = array<Struct_1, 24>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -101f, 225f) - var_0.a)))))), var_0.b, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(min(vec3<u32>(35402u, 10704u, var_0.c.x) | vec3<u32>(arg_0.c.x, 1u, arg_0.c.x), ~vec3<u32>(0u, arg_0.c.x, 49145u)), var_0.c), vec3<u32>(3696u, firstTrailingBit(firstTrailingBit(arg_2)), 14448u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 5>();
    let var_0 = global3[_wgslsmith_index_u32(1u, 5u)];
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.c.x | var_0.c.x, _wgslsmith_mult_u32(~reverseBits(u_input.b.x) & _wgslsmith_div_u32(var_0.c.x, ~var_0.c.x), var_0.c.x)), 5u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 2241f, _wgslsmith_f_op_f32(-var_1.a.x))));
    var var_3 = func_1(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_1.a * vec3<f32>(var_1.a.x, -1657f, var_1.a.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.xwz - vec3<f32>(1582f, -1000f, 1634f)), vec3<f32>(-606f, var_1.a.x, var_0.a.x)), !(var_1.b.x <= var_0.b.x))), -abs(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -1i), var_1.b)), countOneBits(_wgslsmith_mult_vec3_u32(var_1.c, var_1.c))), _wgslsmith_sub_i32(var_1.b.x, min(countOneBits(var_0.b.x), _wgslsmith_add_i32(var_0.b.x, _wgslsmith_div_i32(17856i, -2147483647i)))), _wgslsmith_add_u32(var_1.c.x, ~u_input.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2481f + var_1.a.x)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(769f + -1774f))));
    let var_4 = vec4<bool>(any(vec2<bool>(all(vec3<bool>(true, true, true)), true)), false, !(firstLeadingBit(8660i >> (0u % 32u)) == ~var_1.b.x), any(vec2<bool>(!(var_1.b.x <= var_1.b.x), true)));
    global2 = array<vec3<u32>, 18>();
    global1 = array<Struct_1, 31>();
    let var_5 = _wgslsmith_dot_vec4_i32(firstTrailingBit(min(max(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.x, var_1.b.x, -53407i, var_0.b.x), vec4<i32>(var_1.b.x, 38891i, var_1.b.x, 63962i)), abs(vec4<i32>(17910i, -72272i, 1i, var_0.b.x))), _wgslsmith_add_vec4_i32(vec4<i32>(-20357i, var_0.b.x, var_3.b.x, 6509i), -vec4<i32>(var_1.b.x, var_0.b.x, 1i, 0i)))), min(_wgslsmith_mod_vec4_i32(max(vec4<i32>(2147483647i, -2124i, 0i, 2147483647i) | vec4<i32>(var_3.b.x, var_3.b.x, -6591i, var_1.b.x), vec4<i32>(var_0.b.x, var_3.b.x, var_1.b.x, var_3.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.x, 8492i, 0i, 1i), vec4<i32>(0i, 53110i, 1i, 2147483647i))), vec4<i32>(~(-32041i ^ var_3.b.x), 2147483647i, _wgslsmith_sub_i32(var_0.b.x, 1i), firstTrailingBit(8422i))));
    let x = u_input.a;
    s_output = StorageBuffer(select(max(u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.x, 58026u, 3917u, var_1.c.x), u_input.b)), u_input.b, any(vec4<bool>(true, true, true, var_4.x))), _wgslsmith_sub_vec2_u32(~abs(~var_1.c.xz), _wgslsmith_sub_vec2_u32(~vec2<u32>(var_1.c.x, 59734u), abs(vec2<u32>(4294967295u, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(step(587f, 1812f))))), var_3.b, vec4<i32>(-(~2147483647i), 0i, _wgslsmith_dot_vec3_i32(~(~var_3.b), func_1(func_4(global3[_wgslsmith_index_u32(117542u, 5u)], global3[_wgslsmith_index_u32(48577u, 5u)], vec4<f32>(var_2.x, -857f, var_2.x, var_2.x), Struct_1(var_1.a, vec3<i32>(var_3.b.x, var_1.b.x, var_0.b.x), vec3<u32>(var_1.c.x, 4294967295u, 77194u))), _wgslsmith_mod_i32(var_5, -1i), ~u_input.b.x, var_1.a.x).b), _wgslsmith_mult_i32(i32(-1i) * -47603i, ~(var_0.b.x >> (var_1.c.x % 32u)))));
}

