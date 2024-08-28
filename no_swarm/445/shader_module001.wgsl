struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(19826i, 1i);

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec3<f32>(127f, -427f, -488f), -1189f), Struct_3(vec3<f32>(1000f, -535f, -184f), 605f), Struct_3(vec3<f32>(-727f, -361f, 201f), 1000f), Struct_3(vec3<f32>(609f, -1528f, 409f), -1488f), Struct_3(vec3<f32>(-618f, 801f, -1553f), -467f), Struct_3(vec3<f32>(583f, 1076f, 1485f), -271f), Struct_3(vec3<f32>(1625f, -1132f, -139f), 265f), Struct_3(vec3<f32>(1000f, 671f, 290f), -127f), Struct_3(vec3<f32>(677f, 690f, -1461f), 779f), Struct_3(vec3<f32>(-1448f, 756f, -819f), 780f), Struct_3(vec3<f32>(1320f, -1158f, 2324f), 294f), Struct_3(vec3<f32>(-513f, -1466f, 176f), 1000f), Struct_3(vec3<f32>(-775f, -812f, -546f), 2088f), Struct_3(vec3<f32>(-168f, 951f, -1047f), 1063f), Struct_3(vec3<f32>(-1618f, 101f, -1606f), -1985f), Struct_3(vec3<f32>(520f, -1895f, -2636f), -1933f), Struct_3(vec3<f32>(1133f, -923f, -195f), 505f), Struct_3(vec3<f32>(708f, 1000f, -185f), 1497f), Struct_3(vec3<f32>(461f, -882f, -1516f), -690f));

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global3: array<vec2<bool>, 24>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    global3 = array<vec2<bool>, 24>();
    let var_0 = global0.x;
    return !(!vec4<bool>(false, any(!vec4<bool>(true, global2.x, false, false)), true, true));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: bool) -> vec4<bool> {
    global2 = vec4<bool>(false, global2.x, true, !arg_2);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.x, -1206f))) - _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(exp2(arg_1.x)))))), -332f);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(468f, var_0.x, arg_1.x)) * vec3<f32>(-1000f, 128f, 337f))) + vec3<f32>(859f, 141f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) - -133f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.x, 2049f))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1640f, _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1167f + -1969f) - _wgslsmith_f_op_f32(min(-1014f, var_1.a.x))), -1723f) - vec4<f32>(_wgslsmith_f_op_f32(-var_1.b), arg_1.x, arg_1.x, 1f)), select(min(vec3<i32>(_wgslsmith_add_i32(0i, global0.x), global0.x, 3263i), vec3<i32>(~1i, -38499i, min(-31939i, -2147483647i))), select(select(vec3<i32>(9450i, -1i, global0.x), -vec3<i32>(global0.x, global0.x, 0i), select(global2.xyx, global2.yzw, false)), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(global0.x, 3573i, global0.x)), vec3<i32>(global0.x, 17232i, -19164i), _wgslsmith_div_vec3_i32(vec3<i32>(30691i, global0.x, global0.x), vec3<i32>(42346i, -41565i, 27713i))), true), !(!select(global2.xxw, global2.xzw, true))));
    var var_3 = vec2<u32>(arg_0, ~u_input.d.x);
    return !func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-358f, _wgslsmith_div_f32(var_1.b, -1296f)))));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(-678f, _wgslsmith_f_op_f32(f32(-1f) * -2132f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(182f - -1590f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) + arg_0));
    global2 = select(select(select(!(!vec4<bool>(false, global2.x, arg_1, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(arg_1, arg_1, true, global2.x), false || arg_1), func_2(_wgslsmith_f_op_f32(709f * arg_0))), !(!func_3(4294967295u, vec2<f32>(arg_0, var_0.x), global2.x)), global2.x), func_3(4294967295u ^ ~_wgslsmith_add_u32(u_input.c.x, 34024u), var_0.zz, firstLeadingBit(global0.x << (0u % 32u)) < -22211i), vec4<bool>(false, global2.x, all(global2.wzw), true));
    let var_1 = u_input.c.x;
    var var_2 = global0.x | -global0.x;
    let var_3 = var_0.xz;
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(733f, var_3.x, 1562f, var_0.x), vec4<f32>(-985f, arg_0, var_0.x, var_0.x))), vec4<f32>(571f, var_0.x, var_3.x, arg_0)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3.x * -121f), _wgslsmith_f_op_f32(arg_0 + var_0.x), _wgslsmith_div_f32(var_0.x, 895f), 1f))), vec3<i32>(_wgslsmith_div_i32(select(-6914i, -1i, true), ~(-global0.x)), global0.x, -global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(~_wgslsmith_clamp_i32(-global0.x, abs(-1577i & global0.x), global0.x), -global0.x, global0.x);
    let var_1 = func_1(_wgslsmith_div_f32(316f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -290f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f) * _wgslsmith_f_op_f32(select(572f, 1000f, global2.x))))), true);
    var_0 = min(var_1.b, -vec3<i32>(_wgslsmith_mult_i32(~var_0.x, _wgslsmith_clamp_i32(global0.x, -9906i, var_1.b.x)), -1i, ~(-var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1381f, 182f, false)), _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)))))));
}

