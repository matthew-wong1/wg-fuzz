struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, -2147483647i <= u_input.b, u_input.a == 1u)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), vec3<bool>(select(true, false, false) != true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), true)), Struct_1(true), vec4<i32>(firstTrailingBit(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, 1123i), vec4<i32>(-2147483647i, 42901i, -2147483647i, u_input.b)))), 10214i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, -12809i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -14475i, u_input.b), vec3<i32>(1i, -12776i, u_input.b))) ^ _wgslsmith_mod_i32(u_input.b >> (u_input.a % 32u), -2147483647i), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1074f, -454f) * _wgslsmith_f_op_f32(max(1000f, 666f))), !all(vec4<bool>(true, false, true, true))))), u_input.a > 1u);
    var_0 = Struct_2(!vec3<bool>(true, var_0.e, true), Struct_1(true), var_0.c, _wgslsmith_f_op_f32(max(var_0.d, var_0.d)), true);
    let var_1 = Struct_2(var_0.a, Struct_1(!var_0.a.x || var_0.a.x), firstLeadingBit(reverseBits(vec4<i32>(u_input.b, 24138i, 2147483647i, u_input.b) & -var_0.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-794f + var_0.d))), !(!(false && any(var_0.a.zx))));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-879f, -358f, var_1.d)))))));
    let var_3 = Struct_3(select(select(vec4<bool>(u_input.b <= var_1.c.x, all(vec4<bool>(false, false, var_1.a.x, false)), var_0.a.x, var_1.b.a), !select(vec4<bool>(true, false, var_1.a.x, true), vec4<bool>(true, false, true, true), true), true), vec4<bool>(true, true, true, true), true), var_1);
    return vec3<bool>(var_1.e, !var_3.b.e, true);
}

fn func_2(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = Struct_3(vec4<bool>(!(!any(vec4<bool>(true, false, false, true))), true, arg_1, !arg_1), Struct_2(select(!vec3<bool>(arg_1, false, true), vec3<bool>(true, arg_1, !arg_1), func_3()), Struct_1(!(arg_0 < arg_0)), vec4<i32>(max(-1i & arg_0, i32(-1i) * -2147483647i), _wgslsmith_mod_i32(~u_input.b, -21295i), -2147483647i, abs(-44172i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -816f)))), !arg_1));
    var_0 = Struct_3(!(!(!var_0.a)), Struct_2(vec3<bool>(func_3().x, all(!vec3<bool>(arg_1, true, var_0.b.b.a)), func_3().x), Struct_1(false), -firstLeadingBit(var_0.b.c), _wgslsmith_f_op_f32(f32(-1f) * -648f), !(arg_1 && false)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-698f + var_0.b.d) - _wgslsmith_f_op_f32(var_0.b.d - var_0.b.d)), 1037f)), _wgslsmith_f_op_f32(f32(-1f) * -692f), _wgslsmith_f_op_f32(-275f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.d, -154f)) - _wgslsmith_f_op_f32(var_0.b.d + var_0.b.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.d * var_0.b.d)))));
    var_0 = Struct_3(var_0.a, Struct_2(var_0.b.a, var_0.b.b, var_0.b.c, 457f, arg_1));
    var var_2 = select(vec4<bool>(true, any(var_0.a.zyy), !(-581f <= var_0.b.d), arg_0 > firstTrailingBit(firstTrailingBit(-24763i))), vec4<bool>(arg_1, true, !var_0.a.x, func_3().x), arg_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d) + var_0.b.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(185f, -536f))))) * 606f);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(920f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-884f, -1000f)))))));
    var_0 = _wgslsmith_f_op_f32(-1169f - _wgslsmith_f_op_f32(1053f * -664f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(13724i, false)) * 377f));
    var_1 = -1000f;
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_1.x, (~arg_0.x >> (u_input.a % 32u)) << (reverseBits(~arg_2.x) % 32u), u_input.b), arg_0);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-844f, 348f, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = Struct_2(vec3<bool>(select(true, false, select(u_input.b < var_0, false, true)), false, true), Struct_1(!(!(u_input.c.x < 15607u))), ~(-(~(-vec4<i32>(-21896i, u_input.b, var_0, -5924i)))), _wgslsmith_f_op_f32(min(232f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(485f, _wgslsmith_f_op_f32(ceil(-1492f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1411f), _wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.b, u_input.b, 2147483647i, -8135i), vec2<i32>(var_0, var_0), u_input.c)))))), true);
    var var_2 = u_input.c.x;
    var_2 = 3813u;
    var var_3 = ~44818u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, -117f, 1000f, var_1.d)))) * vec4<f32>(_wgslsmith_div_f32(var_1.d, 598f), var_1.d, 1584f, _wgslsmith_f_op_f32(f32(-1f) * -176f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1020f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d, 943f)), 1933f, 599f), select(any(!vec2<bool>(var_1.b.a, var_1.a.x)), !var_1.a.x | any(vec4<bool>(false, var_1.b.a, true, var_1.e)), any(select(var_1.a, vec3<bool>(var_1.a.x, var_1.e, true), vec3<bool>(var_1.e, true, var_1.a.x)))))), ~reverseBits(_wgslsmith_add_i32(reverseBits(var_1.c.x), firstTrailingBit(var_0))), var_1.c.xx, min(-1i, _wgslsmith_mult_i32(var_1.c.x, 44089i)), ~(~_wgslsmith_add_vec4_i32(var_1.c, var_1.c)));
}

