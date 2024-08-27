struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: i32 = 49465i;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> i32 {
    let var_0 = -930f;
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0 >> (arg_1.d % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 15247i, 10135i), vec3<i32>(-23564i, -18622i, arg_0)), -17938i, select(1526i, 36118i, arg_2)), -_wgslsmith_div_vec4_i32(vec4<i32>(-47221i, arg_0, 1i, arg_0), vec4<i32>(-22969i, arg_0, -1i, arg_0)) & vec4<i32>(1i, arg_0, firstTrailingBit(-1i), -8218i & arg_0)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_0 >> (1298u % 32u), -10822i)), ~(~vec2<i32>(1i, 1i))), arg_0, arg_0);
    var var_2 = arg_1;
    global0 = _wgslsmith_sub_i32(-select(var_1.x, var_1.x, arg_2 != true), _wgslsmith_mod_i32(arg_0, _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(var_1.x, arg_0), arg_0), arg_0)));
    global0 = _wgslsmith_mod_i32(1i, var_1.x);
    return _wgslsmith_div_i32(995i, -(1i ^ var_1.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> bool {
    global0 = ~(i32(-1i) * -24870i);
    global0 = -reverseBits(_wgslsmith_sub_i32(func_3(~1i, Struct_1(vec2<u32>(32185u, 66158u), arg_1.x, vec4<f32>(arg_0.b, arg_0.c.x, arg_1.x, arg_1.x), 0u, arg_0.a), true), 1i));
    global0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, 2147483647i), -firstTrailingBit(abs(443i))), 2147483647i);
    global0 = ~_wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(min(vec2<i32>(8200i, 40556i), vec2<i32>(-1i, 61113i)), vec2<i32>(-1i, -21114i)), _wgslsmith_div_vec2_i32(~vec2<i32>(1i, 5973i), select(-vec2<i32>(-2147483647i, -1i), vec2<i32>(0i, 0i) >> (vec2<u32>(arg_0.e.x, u_input.a.x) % vec2<u32>(32u)), select(vec2<bool>(false, true), vec2<bool>(false, false), false))));
    var var_0 = select(select(arg_0.a ^ _wgslsmith_clamp_vec2_u32(u_input.a.yx, vec2<u32>(arg_0.e.x, 4294967295u), vec2<u32>(arg_0.a.x, arg_0.e.x)), u_input.a.zw, vec2<bool>(true, true)), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~arg_0.e, arg_0.e, select(u_input.a.wy, vec2<u32>(81250u, u_input.a.x), true)), ~(~u_input.a.wx)), all(vec2<bool>(false, true))) >> (u_input.a.xz % vec2<u32>(32u));
    return true;
}

fn func_1() -> vec3<i32> {
    var var_0 = !select(!vec2<bool>(select(true, false, true), true), select(vec2<bool>(true, func_2(Struct_1(vec2<u32>(u_input.a.x, 1u), 1194f, vec4<f32>(-1116f, -546f, 584f, -401f), u_input.a.x, u_input.a.xw), vec4<f32>(1000f, 1000f, -145f, -644f))), vec2<bool>(true, true), func_2(Struct_1(u_input.a.xw, -2337f, vec4<f32>(-148f, 885f, 1444f, 1667f), u_input.a.x, u_input.a.wx), _wgslsmith_f_op_vec4_f32(vec4<f32>(-873f, 747f, 517f, -894f) - vec4<f32>(289f, 190f, 703f, -825f)))), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), true));
    let var_1 = Struct_1(u_input.a.yy, 712f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-108f, -239f, 1000f, -1000f) + vec4<f32>(597f, -1314f, 2503f, 1514f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1241f, 287f, -592f, -1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1220f, 1000f, -1057f, -579f) - vec4<f32>(1238f, -1458f, 1000f, -458f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-369f, -1207f, _wgslsmith_f_op_f32(f32(-1f) * -900f), _wgslsmith_div_f32(144f, -634f)) - vec4<f32>(1f, 1f, 1f, 1f))), ~4294967295u, _wgslsmith_sub_vec2_u32(u_input.a.yx, vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x >> (4294967295u % 32u)), _wgslsmith_sub_u32(u_input.a.x, 0u))));
    var_0 = !(!vec2<bool>(any(!vec2<bool>(var_0.x, var_0.x)), true));
    global0 = abs(_wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-1i, 2147483647i, -4126i, 15905i)), vec4<i32>(abs(-2147483647i), 6073i, i32(-1i) * -20970i, 1i)));
    var var_2 = Struct_1(var_1.e, _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b, _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f)), 622f))), var_1.a.x, u_input.a.yz);
    return -(firstTrailingBit(countOneBits(vec3<i32>(-1i, -2147483647i, -25615i))) ^ vec3<i32>(1i, 1i, 1i)) & ~(-select(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 2147483647i, 2147483647i), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = func_1();
    let var_2 = ~u_input.a;
    global0 = max(_wgslsmith_div_i32(var_1.x, countOneBits(var_1.x)), reverseBits(_wgslsmith_sub_i32(1i, 1i))) ^ _wgslsmith_mod_i32(var_1.x, countOneBits(var_1.x));
    let var_3 = select(select(vec2<bool>(true, false), !select(vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), vec2<bool>(false, true)), var_0 && false), false), !select(vec2<bool>(true, true), vec2<bool>(true, var_0), !(!vec2<bool>(var_0, true))), vec2<bool>(true, true));
    let var_4 = Struct_2(Struct_1(~(~vec2<u32>(u_input.a.x, var_2.x)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1056f - -206f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(979f * 1000f), -1735f, _wgslsmith_f_op_f32(-192f * -231f), -1113f)), _wgslsmith_mult_u32(var_2.x, ~_wgslsmith_div_u32(var_2.x, var_2.x)), abs(firstLeadingBit(vec2<u32>(var_2.x, var_2.x)))), Struct_1(var_2.wz, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(409f)) - _wgslsmith_f_op_f32(-305f - -1117f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-567f, -128f, 1276f, 631f) - vec4<f32>(1951f, -787f, -1000f, 1392f)))), u_input.a.x, _wgslsmith_mod_vec2_u32(countOneBits(var_2.zy), u_input.a.wy)));
    let var_5 = Struct_2(var_4.b, var_4.a);
    global0 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_5.b.e.x, 90280u), abs(var_2.x)), firstLeadingBit(~var_2.x)), ~var_4.b.a.x));
}

