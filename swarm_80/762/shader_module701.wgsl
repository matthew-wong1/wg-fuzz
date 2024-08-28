struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> i32 {
    var var_0 = vec3<i32>(abs(-u_input.a.x), u_input.a.x << (~(~u_input.b.x ^ _wgslsmith_clamp_u32(4294967295u, u_input.b.x, u_input.b.x)) % 32u), u_input.a.x);
    let var_1 = Struct_1(vec2<u32>(firstLeadingBit(1u | _wgslsmith_clamp_u32(arg_1.c, 20145u, 7805u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, arg_1.c) | ~u_input.b, select(~arg_1.b.a, arg_1.b.b, !arg_0.xz))), vec2<u32>(u_input.b.x, 0u), !((u_input.b.x >= ~71952u) || (var_0.x < (i32(-1i) * -1i))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-125f - 2200f), _wgslsmith_f_op_f32(floor(147f)))) * arg_1.a.x), global0.b.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-574f, arg_1.a.x, arg_1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.x)))), global0.b));
    global1 = array<Struct_1, 1>();
    return u_input.a.x;
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 1u)];
    let var_1 = _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, min(u_input.a.x, min(func_3(select(vec3<bool>(var_0.c, false, true), vec3<bool>(var_0.c, false, true), vec3<bool>(var_0.c, var_0.c, var_0.c)), Struct_3(vec4<f32>(-1193f, global0.a, -422f, -513f), global1[_wgslsmith_index_u32(0u, 1u)], 13213u, var_0.c)), -_wgslsmith_add_i32(46676i, u_input.a.x))));
    var var_2 = global0.b.xyw;
    let var_3 = false;
    global0 = Struct_4(1058f, global0.b);
    return var_0.c;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.a)), _wgslsmith_f_op_f32(sign(global0.b.x)));
    var var_1 = ~_wgslsmith_mod_i32(0i, -16534i);
    var var_2 = -10284i;
    var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~max(u_input.a.xz, vec2<i32>(52020i, 1i)) | -firstLeadingBit(vec2<i32>(-34566i, 1i)), min(~u_input.a.zx | select(u_input.a.xz, vec2<i32>(u_input.a.x, -2147483647i), vec2<bool>(true, false)), ~u_input.a.yy)), u_input.a.x);
    var_1 = -select(2147483647i, reverseBits(-arg_0.c), any(!select(vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.c), vec4<bool>(true, arg_0.a, arg_1.c, true), vec4<bool>(false, arg_0.a, arg_1.c, arg_0.b.c))));
    return Struct_4(-2328f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.a, -800f, 604f, global0.b.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(3140f, 949f, global0.a, -273f) * global0.b))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global0.b))))));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1229f));
    let var_1 = Struct_3(vec4<f32>(343f, var_0.a, -357f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) * _wgslsmith_div_f32(var_0.a, 366f)) * _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_div_f32(-592f, -453f)))), Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.b.x, u_input.b.x), (u_input.b >> (vec2<u32>(25209u, u_input.b.x) % vec2<u32>(32u))) & vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b, !(u_input.a.x >= -u_input.a.x)), 0u, 45657i >= u_input.a.x);
    global0 = func_4(Struct_5(func_2(u_input.a.x), global1[_wgslsmith_index_u32(var_1.c, 1u)], 1i, select(-(-21702i ^ u_input.a.x), -44372i, false)), Struct_1(~select(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, 1u) | var_1.b.a, select(vec2<bool>(var_1.d, false), vec2<bool>(false, false), var_1.b.c)), u_input.b, any(vec2<bool>(true, true))));
    var var_2 = !var_1.b.c;
    var var_3 = Struct_5(!any(select(vec3<bool>(var_1.b.c, var_1.b.c, true), select(vec3<bool>(var_1.d, true, true), vec3<bool>(var_1.d, true, var_1.b.c), vec3<bool>(false, var_1.b.c, var_1.d)), vec3<bool>(var_1.b.c, false, var_1.d))), var_1.b, 0i, -1i);
    return Struct_4(1556f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -356f, _wgslsmith_f_op_f32(sign(-1796f)), _wgslsmith_f_op_f32(-var_0.a)) - var_1.a) * global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, select(~(i32(-1i) * -2147483647i), min(-2147483647i, 0i), true)), ~firstLeadingBit(~u_input.a.x));
    let var_1 = func_1();
    global0 = func_1();
    var var_2 = Struct_4(_wgslsmith_f_op_f32(max(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * 409f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_1.b)) - vec4<f32>(-931f, _wgslsmith_f_op_f32(-var_1.a), 953f, -1160f))));
    var_2 = Struct_4(_wgslsmith_div_f32(220f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-419f * _wgslsmith_div_f32(-144f, 1266f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(641f, 1502f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-700f, -410f, -1393f, 234f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.b.x, -663f, var_1.a, var_2.b.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wz);
}

