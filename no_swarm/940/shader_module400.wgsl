struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(i32(-2147483648), i32(-2147483648), -8809i, 2147483647i, -39908i, 1i);

var<private> global1: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(1u, 33327u, 71398u, 1u), vec4<u32>(1u, 112431u, 0u, 0u), vec4<u32>(3076u, 0u, 65186u, 25201u), vec4<u32>(9256u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 0u, 77430u, 6193u), vec4<u32>(28704u, 58750u, 4294967295u, 23831u), vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(20867u, 53248u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, 59850u, 46281u), vec4<u32>(4294967295u, 81089u, 46467u, 16824u), vec4<u32>(27588u, 17197u, 4294967295u, 1u), vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(94069u, 16049u, 1u, 1u), vec4<u32>(11140u, 0u, 4294967295u, 84150u), vec4<u32>(27652u, 29392u, 55747u, 0u), vec4<u32>(2210u, 37081u, 34709u, 1u), vec4<u32>(0u, 28390u, 86157u, 1u), vec4<u32>(15311u, 40570u, 4613u, 0u), vec4<u32>(0u, 24036u, 62668u, 0u), vec4<u32>(1u, 4294967295u, 21296u, 38211u), vec4<u32>(0u, 58792u, 4294967295u, 64745u), vec4<u32>(0u, 66413u, 1544u, 34378u), vec4<u32>(20410u, 0u, 69671u, 54459u), vec4<u32>(10989u, 0u, 22585u, 59840u), vec4<u32>(4294967295u, 38545u, 34094u, 16754u));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<i32, 32>;

