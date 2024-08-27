struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = u_input.b;
    let var_1 = abs(1u);
    return 64760u;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    global0 = _wgslsmith_clamp_i32(select(arg_2.c.x, -1i, !(true | select(false, false, true))), ~1i, 1i);
    let var_0 = arg_2;
    global0 = reverseBits(1i);
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1664f), _wgslsmith_f_op_f32(arg_0.x * 270f)));
    let var_2 = var_0.b;
    return vec4<u32>(~abs(618u), firstLeadingBit(~(~(~var_0.b.x))), 23359u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~48006u, _wgslsmith_div_u32(0u, 112676u), _wgslsmith_sub_u32(arg_2.a, arg_2.b.x)), func_3(_wgslsmith_f_op_f32(min(arg_0.x, 1107f)), var_0.a)) >> (1u % 32u));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_mult_i32(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, arg_0, u_input.b), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), -2147483647i), u_input.b);
    global0 = ~u_input.a.x;
    var var_1 = 16920u;
    var var_2 = Struct_1(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(func_2(vec2<f32>(1262f, -370f), 49419u, Struct_1(4294967295u, vec4<u32>(4294967295u, 4294967295u, 24400u, 4294967295u), vec4<i32>(var_0, arg_0, arg_0, 2147483647i), 1028f, u_input.a))))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(19398u, 1u), 1u, select(0u, 1u, false), func_3(-125f, 273u)) >> (~firstTrailingBit(vec4<u32>(22277u, 65585u, 14841u, 1u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(~0u, ~1u), 21780u, max(_wgslsmith_mult_u32(0u, 0u), countOneBits(61864u)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, 0u, 0u, 4825u), vec4<u32>(0u, 1u, 1u, 44450u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 51635u, 18535u), vec4<u32>(38350u, 15910u, 8678u, 17020u))))), vec4<i32>(_wgslsmith_add_i32(firstLeadingBit(-44351i), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, -7987i), u_input.a.yz))), -(~firstTrailingBit(16351i)), (u_input.b | -42022i) | u_input.a.x, var_0), _wgslsmith_f_op_f32(ceil(-461f)), -vec3<i32>(min(u_input.b, 1i) | arg_0, 2147483647i, firstLeadingBit(-var_0)));
    global0 = ~(~arg_0);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.d + _wgslsmith_f_op_f32(-645f - 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(839f, _wgslsmith_div_f32(-1459f, _wgslsmith_f_op_f32(min(-1843f, 268f))), _wgslsmith_f_op_f32(func_1(-u_input.b)), _wgslsmith_f_op_f32(trunc(-3417f)))), 1u);
}

