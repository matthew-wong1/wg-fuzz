struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(666f, -170f) + vec2<f32>(_wgslsmith_div_f32(-707f, 529f), _wgslsmith_f_op_f32(floor(1365f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(499f, -151f), vec2<f32>(1f, 1f))))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 961f))), -1000f))));
    let var_1 = true;
    let var_2 = Struct_2(Struct_1(-1000f), vec4<bool>(!all(select(vec2<bool>(false, var_1), vec2<bool>(true, var_1), vec2<bool>(var_1, true))), any(vec3<bool>(all(vec2<bool>(var_1, var_1)), all(vec4<bool>(false, false, false, var_1)), select(var_1, var_1, var_1))), !(!any(vec2<bool>(false, false))), any(select(!vec2<bool>(false, var_1), select(vec2<bool>(true, true), vec2<bool>(var_1, true), vec2<bool>(true, true)), true))), (~u_input.a.xyz | u_input.a.yxz) ^ ~u_input.a.yzy);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-797f, _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-var_2.a.a)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1188f) * _wgslsmith_f_op_f32(f32(-1f) * -369f)), _wgslsmith_div_f32(var_2.a.a, _wgslsmith_div_f32(586f, 280f))), var_2.b.x)));
    let var_3 = (!all(!var_2.b.yyw) & (false & (var_2.b.x && false))) & true;
    return !select(vec2<bool>(true, true), var_2.b.xw, var_2.b.zz);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>) -> vec2<i32> {
    let var_0 = ~_wgslsmith_add_vec2_u32(firstLeadingBit(countOneBits(vec2<u32>(u_input.b, u_input.b))), reverseBits(vec2<u32>(u_input.b, 1u) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.b, u_input.c), vec2<u32>(4294967295u, 80469u), vec2<bool>(true, true)), vec2<u32>(u_input.b, 4294967295u)));
    let var_1 = arg_1.x;
    var var_2 = 16878u & ~u_input.b;
    var var_3 = max(vec3<i32>(u_input.a.x, ~0i, u_input.a.x), u_input.a.zzy);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-275f + arg_1.x))), -239f));
    return u_input.a.wy;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) * arg_0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-802f, arg_0)) + -517f))));
    var var_1 = u_input.a.yy;
    let var_2 = any(select(!vec4<bool>(false, u_input.a.x < u_input.a.x, false, all(vec4<bool>(false, true, true, false))), vec4<bool>(all(vec2<bool>(true, true)), true, !(1340f > var_0.a.x), true), vec4<bool>(true, ~u_input.c > _wgslsmith_sub_u32(86674u, u_input.c), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), all(vec2<bool>(true, true)))));
    var_1 = func_4(select(func_3(), vec2<bool>(!(!var_2), !var_2), vec2<bool>(any(select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, var_2, false), vec3<bool>(false, var_2, false))), !var_2 && (u_input.b != 4294967295u))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1638f)), _wgslsmith_f_op_f32(max(412f, _wgslsmith_f_op_f32(min(889f, 156f)))))), -409f));
    var_1 = _wgslsmith_mod_vec2_i32(func_4(vec2<bool>(any(vec3<bool>(false, true, var_2)), var_2 | true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2663f, 620f))), _wgslsmith_f_op_vec2_f32(var_0.a.yy * vec2<f32>(144f, -474f)), true))), u_input.a.zy ^ vec2<i32>(func_4(!vec2<bool>(var_2, true), _wgslsmith_f_op_vec2_f32(exp2(var_0.a.zx))).x, 53750i));
    return _wgslsmith_f_op_f32(floor(arg_0));
}

fn func_1() -> i32 {
    let var_0 = ~u_input.a;
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(410f - _wgslsmith_f_op_f32(-288f * -248f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-900f * -476f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(965f))))), _wgslsmith_div_f32(-736f, -195f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-323f + _wgslsmith_f_op_f32(f32(-1f) * -739f))), -766f)));
    let var_2 = var_1.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(var_2)))) - _wgslsmith_f_op_f32(-1611f - 1247f)));
    var var_4 = select(func_3().x, !(!(true && any(vec2<bool>(true, false)))), any(select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, true))));
    return _wgslsmith_clamp_i32(_wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 29958i), select(vec2<i32>(0i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(true, false))), -var_0.x), ~firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_div_i32(-1i, u_input.a.x), -28088i)), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.yxw;
    var var_1 = 1i;
    var_1 = _wgslsmith_mod_i32(abs(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(i32(-1i) * -1i, var_0.x, 0i, select(u_input.a.x, u_input.a.x, true)))), 0i);
    var_1 = _wgslsmith_dot_vec4_i32(u_input.a, -u_input.a);
    var_1 = func_1();
    var_1 = i32(-1i) * -_wgslsmith_div_i32(30942i, u_input.a.x);
    var_1 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(select(vec4<u32>(4294967295u, 0u, ~0u, 0u), countOneBits(~vec4<u32>(u_input.b, 4294967295u, u_input.c, 0u)), false), _wgslsmith_mod_vec4_u32(vec4<u32>(31909u, u_input.c, ~25579u, ~4294967295u), vec4<u32>(44401u, u_input.c, 1u, 34645u))));
}

