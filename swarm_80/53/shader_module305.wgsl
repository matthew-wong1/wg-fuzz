struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: array<f32, 24> = array<f32, 24>(-1107f, 538f, -639f, -1628f, 257f, -936f, -1000f, -372f, 462f, -392f, 1627f, -2264f, -2184f, 1000f, -579f, -500f, 302f, 1128f, 984f, 409f, 1000f, -119f, -1363f, -1316f);

var<private> global2: Struct_2;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> vec4<bool> {
    global2 = Struct_2(arg_0.c.c, arg_0.c.e, Struct_1(vec4<bool>(global2.d.a.x, true, !(47101i < u_input.b.x), global0[_wgslsmith_index_u32(u_input.e, 16u)])), Struct_1(vec4<bool>(u_input.b.x != -u_input.b.x, _wgslsmith_f_op_f32(-arg_1) < _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c, 24u)], 347f), global0[_wgslsmith_index_u32(abs(u_input.c), 16u)], any(arg_0.b.a))), global2.e);
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(abs(0u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e, u_input.c), vec2<u32>(43806u, 86849u)), abs(~vec2<u32>(u_input.e, 4294967295u)))), ~(~select(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 54075u), vec2<u32>(u_input.e, u_input.c)), vec2<u32>(u_input.c, 4294967295u) ^ vec2<u32>(608u, 1u), !arg_0.a.b)));
    var var_1 = u_input.a;
    var var_2 = reverseBits(u_input.d.x);
    global1 = array<f32, 24>();
    return global2.a.a;
}

fn func_2() -> Struct_4 {
    let var_0 = u_input.a;
    let var_1 = !global2.c.a;
    let var_2 = 1u;
    global2 = Struct_2(global2.d, Struct_1(var_1), global2.e, global2.a, global2.a);
    var var_3 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.c, 24u)]);
    return Struct_4(Struct_3(Struct_2(global2.c, global2.a, global2.c, Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(54763u, 16u)], true, var_1.x)), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 16u)], true, false, true))), select(!(!global2.b.a.yx), global2.c.a.xx, var_1.x), global1[_wgslsmith_index_u32(43178u, 24u)], Struct_2(global2.e, global2.a, Struct_1(vec4<bool>(global2.a.a.x, false, var_1.x, global0[_wgslsmith_index_u32(var_2, 16u)])), Struct_1(func_3(Struct_4(Struct_3(Struct_2(global2.e, global2.c, Struct_1(vec4<bool>(true, global2.c.a.x, global2.a.a.x, global2.e.a.x)), Struct_1(vec4<bool>(var_1.x, true, var_1.x, false)), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(var_2, 16u)], true, global0[_wgslsmith_index_u32(3274u, 16u)], false))), vec2<bool>(true, true), global1[_wgslsmith_index_u32(0u, 24u)], Struct_2(Struct_1(vec4<bool>(true, var_1.x, false, false)), global2.e, Struct_1(global2.e.a), global2.b, global2.b), false), global2.c, Struct_2(Struct_1(vec4<bool>(true, false, true, var_1.x)), Struct_1(vec4<bool>(true, false, false, true)), global2.d, global2.a, Struct_1(vec4<bool>(global2.c.a.x, global0[_wgslsmith_index_u32(var_0, 16u)], global0[_wgslsmith_index_u32(var_2, 16u)], false))), vec4<bool>(false, global2.e.a.x, global0[_wgslsmith_index_u32(var_0, 16u)], global0[_wgslsmith_index_u32(20683u, 16u)]), Struct_1(vec4<bool>(true, false, var_1.x, global0[_wgslsmith_index_u32(4294967295u, 16u)]))), global1[_wgslsmith_index_u32(31260u, 24u)])), global2.b), global0[_wgslsmith_index_u32(var_2, 16u)]), Struct_1(var_1), Struct_2(Struct_1(var_1), global2.b, global2.a, Struct_1(!var_1), global2.b), vec4<bool>(!(u_input.b.x <= ~1i), select(!all(vec4<bool>(global2.a.a.x, var_1.x, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)])), !(true && global0[_wgslsmith_index_u32(var_2, 16u)]), global2.e.a.x), !func_3(Struct_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, var_1.x, false)), global2.a, Struct_1(global2.d.a), global2.d, Struct_1(var_1)), vec2<bool>(true, global2.b.a.x), global1[_wgslsmith_index_u32(5828u, 24u)], Struct_2(Struct_1(vec4<bool>(true, global2.e.a.x, var_1.x, false)), global2.a, Struct_1(var_1), global2.a, global2.c), false), global2.c, Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], var_1.x, true, var_1.x)), global2.e, Struct_1(global2.b.a), global2.d, Struct_1(vec4<bool>(true, false, global2.b.a.x, var_1.x))), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], false, true), global2.e), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(var_2, 24u)], -381f))).x, false), global2.b);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    let var_0 = (!select(true | arg_0.e.a.x, func_3(Struct_4(arg_0.a, arg_2.d.e, arg_2.a, arg_0.b.a, arg_0.e), arg_0.a.c).x, arg_0.d.x) && all(!arg_1.a.xzw)) == false;
    let var_1 = func_2().b;
    let var_2 = arg_0;
    let var_3 = Struct_1(select(vec4<bool>(global0[_wgslsmith_index_u32(21296u, 16u)], true || (566f <= arg_0.a.c), global2.e.a.x, all(vec2<bool>(arg_2.a.e.a.x, false))), func_3(var_2, -1110f), arg_0.e.a.x));
    var var_4 = _wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.d.x, 34965i, 18034i & _wgslsmith_clamp_i32(u_input.d.x, u_input.b.x, 21061i), countOneBits(0i))), u_input.b);
    return arg_0.b;
}

