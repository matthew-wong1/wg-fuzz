struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 8>;

var<private> global1: vec2<u32> = vec2<u32>(82970u, 1400u);

var<private> global2: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    let var_0 = min(arg_0.a.d << (((vec3<u32>(u_input.d, 16279u, 25590u) & ~vec3<u32>(67924u, 4294967295u, arg_1.a.a)) ^ arg_0.a.d) % vec3<u32>(32u)), arg_0.a.d);
    return u_input.c.x;
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: vec2<i32>) -> u32 {
    let var_0 = !arg_1.a.c;
    global0 = array<Struct_5, 8>();
    let var_1 = vec3<bool>(arg_1.a.c, true && var_0, arg_1.a.c);
    global1 = ~vec2<u32>(1u, firstTrailingBit(~_wgslsmith_mult_u32(u_input.b.x, global1.x)));
    let var_2 = true;
    return ~55689u << (select(u_input.d, firstLeadingBit(_wgslsmith_div_u32(18201u, select(arg_0, arg_1.a.a, false))), -arg_2.x < arg_1.a.b.x) % 32u);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec4<u32>) -> Struct_4 {
    var var_0 = arg_1;
    var_0 = ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(global1.x, 0u)), global1.x), ~u_input.b.x);
    let var_1 = any(vec3<bool>(true, arg_0, true));
    global0 = array<Struct_5, 8>();
    var var_2 = firstLeadingBit(-u_input.c.x) ^ min(_wgslsmith_clamp_i32(-_wgslsmith_div_i32(8588i, u_input.c.x), u_input.c.x, _wgslsmith_clamp_i32(-u_input.c.x, u_input.c.x >> (u_input.d % 32u), -u_input.c.x)), u_input.c.x);
    return Struct_4(any(!select(select(vec3<bool>(var_1, true, var_1), vec3<bool>(true, var_1, var_1), vec3<bool>(false, true, false)), !vec3<bool>(true, var_1, arg_0), u_input.c.x < 0i)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(true, func_3(select(81464u, ~abs(global1.x), true), global0[_wgslsmith_index_u32(global1.x, 8u)], vec2<i32>(max(-1i, func_2(Struct_3(Struct_2(6403u, u_input.c.xz, false, vec3<u32>(4294967295u, 23868u, 40491u), 737f)), Struct_3(Struct_2(global1.x, vec2<i32>(0i, u_input.c.x), false, vec3<u32>(0u, 39605u, u_input.d), 1000f)))), u_input.c.x)), ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.d), countOneBits(vec4<u32>(36950u, 0u, u_input.b.x, global1.x)))));
    global2 = array<vec2<bool>, 10>();
    global2 = array<vec2<bool>, 10>();
    global0 = array<Struct_5, 8>();
    var var_1 = vec4<f32>(-151f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2001f, _wgslsmith_f_op_f32(-1000f + 443f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(942f, -349f))), 632f, func_4(var_0.a && false, ~1u, vec4<u32>(global1.x & 18631u, 32283u, global1.x, ~4294967295u)).a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-240f * 958f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -971f))))), _wgslsmith_f_op_f32(floor(-1257f)));
    return Struct_1(var_0.a, vec4<u32>(_wgslsmith_clamp_u32(global1.x, _wgslsmith_clamp_u32(u_input.b.x, max(u_input.d, 51801u), 1u >> (0u % 32u)), ~reverseBits(u_input.d)), global1.x, ~(~_wgslsmith_add_u32(global1.x, 0u)), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(var_0.a, firstLeadingBit(vec4<u32>(4294967295u, global1.x, _wgslsmith_sub_u32(49784u, u_input.d), _wgslsmith_dot_vec3_u32(var_0.b.xzy, vec3<u32>(var_0.b.x, u_input.b.x, 4294967295u)))) | var_0.b);
    var var_1 = vec2<u32>(global1.x, ~(~(1u << (1u % 32u))));
    var var_2 = 1f;
    var_1 = vec2<u32>(_wgslsmith_div_u32(~min(0u, global1.x), _wgslsmith_mult_u32(~var_1.x, global1.x)), var_0.b.x);
    let var_3 = vec3<bool>(var_0.a, u_input.a > ~18143u, var_0.a);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(floor(-124f)), _wgslsmith_f_op_f32(f32(-1f) * -1625f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(582f))))), _wgslsmith_f_op_f32(ceil(-262f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_4 + var_4))), _wgslsmith_div_vec4_f32(var_4, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_4 + vec4<f32>(var_4.x, var_4.x, var_4.x, 451f)) - _wgslsmith_f_op_vec4_f32(-var_4)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(757f, -1323f))), var_4.x, var_4.x));
}

