struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-1000f, 110f, 650f), vec3<f32>(286f, -1000f, -1082f), vec3<f32>(111f, -341f, -1233f), vec3<f32>(-230f, -144f, 954f), vec3<f32>(-541f, -1133f, 1386f), vec3<f32>(-1000f, 781f, -1000f), vec3<f32>(573f, -1707f, -1482f), vec3<f32>(-283f, 1000f, 385f), vec3<f32>(-637f, -2291f, -545f), vec3<f32>(175f, -412f, 1000f), vec3<f32>(-914f, 379f, -1000f), vec3<f32>(-769f, 664f, 1000f), vec3<f32>(2004f, 526f, 213f), vec3<f32>(-316f, -1434f, 2268f), vec3<f32>(-797f, 1913f, 249f), vec3<f32>(1488f, 1167f, 1000f));

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<Struct_1, 17>;

var<private> global3: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(380f, 314f, 271f), vec3<f32>(1104f, -817f, 1167f), vec3<f32>(896f, -1118f, 395f), vec3<f32>(1000f, 859f, 139f), vec3<f32>(1594f, -1364f, -1092f), vec3<f32>(368f, -722f, -178f), vec3<f32>(1150f, -2291f, -1414f), vec3<f32>(167f, -666f, -1489f), vec3<f32>(-156f, -1358f, -1555f), vec3<f32>(618f, -1472f, -192f), vec3<f32>(-239f, -1063f, -167f), vec3<f32>(441f, -663f, -621f), vec3<f32>(590f, 455f, 1479f), vec3<f32>(133f, -904f, 1262f), vec3<f32>(2222f, -1000f, -583f), vec3<f32>(792f, 606f, 238f), vec3<f32>(700f, -1000f, -747f), vec3<f32>(-469f, 121f, 136f), vec3<f32>(1209f, -1378f, -129f), vec3<f32>(-2521f, -1538f, 162f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_1 {
    return global2[_wgslsmith_index_u32(~34776u, 17u)];
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = func_2();
    var var_1 = !var_0.a;
    var var_2 = select(vec4<bool>(true == (true && any(vec2<bool>(var_0.a, var_0.a))), select(true, false, false), all(select(vec4<bool>(var_0.a, var_0.a, true, true), vec4<bool>(var_0.a, true, false, false), vec4<bool>(true, true, true, true))) != !any(vec3<bool>(var_0.a, var_0.a, true)), any(!select(vec2<bool>(var_0.a, false), vec2<bool>(false, false), vec2<bool>(var_0.a, var_0.a)))), select(!(!(!vec4<bool>(var_0.a, true, var_0.a, var_0.a))), select(!select(vec4<bool>(true, false, var_0.a, false), vec4<bool>(false, false, var_0.a, false), vec4<bool>(false, true, true, var_0.a)), vec4<bool>(var_0.a, any(vec3<bool>(var_0.a, var_0.a, true)), var_0.a, true), !var_0.a), !(!(!vec4<bool>(var_0.a, false, false, false)))), true);
    var var_3 = 20022u;
    let var_4 = ~vec4<i32>(-_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.c, u_input.c, -1i), 29208i, -5307i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(25945i, 0i), u_input.c), u_input.c, max(-2147483647i, u_input.b >> (_wgslsmith_add_u32(0u, arg_0.x) % 32u)));
    return u_input.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec3<i32> {
    global2 = array<Struct_1, 17>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-440f, _wgslsmith_f_op_f32(trunc(arg_2.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) + _wgslsmith_f_op_f32(select(arg_1.b, arg_2.b, false))))), arg_1.b, arg_2.b) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_2.b)), _wgslsmith_div_f32(arg_2.b, -190f), _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(1000f - 2036f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1173f, arg_1.b, 923f, 683f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, -862f, 439f, arg_2.b) + vec4<f32>(arg_2.b, 763f, -210f, arg_2.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, -740f, arg_1.b, arg_1.b))))));
    global2 = array<Struct_1, 17>();
    var var_1 = Struct_1(~822i > ~abs(u_input.b), -487f);
    let var_2 = 0u;
    return -(-(select(vec3<i32>(7724i, 2147483647i, 4442i), vec3<i32>(-3347i, -9829i, u_input.c), vec3<bool>(var_1.a, arg_1.a, arg_2.a)) ^ vec3<i32>(u_input.c, 1i, 2701i)) << (reverseBits(~(~vec3<u32>(4294967295u, 50697u, var_2))) % vec3<u32>(32u)));
}

fn func_1() -> vec3<i32> {
    let var_0 = global2[_wgslsmith_index_u32(abs(~56499u), 17u)];
    global3 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 16>();
    global0 = array<vec3<f32>, 16>();
    let var_1 = func_2();
    return _wgslsmith_mult_vec3_i32(-vec3<i32>(i32(-1i) * -6969i, ~u_input.c, u_input.c), ~func_4(u_input.d, Struct_1(true, -392f), global1[_wgslsmith_index_u32(func_3(vec3<u32>(u_input.d.x, u_input.a, u_input.a)), 3u)], ~4294967295u)) << (~vec3<u32>(countOneBits(_wgslsmith_add_u32(1u, u_input.a)), 29968u, ~select(u_input.e.x, u_input.d.x, var_0.a)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 3>();
    let var_0 = func_1();
    global0 = array<vec3<f32>, 16>();
    global3 = array<vec3<f32>, 20>();
    global2 = array<Struct_1, 17>();
    var var_1 = Struct_1(any(vec2<bool>(true, true)) | any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1505f, -441f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1884f - -1870f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1212f, _wgslsmith_f_op_f32(f32(-1f) * -1017f))))));
    var var_2 = func_2();
    let var_3 = Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, 2147483647i)), ~var_0.zz), var_0.x) == (func_4(select(vec4<u32>(18707u, u_input.e.x, u_input.d.x, 0u), vec4<u32>(u_input.d.x, 42561u, u_input.a, u_input.d.x), var_1.a), Struct_1(false, 416f), Struct_1(var_2.a, 189f), u_input.d.x).x | (i32(-1i) * -2147483647i)), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d.xy | vec2<u32>(~(~67836u), ~reverseBits(u_input.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0[_wgslsmith_index_u32(2316u, 16u)], vec3<f32>(var_1.b, var_1.b, var_3.b))) + global0[_wgslsmith_index_u32(u_input.e.x, 16u)]) + vec3<f32>(216f, -527f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_div_f32(-167f, 690f)))), var_2.b, i32(-1i) * -var_0.x, u_input.d.yx);
}

