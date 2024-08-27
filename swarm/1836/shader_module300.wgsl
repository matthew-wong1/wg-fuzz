struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_4,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(0u, 63049u, 9990u, 66537u, 38251u, 44306u, 70406u, 1u, 4294967295u, 1u, 110614u, 4294967295u, 81408u);

var<private> global1: array<f32, 30>;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<Struct_1, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec2<i32>) -> bool {
    let var_0 = arg_0.d;
    let var_1 = arg_0.c.c;
    let var_2 = arg_0.c.d;
    global1 = array<f32, 30>();
    let var_3 = arg_0.d;
    return arg_0.c.c.a;
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.b), 30u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 13u)], 30u)]) + _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 30u)]))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 30u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(87572u, 30u)], 703f)))));
    global1 = array<f32, 30>();
    var var_1 = ~_wgslsmith_clamp_vec3_i32(~reverseBits(u_input.a), vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), ~(-27858i)) >> ((~vec3<u32>(55151u, u_input.b, u_input.b) >> (countOneBits(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.b, 13u)], u_input.b)) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.a);
    var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.a.xz), -17255i | u_input.a.x), 20279i & u_input.a.x, -3722i), u_input.a);
    var var_2 = Struct_4(!(!select(any(vec3<bool>(true, true, true)), true, func_3(Struct_5(Struct_1(47170u, true, vec4<bool>(true, false, false, false), vec3<u32>(83002u, global0[_wgslsmith_index_u32(77526u, 13u)], u_input.b), true), vec4<f32>(319f, var_0, 230f, var_0), Struct_4(false, Struct_1(1u, false, vec4<bool>(false, false, false, true), vec3<u32>(1u, 1u, u_input.b), false), Struct_3(false), -909f), vec4<u32>(u_input.b, 72429u, 4294967295u, u_input.b)), Struct_2(7449i, false, 2147483647i, true), vec2<i32>(-15592i, var_1.x)))), Struct_1(global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 124610u, u_input.b), vec3<u32>(global0[_wgslsmith_index_u32(1u, 13u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 13u)], 13u)]))), 13u)], 1u > _wgslsmith_dot_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], u_input.b), ~vec2<u32>(u_input.b, 0u)), select(vec4<bool>(true, true, any(vec2<bool>(true, false)), all(vec4<bool>(true, false, false, false))), vec4<bool>(func_3(Struct_5(global3[_wgslsmith_index_u32(9999u, 20u)], vec4<f32>(var_0, global1[_wgslsmith_index_u32(u_input.b, 30u)], var_0, global1[_wgslsmith_index_u32(49494u, 30u)]), Struct_4(false, Struct_1(global0[_wgslsmith_index_u32(6942u, 13u)], true, vec4<bool>(true, true, false, true), vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]), false), Struct_3(true), -1418f), vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u)), Struct_2(var_1.x, true, -2147483647i, true), u_input.a.zy), true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)), ~vec3<u32>(1u, select(global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(60880u, 13u)], true), ~u_input.b), !((var_1.x << (u_input.b % 32u)) >= (i32(-1i) * -2147483647i))), Struct_3(true), _wgslsmith_f_op_f32(ceil(-726f)));
    return Struct_5(var_2.b, vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -627f), -246f))), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(~var_2.b.a << (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 13u)], var_2.b.a) % 32u), 30u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1390f, var_0))))), Struct_4(var_2.a, global3[_wgslsmith_index_u32(select(~reverseBits(10196u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, 38379u, 0u)), all(var_2.b.c.zw)), 20u)], Struct_3(!var_2.b.e & true), var_2.d), min(abs(_wgslsmith_add_vec4_u32(~vec4<u32>(10522u, global0[_wgslsmith_index_u32(16982u, 13u)], u_input.b, 55785u), firstTrailingBit(vec4<u32>(35863u, 13636u, var_2.b.d.x, u_input.b)))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(var_2.b.d.x, 13u)], 6835u, 4294967295u, 0u), vec4<u32>(4294967295u, var_2.b.a, 4294967295u, 28674u)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec3<bool>, arg_3: Struct_5) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -711f);
    global2 = ~(~arg_0.b.d.x);
    let var_1 = firstLeadingBit(~(0u >> ((_wgslsmith_dot_vec2_u32(arg_1.d.ww, arg_3.d.zw) >> (~global0[_wgslsmith_index_u32(78795u, 13u)] % 32u)) % 32u)));
    var_0 = -2146f;
    let var_2 = !(!(!vec2<bool>(true, any(vec3<bool>(arg_3.c.a, false, false)))));
    return Struct_1(~4294967295u, -15129i >= u_input.a.x, vec4<bool>(!func_3(arg_3, Struct_2(1576i, arg_3.a.b, u_input.a.x, true), u_input.a.yy), all(!(!vec3<bool>(false, arg_2.x, var_2.x))), arg_1.a.e, any(!func_2().c.b.c.zy)), arg_3.d.zxw, var_2.x);
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = func_4(Struct_4(!all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 13u)], u_input.b, 1u, 57036u), ~vec4<u32>(1u, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], 16990u)), u_input.b), 20u)], Struct_3(true), -1515f), func_2(), vec3<bool>(!func_3(func_2(), Struct_2(-10754i, true, -335i, true), u_input.a.zy), true, true), func_2());
    return Struct_2(~u_input.a.x, var_0.b, -1i, !(var_0.d.x < (~global0[_wgslsmith_index_u32(var_0.a, 13u)] | var_0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a.x;
    var var_1 = func_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, firstLeadingBit(abs(u_input.b))), 30u)]));
    var var_2 = Struct_5(Struct_1(~global0[_wgslsmith_index_u32(1u, 13u)], select(true, var_1.b, !var_1.b), vec4<bool>(func_4(func_2().c, Struct_5(Struct_1(4294967295u, true, vec4<bool>(true, var_1.d, false, var_1.d), vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 13u)], u_input.b, global0[_wgslsmith_index_u32(73521u, 13u)]), true), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43402u, 13u)], 30u)], 205f), Struct_4(var_1.b, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59613u, 13u)], 20u)], Struct_3(var_1.d), -1068f), vec4<u32>(27720u, global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)], u_input.b)), !vec3<bool>(var_1.d, true, var_1.d), Struct_5(Struct_1(4294967295u, true, vec4<bool>(false, var_1.b, var_1.d, var_1.d), vec3<u32>(global0[_wgslsmith_index_u32(29424u, 13u)], 0u, u_input.b), var_1.d), vec4<f32>(1019f, 902f, 352f, 1000f), Struct_4(false, Struct_1(0u, false, vec4<bool>(true, var_1.d, false, var_1.b), vec3<u32>(43868u, global0[_wgslsmith_index_u32(u_input.b, 13u)], u_input.b), false), Struct_3(var_1.d), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74103u, 13u)], 30u)]), vec4<u32>(u_input.b, 89256u, u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13288u, 13u)], 13u)], 13u)], 13u)], 13u)]))).c.x, false, !var_1.b, false), select(abs(vec3<u32>(1u, 4294967295u, 82596u)), vec3<u32>(~global0[_wgslsmith_index_u32(0u, 13u)], ~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 0u))), any(vec2<bool>(true, true))), var_1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-373f, 456f, global1[_wgslsmith_index_u32(u_input.b, 30u)], 242f) - vec4<f32>(global1[_wgslsmith_index_u32(27728u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)], 356f, 424f)))))), func_2().c, _wgslsmith_div_vec4_u32(~(~vec4<u32>(74622u, global0[_wgslsmith_index_u32(19966u, 13u)], 6714u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 13u)], 13u)])), ~vec4<u32>(67867u, 27127u, global0[_wgslsmith_index_u32(5605u, 13u)], 59376u)) >> ((_wgslsmith_mod_vec4_u32(~vec4<u32>(9273u, 30864u, 4294967295u, global0[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_div_vec4_u32(vec4<u32>(35949u, 92733u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(89754u, 13u)], 13u)], 884u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 13u)], 2208u, u_input.b, u_input.b))) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, global0[_wgslsmith_index_u32(u_input.b, 13u)]), vec4<u32>(u_input.b, u_input.b, 15382u, 4294967295u))) % vec4<u32>(32u)));
    var var_3 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53119u, 13u)], 30u)] * global1[_wgslsmith_index_u32(62877u, 30u)]), _wgslsmith_f_op_f32(f32(-1f) * -676f)))) * _wgslsmith_f_op_f32(847f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.b.x)) * var_2.b.x))));
    var_2 = Struct_5(global3[_wgslsmith_index_u32(1590u << (~var_2.c.b.a % 32u), 20u)], var_2.b, Struct_4(true != (var_3.a <= abs(var_3.a)), func_2().a, Struct_3(var_1.d), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(func_4(var_2.c, Struct_5(Struct_1(u_input.b, true, vec4<bool>(true, true, var_2.a.c.x, true), var_2.a.d, var_1.b), vec4<f32>(-1000f, 1387f, var_2.b.x, 1787f), Struct_4(true, Struct_1(global0[_wgslsmith_index_u32(var_2.a.a, 13u)], var_3.b, var_2.a.c, var_2.d.xwz, true), var_2.c.c, -825f), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 13u)], 21555u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 13u)], 13u)], 1u)), vec3<bool>(var_2.c.c.a, var_3.d, false), Struct_5(Struct_1(u_input.b, true, vec4<bool>(false, false, var_2.a.b, var_3.b), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], global0[_wgslsmith_index_u32(1u, 13u)], 20226u), true), vec4<f32>(290f, 1886f, -1337f, -1000f), var_2.c, var_2.d)).d.x, ~56794u), 30u)]), vec4<u32>(u_input.b, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, ~4294967295u, abs(1u), _wgslsmith_dot_vec2_u32(var_2.d.xw, vec2<u32>(0u, 1u))), (vec4<u32>(12632u, global0[_wgslsmith_index_u32(var_2.a.d.x, 13u)], u_input.b, 74054u) ^ var_2.d) ^ vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(var_2.d.x, 13u)], 15528u, var_2.a.a)), 28595u));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 30u)])) - _wgslsmith_f_op_f32(round(-1189f))));
    let var_5 = vec3<bool>(any(!var_2.a.c.zx), true, var_2.a.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

