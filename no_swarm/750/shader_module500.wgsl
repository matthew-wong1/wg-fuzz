struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(47623u, 0u, 4294967295u, 0u, 63675u, 19318u, 112382u, 4294967295u, 48133u, 0u, 26049u, 16056u, 42244u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> i32 {
    var var_0 = vec2<i32>(-1i, -24238i);
    return u_input.c.x;
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: f32) -> vec3<bool> {
    let var_0 = arg_0;
    var var_1 = u_input.a.zww;
    var_1 = min(_wgslsmith_clamp_vec3_u32(u_input.a.zwz, u_input.a.www, ~min(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7917u, 13u)], 13u)], 13u)], 4294967295u, 4294967295u) | vec3<u32>(u_input.a.x, 4294967295u, 6279u), ~vec3<u32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 0u))), u_input.a.yyz);
    let var_2 = max(vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(66771u, 1u, var_1.x), u_input.a.wwy)) ^ ~(~u_input.b), ~firstLeadingBit(var_1.x), 1u, countOneBits(~u_input.d)), ~(~firstTrailingBit(u_input.a)));
    let var_3 = vec2<i32>(u_input.c.x, firstLeadingBit(u_input.c.x));
    return !select(select(vec3<bool>(!arg_0, var_0, !var_0), vec3<bool>(var_0, false, -2147483647i < u_input.c.x), select(vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, false, arg_0), any(vec4<bool>(true, arg_0, arg_0, arg_0)))), vec3<bool>(!arg_0, true, arg_0 & !arg_0), vec3<bool>(false, var_0, any(!vec4<bool>(true, false, true, arg_0))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: u32) -> bool {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(func_2() ^ ~35032i, ~u_input.c.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, u_input.b | 1u, 0u), select(vec3<u32>(4294967295u, 12862u, global0[_wgslsmith_index_u32(1u, 13u)]), vec3<u32>(28576u, 0u, arg_2), arg_0.x != arg_0.x)) % 32u), ~firstTrailingBit(u_input.c.x));
    var var_1 = Struct_3(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-21588i, -7977i), -2147483647i), select(vec2<i32>(13944i, -7260i), u_input.c, true)), select(func_3(any(vec2<bool>(arg_1.x, false)), arg_0.xz, _wgslsmith_f_op_f32(abs(226f))), select(vec3<bool>(true, arg_1.x, false), !vec3<bool>(arg_1.x, arg_1.x, false), !vec3<bool>(false, arg_1.x, true)), select(select(vec3<bool>(arg_1.x, false, false), vec3<bool>(true, true, false), vec3<bool>(arg_1.x, arg_1.x, false)), func_3(arg_1.x, arg_0.xz, arg_0.x), arg_1.x))), any(func_3(true, vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), arg_0.x), 1297f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1559f, -570f), vec2<f32>(-1431f, arg_0.x), true)) + _wgslsmith_div_vec2_f32(arg_0.zy, vec2<f32>(1220f, -329f))))));
    let var_2 = vec4<i32>(~_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_sub_i32(-15855i, 9046i)), ~var_1.a.a.x), var_0, 5255i ^ func_2(), -2147483647i ^ _wgslsmith_mult_i32(~(u_input.c.x >> (u_input.b % 32u)), ~_wgslsmith_div_i32(var_0, -12640i)));
    let var_3 = ~(-((firstLeadingBit(2147483647i) | -var_1.a.a.x) << (firstLeadingBit(4294967295u) % 32u)));
    global0 = array<u32, 13>();
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool) -> vec4<f32> {
    let var_0 = Struct_2(~_wgslsmith_mod_vec2_u32(select(countOneBits(u_input.a.yz), vec2<u32>(4294967295u, u_input.b) ^ vec2<u32>(17302u, 0u), arg_0.x), select(u_input.a.wz & vec2<u32>(u_input.b, 50941u), vec2<u32>(u_input.d, u_input.d), true)), Struct_1(reverseBits(~vec2<i32>(u_input.c.x, 33062i) & u_input.c), arg_0.wxx));
    global0 = array<u32, 13>();
    var var_1 = 4294967295u;
    var var_2 = arg_0.wz;
    var var_3 = true;
    return vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(752f, _wgslsmith_f_op_f32(min(795f, 151f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -448f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -525f))))), _wgslsmith_div_f32(-1304f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1135f, -381f)), -1440f))), -877f, -1184f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(!(!any(vec2<bool>(true, true))), true, !(true || func_1(vec3<f32>(703f, 1000f, 1000f), vec2<bool>(true, false), 38702u)), func_3(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(698f, -151f), vec2<f32>(644f, 241f)))), _wgslsmith_f_op_f32(1388f - -1106f)).x), true));
    var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_1.x, -687f)), _wgslsmith_f_op_f32(var_1.x * var_1.x), select(false, false, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x), var_1.x, _wgslsmith_f_op_f32(floor(2488f)))));
    var var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.a.x, 33488u)), min(vec2<u32>(_wgslsmith_div_u32(0u, 1u), global0[_wgslsmith_index_u32(~51339u, 13u)]), u_input.a.xy)), u_input.a.yx);
    var_0 = ~u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(firstLeadingBit(~(vec3<i32>(u_input.c.x, -28654i, -2147483647i) | vec3<i32>(-15420i, var_0.x, 1i))), ~_wgslsmith_div_vec3_i32(-vec3<i32>(-30481i, 0i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), 545f, ~max(~21879u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 1u, 19839u), u_input.a), reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27010u, 13u)], 13u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.wy)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.wxy * _wgslsmith_f_op_vec3_f32(ceil(var_1.xyy)))))));
}

