struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<bool>(true, false, true, true), 11550u, vec2<u32>(83369u, 0u), true, -870f), Struct_1(vec4<bool>(false, true, false, false), 4294967295u, vec2<u32>(0u, 85164u), true, 1992f), Struct_1(vec4<bool>(true, true, true, false), 1u, vec2<u32>(4294967295u, 23662u), true, -686f), Struct_1(vec4<bool>(false, false, false, false), 27154u, vec2<u32>(1u, 20103u), true, -1663f), Struct_1(vec4<bool>(true, false, true, true), 1u, vec2<u32>(25665u, 4294967295u), false, 1000f), Struct_1(vec4<bool>(false, false, true, true), 1u, vec2<u32>(34467u, 7712u), true, 599f), Struct_1(vec4<bool>(true, false, false, true), 4294967295u, vec2<u32>(8606u, 0u), true, -235f), Struct_1(vec4<bool>(false, false, false, true), 24034u, vec2<u32>(2216u, 4294967295u), false, 1067f), Struct_1(vec4<bool>(false, true, false, false), 62159u, vec2<u32>(1u, 17929u), false, -828f), Struct_1(vec4<bool>(true, true, false, false), 0u, vec2<u32>(25312u, 4294967295u), false, -3036f), Struct_1(vec4<bool>(true, false, true, true), 1u, vec2<u32>(1u, 74047u), true, -1058f), Struct_1(vec4<bool>(false, true, false, false), 0u, vec2<u32>(0u, 11812u), false, -1000f), Struct_1(vec4<bool>(true, true, false, true), 5855u, vec2<u32>(4294967295u, 4294967295u), false, 2055f), Struct_1(vec4<bool>(false, false, true, true), 89222u, vec2<u32>(14503u, 45218u), true, 436f), Struct_1(vec4<bool>(true, true, true, false), 1u, vec2<u32>(18889u, 1u), false, -1650f), Struct_1(vec4<bool>(false, false, false, false), 0u, vec2<u32>(23647u, 1u), true, -695f), Struct_1(vec4<bool>(false, false, true, false), 4294967295u, vec2<u32>(13533u, 0u), false, 729f), Struct_1(vec4<bool>(true, false, false, false), 4529u, vec2<u32>(1u, 2953u), true, -126f), Struct_1(vec4<bool>(true, true, false, false), 4294967295u, vec2<u32>(54298u, 95640u), false, -319f), Struct_1(vec4<bool>(true, true, false, false), 15306u, vec2<u32>(4294967295u, 525u), true, -1037f), Struct_1(vec4<bool>(true, false, true, true), 4294967295u, vec2<u32>(47725u, 1u), true, 1000f), Struct_1(vec4<bool>(true, true, true, false), 4294967295u, vec2<u32>(13990u, 4294967295u), true, -426f));

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(1742u, 0u, 0u, 64971u));

