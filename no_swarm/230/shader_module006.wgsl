struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(true, vec2<f32>(-568f, -968f), -10207i, vec2<f32>(-349f, 369f), 1i), Struct_4(false, vec2<f32>(-759f, 402f), -29567i, vec2<f32>(605f, 479f), i32(-2147483648)), Struct_4(true, vec2<f32>(-322f, 1000f), -52012i, vec2<f32>(1000f, 613f), 41187i), Struct_4(true, vec2<f32>(695f, 980f), -14120i, vec2<f32>(602f, -923f), -27937i), Struct_4(true, vec2<f32>(-1032f, -1000f), 1i, vec2<f32>(2309f, -1009f), -1i));

var<private> global1: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(4294967295u, 24375u, 0u), vec3<u32>(1u, 28385u, 0u), vec3<u32>(116046u, 32215u, 34521u));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: bool) -> f32 {
    global0 = array<Struct_4, 5>();
    var var_0 = ~21951u;
    let var_1 = firstLeadingBit(_wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], select(vec3<u32>(countOneBits(65682u), ~2802u, u_input.c), _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, 9685u)) << (min(vec3<u32>(31961u, 19216u, u_input.c), global1[_wgslsmith_index_u32(1u, 3u)]) % vec3<u32>(32u)), true)));
    global1 = array<vec3<u32>, 3>();
    let var_2 = !select(vec3<bool>(any(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, arg_0, true), vec3<bool>(false, false, false))), !arg_0, true & arg_0), vec3<bool>(true, true, arg_0), vec3<bool>(true, true, false));
    return -2121f;
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_add_u32(~(~select(11207u, u_input.c, false)), 0u);
    var var_1 = Struct_1(u_input.b.x, 4294967295u, true);
    return Struct_3(u_input.b.x, _wgslsmith_f_op_f32(func_3(var_1.c)), Struct_1(59708u | ~(~u_input.c), u_input.b.x | ~var_1.b, false), var_1.a & ~var_1.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2) -> i32 {
    let var_0 = func_2();
    global1 = array<vec3<u32>, 3>();
    global1 = array<vec3<u32>, 3>();
    global0 = array<Struct_4, 5>();
    global1 = array<vec3<u32>, 3>();
    return -1i;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = Struct_2(!vec2<bool>(any(select(vec4<bool>(false, false, true, arg_0.a.x), vec4<bool>(true, arg_3.c.c, arg_3.c.c, true), arg_0.a.x)), !select(true, arg_3.c.c, true)), firstTrailingBit(arg_0.b | vec3<u32>(~arg_3.a, arg_3.c.b, arg_0.c.x)), arg_0.c, arg_0.d);
    let var_1 = countOneBits(u_input.a.x) | (i32(-1i) * -(~_wgslsmith_div_i32(-2147483647i, 2147483647i)));
    global0 = array<Struct_4, 5>();
    var var_2 = any(select(vec2<bool>(arg_3.c.c, all(select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_3.c.c), vec4<bool>(true, true, true, arg_0.a.x), vec4<bool>(var_0.a.x, false, false, arg_0.a.x)))), vec2<bool>(var_0.a.x, true), vec2<bool>(_wgslsmith_f_op_f32(exp2(arg_3.b)) < _wgslsmith_f_op_f32(-arg_3.b), all(vec2<bool>(false, arg_3.c.c)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.b, _wgslsmith_f_op_f32(arg_3.b * arg_2)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(403f, -339f))), vec2<bool>(var_0.a.x, arg_0.d.x < 44014i))))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_4(Struct_2(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), global1[_wgslsmith_index_u32(1u, 3u)], ~(~vec2<u32>(9661u, u_input.c)), vec4<i32>(1i, 52728i, 61736i, func_1(Struct_1(19957u, 4294967295u, false), vec2<bool>(true, false), Struct_2(vec2<bool>(false, false), global1[_wgslsmith_index_u32(u_input.b.x, 3u)], u_input.b.zy, vec4<i32>(-23913i, u_input.a.x, 15926i, u_input.a.x))))), vec2<u32>(29866u >> (_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.c, 650u)) % 32u), ~59928u), -558f, Struct_3(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.c, 31777u), _wgslsmith_mod_u32(40886u, u_input.c)), -1246f, func_2().c, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, 4294967295u), vec3<u32>(2444u, u_input.c, 17075u)), 69015u))), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f) + _wgslsmith_f_op_f32(select(-269f, -136f, true))) <= 737f, (countOneBits(u_input.c) >> (u_input.b.x % 32u)) <= u_input.b.x), all(!vec3<bool>(all(vec2<bool>(false, false)), u_input.a.x == 0i, any(vec2<bool>(true, true)))));
    let var_1 = Struct_2(!select(!(!vec2<bool>(var_0.x, var_0.x)), vec2<bool>(func_4(Struct_2(vec2<bool>(var_0.x, var_0.x), vec3<u32>(u_input.c, u_input.c, 3196u), u_input.b.zy, vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -19218i)), u_input.b.xz, 1000f, Struct_3(35272u, 875f, Struct_1(1u, 1u, true), 0u)).x, false), var_0.x), vec3<u32>(~u_input.c, ~_wgslsmith_mult_u32(~u_input.b.x, 1u), 63570u), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, ~u_input.c), u_input.b.x), u_input.b.zy), ~(_wgslsmith_sub_vec4_i32(vec4<i32>(42865i, u_input.a.x, 13820i, -1i), vec4<i32>(u_input.a.x, -45710i, 0i, -1i)) | countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, -20833i, u_input.a.x))) ^ vec4<i32>(~34765i, u_input.a.x, 9652i, ~u_input.a.x));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(391f * 2165f), -972f)))) >= _wgslsmith_f_op_f32(abs(476f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-951f, -904f) + vec2<f32>(800f, 1973f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(720f, 1000f) - vec2<f32>(-177f, -648f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(385f, 656f), vec2<f32>(534f, 1000f)))))), 2147483647i, vec2<f32>(1746f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-874f + -1000f))))), _wgslsmith_add_i32(22354i, 33834i));
    global1 = array<vec3<u32>, 3>();
    var_0 = !(!vec2<bool>(true, false && select(false, var_0.x, true)));
    var var_3 = var_1.a.x;
    var_0 = !vec2<bool>(false, any(select(vec3<bool>(var_0.x, var_2.a, var_1.a.x), vec3<bool>(var_0.x, false, true), false)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_mult_u32(~72009u, _wgslsmith_add_u32(var_1.c.x, 0u)), u_input.c, u_input.c), ~firstTrailingBit(~(~u_input.b.zy)), -1026f, select(vec4<u32>(var_1.c.x, var_1.b.x | (u_input.c & 4294967295u), var_1.b.x, abs(~u_input.b.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, var_1.b.x, 53301u, 1u), ~(~vec4<u32>(4294967295u, 32009u, var_1.c.x, var_1.b.x))), !select(!vec4<bool>(true, false, true, var_0.x), vec4<bool>(false, var_0.x, true, true), !vec4<bool>(var_2.a, false, true, var_0.x))), var_1.d.x);
}

