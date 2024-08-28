struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_div_vec3_u32(~firstTrailingBit(~arg_2), u_input.b);
    let var_1 = ~arg_1.x;
    var var_2 = Struct_1(~_wgslsmith_mod_i32(u_input.a.x >> (firstTrailingBit(3020u) % 32u), 2147483647i), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))));
    return _wgslsmith_mult_u32(~(~(countOneBits(0u) | _wgslsmith_dot_vec2_u32(arg_2.yz, var_0.yy))), firstTrailingBit(~0u));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = vec3<u32>(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(17678u, u_input.d, arg_1)), ~u_input.e) ^ func_3(firstLeadingBit(u_input.e.xz), _wgslsmith_add_vec2_u32(vec2<u32>(arg_1, 0u), vec2<u32>(u_input.e.x, arg_1)), u_input.e | u_input.b)), ~arg_1, _wgslsmith_div_u32(4294967295u, arg_1));
    var var_1 = 433f;
    var var_2 = arg_3;
    var var_3 = !(!(!(!(1i > arg_3.a))));
    var var_4 = arg_0;
    return _wgslsmith_mod_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(14827u, 0u, 0u, 71466u)), select(vec4<u32>(85202u, u_input.e.x, var_0.x, 63693u), vec4<u32>(1u, 28402u, 0u, arg_1), true)), max(~vec4<u32>(0u, u_input.e.x, 1u, 1u), vec4<u32>(u_input.b.x, 44265u, u_input.e.x, var_0.x)), vec4<u32>(70490u, ~var_0.x, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, 54538u), vec3<u32>(u_input.c, 4294967295u, var_0.x))))), abs(firstTrailingBit(vec4<u32>(arg_1, 0u, 20526u, arg_1))) & _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 11835u, arg_1), min(vec4<u32>(1u, arg_1, 35750u, arg_1), vec4<u32>(arg_1, var_0.x, 0u, 0u))), select(vec4<u32>(u_input.e.x, u_input.c, 4294967295u, 23596u), select(vec4<u32>(38591u, 31689u, u_input.e.x, u_input.d), vec4<u32>(29744u, var_0.x, 74704u, 0u), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(u_input.a.x >> (_wgslsmith_clamp_u32(~4294967295u | ~u_input.c, u_input.b.x, abs(1u)) % 32u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-212f, -1770f, 1147f), vec3<f32>(-1000f, 461f, 639f))), vec3<f32>(-984f, 525f, 1000f))))));
    let var_1 = abs(u_input.e.zx);
    var var_2 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.b.x, var_1.x, var_1.x, var_1.x)), ~(~vec4<u32>(var_1.x, u_input.e.x, 1u, 4929u))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(17428u, 1u, 41676u, var_1.x)), ~vec4<u32>(u_input.d, 19021u, u_input.b.x, 4294967295u) & vec4<u32>(58777u, 29544u, u_input.b.x, var_1.x)), ~(~func_2(u_input.a.yy, var_1.x, var_0, var_0)));
    var var_3 = var_2.x;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_1();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x * arg_0.b.x), 1947f, arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -293f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.x)) + _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-2089f, -769f), _wgslsmith_div_f32(arg_3.b.x, 1000f)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.b.x))));
    var_0 = func_1();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 27082u;
    var_0 = 1u;
    let var_1 = vec4<bool>(any(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true)), true, true, 1u != _wgslsmith_add_u32(abs(_wgslsmith_sub_u32(u_input.b.x, u_input.e.x)), u_input.b.x));
    var_0 = ~115260u;
    var var_2 = var_1.x;
    var var_3 = func_4(func_1(), func_1(), _wgslsmith_mod_u32(0u >> (_wgslsmith_sub_u32(45502u, u_input.c) % 32u), 4294967295u) >= u_input.e.x, Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(u_input.a.x, 1i)), 1i), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(1000f - -1676f)), -1013f)));
    var_0 = _wgslsmith_add_u32(41516u, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(vec2<u32>(~(~5934u), u_input.b.x), u_input.b.yx | u_input.b.yy, ~(~u_input.e.yx)), u_input.a.xxz, firstLeadingBit(~_wgslsmith_div_i32(-1i, firstTrailingBit(-1i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_3.b.x, 834f)))));
}

