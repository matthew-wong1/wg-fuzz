struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(308f, 907f, -809f, -1000f), vec4<f32>(-840f, 1257f, -252f, 2895f), vec4<f32>(-979f, 1166f, 996f, -1419f), vec4<f32>(-1000f, -258f, -759f, -175f), vec4<f32>(1588f, 2505f, -677f, 1949f), vec4<f32>(1000f, -455f, 1143f, 1549f), vec4<f32>(607f, -235f, -1298f, -199f), vec4<f32>(-1427f, 928f, 845f, -527f), vec4<f32>(868f, 1791f, 509f, 971f), vec4<f32>(-1000f, 909f, 947f, -479f), vec4<f32>(457f, 614f, -304f, 1107f), vec4<f32>(-443f, 2629f, -1794f, -1443f), vec4<f32>(860f, -424f, 518f, 167f), vec4<f32>(294f, 1000f, 468f, 646f), vec4<f32>(199f, -562f, -533f, -187f), vec4<f32>(-564f, -213f, -355f, -566f), vec4<f32>(-793f, 1071f, 369f, 375f), vec4<f32>(-467f, 1107f, 365f, 934f), vec4<f32>(-1514f, 144f, 147f, -1494f), vec4<f32>(-451f, -421f, -669f, -1000f), vec4<f32>(-917f, 1000f, 569f, -612f), vec4<f32>(387f, -1163f, -485f, -356f), vec4<f32>(-1000f, -1000f, -1169f, -188f), vec4<f32>(-1090f, -234f, -1955f, 930f), vec4<f32>(-730f, -1014f, -502f, -826f), vec4<f32>(805f, 207f, 266f, 1226f), vec4<f32>(1000f, -426f, 221f, 370f), vec4<f32>(-2047f, 960f, -508f, 583f), vec4<f32>(1668f, -590f, 347f, -642f));

var<private> global1: vec3<f32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(373f * 1064f))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, global1.x, global1.x))), vec3<f32>(-111f, 848f, -159f)))), vec3<f32>(global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global1.x)))))), -723f), arg_2));
}

fn func_2() -> f32 {
    var var_0 = u_input.d;
    var var_1 = u_input.b.xz;
    var_1 = select(~(-u_input.b.yz), _wgslsmith_div_vec2_i32(vec2<i32>(firstTrailingBit(-u_input.b.x), -2889i), _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.d, var_1.x), vec2<i32>(16144i, 16118i))), vec2<bool>(true, any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), u_input.d < -2147483647i))));
    global0 = array<vec4<f32>, 29>();
    global0 = array<vec4<f32>, 29>();
    return -1288f;
}

fn func_3() -> u32 {
    let var_0 = Struct_1(u_input.c);
    var var_1 = any(!select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, false, false), all(vec4<bool>(true, false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)));
    var var_2 = Struct_3(select(!vec4<bool>(true, false, select(true, true, true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), true), u_input.e);
    let var_3 = Struct_2(var_0, firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(1i), i32(-1i) * -2147483647i, -u_input.d, abs(u_input.b.x)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.d, -2147483647i, 37054i), vec4<i32>(1i, u_input.b.x, u_input.b.x, 55156i))))), var_0, Struct_1(4294967295u));
    return 1u << ((0u << (~min(6027u, var_2.b) % 32u)) % 32u);
}

fn func_4(arg_0: u32) -> vec3<bool> {
    global0 = array<vec4<f32>, 29>();
    let var_0 = u_input.b.yx;
    var var_1 = Struct_4(countOneBits(countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1389u, 0u, arg_0, 0u), vec4<u32>(u_input.c, 1u, arg_0, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 4294967295u, 1u, arg_0), vec4<u32>(u_input.c, 66691u, 33811u, 4294967295u))))), -624f, Struct_2(Struct_1(arg_0), reverseBits(_wgslsmith_add_vec4_i32(~vec4<i32>(76736i, var_0.x, -51891i, -36446i), vec4<i32>(var_0.x, 1i, u_input.d, 94408i) ^ vec4<i32>(-2147483647i, -1i, var_0.x, var_0.x))), Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.c, u_input.a, u_input.a), vec4<u32>(u_input.c, 0u, u_input.a, 0u))), Struct_1(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_0, u_input.e, 38011u)), ~vec3<u32>(arg_0, arg_0, 1u)))), global1.x);
    var var_2 = _wgslsmith_f_op_f32(func_2());
    let var_3 = Struct_4(var_1.a, _wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec3_f32(func_1(true, _wgslsmith_clamp_u32(0u, arg_0, 32165u), true)).x)))), var_1.c, global1.x);
    return vec3<bool>(true, !all(vec2<bool>(true, select(false, true, true))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(745f, global1.x, global1.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-634f, -268f, -1886f)), _wgslsmith_f_op_vec3_f32(func_1(true, 4294967295u, true))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(122f, global1.x, -1532f) * vec3<f32>(802f, -961f, global1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(1180f, 303f, global1.x), vec3<f32>(-1000f, -249f, 2302f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, 1353f, global1.x), vec3<f32>(global1.x, global1.x, -842f), false)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-309f, -1075f, 1000f) - vec3<f32>(global1.x, global1.x, -357f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1006f, global1.x, -358f), vec3<f32>(211f, global1.x, global1.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-global1.x), -1028f) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(749f, global1.x, global1.x)))))), !(!(all(vec4<bool>(true, false, true, true)) != true))));
    var var_0 = true || !(-58802i >= firstTrailingBit(~u_input.b.x));
    var_0 = false & (_wgslsmith_f_op_f32(func_2()) <= global1.x);
    var var_1 = !select(func_4(func_3()), select(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), false), true);
    let var_2 = vec3<bool>(var_1.x, any(select(vec4<bool>(true, true, var_1.x, false), vec4<bool>(false, true, false, var_1.x), !vec4<bool>(false, var_1.x, var_1.x, false))) & any(!(!vec3<bool>(var_1.x, false, true))), all(!(!select(vec4<bool>(false, false, var_1.x, true), vec4<bool>(var_1.x, false, true, true), var_1.x))));
    var var_3 = abs(firstLeadingBit(vec3<i32>(u_input.b.x, 1i, max(1i, u_input.d)))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c, u_input.a), vec3<u32>(u_input.e, u_input.c, 4294967295u)), vec3<u32>(u_input.e, 19159u, 38546u)), reverseBits(countOneBits(4294967295u)), 1u), abs(select(vec3<u32>(0u, u_input.a, u_input.c), abs(vec3<u32>(u_input.c, 0u, u_input.c)), vec3<bool>(true, false, var_2.x)))) % vec3<u32>(32u));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(283f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(global1.x + 491f)) * _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(trunc(global1.x))))));
    let var_5 = Struct_2(Struct_1(1u), vec4<i32>(-1i) * -reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(17205i, var_3.x, 0i, var_3.x), vec4<i32>(-25456i, u_input.b.x, 2147483647i, 2147483647i))), Struct_1(4158u), Struct_1(1u));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec3_u32(vec3<u32>(~30470u, firstTrailingBit(var_5.a.a), var_5.c.a & var_5.c.a), min(vec3<u32>(10488u, 20503u, 50522u), vec3<u32>(var_5.d.a, var_5.d.a, var_5.d.a))), _wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_5.a.a, u_input.e, var_5.a.a), vec3<u32>(465u, 58127u, var_5.c.a)), vec3<u32>(_wgslsmith_add_u32(var_5.a.a, u_input.e), 0u, 42104u)), vec3<bool>(true, var_1.x, true)));
}

