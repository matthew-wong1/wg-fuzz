struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_3,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1>;

var<private> global1: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(46351u, 1792u, 12179u, 1u), vec4<u32>(1u, 14118u, 4294967295u, 48276u), vec4<u32>(0u, 31304u, 2056u, 19249u), vec4<u32>(73010u, 1u, 1u, 4294967295u), vec4<u32>(8230u, 76941u, 28113u, 1u), vec4<u32>(4294967295u, 19450u, 1u, 4294967295u), vec4<u32>(1u, 99913u, 0u, 9097u), vec4<u32>(5966u, 33934u, 1150u, 4294967295u), vec4<u32>(4294967295u, 34761u, 4294967295u, 13215u), vec4<u32>(78963u, 0u, 0u, 0u), vec4<u32>(8061u, 17556u, 1u, 4294967295u), vec4<u32>(48732u, 36170u, 43404u, 51213u), vec4<u32>(4294967295u, 0u, 1u, 920u), vec4<u32>(25675u, 109066u, 34629u, 16667u), vec4<u32>(1395u, 3738u, 1u, 4294967295u), vec4<u32>(87573u, 583u, 1u, 0u), vec4<u32>(13362u, 6936u, 4294967295u, 17508u), vec4<u32>(44776u, 0u, 1u, 63792u));

var<private> global2: Struct_3;

var<private> global3: array<vec3<f32>, 23>;

var<private> global4: array<Struct_3, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(arg_0 + -1344f);
    var var_1 = 0u;
    global3 = array<vec3<f32>, 23>();
    let var_2 = arg_1.b.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.d.c));
    return arg_2;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<bool>) -> vec4<bool> {
    var var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global2.a.b.x, ~(~global2.a.b.x), reverseBits(~arg_1.x)), 5u)];
    var var_1 = Struct_3(var_0.a, abs(u_input.a), vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2089f) * -1722f) - var_0.c.x), var_0.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))))));
    var_1 = global4[_wgslsmith_index_u32(34225u, 5u)];
    var_1 = global4[_wgslsmith_index_u32(arg_1.x, 5u)];
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f) + 1847f)), 488f));
    return !(!select(vec4<bool>(true, !arg_2, arg_2, arg_2), vec4<bool>(!arg_3.x, !var_0.a.a, true, true), false));
}

