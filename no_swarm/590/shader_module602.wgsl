struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(Struct_1(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, u_input.c, 54040u, u_input.e.x), vec4<u32>(u_input.e.x, 4294967295u, 23232u, 10070u), vec4<u32>(u_input.e.x, 1425u, 0u, 4294967295u)))), Struct_1(vec4<u32>(u_input.c, u_input.e.x << (firstLeadingBit(u_input.c) % 32u), ~u_input.c, abs(10423u))), Struct_1(vec4<u32>(u_input.e.x, u_input.c, u_input.e.x, 0u)));
    let var_1 = Struct_2(Struct_1(countOneBits(min(var_0.b.a, var_0.a.a))), Struct_1(~var_0.a.a), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~64311u, abs(var_0.b.a.x), 4294967295u, ~50604u), abs(~var_0.c.a))));
    let var_2 = u_input.b.x;
    let var_3 = var_1;
    global0 = array<bool, 24>();
    return _wgslsmith_clamp_u32(~(~_wgslsmith_mult_u32(u_input.c, var_0.c.a.x) ^ 11662u), var_0.c.a.x, var_3.c.a.x);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -30247i, -1i), vec4<i32>(1i, arg_1.x, -1i, arg_1.x) & vec4<i32>(arg_1.x, -4886i, 46834i, u_input.d))), vec4<i32>(-u_input.d, ~2147483647i, u_input.d, arg_1.x << (~arg_0 % 32u))), -2147483647i);
    let var_1 = Struct_2(Struct_1(firstLeadingBit(select(vec4<u32>(4294967295u, arg_0, u_input.e.x, 3171u), ~vec4<u32>(u_input.e.x, 11480u, 37131u, arg_0), all(vec3<bool>(false, global0[_wgslsmith_index_u32(95766u, 24u)], true))))), Struct_1(~firstLeadingBit(reverseBits(vec4<u32>(16966u, 1u, 21114u, u_input.e.x)))), Struct_1(~(~firstLeadingBit(vec4<u32>(u_input.e.x, 35883u, 0u, 0u)))));
    global0 = array<bool, 24>();
    let var_2 = !(!vec4<bool>(false, false, any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 24u)], true)) & global0[_wgslsmith_index_u32(u_input.c, 24u)], any(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(u_input.e.x, 24u)]))));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-953f, -692f, false))))), -891f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(867f * -833f), -518f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f), -1440f))), -627f), vec4<f32>(1096f, 586f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1122f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1630f), 900f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, 317f))))))));
    return firstLeadingBit(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(~u_input.e.x, 1u), reverseBits(arg_0) ^ ~u_input.e.x, u_input.e.x));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    global0 = array<bool, 24>();
    let var_0 = min(vec2<u32>(max(func_2(), u_input.e.x), max(0u, func_3(1u, abs(u_input.b)))), ~vec2<u32>(func_3(u_input.e.x, vec3<i32>(u_input.a, 0i, -24271i)) << (~0u % 32u), 1u));
    let var_1 = vec2<bool>(true, true);
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    return Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(16471u, u_input.e.x, u_input.c, ~_wgslsmith_div_u32(1u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(~var_0.x, var_0.x, ~u_input.c, u_input.c), countOneBits(vec4<u32>(1u, 12328u, var_0.x, u_input.c)) | select(vec4<u32>(0u, u_input.e.x, 13197u, u_input.c), vec4<u32>(var_0.x, u_input.c, u_input.c, 108u), vec4<bool>(arg_0, false, arg_0, var_1.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(~30622u, var_0.x, func_2(), ~u_input.c), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 10386u, 11984u, 35899u), vec4<u32>(var_0.x, u_input.c, u_input.c, u_input.c)), vec4<u32>(40377u, u_input.e.x, u_input.c, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(false, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -478f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(975f, -1000f)))), vec2<f32>(737f, _wgslsmith_div_f32(1460f, -556f))))), func_1(global0[_wgslsmith_index_u32(func_1(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 315f), vec2<f32>(1000f, 722f))))).a.x, 24u)], vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1298f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -340f))))), Struct_1(select(vec4<u32>(reverseBits(4294967295u), abs(u_input.e.x), max(u_input.e.x, 1u), ~10052u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, u_input.c, 3931u, 6331u), vec4<u32>(0u, 1u, 11425u, 1u) >> (vec4<u32>(1u, u_input.c, u_input.c, 45362u) % vec4<u32>(32u))), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 24u)], global0[_wgslsmith_index_u32(~33008u, 24u)], all(vec3<bool>(true, true, true))))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~3867u, max(u_input.e.x, 1u), abs(14377u), var_0.a.a.x), vec4<u32>(~33054u, _wgslsmith_sub_u32(u_input.c, var_0.c.a.x), 99176u, 1u))), var_0.b, var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.a.xxy);
}

