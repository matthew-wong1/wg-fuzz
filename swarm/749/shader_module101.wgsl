struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
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

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 2>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1232f, global1[_wgslsmith_index_u32(1u, 2u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)])))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(183f, global1[_wgslsmith_index_u32(0u, 2u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(660f, -242f))) - vec2<f32>(-2232f, 1146f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(43847u, 2u)], global1[_wgslsmith_index_u32(u_input.d, 2u)])))))), !global2.zz));
}

fn func_2() -> Struct_4 {
    global1 = array<f32, 2>();
    let var_0 = -vec2<i32>(~reverseBits(u_input.e) >> (~4294967295u % 32u), u_input.e);
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(452f, 279f) - vec2<f32>(2074f, 1249f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.c, 2u)], -237f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(758f, global1[_wgslsmith_index_u32(0u, 2u)]), vec2<f32>(646f, global1[_wgslsmith_index_u32(75332u, 2u)])))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1209f, -909f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(9548u, 2u)]))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()))));
    global1 = array<f32, 2>();
    var var_2 = -abs(~vec4<i32>(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(25647i, 39405i, -2147483647i, u_input.e), vec4<i32>(21564i, 17612i, u_input.a, var_0.x)), _wgslsmith_mult_i32(18363i, 4266i), var_0.x & u_input.e));
    return Struct_4(u_input.c, _wgslsmith_sub_vec3_u32(reverseBits(u_input.b.xxz), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.d, 1u), u_input.b.x), ~4294967295u, ~(~1u))), Struct_3(-_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, -20873i, var_0.x, 2147483647i), vec4<i32>(-2147483647i, var_0.x, -28669i, var_2.x)), vec4<i32>(-10105i, -2147483647i, var_0.x, -2147483647i), -vec4<i32>(1i, var_0.x, -1i, -1i)), !(!vec3<bool>(global0.x, global2.x, false)), Struct_2(Struct_1(global1[_wgslsmith_index_u32(countOneBits(u_input.b.x), 2u)], global2.zzx)), Struct_2(Struct_1(global1[_wgslsmith_index_u32(46218u, 2u)], !global0.xzy))), Struct_2(Struct_1(541f, vec3<bool>(false, !global0.x, true))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool) -> vec4<bool> {
    var var_0 = Struct_4(_wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(~u_input.c, _wgslsmith_add_u32(~u_input.c, abs(80383u)), 83796u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, arg_0.b.x, 1u), u_input.b))), vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), min(~arg_0.b.x, ~u_input.d), arg_0.a), arg_0.c, arg_1);
    let var_1 = func_2().c.d.a;
    var var_2 = _wgslsmith_f_op_f32(trunc(-1554f));
    let var_3 = u_input.b;
    var_0 = func_2();
    return select(vec4<bool>(true, false != all(func_2().d.a.b), var_1.b.x, !(func_2().b.x <= var_0.a)), vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, var_0.c.a.x, arg_0.c.a.x), var_0.c.a.zww) >= 1i, true, true && arg_1.a.b.x, (~arg_0.a ^ 27090u) <= 6737u), vec4<bool>(all(vec4<bool>(var_0.d.a.b.x, 1i <= u_input.e, true, all(vec2<bool>(arg_2, arg_0.d.a.b.x)))), arg_1.a.b.x, arg_2 || all(select(vec4<bool>(false, arg_0.c.b.x, global0.x, true), vec4<bool>(arg_1.a.b.x, arg_2, global0.x, false), vec4<bool>(false, true, global0.x, var_1.b.x))), var_0.c.b.x & (global0.x & (arg_0.c.c.a.b.x && false))));
}

fn func_1() -> Struct_1 {
    var var_0 = ~0u;
    global0 = func_4(func_2(), Struct_2(func_2().c.d.a), !any(select(select(vec4<bool>(global2.x, true, true, false), vec4<bool>(false, true, true, global2.x), vec4<bool>(false, false, false, true)), vec4<bool>(false, false, false, global0.x), vec4<bool>(global2.x, true, global2.x, false))));
    let var_1 = !(!all(global2.yx));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-364f, 628f)), vec2<f32>(global1[_wgslsmith_index_u32(u_input.c, 2u)], -170f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(1u, 2u)], -978f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(9373u, 2u)], 121f) * vec2<f32>(-891f, global1[_wgslsmith_index_u32(u_input.d, 2u)]))))));
    global0 = !vec4<bool>(func_2().d.a.b.x, true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - 1112f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 827f) - _wgslsmith_f_op_f32(-610f + 692f)));
    return func_2().d.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = func_2();
    var_0 = func_2();
    global1 = array<f32, 2>();
    global0 = !(!(!(!(!vec4<bool>(global2.x, true, var_0.c.d.a.b.x, true)))));
    global1 = array<f32, 2>();
    return var_0.c.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), Struct_1(-149f, vec3<bool>(func_1().b.x, global0.x, global2.x)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(228f, -354f))), -1080f, -673f));
    let var_1 = global2.zyw;
    global0 = vec4<bool>(true, false, func_4(Struct_4(4294967295u, abs(vec3<u32>(12933u, 1u, u_input.d)), Struct_3(vec4<i32>(0i, u_input.a, 17976i, u_input.a), vec3<bool>(global0.x, false, global2.x), var_0, Struct_2(var_0.a)), Struct_2(var_0.a)), func_2().d, true).x != (!func_5(Struct_1(global1[_wgslsmith_index_u32(30574u, 2u)], var_0.a.b), Struct_1(-396f, vec3<bool>(false, var_1.x, false)), vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 2u)], var_0.a.a, var_0.a.a)).a.b.x & true), global2.x && !global0.x);
    let var_2 = max(_wgslsmith_sub_vec2_u32(~(~u_input.b.xy), vec2<u32>(~1u, u_input.d & u_input.d)) << ((vec2<u32>(abs(u_input.d), u_input.d | u_input.d) ^ func_2().b.zx) % vec2<u32>(32u)), select(vec2<u32>(~min(u_input.c, u_input.c), ~(~u_input.c)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), u_input.b.xw) | ~1u, 152u), any(vec2<bool>(false, var_1.x))));
    var var_3 = -36609i ^ _wgslsmith_mult_i32(~abs(63234i) << (~var_2.x % 32u), select(func_2().c.a.x ^ u_input.e, u_input.e, !var_1.x | true));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.b));
}