fn func_1(arg_0: bool, arg_1: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_div_i32(u_input.a, ~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, -19510i)) >> (vec2<u32>(global2.a.b.x, 4294967295u) % vec2<u32>(32u)), select(reverseBits(vec2<i32>(16159i, -1052i)), vec2<i32>(0i, global2.b) >> (u_input.b.wz % vec2<u32>(32u)), arg_1 <= global2.c.x)));
    var var_1 = select(select(vec4<bool>(arg_0, global2.a.a, false | func_2(arg_1, global0[_wgslsmith_index_u32(4294967295u, 1u)], true), _wgslsmith_f_op_f32(sign(arg_1)) < -706f), vec4<bool>(_wgslsmith_add_i32(12867i, global2.b) > _wgslsmith_clamp_i32(2147483647i, global2.b, -45894i), global2.a.a, all(vec4<bool>(false, arg_0, arg_0, false)), false), true), select(func_3(~_wgslsmith_sub_vec2_u32(global2.a.b.xx, u_input.b.wy), global2.a.b, _wgslsmith_add_i32(u_input.a, 17227i) != -global2.b, vec3<bool>(true, global2.a.a, any(vec4<bool>(global2.a.a, global2.a.a, global2.a.a, global2.a.a)))), !(!select(vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(global2.a.a, false, arg_0, false), vec4<bool>(global2.a.a, true, global2.a.a, global2.a.a))), true), !func_2(_wgslsmith_f_op_f32(-arg_1), global0[_wgslsmith_index_u32(u_input.b.x, 1u)], arg_0 && !arg_0));
    let var_2 = Struct_4(_wgslsmith_mod_i32(select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, global2.b, u_input.a), abs(vec4<i32>(u_input.a, u_input.a, 29029i, u_input.a))), -countOneBits(43489i), any(!vec4<bool>(var_1.x, false, true, var_1.x))), _wgslsmith_clamp_i32(global2.b, 3083i >> (firstTrailingBit(u_input.b.x) % 32u), _wgslsmith_add_i32(~global2.b, countOneBits(-1i)))), Struct_3(global2.a, 2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(-global2.c.x), 227f))), global4[_wgslsmith_index_u32(~abs(4294967295u), 5u)], Struct_3(Struct_1(all(vec4<bool>(var_1.x, arg_0, true, false)), ~global1[_wgslsmith_index_u32(18749u, 18u)]), _wgslsmith_clamp_i32(-1i, _wgslsmith_clamp_i32(1i, 2147483647i, global2.b), max(1i, 21581i)) >> (u_input.b.x % 32u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -373f, global2.c.x, -165f) * global2.c))))), global4[_wgslsmith_index_u32(global2.a.b.x, 5u)]);
    let var_3 = var_2.e.b;
    global2 = global4[_wgslsmith_index_u32(var_2.b.a.b.x, 5u)];
    return _wgslsmith_f_op_vec4_f32(global2.c + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -481f, 1503f, -1000f)) * vec4<f32>(_wgslsmith_f_op_f32(max(763f, global2.c.x)), global2.c.x, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(trunc(-158f)))))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_3 {
    var var_0 = u_input.b.x;
    let var_1 = firstTrailingBit(u_input.b.xz << (vec2<u32>(global2.a.b.x, _wgslsmith_dot_vec3_u32(global2.a.b.yxz, vec3<u32>(global2.a.b.x, 0u, 22178u))) % vec2<u32>(32u)));
    let var_2 = any(vec2<bool>(true, all(!(!vec3<bool>(false, global2.a.a, false)))));
    let var_3 = true;
    let var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(global2.c.wx))))));
    return global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(firstTrailingBit(~_wgslsmith_add_u32(var_1.x, 1u)), ~global2.a.b.x, 32557u)), 5u)];
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_4 {
    global0 = array<Struct_4, 1>();
    var var_0 = global0[_wgslsmith_index_u32(arg_0.x, 1u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.c.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.d.c.x * _wgslsmith_f_op_f32(ceil(-1612f))), _wgslsmith_div_f32(1695f, _wgslsmith_f_op_f32(arg_1.c.x - -168f))))) * _wgslsmith_f_op_f32(589f * -1276f));
    global1 = array<vec4<u32>, 18>();
    var var_2 = select(global2.a.b.x, u_input.b.x, (0u > arg_1.a.b.x) | !(true | global2.a.a));
    return Struct_4(arg_1.b, Struct_3(Struct_1(true, vec4<u32>(_wgslsmith_mod_u32(4604u, global2.a.b.x), 11079u, global2.a.b.x, 5659u)), max(~(-1i), 22201i), var_0.b.c), Struct_3(global2.a, 38130i, var_0.b.c), func_4(_wgslsmith_f_op_vec4_f32(round(arg_1.c))), Struct_3(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.x, var_0.b.c.x, arg_1.c.x, global2.c.x), vec4<f32>(var_0.d.c.x, var_0.b.c.x, -506f, global2.c.x)))).a, countOneBits(_wgslsmith_mult_i32(u_input.a, arg_1.b) >> (_wgslsmith_add_u32(arg_1.a.b.x, global2.a.b.x) % 32u)), arg_1.c));
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: Struct_4) -> vec2<i32> {
    var var_0 = arg_2.e.a;
    global3 = array<vec3<f32>, 23>();
    let var_1 = abs(u_input.b.x);
    let var_2 = global0[_wgslsmith_index_u32(~50896u, 1u)];
    global0 = array<Struct_4, 1>();
    return ~(~(~(~vec2<i32>(var_2.c.b, 11400i)) & -abs(vec2<i32>(1i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(global2.a, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-2256i >> (u_input.b.x % 32u), u_input.a >> (u_input.b.x % 32u), -global2.b, ~5195i)), countOneBits(vec4<i32>(global2.b, u_input.a, global2.b, global2.b) << ((u_input.b >> (vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 46276u) % vec4<u32>(32u))) % vec4<u32>(32u)))), vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(-888f + _wgslsmith_f_op_f32(-604f + global2.c.x)), global2.c.x, global2.c.x));
    global0 = array<Struct_4, 1>();
    var var_0 = ~(abs((vec2<i32>(global2.b, global2.b) >> (global2.a.b.wx % vec2<u32>(32u))) & -vec2<i32>(1i, u_input.a)) >> (u_input.b.yw % vec2<u32>(32u)));
    var_0 = ~func_6(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(176f, global2.c.x))), func_5(abs(vec3<u32>(27539u, u_input.b.x, global2.a.b.x)), func_4(_wgslsmith_f_op_vec4_f32(func_1(true, global2.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~global2.a.b.x, countOneBits(global2.b) ^ 0i, global2.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, global2.c.x, 1000f, global2.c.x) - _wgslsmith_f_op_vec4_f32(-global2.c))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1219f, global2.c.x, 412f, global2.c.x), vec4<f32>(-603f, -2286f, global2.c.x, global2.c.x))) - global2.c)));
}

