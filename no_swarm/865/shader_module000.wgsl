struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>) -> vec2<f32> {
    let var_0 = firstLeadingBit(~1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4162u, 0u, 1u), firstTrailingBit(1u), ~2810u), vec3<u32>(1u, 23388u, 29077u)));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x - -333f))), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-473f * _wgslsmith_div_f32(arg_0.x, arg_0.x))))), vec3<f32>(-1479f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)) + _wgslsmith_f_op_f32(arg_0.x * 1279f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1174f, arg_0.x)))))), 885f), 0i, arg_0.x);
    let var_2 = Struct_1(vec2<f32>(arg_0.x, -1000f), vec3<f32>(772f, 1539f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x - var_1.d)))), 992i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-372f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1874f), var_1.d)), arg_1.x))));
    let var_3 = var_2;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f) - var_3.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 657f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-943f * _wgslsmith_f_op_f32(arg_0.x - -220f)) + 443f)));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(min(var_1.a.x, var_1.b.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * var_1.a.x), _wgslsmith_f_op_f32(-var_1.d)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(766f, -1042f) - _wgslsmith_f_op_vec2_f32(var_2.b.zx * vec2<f32>(901f, 1051f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.a, vec2<f32>(var_4.x, -404f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 1966f) * vec2<f32>(arg_0.x, var_1.d)), _wgslsmith_f_op_vec2_f32(-var_1.a))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, -1088f)))))));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), 971f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_1.wzy))), _wgslsmith_mult_i32(1570i, ~u_input.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0)))));
    var var_1 = min(reverseBits(firstTrailingBit(abs(4230i))), -8974i);
    var_1 = var_0.c;
    var var_2 = Struct_1(arg_1.yz, _wgslsmith_f_op_vec3_f32(-arg_1.xzy), u_input.a, arg_1.x);
    var var_3 = Struct_1(arg_1.zw, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d, -1113f, arg_1.x) - vec3<f32>(1839f, arg_0, 1724f))))), _wgslsmith_f_op_vec3_f32(var_0.b + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(304f, arg_1.x, arg_0) * vec3<f32>(-583f, 963f, -1017f)), var_0.b)))), 38992i, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_1.x)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(var_0.d + _wgslsmith_div_f32(var_2.b.x, 360f))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -196f, 248f), vec3<f32>(var_0.b.x, var_3.d, var_3.d)), var_3.b))), var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(arg_1.x, var_3.a.x), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))).x)), var_0.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = arg_1;
    let var_1 = ~(-_wgslsmith_add_vec4_i32(~firstTrailingBit(vec4<i32>(38887i, 32322i, 0i, arg_1.c)), vec4<i32>(select(arg_1.c, arg_0.c, false), 59448i, 0i, var_0.c)));
    let var_2 = all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true)))) && (16220u > firstTrailingBit(reverseBits(21344u) & _wgslsmith_clamp_u32(79577u, 1u, 1u)));
    var var_3 = -(~2147483647i);
    var var_4 = ~vec4<i32>(u_input.a, i32(-1i) * -2147483647i, -var_1.x, -80426i);
    return select(!vec2<bool>(!var_2, all(select(vec3<bool>(var_2, true, false), vec3<bool>(var_2, false, var_2), var_2))), select(!vec2<bool>(!var_2, var_2), select(select(select(vec2<bool>(var_2, var_2), vec2<bool>(true, false), false), !vec2<bool>(false, var_2), true), vec2<bool>(true, false), select(true, false | var_2, true)), any(select(vec2<bool>(var_2, false), vec2<bool>(true, false), var_2))), var_2);
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<bool>(~0u != _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 35695u, 49576u, 4294967295u)), vec4<u32>(max(1u, 46429u), _wgslsmith_mod_u32(0u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 9620u, 8311u, 16549u), vec4<u32>(28759u, 4294967295u, 1u, 0u)), 0u)), any(!func_4(Struct_1(vec2<f32>(1500f, 767f), vec3<f32>(1000f, -746f, -774f), u_input.a, 731f), func_2(-412f, vec4<f32>(-651f, 1000f, 834f, 1536f)))), false);
    var var_1 = func_2(_wgslsmith_f_op_f32(max(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1266f), _wgslsmith_f_op_f32(-475f + -367f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(259f, 1873f, 1034f, -1161f)))).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1418f * _wgslsmith_f_op_f32(-1984f - 901f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(696f, 543f, _wgslsmith_f_op_f32(-355f - -1521f), -174f)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.a, vec2<f32>(var_1.d, -762f)) - var_1.b.yy)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-812f, var_1.a.x, var_1.d), vec3<f32>(var_1.b.x, 1105f, -1519f))), var_1.b)), var_1.b), ~(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, u_input.a, -2147483647i, 19467i), vec4<i32>(var_1.c, -38980i, var_1.c, var_1.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 42809i), vec2<i32>(-26129i, var_1.c))) >> (1u % 32u)), var_1.b.x);
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(-func_2(_wgslsmith_f_op_f32(abs(var_1.b.x)), vec4<f32>(1794f, 563f, var_2.a.x, -705f)).a), var_0)), var_1.b, reverseBits(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1571f, -111f)), 255f)) + func_2(_wgslsmith_f_op_f32(var_2.d + 533f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_1.d, var_1.b.x, 1367f))).a.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 928f))), vec3<f32>(363f, _wgslsmith_f_op_f32(308f + _wgslsmith_f_op_f32(-var_1.b.x)), -207f), _wgslsmith_dot_vec3_i32(reverseBits(max(~vec3<i32>(var_2.c, var_1.c, u_input.a), ~vec3<i32>(u_input.a, u_input.a, -17504i))), _wgslsmith_clamp_vec3_i32(reverseBits(~vec3<i32>(0i, 12775i, -22266i)), -(~vec3<i32>(u_input.a, u_input.a, var_1.c)), -abs(vec3<i32>(2147483647i, -16086i, -1i)))), var_2.b.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(var_3.b.xz))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.b))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, var_3.d, -243f))))) * _wgslsmith_f_op_vec3_f32(var_1.b - var_2.b))), 12046i, -708f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_vec2_f32(func_3(var_0.b.yz, vec3<bool>(false, true, true))).x, false)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.x, 1341f, -812f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - var_0.d) + -1248f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1348f, var_0.a.x))), 663f))), reverseBits(2914i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0.b.x, var_0.d, false)), _wgslsmith_f_op_f32(floor(var_0.b.x)), any(vec3<bool>(true, false, false))))), _wgslsmith_f_op_f32(sign(-1203f))));
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -176f) + 1526f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.b.x, var_1.d), 603f, true))), var_0.b.yx), vec3<f32>(-979f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b.x)))), 2147483647i, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1588f - _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.x, _wgslsmith_div_f32(-359f, -146f), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_div_f32(-872f, var_1.d)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-448f, var_0.b.x, -163f, -1240f))))))).b.x);
    var_1 = var_0;
    var_1 = var_0;
    var var_3 = func_2(var_0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-3689f, 395f, var_1.b.x, _wgslsmith_div_f32(1482f, 1207f)))));
    let var_4 = select(vec4<bool>(true, true, 0i <= _wgslsmith_div_i32(i32(-1i) * -19559i, var_2.c), true), !select(vec4<bool>(any(vec3<bool>(false, true, false)), true, select(true, true, false), true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, all(vec2<bool>(false, true))), !all(vec4<bool>(false, false, true, false))), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, true))), false));
    var_3 = func_2(-1574f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(370f, var_3.b.x, var_3.a.x, 1000f), vec4<f32>(234f, -872f, -1823f, -323f), vec4<bool>(true, var_4.x, var_4.x, true))) - vec4<f32>(-374f, -1583f, var_3.a.x, 814f)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

