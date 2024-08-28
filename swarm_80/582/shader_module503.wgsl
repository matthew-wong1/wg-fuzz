struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 8>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = Struct_5(Struct_4(Struct_3(Struct_2(arg_3.a || true, select(true, arg_1.a.x, true), vec2<u32>(arg_2.x, 42221u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(6994u, 8u)], global1[_wgslsmith_index_u32(arg_2.x, 8u)])))), arg_3.c.x, arg_3);
    var var_1 = any(!select(vec3<bool>(all(vec2<bool>(false, true)), all(arg_1.a), true), select(vec3<bool>(true, true, true), !vec3<bool>(arg_3.a, var_0.c.b, true), any(vec3<bool>(true, var_0.c.a, arg_1.a.x))), !vec3<bool>(arg_1.a.x, false, true)));
    global1 = array<f32, 8>();
    let var_2 = var_0.a.a;
    let var_3 = var_0.a;
    return vec2<u32>(0u, var_2.a.c.x);
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(select(-46656i > _wgslsmith_mult_i32(-294i, u_input.a.x), all(vec3<bool>(true, true, true)), true), any(vec2<bool>(true, true)), func_3(~_wgslsmith_add_i32(14018i, -8435i), Struct_1(vec2<bool>(true, false)), arg_0, Struct_2(true, true, ~arg_0.xy))));
    let var_1 = Struct_3(Struct_2(true, all(vec3<bool>(true, true, true)), _wgslsmith_mod_vec2_u32(var_0.a.c, ~arg_0.yx)));
    var var_2 = var_1;
    let var_3 = var_1;
    var var_4 = 1053f;
    return Struct_3(Struct_2(var_1.a.a, false, ~(firstLeadingBit(vec2<u32>(78065u, var_2.a.c.x)) | var_3.a.c)));
}

fn func_1(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(91859u, 8u)], 986f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(1u, 8u)], -1762f, global1[_wgslsmith_index_u32(arg_0.b, 8u)]))) + vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)], 957f)))));
    let var_1 = abs(~1u);
    var var_2 = func_2(arg_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1817f)), 1503f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1547f)));
}

fn func_4(arg_0: f32) -> Struct_4 {
    var var_0 = -(u_input.a.x << (firstLeadingBit(0u & func_2(vec3<u32>(72064u, 1809u, 4294967295u)).a.c.x) % 32u));
    var var_1 = Struct_1(select(vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), -16541i < u_input.a.x), select(vec2<bool>(true, true), vec2<bool>(u_input.a.x != 1i, true), vec2<bool>(true, true)), vec2<bool>(_wgslsmith_f_op_f32(abs(-341f)) != _wgslsmith_f_op_f32(455f - arg_0), select(true, false, true))));
    var_1 = Struct_1(var_1.a);
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_5(Struct_4(Struct_3(Struct_2(var_1.a.x, var_1.a.x, vec2<u32>(4294967295u, 0u))), false), 19002u, func_2(select(vec3<u32>(0u, 71573u, 109869u), vec3<u32>(4294967295u, 0u, 56751u), var_1.a.x)).a), vec3<u32>(70038u, ~57369u, ~_wgslsmith_div_u32(0u, 4294967295u)), Struct_1(!select(var_1.a, vec2<bool>(var_1.a.x, var_1.a.x), var_1.a)))), arg_0, any(!(!(!vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x))))));
    var_1 = Struct_1(select(vec2<bool>(!any(vec2<bool>(var_1.a.x, var_1.a.x)), !(u_input.a.x == 48583i)), vec2<bool>(var_1.a.x, all(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)) || true), select(vec2<bool>(true, true), !vec2<bool>(true, var_1.a.x), true)));
    return Struct_4(Struct_3(func_2(vec3<u32>(18543u, abs(1u), ~4294967295u)).a), global1[_wgslsmith_index_u32(42778u, 8u)] > _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(62078u, 8u)])));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-580f, -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(arg_1.a.a.c.x, 8u)], _wgslsmith_div_f32(180f, global1[_wgslsmith_index_u32(4294967295u, 8u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1307f + -478f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~38794u, 8u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * global1[_wgslsmith_index_u32(select(1u, arg_1.a.a.c.x, arg_1.a.a.a), 8u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~max(18361u, arg_1.a.a.c.x), 8u)] - _wgslsmith_f_op_f32(func_1(Struct_5(arg_1, 38344u, arg_1.a.a), ~vec3<u32>(arg_1.a.a.c.x, arg_1.a.a.c.x, arg_1.a.a.c.x), Struct_1(vec2<bool>(arg_1.b, false)))))));
    let var_1 = Struct_5(Struct_4(Struct_3(arg_1.a.a), 0u >= max(arg_1.a.a.c.x, _wgslsmith_mod_u32(115965u, 26478u))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, reverseBits(~39723u), arg_1.a.a.c.x), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.a.a.c.x, 0u, arg_1.a.a.c.x), vec3<u32>(arg_1.a.a.c.x, 72082u, arg_1.a.a.c.x), vec3<u32>(arg_1.a.a.c.x, 61132u, arg_1.a.a.c.x)))), Struct_2(arg_1.a.a.a, func_4(-540f).a.a.a, vec2<u32>(1u, arg_1.a.a.c.x)));
    let var_2 = _wgslsmith_mult_i32(arg_0.x, ~_wgslsmith_mod_i32(57524i, u_input.a.x) & ~u_input.a.x) <= ~firstLeadingBit(~(~arg_0.x));
    let var_3 = func_4(var_0.x);
    var var_4 = u_input.a;
    return StorageBuffer(min(65928u, var_3.a.a.c.x), ~arg_1.a.a.c, _wgslsmith_f_op_f32(1216f * _wgslsmith_f_op_f32(f32(-1f) * -371f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(vec4<i32>(u_input.a.x, 680i, _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, abs(u_input.a.x)), ~abs(u_input.a.x)), _wgslsmith_sub_i32(2147483647i, -u_input.a.x << (~1u % 32u))), func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_5(Struct_4(Struct_3(Struct_2(true, true, vec2<u32>(54141u, 1u))), false), 1u, Struct_2(false, true, vec2<u32>(14923u, 32213u))), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 33592u, 1506u), vec3<u32>(2725u, 1u, 24205u)), Struct_1(vec2<bool>(true, true))))))));
}

