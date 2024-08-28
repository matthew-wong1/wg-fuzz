struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: i32 = -1i;

var<private> global2: bool = false;

var<private> global3: vec4<i32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> i32 {
    global0 = array<i32, 24>();
    return ~(i32(-1i) * -firstLeadingBit(_wgslsmith_mod_i32(global3.x, global0[_wgslsmith_index_u32(54060u, 24u)])));
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = arg_1;
    global1 = func_2();
    global3 = vec4<i32>(-(1i << (u_input.a.x % 32u)), ~countOneBits(~global3.x), -(~(-24608i) >> (~u_input.d % 32u)), firstLeadingBit(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(global3.x, global3.x)), select(vec2<i32>(arg_0, global3.x), global3.yw, var_0.b)))) ^ max(_wgslsmith_add_vec4_i32(-reverseBits(vec4<i32>(1i, arg_0, 2147483647i, arg_0)), -countOneBits(vec4<i32>(global3.x, -1i, global0[_wgslsmith_index_u32(4294967295u, 24u)], -1972i))), -(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], global0[_wgslsmith_index_u32(79448u, 24u)], -1i, -54842i) | ~vec4<i32>(-4955i, -17082i, -12792i, global3.x)));
    global0 = array<i32, 24>();
    var var_1 = !(!vec2<bool>(all(vec2<bool>(false, false)), false));
    return u_input.a.wyx;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: bool) -> vec4<i32> {
    let var_0 = Struct_5(arg_0, arg_1.b, arg_1.c);
    let var_1 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(arg_1.a.x, 24u)], _wgslsmith_clamp_i32(-32741i | global0[_wgslsmith_index_u32(arg_0.x, 24u)], i32(-1i) * -10199i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 2147483647i, global3.x, global3.x), vec4<i32>(0i, -72357i, global3.x, global3.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(-49014i, global3.x, global3.x), ~global3.yzy))), vec3<i32>(~(-12134i), func_2(), global0[_wgslsmith_index_u32(min(arg_0.x, _wgslsmith_mod_u32(u_input.c.x, 70009u)), 24u)]) << (arg_1.a % vec3<u32>(32u)));
    let var_2 = Struct_1(670f, var_0.c);
    global3 = vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], 1i, -9719i, abs(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, -40977i), global3.www), vec3<i32>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(41907u, 24u)])), countOneBits(reverseBits(global3.x)))));
    global0 = array<i32, 24>();
    return _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(1i, 1i, -8418i, -9538i)) ^ -vec4<i32>(global0[_wgslsmith_index_u32(arg_0.x, 24u)], global3.x, global0[_wgslsmith_index_u32(u_input.d, 24u)], 1i), vec4<i32>(_wgslsmith_sub_i32(2147483647i, 22497i), min(-2147483647i, var_1), _wgslsmith_add_i32(5789i, 931i), -var_1) >> (u_input.a % vec4<u32>(32u))), abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(global3.x, -2147483647i, -2147483647i, var_1), max(vec4<i32>(var_1, 0i, var_1, global3.x), vec4<i32>(var_1, global0[_wgslsmith_index_u32(arg_1.a.x, 24u)], 2147483647i, -2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(u_input.b, u_input.d, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1701f)), _wgslsmith_f_op_f32(select(-927f, -292f, true))) >= -884f));
    global0 = array<i32, 24>();
    global3 = -(func_3(func_1(global3.x >> (0u % 32u), Struct_4(true, false), Struct_2(vec3<bool>(false, false, false), 716f, 4294967295u, 946f)), Struct_5(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, var_0, u_input.d), u_input.c), vec2<bool>(true, true), true), Struct_1(_wgslsmith_f_op_f32(-341f - 579f), false), true) << (select(vec4<u32>(u_input.b, u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 22480u, var_0, 10029u)), ~u_input.d), ~vec4<u32>(var_0, 6169u, 130947u, var_0), false) % vec4<u32>(32u)));
    var var_1 = min(min(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], func_3(~(vec3<u32>(76881u, var_0, 1u) & vec3<u32>(var_0, 43860u, 41917u)), Struct_5(_wgslsmith_clamp_vec3_u32(u_input.a.wyw, vec3<u32>(0u, 7802u, 21671u), vec3<u32>(1u, var_0, u_input.a.x)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), any(vec2<bool>(false, true))), Struct_1(1189f, false), any(vec3<bool>(true, true, true))).x), global0[_wgslsmith_index_u32(25792u, 24u)]);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1000f)))) + 1438f)), true);
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-var_2.a), true || var_2.b);
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, _wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_f_op_f32(abs(var_3.a)), _wgslsmith_f_op_f32(ceil(var_2.a)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-981f, var_3.a, var_3.a, 784f))) - vec4<f32>(var_2.a, var_3.a, var_3.a, var_2.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-599f, -162f, var_2.a, -110f), vec4<f32>(var_2.a, -2162f, var_2.a, 2101f))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2114f) - _wgslsmith_f_op_f32(-var_3.a)), _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(step(-510f, _wgslsmith_f_op_f32(sign(var_3.a)))), -651f)), any(!(!select(vec2<bool>(true, var_2.b), vec2<bool>(var_2.b, false), vec2<bool>(var_2.b, var_2.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~1u, 24u)], global3.x), -18418i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], global3.x)), select(~_wgslsmith_add_u32(var_0, u_input.b), ~(~25771u), var_2.b) ^ ~(~u_input.a.x), func_3(select(~abs(vec3<u32>(4589u, 3424u, 4294967295u)), vec3<u32>(~0u, 36449u, ~var_0), select(!vec3<bool>(false, var_2.b, false), !vec3<bool>(var_3.b, var_3.b, var_3.b), select(vec3<bool>(var_3.b, var_2.b, var_3.b), vec3<bool>(var_2.b, var_2.b, false), vec3<bool>(var_3.b, var_2.b, var_3.b)))), Struct_5(vec3<u32>(~19040u, u_input.b, abs(u_input.c.x)), select(!vec2<bool>(var_2.b, false), select(vec2<bool>(false, false), vec2<bool>(false, var_2.b), true), any(vec3<bool>(var_2.b, var_3.b, var_3.b))), var_3.b), Struct_1(-367f, any(select(vec2<bool>(true, false), vec2<bool>(var_2.b, var_3.b), vec2<bool>(false, var_2.b)))), var_2.b | var_3.b).xz, _wgslsmith_mult_u32(reverseBits(_wgslsmith_clamp_u32(26156u, ~21930u, var_0 << (38450u % 32u))), 14248u), global3.xw);
}

