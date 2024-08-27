struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<i32, 28> = array<i32, 28>(16640i, -24728i, 54380i, 41442i, 0i, 0i, 2147483647i, -38714i, -22393i, -30689i, -40370i, 18973i, -27267i, 19494i, 1i, -8068i, -36931i, -1i, 2147483647i, 2147483647i, -2083i, -1i, 1i, -32434i, 1i, -1i, 26389i, -18651i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> f32 {
    var var_0 = arg_2;
    var_0 = arg_2;
    var_0 = -709f;
    var_0 = -1000f;
    var var_1 = Struct_3(Struct_1(2147483647i, ~(~(~arg_3.a))), Struct_2(_wgslsmith_div_vec3_u32(arg_3.a, max(arg_3.a, select(arg_3.a, vec3<u32>(arg_0.x, arg_3.a.x, 38356u), arg_3.c.xwx))), _wgslsmith_f_op_vec4_f32(-arg_3.b), arg_3.c), vec4<f32>(-212f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -211f), -781f)), _wgslsmith_f_op_f32(max(arg_2, arg_2)), arg_2), Struct_1(35849i, ~abs(reverseBits(vec3<u32>(17756u, 4294967295u, arg_1)))), arg_0);
    return var_1.b.b.x;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_4, arg_3: vec2<u32>) -> u32 {
    let var_0 = reverseBits(abs(~vec4<u32>(4294967295u, ~arg_3.x, ~arg_2.c.x, ~26159u)));
    let var_1 = Struct_2(vec3<u32>(var_0.x, abs(countOneBits(48323u)), var_0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(423f, 448f, arg_0, -262f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1025f, -2099f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(335f, 459f, 586f, -1727f), false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, 300f, -511f, -638f))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1677f, -455f, -1422f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-763f, -231f, 795f, arg_0) * vec4<f32>(498f, arg_0, arg_0, arg_0))))), select(!vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, true, arg_1, true), arg_2.a.x))), vec4<bool>(true, arg_1, arg_1, _wgslsmith_f_op_f32(2336f - _wgslsmith_f_op_f32(-arg_0)) > -735f));
    var var_2 = arg_2.a.x;
    var_2 = all(!var_1.c.www);
    let var_3 = Struct_1(-(~u_input.a), ~vec3<u32>(select(var_0.x, 36491u, true), var_0.x, select(var_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 42797u, var_1.a.x, var_0.x), vec4<u32>(0u, var_1.a.x, var_1.a.x, 1u)), all(vec2<bool>(true, true)))));
    return ~1274u;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>) -> vec4<i32> {
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    var var_0 = Struct_4(select(vec2<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)), 34749i == (arg_0.x ^ 0i)), vec2<bool>(false, false | all(vec2<bool>(false, false))), select(vec2<bool>(true, all(vec2<bool>(false, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, false), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, true)))), _wgslsmith_mult_u32(arg_1.x, ~firstLeadingBit(abs(53401u))), arg_1.zyw, ~func_4(_wgslsmith_f_op_f32(func_3(arg_1.wz, 12493u & arg_1.x, 1005f, Struct_2(vec3<u32>(36314u, 1u, 12012u), vec4<f32>(-546f, -1847f, -1000f, -1000f), vec4<bool>(false, true, false, true)))), true, Struct_4(vec2<bool>(false, true), firstLeadingBit(0u), reverseBits(arg_1.wwz), arg_1.x << (arg_1.x % 32u)), _wgslsmith_add_vec2_u32(~arg_1.ww, min(vec2<u32>(arg_1.x, 115600u), vec2<u32>(arg_1.x, 1u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-753f)));
    let var_2 = 22950i == (0i << (var_0.b % 32u));
    return vec4<i32>(_wgslsmith_clamp_i32(~(-1i), _wgslsmith_add_i32(~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(arg_1.x, 28u)], arg_0.x, -2147483647i), -39080i), min(_wgslsmith_mult_i32(-60078i ^ u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_0.d, 28u)], u_input.a, u_input.a, -11014i), vec4<i32>(u_input.a, 25772i, global0[_wgslsmith_index_u32(6175u, 28u)], -45318i))), _wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(34819i, -2147483647i, global0[_wgslsmith_index_u32(1u, 28u)])))), -2147483647i, abs(1i), -35197i);
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = !vec2<bool>(true, all(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))));
    var var_1 = _wgslsmith_f_op_f32(-arg_0);
    let var_2 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(69699u, ~(~_wgslsmith_add_u32(0u, 57324u))), 28u)], vec3<u32>(abs(~(~42505u)), firstTrailingBit(~3145u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 25962u, 4294967295u, 0u), vec4<u32>(1u, 1u, 1u, 1u))));
    let var_3 = vec4<bool>(all(vec2<bool>(all(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), var_0.x)), true)), !(!any(vec2<bool>(false, var_0.x))), any(!(!vec3<bool>(true, var_0.x, true))), (4294967295u <= var_2.b.x) | (select(select(var_0.x, var_0.x, true), var_0.x, true) == true));
    let var_4 = ~_wgslsmith_mult_vec4_i32(~(-vec4<i32>(global0[_wgslsmith_index_u32(var_2.b.x, 28u)], var_2.a, -33358i, -2147483647i)) ^ -reverseBits(vec4<i32>(-24178i, 2147483647i, u_input.a, -1i)), func_2(vec3<i32>(-22272i, 2147483647i, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b.x, var_2.b.x, 25886u, var_2.b.x), vec4<u32>(4294967295u, var_2.b.x, 3014u, 21926u))) & _wgslsmith_div_vec4_i32(~vec4<i32>(13027i, u_input.a, 2147483647i, u_input.a), vec4<i32>(u_input.a, 44905i, -2147483647i, -2147483647i) << (vec4<u32>(var_2.b.x, var_2.b.x, 1u, 37275u) % vec4<u32>(32u))));
    return Struct_3(Struct_1(min(37769i, _wgslsmith_mult_i32(2147483647i, var_4.x)), var_2.b << (abs(vec3<u32>(var_2.b.x, 27941u, 0u)) % vec3<u32>(32u))), Struct_2(vec3<u32>(23254u, var_2.b.x, 28291u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, arg_0, -353f, arg_0)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1137f, -112f, 212f, arg_0) * vec4<f32>(-764f, 186f, 902f, -704f))))), !vec4<bool>(var_4.x <= -6470i, true, var_0.x != false, all(var_3.wy))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-437f, _wgslsmith_f_op_f32(step(arg_0, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0)), arg_0)), Struct_1(func_2(~(~var_4.zyy), ~(~vec4<u32>(2844u, var_2.b.x, 1u, 11058u))).x, ~var_2.b), vec2<u32>(~40485u, (~var_2.b.x >> (80486u % 32u)) | ~_wgslsmith_clamp_u32(var_2.b.x, var_2.b.x, var_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 28>();
    var var_0 = -347f;
    global0 = array<i32, 28>();
    var var_1 = func_1(_wgslsmith_f_op_f32(916f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-421f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1222f, -1084f)))))));
    global0 = array<i32, 28>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_1.b.b.x))))))));
    var var_3 = var_1.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(~abs(var_1.a.b.x), (0u >> (1u % 32u)) | select(var_1.b.a.x, 0u, false)), _wgslsmith_clamp_u32(45553u, var_1.d.b.x, reverseBits(var_1.a.b.x | 4294967295u))));
}

