struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(425f, 245f, -1620f, -477f), -10090i);

var<private> global1: Struct_1 = Struct_1(-1723f);

var<private> global2: Struct_3 = Struct_3(vec4<f32>(-1176f, -2270f, 296f, 925f), 19829i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> Struct_3 {
    global0 = Struct_3(global0.a, global2.b);
    var var_0 = arg_1;
    var_0 = arg_1;
    global1 = Struct_1(arg_1.a.x);
    let var_1 = ~u_input.c;
    return arg_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_4(func_2(52114u, Struct_3(global0.a, -29914i)));
    var var_1 = Struct_1(964f);
    var var_2 = var_0.a.b | ~global2.b;
    let var_3 = Struct_4(Struct_3(global2.a, 1i));
    var_1 = Struct_1(_wgslsmith_div_f32(global0.a.x, -414f));
    return var_3.a;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.c.x, u_input.c.x, _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x | u_input.b.x)), 53463u), vec4<u32>(~u_input.c.x, 1u, min(5695u, u_input.c.x), select(select(0u, u_input.b.x, true), ~_wgslsmith_sub_u32(u_input.a.x, u_input.b.x), all(vec3<bool>(true, true, true)))));
    var_0 = arg_2;
    let var_2 = ~abs(var_1.x);
    var_0 = arg_2;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(958f);
    global2 = func_1(vec4<u32>(max(~(~40529u), _wgslsmith_div_u32(77517u, abs(u_input.a.x))), _wgslsmith_mult_u32(1u, 0u & _wgslsmith_div_u32(u_input.c.x, 4294967295u)), u_input.a.x, select(max(1u, ~8619u), ~u_input.c.x, false)), reverseBits(u_input.b.x >> (u_input.a.x % 32u)));
    global2 = func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(47956u, u_input.c.x, 54725u), u_input.c), vec3<u32>(4294967295u, u_input.c.x >> (u_input.a.x % 32u), firstLeadingBit(u_input.c.x)), vec3<u32>(1u, ~u_input.c.x, ~u_input.c.x)), u_input.c), func_1(vec4<u32>(u_input.b.x, select(u_input.c.x, max(u_input.b.x, 0u), any(vec4<bool>(false, true, false, true))), ~(~u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1460u), u_input.a)), func_3(Struct_3(global0.a, 0i), _wgslsmith_f_op_vec2_f32(-global2.a.zy), Struct_2(Struct_1(global0.a.x), global2.a.x, Struct_1(977f)))));
    let var_0 = Struct_1(global1.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(global1.a)));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(global2.a + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.a - vec4<f32>(-661f, global1.a, global0.a.x, var_0.a)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.a.x, -877f, -654f, 293f), vec4<f32>(106f, var_0.a, 126f, -658f))))), ~_wgslsmith_div_i32(firstLeadingBit(global2.b) & ~(-2147483647i), ~(~(-50844i))));
    global2 = func_2(63809u, Struct_3(global0.a, ~1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, global0.b, _wgslsmith_sub_i32(~25625i, -2147483647i), _wgslsmith_div_i32(global0.b, ((i32(-1i) * -9848i) ^ min(global0.b, global2.b)) ^ global0.b), global2.b);
}

