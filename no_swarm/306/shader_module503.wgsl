struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(69891i), Struct_1(33382i), Struct_1(-7100i), Struct_1(0i), Struct_1(53698i), Struct_1(-37300i), Struct_1(2147483647i), Struct_1(-1867i), Struct_1(0i), Struct_1(-23464i), Struct_1(23747i), Struct_1(-14758i), Struct_1(1i), Struct_1(-1i), Struct_1(0i), Struct_1(-29677i), Struct_1(i32(-2147483648)), Struct_1(39509i), Struct_1(22502i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(-17903i), Struct_1(-7652i), Struct_1(-9102i), Struct_1(51406i), Struct_1(-8548i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_3(vec4<u32>(u_input.c, 4294967295u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(1u, 122665u))), u_input.c), true);
    let var_1 = ~(~48389u);
    return vec3<i32>(u_input.a, -2147483647i, ~(~(-2147483647i)));
}

fn func_2() -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(~4294967295u >> (u_input.c % 32u), 26u)];
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 16993i, 12881i), ~select(vec3<i32>(41414i, -1i, var_0.a), vec3<i32>(u_input.d.x, var_0.a, var_0.a), false)), func_3()), ~(-15617i));
    global1 = array<Struct_1, 26>();
    let var_2 = true;
    global0 = !vec2<bool>(global0.x, true);
    return Struct_3(select(min(max(abs(vec4<u32>(0u, u_input.c, 77538u, 1u)), vec4<u32>(4294967295u, u_input.c, 369u, u_input.c)), vec4<u32>(u_input.c, u_input.c, 1u, 1u)), abs(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, 27595u, u_input.c), vec4<u32>(0u, u_input.c, 15175u, u_input.c)))), true), false);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = true;
    var var_1 = 17981i;
    var var_2 = _wgslsmith_mod_vec3_u32(arg_0.a.ywy, _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(max(arg_0.a.wxw, vec3<u32>(arg_0.a.x, 32007u, u_input.c)), ~arg_0.a.yxw), arg_0.a.zxx), ~_wgslsmith_div_vec3_u32(~arg_0.a.zxw, ~vec3<u32>(arg_0.a.x, arg_0.a.x, u_input.c))));
    global0 = !vec2<bool>(func_2().a.x <= ~u_input.c, !(!select(false, true, global0.x)));
    let var_3 = ((vec4<i32>(firstLeadingBit(0i), u_input.a, countOneBits(1730i), ~39829i) & ((vec4<i32>(-35682i, -19947i, u_input.b, u_input.d.x) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, 12281i)) >> (arg_0.a % vec4<u32>(32u)))) << (_wgslsmith_mod_vec4_u32(firstTrailingBit(func_2().a), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 3239u, var_2.x, var_2.x), arg_0.a))) % vec4<u32>(32u))) | vec4<i32>(96711i, firstTrailingBit(2147483647i & (74i | u_input.a)), -1i, -(~(-17253i)));
    return Struct_2(global1[_wgslsmith_index_u32(max(28053u, abs(_wgslsmith_clamp_u32(6222u, countOneBits(1u), ~0u))), 26u)]);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(0u, 4294967295u << (u_input.c % 32u));
    let var_1 = _wgslsmith_mod_i32(2147483647i, 1i);
    let var_2 = firstTrailingBit(abs(func_3().x));
    let var_3 = vec3<f32>(1f, _wgslsmith_f_op_f32(min(1079f, -520f)), 714f);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-186f, var_3.x)) - _wgslsmith_f_op_f32(1491f + 713f)), -703f)));
    return Struct_2(Struct_1(1i));
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -259f) - -130f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1660f * -1308f))))), _wgslsmith_f_op_f32(781f * 833f), _wgslsmith_f_op_f32(trunc(2612f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1189f - _wgslsmith_f_op_f32(-127f - -1111f)))))));
    var var_1 = func_5(Struct_2(global1[_wgslsmith_index_u32(8392u, 26u)]), -(-(vec4<i32>(-2147483647i, u_input.d.x, u_input.a, u_input.d.x) >> (vec4<u32>(u_input.c, 79884u, u_input.c, u_input.c) % vec4<u32>(32u))) | firstTrailingBit(~vec4<i32>(u_input.b, 0i, u_input.b, u_input.b))), func_4(func_2()));
    global0 = select(vec2<bool>(true, (_wgslsmith_sub_i32(-25751i, var_1.a.a) ^ 1i) >= var_1.a.a), vec2<bool>(true, false), !vec2<bool>(false && all(vec2<bool>(global0.x, true)), true));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1410f, var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)), var_0.x), var_0, !global0.x)) * var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1075f, _wgslsmith_f_op_f32(floor(1980f)), 1f, -1629f))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1202f)), var_0.x, 558f))));
    let var_1 = 20785u;
    var var_2 = _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(var_1, 4294967295u, 55863u)), reverseBits(vec3<u32>(0u, 1u, 28111u) ^ vec3<u32>(u_input.c, var_1, u_input.c))) | 0u;
    var_2 = ~u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(trunc(var_0.x))));
}

