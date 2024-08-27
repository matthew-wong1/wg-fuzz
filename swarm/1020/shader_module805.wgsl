struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = vec2<bool>(true, arg_1.c.c.a.x);
    var var_1 = !any(arg_1.c.d.a);
    var_1 = any(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)));
    var_1 = any(!arg_1.c.c.a.yw);
    var var_2 = var_0.x & var_0.x;
    return select(_wgslsmith_sub_vec2_i32((abs(vec2<i32>(arg_1.a, arg_1.c.c.b)) | ~vec2<i32>(arg_1.c.d.b, arg_1.c.c.b)) & min(~vec2<i32>(-2147483647i, arg_1.a), -vec2<i32>(-38476i, -2147483647i)), _wgslsmith_sub_vec2_i32(vec2<i32>(firstTrailingBit(arg_1.c.d.b), reverseBits(arg_1.a)), vec2<i32>(arg_1.c.c.b, -10076i | arg_1.c.c.b))), -reverseBits(vec2<i32>(arg_1.a, 0i) ^ vec2<i32>(arg_1.c.c.b, -1i)), true);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_4) -> vec4<bool> {
    let var_0 = arg_3.c.c.e;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.a)))));
    let var_2 = arg_3.a;
    let var_3 = Struct_1(arg_0.a, arg_3.c.c.c.b);
    var var_4 = arg_3.c;
    return vec4<bool>(arg_2 != ~(~1u), !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_4.b, var_0)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.b - var_2.x))), !any(select(vec4<bool>(true, false, var_3.a.x, false), vec4<bool>(arg_0.a.x, false, false, false), all(var_3.a.yzz))), _wgslsmith_sub_u32(~(~71196u), u_input.a.x) <= countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_1.ywz, vec3<u32>(29095u, arg_1.x, arg_2)), _wgslsmith_div_u32(arg_2, u_input.b.x))));
}

fn func_2() -> i32 {
    let var_0 = all(vec2<bool>(true, all(func_3(Struct_1(vec4<bool>(false, true, true, true), -1i), vec4<u32>(u_input.c, 0u, u_input.b.x, u_input.a.x), u_input.c, Struct_4(vec2<f32>(948f, -1026f), -1i, Struct_3(-2752i, 1077f, Struct_2(vec4<bool>(false, false, false, false), true, Struct_1(vec4<bool>(true, true, false, true), -2147483647i), Struct_1(vec4<bool>(true, true, true, false), 1i), -1017f), -318f)))))) && true;
    let var_1 = Struct_1(select(vec4<bool>(true, var_0, var_0, false), select(!(!vec4<bool>(var_0, var_0, var_0, var_0)), select(func_3(Struct_1(vec4<bool>(var_0, true, var_0, var_0), 0i), vec4<u32>(u_input.c, u_input.a.x, u_input.c, 14021u), u_input.a.x, Struct_4(vec2<f32>(1582f, 1252f), 1i, Struct_3(0i, 243f, Struct_2(vec4<bool>(var_0, true, false, var_0), true, Struct_1(vec4<bool>(false, true, false, var_0), 1i), Struct_1(vec4<bool>(true, false, var_0, var_0), 13724i), -1037f), 136f))), vec4<bool>(true, false, true, true), false), vec4<bool>(var_0, any(vec2<bool>(false, var_0)), true, true)), var_0), 0i);
    let var_2 = var_1;
    let var_3 = Struct_2(select(vec4<bool>(true, true, var_0, select(var_2.a.x, var_0, all(var_2.a.xxz))), func_3(Struct_1(var_1.a, _wgslsmith_div_i32(var_1.b, 34221i)), vec4<u32>(u_input.a.x, _wgslsmith_div_u32(1u, u_input.b.x), 1u, max(u_input.c, u_input.a.x)), firstLeadingBit(u_input.c), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(617f, 868f)), var_2.b, Struct_3(var_1.b, 257f, Struct_2(var_2.a, var_1.a.x, var_2, var_1, 1000f), 683f))), select(vec4<bool>(false, !var_2.a.x, var_2.a.x, var_1.a.x), var_2.a, !vec4<bool>(var_0, false, var_1.a.x, false))), true, var_2, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1590f), -742f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(301f, -864f))), (u_input.c & u_input.b.x) < 435u))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-382f, var_3.e, var_3.e, var_3.e)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(309f, var_3.e, 1075f, var_3.e))))));
    return -41421i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 11554u;
    var var_1 = firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -1i, firstTrailingBit(45217i)) | vec2<i32>(2147483647i, 20992i), _wgslsmith_clamp_vec2_i32(vec2<i32>(~3043i, i32(-1i) * -1i), _wgslsmith_div_vec2_i32(func_1(u_input.b.x, Struct_3(-1i, -2212f, Struct_2(vec4<bool>(true, false, false, false), false, Struct_1(vec4<bool>(true, false, true, true), -61190i), Struct_1(vec4<bool>(true, true, false, true), 18468i), -1158f), 385f)), vec2<i32>(2147483647i, 35734i)), vec2<i32>(func_2(), abs(1i)))));
    var var_2 = (_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(67298i, var_1.x, var_1.x), vec3<i32>(-28952i, -1i, var_1.x))), firstTrailingBit(~vec3<i32>(var_1.x, 38339i, var_1.x))) < (var_1.x | var_1.x)) || (var_0 != countOneBits(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_0, var_0), u_input.c)));
    let var_3 = _wgslsmith_mod_vec2_u32((u_input.b & u_input.b) | u_input.a.zz, countOneBits(select(select(reverseBits(u_input.b), u_input.a.zx, true), ~vec2<u32>(1u, u_input.a.x), any(vec3<bool>(true, true, true)))));
    var_1 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(_wgslsmith_add_i32(21554i, 1i), countOneBits(-2147483647i)), vec2<i32>(-2147483647i, firstLeadingBit(-(-27182i & var_1.x))), vec2<i32>(abs(1i), _wgslsmith_clamp_i32(49486i, 14515i, 37730i) >> (~43344u % 32u)) | vec2<i32>(min(func_1(var_3.x, Struct_3(2147483647i, 953f, Struct_2(vec4<bool>(true, false, false, true), true, Struct_1(vec4<bool>(false, false, true, true), 1i), Struct_1(vec4<bool>(false, true, true, true), -12109i), 2105f), 341f)).x, abs(var_1.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-37616i, var_1.x), -vec2<i32>(var_1.x, var_1.x))));
    let var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1021f, -2035f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-427f, 815f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -560f)))))), var_1.x, Struct_3(_wgslsmith_div_i32(var_1.x, var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1313f))))), Struct_2(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true), select(true, false, 2216u > var_3.x), Struct_1(vec4<bool>(true, true, true, true), var_1.x | -27358i), Struct_1(vec4<bool>(true, true, true, false), -6718i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1f));
    let var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(1u & var_5, ~var_0), var_3)));
}

