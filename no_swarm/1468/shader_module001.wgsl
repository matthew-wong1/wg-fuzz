struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(true, vec4<f32>(435f, -1588f, -117f, -954f), -12957i, vec2<bool>(false, true), vec2<bool>(true, false)), Struct_1(true, vec4<f32>(274f, -143f, 872f, 156f), 46017i, vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(true, vec4<f32>(1809f, -1124f, 1150f, -210f), 15965i, vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(true, vec4<f32>(-359f, 1000f, -885f, 1016f), 15842i, vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(false, vec4<f32>(397f, 307f, -1202f, -1373f), i32(-2147483648), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(true, vec4<f32>(267f, 2013f, 602f, -924f), 17453i, vec2<bool>(true, false), vec2<bool>(false, true)), Struct_1(true, vec4<f32>(548f, -333f, -292f, -669f), 2147483647i, vec2<bool>(false, false), vec2<bool>(false, false)), Struct_1(true, vec4<f32>(1558f, -290f, 151f, 569f), -47287i, vec2<bool>(false, false), vec2<bool>(false, false)), Struct_1(true, vec4<f32>(711f, -558f, 2112f, 637f), i32(-2147483648), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(true, vec4<f32>(-570f, -738f, 901f, 2088f), 15024i, vec2<bool>(false, true), vec2<bool>(true, true)), Struct_1(true, vec4<f32>(-2212f, 1293f, 1000f, 837f), -21544i, vec2<bool>(false, false), vec2<bool>(true, true)), Struct_1(false, vec4<f32>(991f, -1230f, 1178f, 1597f), 0i, vec2<bool>(true, false), vec2<bool>(false, false)), Struct_1(false, vec4<f32>(604f, -877f, 356f, 1092f), -2335i, vec2<bool>(true, false), vec2<bool>(true, false)), Struct_1(false, vec4<f32>(-650f, 294f, -929f, 629f), 2147483647i, vec2<bool>(false, false), vec2<bool>(true, false)), Struct_1(true, vec4<f32>(-317f, -602f, -1090f, 902f), -1i, vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(true, vec4<f32>(-1516f, -533f, 242f, -749f), i32(-2147483648), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(true, vec4<f32>(443f, 1204f, -1000f, 754f), 37688i, vec2<bool>(true, false), vec2<bool>(true, true)), Struct_1(true, vec4<f32>(-1173f, 323f, 901f, -389f), -18965i, vec2<bool>(true, true), vec2<bool>(false, false)), Struct_1(true, vec4<f32>(957f, -769f, 1886f, -186f), 0i, vec2<bool>(true, true), vec2<bool>(false, false)), Struct_1(false, vec4<f32>(1343f, 1084f, -1182f, 640f), 76547i, vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(false, vec4<f32>(103f, -645f, -649f, 1364f), -9693i, vec2<bool>(true, false), vec2<bool>(false, true)), Struct_1(true, vec4<f32>(-1801f, -530f, -1264f, 377f), 2147483647i, vec2<bool>(true, false), vec2<bool>(false, true)), Struct_1(true, vec4<f32>(2522f, 508f, 1065f, 1104f), 0i, vec2<bool>(false, true), vec2<bool>(false, false)));

var<private> global2: array<vec4<bool>, 17>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> bool {
    global1 = array<Struct_1, 23>();
    var var_0 = arg_0;
    let var_1 = select(select(vec2<bool>(true, true), !vec2<bool>(arg_0.c.x, arg_0.d), true), vec2<bool>(arg_0.d & !(!arg_0.d), false), arg_0.c.xz);
    let var_2 = global1[_wgslsmith_index_u32(77278u, 23u)];
    var var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(4294967295u, arg_0.e), ~(var_0.e | var_0.e)), vec2<u32>(_wgslsmith_sub_u32(reverseBits(0u), u_input.b), firstTrailingBit(_wgslsmith_mod_u32(var_0.e << (arg_0.e % 32u), 4406u))));
    return var_0.d;
}

fn func_2(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = -32301i;
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1577f), -1342f, true)), arg_0)), _wgslsmith_f_op_f32(global0.x - arg_0), _wgslsmith_f_op_f32(step(833f, arg_0))) * vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-528f))), _wgslsmith_f_op_f32(1086f * 186f)));
    global1 = array<Struct_1, 23>();
    var var_1 = Struct_1(!func_3(Struct_3(global0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-416f, 1652f, 426f, global0.x)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), true, 25197u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, arg_0, -609f, 442f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1000f, global0.x, global0.x) - vec4<f32>(268f, global0.x, 1000f, -205f)))), 2147483647i, vec2<bool>(all(select(global2[_wgslsmith_index_u32(38424u, 17u)], global2[_wgslsmith_index_u32(42981u, 17u)], global2[_wgslsmith_index_u32(arg_1, 17u)])) | any(vec4<bool>(false, true, false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-486f))) < _wgslsmith_f_op_f32(-arg_0)), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true)));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, arg_1), vec2<u32>(arg_1, arg_1) | vec2<u32>(15827u, 0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u) >> (vec2<u32>(arg_1, 0u) % vec2<u32>(32u)), ~vec2<u32>(1u, 0u), vec2<u32>(u_input.b, 22684u))), 52299u), 23u)];
    return u_input.c;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec4<f32> {
    global2 = array<vec4<bool>, 17>();
    let var_0 = Struct_3(-1000f, arg_0.b, vec3<bool>(any(!arg_0.e), !arg_0.a, !arg_0.e.x), arg_0.a, ~_wgslsmith_clamp_u32(reverseBits(func_2(arg_0.b.x, u_input.b)), ~1u, _wgslsmith_mult_u32(u_input.b, 5781u) & 4294967295u));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.x)))) * -1431f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, global0.x, -2124f, arg_0.b.x), arg_0.b))))))), select(vec3<bool>(!(!var_0.d), arg_0.c != arg_0.c, -2147483647i < arg_0.c), vec3<bool>(true, arg_0.a, true), !var_0.c), !func_3(var_0), u_input.b);
    global1 = array<Struct_1, 23>();
    global0 = vec3<f32>(-335f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - arg_0.b.x), -497f)))), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1740f))));
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + arg_1), _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-173f - arg_0.b.x), _wgslsmith_f_op_f32(select(global0.x, arg_1, false)))), _wgslsmith_f_op_f32(abs(164f)), _wgslsmith_f_op_f32(arg_0.b.x * 783f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-2177f + -428f), 1000f, arg_0.b.x, -1721f))) * _wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(_wgslsmith_f_op_f32(-1860f + 158f), 2082f, -228f, _wgslsmith_f_op_f32(sign(-295f))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> StorageBuffer {
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    let var_0 = arg_1;
    global1 = array<Struct_1, 23>();
    return StorageBuffer(firstLeadingBit(~(~(~vec4<i32>(arg_0.c, -41610i, arg_0.c, arg_0.c)))), ~(-1i), _wgslsmith_sub_vec2_i32(vec2<i32>(-31519i, min(u_input.a.x, -arg_1.b.c)), (u_input.a & firstTrailingBit(u_input.a)) | u_input.a), _wgslsmith_div_i32(0i, arg_1.b.c), (~_wgslsmith_sub_vec4_i32(vec4<i32>(-36127i, -1i, u_input.a.x, -3116i), vec4<i32>(-1i, arg_0.c, 1i, var_0.b.c)) ^ vec4<i32>(~(-32954i), 1i, 0i, min(-47840i, 31367i))) >> (var_0.a % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 23>();
    var var_0 = vec3<bool>(!all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(sign(-381f)) < _wgslsmith_f_op_f32(f32(-1f) * -1000f), false);
    global1 = array<Struct_1, 23>();
    let var_1 = var_0.x;
    var_0 = vec3<bool>(true, var_0.x, var_0.x);
    let x = u_input.a;
    s_output = func_4(Struct_1(var_0.x, _wgslsmith_f_op_vec4_f32(func_1(Struct_1(false, vec4<f32>(global0.x, -526f, 1000f, global0.x), 0i, !vec2<bool>(false, var_0.x), !var_0.zz), global0.x)), u_input.a.x, !select(!vec2<bool>(var_0.x, false), !var_0.yz, var_0.x), !var_0.xy), Struct_2(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, 0u, u_input.b, u_input.c)), firstTrailingBit(vec4<u32>(16511u, 4294967295u, 0u, u_input.c))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, 48265u, 0u) & vec4<u32>(89441u, 58981u, 70030u, u_input.c), ~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)) % vec4<u32>(32u)), Struct_1(any(vec2<bool>(true, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(639f, 1193f, -1000f, 112f), vec4<f32>(393f, global0.x, 1630f, 735f)), i32(-1i) * -19127i, !(!var_0.zx), vec2<bool>(any(var_0.xy), select(var_0.x, var_0.x, false))), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -1524f)))), !global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, select(6618u, u_input.c, true)), 17u)]);
}

