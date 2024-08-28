struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 2> = array<bool, 2>(true, true);

var<private> global2: array<i32, 1>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = vec2<u32>(min(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_1.a.x, 3518u), u_input.d.yyx)), _wgslsmith_add_u32(~u_input.d.x & ~649u, abs(~10422u))), arg_1.a.x);
    let var_1 = Struct_1(select(select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(23315u, 2u)], false, global1[_wgslsmith_index_u32(1u, 2u)]), select(vec4<bool>(false, global1[_wgslsmith_index_u32(22751u, 2u)], global1[_wgslsmith_index_u32(u_input.d.x, 2u)], global1[_wgslsmith_index_u32(var_0.x, 2u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(var_0.x, 2u)]), global1[_wgslsmith_index_u32(var_0.x, 2u)]), !vec4<bool>(global1[_wgslsmith_index_u32(arg_1.c.x, 2u)], global1[_wgslsmith_index_u32(arg_1.c.x, 2u)], global1[_wgslsmith_index_u32(arg_1.c.x, 2u)], global1[_wgslsmith_index_u32(var_0.x, 2u)])), select(select(vec4<bool>(false, true, true, false), vec4<bool>(global1[_wgslsmith_index_u32(15153u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)], true, global1[_wgslsmith_index_u32(u_input.d.x, 2u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.a.x, 2u)], global1[_wgslsmith_index_u32(37074u, 2u)], true, false)), select(vec4<bool>(false, global1[_wgslsmith_index_u32(34792u, 2u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 2u)], global1[_wgslsmith_index_u32(arg_1.c.x, 2u)], true, global1[_wgslsmith_index_u32(4294967295u, 2u)]), global1[_wgslsmith_index_u32(4294967295u, 2u)]), select(vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.a.x, 2u)], true, false), vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(var_0.x, 2u)]), global1[_wgslsmith_index_u32(u_input.d.x, 2u)])), true), select(select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 2u)], global1[_wgslsmith_index_u32(53365u, 2u)], global1[_wgslsmith_index_u32(arg_1.a.x, 2u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.a.x, 2u)], false, global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 2u)], true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(arg_1.c.x, 2u)]), false), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_0.x, 2u)], false)), vec4<bool>(true, true, global1[_wgslsmith_index_u32(arg_1.c.x, 2u)] && true, any(vec4<bool>(true, false, global1[_wgslsmith_index_u32(arg_1.c.x, 2u)], true))), global1[_wgslsmith_index_u32(max(19816u, 782u), 2u)]), !select(!vec4<bool>(global1[_wgslsmith_index_u32(28958u, 2u)], global1[_wgslsmith_index_u32(var_0.x, 2u)], global1[_wgslsmith_index_u32(var_0.x, 2u)], global1[_wgslsmith_index_u32(0u, 2u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)], global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(132058u, 2u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 2u)], false, global1[_wgslsmith_index_u32(72006u, 2u)], global1[_wgslsmith_index_u32(arg_1.a.x, 2u)]), global1[_wgslsmith_index_u32(4583u, 2u)]), global1[_wgslsmith_index_u32(~33029u, 2u)])), u_input.b.x, !(true != global1[_wgslsmith_index_u32(1u, 2u)]) && false, u_input.a, !(!vec3<bool>(var_0.x == 31333u, false, global1[_wgslsmith_index_u32(arg_1.a.x, 2u)] != global1[_wgslsmith_index_u32(65965u, 2u)])));
    let var_2 = var_1;
    var var_3 = Struct_2(vec2<u32>(~(~13755u), var_2.d), ~(-var_2.b), firstLeadingBit(vec4<u32>(11569u, _wgslsmith_div_u32(86207u | var_0.x, 0u | var_0.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(56108u, 23394u, var_2.d, 1u), _wgslsmith_mod_vec4_u32(arg_1.c, u_input.d)), var_1.d)));
    let var_4 = var_2;
    return _wgslsmith_f_op_f32(1329f + arg_0);
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    global2 = array<i32, 1>();
    var var_0 = Struct_1(!vec4<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(arg_0.a.x, 2u)], true, global1[_wgslsmith_index_u32(4294967295u, 2u)])), global1[_wgslsmith_index_u32(~arg_0.c.x >> (countOneBits(0u) % 32u), 2u)], global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(~4294967295u, 2u)]), abs(arg_0.b) & -19128i, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-arg_1), Struct_2(arg_0.c.ww >> (u_input.d.ww % vec2<u32>(32u)), -21876i, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, 0u, arg_0.c.x, 3494u), arg_0.c)))) <= -1722f, ~select(1u, arg_0.a.x, global1[_wgslsmith_index_u32(u_input.d.x, 2u)]), select(!vec3<bool>(false & global1[_wgslsmith_index_u32(48941u, 2u)], true, false | global1[_wgslsmith_index_u32(0u, 2u)]), !select(!vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0.c.x, 2u)], true), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 2u)], true), vec3<bool>(global1[_wgslsmith_index_u32(arg_0.c.x, 2u)], global1[_wgslsmith_index_u32(32079u, 2u)], true)), vec3<bool>(any(select(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0.a.x, 2u)], global1[_wgslsmith_index_u32(u_input.d.x, 2u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0.a.x, 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)], global1[_wgslsmith_index_u32(arg_0.c.x, 2u)]), global1[_wgslsmith_index_u32(u_input.d.x, 2u)])), true, global1[_wgslsmith_index_u32(1u, 2u)])));
    let var_1 = arg_0;
    var var_2 = abs(var_1.a ^ vec2<u32>(_wgslsmith_mult_u32(reverseBits(var_1.a.x), var_1.c.x), 4294967295u & var_1.a.x));
    let var_3 = !vec4<bool>(global1[_wgslsmith_index_u32(var_0.d, 2u)], ~arg_0.c.x <= abs(var_2.x | 1u), arg_1 == _wgslsmith_f_op_f32(ceil(1384f)), global1[_wgslsmith_index_u32(abs(var_2.x), 2u)]);
    return Struct_1(vec4<bool>(all(vec4<bool>(true, true, true, var_0.e.x)), all(var_0.e), var_0.e.x, !((arg_0.a.x >> (var_0.d % 32u)) <= ~46725u)), (i32(-1i) * -_wgslsmith_div_i32(-1i, global2[_wgslsmith_index_u32(5649u, 1u)])) | abs(~(~var_0.b)), var_3.x, arg_0.a.x, select(var_0.a.wwy, var_3.yzz, vec3<bool>((var_1.c.x <= 4294967295u) != !var_0.e.x, var_3.x, all(vec2<bool>(global1[_wgslsmith_index_u32(var_0.d, 2u)], false)))));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = func_2(Struct_2(u_input.d.ww, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13247u, reverseBits(1u), u_input.c, _wgslsmith_sub_u32(11884u, u_input.d.x)), ~u_input.d), 1u)], select(reverseBits(u_input.d) | _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(u_input.c, 2322u, 18944u, 43066u)), abs(vec4<u32>(u_input.a, arg_0, 0u, 19121u)), !all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(0u, 2u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1147f), -2263f, any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(arg_0, 2u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1240f, 491f) + -1280f))));
    global0 = !(!(!(!global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.d, 0u), 2u)])));
    global2 = array<i32, 1>();
    var var_1 = abs(~u_input.d);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-917f * _wgslsmith_f_op_f32(round(431f))) + 1000f);
    return (-_wgslsmith_mult_i32(37698i, u_input.b.x) ^ -1i) & -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 2>();
    let var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(func_1(max(u_input.a, 17280u)), u_input.b.x, _wgslsmith_add_i32(u_input.b.x, -u_input.b.x)), vec3<i32>(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(34722u, 1u)] & -1i, global2[_wgslsmith_index_u32(u_input.c, 1u)]), global2[_wgslsmith_index_u32(abs(abs(0u)), 1u)], i32(-1i) * -u_input.b.x)), countOneBits(-vec3<i32>(-1i, global2[_wgslsmith_index_u32(4294967295u, 1u)], -2147483647i) >> (min(vec3<u32>(u_input.d.x, 86060u, u_input.c), u_input.d.wxz) % vec3<u32>(32u))));
    let var_1 = -2147483647i;
    var var_2 = select(-(~(-(~vec4<i32>(var_0.x, 14348i, -94245i, -10772i)))), -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global2[_wgslsmith_index_u32(14585u, 1u)]), u_input.b) << (u_input.d.x % 32u), 0i, ~0i, 2147483647i), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 2u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.d.x, 28814u), vec2<u32>(1u, u_input.c), vec2<bool>(true, true)), vec2<u32>(40308u, 49080u)), 2u)], true, var_0.x > ~var_1), !(!select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(u_input.d.x, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], true), true)), !vec4<bool>(global1[_wgslsmith_index_u32(~4294967295u, 2u)], any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], false)), false, global1[_wgslsmith_index_u32(4294967295u, 2u)] && true)));
    let var_3 = _wgslsmith_div_vec2_i32(var_0.yy, vec2<i32>(~firstLeadingBit(_wgslsmith_dot_vec3_i32(var_0, var_2.zxw)), u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~firstLeadingBit(u_input.d)));
}

