struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(495f, -466f, 1591f), vec3<f32>(620f, 270f, -350f), vec3<f32>(216f, 152f, -378f), vec3<f32>(850f, 302f, -508f), vec3<f32>(-650f, -1069f, 1912f), vec3<f32>(-1322f, -470f, 1004f), vec3<f32>(-888f, 123f, -515f), vec3<f32>(140f, -1000f, 205f), vec3<f32>(-1253f, 1421f, 249f), vec3<f32>(697f, -1875f, -612f), vec3<f32>(-1040f, -1019f, 148f), vec3<f32>(589f, 1926f, -1367f), vec3<f32>(-516f, 1533f, 1000f));

var<private> global1: vec2<i32>;

var<private> global2: vec2<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: u32) -> Struct_1 {
    return Struct_1(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, true, true, true)), true, true, true), vec4<bool>(true, true, true, true)), any(vec3<bool>(true, all(vec4<bool>(false, true, false, false)), false))), _wgslsmith_mult_u32(select(1u, 1938u, any(vec2<bool>(false, false))) >> (~(~u_input.d) % 32u), ~(4294967295u | (arg_0 ^ u_input.d))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global0 = array<vec3<f32>, 13>();
    global0 = array<vec3<f32>, 13>();
    var var_0 = true;
    return arg_0.b;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = func_2(_wgslsmith_mult_u32(~u_input.d, ~u_input.a.x & ~min(3386u, u_input.d)));
    var var_2 = !func_2(func_3(Struct_1(!vec4<bool>(true, var_1.a.x, var_0, true), u_input.d), var_1)).a;
    var var_3 = u_input.a.x;
    global0 = array<vec3<f32>, 13>();
    return var_1;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(arg_2.a, _wgslsmith_mod_u32(_wgslsmith_add_u32(firstLeadingBit(select(arg_2.b, arg_3.b, arg_3.a.x)), 1u), 39952u));
    var var_1 = func_2(_wgslsmith_sub_u32(~(~arg_2.b | abs(0u)), ~(~u_input.d & 1u)));
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) * vec2<f32>(global2.x, -316f));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-3213f, -516f, var_0.a.x))));
    var_1 = arg_2;
    return firstTrailingBit(global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(func_4(select(global1.x, firstTrailingBit(_wgslsmith_sub_i32(0i, -21035i)), all(vec3<bool>(false, false, false))), func_1(u_input.b), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.d), u_input.a), _wgslsmith_mult_u32(u_input.a.x, u_input.d))), func_2(~(~u_input.a.x))), ~_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-24452i, u_input.b.x, 11329i) >> (vec3<u32>(25584u, 69617u, 42964u) % vec3<u32>(32u))), ~(~u_input.c));
    global1 = ~(~vec2<i32>(-1i, 19159i));
    let var_1 = Struct_1(!vec4<bool>((global1.x < 33216i) | true, false, !select(false, true, false), true), _wgslsmith_mult_u32(u_input.d, 9096u));
    let var_2 = ~((~vec4<i32>(u_input.b.x, u_input.c, -8331i, -30305i) >> (max(_wgslsmith_div_vec4_u32(vec4<u32>(12595u, var_1.b, 58179u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.d)), vec4<u32>(9641u, 4294967295u, u_input.a.x, 1u)) % vec4<u32>(32u))) << (~(~abs(vec4<u32>(u_input.a.x, 8794u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)));
    var var_3 = var_2;
    let var_4 = var_1.a;
    global0 = array<vec3<f32>, 13>();
    var_3 = vec4<i32>(~var_3.x, -global1.x, 1i, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~min(vec2<i32>(34639i, 46961i), -vec2<i32>(var_0.x, 77907i))));
}

