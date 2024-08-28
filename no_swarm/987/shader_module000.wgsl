struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a), select(arg_0.b, all(vec2<bool>(true, arg_0.b | true)), any(select(!vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(true, false, arg_0.b), select(vec3<bool>(true, true, arg_0.b), vec3<bool>(false, false, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, true))))), _wgslsmith_clamp_i32(max(countOneBits(u_input.a.x), i32(-1i) * -31805i), -abs(-2147483647i), -abs(-21583i)));
    global0 = array<Struct_1, 10>();
    let var_1 = !select(vec4<bool>(any(!vec2<bool>(true, arg_0.b)), !var_0.b, any(select(vec3<bool>(false, true, false), vec3<bool>(var_0.b, var_0.b, arg_0.b), vec3<bool>(arg_0.b, var_0.b, var_0.b))), all(vec3<bool>(var_0.b, true, true))), !(!vec4<bool>(arg_0.b, arg_0.b, var_0.b, false)), select(select(vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, true, arg_0.b, false), vec4<bool>(arg_0.b, true, arg_0.b, false)), vec4<bool>(true, true, var_0.b, false), vec4<bool>(false, var_0.b, 52125u < u_input.b.x, true)));
    var var_2 = global0[_wgslsmith_index_u32(81660u, 10u)];
    var var_3 = 386f;
    return vec4<f32>(var_0.a.x, 851f, var_2.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * _wgslsmith_f_op_f32(exp2(var_2.a.x)))))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(1u, 55933u))), 10u)])), vec4<f32>(-1000f, arg_0.x, _wgslsmith_f_op_f32(arg_0.x + 328f), _wgslsmith_f_op_f32(round(-240f)))), any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(false, false, true), all(vec4<bool>(false, true, false, true))), vec3<bool>(true, true, true), true)), ~u_input.a.x);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 10>();
    let var_0 = Struct_2(arg_2.a, arg_3.a.x);
    return func_2(_wgslsmith_f_op_vec3_f32(arg_3.a.yxy + arg_3.a.xwx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_0 = func_1(!(true & (any(vec3<bool>(true, true, false)) || true)), u_input.a, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-510f, 258f) * vec2<f32>(-1000f, -1424f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1040f, 942f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(812f, 350f))))), _wgslsmith_f_op_f32(-1f)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-933f, -494f, -1000f, 290f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1209f, -647f, 1771f, -734f))) * vec4<f32>(-1400f, _wgslsmith_f_op_f32(floor(-427f)), _wgslsmith_f_op_f32(1299f + 2453f), 514f)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), u_input.a.x));
    global0 = array<Struct_1, 10>();
    var var_1 = var_0.c < -countOneBits(1i);
    var var_2 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(~(u_input.b.x << (12972u % 32u)), ~57736u)), 10u)];
    var_0 = func_1(var_2.b, vec4<i32>(_wgslsmith_add_i32(2147483647i, ~0i) >> (_wgslsmith_mult_u32(u_input.b.x, 1u) % 32u), countOneBits(~_wgslsmith_clamp_i32(u_input.a.x, 0i, u_input.a.x)), -17836i, _wgslsmith_dot_vec2_i32(max(_wgslsmith_sub_vec2_i32(u_input.a.zy, u_input.a.zx), countOneBits(u_input.a.yy)), u_input.a.yw)), Struct_2(func_2(_wgslsmith_div_vec3_f32(func_1(var_0.b, u_input.a, Struct_2(vec2<f32>(var_0.a.x, 141f), -1295f), Struct_1(var_2.a, true, var_0.c)).a.wyx, vec3<f32>(var_2.a.x, var_0.a.x, var_2.a.x))).a.xy, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(417f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(-1000f, var_2.a.x, var_2.a.x, -670f), false, u_input.a.x))).x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.x - 771f))))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, -1000f, -110f, var_2.a.x)) - _wgslsmith_f_op_vec4_f32(-var_0.a)))), ((u_input.a.x >> (u_input.b.x % 32u)) > 1i) & var_0.b, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec4<u32>(u_input.b.x, ~u_input.b.x, ~1u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1935u, 4294967295u, u_input.b.x), vec4<u32>(51652u, u_input.b.x, u_input.b.x, u_input.b.x)))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 0u, u_input.b.x)) >> (firstTrailingBit(vec3<u32>(u_input.b.x, 1u, 4294967295u)) % vec3<u32>(32u)), select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), !vec3<bool>(true, var_2.b, var_2.b))), vec3<u32>(~_wgslsmith_clamp_u32(71669u, 1u, u_input.b.x), 1u, _wgslsmith_div_u32(u_input.b.x, u_input.b.x) | ~u_input.b.x)));
}

