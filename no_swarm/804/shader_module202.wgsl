struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: u32) -> vec4<u32> {
    let var_0 = arg_0;
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    let var_1 = select(select(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(arg_0 >= u_input.a, false), !(arg_1.x < -1116f)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, any(vec4<bool>(true, false, false, true))), all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))))), vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec3<bool>(false, false, all(vec4<bool>(true, true, false, false))))), select(vec2<bool>(!all(vec4<bool>(false, true, false, false)), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))))));
    global0 = array<Struct_1, 27>();
    return vec4<u32>(firstLeadingBit(_wgslsmith_mod_u32(1u, arg_2)), 34203u, _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(1u, arg_2, 42506u)), vec3<u32>(arg_2, ~10286u, reverseBits(4294967295u))), ~(~(~83294u)));
}

fn func_2() -> vec2<f32> {
    let var_0 = 4294967295u;
    let var_1 = firstTrailingBit(~(~abs(select(vec4<u32>(4294967295u, 0u, 40895u, var_0), vec4<u32>(var_0, var_0, var_0, 95859u), vec4<bool>(false, false, true, false)))));
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(~min(var_1, vec4<u32>(4294967295u, 1u, var_0, var_1.x)) >> (var_1 % vec4<u32>(32u)), func_3(u_input.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-373f, 1032f, 1000f, -472f))), 1u) << (var_1 % vec4<u32>(32u)))), 27u)];
    var var_3 = ~((_wgslsmith_mod_vec2_u32(vec2<u32>(2785u, 43396u), ~var_1.wz) >> (_wgslsmith_add_vec2_u32(var_1.wx | var_1.yy, ~vec2<u32>(var_0, var_1.x)) % vec2<u32>(32u))) ^ vec2<u32>(var_0, 4294967295u));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_2.a)));
    return var_4.a;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = ~countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 26713u), vec2<u32>(9995u, 3635u), vec2<bool>(true, false)), vec2<u32>(1u, 0u)), ~(~93443u)));
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_2()));
    global0 = array<Struct_1, 27>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x) - vec2<f32>(-1000f, var_1.a.x)))))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 27>();
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_f_op_f32(-arg_0.a.x)));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -116f), _wgslsmith_f_op_f32(trunc(813f))));
    global0 = array<Struct_1, 27>();
    let var_2 = 90184u;
    return func_1(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(0u, 27u)];
    let var_1 = func_4(func_1(false));
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_0.a.x) - vec2<f32>(-1211f, -2069f)) - _wgslsmith_f_op_vec2_f32(-var_0.a))));
    var var_3 = u_input.a;
    var var_4 = max(u_input.a, -17946i);
    var var_5 = global0[_wgslsmith_index_u32(51014u, 27u)];
    var var_6 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a * _wgslsmith_div_vec2_f32(var_2.a, vec2<f32>(var_2.a.x, 409f))) * var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_2()).x))), _wgslsmith_dot_vec3_u32(~vec3<u32>(30547u, 0u, 4294967295u) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 10447u, 0u), vec3<u32>(38755u, 14661u, 44718u), vec3<u32>(4294967295u, 0u, 115870u)), vec3<u32>(4294967295u, 1u, ~0u)) & ~9028u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.a.x, var_1.a.x, 2202f)))))), select(-vec3<i32>(-20258i, u_input.a & u_input.a, _wgslsmith_mod_i32(-2147483647i, -70427i)), select(max(-vec3<i32>(15078i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 9457i)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-31960i, u_input.a, u_input.a), vec3<i32>(39899i, 30861i, 0i), vec3<i32>(u_input.a, -1i, u_input.a)), ~vec3<i32>(2147483647i, -7355i, 15169i)), vec3<bool>(true, true, true)), (i32(-1i) * -15472i) != _wgslsmith_mult_i32(~u_input.a, 35601i)), _wgslsmith_f_op_f32(1f * -1549f));
}

