struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>) -> bool {
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    return any(vec2<bool>(true, false));
}

fn func_2(arg_0: f32) -> Struct_4 {
    var var_0 = countOneBits(_wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(19785u, u_input.a, u_input.a, 5497u))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, ~u_input.a, ~35548u, u_input.a ^ u_input.a), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 42253u, u_input.a, u_input.a), vec4<u32>(105857u, u_input.a, 3706u, 1u)))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, _wgslsmith_sub_u32(u_input.a, firstLeadingBit(58849u))), 6u)];
    var var_2 = 1155f != _wgslsmith_f_op_f32(step(1368f, _wgslsmith_f_op_f32(select(arg_0, arg_0, any(!vec3<bool>(true, var_1.b.b, false))))));
    let var_3 = select(select(!(!select(vec2<bool>(var_1.a.b, false), vec2<bool>(true, var_1.b.b), true)), vec2<bool>(all(select(vec2<bool>(var_1.a.b, false), vec2<bool>(var_1.a.b, true), false)), select(true, true, true)), false), vec2<bool>(any(select(select(vec3<bool>(var_1.b.b, false, true), vec3<bool>(true, true, false), vec3<bool>(false, var_1.b.b, false)), vec3<bool>(true, false, var_1.a.b), !vec3<bool>(var_1.b.b, false, var_1.b.b))), !(!func_3(var_0.wy, var_1.c.yyy))), select(select(select(vec2<bool>(false, true), vec2<bool>(var_1.a.b, false), select(vec2<bool>(true, false), vec2<bool>(var_1.a.b, false), vec2<bool>(var_1.a.b, false))), !(!vec2<bool>(var_1.a.b, var_1.b.b)), vec2<bool>(false, true)), !vec2<bool>(all(vec4<bool>(true, true, false, true)), !var_1.a.b), select(true, var_1.b.b, 1i > var_1.d.x)));
    var var_4 = ~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, var_0.x, u_input.a, 27781u), ~vec4<u32>(u_input.a, 4589u, u_input.a, u_input.a))));
    return Struct_4(Struct_1(var_1.b.a, false, var_1.b.c), 46576u, var_1.a, var_1.a, true);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = ~_wgslsmith_dot_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 16547u, u_input.a), vec4<u32>(u_input.a, 71849u, 4294967295u, 30978u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 1u), vec4<u32>(0u, 37218u, 0u, 31904u), vec4<u32>(4294967295u, 37832u, u_input.a, 4294967295u))) >> (15151u % 32u);
    global0 = array<Struct_2, 6>();
    let var_1 = func_2(_wgslsmith_f_op_f32(-arg_0));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.c.c, vec4<f32>(arg_2.c.x, 1000f, 220f, arg_2.c.x)) - _wgslsmith_f_op_vec4_f32(var_1.c.c - arg_2.c)))))));
    let var_3 = abs(vec2<i32>(-arg_2.a ^ min(min(arg_2.a, arg_2.a), -40411i), var_1.c.a << (max(var_1.b & 29843u, abs(var_1.b)) % 32u)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 6>();
    let var_0 = 4294967295u;
    var var_1 = ~(~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(0u, 0u)), vec2<u32>(~u_input.a, func_1(-596f, vec2<bool>(true, true), Struct_1(-1i, true, vec4<f32>(-725f, 1000f, 781f, 1775f))))));
    var var_2 = Struct_3(vec4<i32>(-52696i, _wgslsmith_dot_vec2_i32(max(vec2<i32>(-1i, 41835i), vec2<i32>(48190i, 0i)), max(vec2<i32>(-2147483647i, 1i), vec2<i32>(-1i, -2147483647i))) << (_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, u_input.a, 60540u), vec3<u32>(0u, 22185u, 50152u), false), ~vec3<u32>(var_0, 18199u, 4294967295u)) % 32u), 1i, 1i), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true))) | true);
    global0 = array<Struct_2, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(max(min(-2147483647i, var_2.a.x), 1i), -firstLeadingBit(-1i), max(-16838i, firstLeadingBit(0i)), _wgslsmith_sub_i32(var_2.a.x, ~var_2.a.x)), -(~_wgslsmith_dot_vec2_i32(abs(var_2.a.xx), vec2<i32>(1i, -649i))));
}

