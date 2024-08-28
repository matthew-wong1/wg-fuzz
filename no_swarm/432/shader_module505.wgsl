struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_3 = Struct_3(vec2<f32>(317f, -554f), 1000f, Struct_2(vec4<f32>(250f, -777f, 619f, 1141f)));

var<private> global2: array<i32, 16> = array<i32, 16>(i32(-2147483648), 1i, 21932i, i32(-2147483648), 1i, i32(-2147483648), 1i, 2147483647i, 2147483647i, 0i, 13358i, 2147483647i, -1i, 0i, -33352i, -1i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3, arg_3: vec3<f32>) -> vec2<bool> {
    return select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), true), vec2<bool>(true, any(vec4<bool>(any(vec3<bool>(false, false, false)), true, true, false))), any(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c.a)));
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global1.c.a, global1.c.a)))));
    var var_0 = -(~min(vec2<i32>(1i, 1i), vec2<i32>(u_input.a.x, arg_2.d))) | vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-u_input.a, u_input.a), reverseBits(-vec2<i32>(7973i, -2641i))), countOneBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_2.d, 1i, arg_1.e, global2[_wgslsmith_index_u32(1u, 16u)]), vec4<i32>(arg_2.e, arg_1.d, u_input.a.x, 1i))));
    let var_1 = !select(arg_0, func_3(Struct_3(_wgslsmith_f_op_vec2_f32(-global1.c.a.wx), -1337f, Struct_2(global1.c.a)), arg_1.a.x, Struct_3(_wgslsmith_f_op_vec2_f32(global1.c.a.yz - global0.yw), 1066f, global1.c), global0.wyw), arg_2.b);
    global1 = Struct_3(vec2<f32>(global0.x, _wgslsmith_f_op_f32(global1.c.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-394f)), _wgslsmith_f_op_f32(round(global0.x)))), global1.c);
    return select(!select(vec3<bool>(false, !var_1.x, arg_2.e == -45756i), !select(vec3<bool>(var_1.x, false, false), vec3<bool>(arg_2.b, true, false), vec3<bool>(false, arg_2.c, false)), !(!vec3<bool>(var_1.x, var_1.x, arg_2.c))), vec3<bool>(any(vec3<bool>(false, arg_0.x, select(arg_1.c, var_1.x, arg_2.b))), !select(func_3(Struct_3(vec2<f32>(-1251f, 2156f), -275f, Struct_2(global1.c.a)), arg_3.x, Struct_3(global1.c.a.xw, -995f, Struct_2(global1.c.a)), vec3<f32>(-681f, global1.c.a.x, global0.x)).x, var_1.x && var_1.x, arg_0.x), !all(vec4<bool>(false, arg_1.c, arg_2.b, true))), vec3<bool>(true, _wgslsmith_dot_vec2_i32(vec2<i32>(-1617i, -6003i), u_input.a) >= 1i, select(firstTrailingBit(global2[_wgslsmith_index_u32(0u, 16u)]) != u_input.a.x, arg_2.b && true, arg_2.b)));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.c.a + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(global1.c.a, arg_2.c.a)))))) - global1.c.a);
    let var_0 = _wgslsmith_f_op_vec4_f32(-global1.c.a);
    let var_1 = reverseBits(_wgslsmith_add_vec4_i32(firstLeadingBit(firstTrailingBit(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)) >> (u_input.c % vec4<u32>(32u))), -min(vec4<i32>(1i, u_input.a.x, 32060i, -174i), _wgslsmith_sub_vec4_i32(vec4<i32>(-42667i, 1i, global2[_wgslsmith_index_u32(u_input.c.x, 16u)], -12051i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, -1i)))));
    global1 = arg_2;
    var var_2 = arg_2;
    return Struct_1(_wgslsmith_mult_vec2_u32(u_input.c.yx, ~u_input.c.xx), ~(_wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.c.yy) & _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.b)) < (54808u >> (_wgslsmith_mod_u32(u_input.c.x, 1u) % 32u)), true, firstTrailingBit(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(56382u, u_input.c.x)), 16u)]), -global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.xw & u_input.c.yw), 16u)]);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    return func_4(arg_3.x, !select(select(vec3<bool>(arg_1, false, true), !vec3<bool>(false, false, arg_1), arg_1), select(vec3<bool>(false, true, false), func_2(vec2<bool>(false, true), Struct_1(u_input.c.zz, false, true, u_input.a.x, global2[_wgslsmith_index_u32(u_input.b, 16u)]), Struct_1(u_input.c.wy, arg_1, arg_1, global2[_wgslsmith_index_u32(29931u, 16u)], arg_2), u_input.c.yz), func_2(vec2<bool>(arg_1, false), Struct_1(vec2<u32>(69265u, 1u), arg_1, arg_1, 0i, -1i), Struct_1(vec2<u32>(u_input.c.x, 24330u), arg_1, true, u_input.a.x, arg_2), u_input.c.xy)), select(select(vec3<bool>(false, true, arg_1), vec3<bool>(arg_1, arg_1, false), true), select(vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true)), !vec3<bool>(arg_1, false, arg_1))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(296f)) - _wgslsmith_f_op_f32(max(global1.c.a.x, global0.x))), global1.c.a.x), global1.c.a.x, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2169f, global1.b, 1411f, global1.b) - vec4<f32>(arg_3.x, 154f, 625f, global0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.c.a;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(984f - _wgslsmith_f_op_f32(trunc(-433f))));
    var var_1 = func_1(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-389f)) - _wgslsmith_f_op_f32(min(global1.c.a.x, global0.x))), -2334f, _wgslsmith_f_op_f32(sign(644f)), _wgslsmith_f_op_f32(floor(475f)))), !(all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)) & all(vec4<bool>(true, true, true, true))), _wgslsmith_mult_i32(-37445i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.c.wxx, u_input.c.yzz | vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, 46364u), vec3<u32>(u_input.c.x, 1u, u_input.c.x))), 16u)]), global1.c.a);
    var_1 = func_4(-579f, select(vec3<bool>(true, !var_1.c, !func_3(Struct_3(vec2<f32>(global1.a.x, global0.x), global0.x, Struct_2(vec4<f32>(460f, global1.a.x, global0.x, -1769f))), 0u, Struct_3(global0.wy, var_0, Struct_2(vec4<f32>(global0.x, 1715f, global0.x, var_0))), global1.c.a.xwx).x), func_2(vec2<bool>(func_3(Struct_3(vec2<f32>(952f, var_0), global1.c.a.x, Struct_2(vec4<f32>(global1.b, -2357f, -1245f, var_0))), 1u, Struct_3(global1.c.a.zx, -643f, Struct_2(global1.c.a)), vec3<f32>(global0.x, var_0, -347f)).x, true), Struct_1(~vec2<u32>(u_input.b, var_1.a.x), -436f > var_0, true, countOneBits(var_1.e), _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], u_input.a.x, -4068i)), Struct_1(var_1.a, true, func_1(Struct_2(vec4<f32>(global1.b, 549f, 1177f, -1000f)), var_1.b, -38467i, vec4<f32>(global0.x, var_0, -432f, 1159f)).b, -2147483647i, -2147483647i), func_1(Struct_2(global1.c.a), select(false, false, false), 2147483647i, vec4<f32>(-1478f, -800f, -272f, -345f)).a), select(select(vec3<bool>(true, true, true), vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(var_1.b, var_1.b, var_1.b)), select(vec3<bool>(true, false, var_1.c), vec3<bool>(false, var_1.b, var_1.c), vec3<bool>(var_1.b, var_1.b, true)), var_1.c)), Struct_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, _wgslsmith_div_f32(404f, -863f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-517f, global1.b), vec2<f32>(929f, -256f))))))), 307f, Struct_2(global1.c.a)));
    global2 = array<i32, 16>();
    var_1 = Struct_1(var_1.a, var_1.c & !(!any(vec4<bool>(var_1.c, false, var_1.c, false))), func_1(global1.c, true, -15036i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(floor(global1.a.x)), _wgslsmith_f_op_f32(min(130f, global1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -864f)))).c, -_wgslsmith_add_i32(-36956i, -func_4(global1.c.a.x, vec3<bool>(true, false, true), Struct_3(vec2<f32>(global1.a.x, -1387f), 582f, Struct_2(vec4<f32>(-563f, 1000f, -545f, 516f)))).d), u_input.a.x);
    global2 = array<i32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.xz, vec2<f32>(1900f, 887f), vec2<bool>(var_1.c, var_1.c))))))), reverseBits(max(abs(~var_1.a), max(vec2<u32>(0u, 28835u), _wgslsmith_clamp_vec2_u32(vec2<u32>(57921u, 4294967295u), vec2<u32>(7777u, u_input.b), var_1.a)))), _wgslsmith_f_op_f32(min(1885f, _wgslsmith_f_op_f32(f32(-1f) * -220f))));
}

