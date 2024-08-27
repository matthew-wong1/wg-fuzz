struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_5) -> vec2<bool> {
    let var_0 = arg_2.b;
    var var_1 = arg_2.b;
    var_1 = Struct_1(vec4<bool>(any(var_1.a.xwx), any(vec3<bool>(any(var_1.a.zw), select(true, true, true), any(var_1.a))), !var_0.a.x, _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(16975u, 23523u, arg_2.a, 7475u), vec4<u32>(76783u, u_input.b.x, arg_2.a, u_input.b.x))) == 0u));
    return vec2<bool>(false, false);
}

fn func_2() -> f32 {
    let var_0 = true;
    let var_1 = select(!vec2<bool>(true, (i32(-1i) * -2147483647i) < u_input.c), select(vec2<bool>(true, var_0), !select(vec2<bool>(true, true), select(vec2<bool>(var_0, var_0), vec2<bool>(false, true), true), false), select(!select(vec2<bool>(var_0, false), vec2<bool>(false, var_0), var_0), select(!vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), var_0), !vec2<bool>(false, var_0)), true)), !func_3(Struct_2(Struct_1(vec4<bool>(var_0, true, false, var_0))), !(!vec3<bool>(var_0, var_0, true)), Struct_5(_wgslsmith_mod_u32(u_input.d.x, 997u), Struct_1(vec4<bool>(false, var_0, var_0, var_0)), Struct_3(vec2<f32>(1000f, -142f)), vec2<bool>(var_0, false))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-473f * -1000f))), _wgslsmith_f_op_f32(abs(-627f))));
    var var_3 = 1006u;
    var_3 = _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 71204u >> (_wgslsmith_clamp_u32(u_input.b.x, select(82225u, 71160u, var_0), 12802u) % 32u)), 43899u);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-990f * _wgslsmith_f_op_f32(var_2.x - -145f)), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(-var_2.x))))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: f32) -> Struct_5 {
    var var_0 = vec2<i32>(-2147483647i, arg_1);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1179f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * -1997f))))));
    let var_2 = Struct_5(~(~_wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, u_input.b.x), _wgslsmith_mod_u32(4294967295u, 32310u))), Struct_1(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)))), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(304f - arg_2), _wgslsmith_f_op_f32(-arg_2)))), func_3(Struct_2(Struct_1(vec4<bool>(true, true, true, true))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), select(true, true, false)), Struct_5(arg_0, Struct_1(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false))), Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, 899f), vec2<f32>(-391f, -735f))), vec2<bool>(true, true))));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(621f, arg_2, 870f, var_1.x) - vec4<f32>(arg_2, 172f, var_1.x, arg_2)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.a.x, arg_2, -314f, var_1.x) - vec4<f32>(-1179f, var_1.x, 1296f, 1671f))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(253f)), -623f, _wgslsmith_f_op_f32(f32(-1f) * -1246f), _wgslsmith_f_op_f32(min(var_2.c.a.x, var_2.c.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.a.x, var_1.x, -120f, var_2.c.a.x)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1668f, -1000f, var_2.c.a.x, 666f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1874f, var_2.c.a.x, -214f, var_2.c.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-167f, arg_2, 1124f, arg_2))))), all(vec3<bool>(all(!var_2.b.a), all(select(var_2.b.a, var_2.b.a, var_2.b.a.x)), any(select(var_2.b.a.zz, var_2.b.a.xw, vec2<bool>(var_2.b.a.x, var_2.b.a.x)))))));
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1191f, 1000f, 126f, var_2.c.a.x) * vec4<f32>(1385f, -951f, -644f, 515f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1366f, var_2.c.a.x, var_3.x, 1269f) * vec4<f32>(var_3.x, var_3.x, var_3.x, -2199f)), vec4<f32>(_wgslsmith_f_op_f32(616f - -639f), 171f, arg_2, var_2.c.a.x)))));
    return Struct_5(~firstTrailingBit(u_input.a.x) | (countOneBits(_wgslsmith_div_u32(u_input.b.x, var_2.a)) | ~_wgslsmith_mult_u32(62671u, 1u)), var_2.b, var_2.c, func_3(Struct_2(var_2.b), !select(!var_2.b.a.zwy, select(vec3<bool>(true, var_2.b.a.x, var_2.b.a.x), var_2.b.a.yyw, var_2.b.a.xwz), select(var_2.b.a.yyw, vec3<bool>(true, var_2.b.a.x, true), vec3<bool>(true, true, false))), var_2));
}

fn func_4(arg_0: Struct_5) -> f32 {
    let var_0 = ~_wgslsmith_mod_vec4_i32(firstTrailingBit(-vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c)), min(min(vec4<i32>(-2147483647i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, 34082i)), vec4<i32>(0i, u_input.c, u_input.c, 41498i) << (vec4<u32>(16026u, 1326u, 37079u, arg_0.a) % vec4<u32>(32u)))) << (~vec4<u32>(1u << ((arg_0.a & arg_0.a) % 32u), arg_0.a, u_input.b.x, 11066u) % vec4<u32>(32u));
    let var_1 = 8695u;
    var var_2 = Struct_4(var_0.x, 1u, select(~104212u, abs(u_input.a.x), true), Struct_2(Struct_1(!arg_0.b.a)));
    var_2 = Struct_4(0i, 1u, _wgslsmith_mult_u32(0u, u_input.d.x), Struct_2(func_1(~firstLeadingBit(1u), ~var_0.x << (_wgslsmith_mult_u32(var_2.c, 1u) % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1276f - arg_0.c.a.x), _wgslsmith_f_op_f32(-846f - 1033f))).b));
    var var_3 = _wgslsmith_sub_vec3_i32(-var_0.yyy, var_0.yzz);
    return _wgslsmith_f_op_f32(trunc(arg_0.c.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(~u_input.a.x, u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-435f + -465f) * -787f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-536f, -1321f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2121f, 396f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(firstTrailingBit(127012u))), abs(0u));
}

