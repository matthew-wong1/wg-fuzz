struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

var<private> global2: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_add_u32(_wgslsmith_mult_u32(abs(_wgslsmith_mult_u32(u_input.b.x, 0u)), countOneBits(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.d), vec2<u32>(u_input.d.x, u_input.d.x)))), 21997u);
    let var_0 = false;
    global2 = array<vec3<bool>, 5>();
    global0 = ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 17630u), vec2<u32>(u_input.b.x, 0u)), u_input.c.xy), 17526u));
    global2 = array<vec3<bool>, 5>();
    return global1.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: f32) -> vec3<bool> {
    var var_0 = Struct_1(27613u, vec2<bool>(_wgslsmith_f_op_f32(-120f + arg_1.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3))), true), global2[_wgslsmith_index_u32(u_input.c.x >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, u_input.c.x, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.d.x, 4294967295u), vec4<u32>(u_input.d.x, u_input.b.x, 17503u, u_input.c.x))), _wgslsmith_dot_vec2_u32(u_input.d << (vec2<u32>(u_input.c.x, u_input.d.x) % vec2<u32>(32u)), ~u_input.c.yx)) % 32u), 5u)], func_3(), u_input.b.x);
    var var_1 = 75720u;
    var_0 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_sub_u32(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 31971u, 0u, 13187u), vec4<u32>(20698u, var_0.e, 2310u, 0u))), ~(~u_input.d.x)) ^ (reverseBits(firstLeadingBit(1u)) << ((~var_0.a << (~4294967295u % 32u)) % 32u)), select(var_0.b, var_0.c.xx, vec2<bool>(var_0.c.x, !select(arg_2, true, var_0.c.x))), vec3<bool>(false, false, any(var_0.b)), _wgslsmith_mod_i32(var_0.d, countOneBits(0i)) >> (~60549u % 32u), (_wgslsmith_dot_vec3_u32(u_input.c, firstLeadingBit(vec3<u32>(0u, u_input.d.x, 38655u))) | reverseBits(var_0.e)) ^ 43389u);
    let var_2 = arg_1.yx;
    var var_3 = all(vec4<bool>(u_input.b.x < var_0.a, arg_2, true, arg_2));
    return !select(select(vec3<bool>(true, true, true), var_0.c, select(var_0.c, select(vec3<bool>(var_0.c.x, var_0.b.x, true), global2[_wgslsmith_index_u32(u_input.c.x, 5u)], arg_2), var_0.b.x)), !vec3<bool>(any(var_0.b), false, var_0.b.x), var_0.c);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_u32(u_input.d.x, u_input.c.x), !vec2<bool>(true, select(false, false, false)), !(!global2[_wgslsmith_index_u32(u_input.c.x, 5u)]), 69295i, ~_wgslsmith_add_u32(u_input.d.x, ~0u)), select(vec3<bool>(false, all(func_2(vec3<f32>(-945f, 1000f, 1000f), vec3<f32>(-1198f, -469f, -1266f), true, -1000f)), true), func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1306f, 1000f, -202f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-704f, -1068f, -1318f)), all(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1139f, 673f, -1049f))))), !select(false, false, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(368f)) + _wgslsmith_f_op_f32(f32(-1f) * -365f))), !any(vec4<bool>(true, true, true, true))));
    global1 = Struct_3(u_input.a.x);
    global0 = ~min(u_input.d.x, _wgslsmith_mult_u32(var_0.a.a | var_0.a.e, 0u | var_0.a.a)) >> (~_wgslsmith_mult_u32(44167u, select(9116u, 4294967295u, true)) % 32u);
    var var_1 = 87u;
    var var_2 = Struct_2(Struct_1(u_input.b.x, var_0.a.b, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-503f, -1071f, -1687f), vec3<f32>(1551f, -215f, 3073f)) - vec3<f32>(317f, -426f, 377f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-461f, -340f, 534f), vec3<f32>(-655f, -2258f, -102f)))), 4294967295u <= _wgslsmith_clamp_u32(u_input.d.x, u_input.c.x, 7822u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f))), _wgslsmith_mult_i32(~25295i, global1.a << (4294967295u % 32u)) >> (var_0.a.a % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.a, var_0.a.a, 0u, u_input.c.x) | (vec4<u32>(u_input.b.x, var_0.a.e, 4294967295u, 55508u) >> (vec4<u32>(53833u, var_0.a.a, 1u, 0u) % vec4<u32>(32u))), min(~vec4<u32>(1u, 0u, 1u, u_input.b.x), vec4<u32>(var_0.a.e, 0u, 0u, var_0.a.a)))), select(!select(vec3<bool>(var_0.b.x, var_0.a.c.x, true), !vec3<bool>(true, var_0.b.x, var_0.b.x), global1.a >= 69712i), vec3<bool>(true, func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-374f, -396f, -2216f), vec3<f32>(-1915f, -1019f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-147f, 1000f, -2171f)), func_2(vec3<f32>(-289f, -926f, -1126f), vec3<f32>(-1394f, 2513f, -297f), var_0.a.c.x, -1782f).x, -341f).x, true), select(!(!var_0.a.c), global2[_wgslsmith_index_u32(7438u << (~4294967295u % 32u), 5u)], var_0.b.x)));
    return Struct_2(Struct_1(34155u, select(!select(vec2<bool>(var_2.a.c.x, false), var_0.a.c.zz, true), func_2(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(913f, -522f, 398f)), true, -1206f).yx, true), select(select(vec3<bool>(false, false, var_0.b.x), !global2[_wgslsmith_index_u32(var_0.a.e, 5u)], !var_2.a.c), global2[_wgslsmith_index_u32(var_2.a.e, 5u)], var_0.b), u_input.e.x, _wgslsmith_add_u32(var_0.a.a, 0u)), !var_0.a.c);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = Struct_3(min(arg_1.a.d, 1i) << (~arg_1.a.a % 32u));
    var var_1 = Struct_3(0i);
    var_1 = Struct_3(-9586i);
    let var_2 = Struct_3(-29580i);
    var_1 = var_2;
    return vec3<f32>(465f, 919f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-908f, -878f, -271f), vec3<f32>(-1000f, -1000f, -550f))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1284f, -538f, 2020f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1057f, -604f, 1299f), vec3<f32>(-532f, 440f, -545f), global2[_wgslsmith_index_u32(u_input.d.x, 5u)]))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1175f, -1000f, 358f)))))));
    let var_1 = true;
    let var_2 = abs(-global1.a);
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-238f, var_0.x) * var_0.zx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xz) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1577f)), _wgslsmith_f_op_vec2_f32(min(var_0.yz, var_0.zy)))))), func_1()));
    global0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer((vec3<i32>(-1i) * -countOneBits(vec3<i32>(2147483647i, global1.a, -1i))) & vec3<i32>(u_input.e.x, var_2, var_2), max(~u_input.d.x, (u_input.b.x >> (u_input.b.x % 32u)) ^ countOneBits(u_input.d.x)), u_input.b.x, u_input.e ^ _wgslsmith_mult_vec3_i32((vec3<i32>(var_2, -2147483647i, -3709i) ^ vec3<i32>(-2147483647i, 0i, 32212i)) & ~vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(_wgslsmith_sub_i32(-30533i, global1.a), u_input.a.x, var_2)));
}

