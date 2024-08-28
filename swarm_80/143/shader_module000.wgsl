struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<bool>, 28>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> bool {
    global1 = array<vec4<bool>, 28>();
    var var_0 = _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.c.x ^ (u_input.b ^ u_input.b), 41295u)), u_input.b);
    return true;
}

fn func_3(arg_0: Struct_1) -> bool {
    return !(-_wgslsmith_mod_i32(-u_input.a.x, _wgslsmith_add_i32(u_input.a.x, -49947i)) == firstTrailingBit(-2147483647i));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> bool {
    return true;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = 49200u;
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 63836i, -6435i, i32(-1i) * -(~u_input.a.x)), ~u_input.a >> (_wgslsmith_add_vec4_u32(abs(~vec4<u32>(u_input.c.x, u_input.c.x, 43009u, u_input.b)), ~(~vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, 31159u))) % vec4<u32>(32u)));
    let var_2 = true;
    let var_3 = false;
    global0 = any(select(vec4<bool>((var_2 & true) && var_3, select(!arg_0, any(vec2<bool>(var_3, true)), true), false, var_2), vec4<bool>(true, var_3, u_input.b < _wgslsmith_mult_u32(1479u, u_input.c.x), false), func_4(func_3(Struct_1(1u, u_input.c.zx, vec4<f32>(642f, -987f, -253f, 1093f), 12167u, vec3<f32>(-1000f, 111f, 2232f))), Struct_2(Struct_1(u_input.c.x, vec2<u32>(4294967295u, u_input.b), vec4<f32>(1220f, -1408f, 249f, -288f), u_input.c.x, vec3<f32>(950f, -879f, 584f)), 1u), any(vec2<bool>(arg_0, var_2)))));
    return Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(u_input.c.yy, _wgslsmith_div_vec2_u32(u_input.c.yz, vec2<u32>(14319u, 27471u))) >> ((u_input.c.x << (_wgslsmith_mod_u32(u_input.b, u_input.b) % 32u)) % 32u), ~(~(~u_input.c.yy)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -161f), _wgslsmith_f_op_f32(sign(1205f)), -2723f, -1000f))), 0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(565f, -1206f, 1773f) + vec3<f32>(578f, -2060f, 167f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2368f, 234f, -305f)))))), 4294967295u);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec4<f32>(1173f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.e.x), _wgslsmith_div_f32(arg_1.a.c.x, _wgslsmith_f_op_f32(arg_1.a.c.x + arg_1.a.e.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.c.x)))), arg_2)), arg_1.a.e.x, _wgslsmith_f_op_f32(sign(-760f)));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.a.c)), arg_3.a.c);
    var var_1 = Struct_3(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.a.e.x))), arg_3.a.e.x)), 58119u);
    let var_2 = Struct_3(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))), -674f, true)), firstTrailingBit(47432u & (var_1.c ^ 1u)));
    let var_3 = !(!select(!vec4<bool>(arg_2, true, arg_2, false), vec4<bool>(func_3(Struct_1(58800u, arg_0.xx, arg_1.a.c, 16808u, var_0.yyx)), func_1(), true, false), global1[_wgslsmith_index_u32(arg_0.x, 28u)]));
    return Struct_1(countOneBits(_wgslsmith_sub_u32(var_2.c, ~abs(87980u))), vec2<u32>(~_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(var_1.c, arg_3.a.b.x), 0u), select(min(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(0u, 0u, 34957u)), ~35096u), ~(~arg_3.a.d), !var_1.a)), arg_1.a.c, ~arg_3.b, vec3<f32>(_wgslsmith_f_op_f32(max(func_2(var_1.a).a.c.x, var_0.x)), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(-654f, _wgslsmith_f_op_f32(f32(-1f) * -915f))), -572f));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> Struct_3 {
    global1 = array<vec4<bool>, 28>();
    global1 = array<vec4<bool>, 28>();
    var var_0 = 590f;
    var var_1 = Struct_2(func_5(u_input.c, func_2(true & (u_input.a.x != u_input.a.x)), arg_2, Struct_2(arg_0, firstLeadingBit(u_input.b))), 27674u);
    global0 = !arg_2;
    return Struct_3(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a.e.x)) - _wgslsmith_f_op_f32(-var_1.a.c.x)) - arg_0.c.x) + func_2(arg_2).a.e.x), ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = func_6(func_5(u_input.c, func_2(!func_1()), true, func_2(true)), reverseBits(~vec4<u32>(1u, abs(7136u), ~12251u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.c.x), u_input.c))), true || func_4(true, Struct_2(func_2(true).a, 1u), !all(vec3<bool>(true, true, false))));
    var var_2 = func_6(func_5(u_input.c, func_2(func_4(var_1.a, Struct_2(Struct_1(1u, vec2<u32>(var_1.c, 4294967295u), vec4<f32>(var_1.b, -1000f, -635f, var_1.b), 0u, vec3<f32>(var_1.b, var_1.b, var_1.b)), 1u), true) == true), true, func_2(var_1.a)), reverseBits(~vec4<u32>(_wgslsmith_sub_u32(var_1.c, 74044u), 1u & var_1.c, reverseBits(75688u), _wgslsmith_sub_u32(104344u, 1u))), var_1.a);
    var_2 = Struct_3(false != !func_1(), func_5(countOneBits(u_input.c), Struct_2(func_2(false).a, _wgslsmith_add_u32(var_1.c, var_2.c)), func_6(Struct_1(func_6(Struct_1(var_1.c, vec2<u32>(25937u, 4294967295u), vec4<f32>(var_1.b, var_1.b, var_2.b, -115f), 61597u, vec3<f32>(260f, 171f, var_2.b)), vec4<u32>(var_1.c, var_1.c, var_2.c, u_input.b), var_2.a).c, u_input.c.zy ^ vec2<u32>(var_2.c, u_input.c.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-981f, -2357f, 541f, -558f), vec4<f32>(var_2.b, -1426f, 687f, var_1.b))), ~u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, var_2.b, var_2.b) - vec3<f32>(-1828f, -424f, var_2.b))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 1u, 22247u) & vec4<u32>(var_2.c, var_1.c, 12718u, var_1.c), abs(vec4<u32>(1u, var_1.c, var_2.c, u_input.c.x))), true).a, Struct_2(func_2(var_1.a).a, var_2.c)).c.x, ~_wgslsmith_dot_vec2_u32(u_input.c.yy, ~_wgslsmith_mod_vec2_u32(u_input.c.yx, u_input.c.yz)));
    global1 = array<vec4<bool>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, var_0.zw << (~countOneBits(u_input.c.xx) % vec2<u32>(32u)), func_2(false).b, -(~(-(u_input.a.x | u_input.a.x))));
}

