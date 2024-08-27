struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<Struct_1, 32>;

var<private> global2: i32;

var<private> global3: vec4<bool>;

var<private> global4: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3.c;
    let var_1 = true;
    var_0 = _wgslsmith_f_op_f32(abs(arg_3.c));
    let var_2 = !(!select(!global3.xw, global3.xy, vec2<bool>(true, true)));
    var var_3 = u_input.a;
    return -23145i;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_5, arg_3: u32) -> u32 {
    global3 = select(vec4<bool>(any(vec4<bool>(any(global3.xw), any(global3.zwz), any(vec4<bool>(global0.x, global3.x, false, arg_2.b.x)), false)), true, global0.x, true | (reverseBits(u_input.c.x) == _wgslsmith_mod_i32(u_input.c.x, u_input.d.x))), select(select(select(select(vec4<bool>(global3.x, false, true, true), vec4<bool>(true, false, true, arg_1.b.a), true), !vec4<bool>(arg_2.c, false, false, global0.x), arg_1.b.a), !vec4<bool>(true, arg_2.c, true, arg_2.b.x), select(vec4<bool>(arg_2.b.x, global3.x, global3.x, arg_1.b.a), vec4<bool>(true, true, true, true), select(global0.x, true, arg_1.b.a))), vec4<bool>(global0.x, !all(vec4<bool>(global3.x, global0.x, true, false)), false, false), !vec4<bool>(!global0.x, true, true, global0.x)), true);
    global4 = array<Struct_1, 16>();
    var var_0 = ~u_input.d.x;
    global4 = array<Struct_1, 16>();
    let var_1 = max(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -arg_2.a, i32(-1i) * -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(max(-1i, 35647i), ~arg_2.a, _wgslsmith_add_i32(arg_2.a, 2147483647i)), vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, arg_2.a), max(u_input.d.x, arg_2.a), arg_2.a))), vec3<i32>(-((-61561i ^ arg_2.a) | countOneBits(-1i)), u_input.c.x | ~1i, 1i));
    return arg_3;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_5 {
    global2 = 1i >> (u_input.a % 32u);
    global1 = array<Struct_1, 32>();
    global3 = vec4<bool>(arg_1, !all(!(!vec4<bool>(global3.x, false, true, arg_1))), 2300f == _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))))), all(global3.yx));
    var var_0 = vec4<u32>(~(~1u), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(firstLeadingBit(u_input.a), 0u), abs(32804u)), func_4(u_input.b, Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(arg_0, arg_0)))), arg_2, arg_0.x, countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(4294967295u, 89786u, u_input.a)))), Struct_5(-func_3(Struct_4(Struct_1(global3.x), vec3<i32>(u_input.d.x, u_input.d.x, -2147483647i), arg_1), vec3<bool>(arg_2.a, arg_2.a, global0.x), vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.d.x), Struct_2(arg_0, Struct_1(true), 699f, vec3<u32>(772u, u_input.a, u_input.a))), global3.wy, global0.x), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 0u), vec4<u32>(26061u, 1u, u_input.b, 0u), vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b)), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(20512u, u_input.a, u_input.b, 31493u), vec4<u32>(83844u, u_input.a, 0u, 0u)), vec4<u32>(u_input.a, 4294967295u, 31627u, 4294967295u) | vec4<u32>(1u, 35988u, u_input.a, 0u)))), firstTrailingBit(~(1u >> (u_input.b % 32u))));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    return Struct_5(u_input.d.x, select(global3.xx, select(!global3.ww, global3.zx, global0.x), arg_1), true);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_5) -> i32 {
    var var_0 = _wgslsmith_add_vec3_u32(abs(~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.b, u_input.a), vec3<u32>(40339u, 4294967295u, 4294967295u)))), firstTrailingBit(vec3<u32>(u_input.b, _wgslsmith_div_u32(12051u, u_input.a), 51825u)));
    global1 = array<Struct_1, 32>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-590f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1580f - 1058f) * _wgslsmith_f_op_f32(ceil(1382f))))));
    var var_2 = global3.x;
    global0 = select(select(vec2<bool>(false, true), select(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -989f, -1755f)), true, Struct_1(true)).b, func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-353f, 700f, var_1.x, 535f), vec4<f32>(var_1.x, 428f, var_1.x, var_1.x), vec4<bool>(true, true, true, false))), select(true, global3.x, global3.x), global4[_wgslsmith_index_u32(u_input.b, 16u)]).b, true), all(select(global3.xzw, global3.xzz, select(vec3<bool>(global3.x, false, arg_1.c), global3.wzz, vec3<bool>(true, global3.x, true))))), select(vec2<bool>((global0.x & global3.x) | global3.x, !(!global0.x)), !(!vec2<bool>(global3.x, arg_1.b.x)), all(!vec2<bool>(global3.x, global3.x))), vec2<bool>(true && !all(vec2<bool>(false, true)), false));
    return ~2147483647i;
}

fn func_1() -> i32 {
    global4 = array<Struct_1, 16>();
    let var_0 = !vec4<bool>(select(!(!global3.x), all(global3.zy), !(!global3.x)), true, !global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(316f, 1000f))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -346f))));
    global2 = 72467i;
    let var_1 = -1038f;
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(u_input.b, 32u)], vec3<i32>(1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-23287i, u_input.d.x, u_input.d.x, -1i) | vec4<i32>(u_input.d.x, 66868i, 9307i, 2147483647i), firstTrailingBit(vec4<i32>(-1i, -2147483647i, -3190i, 2147483647i))), func_5(firstTrailingBit(u_input.c) & (u_input.d.xxz & vec3<i32>(u_input.d.x, u_input.d.x, 58950i)), func_2(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, var_1, var_1, var_1), vec4<f32>(1200f, var_1, 1000f, -813f)), u_input.d.x >= -3798i, Struct_1(false)))), select(true, (33404i < max(u_input.d.x, 2147483647i)) || any(vec2<bool>(false, global3.x)), global0.x));
    return func_5(-u_input.d.wxz, Struct_5(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.c, u_input.d.xyy), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 1i), ~var_2.b.yz)), var_0.yx, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -192f);
    var var_1 = Struct_3(func_1(), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(49686u, u_input.a ^ func_4(u_input.a, Struct_2(vec4<f32>(-1852f, -404f, -107f, -1000f), Struct_1(false), -941f, vec3<u32>(u_input.a, 34111u, 57064u)), Struct_5(2147483647i, vec2<bool>(false, global3.x), global0.x), 1u)), 32u)]);
    global2 = ~(-u_input.c.x);
    let var_2 = var_1.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1309f, -551f, 1093f), vec3<f32>(1496f, 358f, 1672f), vec3<bool>(var_1.b.a, global0.x, var_1.b.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-386f, 1596f, 1448f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1251f, 222f, 518f))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2545f) * -403f), _wgslsmith_f_op_f32(trunc(521f)), -535f)));
    global2 = _wgslsmith_clamp_i32(u_input.d.x, i32(-1i) * -1i, -51884i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(max(var_3.x, var_3.x)), var_3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.x)) - _wgslsmith_f_op_f32(var_3.x - var_3.x)), 822f, global3.x))), select(_wgslsmith_sub_vec2_i32(u_input.d.wz, abs(vec2<i32>(57395i, 1i) & u_input.c.zy)), vec2<i32>(-select(-1i, 18618i, false), _wgslsmith_sub_i32(u_input.c.x, u_input.d.x) | -7432i), global3.yz), u_input.d.zww, 278f);
}