var<private> global2: array<f32, 24> = array<f32, 24>(427f, -2105f, 1129f, -1413f, 126f, 174f, 455f, -916f, -830f, 875f, -341f, -1678f, -1562f, -669f, 910f, 2918f, -717f, 1426f, -274f, 770f, -1000f, 520f, 179f, 272f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: bool, arg_3: f32) -> f32 {
    let var_0 = 0u;
    global0 = array<Struct_1, 22>();
    var var_1 = true;
    var var_2 = global0[_wgslsmith_index_u32(~u_input.c.x, 22u)];
    global2 = array<f32, 24>();
    return _wgslsmith_f_op_f32(194f - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 24u)]));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    global2 = array<f32, 24>();
    global1 = array<vec4<u32>, 1>();
    global0 = array<Struct_1, 22>();
    global2 = array<f32, 24>();
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(arg_2.a.x, false, arg_2.d), arg_2.a, true, _wgslsmith_f_op_f32(abs(-1000f))))), _wgslsmith_f_op_f32(min(arg_2.e, arg_2.e)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2190f, 1f) - global2[_wgslsmith_index_u32(abs(0u), 24u)]))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(54266u, u_input.c.x, (countOneBits(4294967295u) & _wgslsmith_clamp_u32(0u, u_input.b.x, 75461u)) & reverseBits(1u), 75559u), vec4<u32>(~max(arg_2.b & 33495u, _wgslsmith_sub_u32(27171u, 1u)), arg_2.b, 19109u, u_input.c.x));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_add_u32(744u, u_input.b.x) ^ (u_input.c.x >> (func_2(-5573i & (u_input.a & 4118i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 24u)], 863f, -1446f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2[_wgslsmith_index_u32(0u, 24u)], 635f, -679f)))), Struct_1(vec4<bool>(true, true, true, true), u_input.c.x, _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(u_input.c.x, 7795u)), false, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 24u)] + global2[_wgslsmith_index_u32(u_input.b.x, 24u)]))) % 32u));
    global2 = array<f32, 24>();
    global1 = array<vec4<u32>, 1>();
    var var_1 = (4294967295u > u_input.c.x) | true;
    global1 = array<vec4<u32>, 1>();
    return all(vec3<bool>(any(vec4<bool>(u_input.a >= u_input.d.x, false, select(true, false, true), true)), false, false));
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(419f - 1132f);
    let var_1 = countOneBits(vec3<i32>(1i, ~(~_wgslsmith_mod_i32(-2147483647i, -38163i)), -2147483647i));
    var_0 = global2[_wgslsmith_index_u32(~firstTrailingBit(abs(arg_0.b)), 24u)];
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(sign(-1588f));
    return reverseBits(-16884i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 1>();
    var var_0 = -func_4(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.c.x), u_input.c), u_input.c, func_1(), _wgslsmith_div_f32(720f, global2[_wgslsmith_index_u32(65864u, 24u)]))) & _wgslsmith_add_i32(~abs(u_input.d.x | -1170i), -_wgslsmith_mod_i32(-59265i, 5524i));
    var var_1 = _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 39974u) | u_input.c, ~u_input.c)), abs(~countOneBits(u_input.c))) > ~(~(80426u ^ ~u_input.c.x));
    var var_2 = Struct_1(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), any(vec3<bool>(true, true, true))), ~_wgslsmith_dot_vec3_u32(u_input.b.zzy, vec3<u32>(u_input.c.x, 0u, u_input.c.x)), u_input.c, false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(8251u, 24u)])))), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~u_input.b.x >> (u_input.b.x % 32u), 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)])));
    global2 = array<f32, 24>();
    var var_3 = abs(vec2<u32>(1u, 8191u));
    let var_4 = Struct_1(!vec4<bool>(!var_2.d, true, var_2.a.x, ~38903u != _wgslsmith_add_u32(var_3.x, 1u)), ~firstLeadingBit(firstTrailingBit(0u)), min(~_wgslsmith_sub_vec2_u32(min(vec2<u32>(4294967295u, var_3.x), var_2.c), vec2<u32>(var_3.x, var_3.x) >> (vec2<u32>(u_input.b.x, 53662u) % vec2<u32>(32u))), countOneBits(vec2<u32>(u_input.b.x, 1u)) << (countOneBits(u_input.c) % vec2<u32>(32u))), all(vec2<bool>(true, var_2.a.x)) | var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(52745u, 24u)]), _wgslsmith_f_op_f32(round(var_2.e)))))));
    var var_5 = Struct_1(!select(var_4.a, !var_2.a, vec4<bool>(false & var_4.a.x, var_2.d, var_2.a.x && var_2.a.x, true)), _wgslsmith_div_u32(var_2.b, countOneBits(0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(80011u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(50908u, var_2.c.x), 24896u, u_input.b.x)), vec2<u32>(func_2(u_input.d.x, vec3<f32>(var_2.e, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], -695f), Struct_1(vec4<bool>(true, var_4.d, var_2.d, false), 0u, u_input.c, var_4.d, global2[_wgslsmith_index_u32(u_input.c.x, 24u)])), ~_wgslsmith_mult_u32(34028u, u_input.c.x)), vec2<u32>(0u, 39371u)), !var_4.a.x, global2[_wgslsmith_index_u32(var_4.b & _wgslsmith_clamp_u32(abs(16918u), min(var_3.x, ~4294967295u), ~(~6295u)), 24u)]);
    var var_6 = u_input.a << (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, firstLeadingBit(u_input.b.ywz), ~_wgslsmith_dot_vec4_i32((vec4<i32>(-783i, u_input.a, -34802i, u_input.a) ^ vec4<i32>(1i, u_input.a, u_input.a, 0i)) | max(vec4<i32>(-13270i, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), abs(-vec4<i32>(u_input.d.x, u_input.d.x, u_input.a, u_input.a))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(31413u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(var_3.x, var_2.c.x, var_4.b, var_5.c.x))), vec2<u32>(1u, 1u)), 65307u), var_2.b);
}