fn func_5(arg_0: Struct_1) -> Struct_4 {
    global1 = array<f32, 24>();
    let var_0 = _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~4294967295u, 24u)], -128f));
    return func_2();
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = func_5(func_4(func_2(), global2.a, Struct_3(Struct_2(global2.e, global2.b, global2.c, func_2().a.a.e, Struct_1(vec4<bool>(global2.c.a.x, global2.d.a.x, false, true))), vec2<bool>(u_input.b.x != -1i, true), 1406f, func_2().a.d, true & any(global2.c.a))));
    let var_1 = func_5(Struct_1(global2.d.a));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1640f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1245f + var_0.a.c) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 + 781f))))));
    var var_3 = Struct_3(Struct_2(func_5(func_2().b).a.a.c, var_1.c.e, func_4(func_5(func_2().b), global2.e, var_0.a), Struct_1(func_4(func_2(), func_2().b, Struct_3(var_1.a.d, vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 16u)]), global1[_wgslsmith_index_u32(60322u, 24u)], Struct_2(Struct_1(vec4<bool>(false, var_0.b.a.x, true, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(31808u, 16u)], var_1.c.a.a.x, arg_1)), global2.a, var_0.c.a), global0[_wgslsmith_index_u32(0u, 16u)])).a), var_0.a.a.e), global2.d.a.yw, var_0.a.c, func_5(global2.c).a.d, !var_0.a.e);
    global2 = Struct_2(Struct_1(vec4<bool>(true, true, false, arg_1)), var_0.e, Struct_1(var_3.d.a.a), var_1.e, Struct_1(select(var_0.d, select(var_0.c.b.a, !vec4<bool>(false, var_1.e.a.x, false, var_1.a.e), !global2.e.a), var_3.b.x)));
    return vec4<bool>(any(vec4<bool>(arg_1, false, !(u_input.c <= 1u), false)), all(var_0.e.a), !arg_1, !all(!select(vec4<bool>(global2.d.a.x, true, false, true), global2.d.a, vec4<bool>(var_0.d.x, var_1.b.a.x, true, global0[_wgslsmith_index_u32(32338u, 16u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(global2.e, Struct_1(!func_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 24u)]), all(global2.e.a.zzy), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1031f, global1[_wgslsmith_index_u32(u_input.c, 24u)]) * vec2<f32>(2143f, -749f)))), global2.c, func_5(Struct_1(global2.d.a)).e, func_2().c.b);
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1f, -748f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-869f, _wgslsmith_f_op_f32(max(-113f, -1661f))))));
    var var_2 = reverseBits(vec3<u32>(abs(firstLeadingBit(~u_input.c)), 1u, ~u_input.e));
    global2 = func_5(func_2().e).a.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, ~var_2.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_2.x, 24u)], -367f, -1526f, -162f)))))), vec4<f32>(-576f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-423f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -868f) * global1[_wgslsmith_index_u32(u_input.c, 24u)]), func_5(global2.e).a.c))), _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(reverseBits(-u_input.d.x), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(u_input.b.x, 63428i)), 2147483647i, ~u_input.b.x)));
}

