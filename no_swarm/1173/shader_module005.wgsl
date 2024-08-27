struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(-547f, firstLeadingBit(_wgslsmith_sub_i32(-17226i, u_input.a)));
    let var_1 = _wgslsmith_f_op_f32(-global0.a.a.x);
    let var_2 = 1u;
    global0 = Struct_3(Struct_1(global0.a.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a))));
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1536f, var_0.a, 168f, -1535f) + vec4<f32>(var_0.a, -802f, -1408f, var_0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a.a - vec4<f32>(1913f, var_1, var_0.a, 330f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - -138f)))));
    return var_0;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_4) -> vec2<bool> {
    let var_0 = abs(20290u);
    var var_1 = Struct_3(global0.a, _wgslsmith_f_op_f32(min(arg_2.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global0.b, -492f)))))))));
    let var_2 = _wgslsmith_mod_i32(-(~(i32(-1i) * -57287i)), _wgslsmith_add_i32(arg_3.b, -6570i));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1046f));
    var var_4 = -2147483647i;
    return select(select(vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(global0.a.a.x < arg_2.a.x, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), any(vec4<bool>(false, false, false, false)))), vec2<bool>(all(vec2<bool>(true, false)), true)), select(vec2<bool>(true, any(vec2<bool>(true, false))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), any(vec4<bool>(true, false, false, true))), vec2<bool>(true, true)), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-global0.a.a.x);
    let var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(1u, 27853u, 8085u))), vec3<u32>(countOneBits(20379u), ~0u, max(4294967295u, 0u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), ~5081u);
    var var_2 = arg_1;
    let var_3 = _wgslsmith_clamp_i32(-1i, ~(-8652i), (-_wgslsmith_div_i32(u_input.b, -34250i) << (abs(1u) % 32u)) >> (var_1.x % 32u));
    var var_4 = func_3(~(reverseBits(var_1.x) | var_1.x), 47030u, global0.a, func_2());
    return Struct_3(global0.a, _wgslsmith_f_op_f32(round(var_0)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_3 {
    global0 = func_1(arg_1.a.a, select(vec3<bool>(true, _wgslsmith_mult_i32(1i, -44954i) != select(-41807i, -9904i, false), true), vec3<bool>(true, true, true), all(vec2<bool>(all(vec3<bool>(true, true, false)), false))));
    var var_0 = Struct_3(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.a.x, -342f, 260f, global0.a.a.x), vec4<f32>(arg_0.x, arg_1.a.a.x, 1000f, -262f)))), vec3<bool>(true, true, true)).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(global0.a.a.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(ceil(1000f)))))));
    var_0 = arg_1;
    return func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(vec4<f32>(-465f, 307f, -1836f, global0.a.a.x) + _wgslsmith_f_op_vec4_f32(-var_0.a.a)))), !(!vec3<bool>(true, true, arg_0.x > -496f)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3) -> StorageBuffer {
    return StorageBuffer(u_input.c.x, firstTrailingBit(arg_0), _wgslsmith_f_op_vec2_f32(trunc(global0.a.a.ww)), -29030i, abs(arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(vec2<u32>(~reverseBits(~0u), firstLeadingBit(1u) << (min(1u, ~1u) % 32u)), func_4(global0.a.a, func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, global0.a.a.x, 642f)), _wgslsmith_div_vec4_f32(global0.a.a, global0.a.a))), vec3<bool>(true, true, false))));
}