var<private> global4: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: f32, arg_3: f32) -> f32 {
    global3 = array<i32, 32>();
    global2 = select(!vec2<bool>(false, !all(vec2<bool>(false, true))), vec2<bool>(_wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(abs(arg_3))) > -1704f, any(vec4<bool>(u_input.c.x < 32570u, global0[_wgslsmith_index_u32(54389u, 6u)] >= -2147483647i, true, global2.x & global2.x))), false);
    let var_0 = Struct_3(Struct_1(!(!(!vec4<bool>(global2.x, global2.x, global2.x, global2.x))), false, !select(select(vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(global2.x, global2.x, global2.x, false)), !vec4<bool>(false, false, global2.x, true), !vec4<bool>(true, global2.x, global2.x, false))), !select(select(vec2<bool>(global2.x, global2.x), !vec2<bool>(false, global2.x), -26575i < global3[_wgslsmith_index_u32(u_input.c.x, 32u)]), !(!vec2<bool>(global2.x, global2.x)), vec2<bool>(all(vec2<bool>(false, global2.x)), true)), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1188f), arg_0, -639f, -1091f)), Struct_1(!select(vec4<bool>(true, false, global2.x, global2.x), vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(true, global2.x, global2.x, global2.x)), global2.x, vec4<bool>(!global2.x, global2.x, global2.x, -16556i < global3[_wgslsmith_index_u32(arg_1.x, 32u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_2, 501f))))))), any(!vec3<bool>(true | global2.x, select(false, global2.x, false), global2.x)), arg_0);
    var var_1 = ~_wgslsmith_mult_u32(arg_1.x, _wgslsmith_add_u32(~min(40015u, arg_1.x), _wgslsmith_mod_u32(arg_1.x, u_input.c.x) << (_wgslsmith_clamp_u32(u_input.c.x, 0u, u_input.c.x) % 32u)));
    var var_2 = false;
    return 1000f;
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -555f)), global4.x, _wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1.b, vec3<u32>(39118u, 4294967295u, u_input.a), arg_2.x, global4.x)))))), global4.ywy, arg_1.c.b.c.x));
    var var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_div_f32(-882f, _wgslsmith_f_op_f32(arg_2.x * -377f)), _wgslsmith_f_op_f32(169f + -2411f)), _wgslsmith_f_op_f32(abs(global4.x)), arg_1.c);
    let var_2 = var_1.c.a.xxz;
    var var_3 = ~(min(u_input.b | vec2<u32>(u_input.b.x, 0u), vec2<u32>(u_input.b.x, 29204u)) << (u_input.b % vec2<u32>(32u)));
    var var_4 = global4.x;
    return arg_1;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> Struct_4 {
    var var_0 = !vec3<bool>(all(vec3<bool>(any(arg_0.b.a), true, !global2.x)), (!global2.x == any(vec2<bool>(arg_0.b.a.x, false))) | (global4.x != _wgslsmith_f_op_f32(round(arg_0.c))), arg_0.b.a.x);
    var var_1 = func_2(true, Struct_4(_wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-489f - global4.x) + 1946f)), arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, global4.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(f32(-1f) * -195f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, -1464f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1099f, -534f) + global4.xx)))));
    let var_2 = Struct_3(func_2(var_0.x, func_2(arg_1.c.x, Struct_4(_wgslsmith_f_op_f32(arg_0.c + global4.x), _wgslsmith_f_op_f32(-arg_0.c), arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.ww))), vec2<f32>(global4.x, _wgslsmith_f_op_f32(-var_1.b))).c.b, select(vec2<bool>(!global2.x, false), vec2<bool>(true, var_1.c.b.b), ((-3760i != global0[_wgslsmith_index_u32(u_input.b.x, 6u)]) || select(true, arg_0.b.b, global2.x)) & any(vec4<bool>(true, true, false, false))), func_2(false, Struct_4(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-arg_0.a.x), arg_0), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.c.a.xz))), global4.yw)).c, var_0.x, _wgslsmith_f_op_f32(ceil(-1706f)));
    let var_3 = var_2;
    global0 = array<i32, 6>();
    return func_2(true, func_2(any(var_2.c.b.a.wwz), Struct_4(var_3.c.a.x, arg_0.c, arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.c.a.yy - vec2<f32>(var_2.c.c, global4.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-120f, 1658f) - global4.xy), false)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(var_1.c.a.xx)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.yy + vec2<f32>(1000f, 1156f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_3.c.a.xy)))), var_1.c.a.zx)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = !(!arg_0.c.b.a.zyz);
    let var_1 = Struct_3(func_1(Struct_2(vec4<f32>(_wgslsmith_div_f32(global4.x, -147f), _wgslsmith_f_op_f32(arg_0.c.a.x * 593f), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(1000f + global4.x)), arg_0.c.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.x, 416f) + _wgslsmith_f_op_f32(f32(-1f) * -746f))), arg_0.c.b).c.b, vec2<bool>(arg_0.c.b.c.x, -62291i <= _wgslsmith_clamp_i32(-58560i, global3[_wgslsmith_index_u32(~u_input.c.x, 32u)], 0i)), arg_0.c, true, -1062f);
    let var_2 = _wgslsmith_sub_vec2_i32(~abs(vec2<i32>(-1i) * -vec2<i32>(42184i, global0[_wgslsmith_index_u32(u_input.c.x, 6u)])), min(abs(-vec2<i32>(-1i, 12181i)), select(vec2<i32>(14429i, -313i) ^ vec2<i32>(global3[_wgslsmith_index_u32(1u, 32u)], 9357i), vec2<i32>(global3[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(1u, 6u)]), false)) ^ vec2<i32>(global0[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(0u, 32u)]));
    var var_3 = _wgslsmith_div_vec3_u32(u_input.c.zyw >> (reverseBits(countOneBits(_wgslsmith_div_vec3_u32(u_input.c.zyx, vec3<u32>(22953u, 17323u, 15289u)))) % vec3<u32>(32u)), select(u_input.c.ywy, _wgslsmith_add_vec3_u32(u_input.c.wwx & (u_input.c.wzz ^ vec3<u32>(u_input.c.x, 1u, 62125u)), vec3<u32>(firstLeadingBit(4294967295u), u_input.c.x, 4294967295u)), var_1.a.a.zwz));
    var var_4 = func_1(var_1.c, func_2(!all(!arg_2.zy), func_2(!select(false, var_1.a.b, var_0.x), arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(625f, -2264f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 242f))))).c.b);
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(abs(1i), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.a << (((62050u >> (0u % 32u)) & ~u_input.c.x) % 32u), 32u)], -2147483647i));
    var var_1 = -global3[_wgslsmith_index_u32(~u_input.c.x | max(abs(39143u), 4294967295u), 32u)];
    var var_2 = global3[_wgslsmith_index_u32(~abs(~u_input.a), 32u)];
    var var_3 = Struct_4(1263f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(-global4.x), true)))), func_4(func_1(Struct_2(vec4<f32>(1804f, -586f, global4.x, -103f), Struct_1(vec4<bool>(false, global2.x, global2.x, global2.x), global2.x, vec4<bool>(true, global2.x, global2.x, true)), _wgslsmith_f_op_f32(1181f + -614f)), Struct_1(vec4<bool>(true, global2.x, true, false), global2.x, !vec4<bool>(true, false, global2.x, true))), _wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(select(-1398f, _wgslsmith_f_op_f32(round(global4.x)), true))), vec3<bool>(true, true, true)));
    var var_4 = func_2(true, func_2(all(var_3.c.b.a.wx), func_2(all(func_2(true, Struct_4(global4.x, global4.x, Struct_2(vec4<f32>(-1367f, 257f, global4.x, var_3.c.c), var_3.c.b, var_3.a)), global4.yw).c.b.c.yy), func_1(var_3.c, Struct_1(var_3.c.b.a, true, vec4<bool>(true, false, global2.x, true))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1957f, -774f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.b, -546f))), _wgslsmith_div_vec2_f32(var_3.c.a.wz, global4.yy))))), _wgslsmith_f_op_vec2_f32(select(var_3.c.a.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, global4.x) + global4.yw) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, -1027f) * vec2<f32>(global4.x, 369f)))), var_3.c.b.a.wx))).c.a.yxx;
    var var_5 = var_3.c.a.yzz;
    let var_6 = ~u_input.c.xww << ((vec3<u32>(countOneBits(25699u), _wgslsmith_div_u32(u_input.b.x, 51741u), _wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(u_input.a, 15430u))) ^ u_input.c.wwz) % vec3<u32>(32u));
    var_3 = func_1(func_1(Struct_2(_wgslsmith_div_vec4_f32(func_4(Struct_4(-1000f, 1169f, var_3.c), 516f, vec3<bool>(var_3.c.b.a.x, var_3.c.b.a.x, global2.x)).a, _wgslsmith_f_op_vec4_f32(-var_3.c.a)), Struct_1(var_3.c.b.a, any(var_3.c.b.c.xxz), !var_3.c.b.c), _wgslsmith_f_op_f32(-var_4.x)), var_3.c.b).c, func_1(func_2(true, Struct_4(_wgslsmith_f_op_f32(var_3.a * var_3.c.c), _wgslsmith_f_op_f32(exp2(global4.x)), Struct_2(var_3.c.a, Struct_1(vec4<bool>(false, global2.x, global2.x, global2.x), true, vec4<bool>(true, global2.x, true, var_3.c.b.b)), var_5.x)), vec2<f32>(func_4(Struct_4(-381f, -183f, var_3.c), -1000f, vec3<bool>(true, true, true)).a.x, _wgslsmith_f_op_f32(-var_5.x))).c, func_1(var_3.c, func_4(func_2(global2.x, Struct_4(-1000f, var_5.x, var_3.c), vec2<f32>(820f, var_4.x)), _wgslsmith_f_op_f32(668f - var_3.b), var_3.c.b.a.ywx).b).c.b).c.b);
    let var_7 = Struct_3(var_3.c.b, vec2<bool>(func_2(any(var_3.c.b.c) && any(var_3.c.b.a.zy), func_2(any(vec4<bool>(false, false, global2.x, var_3.c.b.a.x)), Struct_4(global4.x, var_5.x, Struct_2(var_3.c.a, Struct_1(vec4<bool>(global2.x, false, global2.x, var_3.c.b.a.x), global2.x, vec4<bool>(true, var_3.c.b.b, false, global2.x)), -815f)), var_4.zz), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(global4.x, -1132f), var_5.xy), _wgslsmith_f_op_vec2_f32(trunc(global4.wx))))).c.b.a.x, (25207u >> (u_input.a % 32u)) >= (~u_input.a ^ ~var_6.x)), var_3.c, true, -565f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec4_u32(~u_input.c, min(~vec4<u32>(u_input.a, var_6.x, 72135u, var_6.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_6.x, u_input.a, 4294967295u, var_6.x), global1[_wgslsmith_index_u32(14134u, 26u)]))), firstLeadingBit(u_input.a)), ~vec4<i32>(abs(-23992i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, global3[_wgslsmith_index_u32(27492u, 32u)]), _wgslsmith_div_i32(-30093i, 50993i)), global0[_wgslsmith_index_u32(~u_input.b.x, 6u)], ~(-1i) | _wgslsmith_add_i32(var_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 6u)])));
}

