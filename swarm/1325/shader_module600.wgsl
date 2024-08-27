struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(false, vec2<u32>(4294967295u, 818u), 2777i, vec2<f32>(1000f, -225f), Struct_1(-18415i, vec2<u32>(49528u, 1u))), Struct_2(false, vec2<u32>(61106u, 0u), 2147483647i, vec2<f32>(-599f, -778f), Struct_1(0i, vec2<u32>(0u, 0u))), Struct_2(true, vec2<u32>(4294967295u, 40900u), 0i, vec2<f32>(-1531f, 541f), Struct_1(i32(-2147483648), vec2<u32>(8132u, 1u))), Struct_2(true, vec2<u32>(7490u, 4294967295u), -1i, vec2<f32>(814f, -1086f), Struct_1(0i, vec2<u32>(13915u, 22312u))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<u32> {
    var var_0 = abs(min(_wgslsmith_add_u32(u_input.a, 664u >> (1u % 32u)), u_input.e.x));
    var_0 = u_input.d.x;
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(u_input.a, 4u)], select(vec2<bool>(false, 26040u >= (u_input.d.x & 0u)), select(vec2<bool>(true, true), vec2<bool>(true, 2147483647i <= u_input.c.x), u_input.b < u_input.e.x), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true)), u_input.c.x, select(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(-41761i, 1i, u_input.c.x, -1i)), abs(vec4<i32>(0i, -37837i, -12461i, 21735i))), reverseBits(vec4<i32>(-5272i, firstLeadingBit(44339i), ~(-1i), u_input.c.x)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1104f, 865f, -612f, -344f) * vec4<f32>(-978f, 125f, -374f, -1090f)))))));
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    return ~u_input.e.xx | ~vec2<u32>(~1u, u_input.e.x >> (firstTrailingBit(1u) % 32u));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = vec2<f32>(arg_2, arg_0);
    let var_1 = ~vec4<u32>(u_input.b, reverseBits(~4294967295u), ~arg_1.b.x, max(arg_1.b.x, 4294967295u));
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(4294967295u, reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_1.x, arg_1.b.x), var_1.wxx))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(arg_1.b.x, 9165u), vec2<u32>(4294967295u, u_input.e.x), vec2<bool>(false, true)), var_1.xz), arg_1.b.x));
    global0 = array<Struct_2, 4>();
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0, _wgslsmith_f_op_vec2_f32(-var_0))))), arg_0, Struct_2(any(vec4<bool>(false, true, false, true)) && true, func_3(), arg_1.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1179f), arg_0), Struct_1(max(1i, 1i), ~vec2<u32>(var_2.x, arg_1.b.x))), Struct_1(firstLeadingBit(0i), select(~var_1.wy, _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.b, var_2), var_1.yx), false)));
    return any(vec3<bool>(false, !(!(!var_3.c.a)), true));
}

fn func_1() -> vec2<f32> {
    var var_0 = countOneBits(u_input.a);
    return vec2<f32>(420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(172f, 990f)), 253f, func_2(-273f, Struct_1(u_input.c.x, u_input.e.zz), -308f) | all(vec3<bool>(true, false, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_1()))), 1128f, global0[_wgslsmith_index_u32(countOneBits(abs(u_input.b)), 4u)], Struct_1(-2147483647i, _wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.d.x, u_input.e.x), u_input.e.zz), _wgslsmith_mod_vec2_u32(vec2<u32>(21264u, 103527u), u_input.e.yx)) << (vec2<u32>(~u_input.a, 57176u) % vec2<u32>(32u))));
    global0 = array<Struct_2, 4>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b)) - var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.c.d.x)) - _wgslsmith_f_op_f32(ceil(var_0.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

