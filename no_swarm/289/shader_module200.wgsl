struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: array<vec2<i32>, 5>;

var<private> global2: array<f32, 23>;

var<private> global3: array<u32, 7>;

var<private> global4: vec2<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<u32> {
    return min(_wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(_wgslsmith_sub_u32(0u, 0u)), 4294967295u, reverseBits(global3[_wgslsmith_index_u32(~9299u, 7u)])), ~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(global3[_wgslsmith_index_u32(16690u, 7u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11176u, 7u)], 7u)], 7u)]), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50969u, 7u)], 7u)], 7u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)], 22077u)), min(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15049u, 7u)], 7u)], 7u)], 7u)], 4294967295u, global3[_wgslsmith_index_u32(40838u, 7u)]), vec3<u32>(global3[_wgslsmith_index_u32(0u, 7u)], 1u, global3[_wgslsmith_index_u32(40152u, 7u)])), vec3<u32>(global3[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5079u, 7u)], 7u)], 7u)], 44481u))), vec3<u32>(1u, ~(~countOneBits(global3[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], global3[_wgslsmith_index_u32(20524u, 7u)])), 6112u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<u32> {
    global2 = array<f32, 23>();
    let var_0 = select(-vec2<i32>(-_wgslsmith_mult_i32(-1i, u_input.a), _wgslsmith_div_i32(_wgslsmith_add_i32(global4.x, u_input.a), select(global0[_wgslsmith_index_u32(arg_2.a.x, 9u)], -47651i, true))), vec2<i32>(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-21881i, -u_input.a), ~2147483647i >> (_wgslsmith_clamp_u32(22529u, global3[_wgslsmith_index_u32(0u, 7u)], arg_0.a.x) % 32u))), vec2<bool>(true, true));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)) * _wgslsmith_f_op_f32(-arg_1.x)), Struct_1(func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1544f, arg_1.x)) + 546f)), arg_0.c));
    global3 = array<u32, 7>();
    let var_2 = ((vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(25576i, 0i), global1[_wgslsmith_index_u32(66109u, 5u)]), u_input.a, 2147483647i) >> (_wgslsmith_div_vec3_u32(reverseBits(arg_2.a), reverseBits(vec3<u32>(44351u, 0u, 0u))) % vec3<u32>(32u))) ^ vec3<i32>(0i, ~(i32(-1i) * -2147483647i), ~global0[_wgslsmith_index_u32(41577u | var_1.b.a.x, 9u)])) ^ _wgslsmith_sub_vec3_i32(~(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, 1i, 2147483647i), vec3<i32>(-32422i, 5562i, u_input.a)) | (vec3<i32>(1i, -2147483647i, global4.x) ^ vec3<i32>(-1i, 16921i, global4.x))), ~_wgslsmith_div_vec3_i32(~vec3<i32>(1i, global4.x, 2147483647i), ~vec3<i32>(-17953i, -2147483647i, 1i)));
    return vec2<u32>(arg_0.a.x ^ arg_2.a.x, abs(_wgslsmith_mult_u32(~0u << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.a.x, 4294967295u), vec2<u32>(28281u, arg_0.a.x)) % 32u), reverseBits(1980u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_2) -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(~(~(~1u ^ _wgslsmith_mult_u32(countOneBits(0u), 86977u & arg_0.x))), 7u)];
    let var_1 = arg_3.b.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_1, 23u)], 1753f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(475f, global2[_wgslsmith_index_u32(4294967295u, 23u)]) - vec2<f32>(1256f, -441f))), arg_3.b.c, arg_2))) * arg_3.b.c);
    var var_3 = arg_3;
    let var_4 = true;
    return global0[_wgslsmith_index_u32(1u, 9u)] >> (4294967295u % 32u);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<f32> {
    let var_0 = !(!arg_2.x) && (global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(108840u, 7u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(60818u, 7u)], 7u)], arg_0.b.a.x), vec4<u32>(global3[_wgslsmith_index_u32(69827u, 7u)], global3[_wgslsmith_index_u32(3265u, 7u)], 46756u, global3[_wgslsmith_index_u32(arg_1.a.x, 7u)]) >> (vec4<u32>(1u, 32442u, 53096u, arg_1.a.x) % vec4<u32>(32u))), 23u)] < arg_0.b.c.x);
    global4 = ~(~(~vec2<i32>(global4.x, select(global4.x, u_input.a, false))));
    global4 = vec2<i32>(max(func_4(func_2(Struct_1(vec3<u32>(6428u, arg_1.a.x, arg_0.b.a.x), 422f, arg_1.c), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-375f, -569f, arg_0.b.b, 497f))), Struct_1(vec3<u32>(0u, arg_0.b.a.x, arg_0.b.a.x), arg_1.c.x, vec2<f32>(339f, 801f))), countOneBits(vec3<i32>(0i, global0[_wgslsmith_index_u32(arg_0.b.a.x, 9u)], u_input.a) | vec3<i32>(-7330i, 2147483647i, u_input.a)), false, arg_0), firstTrailingBit(~(-21817i))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(select(global1[_wgslsmith_index_u32(~arg_0.b.a.x, 5u)], ~vec2<i32>(global4.x, -23766i), vec2<bool>(true, var_0)), min(-global1[_wgslsmith_index_u32(arg_0.b.a.x, 5u)], -vec2<i32>(-16585i, -52280i))), -global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.a, ~arg_0.b.a), 5u)]));
    var var_1 = select(arg_2.x, !(~(~33814u) == _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(arg_1.a, arg_1.a), global3[_wgslsmith_index_u32(arg_1.a.x, 7u)], 62636u | global3[_wgslsmith_index_u32(arg_1.a.x, 7u)])), !(-361f <= _wgslsmith_f_op_f32(-arg_1.c.x)));
    var var_2 = arg_0.b.a.xx;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_0.a)))), arg_1.b) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.c.x, -1473f) - _wgslsmith_f_op_vec2_f32(arg_1.c - arg_1.c)))));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    global1 = array<vec2<i32>, 5>();
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], 7u)] << (global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 7u)]), 7u)] % 32u), 1u), 4498u, 1u), _wgslsmith_f_op_f32(step(-355f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(4294967295u, 7u)], 23u)])) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.x - 754f)))))), arg_2);
    var var_1 = _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(func_3().x, min(62355u, global3[_wgslsmith_index_u32(var_0.a.x, 7u)]), 0u & var_0.a.x, global3[_wgslsmith_index_u32(16152u, 7u)]), vec4<u32>(48860u, ~var_0.a.x, max(1u, global3[_wgslsmith_index_u32(2576u, 7u)]), select(0u, 1633u, false))), vec4<u32>(reverseBits(37969u), 34761u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(countOneBits(1u), var_0.a.x >> (global3[_wgslsmith_index_u32(2949u, 7u)] % 32u)), global3[_wgslsmith_index_u32(func_3().x, 7u)]), 5791u));
    let var_2 = var_0.a.x;
    let var_3 = select(select(!select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true)), !vec3<bool>(arg_0, true, arg_0), !vec3<bool>(true, arg_0, false)), select(vec3<bool>(arg_0, any(vec3<bool>(arg_0, false, arg_0)), arg_0), vec3<bool>(true, arg_0, !arg_0), false && !arg_0), 0u < var_1.x), select(!(!vec3<bool>(arg_0, arg_0, true)), vec3<bool>(true, all(vec4<bool>(arg_0, arg_0, true, arg_0)), false), select(!vec3<bool>(arg_0, false, true), !(!vec3<bool>(false, arg_0, arg_0)), vec3<bool>(!arg_0, arg_0, any(vec3<bool>(false, arg_0, arg_0))))), vec3<bool>(arg_0, arg_0, arg_0));
    return Struct_1(var_1.zwz, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 7u)], 23u)] * global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)], 23u)])))))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(true, -2147483647i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(747f, 994f)), _wgslsmith_f_op_f32(floor(-679f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(1265f, Struct_1(vec3<u32>(9858u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(75883u, 7u)], 7u)], 7u)], global3[_wgslsmith_index_u32(1u, 7u)]), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17512u, 7u)], 7u)], 23u)], vec2<f32>(-129f, 857f))), Struct_1(vec3<u32>(0u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8832u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)]), -1000f, vec2<f32>(1532f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 23u)])), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-796f, -256f) + vec2<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4054u, 7u)], 23u)], -897f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(45691u, 23u)], 429f) + _wgslsmith_f_op_vec2_f32(func_1(Struct_2(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(51539u, 7u)], 7u)], 7u)], 23u)], Struct_1(vec3<u32>(1459u, 1u, 61254u), 972f, vec2<f32>(1666f, -434f))), Struct_1(vec3<u32>(4294967295u, 28250u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)]), 606f, vec2<f32>(global2[_wgslsmith_index_u32(0u, 23u)], 1443f)), vec3<bool>(true, true, true))))))));
    let var_1 = -27334i;
    global4 = ~(~vec2<i32>(35313i, ~(1i << (global3[_wgslsmith_index_u32(var_0.a.x, 7u)] % 32u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(round(1368f)), -1024f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_2(global2[_wgslsmith_index_u32(0u, 23u)], Struct_1(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27470u, 7u)], 7u)], 7u)], var_0.a.x, 0u), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a.x, 7u)], 23u)], vec2<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a.x, 7u)], 23u)], -1099f))), Struct_1(var_0.a, -408f, vec2<f32>(802f, -602f)), vec3<bool>(true, true, false))).x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + -1997f) * _wgslsmith_div_f32(var_0.c.x, -117f))), -1000f)));
    global1 = array<vec2<i32>, 5>();
    let var_3 = min(abs(select(select(-vec4<i32>(global0[_wgslsmith_index_u32(42124u, 9u)], -1i, var_1, global0[_wgslsmith_index_u32(0u, 9u)]), vec4<i32>(global4.x, -1i, global4.x, -2147483647i) & vec4<i32>(global0[_wgslsmith_index_u32(49602u, 9u)], -38972i, -4950i, global4.x), any(vec3<bool>(false, false, false))), vec4<i32>(2147483647i, -u_input.a, _wgslsmith_mod_i32(-1i, 27137i), var_1), vec4<bool>(true, true, true, true))), vec4<i32>(9072i, ~reverseBits(abs(u_input.a)), -2147483647i, 0i));
    var var_4 = select(select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), all(vec2<bool>(true, true)) | true), select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), false), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 7u)] > 40117u)), vec2<bool>(true, true), select(vec2<bool>(all(vec4<bool>(false, true, false, false)), false), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true)), vec2<bool>(true, true))), vec2<bool>(true, true));
    var_0 = Struct_1(func_3(), global2[_wgslsmith_index_u32(41139u ^ var_0.a.x, 23u)], var_0.c);
    var var_5 = vec3<i32>(-8062i, -1i, countOneBits(1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mult_u32(var_0.a.x, var_0.a.x), ~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1679u, 28761u), 7u)], 7u)], 1u & var_0.a.x), 0u), max(firstTrailingBit(~func_3().x), 23081u));
}

