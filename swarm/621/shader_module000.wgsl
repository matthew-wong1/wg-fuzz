struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> u32 {
    var var_0 = Struct_5(_wgslsmith_dot_vec3_i32(countOneBits(-vec3<i32>(1i, 1i, 1i)), ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(28013i, -2147483647i), vec2<i32>(6458i, -7428i)), 45221i, max(-1i, 2147483647i))));
    var var_1 = var_0.a;
    return (_wgslsmith_sub_u32(_wgslsmith_mod_u32(~u_input.b, ~u_input.a), 1u) & 4110u) & (firstLeadingBit(_wgslsmith_mod_u32(u_input.a >> (u_input.a % 32u), u_input.b ^ u_input.a)) ^ _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 54264u), u_input.b));
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_2(vec4<bool>(!any(!vec3<bool>(true, arg_2.x, arg_0)), !(_wgslsmith_sub_u32(0u, u_input.b) != u_input.a), !arg_2.x, !(0u > func_3(1000f, vec2<bool>(false, false)))), Struct_1(~(-vec2<i32>(arg_1.a, 0i) << ((vec2<u32>(u_input.a, u_input.b) ^ vec2<u32>(39679u, 77109u)) % vec2<u32>(32u)))), Struct_1(max(-(vec2<i32>(80279i, 34926i) << (vec2<u32>(u_input.a, 21089u) % vec2<u32>(32u))), -vec2<i32>(arg_1.a, -1i))), ~(~select(~vec2<u32>(u_input.b, u_input.a), vec2<u32>(u_input.b, u_input.b), true)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(410f, 694f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-502f * 451f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-358f, 838f, 209f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(145f, 465f, 817f)))))));
    let var_1 = var_0.b;
    let var_2 = abs(~vec2<i32>(_wgslsmith_clamp_i32(~26083i, -295i, _wgslsmith_div_i32(-1i, 1i)), select(25057i, abs(var_1.a.x), arg_0 | true)));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.e.x))));
    let var_4 = var_3;
    return var_0.c;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: i32, arg_3: i32) -> u32 {
    var var_0 = Struct_1(arg_0);
    var_0 = func_2(false, Struct_5(var_0.a.x), vec4<bool>(true, true, true, true));
    var var_1 = vec2<u32>(u_input.b, min(4294967295u, 5223u));
    let var_2 = u_input.b & u_input.b;
    let var_3 = abs(firstLeadingBit(vec4<i32>(-1i) * -select(vec4<i32>(-2147483647i, -3492i, arg_3, arg_2), vec4<i32>(-2147483647i, -55469i, -3588i, -5214i), true)));
    return min(func_3(-1161f, select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), true)), abs(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(max(vec3<u32>(18852u, 50437u, var_2), vec3<u32>(var_2, 36168u, u_input.a)), reverseBits(vec3<u32>(var_1.x, 2733u, 0u))), ~(~vec3<u32>(24765u, var_1.x, var_2)))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = select(~max(~vec2<u32>(0u, u_input.a), vec2<u32>(57954u, u_input.b)) | _wgslsmith_mult_vec2_u32(~(~vec2<u32>(31063u, u_input.b)), ~(~vec2<u32>(u_input.a, u_input.b))), _wgslsmith_mult_vec2_u32(countOneBits(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), false)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(24952u, 126u)) >> (~vec2<u32>(0u, u_input.a) % vec2<u32>(32u))) & (~(vec2<u32>(u_input.a, 36520u) >> (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u))) | vec2<u32>(~4294967295u, 4294967295u)), false | !(arg_0 > _wgslsmith_f_op_f32(floor(arg_0))));
    let var_1 = -31129i;
    var var_2 = Struct_5(arg_1);
    let var_3 = any(!(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)))));
    var_2 = Struct_5(~(~min(i32(-1i) * -31466i, var_1)));
    return func_2(var_3, Struct_5(2147483647i), vec4<bool>(!var_3, var_3, !var_3 & (_wgslsmith_add_u32(var_0.x, 26576u) == 44785u), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-470f, 1116f, 397f, -105f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(241f, -443f, -448f, -158f)))) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1213f * -689f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -767f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(210f, 396f))), 451f)));
    var var_2 = func_4(-1261f, (-_wgslsmith_dot_vec3_i32(vec3<i32>(17284i, -36364i, 0i), vec3<i32>(-62434i, 6073i, 6859i)) >> ((func_1(vec2<i32>(-60841i, 1i), Struct_5(2147483647i), 0i, 12947i) | _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(43399u, u_input.b))) % 32u)) | (max(min(-8985i, 0i), select(-2147483647i, 52342i, true)) & -min(1i, 2147483647i)), select(vec4<i32>(~(-2147483647i) << (abs(u_input.b) % 32u), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-18921i, -3758i, -2147483647i, 4246i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(4029i, 20917i), vec2<i32>(11664i, 10621i)), ~(-2147483647i), i32(-1i) * -26189i)), vec4<i32>(1i, 1i, 1i, 1i), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)))));
    var var_3 = _wgslsmith_div_f32(-158f, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(12020i << ((u_input.a | abs(func_1(vec2<i32>(2692i, -10149i), Struct_5(0i), 2147483647i, var_2.a.x))) % 32u), -_wgslsmith_mult_i32(var_2.a.x, -3983i), 4294967295u);
}

