struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<f32>(-218f, 942f, -148f), -467f), Struct_1(vec3<f32>(-455f, 216f, 2099f), -1047f), Struct_1(vec3<f32>(241f, 2092f, -947f), -1000f), Struct_1(vec3<f32>(-1635f, -555f, -411f), 820f), Struct_1(vec3<f32>(-1210f, 958f, 182f), -596f), Struct_1(vec3<f32>(-160f, 424f, 467f), -788f), Struct_1(vec3<f32>(1352f, -257f, 1000f), -1516f), Struct_1(vec3<f32>(129f, -1111f, 188f), 734f), Struct_1(vec3<f32>(-1195f, -1698f, 1146f), -581f), Struct_1(vec3<f32>(1478f, 1730f, 309f), -163f), Struct_1(vec3<f32>(762f, 974f, 346f), -906f), Struct_1(vec3<f32>(922f, -212f, 426f), -1018f), Struct_1(vec3<f32>(-1000f, 1331f, -920f), -1000f), Struct_1(vec3<f32>(1000f, -1558f, 651f), 825f), Struct_1(vec3<f32>(-554f, 1160f, -1000f), 923f), Struct_1(vec3<f32>(-884f, -1193f, 567f), 1160f), Struct_1(vec3<f32>(-951f, 1148f, -456f), -1046f), Struct_1(vec3<f32>(1000f, -684f, 719f), 1178f), Struct_1(vec3<f32>(-602f, 1646f, 493f), -330f));

var<private> global2: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(1u), 19u)];
    let var_1 = _wgslsmith_f_op_f32(trunc(var_0.b));
    global1 = array<Struct_1, 19>();
    global0 = u_input.c;
    global2 = ~53168u;
    return ~(min(87654u, u_input.e >> (u_input.a.x % 32u)) >> (((u_input.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(13081u, u_input.e)) % 32u)) ^ u_input.e) % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = ~(~_wgslsmith_mult_u32(4294967295u, ~u_input.a.x)) == abs(countOneBits(_wgslsmith_dot_vec3_u32(select(u_input.a, u_input.a, false), vec3<u32>(u_input.e, 4294967295u, u_input.d))));
    let var_1 = _wgslsmith_clamp_u32(firstTrailingBit(14197u), ~(_wgslsmith_mult_u32(~u_input.e, ~13417u) << (abs(~u_input.d) % 32u)), u_input.d);
    var var_2 = !vec3<bool>(var_0 & (arg_0.b >= -994f), true, true);
    let var_3 = _wgslsmith_div_u32(func_3(), var_1);
    global0 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(_wgslsmith_div_i32(7079i, 12200i), arg_1.a.x, -u_input.b) | arg_1.a, _wgslsmith_sub_vec3_i32(-_wgslsmith_mod_vec3_i32(arg_1.a, arg_1.a), -_wgslsmith_mult_vec3_i32(arg_1.a, arg_1.a)), any(vec4<bool>(var_2.x, true, false, var_2.x)) && var_0), max(reverseBits(max(-arg_1.a, ~arg_1.a)), arg_1.a));
    return vec3<f32>(802f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-272f))) - _wgslsmith_f_op_f32(-arg_0.a.x))), arg_1.d.x);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = ~(_wgslsmith_sub_i32(1i, arg_0.a.x) << (_wgslsmith_mult_u32(4294967295u, ~(1u >> (u_input.d % 32u))) % 32u));
    global0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.a * vec3<f32>(1045f, -243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec3<f32>(-989f, arg_0.c, -2009f), var_1.x), arg_0)))));
    var var_3 = 288f;
    return 62786i ^ arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~_wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.a.x, ~u_input.a.x), ~u_input.e);
    let var_0 = _wgslsmith_dot_vec3_i32((-vec3<i32>(u_input.b, -2925i, 14079i) ^ vec3<i32>(u_input.c, u_input.c, 2548i)) & ~(-vec3<i32>(-1i, u_input.c, 32919i)), _wgslsmith_mult_vec3_i32(select(vec3<i32>(-37021i, 8371i, u_input.b), vec3<i32>(1i, u_input.b, u_input.c), true), abs(vec3<i32>(-16075i, u_input.b, u_input.b))) & vec3<i32>(u_input.c, firstLeadingBit(-18546i), u_input.b)) | abs(u_input.c);
    var var_1 = vec4<bool>(_wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(-1250i, u_input.c, countOneBits(2147483647i))) >= _wgslsmith_sub_i32(func_1(Struct_2(vec3<i32>(var_0, 31459i, u_input.c), Struct_1(vec3<f32>(-1187f, 247f, 337f), 1833f), -2500f, vec3<f32>(-879f, -791f, -1044f)), all(vec2<bool>(true, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), Struct_1(vec3<f32>(1047f, 2281f, -833f), 1136f)), _wgslsmith_div_i32(0i, u_input.c) | reverseBits(var_0)), true, !(var_0 < -1i), false);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, 395f, false)), _wgslsmith_f_op_f32(trunc(289f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-411f, -2423f, false)) - _wgslsmith_f_op_f32(select(296f, 1000f, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3228f - -704f))))), _wgslsmith_f_op_f32(sign(742f)));
    let var_3 = Struct_2(firstTrailingBit(abs(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, var_0, var_0), vec3<i32>(-35248i, u_input.c, 7892i)), firstLeadingBit(vec3<i32>(u_input.c, var_0, u_input.c))))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_2.a.x, var_2.a.x), -1254f, 1000f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, 770f, var_2.a.x))))), -379f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a.x)) * _wgslsmith_f_op_f32(min(-846f, var_2.a.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-687f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec3<f32>(var_2.b, var_2.b, 276f), var_2.a.x), Struct_2(vec3<i32>(var_0, var_0, 0i), global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 2139f, vec3<f32>(-1481f, 311f, var_2.b)))).x, _wgslsmith_f_op_f32(var_2.a.x * var_2.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2328f * -415f))))));
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(abs(u_input.a), ~vec3<u32>(6302u, 50774u, 97058u)), u_input.a), vec3<u32>(~(~u_input.e), ~_wgslsmith_add_u32(u_input.e, 36625u), firstTrailingBit(~u_input.a.x))), _wgslsmith_sub_u32(select(u_input.e, u_input.d, !any(vec4<bool>(var_1.x, true, var_1.x, var_1.x))), u_input.a.x)), 19u)];
    var_1 = select(vec4<bool>(false, var_1.x, var_1.x, true), select(!vec4<bool>(false, true, !var_1.x, all(vec2<bool>(false, true))), select(vec4<bool>(!var_1.x, select(false, false, var_1.x), var_1.x || false, all(vec4<bool>(var_1.x, true, true, var_1.x))), select(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(true, var_1.x, false, true), false), select(!vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(true, true, var_1.x, var_1.x), true)), select(vec4<bool>(0i == var_3.a.x, true, var_1.x != var_1.x, var_1.x || false), !(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<bool>(var_1.x, all(vec2<bool>(true, var_1.x)), var_1.x, false))), vec4<bool>(false, var_0 < var_3.a.x, false, true));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -2147483647i, var_3.b.a, _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(~0i, u_input.b), _wgslsmith_mod_i32(var_0, min(-1i, 0i))), abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.x, var_3.a.x, var_3.a.x, var_3.a.x), vec4<i32>(-53377i, var_0, u_input.c, var_3.a.x)), _wgslsmith_sub_i32(58545i, var_3.a.x), -2147483647i))));
}

