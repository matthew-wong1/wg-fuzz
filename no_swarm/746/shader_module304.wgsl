struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<i32, 26> = array<i32, 26>(-1i, 2433i, 1i, -41459i, 0i, 2147483647i, 2147483647i, -2927i, 2147483647i, 1i, -63999i, -64455i, 21865i, -1i, 3808i, 21096i, -40644i, -1i, -30100i, i32(-2147483648), -16165i, 11059i, 2147483647i, 764i, -1i, 11632i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_3(global0.a, global0.b, global0.b);
    let var_1 = vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1.a, global0.a.a.x), ~4294967295u), 39229u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, ~(~u_input.a)), u_input.a), countOneBits(u_input.b.x));
    global1 = array<i32, 26>();
    global0 = var_0;
    var var_2 = var_0;
    return -16585i;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = Struct_3(Struct_1(arg_0.a, -_wgslsmith_sub_i32(-49886i, func_3(arg_0.e, Struct_4(u_input.c.x, global0.c.a, vec3<u32>(38092u, u_input.b.x, 18440u), -2147483647i, vec3<u32>(1u, 36043u, 11538u)), Struct_1(arg_0.a, 1i, arg_0.b, arg_0.d, false), global0.b)), 0i, global0.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.c) + _wgslsmith_f_op_f32(-global0.b.c)) <= -941f), Struct_2(any(vec4<bool>(false, arg_0.d.x, false, global0.b.a)), ~arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(329f)) * _wgslsmith_f_op_f32(-global0.b.c)))), Struct_2(true, ~(~(~arg_0.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1845f - _wgslsmith_f_op_f32(round(global0.c.c)))))));
    return global0.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: bool, arg_3: vec4<u32>) -> vec2<i32> {
    global0 = Struct_3(func_2(global0.a), global0.b, global0.b);
    global1 = array<i32, 26>();
    global1 = array<i32, 26>();
    var var_0 = ~(~u_input.d.x);
    let var_1 = global0.c.c;
    return vec2<i32>((1i | (-26791i >> (u_input.c.x % 32u))) >> ((u_input.b.x >> (arg_3.x % 32u)) % 32u), -global1[_wgslsmith_index_u32(1u, 26u)]) | (-vec2<i32>(global0.a.b, -global1[_wgslsmith_index_u32(87497u, 26u)]) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, global0.a.b) & vec2<i32>(u_input.d.x, global0.a.c), -u_input.d.zy | ~vec2<i32>(u_input.d.x, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(-31950i);
    global1 = array<i32, 26>();
    var_0 = -global1[_wgslsmith_index_u32(~u_input.a.x & 1u, 26u)];
    var var_1 = reverseBits(-func_1(~(~vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1740f + -1655f) + global0.c.c), !global0.a.d.x && !global0.c.a, vec4<u32>(4294967295u, 0u, u_input.c.x, 51334u) | u_input.c));
    let var_2 = !vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.c.c, 834f)) * global0.b.c) <= _wgslsmith_f_op_f32(round(global0.b.c)), true);
    let var_3 = ~global0.a.a.x;
    global1 = array<i32, 26>();
    global0 = Struct_3(Struct_1(abs(vec3<u32>(global0.c.b, var_3, u_input.c.x)), u_input.d.x, -2147483647i, !global0.a.d, 0u == abs(u_input.c.x)), Struct_2(global0.b.a, u_input.c.x, -254f), global0.c);
    var var_4 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(~53436u << (global0.c.b % 32u), -_wgslsmith_mult_i32(u_input.d.x, 1i), ~u_input.d, _wgslsmith_dot_vec3_i32(select(u_input.d.zzx, u_input.d.ywz, select(global0.a.d, global0.a.d, global0.a.d)), select(u_input.d.zyw, _wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, 1i, 9257i), abs(vec3<i32>(49865i, -33088i, -2147483647i)), vec3<i32>(var_1.x, var_1.x, 28633i)), true)), vec2<f32>(1632f, global0.b.c));
}

