struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true));

var<private> global1: array<u32, 18>;

var<private> global2: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false));

var<private> global3: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    global1 = array<u32, 18>();
    var var_0 = -u_input.a;
    global0 = array<vec4<bool>, 28>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(759f * -1293f)))));
    return 34387u;
}

fn func_2(arg_0: vec4<u32>) -> vec3<f32> {
    global3 = array<vec3<bool>, 18>();
    var var_0 = Struct_1(any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true), all(vec2<bool>(true, false)) | true)), -355f, select(vec2<bool>(any(select(global0[_wgslsmith_index_u32(arg_0.x, 28u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23127u, 18u)], 28u)], vec4<bool>(false, false, true, true))), any(vec2<bool>(false, false))), vec2<bool>(!select(false, true, true), false), select(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true)), true, all(!global0[_wgslsmith_index_u32(arg_0.x, 28u)]))));
    let var_1 = func_3();
    global1 = array<u32, 18>();
    let var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~(vec4<u32>(arg_0.x, arg_0.x, var_1, var_1) << (arg_0 % vec4<u32>(32u))) >> (vec4<u32>(28719u, 3406u, var_1, firstTrailingBit(var_1)) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_1, var_1, 11591u, 4294967295u), ~vec4<u32>(arg_0.x, 75055u, 172u, arg_0.x))), vec4<u32>(0u, arg_0.x, countOneBits(1u), ~arg_0.x));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, var_0.b) + vec3<f32>(var_0.b, var_0.b, -1120f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, var_0.b) + vec3<f32>(988f, var_0.b, var_0.b)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b, -736f, var_0.b))) + vec3<f32>(733f, 511f, -1786f)))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = -7677i;
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(~0u, arg_0, ~global1[_wgslsmith_index_u32(8393u, 18u)], 19435u))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(275f)), _wgslsmith_f_op_f32(f32(-1f) * -1847f), _wgslsmith_div_f32(1282f, 249f))))));
    var var_2 = Struct_2(Struct_1(false, var_1.x, vec2<bool>(true, true)));
    global3 = array<vec3<bool>, 18>();
    var var_3 = vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(0u << (1u % 32u)), 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, global1[_wgslsmith_index_u32(arg_0, 18u)]), vec2<u32>(4294967295u, arg_0)), ~global1[_wgslsmith_index_u32(0u, 18u)]), vec2<u32>(_wgslsmith_div_u32(arg_0, arg_0), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 9717u, global1[_wgslsmith_index_u32(0u, 18u)]), 18u)])) ^ _wgslsmith_mult_u32(13035u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, global1[_wgslsmith_index_u32(arg_0, 18u)], arg_0, 1u), vec4<u32>(17438u, 59351u, 18513u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)])), _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(21827u, 18u)], 29407u), vec2<u32>(15973u, 4294967295u)))));
    return Struct_2(var_2.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = select(vec2<bool>(arg_2.a.a, arg_2.a.c.x), !arg_0.c, arg_0.a);
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(10409i, 19060i, -1i, u_input.a)), vec4<i32>(-(u_input.a << (28771u % 32u)), i32(-1i) * -u_input.a, 602i, u_input.a)), _wgslsmith_clamp_i32(-reverseBits(u_input.a), -18208i ^ u_input.a, abs(-56817i)), _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, -41804i)) | reverseBits(894i), ~u_input.a >> ((1u << (1u % 32u)) % 32u))), u_input.a);
    var_0 = !arg_1.c;
    var var_2 = func_1(_wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(108021u, 18u)]));
    var var_3 = Struct_2(Struct_1(any(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 54397u, 8485u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16293u, 18u)], 18u)], 18u)]), vec4<u32>(10143u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], 102957u, global1[_wgslsmith_index_u32(4294967295u, 18u)])), 28u)], !vec4<bool>(true, true, arg_1.a, var_2.a.a), !vec4<bool>(var_0.x, var_0.x, false, arg_0.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_2.a.b)))), vec2<bool>(true, var_2.a.c.x)));
    return Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(1u, 18u)]), 18u)], 29409u, 28908u), 18u)] <= _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(39770u, global1[_wgslsmith_index_u32(4294967295u, 18u)], 54738u), ~vec3<u32>(51389u, 0u, global1[_wgslsmith_index_u32(7152u, 18u)])), global1[_wgslsmith_index_u32((global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41337u, 18u)], 18u)] & 4294967295u) ^ 50131u, 18u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.b) + -666f), -773f))), !(!(!var_2.a.c)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> u32 {
    global2 = array<vec3<bool>, 9>();
    let var_0 = func_1(~(~(~60154u))).a;
    let var_1 = _wgslsmith_sub_vec3_u32(select(vec3<u32>(firstLeadingBit(35810u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31916u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)]), _wgslsmith_mod_u32(firstTrailingBit(global1[_wgslsmith_index_u32(8484u, 18u)]), 1u), 4294967295u), select(~_wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 0u, 0u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 7230u, global1[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, global1[_wgslsmith_index_u32(11599u, 18u)]), vec3<u32>(1u, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30171u, 18u)], 18u)], 18u)])), true), !(!(-1458f >= arg_3.a.b))), vec3<u32>(~(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10750u, 18u)], 18u)], 18u)], 18u)]), ~(~(~7019u)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(select(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)]), 1u, !var_0.c.x), 18u)], global1[_wgslsmith_index_u32(12297u, 18u)]), 18u)]));
    return ~firstTrailingBit(~var_1.x);
}

