struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: bool;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_4) -> u32 {
    let var_0 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_3.b, 0u, arg_3.a, arg_2) << (vec4<u32>(4294967295u, u_input.a, u_input.a, arg_2) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(66932u, 27091u, arg_3.b, 4294967295u), vec4<u32>(40322u, 1u, arg_2, u_input.a)), false), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, arg_2, arg_2, arg_3.b), vec4<u32>(85841u, arg_2, 12126u, 8615u))), 11u)], global0[_wgslsmith_index_u32(~1u, 11u)]), -719f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.c.x))))));
    global0 = array<Struct_1, 11>();
    let var_1 = arg_3.e.x;
    let var_2 = var_0.a;
    var var_3 = Struct_1(~(~(_wgslsmith_sub_u32(var_0.a.a.b, arg_2) ^ 9217u)), u_input.a << (var_2.a.d.x % 32u), vec4<i32>(_wgslsmith_clamp_i32(var_0.a.b.c.x, countOneBits(32205i), -1i), max(arg_3.d.x | var_0.a.a.c.x, _wgslsmith_mult_i32(var_1, var_0.a.a.c.x)), max(arg_3.d.x, _wgslsmith_clamp_i32(-1i, 0i, var_1)), ~(i32(-1i) * -2147483647i)) | vec4<i32>(2147483647i, var_0.a.a.c.x, ~arg_3.d.x, 13350i), vec3<u32>(1u, 1u, _wgslsmith_mod_u32(var_2.a.a, select(~var_2.a.d.x, arg_2, true))), max(abs(_wgslsmith_mult_u32(u_input.a ^ u_input.a, firstTrailingBit(var_2.a.a))), _wgslsmith_dot_vec3_u32(~countOneBits(var_2.b.d), vec3<u32>(arg_3.b >> (arg_3.a % 32u), _wgslsmith_mult_u32(var_0.a.b.b, 1002u), 13270u))));
    return var_0.a.b.e;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> vec2<bool> {
    global1 = 1u >= select(1u, ~func_3(arg_0.c.x, _wgslsmith_f_op_vec3_f32(round(arg_0.c)), _wgslsmith_sub_u32(arg_0.a, 0u), arg_0), true);
    return select(select(select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(select(false, false, true), false)), arg_1.e.x < (~arg_0.d.x >> (u_input.a % 32u))), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x - arg_1.c.x) - _wgslsmith_f_op_f32(exp2(arg_0.c.x))) <= -1000f, false == (any(vec4<bool>(true, false, true, true)) || (16247i >= arg_0.d.x))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), -1156f < arg_0.c.x), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), all(vec4<bool>(true, true, true, true))));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec3<u32>, arg_3: vec4<i32>) -> f32 {
    let var_0 = !(!(!func_2(Struct_4(0u, arg_0.a.b.b, vec3<f32>(301f, -388f, arg_0.b), vec2<i32>(13753i, -417i), arg_3.yww), Struct_4(u_input.a, 0u, vec3<f32>(-1653f, arg_0.b, 497f), arg_0.a.a.c.xz, vec3<i32>(arg_0.a.b.c.x, arg_3.x, arg_3.x)))));
    var var_1 = arg_0;
    let var_2 = abs(~reverseBits(~(~vec3<i32>(var_1.a.b.c.x, 1i, 0i))));
    let var_3 = Struct_1((var_1.a.b.e ^ max(~arg_0.a.b.a, _wgslsmith_mult_u32(4294967295u, arg_2.x))) << (func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.b)) * _wgslsmith_f_op_f32(floor(214f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-334f, arg_0.b, var_1.c) + vec3<f32>(1005f, arg_0.c, arg_0.b)))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_2.x), vec2<u32>(arg_0.a.a.e, var_1.a.a.d.x))), Struct_4(u_input.a, arg_0.a.b.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, -428f, -1106f) + vec3<f32>(-462f, var_1.c, -2033f)), abs(var_1.a.a.c.yw), vec3<i32>(1i, var_1.a.a.c.x, var_1.a.a.c.x) ^ vec3<i32>(-1i, arg_3.x, arg_3.x))) % 32u), 1u, vec4<i32>(~(-42370i), arg_0.a.b.c.x, ~(-var_2.x), abs(0i)), abs(max(arg_2, arg_0.a.a.d)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.b.a << (4294967295u % 32u), ~arg_2.x, 4294967295u) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 0u, 52690u), reverseBits(vec3<u32>(4294967295u, 0u, u_input.a))) % vec3<u32>(32u)), arg_0.a.a.d));
    var var_4 = Struct_4(~_wgslsmith_mod_u32(arg_0.a.a.d.x, ~arg_0.a.b.e & 1u), (arg_0.a.a.b & u_input.a) >> ((arg_0.a.a.a & abs(arg_0.a.b.b)) % 32u), vec3<f32>(_wgslsmith_div_f32(-642f, -327f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) - arg_0.b), -574f), firstTrailingBit(arg_3.xz), _wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(~arg_3.x), var_2.x >> (4294967295u % 32u), _wgslsmith_add_i32(-var_2.x, _wgslsmith_div_i32(6431i, arg_0.a.b.c.x))), select(vec3<i32>(var_2.x, 1i, var_3.c.x) | _wgslsmith_add_vec3_i32(vec3<i32>(20010i, 3694i, arg_0.a.b.c.x), vec3<i32>(var_2.x, -2147483647i, var_1.a.a.c.x)), max(var_2, select(arg_3.wxx, vec3<i32>(var_3.c.x, var_1.a.b.c.x, var_2.x), true)), all(vec2<bool>(true, true)))));
    return -802f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-abs(min(vec3<i32>(5729i, 2147483647i, 16435i), vec3<i32>(0i, 1266i, 1i)) >> ((vec3<u32>(4294967295u, 0u, 4294967295u) ^ vec3<u32>(u_input.a, 0u, u_input.a)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1381f) * _wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(Struct_1(u_input.a, u_input.a, vec4<i32>(2147483647i, 18033i, 5411i, -2147483647i), vec3<u32>(u_input.a, 50026u, 4294967295u), 38760u), global0[_wgslsmith_index_u32(u_input.a, 11u)]), -1210f, 112f), false, vec3<u32>(u_input.a, u_input.a, u_input.a), vec4<i32>(0i, 0i, 1i, 59722i)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-177f, 611f, 1000f, -305f) - vec4<f32>(978f, 598f, -992f, -590f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1836f, 259f, -2592f, -159f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(427f, -1418f, -645f, -863f), vec4<f32>(-1275f, 689f, -1571f, -1447f), false)), vec4<f32>(-417f, -975f, 1000f, -823f)))))), u_input.a);
}

