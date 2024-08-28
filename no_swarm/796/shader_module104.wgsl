struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 6431i;

var<private> global1: array<vec2<u32>, 13>;

var<private> global2: array<f32, 11>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    var var_0 = 0u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(27376u, 11u)], global2[_wgslsmith_index_u32(38219u, 11u)])) + -2874f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(1193f)), select(!vec4<bool>(all(vec3<bool>(false, true, true)), global2[_wgslsmith_index_u32(1u, 11u)] < global2[_wgslsmith_index_u32(113960u, 11u)], true, any(vec4<bool>(false, true, true, false))), vec4<bool>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 11u)] - global2[_wgslsmith_index_u32(9953u, 11u)]) < _wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 11u)], -301f), false, true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)))), vec2<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))), false || select(false, true, any(vec4<bool>(true, true, false, true)))));
    let var_3 = vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 50816u, 11534u), ~vec4<u32>(1u, 4294967295u, 1u, 32161u)), 1u), 11u)], -1677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-197f))))));
    var_0 = 53297u;
    return ~vec4<u32>(104934u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(58762u, 1u), global1[_wgslsmith_index_u32(1u, 13u)]), 1u), 1u, 1086u);
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: bool) -> Struct_2 {
    let var_0 = ~firstLeadingBit(vec2<i32>(1i, 41019i));
    var var_1 = Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(80339u, 29923u, 4294967295u, 28680u), vec4<u32>(0u, 0u, 38700u, 4294967295u), ~vec4<u32>(0u, 60137u, 5410u, 99906u))) << (vec4<u32>(5531u, ~(~4294967295u), ~(~17410u), ~countOneBits(0u)) % vec4<u32>(32u)));
    var_1 = Struct_2(var_1.a);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(~(~55853u), 11u)], global2[_wgslsmith_index_u32(~var_1.a.x, 11u)]))));
    let var_3 = Struct_2(func_3());
    return var_3;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> vec2<i32> {
    global2 = array<f32, 11>();
    var var_0 = !(!select(vec4<bool>(true, false, true, select(false, true, false)), vec4<bool>(true, false, arg_0 > arg_0, true), vec4<bool>(1u >= arg_1.a.x, true, true, all(vec3<bool>(false, false, false)))));
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_div_i32(_wgslsmith_add_i32(1i, u_input.a.x), reverseBits(u_input.a.x) >> (_wgslsmith_mult_u32(34990u, arg_2) % 32u)), ~(-(~u_input.a.x)), (1i | _wgslsmith_dot_vec3_i32(u_input.a.ywz, u_input.a.zzw)) ^ 9701i), vec4<i32>(u_input.a.x, 1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, -1i), vec3<i32>(-26679i, u_input.a.x, u_input.a.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(910i, -2147483647i, 27667i, u_input.a.x), vec4<i32>(u_input.a.x, -31834i, u_input.a.x, u_input.a.x)), reverseBits(u_input.a.x))) << (arg_1.a % vec4<u32>(32u)));
    let var_2 = _wgslsmith_dot_vec4_i32(min(vec4<i32>(_wgslsmith_div_i32(-1i, -var_1.x), select(var_1.x, 1i, !var_0.x), -45984i, select(var_1.x, var_1.x, var_0.x)), ~(~u_input.a)), -var_1);
    var_0 = !select(!select(!vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, false)), select(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), !vec4<bool>(true, var_0.x, false, var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false))), !vec4<bool>(false, var_0.x, false, false), !(global2[_wgslsmith_index_u32(30455u, 11u)] != -1106f)), !any(select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, false), var_0.x)));
    return vec2<i32>(0i, -44045i);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_2) -> vec4<bool> {
    global1 = array<vec2<u32>, 13>();
    global1 = array<vec2<u32>, 13>();
    let var_0 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), true)), vec3<bool>(select(true, true, false), true, any(vec3<bool>(true, true, true))), true);
    let var_1 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1852f))));
    let var_2 = arg_2;
    return !vec4<bool>(true, var_0.x || var_0.x, !all(vec2<bool>(true, false)), any(!select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32) -> u32 {
    var var_0 = func_5(func_4(global2[_wgslsmith_index_u32(reverseBits(arg_1.a.x), 11u)], func_2(abs(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 35408i)), u_input.a.x, true & (global2[_wgslsmith_index_u32(arg_1.a.x, 11u)] < global2[_wgslsmith_index_u32(arg_2, 11u)])), abs(_wgslsmith_dot_vec2_u32(firstLeadingBit(arg_1.a.yx), vec2<u32>(arg_2, 0u)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(24521u, 11u)] - global2[_wgslsmith_index_u32(22577u, 11u)]), 1393f, global2[_wgslsmith_index_u32(arg_1.a.x, 11u)], _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), vec4<f32>(1636f, _wgslsmith_f_op_f32(438f * 873f), 513f, _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-821f, arg_0.x, -139f, 1235f))))), func_2(_wgslsmith_sub_vec4_i32(select(-u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, 3616i, u_input.a.x), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false)), _wgslsmith_add_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(-17698i, -40785i, -61707i, 2147483647i), u_input.a))), -firstTrailingBit(u_input.a.x), any(vec2<bool>(true, any(vec3<bool>(false, false, false))))));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(var_1.a.zx), _wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(var_1.a.x, 13u)], arg_1.a.zw)), ~var_1.a.xz), 11u)], _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(floor(329f)), global2[_wgslsmith_index_u32(4294967295u, 11u)]));
    let var_3 = arg_2;
    let var_4 = select(_wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(arg_1.a.x, 4294967295u, var_1.a.x, var_3)), ~vec4<u32>(var_1.a.x, 4294967295u, 0u, arg_2)), vec4<u32>(_wgslsmith_div_u32(arg_1.a.x, arg_2) & ~var_3, ~(~var_1.a.x), ~1u, 1u), var_0.x) & _wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, 0u, arg_1.a.x, var_3) | _wgslsmith_div_vec4_u32(arg_1.a, vec4<u32>(var_3, var_3, 1u, 39437u)), arg_1.a, true), countOneBits(~(~arg_1.a)), abs(min(firstLeadingBit(vec4<u32>(4294967295u, arg_1.a.x, 14136u, 79316u)), abs(arg_1.a))));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 11>();
    var var_0 = reverseBits(0u) >> (1u % 32u);
    global2 = array<f32, 11>();
    var var_1 = firstLeadingBit(u_input.a.yzz);
    let var_2 = Struct_2(vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(~7967u), _wgslsmith_add_u32(func_1(vec3<f32>(global2[_wgslsmith_index_u32(8481u, 11u)], 528f, -1195f), Struct_2(vec4<u32>(8694u, 0u, 20163u, 0u)), 4294967295u), _wgslsmith_mod_u32(4294967295u, 1u))), _wgslsmith_div_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 81499u), vec4<u32>(51531u, 4294967295u, 15266u, 42438u))), countOneBits(firstLeadingBit(1u))), _wgslsmith_mod_u32(~_wgslsmith_add_u32(0u, 4294967295u), abs(1u)), ~firstLeadingBit(4294967295u >> (0u % 32u))));
    var var_3 = 1i;
    let var_4 = Struct_2(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(((i32(-1i) * -80770i) >> ((1u & var_4.a.x) % 32u)) | abs(~reverseBits(var_1.x)), _wgslsmith_mult_i32(~min(-u_input.a.x, select(2147483647i, -27770i, true)), _wgslsmith_mod_i32(-1i, var_1.x | var_1.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.yxy << (_wgslsmith_add_vec3_u32(vec3<u32>(var_2.a.x, 16144u, var_4.a.x), vec3<u32>(var_4.a.x, 4294967295u, var_2.a.x)) % vec3<u32>(32u)), select(min(u_input.a.zyw, u_input.a.wzx), ~u_input.a.wxx, true)), var_1.x), _wgslsmith_div_i32(29829i, u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(1453f)), 642f, _wgslsmith_f_op_f32(step(-574f, global2[_wgslsmith_index_u32(var_4.a.x, 11u)]))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-155f, global2[_wgslsmith_index_u32(var_4.a.x, 11u)], 1754f))))));
}

