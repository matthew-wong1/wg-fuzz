struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 32>;

var<private> global2: u32 = 63316u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2093f);
    global1 = array<f32, 32>();
    var var_1 = !global0.a.zwx;
    global1 = array<f32, 32>();
    var var_2 = true;
    return global0.a;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<i32> {
    global0 = arg_0;
    global0 = arg_0;
    return vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_mod_i32(min(arg_0.c, 2147483647i), _wgslsmith_add_i32(45063i, global0.c)), -27493i, ~arg_0.c | countOneBits(arg_0.c));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_1(func_2(), _wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-21921i), arg_1.x, min(global0.c, arg_1.x >> (u_input.b.x % 32u))), func_3(Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, -330f)), global0.c, _wgslsmith_f_op_f32(global0.d + global0.b.x)), true)), _wgslsmith_f_op_f32(-1f));
    global2 = u_input.b.x;
    var var_1 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x) ^ vec3<u32>(0u, u_input.a.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, 38226u), vec3<u32>(u_input.b.x, 14931u, u_input.b.x)), ~vec3<u32>(1u, u_input.a.x, 4294967295u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 4294967295u, u_input.b.x, u_input.a.x)), vec4<u32>(~70594u, ~u_input.b.x, ~u_input.a.x, ~u_input.b.x)), u_input.b.x, 127912u);
    global2 = ~_wgslsmith_mod_u32(4294967295u, 1u);
    global2 = select(10673u, 1u, true);
    return -(~arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~u_input.a.x;
    global1 = array<f32, 32>();
    let var_0 = !vec3<bool>(!((-71341i > global0.c) || global0.a.x), true, -7213i > -_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, global0.c), vec2<i32>(global0.c, global0.c)));
    let var_1 = ~_wgslsmith_mod_vec3_i32(-vec3<i32>(-17824i, -1i, global0.c), vec3<i32>(func_1(all(vec2<bool>(false, false)), ~vec2<i32>(global0.c, global0.c)), firstTrailingBit(2147483647i), global0.c));
    global1 = array<f32, 32>();
    let var_2 = Struct_1(select(vec4<bool>(false, global0.a.x, var_0.x, true), !global0.a, global0.a), global0.b, -16545i, 1550f);
    var var_3 = _wgslsmith_add_u32(34520u, ~u_input.b.x);
    let var_4 = vec2<f32>(global0.b.x, 368f);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_mod_vec4_u32(reverseBits(max(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 0u), vec4<u32>(95126u, 0u, 0u, u_input.a.x))) << (vec4<u32>(reverseBits(u_input.a.x), 0u, u_input.b.x, u_input.a.x) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 11508u, u_input.a.x, u_input.a.x) & vec4<u32>(0u, u_input.b.x, u_input.a.x, u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 89449u, u_input.a.x, u_input.b.x), vec4<u32>(u_input.a.x, u_input.b.x, 72289u, 42112u)), ~vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x))), u_input.b.x, u_input.b.x, 1u);
}

