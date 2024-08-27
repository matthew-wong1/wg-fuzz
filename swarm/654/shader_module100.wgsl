struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

var<private> global2: u32;

var<private> global3: array<vec4<f32>, 27>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = 4294967295u;
    let var_1 = -_wgslsmith_mod_i32(-1i, u_input.e);
    let var_2 = Struct_3(!any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec4<bool>(true, false, true, true)))), vec2<u32>(_wgslsmith_mult_u32(min(var_0, ~var_0), 1u), select(var_0, 1u, any(vec4<bool>(false, false, false, false))) & ~1u), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2073f, 1360f, -763f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(776f, -894f, 481f)))), firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 21316u, u_input.a), 37104u)), u_input.b.yx, Struct_1(vec3<i32>(-38204i, var_1, u_input.e) ^ ~vec3<i32>(u_input.e, u_input.e, 36328i))));
    let var_3 = var_2.c;
    var var_4 = !(!vec3<bool>(all(select(vec3<bool>(var_2.a, false, var_2.a), vec3<bool>(var_2.a, var_2.a, var_2.a), vec3<bool>(var_2.a, var_2.a, var_2.a))), !(var_2.a || var_2.a), (var_2.c.d.a.x >= var_1) && true));
    return any(select(select(!select(vec4<bool>(var_4.x, true, true, var_4.x), vec4<bool>(true, false, var_4.x, var_4.x), false), !select(vec4<bool>(var_2.a, true, var_2.a, false), vec4<bool>(var_2.a, true, var_4.x, false), vec4<bool>(false, true, var_2.a, false)), !select(var_4.x, var_2.a, true)), !vec4<bool>(var_4.x, false, any(vec4<bool>(var_2.a, var_2.a, false, true)), false), vec4<bool>(var_3.a.x < _wgslsmith_div_f32(var_2.c.a.x, var_3.a.x), all(vec4<bool>(var_2.a, var_4.x, var_2.a, var_2.a)), 1i == var_1, all(select(vec2<bool>(var_4.x, var_4.x), var_4.xz, vec2<bool>(false, var_2.a))))));
}

fn func_2() -> Struct_3 {
    global1 = true;
    var var_0 = Struct_3(func_3(), ~u_input.c.xz, Struct_2(vec3<f32>(_wgslsmith_div_f32(-2007f, _wgslsmith_f_op_f32(-435f + -1139f)), -464f, -1090f), 1u, select(~abs(u_input.c.zx), vec2<u32>(~u_input.d, 97662u), all(vec2<bool>(true, true))), Struct_1(-vec3<i32>(u_input.e, u_input.e, -1i))));
    let var_1 = !var_0.a;
    var var_2 = var_0.c;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(var_2.a + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.c.a.x, var_2.a.x, var_2.a.x)))))), max(0u, ~(~_wgslsmith_dot_vec3_u32(u_input.c.wzy, vec3<u32>(var_2.c.x, u_input.b.x, 19045u)))), var_2.c, var_0.c.d);
    return Struct_3(true, _wgslsmith_add_vec2_u32(~(~vec2<u32>(69864u, var_0.b.x)), var_0.c.c) ^ vec2<u32>(u_input.d, ~select(u_input.a, 1u, var_1)), Struct_2(var_2.a, _wgslsmith_sub_u32(18767u, _wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, 114217u), var_0.c.c), ~vec2<u32>(0u, var_0.c.b))), ~var_2.c, var_2.d));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    let var_0 = reverseBits(~firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 41112u) & abs(vec3<u32>(u_input.a, u_input.b.x, 51990u))));
    global1 = !func_3() && (!arg_3.a || true);
    let var_1 = Struct_1(select(arg_2.c.d.a, vec3<i32>(17761i & (arg_2.c.d.a.x | -27997i), -13279i, arg_3.c.d.a.x), !all(select(vec4<bool>(arg_2.a, arg_3.a, false, true), vec4<bool>(arg_2.a, true, arg_2.a, arg_3.a), arg_0))));
    global2 = 4399u;
    var var_2 = func_2();
    return arg_3;
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = ~u_input.e;
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(arg_0.c.a));
    let var_2 = func_4(false, abs(0u), func_2(), func_2()).c.d;
    var var_3 = -727f;
    global2 = min(4294967295u, ~62622u);
    return Struct_1(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(~var_2.a, -vec3<i32>(var_2.a.x, 2147483647i, arg_0.c.d.a.x)));
}

