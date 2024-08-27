struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2;

var<private> global2: array<u32, 10> = array<u32, 10>(1u, 4294967295u, 0u, 59128u, 0u, 0u, 1u, 4294967295u, 0u, 0u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    var var_0 = u_input.b;
    let var_1 = Struct_2(global1.a, !global1.b, false);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.a.x)));
    let var_3 = var_1;
    global2 = array<u32, 10>();
    return global1.b.x;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global1.a.a.xz)));
    global1 = Struct_2(global1.a, !global1.b, true);
    let var_1 = global1.a.a;
    return Struct_2(global1.a, global1.b, func_3());
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_2) -> vec2<i32> {
    global1 = arg_3;
    var var_0 = arg_2.x;
    var var_1 = func_2().a;
    let var_2 = min(arg_2, u_input.b.zw);
    let var_3 = true;
    return firstLeadingBit(_wgslsmith_clamp_vec2_i32(select(u_input.a, -abs(u_input.a), vec2<bool>(global1.a.a.x > arg_1, func_2().b.x)), u_input.a, vec2<i32>(-1046i, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a) << (_wgslsmith_mult_u32(1u, 4294967295u) % 32u))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = func_4(38227i, global1.a.a.x, _wgslsmith_div_vec2_u32(u_input.b.xw, _wgslsmith_clamp_vec2_u32(~u_input.b.yz, ~vec2<u32>(12989u, 4294967295u), vec2<u32>(u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], 10u)]))), func_2()) ^ reverseBits(vec2<i32>(func_4(2147483647i, _wgslsmith_f_op_f32(arg_0 + global1.a.a.x), vec2<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(8370u, 10u)]) ^ vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 6291u), Struct_2(global1.a, global1.b, false)).x, 12209i));
    let var_1 = global1.b;
    global2 = array<u32, 10>();
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(9052u, 10u)], global2[_wgslsmith_index_u32(0u, 10u)]), 10u)];
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(global1.a.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a.x, global1.a.a.x, global1.a.a.x))))), func_1(1944f, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-488f, global1.a.a.x, global1.a.a.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(493f, 131f, global1.a.a.x))))), func_1(1000f, global1.a).x);
    let var_1 = firstTrailingBit(_wgslsmith_clamp_vec3_u32(u_input.b.wzz, ~_wgslsmith_mod_vec3_u32(u_input.b.xzx, vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), ~vec3<u32>(_wgslsmith_div_u32(0u, u_input.b.x), 0u, _wgslsmith_mod_u32(u_input.b.x, 4294967295u))));
    global0 = firstTrailingBit(1u);
    global1 = Struct_2(global1.a, !vec2<bool>(false, var_0.c), global1.a.a.x > 281f);
    let var_2 = _wgslsmith_sub_vec4_i32(~(-(~vec4<i32>(u_input.a.x, u_input.a.x, 1i, -24588i))), ~vec4<i32>(u_input.c, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 11892i, u_input.c) | ~select(~vec4<i32>(u_input.a.x, 44256i, u_input.a.x, 0i), reverseBits(vec4<i32>(u_input.a.x, u_input.c, 2147483647i, u_input.c)), select(vec4<bool>(true, true, false, global1.c), vec4<bool>(true, global1.c, true, global1.b.x), false)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.x, vec2<u32>(global2[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_add_u32(~global2[_wgslsmith_index_u32(var_1.x, 10u)], _wgslsmith_mod_u32(var_1.x, 85131u)) & (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 47941u), vec2<u32>(4294967295u, u_input.b.x)) >> (33920u % 32u))), vec4<u32>(countOneBits(u_input.b.x), ~(~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(var_1.x, 10u)], 19130u)), ~_wgslsmith_dot_vec4_u32(~u_input.b, u_input.b), 31377u), ~var_1.x);
}

