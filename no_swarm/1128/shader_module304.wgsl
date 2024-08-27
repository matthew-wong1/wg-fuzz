struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 18831i;

var<private> global1: array<Struct_1, 28>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec2<bool>) -> i32 {
    let var_0 = Struct_1(vec2<i32>(min(firstTrailingBit(2147483647i), _wgslsmith_mult_i32(select(0i, u_input.a.x, false), -35127i)), -1708i), any(select(vec2<bool>(any(vec4<bool>(true, arg_2.x, true, true)), false), arg_2, any(!vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)))), 34884i, arg_1.x << (firstLeadingBit(u_input.b.x) % 32u));
    var var_1 = select(vec4<bool>(!(arg_2.x || !arg_2.x), ~u_input.a.x != _wgslsmith_add_i32(2147483647i, abs(u_input.a.x)), false != (-u_input.a.x < 0i), 1f == _wgslsmith_f_op_f32(trunc(112f))), !vec4<bool>(!(arg_0.x != -5553i), _wgslsmith_f_op_f32(round(-1220f)) != -753f, all(select(vec3<bool>(false, var_0.b, arg_2.x), vec3<bool>(arg_2.x, true, true), vec3<bool>(var_0.b, true, false))), (var_0.d > u_input.b.x) | select(arg_2.x, false, false)), !(!select(select(vec4<bool>(true, true, true, arg_2.x), vec4<bool>(var_0.b, var_0.b, false, var_0.b), var_0.b), !vec4<bool>(arg_2.x, arg_2.x, var_0.b, arg_2.x), select(false, false, var_0.b))));
    let var_2 = var_0;
    var_1 = vec4<bool>(any(select(!vec4<bool>(var_0.b, arg_2.x, true, var_1.x), !select(vec4<bool>(arg_2.x, false, true, var_2.b), vec4<bool>(arg_2.x, false, false, var_2.b), vec4<bool>(true, true, true, var_2.b)), any(!vec4<bool>(false, var_0.b, var_0.b, true)))), true, var_0.b, true);
    var var_3 = var_2;
    return max(var_3.c, 7836i);
}

fn func_2(arg_0: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(max(70070u, u_input.b.x), u_input.b.x), 4294967295u), u_input.b.x), ~vec2<u32>(arg_0, 4294967295u) | u_input.b);
    let var_1 = Struct_1(u_input.a.yz, !(var_0 > ~_wgslsmith_mod_u32(38518u, var_0)), u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0, arg_0), select(vec2<u32>(u_input.b.x, u_input.b.x) << (u_input.b % vec2<u32>(32u)), abs(vec2<u32>(21573u, 100625u)), vec2<bool>(true, true))), u_input.b));
    global0 = _wgslsmith_clamp_i32(min(var_1.a.x, 32974i), u_input.a.x & _wgslsmith_dot_vec3_i32(u_input.a.wzy, vec3<i32>(u_input.a.x, func_3(vec2<i32>(-72042i, 1i), vec2<u32>(4294967295u, 60897u), vec2<bool>(var_1.b, true)), u_input.a.x)), u_input.a.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1415f - 1408f), _wgslsmith_f_op_f32(1493f - -419f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(314f, 254f)))))));
    global1 = array<Struct_1, 28>();
    return vec2<bool>(true, true);
}

fn func_1() -> bool {
    var var_0 = -968f;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(u_input.b.x), u_input.b.x), 28u)];
    return all(func_2(countOneBits(u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = select(!(!vec4<bool>(var_0, func_1(), true, !var_0)), vec4<bool>(false, var_0, (~u_input.b.x << (23880u % 32u)) > ~select(u_input.b.x, 59392u, var_0), false), !var_0);
    var var_2 = vec3<u32>(_wgslsmith_clamp_u32(10937u, u_input.b.x, 46188u), 0u, 91632u);
    global1 = array<Struct_1, 28>();
    var var_3 = Struct_1(-u_input.a.wy, true, 29223i, 47581u);
    var var_4 = Struct_1(var_3.a, -973f > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -530f, true))))), -u_input.a.x, select(0u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(20352u, 31787u, u_input.b.x, var_2.x)), ~vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.b.x) ^ vec4<u32>(0u, var_3.d, var_3.d, 29987u)), func_2(1u).x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~16432u, 15556u, select(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.d, 1u), var_2.yx), var_2.xy), ~var_2.x ^ 65560u, true)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -619f), -1000f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1523f, _wgslsmith_f_op_f32(f32(-1f) * -1702f))))), 1u, ~(~(~vec3<u32>(u_input.b.x, 1u, var_3.d))));
}

