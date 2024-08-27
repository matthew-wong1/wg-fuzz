struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, false, false, true, true, false, false, true);

var<private> global1: vec3<f32> = vec3<f32>(-893f, 711f, 293f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec3<i32> {
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x))), global1.x, _wgslsmith_f_op_f32(ceil(357f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-772f, global1.x, 269f), vec3<f32>(global1.x, global1.x, global1.x), vec3<bool>(false, global0[_wgslsmith_index_u32(58743u, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)]))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, 399f, global1.x), vec3<f32>(1813f, -134f, global1.x), global0[_wgslsmith_index_u32(u_input.b, 8u)])))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) + 151f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) - _wgslsmith_f_op_f32(global1.x + -289f)), global1.x)));
    var var_0 = Struct_5(global1.x, Struct_3(Struct_2(_wgslsmith_f_op_f32(-global1.x), Struct_1(~u_input.c), ~abs(vec3<u32>(u_input.a, 1u, u_input.a)), Struct_1(u_input.c), vec3<bool>(38797u < u_input.b, all(vec3<bool>(false, global0[_wgslsmith_index_u32(80291u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)])), global0[_wgslsmith_index_u32(11961u, 8u)] || global0[_wgslsmith_index_u32(25015u, 8u)])), Struct_2(1380f, Struct_1(u_input.c), vec3<u32>(_wgslsmith_mod_u32(16666u, u_input.b), _wgslsmith_add_u32(64199u, 43269u), 27718u), Struct_1(u_input.c), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x))), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 42285i), vec2<i32>(45831i, u_input.c), vec2<i32>(-1i, 2147483647i)), -vec2<i32>(u_input.c, -1i))), Struct_1(~1i)), global0[_wgslsmith_index_u32(u_input.b, 8u)], Struct_4(global1.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, u_input.a) | 1u, u_input.b), Struct_1(_wgslsmith_mod_i32(u_input.c, 2147483647i) & (u_input.c | 2147483647i)), global1.yz, _wgslsmith_f_op_vec2_f32(max(global1.zy, _wgslsmith_div_vec2_f32(global1.yy, global1.yx)))));
    global0 = array<bool, 8>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.zz)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.d.d))));
    let var_2 = 26166u;
    return ~firstLeadingBit(_wgslsmith_mod_vec3_i32(~(-vec3<i32>(-24143i, -12902i, u_input.c)), vec3<i32>(u_input.c & 1i, 0i, ~0i)));
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    var var_0 = global1.x;
    var var_1 = Struct_1(-u_input.c);
    let var_2 = func_3();
    let var_3 = ~(~abs(~_wgslsmith_div_vec4_u32(vec4<u32>(8320u, u_input.b, u_input.b, u_input.a), vec4<u32>(1u, u_input.a, u_input.b, u_input.a))));
    var_1 = Struct_1(max(firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_1.a, -2147483647i), 0i)), 1i));
    return !select(!(!select(vec3<bool>(arg_0.x, true, false), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], false))), arg_0.yyy, select(!vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(global0[_wgslsmith_index_u32(~var_3.x, 8u)], false, true), !(!arg_0.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> Struct_1 {
    var var_0 = abs(_wgslsmith_dot_vec2_u32(min(max(vec2<u32>(664u, u_input.b), vec2<u32>(u_input.b, 29583u)), vec2<u32>(u_input.a, 24462u) & vec2<u32>(u_input.b, u_input.a)) & _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 1u), reverseBits(vec2<u32>(31907u, u_input.a))), ~reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(47385u, 1u), vec2<u32>(u_input.a, u_input.a)))));
    global0 = array<bool, 8>();
    var var_1 = 1622f;
    let var_2 = _wgslsmith_add_u32(4294967295u, 0u);
    var var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(~(~(~var_2)), _wgslsmith_add_u32(63954u, 57849u), firstLeadingBit(_wgslsmith_sub_u32(4294967295u, 1u))), _wgslsmith_add_vec3_u32(vec3<u32>(~min(u_input.a, 34953u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2, 51491u, 1u, 20834u), vec4<u32>(u_input.a, var_2, 4294967295u, 1u)), ~select(var_2, var_2, global0[_wgslsmith_index_u32(0u, 8u)])), max(~vec3<u32>(var_2, 0u, u_input.a), vec3<u32>(var_2, var_2, u_input.a)) | countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(3672u, var_2, u_input.a), vec3<u32>(var_2, var_2, var_2)))));
    return Struct_1(_wgslsmith_sub_i32(-12421i, u_input.c));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: vec4<f32>) -> vec3<bool> {
    let var_0 = 5945i;
    var var_1 = func_4(select(select(vec3<bool>(true, true, true), select(func_2(vec4<bool>(global0[_wgslsmith_index_u32(1u, 8u)], false, global0[_wgslsmith_index_u32(u_input.b, 8u)], false)), vec3<bool>(true, true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(14854u, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)])), false), vec3<bool>(true, true, true), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 8u)], true, global0[_wgslsmith_index_u32(u_input.a, 8u)]))), !select(global0[_wgslsmith_index_u32(u_input.a, 8u)], true, true));
    var_1 = func_4(select(vec3<bool>(any(vec2<bool>(true, true)), any(func_2(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 8u)], false, global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(58368u, 8u)]))), true), !(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 8u)], true))), all(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(39522u, 8u)], true, false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)]), false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 8u)], true, false), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(16341u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)], true, false), global0[_wgslsmith_index_u32(u_input.a, 8u)])))), global0[_wgslsmith_index_u32(1u, 8u)]);
    global0 = array<bool, 8>();
    var var_2 = u_input.b;
    return vec3<bool>(!(!(!global0[_wgslsmith_index_u32(u_input.a, 8u)]) | any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 8u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(3203u, 8u)], global0[_wgslsmith_index_u32(1979u, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 8u)], true, global0[_wgslsmith_index_u32(37028u, 8u)], true)))), false, any(!select(!vec4<bool>(true, global0[_wgslsmith_index_u32(4127u, 8u)], false, global0[_wgslsmith_index_u32(1u, 8u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(36938u, 8u)], false, global0[_wgslsmith_index_u32(u_input.b, 8u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], true, false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 8u)], false, true, global0[_wgslsmith_index_u32(1u, 8u)])), select(vec4<bool>(true, global0[_wgslsmith_index_u32(13579u, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(1u, 8u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)]), true))));
}

