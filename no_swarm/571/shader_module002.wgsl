struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: Struct_2;

var<private> global2: Struct_1;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(~(~0u), Struct_2(firstLeadingBit(min(firstTrailingBit(u_input.a), ~u_input.a)), vec2<i32>(u_input.a, -2147483647i << (global2.e % 32u)) | vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global1.b.x, 2147483647i), vec3<i32>(u_input.a, global1.c.x, -44004i)), select(-2147483647i, global1.b.x, true)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1.b.x, u_input.a), -vec3<i32>(2147483647i, u_input.a, u_input.a)), ~0i)), 0u, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, global2.e)), _wgslsmith_mod_vec3_u32(vec3<u32>(global2.e, global2.e, 58004u), vec3<u32>(u_input.b, 1u, global2.e))), reverseBits(abs(global2.e)), _wgslsmith_mod_u32(u_input.b, 4294967295u)), vec3<u32>(0u, 30430u, countOneBits(global2.e))), ~vec3<u32>(~24508u, ~(61783u >> (u_input.b % 32u)), global2.e));
    var var_1 = ~vec2<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(global1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.x, var_0.b.c.x, global1.b.x), vec3<i32>(26231i, -1600i, 1i))), ~max(u_input.a, 25640i)), min(_wgslsmith_clamp_i32(firstTrailingBit(1i), i32(-1i) * -1i, ~u_input.a), -1i));
    let var_2 = global0.x;
    global2 = Struct_1(_wgslsmith_f_op_f32(max(global2.b, 291f)) <= _wgslsmith_f_op_f32(select(1208f, _wgslsmith_f_op_f32(min(global2.c.x, global2.c.x)), !(global2.d.x & global2.a))), global2.b, _wgslsmith_f_op_vec4_f32(round(global2.c)), select(!global2.d, !(!(!global2.d)), vec4<bool>(global0.x, true, select(true, select(global2.a, global0.x, global2.d.x), any(vec2<bool>(global2.d.x, global2.d.x))), true)), reverseBits(u_input.b));
    var_0 = Struct_3(~(~firstTrailingBit(30212u) & (global2.e | select(7593u, 1u, global2.d.x))), var_0.b, firstTrailingBit(6940u), select(var_0.e, _wgslsmith_mult_vec3_u32(vec3<u32>(~global2.e, abs(u_input.b), firstLeadingBit(28967u)), ~var_0.d), max(_wgslsmith_mult_u32(21559u, 1u), ~global2.e) >= 1u), vec3<u32>(11480u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.x, var_0.a, var_0.d.x, 0u), vec4<u32>(global2.e, 1u, 42210u, var_0.e.x)) ^ 0u), ~(~(var_0.a ^ 4294967295u))));
    return 18637i;
}

fn func_2(arg_0: bool) -> u32 {
    global1 = Struct_2(_wgslsmith_div_i32(_wgslsmith_add_i32(1i, ~u_input.a), -1i) << (~(_wgslsmith_mult_u32(global2.e, 0u) ^ ~16841u) % 32u), vec2<i32>(~_wgslsmith_sub_i32(~global1.b.x, ~u_input.a), ~global1.a), global1.c | ~max(-global1.b, global1.b));
    let var_0 = !global0.zzz;
    let var_1 = global2.a;
    global1 = Struct_2(global1.c.x, ~(vec2<i32>(firstLeadingBit(u_input.a), firstTrailingBit(global1.a)) ^ vec2<i32>(59075i, min(-48684i, global1.a))), vec2<i32>(func_3(), reverseBits(u_input.a)));
    global2 = Struct_1(true, _wgslsmith_f_op_f32(abs(-606f)), _wgslsmith_f_op_vec4_f32(-global2.c), !select(global2.d, select(!global2.d, select(vec4<bool>(arg_0, global2.a, true, var_0.x), global2.d, false), global2.d), all(!var_0.yy)), ~(_wgslsmith_div_u32(global2.e, ~0u) << (~(~1u) % 32u)));
    return firstLeadingBit(1u & _wgslsmith_div_u32(4294967295u, u_input.b));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_1(all(global2.d), -865f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, global2.b, global2.c.x, -353f))), global2.d, _wgslsmith_mult_u32(global2.e, _wgslsmith_mult_u32(43989u, global2.e)) << (4294967295u % 32u));
    var var_1 = 0u;
    global0 = var_0.d;
    let var_2 = _wgslsmith_f_op_vec4_f32(-global2.c);
    let var_3 = global1.c.x ^ min(i32(-1i) * -1i, global1.c.x);
    return global2.d;
}

fn func_1() -> Struct_1 {
    return Struct_1(!global2.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -266f), -617f), _wgslsmith_f_op_vec4_f32(round(global2.c)), func_4(vec2<bool>(true, all(!vec4<bool>(false, global2.d.x, global2.d.x, true))), vec3<u32>(abs(4294967295u), max(u_input.b, func_2(true)), 40328u)), global2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 42890u;
    global0 = !global2.d;
    global0 = !select(global2.d, vec4<bool>(!global2.d.x, false, global0.x, global0.x), select(global2.d, select(select(global2.d, global2.d, global2.d), select(global2.d, vec4<bool>(global2.a, false, false, true), global0.x), global2.b >= 1529f), all(global2.d.zw)));
    var var_1 = true;
    var var_2 = func_1();
    var var_3 = -(~max(vec4<i32>(-4221i >> (1u % 32u), ~(-4837i), abs(-2147483647i), global1.c.x), abs(vec4<i32>(1i, -1i, u_input.a, -4893i)) ^ vec4<i32>(1i, global1.b.x, 1i, 15859i)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(53654u, u_input.b), vec2<u32>(63118u, var_2.e)), _wgslsmith_div_vec2_u32(vec2<u32>(global2.e, 4294967295u), vec2<u32>(38475u, var_0)))), ~(1u ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.e, 39607u, global2.e), vec3<u32>(143150u, 52987u, 4294967295u) >> (vec3<u32>(1u, u_input.b, u_input.b) % vec3<u32>(32u)))), 0u);
}