fn func_1() -> Struct_3 {
    global1 = true;
    let var_0 = u_input.b.wz;
    let var_1 = func_5(func_4(~var_0.x >= var_0.x, 1555u, func_2(), Struct_3(all(vec2<bool>(true, true)), vec2<u32>(var_0.x, u_input.a), func_2().c)));
    let var_2 = func_5(Struct_3((func_4(true, 1u, Struct_3(true, u_input.b.xy, Struct_2(vec3<f32>(746f, 1374f, 1206f), u_input.a, u_input.b.xy, Struct_1(var_1.a))), Struct_3(true, u_input.b.xw, Struct_2(vec3<f32>(-787f, 504f, 282f), var_0.x, u_input.b.zx, Struct_1(vec3<i32>(8162i, -65417i, u_input.e))))).c.d.a.x << ((u_input.d & u_input.b.x) % 32u)) != ~u_input.e, abs(u_input.b.wx), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(748f, 368f, -516f))), _wgslsmith_mod_u32(u_input.c.x << (26757u % 32u), 1u), var_0 | u_input.b.wx, Struct_1(var_1.a))));
    let var_3 = select(u_input.b.xz, var_0, select(vec2<bool>(true, true), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), true), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), false))));
    return Struct_3(true, u_input.c.zx, func_4(false, ~0u >> (var_3.x % 32u), func_4(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false))), var_0.x, Struct_3(true, abs(vec2<u32>(var_3.x, 6425u)), Struct_2(vec3<f32>(-1310f, 676f, -836f), var_3.x, u_input.b.zw, var_1)), Struct_3(true, vec2<u32>(u_input.a, 12950u), Struct_2(vec3<f32>(527f, 947f, 595f), 1u, vec2<u32>(var_0.x, var_3.x), Struct_1(var_2.a)))), Struct_3(!(u_input.a != 28231u), vec2<u32>(var_0.x, var_3.x) >> (select(vec2<u32>(4294967295u, 0u), u_input.c.xw, false) % vec2<u32>(32u)), func_2().c)).c);
}

fn func_6(arg_0: Struct_3, arg_1: vec3<u32>) -> StorageBuffer {
    global2 = _wgslsmith_div_u32(select(arg_1.x ^ arg_1.x, u_input.d & _wgslsmith_clamp_u32(4294967295u, 4294967295u, arg_0.c.c.x), true) >> (u_input.c.x % 32u), ~firstTrailingBit(reverseBits(arg_1.x)));
    global1 = !(~1u >= ~(~_wgslsmith_mod_u32(arg_1.x, 48537u)));
    var var_0 = -vec2<i32>(arg_0.c.d.a.x, countOneBits(_wgslsmith_sub_i32(7434i, 15351i)));
    var var_1 = ~(~(~(_wgslsmith_add_vec4_u32(u_input.b, u_input.b) | countOneBits(u_input.b))));
    let var_2 = func_1().c.d;
    return StorageBuffer(1u, ~vec3<i32>(2147483647i, var_2.a.x, u_input.e), func_1().c.a.xx, _wgslsmith_clamp_u32(reverseBits(func_4(all(vec3<bool>(true, arg_0.a, false)), u_input.d, arg_0, arg_0).b.x), ~u_input.d, 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(412f, arg_0.c.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1483f))), -1423f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_1(), firstLeadingBit(~(~vec3<u32>(54554u, 58763u, 30237u))));
}

