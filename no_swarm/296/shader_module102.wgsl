struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: vec4<i32>;

var<private> global2: f32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> u32 {
    let var_0 = firstLeadingBit(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 27952u) & u_input.a, max(reverseBits(vec2<u32>(u_input.a.x, u_input.a.x)), max(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)))));
    global1 = _wgslsmith_mod_vec4_i32((~vec4<i32>(-1i, arg_0.x, arg_2.x, arg_0.x) << (select(vec4<u32>(0u, var_0.x, var_0.x, 1u), vec4<u32>(4294967295u, u_input.a.x, 0u, var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], false, true)) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(var_0.x), ~u_input.a.x), 1u, _wgslsmith_clamp_u32(~var_0.x, var_0.x ^ 16137u, ~1u), ~1u) % vec4<u32>(32u)), arg_0);
    return abs(var_0.x);
}

fn func_2() -> f32 {
    let var_0 = !select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(35890u ^ _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 9u)], false), global0[_wgslsmith_index_u32(~func_3(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, 4206i), vec4<i32>(global1.x, 2147483647i, global1.x, 1i)), select(vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], true, global0[_wgslsmith_index_u32(16216u, 9u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(9457u, 9u)])), vec2<i32>(2147483647i, global1.x)), 9u)]);
    global2 = -1000f;
    let var_1 = Struct_1(select(-26904i, select(32350i, -1i, any(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]))), true), _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_add_u32(~u_input.a.x, u_input.a.x), 24052u), ~max(34438u, ~0u)), !(!(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), var_0, var_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -890f, -1396f)), select(vec2<bool>(!global0[_wgslsmith_index_u32(min(4294967295u, 0u), 9u)], var_0.x), select(!select(var_0, vec2<bool>(var_0.x, true), true), var_0, !var_0), !vec2<bool>(true, !global0[_wgslsmith_index_u32(u_input.a.x, 9u)])));
    let var_2 = true;
    var var_3 = select(!vec4<bool>(true == !var_1.c.x, any(!vec3<bool>(var_2, var_0.x, var_1.e.x)), true, false), vec4<bool>(any(!vec3<bool>(global0[_wgslsmith_index_u32(55674u, 9u)], var_2, var_1.c.x)), true, var_2, false), true);
    return 837f;
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    let var_0 = arg_0;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_2()), -1000f, 483f, -200f);
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 25765i), vec2<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(932i, -2147483647i, 2147483647i), global1.xzz)), -1i)), ~(~(~0u)), !arg_0.c, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1672f), _wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(func_2())), select(vec2<bool>(all(select(arg_0.c, arg_0.e, true)), true), select(arg_0.e, var_0.c, select(vec2<bool>(false, var_0.c.x), !vec2<bool>(arg_0.c.x, arg_0.c.x), vec2<bool>(false, true))), select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.b, 9u)], true), !arg_0.c, vec2<bool>(global0[_wgslsmith_index_u32(var_0.b, 9u)] | var_0.e.x, select(false, arg_0.e.x, true)))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(~reverseBits(global1.x) >> (_wgslsmith_mult_u32(func_1(Struct_1(1i, u_input.a.x, vec2<bool>(true, global0[_wgslsmith_index_u32(51532u, 9u)]), vec3<f32>(-652f, -431f, 233f), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)]))) | _wgslsmith_dot_vec3_u32(vec3<u32>(31078u, 0u, 44943u), vec3<u32>(1u, 1u, u_input.a.x)), ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) % 32u), firstTrailingBit(max(_wgslsmith_clamp_i32(1i, global1.x, min(0i, global1.x)), global1.x)), -55049i, -4549i);
    global0 = array<bool, 9>();
    var var_0 = Struct_1(~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global1.zy, _wgslsmith_mod_vec2_i32(global1.xz, global1.zw)), _wgslsmith_mult_vec2_i32(-global1.yy, vec2<i32>(global1.x, -41487i))), _wgslsmith_dot_vec4_u32(select(abs(vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x)), ~(~vec4<u32>(1u, 28292u, u_input.a.x, 76157u)), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], false, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(6963u, 9u)]), global0[_wgslsmith_index_u32(u_input.a.x, 9u)])), ~countOneBits(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u))), !vec2<bool>(!any(vec3<bool>(global0[_wgslsmith_index_u32(13589u, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(1u, 9u)])), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-876f, 214f, 1528f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-348f, -911f, 1000f) + vec3<f32>(1000f, -441f, 114f)))))), select(vec2<bool>(!any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)])), true), vec2<bool>(!all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)])), global0[_wgslsmith_index_u32(func_3(select(vec4<i32>(-47144i, -1i, -2590i, 8490i), vec4<i32>(-26436i, 7414i, global1.x, global1.x), vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], true)), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], false), global1.zz), 9u)]), true));
    global1 = vec4<i32>(1i, var_0.a, min(-_wgslsmith_dot_vec4_i32(~vec4<i32>(-15344i, 0i, 5152i, global1.x), ~vec4<i32>(2147483647i, 2147483647i, -1i, 46796i)), min(-56152i << (0u % 32u), var_0.a) | _wgslsmith_mult_i32(~global1.x, _wgslsmith_div_i32(global1.x, -23693i))), -5875i);
    global0 = array<bool, 9>();
    global2 = _wgslsmith_f_op_f32(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(~var_0.b, 33214u), ~1u, 3985u), abs(-abs(-1i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1577f, -1081f, var_0.d.x))))), vec3<f32>(1000f, var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -167f))));
}

