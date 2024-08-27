struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
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

var<private> global0: array<f32, 9> = array<f32, 9>(276f, -1535f, 991f, -1109f, -599f, 619f, -1253f, 998f, -1000f);

var<private> global1: array<vec4<u32>, 31>;

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(0u, Struct_1(vec2<f32>(564f, 818f), vec2<u32>(4294967295u, 20114u), vec3<bool>(true, false, true))), Struct_3(50525u, Struct_1(vec2<f32>(-1713f, -675f), vec2<u32>(9406u, 4294967295u), vec3<bool>(false, true, true))), Struct_3(0u, Struct_1(vec2<f32>(1163f, 1250f), vec2<u32>(33319u, 31426u), vec3<bool>(true, true, true))), Struct_3(4294967295u, Struct_1(vec2<f32>(1653f, 1619f), vec2<u32>(4294967295u, 58875u), vec3<bool>(false, true, true))), Struct_3(1u, Struct_1(vec2<f32>(-840f, -1199f), vec2<u32>(17587u, 4294967295u), vec3<bool>(true, false, true))), Struct_3(28514u, Struct_1(vec2<f32>(-235f, -338f), vec2<u32>(54881u, 4294967295u), vec3<bool>(false, true, false))), Struct_3(89882u, Struct_1(vec2<f32>(-237f, 225f), vec2<u32>(1u, 17067u), vec3<bool>(true, true, true))), Struct_3(1u, Struct_1(vec2<f32>(-222f, 1000f), vec2<u32>(39189u, 53527u), vec3<bool>(true, false, false))), Struct_3(8194u, Struct_1(vec2<f32>(-613f, 1280f), vec2<u32>(4294967295u, 60601u), vec3<bool>(false, true, false))), Struct_3(33353u, Struct_1(vec2<f32>(929f, 1000f), vec2<u32>(53017u, 0u), vec3<bool>(false, true, true))));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32) -> Struct_4 {
    return Struct_4(reverseBits(~_wgslsmith_add_u32(_wgslsmith_sub_u32(56214u, arg_1.b.b.x), firstTrailingBit(arg_1.b.b.x))), vec4<f32>(-1108f, _wgslsmith_f_op_f32(max(arg_1.b.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1905f)), _wgslsmith_f_op_f32(f32(-1f) * -521f), any(arg_0.xx))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(226f, global2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.a.x - arg_2)), arg_2)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_sub_vec4_i32(~_wgslsmith_add_vec4_i32(select(~vec4<i32>(u_input.a, 1i, u_input.c, u_input.c), -vec4<i32>(-909i, 14730i, u_input.a, u_input.b.x), true), min(vec4<i32>(0i, 2147483647i, u_input.a, -2147483647i), vec4<i32>(13162i, 6831i, u_input.b.x, 2147483647i))), min(-vec4<i32>(1i, 12857i, u_input.c, u_input.b.x), abs(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 1i, 0i, 1i), vec4<i32>(-55172i, 19717i, 1i, 1i)))) << (_wgslsmith_div_vec4_u32(vec4<u32>(~77755u, 1u, _wgslsmith_div_u32(5891u, 59000u), _wgslsmith_div_u32(0u, 5276u)), vec4<u32>(_wgslsmith_add_u32(0u, 1280u), ~32973u, firstTrailingBit(58842u), _wgslsmith_add_u32(32391u, 47078u))) % vec4<u32>(32u)));
    global0 = array<f32, 9>();
    var var_1 = Struct_4(_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(31542u, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 0u, 35497u, 104952u)), ~3135u))), _wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(all(vec2<bool>(true, false)), select(false, true, true), true), Struct_2(u_input.a << (16482u % 32u), Struct_1(vec2<f32>(-1067f, 429f), vec2<u32>(4294967295u, 26363u), vec3<bool>(true, true, true)), 8838i), 701f).b * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_1, 951f, -511f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true))))));
    let var_2 = Struct_3(func_1(!vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true), Struct_2(-1i, Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.b.x, var_1.b.x))), firstTrailingBit(vec2<u32>(4224u, var_1.a)), vec3<bool>(true, true, true)), abs(12230i << (1u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) - func_1(vec3<bool>(true, true, true), Struct_2(u_input.a, Struct_1(var_1.b.wy, vec2<u32>(17353u, 1u), vec3<bool>(true, false, false)), u_input.b.x), 665f).b.x)).a, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-948f, -1512f) - arg_0.yy))), ~(countOneBits(vec2<u32>(var_1.a, var_1.a)) ^ _wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(var_1.a, var_1.a))), select(vec3<bool>(true, true, true), vec3<bool>(false, all(vec4<bool>(true, false, true, true)), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))));
    global0 = array<f32, 9>();
    return vec2<i32>(u_input.a, _wgslsmith_mult_i32(1i, 2147483647i));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> bool {
    global1 = array<vec4<u32>, 31>();
    var var_0 = global3[_wgslsmith_index_u32(~87885u, 10u)];
    let var_1 = select(6815u, 0u, arg_3.c.x);
    global2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(131f, _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) + -1136f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~arg_3.b.x, 9u)] * -641f)), -1454f), arg_1 || any(select(select(vec4<bool>(var_0.b.c.x, true, arg_3.c.x, false), vec4<bool>(var_0.b.c.x, var_0.b.c.x, arg_3.c.x, arg_1), vec4<bool>(arg_3.c.x, arg_1, false, true)), vec4<bool>(arg_3.c.x, true, false, arg_3.c.x), any(vec3<bool>(var_0.b.c.x, var_0.b.c.x, false))))));
    let var_2 = var_0.b.a;
    return var_0.b.c.x;
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(arg_1.b.zw, _wgslsmith_f_op_vec2_f32(-arg_1.b.yx)));
    var var_1 = func_4(func_3(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, 229f, true))))) < var_0.x, _wgslsmith_div_i32(-2147483647i >> (func_1(vec3<bool>(true, arg_3, false), Struct_2(-1i, Struct_1(vec2<f32>(arg_1.b.x, var_0.x), arg_2, vec3<bool>(false, false, true)), arg_0), _wgslsmith_f_op_f32(-977f * global2.x)).a % 32u), _wgslsmith_clamp_i32(~(u_input.b.x << (arg_2.x % 32u)), u_input.a, 0i)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(25770u, 9u)], 1652f, false)), _wgslsmith_div_f32(-685f, global0[_wgslsmith_index_u32(4294967295u, 9u)])) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-292f, global0[_wgslsmith_index_u32(4294967295u, 9u)]))))), arg_2, select(vec3<bool>(!arg_3, true, true), !select(vec3<bool>(true, arg_3, arg_3), vec3<bool>(arg_3, true, false), vec3<bool>(arg_3, false, false)), !select(vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(true, arg_3, arg_3), arg_3))));
    global3 = array<Struct_3, 10>();
    let var_2 = min(~_wgslsmith_sub_u32(arg_2.x, 18857u), ~59413u);
    global3 = array<Struct_3, 10>();
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(353f + 673f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(sign(-2098f))), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 9u)])) * -389f)) + _wgslsmith_f_op_vec4_f32(func_2(u_input.c, func_1(vec3<bool>(true, true, true), Struct_2(u_input.b.x, Struct_1(vec2<f32>(1039f, -1000f), vec2<u32>(31030u, 46573u), vec3<bool>(true, true, true)), u_input.a), _wgslsmith_div_f32(-358f, -2320f)), _wgslsmith_mult_vec2_u32(vec2<u32>(961u, 14560u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 72616u))), true)))));
    let var_1 = func_1(!(!vec3<bool>(false, true, select(false, false, true))), Struct_2(~(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -1i, -3535i), vec3<i32>(u_input.c, u_input.c, u_input.c)) << (1u % 32u)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.zz, var_0.xw) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.x, var_0.x)))), ~vec2<u32>(21924u, 4294967295u), vec3<bool>(true, true, true)), _wgslsmith_mult_i32(max(u_input.b.x, -1i), u_input.c)), var_0.x);
    var var_2 = Struct_2(-2147483647i, Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1430f), var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -719f))), ~(vec2<u32>(4294967295u, var_1.a) ^ vec2<u32>(var_1.a, 59843u)), vec3<bool>(true, var_1.a >= func_1(vec3<bool>(true, true, true), Struct_2(u_input.c, Struct_1(vec2<f32>(global2.x, var_1.b.x), vec2<u32>(var_1.a, var_1.a), vec3<bool>(false, false, true)), 39516i), 347f).a, true)), u_input.a);
    var var_3 = -14361i;
    var_2 = Struct_2(-1767i, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_2(0i, Struct_4(var_1.a, vec4<f32>(var_2.b.a.x, -1000f, 1032f, global0[_wgslsmith_index_u32(var_1.a, 9u)])), var_2.b.b, var_2.b.c.x)).zz + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.zw)))), firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(var_2.b.b.x, var_2.b.b.x), var_2.b.b.x)), !vec3<bool>(func_4(vec2<i32>(var_2.c, 2198i), var_2.b.c.x, -29843i, var_2.b), false, true)), u_input.b.x);
    let var_4 = !vec4<bool>(~var_2.b.b.x > 0u, true, _wgslsmith_f_op_f32(f32(-1f) * -837f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1472f) * global2.x), all(vec4<bool>(true, false, true, any(vec2<bool>(false, false)))));
    var var_5 = any(var_2.b.c.zz) && var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(var_2.b.a.x, _wgslsmith_f_op_f32(-var_1.b.x))));
}

