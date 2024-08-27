struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -75637i;

var<private> global1: array<vec3<bool>, 4>;

var<private> global2: array<Struct_2, 26>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_2(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~(~arg_0.a), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0.a, arg_0.a), vec3<u32>(arg_0.a.x, 1u, 0u) & vec3<u32>(75026u, 0u, arg_0.a.x))), vec3<u32>(_wgslsmith_dot_vec3_u32(max(arg_0.a, vec3<u32>(0u, arg_0.a.x, arg_0.a.x)), arg_0.a), _wgslsmith_mod_u32(arg_0.a.x, 1u), _wgslsmith_add_u32(~4294967295u, min(0u, 3310u)))), max(~(firstLeadingBit(1i) >> (abs(1u) % 32u)), -19814i), arg_0.c, vec4<bool>(true, all(select(arg_0.d, vec4<bool>(false, arg_0.d.x, arg_0.d.x, arg_0.d.x), !arg_0.d)), !any(arg_0.d.xx), 21765u == arg_0.a.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.a, arg_0.c.a) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(135f, -220f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.c.a, arg_0.c.a)))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -537f), 352f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.a, arg_0.c.a))))), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a, arg_0.c.a)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.c.a, arg_0.c.a))))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -971f));
    global1 = array<vec3<bool>, 4>();
    global0 = var_0.b;
    return 0u;
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    global2 = array<Struct_2, 26>();
    var var_0 = countOneBits(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 33446u, arg_0.x), ~vec3<u32>(arg_0.x, arg_0.x, 1u)), 0u));
    var var_1 = global1[_wgslsmith_index_u32(arg_0.x, 4u)];
    let var_2 = select(!vec4<bool>(true, var_1.x, true, true), vec4<bool>(!var_1.x, !(false && (var_1.x || false)), true, var_1.x), any(!select(global1[_wgslsmith_index_u32(firstLeadingBit(0u), 4u)], vec3<bool>(true, true, true), !global1[_wgslsmith_index_u32(arg_0.x, 4u)])));
    var var_3 = var_1.x;
    return ~(~15171u | func_3(global2[_wgslsmith_index_u32(abs(select(1u, arg_0.x, var_1.x)), 26u)]));
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    let var_0 = abs(~abs(vec2<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a << (18543u % 32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(arg_0.x)));
    let var_2 = vec3<u32>(countOneBits(~24393u), 1u, min(firstTrailingBit(1u), func_2(vec4<u32>(22574u, 1u, abs(1703u), abs(1u)))));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_2.x, var_2.x), ~10383u), firstTrailingBit(var_2.x)), ~var_2.x, var_2.x), 26u)];
    let var_4 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(549f, var_1.a)), -1481f, var_3.d.x)))));
    return -27971i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(20802i, u_input.a), abs(vec2<i32>(u_input.a, -6007i))), -(~25319i)) & u_input.a, u_input.a);
    let var_0 = ~vec2<i32>(firstLeadingBit(_wgslsmith_add_i32(-2147483647i, u_input.a | 1820i)), countOneBits(u_input.a | ~6533i));
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_0.x, func_1(vec3<f32>(-781f, _wgslsmith_f_op_f32(509f - 269f), _wgslsmith_f_op_f32(-341f - -683f)))), max(abs(~(~vec3<i32>(13030i, 12596i, 0i))), min(~vec3<i32>(0i, -2147483647i, var_0.x) & (vec3<i32>(u_input.a, u_input.a, 44675i) ^ vec3<i32>(50120i, 1i, u_input.a)), -vec3<i32>(var_0.x, 0i, 1i) & vec3<i32>(u_input.a, u_input.a, -2147483647i))));
    global2 = array<Struct_2, 26>();
    let var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(~1u), 26u)];
    var var_3 = ~vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_1.x, u_input.a) & -var_2.b, u_input.a, ~firstTrailingBit(u_input.a)), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, var_1.x, u_input.a), firstLeadingBit(vec3<i32>(-1i, 27927i, 1i))), 0i, -19380i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.c.a, var_2.c.a, var_2.c.a), vec3<f32>(431f, var_2.c.a, 216f), vec3<bool>(var_2.d.x, var_2.d.x, false))), vec3<f32>(var_2.c.a, -2581f, 267f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.a, var_2.c.a, 1409f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(119f, -1187f, -289f), _wgslsmith_f_op_vec3_f32(vec3<f32>(2682f, var_2.c.a, var_2.c.a) * vec3<f32>(-280f, -1966f, var_2.c.a))))), var_0, i32(-1i) * -max(i32(-1i) * -2147483647i, _wgslsmith_add_i32(-1i, 48033i)), func_1(vec3<f32>(_wgslsmith_f_op_f32(step(var_2.c.a, _wgslsmith_f_op_f32(trunc(var_2.c.a)))), _wgslsmith_f_op_f32(-var_2.c.a), 865f)));
}

