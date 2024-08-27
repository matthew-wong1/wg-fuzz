struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(2147483647i, 48719i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_3) -> i32 {
    global0 = Struct_3(_wgslsmith_add_i32(u_input.a, abs(_wgslsmith_sub_i32(arg_0.x, u_input.d.x))) >> (2619u % 32u), u_input.e.x);
    let var_0 = false;
    var var_1 = ~(-25334i);
    let var_2 = Struct_3(-_wgslsmith_clamp_i32(-71062i, 23987i, -1i), arg_0.x);
    var_1 = -1i;
    return u_input.a;
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    let var_0 = countOneBits(-u_input.d.x);
    global0 = Struct_3(_wgslsmith_mult_i32(abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.a, 2147483647i), vec2<i32>(-1i, -5892i))), 27428i), ~0i);
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = ~_wgslsmith_mod_vec3_i32(u_input.e, _wgslsmith_mod_vec3_i32(u_input.e & ~u_input.d.wwz, vec3<i32>(min(21923i, -16401i), 653i >> (1u % 32u), var_1.b)));
    return Struct_2(0i, var_2.x, 383f);
}

fn func_1(arg_0: f32, arg_1: u32) -> vec3<u32> {
    var var_0 = func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1414f))), Struct_3(19947i, func_2(-u_input.d.xx, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(40032u, 12461u, u_input.b), vec3<u32>(u_input.c, 1u, arg_1)), 0u, ~102339u, _wgslsmith_dot_vec3_u32(vec3<u32>(21937u, 79776u, arg_1), vec3<u32>(u_input.b, 0u, u_input.c))), Struct_3(global0.b, firstLeadingBit(global0.a)))));
    let var_1 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * arg_0), Struct_3(global0.b, -var_0.a));
    var var_2 = global0.b;
    let var_3 = -71951i;
    let var_4 = countOneBits(~firstTrailingBit(abs(2147483647i)));
    return vec3<u32>(u_input.c, _wgslsmith_add_u32(countOneBits(max(_wgslsmith_div_u32(u_input.c, u_input.b), u_input.b)), max(u_input.b, ~arg_1)), countOneBits(u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(min(vec3<u32>(106228u, 4294967295u, 8860u) ^ vec3<u32>(u_input.c, u_input.c, 29359u), vec3<u32>(u_input.b, 1u, u_input.b) | vec3<u32>(u_input.c, u_input.b, 11762u)), func_1(1f, u_input.b)), _wgslsmith_mult_vec3_u32(~reverseBits(~vec3<u32>(23103u, u_input.c, 4294967295u)), vec3<u32>(firstTrailingBit(abs(u_input.b)), 1u, u_input.c)));
    global0 = Struct_3(7673i, u_input.e.x);
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(abs(~u_input.b >> (firstLeadingBit(u_input.c) % 32u)), var_0.x), _wgslsmith_dot_vec2_u32(var_0.zx, ~_wgslsmith_mult_vec2_u32(var_0.xz, select(var_0.zz, vec2<u32>(2811u, 0u), true))), _wgslsmith_mod_u32(73068u, var_0.x));
    global0 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_mod_i32(func_2(u_input.d.yz, vec4<u32>(3529u, 48704u, u_input.c, 18296u), Struct_3(-11571i, u_input.a)), u_input.d.x) & -34735i, _wgslsmith_mod_i32(-u_input.e.x, global0.b) ^ ((-19922i >> (0u % 32u)) >> (var_0.x % 32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(29281i), 24188i, global0.b), u_input.d.ywy));
    var var_2 = vec3<bool>(true, true, true);
    var var_3 = vec4<bool>(true, !var_2.x, all(!select(vec3<bool>(var_2.x, true, true), !vec3<bool>(true, var_2.x, var_2.x), var_2.x)), false);
    var var_4 = global0.b;
    let var_5 = Struct_2(u_input.a, _wgslsmith_mod_i32(2147483647i << (~(~var_1.x) % 32u), global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1631f)) + _wgslsmith_f_op_f32(f32(-1f) * -1776f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -335f) * _wgslsmith_div_f32(885f, -1000f)))));
    var_3 = vec4<bool>(var_2.x, all(select(select(!var_3.wy, var_2.zz, vec2<bool>(false, var_2.x)), select(vec2<bool>(false, true), select(vec2<bool>(var_2.x, var_3.x), var_2.yx, false), var_3.x), select(!vec2<bool>(var_3.x, false), vec2<bool>(var_3.x, var_2.x), true))), !var_3.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-581f, 372f))))))), select(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_0, vec3<u32>(var_1.x, 1u, 17487u)), var_0), 0u), 75410u, true));
}

