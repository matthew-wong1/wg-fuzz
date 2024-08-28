struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: array<u32, 15> = array<u32, 15>(4294967295u, 60904u, 21127u, 2956u, 17230u, 25149u, 2149u, 4294967295u, 4294967295u, 4410u, 1u, 17035u, 1899u, 5985u, 11390u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = array<u32, 15>();
    var var_0 = _wgslsmith_f_op_f32(step(-693f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -383f)) + -382f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, -356f, 384f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2103f, 1793f, -1653f, 1989f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-869f, -2112f, 127f, -1000f) - vec4<f32>(1071f, 542f, -468f, -834f)))), vec4<f32>(_wgslsmith_f_op_f32(step(-913f, 580f)), -146f, -1025f, _wgslsmith_f_op_f32(f32(-1f) * -1504f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -173f))), _wgslsmith_f_op_f32(658f + _wgslsmith_f_op_f32(605f * -201f)), _wgslsmith_f_op_f32(f32(-1f) * -519f), 1f)));
    global1 = array<u32, 15>();
    var_0 = var_1.x;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1065f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_1.x, false)))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    global0 = array<u32, 19>();
    global1 = array<u32, 15>();
    global0 = array<u32, 19>();
    var var_0 = arg_1.d;
    let var_1 = ~reverseBits(~_wgslsmith_add_u32(max(global0[_wgslsmith_index_u32(4294967295u, 19u)], u_input.d.x), reverseBits(36949u)));
    return u_input.d.x;
}

fn func_2() -> vec4<bool> {
    global0 = array<u32, 19>();
    let var_0 = 1i;
    global1 = array<u32, 15>();
    var var_1 = ~27699u >> (func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-604f, -409f, 1293f), vec3<f32>(868f, -534f, -1000f)))), Struct_2(Struct_1(vec3<i32>(-6656i, 1i, var_0), 1596f, select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(2070f, -337f, 501f) - vec3<f32>(-225f, 251f, 110f))), Struct_1(vec3<i32>(var_0, u_input.c.x, 29350i), 1119f, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1247f, -1185f, 1075f)))), Struct_1(_wgslsmith_sub_vec3_i32(u_input.e.yxy, u_input.b), _wgslsmith_f_op_f32(func_3()), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1348f, 212f, 692f) * vec3<f32>(-1557f, -1231f, -533f))), Struct_1(max(u_input.b, vec3<i32>(var_0, u_input.b.x, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -230f), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(769f, -2402f, 356f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-991f + 425f), 1598f)), Struct_1(vec3<i32>(var_0, var_0, _wgslsmith_mult_i32(-53656i, 0i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-490f, 139f, true)), _wgslsmith_f_op_f32(abs(1052f)))), vec4<bool>(true, all(vec3<bool>(false, false, true)), true, any(vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-697f, 211f, -820f))))) % 32u);
    global1 = array<u32, 15>();
    return vec4<bool>(true, false, !(!(any(vec4<bool>(true, false, false, false)) | true)), false && !(abs(6519i) == u_input.c.x));
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -630f) - _wgslsmith_f_op_f32(-1000f * -467f))));
    global1 = array<u32, 15>();
    global0 = array<u32, 19>();
    var var_1 = !vec2<bool>(u_input.b.x != -49305i, all(func_2()));
    let var_2 = !(!(!(!(!vec2<bool>(true, var_1.x)))));
    return vec3<bool>(all(!vec4<bool>(!var_2.x, var_1.x | var_1.x, true, var_2.x)), var_1.x, !all(select(vec4<bool>(var_2.x, false, var_2.x, true), select(vec4<bool>(var_2.x, var_2.x, var_1.x, var_2.x), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, true)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 15>();
    let var_0 = select(func_1(), vec3<bool>(_wgslsmith_dot_vec4_i32(-u_input.e, vec4<i32>(u_input.e.x, u_input.c.x, -2147483647i, -1i)) < abs(firstLeadingBit(-23096i)), 832f == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-247f, 260f, false)), _wgslsmith_div_f32(197f, 1000f))), true), !select(select(func_2().yww, func_1(), vec3<bool>(true, false, false)), func_2().xyx, true));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1522f - 653f)) + _wgslsmith_f_op_f32(min(1f, 1225f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(min(427f, _wgslsmith_f_op_f32(-629f * -601f))))));
    let var_2 = ~_wgslsmith_mod_vec4_i32(select(~u_input.e, -vec4<i32>(14257i, 1i, u_input.b.x, u_input.c.x), func_2()), vec4<i32>(42191i, -12695i, -21684i, -86764i) << (u_input.d % vec4<u32>(32u))) ^ ~u_input.e;
    var var_3 = 20382u >> (~u_input.a % 32u);
    let var_4 = Struct_1(vec3<i32>(min(~_wgslsmith_mod_i32(u_input.e.x, u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-29322i, 0i, -2147483647i, var_2.x), var_2)), -7263i, _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.c.x, select(var_2.x, var_2.x, true)), var_2.wz)), var_1.x, !select(!vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(true, false, any(var_0), true), vec4<bool>(true, var_0.x, all(vec4<bool>(var_0.x, true, true, var_0.x)), !var_0.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1274f, -1164f) - vec3<f32>(var_1.x, -297f, -1336f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-787f, var_1.x, -571f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(621f, 1957f, var_1.x), vec3<f32>(-580f, -702f, var_1.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, -144f), vec3<f32>(var_1.x, var_1.x, var_1.x)))))));
    var var_5 = _wgslsmith_f_op_vec3_f32(-var_4.d);
    let var_6 = var_2.yzx ^ vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -u_input.e, abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_4.a.x, -12548i, 35287i, 48185i), var_2))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2866i, 1i, 8648i, -1i), vec4<i32>(var_4.a.x, -2147483647i, var_4.a.x, u_input.b.x)) & 36892i);
    global0 = array<u32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_vec3_i32(abs(-vec3<i32>(-2147483647i, 4656i, u_input.b.x)), ~(-var_6))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(1388f + var_4.d.x), -812f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_4.d.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1332f, var_1.x, var_5.x, var_1.x))))) + vec4<f32>(var_4.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)), _wgslsmith_f_op_f32(-var_4.d.x), _wgslsmith_f_op_f32(ceil(466f)))));
}

