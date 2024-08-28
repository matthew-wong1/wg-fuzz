struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<u32, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_5(arg_0.c.b, arg_0.c.b, vec3<f32>(_wgslsmith_f_op_f32(ceil(-544f)), _wgslsmith_f_op_f32(f32(-1f) * -478f), -370f));
    var var_1 = u_input.b.x < (0u ^ _wgslsmith_mod_u32(106845u, _wgslsmith_mod_u32(min(u_input.b.x, 1u), u_input.a)));
    let var_2 = arg_0.c.a.x;
    var var_3 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.c.b.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.c.b.a * 595f), _wgslsmith_f_op_f32(min(var_2, var_2))))), Struct_1(var_0.c.x, -16448i, false, -_wgslsmith_div_i32(0i, -47225i))), true, ~_wgslsmith_add_vec4_u32(~(u_input.b >> (vec4<u32>(53363u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23681u, 30u)], 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 30u)], 30u)], 30u)], 4294967295u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(62276u, 0u, 1u, u_input.a), _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(4294967295u, 61393u, u_input.a, 385u)), vec4<u32>(40863u, global1[_wgslsmith_index_u32(u_input.b.x, 30u)], u_input.a, 4294967295u) ^ u_input.b)));
    let var_4 = vec4<i32>(-28256i, _wgslsmith_sub_i32(1i, 34868i), _wgslsmith_dot_vec2_i32(-abs(vec2<i32>(arg_0.c.b.d, -2147483647i)), vec2<i32>(-(~6060i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(41540i, 0i), -13914i))), -1i);
    return var_3.c.x & (global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(67068u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 30u)], 0u), abs(0u))), 30u)] | (((u_input.a | 45399u) | _wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 30u)], 7956u)) & ~1u));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1049f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-395f * -574f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(327f, 367f)) * -543f)), true));
    var var_1 = ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(8242u, 14079u, u_input.b.x), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 30u)]) >> ((func_3(Struct_4(global0.xy, vec2<i32>(u_input.c, u_input.c), Struct_2(vec3<f32>(600f, 1813f, 1227f), Struct_1(429f, u_input.c, global0.x, u_input.c)), vec2<i32>(10918i, 15338i)), vec3<bool>(false, false, global0.x)) << (_wgslsmith_add_u32(global1[_wgslsmith_index_u32(30726u, 30u)], u_input.b.x) % 32u)) % 32u), 30u)] ^ min(128839u, abs(abs(28144u))), 30u)];
    var var_2 = ~_wgslsmith_add_vec3_u32(u_input.b.zxx, _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b.xxy, vec3<u32>(global1[_wgslsmith_index_u32(1u, 30u)], 23424u, 5353u), u_input.b.wyz), vec3<u32>(_wgslsmith_div_u32(0u, u_input.a), u_input.a, firstLeadingBit(global1[_wgslsmith_index_u32(6287u, 30u)]))));
    let var_3 = u_input.b.yxz;
    let var_4 = select(~u_input.b.ww, ~(~u_input.b.xx), global0.x);
    return u_input.c;
}

fn func_4(arg_0: i32) -> vec4<u32> {
    global0 = select(vec3<bool>(select(any(vec3<bool>(global0.x, global0.x, global0.x)), global0.x, global0.x) & !any(global0.yz), true, true), vec3<bool>(!any(global0.zx), global0.x, !all(!vec3<bool>(false, false, global0.x))), vec3<bool>(!(_wgslsmith_f_op_f32(round(-723f)) <= _wgslsmith_f_op_f32(-826f - 720f)), false, global0.x));
    let var_0 = !(!(!select(vec2<bool>(true, true), select(global0.zy, global0.zz, false), !vec2<bool>(false, global0.x))));
    global0 = select(!vec3<bool>(all(vec4<bool>(false, global0.x, var_0.x, true)), any(select(vec3<bool>(true, global0.x, true), vec3<bool>(true, true, false), vec3<bool>(global0.x, var_0.x, var_0.x))), global0.x), !(!vec3<bool>(true, false != global0.x, false)), !any(select(vec2<bool>(var_0.x, var_0.x), !vec2<bool>(false, var_0.x), select(global0.xx, global0.yz, vec2<bool>(false, true)))));
    global1 = array<u32, 30>();
    var var_1 = 763f;
    return _wgslsmith_mod_vec4_u32(max(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(128078u, global1[_wgslsmith_index_u32(u_input.b.x, 30u)] >> (u_input.b.x % 32u), ~global1[_wgslsmith_index_u32(1u, 30u)], 49228u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)])), select(vec4<u32>(31658u, global1[_wgslsmith_index_u32(15749u, 30u)], 9042u, u_input.b.x) & u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, global1[_wgslsmith_index_u32(96247u, 30u)], global1[_wgslsmith_index_u32(109623u, 30u)]), vec4<u32>(u_input.b.x, 37589u, 4294967295u, u_input.a)) << (~u_input.b % vec4<u32>(32u)), any(!vec2<bool>(var_0.x, global0.x)))), ~(~u_input.b) | (vec4<u32>(u_input.a, firstTrailingBit(6436u), abs(53325u), u_input.a | 0u) << (_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), u_input.b) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    global0 = vec3<bool>(true, true, true);
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-194f, arg_0.a, arg_0.a), vec3<f32>(arg_0.a, -239f, 630f), true)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(973f, 167f, 1672f) * vec3<f32>(arg_0.a, arg_0.a, 1627f)))))), arg_0);
    let var_1 = var_0.b.d;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a - -308f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(193f, -717f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(851f, -862f), var_0.a.zy)))), var_0.a.yy)) * var_0.a.yx);
    return Struct_2(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(ceil(417f)), 422f), arg_0);
}

