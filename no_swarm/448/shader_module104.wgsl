struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(-24058i, -28842i, 0i, 30817i, -38898i, -1i, -29758i, -1i, i32(-2147483648), i32(-2147483648), 34675i, -1i, -60080i, 2147483647i, -33142i, i32(-2147483648), -36206i, -4223i, 10404i, -38150i, 0i, 2147483647i, 25866i, -27235i, 1i, -45893i, -1i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: i32, arg_1: f32) -> u32 {
    return 4294967295u;
}

fn func_3() -> u32 {
    var var_0 = Struct_2(select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true), ~80989u, Struct_1(false, vec2<u32>(1u, 1u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 0u, 26979u, 59129u), vec4<u32>(1u, 1u, 1u, 34822u), false), vec4<u32>(1u, 34073u, 11878u, 2081u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 27552u, 0u)), ~_wgslsmith_clamp_u32(~54662u, ~0u, _wgslsmith_mult_u32(1u, 0u))));
    var_0 = Struct_2(var_0.a, abs(4294967295u), Struct_1(false, var_0.c.b, var_0.c.c), ~_wgslsmith_dot_vec2_u32(var_0.c.c.xy | abs(vec2<u32>(4294967295u, 0u)), vec2<u32>(var_0.d, 54409u)));
    var var_1 = global0[_wgslsmith_index_u32(var_0.c.c.x, 27u)];
    return select(var_0.d, ~var_0.b, 26260u <= ~var_0.d);
}

fn func_1() -> Struct_1 {
    let var_0 = firstLeadingBit(vec4<u32>(30689u, _wgslsmith_div_u32(countOneBits(_wgslsmith_div_u32(1u, 85629u)), ~abs(1u)), ~func_2(firstLeadingBit(global0[_wgslsmith_index_u32(55027u, 27u)]), _wgslsmith_f_op_f32(trunc(1687f))), func_2(1i, _wgslsmith_f_op_f32(sign(320f))) | func_3()));
    var var_1 = min(0u, ~(~(0u & var_0.x)) | 57211u);
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    var var_2 = _wgslsmith_div_u32(countOneBits(38291u), _wgslsmith_dot_vec4_u32(select(~(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), firstLeadingBit(vec4<u32>(4294967295u, var_0.x, var_0.x, 1u)), var_0.x <= ~81403u), var_0));
    return Struct_1(true, var_0.zx, reverseBits(vec3<u32>(~(~var_0.x), _wgslsmith_div_u32(var_0.x, ~var_0.x), (var_0.x >> (var_0.x % 32u)) << (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(73695u, _wgslsmith_mod_u32(1u, var_0.c.x) << (~24843u % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 0u, var_0.c.x, 1u), vec4<u32>(var_0.c.x, 1u, 4294967295u, 1u)), firstTrailingBit(max(var_0.c.x, 24287u))) << (abs(~abs(vec4<u32>(var_0.c.x, var_0.c.x, 4294967295u, 4294967295u))) % vec4<u32>(32u)), vec2<u32>(~3247u, var_0.c.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-856f, 2481f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-296f, 1029f))))))), select(select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, global0[_wgslsmith_index_u32(1u, 27u)])), (vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(0u, 27u)]) >> (vec2<u32>(4294967295u, var_0.c.x) % vec2<u32>(32u))) << ((vec2<u32>(31973u, var_0.c.x) << (vec2<u32>(1u, var_0.b.x) % vec2<u32>(32u))) % vec2<u32>(32u)), false), ~(-max(vec2<i32>(-16600i, global0[_wgslsmith_index_u32(1u, 27u)]), vec2<i32>(-2147483647i, u_input.a))), !select(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, true), true), vec2<bool>(true, true), vec2<bool>(false, var_0.a))), u_input.a);
}

