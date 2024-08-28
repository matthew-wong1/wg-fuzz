struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 508f;

var<private> global1: array<vec3<bool>, 23>;

var<private> global2: vec2<f32> = vec2<f32>(2045f, -1701f);

var<private> global3: array<bool, 13>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = vec3<i32>(arg_1.x, arg_1.x, arg_1.x);
    let var_1 = vec2<u32>(_wgslsmith_add_u32(u_input.a.x, ~reverseBits(max(u_input.d, u_input.b.x))), u_input.d);
    global1 = array<vec3<bool>, 23>();
    global1 = array<vec3<bool>, 23>();
    global3 = array<bool, 13>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2460f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - global2.x), -1022f)), _wgslsmith_f_op_f32(f32(-1f) * -161f));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>) -> vec2<f32> {
    global0 = arg_0.c.x;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2844f * arg_0.a.x)))), 247f);
    var var_0 = Struct_1(select(select(vec4<bool>(true == arg_1, true, false, select(false, false, arg_1)), vec4<bool>(all(arg_0.b.a), false, arg_0.b.a.x, arg_0.b.d.x), all(arg_2.zy)), !select(select(vec4<bool>(false, false, arg_1, arg_0.b.a.x), vec4<bool>(true, true, arg_0.b.a.x, arg_0.b.d.x), false), vec4<bool>(global3[_wgslsmith_index_u32(5517u, 13u)], arg_1, true, arg_2.x), arg_0.b.b.x > -2147483647i), select(arg_2, select(arg_2, vec4<bool>(true, false, true, true), arg_2), all(!vec3<bool>(arg_0.b.d.x, false, true)))), vec3<i32>(_wgslsmith_sub_i32(0i, 1i), arg_0.d.x, arg_0.b.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-714f, -578f), -449f, _wgslsmith_f_op_f32(arg_0.b.c.x - arg_0.a.x)) + _wgslsmith_f_op_vec3_f32(arg_0.b.c - _wgslsmith_f_op_vec3_f32(ceil(arg_0.c.xzx))))), !vec4<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(arg_2.x, true, true, arg_0.b.d.x))), arg_0.b.d.x, all(vec3<bool>(arg_2.x, global3[_wgslsmith_index_u32(1u, 13u)], arg_1)), true));
    let var_1 = u_input.a.zx;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) + 175f))));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-global2.x)) + vec2<f32>(arg_0.b.c.x, -653f)), _wgslsmith_f_op_vec2_f32(floor(var_0.c.yy))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = array<vec3<bool>, 23>();
    global2 = _wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec2<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1434f * global2.x), _wgslsmith_f_op_f32(trunc(-407f)))), Struct_1(vec4<bool>(true, any(global1[_wgslsmith_index_u32(u_input.b.x, 23u)]), true, true), min(_wgslsmith_add_vec3_i32(vec3<i32>(-11323i, 0i, -2147483647i), vec3<i32>(24340i, 0i, 44122i)), -vec3<i32>(-8033i, 2147483647i, -1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1324f, -1788f) + vec3<f32>(global2.x, 850f, -1340f)) * vec3<f32>(global2.x, -198f, global2.x)), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 13u)], false, true, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 158f, _wgslsmith_f_op_f32(-269f * -1051f), _wgslsmith_f_op_f32(abs(-952f)))), _wgslsmith_mult_vec3_i32(~vec3<i32>(1i, 1i, 1i), select(vec3<i32>(1i, -788i, -43140i), vec3<i32>(1i, 1i, 1i), vec3<bool>(true, false, true)))), true, !select(vec4<bool>(global3[_wgslsmith_index_u32(36317u, 13u)] && global3[_wgslsmith_index_u32(88541u, 13u)], true, true, true), select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 13u)], false, global3[_wgslsmith_index_u32(43012u, 13u)], global3[_wgslsmith_index_u32(u_input.c, 13u)]), select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(11401u, 13u)], global3[_wgslsmith_index_u32(18636u, 13u)]), vec4<bool>(global3[_wgslsmith_index_u32(0u, 13u)], global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(u_input.a.x, 13u)], global3[_wgslsmith_index_u32(9032u, 13u)]), vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(42199u, 13u)])), true), all(!vec2<bool>(global3[_wgslsmith_index_u32(32928u, 13u)], global3[_wgslsmith_index_u32(u_input.c, 13u)])))));
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, arg_0)) * vec2<f32>(global2.x, _wgslsmith_f_op_f32(floor(global2.x)))) * vec2<f32>(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-146f - arg_0), _wgslsmith_f_op_f32(-arg_0))))), Struct_1(!select(select(vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(u_input.c, 13u)]), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 13u)], false, global3[_wgslsmith_index_u32(u_input.c, 13u)], global3[_wgslsmith_index_u32(u_input.d, 13u)]), global3[_wgslsmith_index_u32(u_input.d, 13u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 13u)], true, true, global3[_wgslsmith_index_u32(0u, 13u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(33921u, 13u)], true, false), global3[_wgslsmith_index_u32(u_input.b.x, 13u)]), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, 7514u), 13u)]), min(~vec3<i32>(1i, -1790i, 2147483647i), ~vec3<i32>(1i, 1i, 1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(374f, 1384f, 1672f)))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-447f, 765f, 1000f)))), vec4<bool>(!any(vec3<bool>(false, false, global3[_wgslsmith_index_u32(23476u, 13u)])), global3[_wgslsmith_index_u32(0u, 13u)], global3[_wgslsmith_index_u32(4294967295u, 13u)], !global3[_wgslsmith_index_u32(9976u & u_input.b.x, 13u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-112f, global2.x, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * global2.x)))), reverseBits(_wgslsmith_mod_vec3_i32(~(~vec3<i32>(29962i, 1i, 0i)), select(vec3<i32>(1i, 1i, 1i), vec3<i32>(-2147483647i, -2147483647i, 1i), false))));
    global2 = var_0.b.c.yy;
    var var_1 = !vec4<bool>((390f >= _wgslsmith_f_op_f32(-var_0.b.c.x)) != !all(var_0.b.a), !(!(global3[_wgslsmith_index_u32(u_input.c, 13u)] != false)), false, all(select(select(vec4<bool>(var_0.b.a.x, true, true, global3[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 13u)], global3[_wgslsmith_index_u32(u_input.b.x, 13u)], false), var_0.b.d), select(vec4<bool>(true, true, var_0.b.d.x, true), var_0.b.d, vec4<bool>(false, true, true, var_0.b.a.x)), vec4<bool>(true, false, var_0.b.a.x, false))));
    return Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(-2147483647i, abs(501i), -1i), vec3<f32>(var_0.c.x, 938f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))))), vec4<bool>(!var_1.x, any(vec4<bool>(var_1.x, false, false, any(vec2<bool>(false, var_0.b.a.x)))), var_0.b.a.x, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1585f;
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global2.x) + vec2<f32>(1708f, -1616f)), vec3<i32>(40140i, -22383i, 1i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x * 756f), _wgslsmith_f_op_f32(global2.x + -1630f), true)))), -418f), func_2(-1073f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(vec2<f32>(-887f, global2.x), vec3<i32>(18062i, 15195i, -1i))), 789f))), _wgslsmith_f_op_f32(floor(-964f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) * _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x))))), _wgslsmith_div_vec3_i32(min(vec3<i32>(~(-1i), abs(17007i), -106542i), _wgslsmith_sub_vec3_i32(vec3<i32>(-17959i, 68378i, -4611i), countOneBits(vec3<i32>(-2147483647i, -44459i, -1i)))), ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-28253i, -24143i), vec2<i32>(-29442i, 0i)), min(33789i, 2147483647i), 1i)));
    var var_1 = min(min(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.d.x, 2147483647i), -abs(var_0.d.xy)), ~vec2<i32>(-21875i, 0i) & var_0.d.yx), -_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(0i, var_0.d.x), vec2<i32>(0i, -2147483647i)), vec2<i32>(var_0.b.b.x, _wgslsmith_add_i32(var_0.d.x, 5664i))));
    var var_2 = Struct_1(!var_0.b.a, select(abs(select(firstLeadingBit(var_0.b.b), countOneBits(vec3<i32>(var_0.b.b.x, 2147483647i, var_0.b.b.x)), false && global3[_wgslsmith_index_u32(1u, 13u)])), vec3<i32>(~func_2(global2.x).b.x, _wgslsmith_div_i32(-var_1.x, ~var_0.d.x), max(-38278i, 0i) & (var_0.b.b.x << (0u % 32u))), global3[_wgslsmith_index_u32(u_input.b.x, 13u)]), var_0.c.wzz, !select(var_0.b.a, vec4<bool>(any(vec2<bool>(false, true)), global3[_wgslsmith_index_u32(43022u, 13u)], true, any(vec2<bool>(true, var_0.b.d.x))), true));
    let var_3 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b.c.xx, _wgslsmith_f_op_vec2_f32(vec2<f32>(-415f, var_2.c.x) * var_2.c.yz))), var_0.a), Struct_1(select(select(select(var_0.b.d, vec4<bool>(var_0.b.d.x, false, var_0.b.a.x, false), false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 13u)], var_0.b.a.x, global3[_wgslsmith_index_u32(0u, 13u)], false), 264f == var_0.a.x), var_2.d, select(vec4<bool>(false, global3[_wgslsmith_index_u32(39713u, 13u)], var_2.d.x, true), vec4<bool>(false, var_0.b.d.x, false, global3[_wgslsmith_index_u32(u_input.d, 13u)]), select(var_0.b.d, var_0.b.d, true))), reverseBits(min(vec3<i32>(1i, 2147483647i, var_1.x), vec3<i32>(85617i, 11990i, -2147483647i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.x), var_0.b.c.x, _wgslsmith_f_op_f32(-2086f - var_0.c.x))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - 510f) + _wgslsmith_div_f32(-407f, 454f))).d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) + var_0.c), vec3<i32>(var_0.d.x, firstTrailingBit(51694i), _wgslsmith_div_i32(var_2.b.x, max(var_1.x, var_2.b.x))));
    let var_4 = !var_2.d.xx;
    var_0 = Struct_2(vec2<f32>(var_3.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global2.x)))))), Struct_1(vec4<bool>(_wgslsmith_f_op_f32(-1357f - -1745f) >= _wgslsmith_f_op_f32(func_1(vec2<f32>(var_0.b.c.x, global2.x), vec3<i32>(var_2.b.x, -2147483647i, 467i))), any(vec4<bool>(global3[_wgslsmith_index_u32(0u, 13u)], false, false, false)) & true, var_3.a.x >= var_0.a.x, var_2.b.x < func_2(-1222f).b.x), ~var_3.b.b, _wgslsmith_f_op_vec3_f32(select(var_3.b.c, var_0.b.c, func_2(669f).a.yxw)), var_0.b.d), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.c) * vec4<f32>(var_3.c.x, var_3.a.x, -231f, -1000f))))), vec3<i32>(abs(~(~var_2.b.x)), _wgslsmith_div_i32(var_3.d.x, -2147483647i), var_2.b.x));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-724f, -1000f)))));
    global1 = array<vec3<bool>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(-1331f, 667f, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, ~var_0.d.x, _wgslsmith_clamp_i32(~var_1.x, -2147483647i | var_3.d.x, 0i), _wgslsmith_sub_i32(-8187i ^ var_3.d.x, -var_1.x)), min(~(vec4<i32>(var_3.b.b.x, -1i, -41503i, var_1.x) ^ vec4<i32>(var_3.d.x, 1i, var_3.d.x, var_1.x)), -reverseBits(vec4<i32>(var_1.x, var_3.d.x, 2147483647i, var_1.x))), ~(~vec4<i32>(-1i, var_1.x, var_2.b.x, -1i) | select(vec4<i32>(-2147483647i, var_3.d.x, -14065i, -1i), vec4<i32>(14385i, 47609i, var_3.b.b.x, -2147483647i), true))));
}

