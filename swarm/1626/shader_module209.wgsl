struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-446f, 1f, -1265f) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-204f, 1479f, 1774f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1035f, 1000f, -774f) - vec3<f32>(-2532f, -3246f, -331f)))))));
    let var_1 = Struct_3(false, Struct_1(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), true))), vec3<bool>(false, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), 730f)) <= _wgslsmith_f_op_f32(var_0.x * var_0.x), true), var_0.x);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -205f), _wgslsmith_f_op_f32(-var_1.d), var_0.x);
    let var_2 = Struct_1(!(any(var_1.c) != true));
    let var_3 = Struct_1(var_2.a);
    return u_input.a.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-645f * 115f)), _wgslsmith_f_op_f32(f32(-1f) * -297f), true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(137f + 942f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(921f - 105f), _wgslsmith_f_op_f32(f32(-1f) * -357f)))), true))));
    var var_2 = -(~(vec2<i32>(~arg_2, func_3(Struct_2(vec3<u32>(1u, arg_0.x, 5226u)), Struct_2(vec3<u32>(arg_0.x, arg_0.x, 0u)), Struct_2(arg_0.yyx))) << (_wgslsmith_clamp_vec2_u32(arg_0.yy, vec2<u32>(0u, 4294967295u), arg_0.yx << (arg_0.zy % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_3 = Struct_2(vec3<u32>(48075u, _wgslsmith_sub_u32(~_wgslsmith_add_u32(arg_0.x, arg_0.x), firstLeadingBit(1u)), arg_0.x << (0u % 32u)));
    var_3 = Struct_2(vec3<u32>(3151u, 4294967295u, var_3.a.x));
    return Struct_1(true);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>) -> vec2<f32> {
    var var_0 = Struct_3(true, func_2(~vec4<u32>(arg_0.x, ~arg_0.x, arg_0.x, ~arg_0.x), arg_1.x, countOneBits(-reverseBits(u_input.a.x))), arg_1, _wgslsmith_f_op_f32(573f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(973f - -383f), -1024f)))));
    var var_1 = u_input.a.x;
    var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, -abs(u_input.a) | vec3<i32>(~(-1i), ~u_input.a.x, firstLeadingBit(u_input.a.x))), u_input.a);
    let var_2 = all(!var_0.c.yy);
    let var_3 = vec4<u32>(41270u, ~(~arg_0.x), _wgslsmith_div_u32(~_wgslsmith_mod_u32(min(1u, 1u), 56413u), ~3251u), min(1u ^ _wgslsmith_sub_u32(arg_0.x, countOneBits(6908u)), _wgslsmith_sub_u32(~arg_0.x, ~44871u)));
    return vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.d)), -171f) - _wgslsmith_f_op_f32(var_0.d * 667f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-736f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f) - -740f)), _wgslsmith_f_op_f32(max(-1425f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-358f * 1624f) - 1374f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-439f, -508f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-892f, 1543f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-778f, -951f), vec2<f32>(-1000f, 1680f))) - _wgslsmith_f_op_vec2_f32(func_1(vec4<u32>(112832u, 28042u, 36416u, 75739u), vec3<bool>(true, true, true)))))), select(!vec2<bool>(true, all(vec2<bool>(false, false))), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(any(vec4<bool>(true, false, true, true)), false)), vec2<bool>(true, false))));
    let var_1 = Struct_1(1i <= abs(-(-23321i | u_input.a.x)));
    var var_2 = var_1;
    let var_3 = Struct_2(select(vec3<u32>(1u, 1u, 1u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), all(vec4<bool>(false, var_2.a, !var_1.a, var_1.a))));
    var var_4 = ((select(~u_input.a.x, ~u_input.a.x, var_2.a) == u_input.a.x) | var_1.a) & (var_0.x == var_0.x);
    var_4 = all(select(!vec3<bool>(var_2.a, all(vec4<bool>(false, true, false, var_2.a)), false | var_1.a), vec3<bool>(any(vec3<bool>(true, var_2.a, true)), all(select(vec4<bool>(var_1.a, false, false, true), vec4<bool>(true, var_1.a, var_2.a, false), vec4<bool>(var_1.a, false, true, var_1.a))), true), any(vec4<bool>(var_2.a, var_1.a, false, false)) || !any(vec2<bool>(var_1.a, false))));
    var var_5 = !all(select(vec2<bool>(func_2(vec4<u32>(57317u, var_3.a.x, var_3.a.x, 4294967295u), var_1.a, -2147483647i).a, all(vec4<bool>(var_1.a, false, var_2.a, var_2.a))), vec2<bool>(true, true), var_1.a));
    let var_6 = any(!(!(!select(vec4<bool>(true, true, var_2.a, var_2.a), vec4<bool>(true, false, false, false), vec4<bool>(var_2.a, true, var_1.a, var_1.a)))));
    var_5 = !var_6;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, select(~firstTrailingBit(firstTrailingBit(vec2<u32>(var_3.a.x, var_3.a.x))), vec2<u32>(11964u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a.x, var_3.a.x), var_3.a.zz), 0u)), vec2<bool>(false, all(select(vec3<bool>(var_1.a, false, true), vec3<bool>(var_1.a, false, var_2.a), vec3<bool>(true, true, true))))));
}