fn func_1() -> bool {
    var var_0 = Struct_4(vec2<bool>(!global0.x, !(!(u_input.c != 10270i))), ~vec2<i32>(reverseBits(~u_input.c), 32196i), func_5(Struct_1(1f, -_wgslsmith_div_i32(u_input.c, -17953i), true, 0i), func_4(func_2() & ~0i)), ~vec2<i32>(0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, 0i, 1i, 75493i), _wgslsmith_mult_vec4_i32(vec4<i32>(-13567i, u_input.c, u_input.c, 1i), vec4<i32>(u_input.c, 1i, -82842i, u_input.c)))));
    var_0 = Struct_4(vec2<bool>(true, true), vec2<i32>(2147483647i, u_input.c), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a.x, _wgslsmith_f_op_f32(var_0.c.b.a + var_0.c.b.a), 1714f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.a * vec3<f32>(var_0.c.b.a, var_0.c.b.a, 618f)), _wgslsmith_f_op_vec3_f32(var_0.c.a - vec3<f32>(var_0.c.b.a, var_0.c.b.a, -314f)))), func_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1334f), _wgslsmith_clamp_i32(var_0.c.b.d, u_input.c, 48539i), true, var_0.b.x), u_input.b).b), max(abs(vec2<i32>(u_input.c, var_0.d.x) | var_0.b), min(vec2<i32>(-1i, u_input.c), firstTrailingBit(vec2<i32>(u_input.c, 0i)))) ^ var_0.d);
    let var_1 = Struct_1(-707f, -var_0.b.x, !(var_0.a.x | !var_0.c.b.c), 0i);
    var var_2 = func_3(Struct_4(select(var_0.a, !(!var_0.a), false), vec2<i32>(var_0.d.x, -1i), func_5(func_5(var_1, max(vec4<u32>(62029u, 13985u, u_input.b.x, 3536u), vec4<u32>(66687u, global1[_wgslsmith_index_u32(16694u, 30u)], u_input.b.x, u_input.b.x))).b, vec4<u32>(~u_input.a, ~1u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(33783u, 30u)], 30u)], func_3(Struct_4(vec2<bool>(true, false), vec2<i32>(var_1.d, var_0.b.x), var_0.c, var_0.b), vec3<bool>(false, false, var_0.a.x)))), reverseBits(firstTrailingBit(var_0.d))), vec3<bool>(!(!global0.x) & func_5(var_0.c.b, ~u_input.b).b.c, all(select(!vec3<bool>(false, var_0.c.b.c, global0.x), vec3<bool>(true, false, var_1.c), var_1.a == var_0.c.a.x)), !any(vec4<bool>(var_1.c, var_0.c.b.c, var_1.c, false)) && any(select(vec3<bool>(var_1.c, false, var_1.c), vec3<bool>(global0.x, true, global0.x), var_0.c.b.c))));
    var var_3 = abs(u_input.c);
    return !var_0.a.x && false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(any(select(global0.yz, !vec2<bool>(global0.x, false), 25858i >= u_input.c)), true, false && global0.x);
    let var_0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(345f))))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(42058i, 1i)) << (countOneBits(49402u) % 32u), abs(0i)), func_1(), u_input.c), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(355f + -1230f) * 376f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1000f))))), u_input.c, global0.x, u_input.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1759f)), _wgslsmith_f_op_f32(max(776f, -431f)), _wgslsmith_f_op_f32(385f + 1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_div_vec3_f32(vec3<f32>(-1075f, -1192f, 605f), vec3<f32>(148f, -663f, -523f))))));
    global0 = select(select(vec3<bool>(!all(vec4<bool>(global0.x, true, global0.x, global0.x)), all(!vec4<bool>(var_0.a.c, false, global0.x, var_0.a.c)), false), !(!vec3<bool>(global0.x, false, false)), select(select(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, false, global0.x), true), !vec3<bool>(true, true, global0.x), vec3<bool>(true, var_0.a.c, var_0.b.c)), select(vec3<bool>(true, var_0.b.c, var_0.b.c), select(vec3<bool>(true, var_0.a.c, true), vec3<bool>(var_0.a.c, true, false), global0.x), true), !any(vec4<bool>(true, true, true, true)))), vec3<bool>(var_0.a.c, any(select(select(global0.xx, global0.yy, global0.x), vec2<bool>(false, var_0.b.c), global0.yz)), global0.x), select(global0.x, var_0.b.c, true));
    global0 = vec3<bool>(true, global0.x, true);
    let var_1 = max(u_input.b.zxx, u_input.b.xxy);
    var var_2 = ~((-(-30703i & var_0.b.b) << (21509u % 32u)) ^ 2537i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.a)), _wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(select(-980f, 1406f, var_0.a.c)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x + 441f), _wgslsmith_div_f32(800f, var_0.a.a), _wgslsmith_f_op_f32(-var_0.c.x)))), vec4<i32>(-1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(-7479i, -1i), _wgslsmith_sub_i32(24978i, u_input.c)) >> (0u % 32u), -_wgslsmith_sub_i32(_wgslsmith_add_i32(-12045i, 2147483647i), var_0.a.d & 1i), -19732i));
}