fn func_6(arg_0: i32, arg_1: vec3<i32>, arg_2: f32, arg_3: i32) -> Struct_2 {
    global1 = array<u32, 18>();
    global2 = array<vec3<bool>, 9>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_add_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(78039u, 18u)], 18u)], 49847u), 1u) > 11399u, _wgslsmith_f_op_vec3_f32(func_2(select(~vec4<u32>(1u, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(9223u, 18u)], 25352u), ~vec4<u32>(global1[_wgslsmith_index_u32(0u, 18u)], 4294967295u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66857u, 18u)], 18u)], 18u)]), global0[_wgslsmith_index_u32(66704u, 28u)]))).x, select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, false))), vec2<bool>(true, func_4(Struct_1(false, -1482f, vec2<bool>(true, true)), Struct_1(true, arg_2, vec2<bool>(false, true)), Struct_2(Struct_1(false, arg_2, vec2<bool>(true, true)))).a))));
    var var_1 = ~(vec3<i32>(-1i) * -arg_1);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-439f, -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_2)), _wgslsmith_f_op_f32(var_0.a.b * -140f))))), _wgslsmith_f_op_f32(206f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, arg_2) * var_0.a.b))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, _wgslsmith_f_op_f32(step(var_0.a.b, arg_2)), _wgslsmith_f_op_f32(2008f - arg_2)) - vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.a.b)), func_1(40653u).a.b, _wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(1044f + arg_2)))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(u_input.a, max(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, -1i, 2147483647i)), vec3<i32>(u_input.a, 1i, 3686i)), min(vec3<i32>(u_input.a, u_input.a, -1i) & vec3<i32>(-2147483647i, u_input.a, -1i), firstLeadingBit(vec3<i32>(u_input.a, 1i, u_input.a)))) | countOneBits(vec3<i32>(u_input.a, reverseBits(u_input.a), 1i)), _wgslsmith_f_op_f32(round(-1183f)), (-u_input.a ^ 0i) << (func_5(-(~(-12999i)), func_4(Struct_1(true, 564f, vec2<bool>(false, false)), Struct_1(false, 1088f, vec2<bool>(true, true)), func_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)], 18u)])), vec2<bool>(true, true), func_1(global1[_wgslsmith_index_u32(4294967295u, 18u)])) % 32u));
    let var_1 = Struct_1(!all(global3[_wgslsmith_index_u32(~(2448u << (global1[_wgslsmith_index_u32(59960u, 18u)] % 32u)), 18u)]), -1325f, var_0.a.c);
    let var_2 = select(_wgslsmith_mod_vec2_u32(vec2<u32>(~75722u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)] | 4294967295u, 18u)]) & (abs(vec2<u32>(global1[_wgslsmith_index_u32(26433u, 18u)], 1u)) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(55624u, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(75308u, 18u)], 18u)], 18u)]), vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]))), select(~(~vec2<u32>(global1[_wgslsmith_index_u32(9069u, 18u)], 0u)), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(49028u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)]), vec2<u32>(17232u, global1[_wgslsmith_index_u32(33057u, 18u)]))), var_0.a.c)), select(vec2<u32>(global1[_wgslsmith_index_u32(74776u, 18u)], global1[_wgslsmith_index_u32(36398u, 18u)]), vec2<u32>(_wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 18u)]), abs(1781u)), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 18u)] >> (9093u % 32u), ~4294967295u) > global1[_wgslsmith_index_u32(~37041u, 18u)]), var_0.a.c);
    var var_3 = abs(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, u_input.a) | firstTrailingBit(5987i), 1i, u_input.a), u_input.a));
    let var_4 = Struct_2(func_1(_wgslsmith_div_u32(~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 18u)], var_2.x), 103984u)).a);
    var_0 = Struct_2(func_4(var_1, func_4(func_1(65752u).a, var_1, Struct_2(var_1)), var_4));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>((global1[_wgslsmith_index_u32(var_2.x, 18u)] & 37177u) | 58246u, firstLeadingBit(~1u), 4294967295u), ((~vec4<i32>(-2147483647i, -1i, -15528i, 47925i) & vec4<i32>(var_3.x, var_3.x, var_3.x, -43599i)) >> (vec4<u32>(1u, ~32365u, global1[_wgslsmith_index_u32(abs(0u), 18u)], global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(var_2.x, 18u)], 18u)]) % vec4<u32>(32u))) ^ select(-(vec4<i32>(var_3.x, var_3.x, -1564i, -22982i) & vec4<i32>(2147483647i, u_input.a, var_3.x, var_3.x)), vec4<i32>(u_input.a, 2147483647i, var_3.x, var_3.x) << (countOneBits(vec4<u32>(var_2.x, 1u, var_2.x, global1[_wgslsmith_index_u32(4294967295u, 18u)])) % vec4<u32>(32u)), true), min(~(~abs(vec3<u32>(global1[_wgslsmith_index_u32(0u, 18u)], var_2.x, 50661u))), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(75716u, var_2.x, 1u), vec3<u32>(global1[_wgslsmith_index_u32(var_2.x, 18u)], var_2.x, 17057u))) & _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 4294967295u, 6015u), _wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(60509u, 18u)], 1u, var_2.x), vec3<u32>(0u, 1u, 5103u)))), _wgslsmith_f_op_f32(f32(-1f) * -302f), ((var_2 >> (vec2<u32>(global1[_wgslsmith_index_u32(var_2.x, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)]) % vec2<u32>(32u))) >> (~var_2 % vec2<u32>(32u))) >> (vec2<u32>(~4294967295u, select(var_2.x, global1[_wgslsmith_index_u32(var_2.x, 18u)] & var_2.x, var_0.a.a | var_4.a.c.x)) % vec2<u32>(32u)));
}

