struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = vec2<i32>(-1i) * -u_input.d.xz;
    var_0 = ~(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(-u_input.d.xy, vec2<i32>(u_input.a, 30466i)), vec2<i32>(_wgslsmith_mod_i32(0i, u_input.d.x), -var_0.x)) | u_input.d.wx);
    var_0 = ~u_input.d.zx;
    var var_1 = Struct_2(vec4<i32>((i32(-1i) * -var_0.x) << (u_input.b % 32u), select(-u_input.d.x, -_wgslsmith_sub_i32(var_0.x, u_input.a), false), _wgslsmith_dot_vec3_i32(~u_input.d.yxz | ~u_input.d.wxz, select(max(u_input.d.yzy, u_input.d.ywx), u_input.d.zwx, vec3<bool>(true, false, false))), -(~(~var_0.x))), Struct_1(vec3<bool>(_wgslsmith_f_op_f32(abs(721f)) < _wgslsmith_f_op_f32(floor(-1438f)), true & (39166u <= u_input.c), !select(true, false, true))));
    let var_2 = -1i;
    return u_input.c;
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = vec4<u32>(~arg_0.b, reverseBits(~(~arg_0.b)), ~(~1u), func_3());
    let var_1 = arg_0.b;
    return arg_0.c.a.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1630f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(333f, -814f)) * 282f), 1f, true)))));
    var var_1 = arg_1.b;
    var_1 = arg_1.b;
    var_1 = arg_2.b;
    let var_2 = Struct_1(arg_1.b.a);
    return Struct_1(!(!(!(!vec3<bool>(true, arg_0.x, false)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>) -> f32 {
    var var_0 = func_4(select(vec2<bool>(~u_input.c > (u_input.b ^ 75233u), !arg_0.x), select(arg_0.zy, arg_0.xy, !arg_1.xz), select(func_2(Struct_3(u_input.d.zzx, u_input.b, Struct_1(vec3<bool>(arg_0.x, arg_0.x, arg_1.x)), vec4<f32>(792f, -1587f, 120f, -1028f))), select(select(true, false, arg_0.x), true, !arg_0.x), !arg_0.x)), Struct_2(u_input.d, Struct_1(select(select(arg_1, arg_0.wzx, arg_0.x), !arg_0.wzw, arg_1))), Struct_2(vec4<i32>(_wgslsmith_clamp_i32(abs(u_input.a), ~0i, min(0i, u_input.a)), 2147483647i, u_input.a, 15737i), Struct_1(!select(vec3<bool>(true, false, true), arg_0.xzz, vec3<bool>(true, true, arg_0.x)))));
    var var_1 = !select(var_0.a, vec3<bool>(any(!vec2<bool>(true, arg_1.x)), false, any(vec4<bool>(var_0.a.x, arg_0.x, arg_1.x, arg_0.x))), all(!func_4(vec2<bool>(false, false), Struct_2(vec4<i32>(0i, 0i, 26316i, 1i), Struct_1(vec3<bool>(false, var_0.a.x, true))), Struct_2(u_input.d, Struct_1(var_0.a))).a.xz));
    var_0 = func_4(vec2<bool>(true, arg_0.x), Struct_2(u_input.d, Struct_1(arg_0.yyw)), Struct_2(u_input.d, Struct_1(vec3<bool>(true, true, true))));
    var_1 = !(!select(select(select(vec3<bool>(var_0.a.x, var_1.x, true), arg_0.xyw, arg_1), vec3<bool>(true, arg_1.x, arg_1.x), select(arg_0.xxz, vec3<bool>(var_0.a.x, arg_0.x, true), vec3<bool>(arg_0.x, var_1.x, false))), func_4(select(vec2<bool>(true, true), var_0.a.zx, var_1.x), Struct_2(u_input.d, Struct_1(var_0.a)), Struct_2(u_input.d, Struct_1(vec3<bool>(var_1.x, false, false)))).a, false));
    let var_2 = var_0.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1260f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -405f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, false, false), vec3<bool>(true, false, true)))))), _wgslsmith_f_op_f32(f32(-1f) * -1699f), -761f, _wgslsmith_f_op_f32(-514f + 1127f)));
    let var_1 = Struct_2(-vec4<i32>(firstLeadingBit(~33155i), -1i, _wgslsmith_div_i32(u_input.a, u_input.a) << (countOneBits(0u) % 32u), -2210i), func_4(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)), Struct_2(max(firstLeadingBit(vec4<i32>(u_input.d.x, u_input.a, -2147483647i, 26258i)), ~vec4<i32>(1i, u_input.a, -32948i, u_input.a)), func_4(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_2(vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.a), Struct_1(vec3<bool>(true, true, true))), Struct_2(vec4<i32>(1i, u_input.d.x, u_input.d.x, 0i), Struct_1(vec3<bool>(false, false, true))))), Struct_2(abs(u_input.d), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xww));
    let var_3 = 46960u;
    let var_4 = _wgslsmith_f_op_f32(-3432f * _wgslsmith_f_op_f32(-var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(233f, var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_2.xz, vec2<f32>(-567f, _wgslsmith_f_op_f32(step(1251f, 1000f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.yw))))), u_input.c);
}

