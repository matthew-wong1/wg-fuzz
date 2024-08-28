struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -39897i;

var<private> global1: array<f32, 20> = array<f32, 20>(-841f, 402f, 735f, -2552f, 1264f, 1000f, -1000f, -1000f, 234f, 536f, -944f, -1247f, -1818f, 392f, -462f, 420f, 2620f, 551f, -489f, 2138f);

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-1702f, -261f, 1548f, 532f), vec4<u32>(1u, 4294967295u, 18214u, 4294967295u), 305f, 33649u);

var<private> global3: i32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = ~vec3<i32>(_wgslsmith_mod_i32(u_input.a, _wgslsmith_mult_i32(u_input.a, 34245i)) >> ((1u ^ (global2.d & global2.d)) % 32u), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), abs(vec4<i32>(2147483647i, -25057i, 26600i, u_input.a))), abs(-1i));
    var var_1 = Struct_1(vec4<f32>(-1114f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global2.a.x)))), _wgslsmith_f_op_f32(-1181f + _wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 20u)]), -212f), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(143223u, global2.d), 20u)]))), ~global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), reverseBits(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, global2.d), max(global2.b.x, global2.d)), _wgslsmith_dot_vec3_u32(select(global2.b.ywx, global2.b.zzx, vec3<bool>(true, arg_0, true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.d, 0u, global2.d), vec3<u32>(1u, global2.b.x, 12959u), vec3<u32>(0u, global2.d, 13254u))))));
    let var_2 = !arg_0;
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(min(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, -276f, -1012f, global2.a.x) + var_1.a) * var_1.a)))), vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(1u), ~4294967295u), ~_wgslsmith_add_u32(1u, global2.b.x), 0u, _wgslsmith_add_u32(~var_1.d, 4294967295u)) & vec4<u32>(global2.d, var_1.b.x | 47229u, _wgslsmith_mod_u32(4294967295u | var_1.d, 1u), ~1u), _wgslsmith_f_op_f32(843f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(var_1.d, 20u)])), _wgslsmith_f_op_f32(f32(-1f) * -983f))))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(1u, ~var_1.d)), ~(_wgslsmith_dot_vec3_u32(global2.b.yxy, vec3<u32>(var_1.b.x, var_1.d, global2.d)) ^ select(0u, 100155u, var_2))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global2.a.zzz, vec3<f32>(global1[_wgslsmith_index_u32(52641u, 20u)], global2.c, 880f), vec3<bool>(false, true, arg_0))) + vec3<f32>(global1[_wgslsmith_index_u32(0u, 20u)], global2.a.x, global2.a.x)), vec3<f32>(_wgslsmith_f_op_f32(440f - 1574f), _wgslsmith_div_f32(-463f, 740f), var_1.a.x))), _wgslsmith_f_op_vec3_f32(-var_1.a.yww)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(347f, -330f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(var_1.b.x, 20u)]))))), global2.c));
    return u_input.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = arg_3.a.b.x;
    global1 = array<f32, 20>();
    global3 = -func_3(true) ^ _wgslsmith_add_i32((countOneBits(u_input.a) & _wgslsmith_add_i32(u_input.a, u_input.a)) & ~u_input.a, u_input.a);
    let var_1 = arg_3;
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_1.d.a.x * 730f), _wgslsmith_div_f32(arg_2.d.a.x, -211f), -939f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.b.x, 20u)] + -2320f)), _wgslsmith_f_op_vec4_f32(round(arg_2.d.a)))))), arg_3.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) * _wgslsmith_f_op_f32(max(1317f, _wgslsmith_f_op_f32(select(721f, arg_3.c, true))))), 4294967295u);
    return !select(!vec2<bool>(arg_1.x, !arg_1.x), select(arg_1.yx, !(!arg_1.xy), vec2<bool>(true, true)), (var_1.d.a.x <= arg_3.c) | any(vec3<bool>(true, arg_1.x, false)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    global0 = i32(-1i) * -28946i;
    let var_0 = !(!(!(!select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, true), arg_0.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -346f), arg_2.a.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -647f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1582f) - _wgslsmith_f_op_f32(-global2.c)), _wgslsmith_f_op_f32(arg_2.a.c * _wgslsmith_f_op_f32(round(arg_1.c)))))), _wgslsmith_sub_vec4_u32(arg_1.d.b, ~(~vec4<u32>(global2.b.x, 11955u, arg_1.b.x, arg_2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.a.d, 20u)])))) - _wgslsmith_f_op_f32(-389f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-705f - global2.c)))), 1u);
    let var_2 = func_2(var_1.b.ww, var_0, Struct_2(arg_2.d, countOneBits(firstTrailingBit(vec2<u32>(69203u, arg_2.a.b.x))), 701f, Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_2.a.a))), firstLeadingBit(arg_2.a.b << (vec4<u32>(4294967295u, global2.d, arg_1.a.b.x, 1u) % vec4<u32>(32u))), var_1.a.x, 0u)), Struct_2(arg_1.d, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~var_1.b.xx, vec2<u32>(1u, 1u)), vec2<u32>(global2.b.x, 4606u)), global2.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-336f, var_1.c, arg_2.c, -825f) * _wgslsmith_div_vec4_f32(arg_2.d.a, vec4<f32>(1083f, 1916f, 1224f, var_1.c))), firstTrailingBit(~vec4<u32>(29868u, 4294967295u, 57332u, global2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.c)), ~arg_1.b.x & 25218u)));
    var var_3 = arg_2.d;
    return u_input.a;
}

