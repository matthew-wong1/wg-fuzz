struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 45050i;

var<private> global1: array<Struct_1, 5>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global0 = u_input.a;
    global0 = _wgslsmith_div_i32(1i, max(u_input.a ^ u_input.e.x, u_input.e.x));
    var var_0 = firstLeadingBit(u_input.e.x);
    global0 = u_input.e.x;
    global0 = -(~abs(-u_input.a & _wgslsmith_dot_vec2_i32(u_input.e.xw, u_input.e.ww)));
    return u_input.c;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: u32) -> vec2<u32> {
    var var_0 = (1u & func_3()) <= firstTrailingBit(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.c.x, 0u, 15930u), vec4<u32>(arg_0.c.x, arg_3, 118u, u_input.c))));
    return max(arg_0.c, vec2<u32>(~arg_3, ~1u));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(firstLeadingBit(i32(-1i) * -u_input.e.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e.x, -15758i, -15334i, u_input.e.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 1u, 63374u, 6744u), vec4<u32>(u_input.c, 44199u, u_input.b, 63567u)) % vec4<u32>(32u)), u_input.e, ~vec4<i32>(u_input.a, u_input.a, u_input.e.x, u_input.a) << (~firstTrailingBit(vec4<u32>(u_input.d, 4294967295u, u_input.c, u_input.d)) % vec4<u32>(32u))), func_2(global1[_wgslsmith_index_u32(abs(69809u), 5u)], _wgslsmith_div_vec3_f32(vec3<f32>(1186f, _wgslsmith_div_f32(-263f, 457f), _wgslsmith_div_f32(122f, -284f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(2460f)), -303f, _wgslsmith_f_op_f32(max(810f, -748f)))), firstTrailingBit(max(vec4<i32>(-2147483647i, u_input.a, 2147483647i, 0i) & u_input.e, vec4<i32>(1i, u_input.a, -13683i, 0i))), _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 70076u), vec2<u32>(20795u, 4294967295u))), max(abs(26762u), ~26974u))));
    var var_1 = vec3<bool>(true, _wgslsmith_sub_i32(u_input.e.x, firstLeadingBit(u_input.a) >> (27007u % 32u)) >= firstTrailingBit(1i), all(!vec4<bool>(true, all(vec4<bool>(false, false, false, true)), true, true)));
    global0 = select(-25528i, -1i, true);
    global1 = array<Struct_1, 5>();
    var var_2 = vec3<u32>(select(u_input.c, ~_wgslsmith_mod_u32(var_0.c.x, firstLeadingBit(u_input.c)), !(~1u >= var_0.c.x)), min(0u, firstTrailingBit(~(~var_0.c.x))), _wgslsmith_dot_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_0.c.x), vec2<u32>(1u, 1u)), ~_wgslsmith_div_vec2_u32(var_0.c, var_0.c), any(var_1.zz)), firstTrailingBit(vec2<u32>(u_input.b, 124u))));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -u_input.e.x;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_div_f32(480f, -112f) * -1193f))))));
    let var_1 = select(u_input.e, ~(~u_input.e), select(select(vec4<bool>(any(vec4<bool>(false, true, false, false)), false, true, all(vec3<bool>(false, false, true))), vec4<bool>(true, true, false, true), any(vec3<bool>(false, false, false))), vec4<bool>(true, all(vec4<bool>(true, true, false, true)) || true, all(vec3<bool>(false, false, true)), true), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(false, true, any(vec2<bool>(true, true)), true))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1656f);
    var var_2 = global1[_wgslsmith_index_u32(max(u_input.d, 33908u), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_add_i32(-var_1.x, var_2.b.x)), vec2<u32>(func_3(), var_2.c.x));
}