fn func_5(arg_0: vec3<bool>, arg_1: f32) -> StorageBuffer {
    var var_0 = 31815i ^ u_input.c;
    global1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-777f, 111f)) * -136f))), _wgslsmith_f_op_f32(abs(arg_1)))));
    var var_1 = Struct_4(global1.x, 14782u >> (u_input.b % 32u), func_4(vec3<bool>(true, false || (global0[_wgslsmith_index_u32(4294967295u, 8u)] | global0[_wgslsmith_index_u32(u_input.a, 8u)]), true), 852f == arg_1), global1.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -445f))));
    var_0 = ~(-(~0i));
    var var_2 = -1587f;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(max(-1000f, var_1.d.x))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -533f)), _wgslsmith_f_op_f32(-var_1.a))), 1u, ~reverseBits(reverseBits(vec4<i32>(var_1.c.a, var_1.c.a, var_1.c.a, var_1.c.a))) ^ _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(var_1.c.a, var_1.c.a, 0i, 21792i), vec4<i32>(var_1.c.a, u_input.c, u_input.c, 0i), false), vec4<i32>(u_input.c, 2147483647i, -1i, 0i) ^ vec4<i32>(20787i, var_1.c.a, u_input.c, var_1.c.a)), ~vec4<i32>(u_input.c, u_input.c, var_1.c.a, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1(-(~u_input.c), -1i, u_input.c, vec4<f32>(452f, -1000f, global1.x, -753f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))) + _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(global1.x - global1.x))))));
}

