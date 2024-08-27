struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec2<bool>,
    e: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: Struct_4;

var<private> global2: array<bool, 8> = array<bool, 8>(false, true, true, false, false, false, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_clamp_u32(u_input.a, 80089u & u_input.a, _wgslsmith_div_u32(~(~0u >> (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u)), _wgslsmith_div_u32(75227u, 4294967295u)));
    global0 = array<f32, 25>();
    global1 = Struct_4(Struct_2(abs(global1.a.a)), Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.c.a, global1.c.a, global1.a.a.x, global1.a.a.x), ~vec4<i32>(-21453i, -1i, -2147483647i, global1.b.a.x)) ^ ~firstTrailingBit(global1.b.a)), global1.c, global1.d, _wgslsmith_f_op_f32(abs(global1.e)));
    var var_1 = Struct_3(vec3<u32>(_wgslsmith_add_u32(3040u, 33867u), u_input.a, 4294967295u), global1.b, -613f, _wgslsmith_mult_i32(1i, ~28729i));
    var var_2 = abs(~_wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.a, 20560u), abs(23786u)));
    return var_1.d;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_4) -> vec2<u32> {
    let var_0 = max(2660i, i32(-1i) * -(func_3() & ~arg_3.c.a));
    var var_1 = ~(~(2147483647i | arg_3.b.a.x));
    let var_2 = Struct_4(arg_3.b, Struct_2(_wgslsmith_mult_vec4_i32(arg_3.a.a, vec4<i32>(54188i, -arg_3.c.a, reverseBits(var_0), -global1.a.a.x))), arg_3.c, arg_3.d, _wgslsmith_f_op_f32(-global1.e));
    var var_3 = Struct_2(arg_3.b.a);
    global2 = array<bool, 8>();
    return reverseBits(vec2<u32>(18050u, 13197u) & min(~firstTrailingBit(vec2<u32>(41100u, 34539u)), vec2<u32>(reverseBits(1u), ~22163u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> bool {
    global0 = array<f32, 25>();
    global2 = array<bool, 8>();
    let var_0 = Struct_4(global1.a, global1.a, global1.c, select(arg_1, global1.d, !vec2<bool>(!global1.d.x, arg_1.x)), global0[_wgslsmith_index_u32(13255u, 25u)]);
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(func_2(vec4<f32>(329f, -1000f, 1461f, -492f), u_input.a, vec4<i32>(-2147483647i, var_0.b.a.x, global1.c.a, var_0.a.a.x), Struct_4(Struct_2(vec4<i32>(-10990i, -2147483647i, var_0.b.a.x, var_0.b.a.x)), Struct_2(var_0.b.a), Struct_1(-2147483647i), vec2<bool>(false, global1.d.x), var_0.e)), vec2<u32>(u_input.a, 4294967295u)), (vec2<u32>(22747u, u_input.a) & arg_0.yw) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, 0u), ~vec2<u32>(0u, 4294967295u))), 0u, arg_0.x);
    let var_2 = 1u;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(vec2<bool>(!any(vec2<bool>(global1.d.x, global1.d.x)), func_1(vec4<u32>(0u, 0u, 4294967295u, u_input.a), global1.d) || true));
    global1 = Struct_4(Struct_2(vec4<i32>(-1i, -global1.a.a.x, 1i, global1.a.a.x)), global1.a, global1.c, vec2<bool>(false, true), _wgslsmith_f_op_f32(1176f - 715f));
    let var_1 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, 0u)), ~(~vec3<u32>(u_input.a, 4294967295u, 14816u)), ~(~vec3<u32>(1u, u_input.a, u_input.a))), max(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, u_input.a, 8786u)), vec3<u32>(4294967295u, 59294u, 8390u)), min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 18517u), vec3<u32>(u_input.a, 0u, u_input.a)), vec3<u32>(4294967295u, u_input.a, 32474u))));
    var_0 = global2[_wgslsmith_index_u32(~(~(~(41434u ^ u_input.a))), 8u)] & false;
    var_0 = false;
    var var_2 = u_input.a;
    global2 = array<bool, 8>();
    let var_3 = _wgslsmith_mod_i32(global1.c.a, global1.c.a) == firstTrailingBit(global1.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(select(0u, u_input.a, all(global1.d)), 3269u)));
}