fn func_1() -> f32 {
    global0 = ~_wgslsmith_div_i32(firstTrailingBit(firstLeadingBit(-43217i)), _wgslsmith_mult_i32(25484i, u_input.a));
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-466f)) * global2.c), -176f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.b.x, 20u)] + global1[_wgslsmith_index_u32(global2.d, 20u)])))), global2.a);
    global0 = ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(3793i, -42524i)), _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, 0i), firstTrailingBit(vec2<i32>(u_input.a, u_input.a)))), func_4(func_2(vec2<u32>(0u, 9513u), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), Struct_2(Struct_1(vec4<f32>(-1045f, 681f, -1325f, var_0.x), global2.b, global1[_wgslsmith_index_u32(global2.b.x, 20u)], 0u), vec2<u32>(global2.b.x, global2.b.x), var_0.x, Struct_1(vec4<f32>(global2.a.x, var_0.x, var_0.x, var_0.x), vec4<u32>(4294967295u, 47448u, global2.b.x, global2.d), 1402f, global2.b.x)), Struct_2(Struct_1(global2.a, global2.b, 1611f, global2.d), global2.b.wy, -899f, Struct_1(vec4<f32>(460f, 1497f, -705f, -1000f), global2.b, -355f, global2.b.x))), Struct_2(Struct_1(global2.a, global2.b, var_0.x, global2.b.x), ~global2.b.yz, _wgslsmith_f_op_f32(-1795f + 319f), Struct_1(global2.a, global2.b, 1000f, global2.d)), Struct_2(Struct_1(vec4<f32>(var_0.x, global1[_wgslsmith_index_u32(global2.d, 20u)], global1[_wgslsmith_index_u32(global2.d, 20u)], -186f), vec4<u32>(89409u, 0u, 1u, global2.b.x), 637f, 41929u), vec2<u32>(48128u, global2.b.x), _wgslsmith_f_op_f32(round(var_0.x)), Struct_1(global2.a, global2.b, global2.a.x, 1u))));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1817f * -1107f), _wgslsmith_f_op_f32(f32(-1f) * -1976f))) - global2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.a.x)) + global1[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(0u, 20u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1279f + var_0.x) + _wgslsmith_f_op_f32(min(global2.a.x, 437f))), func_2(vec2<u32>(global2.b.x, global2.d), vec3<bool>(false, false, true), Struct_2(Struct_1(global2.a, global2.b, global2.c, 1u), global2.b.zx, 1152f, Struct_1(vec4<f32>(-2926f, global2.c, 490f, -403f), global2.b, -904f, global2.d)), Struct_2(Struct_1(vec4<f32>(494f, 1609f, -1876f, global2.c), global2.b, -1034f, 1u), global2.b.yx, global2.a.x, Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(global2.d, 20u)], var_0.x, -492f, -346f), vec4<u32>(global2.d, global2.b.x, global2.d, 4294967295u), -1509f, 4294967295u))).x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.x)), -1333f))), _wgslsmith_clamp_vec4_u32(global2.b, _wgslsmith_mod_vec4_u32(~vec4<u32>(global2.d, global2.d, 0u, 54988u), _wgslsmith_mult_vec4_u32(global2.b | vec4<u32>(global2.b.x, 0u, 1u, 26086u), ~global2.b)), global2.b), -624f, ~_wgslsmith_sub_u32(~global2.b.x, global2.d));
    global3 = ~0i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(378f))) - _wgslsmith_f_op_f32(floor(-268f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(global2.b.zxw, global2.b.zwz);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1237f, 685f, global1[_wgslsmith_index_u32(1u, 20u)], -617f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2604f, -143f, -170f, global2.c))))), abs(~max(vec4<u32>(32949u, global2.d, global2.b.x, 4294967295u), global2.b)), -1599f, min(global2.d, abs(global2.b.x))), abs(global2.b.wy ^ ~(~vec2<u32>(1u, global2.b.x))), -1382f, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.c)) * -386f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -444f) * _wgslsmith_f_op_f32(-177f + 1047f)), _wgslsmith_f_op_f32(-682f + _wgslsmith_f_op_f32(1087f + global1[_wgslsmith_index_u32(3642u, 20u)])), global2.c), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global2.d, global2.b.x, global2.b.x, global2.b.x), ~vec4<u32>(global2.d, global2.d, global2.b.x, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(35889u, global2.b.x, global2.b.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(global2.b.x, 1u, 4241u, 38049u), vec4<u32>(global2.d, 4294967295u, global2.d, global2.d)))), -172f, 1u));
    global1 = array<f32, 20>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(sign(-429f))), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(-257f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1376f * global2.c)) + global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.d, 42277u, 27509u), var_1.a.b.zxw), _wgslsmith_div_vec3_u32(vec3<u32>(0u, var_1.a.b.x, 1u), vec3<u32>(global2.b.x, 0u, 52901u))), 20u)])));
    let var_3 = all(select(!func_2(countOneBits(var_1.b), vec3<bool>(true, true, true), Struct_2(Struct_1(vec4<f32>(var_1.d.a.x, -335f, 436f, global1[_wgslsmith_index_u32(global2.b.x, 20u)]), vec4<u32>(5382u, 42388u, 69333u, 4294967295u), -123f, 41255u), var_1.a.b.ww, -1199f, Struct_1(vec4<f32>(1208f, global1[_wgslsmith_index_u32(var_1.b.x, 20u)], -1036f, 224f), var_1.a.b, -1058f, 55073u)), Struct_2(Struct_1(global2.a, var_1.a.b, -385f, 0u), vec2<u32>(6865u, global2.b.x), var_2.x, Struct_1(vec4<f32>(-1344f, -437f, global1[_wgslsmith_index_u32(11014u, 20u)], 1360f), vec4<u32>(2895u, var_1.b.x, var_1.d.b.x, 90236u), -338f, 4294967295u))), vec2<bool>(var_1.b.x > 57488u, true), false));
    var var_4 = Struct_2(var_1.d, ~global2.b.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))) * -161f), Struct_1(vec4<f32>(472f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(2033u >> (var_1.d.d % 32u), 20u)]), 127f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.c + global2.a.x), _wgslsmith_f_op_f32(global2.c - var_1.c))), vec4<u32>(_wgslsmith_sub_u32(4294967295u << (global2.d % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.d, 29627u, 0u, global2.d), vec4<u32>(global2.d, global2.b.x, var_1.a.b.x, var_1.d.d))), global2.b.x, var_1.b.x, ~(~0u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(0u, 20u)], var_2.x, true)))))), ~max(~1u, ~0u)));
    let var_5 = reverseBits(-min(u_input.a | _wgslsmith_add_i32(0i, u_input.a), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~721u & firstTrailingBit(var_1.d.d), 1521f, _wgslsmith_add_vec4_u32(select(abs(min(var_4.d.b, global2.b)), max(select(global2.b, var_4.d.b, vec4<bool>(var_3, var_3, var_3, var_3)), var_4.a.b | var_4.d.b), vec4<bool>(u_input.a < var_5, !var_3, var_1.a.b.x <= 22682u, false)), vec4<u32>(var_1.b.x, ~_wgslsmith_mult_u32(var_4.d.d, 4294967295u), 33751u ^ var_1.a.d, var_1.a.b.x & (var_1.b.x << (2164u % 32u)))), var_1.a.b.xw);
}

