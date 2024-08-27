struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = arg_0;
    var_0 = arg_0;
    var_0 = arg_0;
    var_0 = Struct_1(var_0.a, _wgslsmith_div_vec3_u32(min(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b.x, u_input.b.x, 4294967295u), arg_0.b), vec3<u32>(1u, 73834u, firstLeadingBit(4294967295u))), vec3<u32>(4294967295u, u_input.b.x, 106930u)));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(440f, -1511f, -2480f, 754f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(281f, 1000f, 509f, -1434f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-112f, 1296f, -1769f, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1370f, -587f, -1065f, 1234f), vec4<f32>(570f, 2094f, -2550f, 1173f), vec4<bool>(false, false, true, false))))))));
    return arg_0.b;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: bool) -> Struct_1 {
    var var_0 = false;
    let var_1 = arg_0;
    var var_2 = arg_0;
    var var_3 = false;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(650f, _wgslsmith_f_op_f32(step(arg_1, arg_1)))))) + vec2<f32>(arg_1, arg_1));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> StorageBuffer {
    let var_0 = arg_0;
    let var_1 = func_3(Struct_1(vec2<i32>(2147483647i, -1i), _wgslsmith_mod_vec3_u32(vec3<u32>(54947u, 77452u, 43709u) << (vec3<u32>(14733u, var_0.b.x, u_input.b.x) % vec3<u32>(32u)), max(vec3<u32>(17068u, var_0.b.x, 75037u), ~vec3<u32>(arg_1.b.x, 0u, 4294967295u)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_dot_vec3_u32(~(~func_2(arg_1)), vec3<u32>(firstTrailingBit(1u), ~1u, ~(~u_input.b.x))), true);
    return StorageBuffer(reverseBits(1u), func_3(var_0, 1f, _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b.x, var_0.b.x), func_3(arg_1, -359f, arg_1.b.x, false).b.x), var_0.b.x), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)) && all(vec2<bool>(true, true))).b.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = Struct_1(vec2<i32>(u_input.a, _wgslsmith_clamp_i32(~(-u_input.c.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, -1i), 0i), -u_input.d)), vec3<u32>(min(u_input.b.x, 6224u), u_input.b.x, u_input.b.x));
    let var_2 = Struct_1(var_1.a << (select(vec2<u32>(_wgslsmith_add_u32(1u, var_1.b.x), _wgslsmith_mod_u32(4294967295u, u_input.b.x)), u_input.b.xx, true) % vec2<u32>(32u)), u_input.b);
    let var_3 = firstTrailingBit(var_1.a.x);
    let var_4 = ~select(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, var_1.b.x), vec3<u32>(11074u, var_1.b.x, 20360u) | vec3<u32>(var_1.b.x, var_2.b.x, 0u)), ~vec3<u32>(~4294967295u, ~6331u, ~u_input.b.x), !vec3<bool>(any(vec3<bool>(false, false, var_0)), true, true));
    let x = u_input.a;
    s_output = func_1(Struct_1(vec2<i32>(firstLeadingBit(min(u_input.c.x, var_3)), var_3 >> (u_input.b.x % 32u)), ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(12793u, 1u, var_2.b.x)), var_4)), var_2, u_input.c.xx);
}

