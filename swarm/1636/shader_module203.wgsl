struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> i32 {
    return -39382i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: bool) -> Struct_4 {
    var var_0 = !(!vec3<bool>(!any(vec3<bool>(arg_0.a, arg_0.a, true)), any(vec3<bool>(false, false, false)), all(select(vec2<bool>(true, true), vec2<bool>(arg_3, true), arg_0.a))));
    let var_1 = Struct_4(_wgslsmith_mult_vec3_i32(vec3<i32>(func_3(arg_3, Struct_4(vec3<i32>(-2147483647i, arg_1.a, 0i))), min(1i, -1i), select(1i | arg_1.a, _wgslsmith_mult_i32(-38990i, u_input.a), arg_1.a < -2147483647i)), ~(~vec3<i32>(u_input.d.x, u_input.b.x, 2147483647i))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1063f, arg_2.x, -1782f)), vec3<f32>(-1000f, arg_2.x, arg_2.x)), _wgslsmith_f_op_vec3_f32(-arg_2), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2), _wgslsmith_f_op_vec3_f32(-arg_2))))));
    var_0 = !vec3<bool>(all(!select(vec4<bool>(var_0.x, var_0.x, false, arg_0.a), vec4<bool>(true, true, true, arg_3), var_0.x)), var_0.x, arg_3);
    var_0 = !(!(!(!(!vec3<bool>(true, false, arg_0.a)))));
    return var_1;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = vec4<bool>(arg_0.a.x > -13578i, !arg_1.a, !arg_1.a, !(firstLeadingBit(arg_1.b | arg_2.x) != ~37522u));
    var var_1 = abs(~abs(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(arg_1.b, 1u, arg_1.b, arg_1.b)), arg_2)));
    let var_2 = var_0.zxy;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(454f - 892f), 1021f, any(vec4<bool>(arg_1.a, var_0.x, true, var_0.x)))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(floor(705f)))), _wgslsmith_f_op_f32(f32(-1f) * -306f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-793f, -591f, -967f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-784f, -923f, -1000f))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -530f), _wgslsmith_div_f32(317f, -351f), -562f))));
    let var_4 = arg_0;
    return Struct_1(all(select(select(vec2<bool>(true, arg_1.a), vec2<bool>(var_0.x, true), !vec2<bool>(false, var_2.x)), vec2<bool>(true, var_0.x), !select(var_2.x, var_2.x, true))), arg_1.b);
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    var var_0 = 40988i;
    var var_1 = -192f;
    var var_2 = Struct_4(vec3<i32>(i32(-1i) * -11988i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, arg_0.a)) & u_input.d.xx, u_input.b.zz), u_input.d.x));
    var var_3 = func_4(func_2(Struct_1(true, ~u_input.c.x), arg_0, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(492f)), _wgslsmith_f_op_f32(round(372f)), -767f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-424f, 526f, 1358f)))))), true), Struct_1(!(!select(false, true, true)), u_input.c.x | 1u), abs(vec4<u32>(~(~1u), u_input.c.x, ~1u, u_input.c.x)));
    var var_4 = func_2(func_4(func_2(func_4(func_2(Struct_1(false, u_input.c.x), Struct_3(u_input.b.x), vec3<f32>(997f, 1601f, -1000f), var_3.a), func_4(Struct_4(u_input.b), Struct_1(true, 4294967295u), vec4<u32>(1u, u_input.c.x, var_3.b, u_input.c.x)), select(vec4<u32>(var_3.b, var_3.b, 104163u, 1u), vec4<u32>(u_input.c.x, var_3.b, 0u, 1u), true)), arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(576f, 2017f, 1000f) - vec3<f32>(-1312f, 479f, -2087f)) * vec3<f32>(-232f, 274f, 731f)), !(arg_0.a > 17032i)), Struct_1(true, u_input.c.x), ~vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 1u), reverseBits(1u), u_input.c.x, 0u)), arg_0, vec3<f32>(_wgslsmith_f_op_f32(-1000f * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(min(-241f, 427f)), var_3.a))), 2357f), var_3.a);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(759f, -840f, -1266f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1012f, 225f, -740f), vec3<f32>(-350f, 533f, -373f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-199f, 1852f, -261f))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = ~1u;
    let var_1 = u_input.b.yz;
    let var_2 = Struct_4(max(vec3<i32>(-30842i, -32415i, reverseBits(_wgslsmith_mod_i32(-3505i, 1i))), select(firstLeadingBit(vec3<i32>(1i, 30330i, var_1.x)), firstTrailingBit(arg_1.a), vec3<bool>(arg_3.x, true, arg_3.x)) | reverseBits(-vec3<i32>(52500i, 55491i, u_input.b.x))));
    var var_3 = u_input.c;
    var var_4 = any(select(vec4<bool>(false, false, arg_3.x, all(vec4<bool>(arg_3.x, arg_3.x, true, true))), !vec4<bool>(arg_3.x, arg_3.x, false, true), select(!vec4<bool>(true, arg_3.x, true, true), select(vec4<bool>(arg_3.x, arg_3.x, true, arg_3.x), vec4<bool>(arg_3.x, true, arg_3.x, false), vec4<bool>(true, false, arg_3.x, true)), u_input.b.x != var_2.a.x))) && false;
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: f32) -> StorageBuffer {
    let var_0 = Struct_3(-(~(i32(-1i) * -78193i)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.a.x, arg_0.a.x, 1u != u_input.c.x)), -1542f);
    var var_2 = 395f;
    var_2 = _wgslsmith_f_op_f32(-arg_0.a.x);
    var var_3 = var_1;
    return StorageBuffer(u_input.c.x, -461f, u_input.c.zz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1300f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1627f))), _wgslsmith_f_op_f32(f32(-1f) * -1960f), -2431f))));
    let x = u_input.a;
    s_output = func_6(func_5(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.zwz - vec3<f32>(-1208f, -650f, var_0.x)) - vec3<f32>(var_0.x, var_0.x, -101f))), Struct_4(min(vec3<i32>(15578i, u_input.b.x, 46624i), u_input.b)), func_1(Struct_3(-16697i)), select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), true), vec3<bool>(988f >= var_0.x, select(false, false, false), all(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, all(vec4<bool>(true, false, false, true))))), 693f);
}

