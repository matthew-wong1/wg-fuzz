struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 12>;

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(min(vec3<u32>(arg_0.d, 1u, 1u), vec3<u32>(arg_0.d, arg_0.d, 66727u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 74358u), vec3<u32>(arg_0.d, u_input.a, 25012u))), reverseBits(vec3<u32>(reverseBits(arg_0.d), ~17076u, 69672u))), arg_0.d), 12u)];
    var var_0 = !vec3<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), arg_0.b <= arg_0.c.x)), select(true, all(vec3<bool>(true, true, true)), true));
    global1 = array<i32, 12>();
    let var_1 = var_0.x && false;
    var var_2 = arg_0;
    return ((min(vec3<u32>(0u, arg_0.d, u_input.a), ~vec3<u32>(u_input.a, u_input.a, 0u)) | (~vec3<u32>(arg_0.d, u_input.a, var_2.d) | vec3<u32>(var_2.d, var_2.d, u_input.a))) ^ abs(~reverseBits(vec3<u32>(u_input.a, var_2.d, 40302u)))) & ~vec3<u32>(u_input.a, u_input.a << (arg_0.d % 32u), 31469u);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = ~(vec3<u32>(~0u, ~(~83614u), 1u) << (~(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(15430u, 4294967295u, 27489u))) % vec3<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_add_i32(_wgslsmith_add_i32(-1i, -19063i), -39925i) << ((min(~u_input.a, 1u) >> (max(~65304u, _wgslsmith_add_u32(u_input.a, 0u)) % 32u)) % 32u), 964f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b, arg_0.c.x, 2219f, arg_0.b), arg_0.c)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<f32>(1000f, 1518f, arg_0.b, 650f)))))) + arg_0.c), arg_0.d);
    let var_2 = vec3<i32>(-1i) * -abs(_wgslsmith_div_vec3_i32(~vec3<i32>(2074i, -2147483647i, 33008i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_0.a, 32454i), vec3<i32>(global1[_wgslsmith_index_u32(var_1.d, 12u)], arg_0.a, arg_0.a))));
    var_0 = _wgslsmith_add_vec3_u32(func_3(Struct_1(-1i, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-893f + var_1.b))), _wgslsmith_f_op_vec4_f32(var_1.c + var_1.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_1.d, 58840u, 0u), ~vec4<u32>(arg_0.d, var_0.x, 0u, 12377u)))), vec3<u32>(select(~7734u, arg_0.d, arg_1), var_1.d, arg_0.d) | _wgslsmith_clamp_vec3_u32(vec3<u32>(1u & arg_0.d, ~1u, _wgslsmith_clamp_u32(8357u, 1u, 41421u)), vec3<u32>(_wgslsmith_mult_u32(4294967295u, arg_0.d), 1u, var_1.d), min(vec3<u32>(12201u, 54160u, 4294967295u) ^ vec3<u32>(14519u, 48457u, u_input.a), ~vec3<u32>(u_input.a, var_0.x, 35215u))));
    var var_3 = false;
    return ~var_0.x;
}

fn func_1() -> StorageBuffer {
    global2 = array<Struct_1, 24>();
    global2 = array<Struct_1, 24>();
    global2 = array<Struct_1, 24>();
    let var_0 = -2259f;
    let var_1 = ~_wgslsmith_add_vec3_u32(vec3<u32>(~(1u << (u_input.a % 32u)), (4294967295u & u_input.a) & ~0u, select(u_input.a, u_input.a, any(vec3<bool>(false, false, false)))), vec3<u32>(4294967295u, 1u, ~43222u));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(abs(var_0))), _wgslsmith_f_op_f32(-1553f * 1000f)), ~(global1[_wgslsmith_index_u32(~(~var_1.x), 12u)] << (~(~60702u) % 32u)), vec4<u32>(~u_input.a, _wgslsmith_clamp_u32(0u, min(_wgslsmith_div_u32(var_1.x, 59629u), u_input.a), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), var_1.x)), func_2(global2[_wgslsmith_index_u32(42252u, 24u)], true), 38768u), _wgslsmith_mult_vec2_u32(var_1.zz, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, u_input.a), var_1), u_input.a)) ^ var_1.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

