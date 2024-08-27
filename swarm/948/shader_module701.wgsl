struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: i32 = -9989i;

var<private> global2: array<i32, 18> = array<i32, 18>(2147483647i, 1i, 1i, -1i, i32(-2147483648), 40864i, 2147483647i, 1i, i32(-2147483648), i32(-2147483648), 0i, 50828i, 49928i, 2147483647i, 1i, i32(-2147483648), -14173i, i32(-2147483648));

var<private> global3: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_1(4294967295u, 13165u), vec3<bool>(false, true, false)), Struct_3(Struct_1(1u, 46371u), vec3<bool>(true, false, true)), Struct_3(Struct_1(0u, 4294967295u), vec3<bool>(true, false, false)), Struct_3(Struct_1(15604u, 6297u), vec3<bool>(false, true, true)), Struct_3(Struct_1(1u, 0u), vec3<bool>(true, true, true)), Struct_3(Struct_1(25626u, 0u), vec3<bool>(true, false, false)), Struct_3(Struct_1(1u, 0u), vec3<bool>(false, true, false)), Struct_3(Struct_1(0u, 1u), vec3<bool>(true, true, true)), Struct_3(Struct_1(4294967295u, 66322u), vec3<bool>(true, false, true)), Struct_3(Struct_1(110942u, 24030u), vec3<bool>(false, false, true)), Struct_3(Struct_1(1u, 0u), vec3<bool>(false, false, false)), Struct_3(Struct_1(26554u, 5379u), vec3<bool>(true, true, true)), Struct_3(Struct_1(6546u, 56550u), vec3<bool>(true, false, true)), Struct_3(Struct_1(4294967295u, 26400u), vec3<bool>(false, false, false)), Struct_3(Struct_1(57920u, 75566u), vec3<bool>(false, false, false)), Struct_3(Struct_1(4294967295u, 28162u), vec3<bool>(true, false, true)), Struct_3(Struct_1(88494u, 72130u), vec3<bool>(false, true, true)), Struct_3(Struct_1(24874u, 4294967295u), vec3<bool>(false, true, false)), Struct_3(Struct_1(14398u, 898u), vec3<bool>(true, true, false)), Struct_3(Struct_1(1u, 0u), vec3<bool>(true, false, false)), Struct_3(Struct_1(47948u, 0u), vec3<bool>(true, true, false)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> vec4<f32> {
    global2 = array<i32, 18>();
    var var_0 = Struct_1(arg_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.a, arg_0.b), vec3<u32>(arg_1.e.a.x, arg_0.a, arg_0.a)) & _wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_add_u32(19662u, arg_0.b) | countOneBits(53232u), arg_1.d.a.b, 0u), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d.a.b, 0u, 0u), u_input.a), ~(~40454u), ~arg_0.a, _wgslsmith_dot_vec2_u32(u_input.a.xx & vec2<u32>(17458u, 0u), u_input.a.yz))));
    var_0 = arg_1.e.c;
    var var_1 = global0[_wgslsmith_index_u32(1u, 31u)];
    var var_2 = u_input.a;
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1772f, 592f, arg_1.c.x, var_1.c.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.c.x, 1070f, -536f, arg_1.c.x)))))), vec4<f32>(1120f, arg_1.c.x, _wgslsmith_f_op_f32(-1000f * -1066f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(583f)) + _wgslsmith_div_f32(1000f, arg_1.c.x))), true))));
}

fn func_2() -> Struct_4 {
    var var_0 = u_input.d.x;
    let var_1 = Struct_5(Struct_4(0u, u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(5762u, u_input.e), global0[_wgslsmith_index_u32(~u_input.c, 31u)])))), Struct_3(Struct_1(4294967295u, ~u_input.e), vec3<bool>(true, true, true)), Struct_2(u_input.a.xz, min(_wgslsmith_mult_vec2_i32(vec2<i32>(-42182i, global2[_wgslsmith_index_u32(u_input.e, 18u)]), vec2<i32>(global2[_wgslsmith_index_u32(u_input.e, 18u)], -2147483647i)), vec2<i32>(19925i, global2[_wgslsmith_index_u32(u_input.a.x, 18u)])), Struct_1(max(81202u, u_input.e), u_input.a.x), ~_wgslsmith_mult_u32(15671u, u_input.c))), u_input.c, Struct_1(reverseBits(38662u), u_input.e));
    global1 = _wgslsmith_div_i32(select(0i, var_1.a.e.b.x, var_1.a.d.b.x), u_input.d.x);
    global2 = array<i32, 18>();
    var var_2 = var_1.a.e;
    return global0[_wgslsmith_index_u32(35067u, 31u)];
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>) -> Struct_4 {
    global3 = array<Struct_3, 21>();
    let var_0 = u_input.d;
    var var_1 = var_0.x;
    var var_2 = global0[_wgslsmith_index_u32(~u_input.e, 31u)];
    let var_3 = !vec3<bool>(false, false, arg_1.x <= 1212f);
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> bool {
    var var_0 = Struct_1(~_wgslsmith_sub_u32(1u, 1u), ~25348u);
    var var_1 = select(!vec4<bool>(!all(vec4<bool>(arg_1.d.b.x, arg_1.d.b.x, arg_0.b.x, arg_1.d.b.x)), !(arg_1.d.b.x || arg_0.b.x), !all(vec4<bool>(false, true, arg_0.b.x, false)), !arg_0.b.x), !select(vec4<bool>(!arg_1.d.b.x, arg_1.d.b.x, arg_0.b.x != false, func_2().d.b.x), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, arg_0.b.x, arg_1.d.b.x, arg_1.d.b.x), vec4<bool>(true, arg_0.b.x, false, false), vec4<bool>(arg_0.b.x, arg_1.d.b.x, arg_1.d.b.x, arg_1.d.b.x)), select(vec4<bool>(arg_1.d.b.x, true, false, arg_1.d.b.x), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, arg_1.d.b.x)), arg_0.b.x && arg_1.d.b.x)), arg_0.b.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1001f) + -479f));
    var var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(27891i, -1i, 2147483647i, arg_1.e.b.x), vec4<i32>(-58292i, 1i, 0i, arg_1.e.b.x)), select(-1i, -2147483647i, func_2().d.b.x)), arg_1.e.b.x, -_wgslsmith_div_i32(global2[_wgslsmith_index_u32(arg_1.a, 18u)], 0i), countOneBits(abs(min(-32439i, u_input.d.x)))), vec4<i32>(u_input.b, _wgslsmith_div_i32(-u_input.b & _wgslsmith_add_i32(global2[_wgslsmith_index_u32(8843u, 18u)], global2[_wgslsmith_index_u32(var_0.a, 18u)]), global2[_wgslsmith_index_u32(abs(~var_0.b), 18u)]), ~func_1(Struct_4(u_input.c, arg_1.b, arg_1.c, Struct_3(arg_1.e.c, arg_1.d.b), arg_1.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(1777f, arg_1.c.x) * vec2<f32>(arg_1.c.x, arg_1.c.x))).e.b.x, _wgslsmith_div_i32(-(u_input.d.x ^ 44247i), arg_1.e.b.x)));
    var var_4 = Struct_5(func_2(), ~arg_1.a, Struct_1(~4294967295u, reverseBits(_wgslsmith_div_u32(u_input.a.x, 1u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.b, 6166u, 5588u, var_0.a), vec4<u32>(var_0.a, var_0.a, arg_0.a.a, u_input.c)))));
    return func_1(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.c.x, -1000f), vec2<f32>(arg_1.c.x, var_4.a.c.x)))))))).d.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -33124i;
    global0 = array<Struct_4, 31>();
    var var_1 = Struct_1(min(max(u_input.a.x, ~0u | ~u_input.c), _wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, 17721u)), 4294967295u);
    var_0 = -(~_wgslsmith_dot_vec4_i32(-(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.e, 18u)], u_input.d.x, u_input.b) | vec4<i32>(global2[_wgslsmith_index_u32(27347u, 18u)], global2[_wgslsmith_index_u32(0u, 18u)], 4331i, u_input.b)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -6030i, -112987i, -2147483647i), vec4<i32>(u_input.d.x, 0i, global2[_wgslsmith_index_u32(47037u, 18u)], 43162i))));
    let var_2 = vec3<bool>(func_4(global3[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(~u_input.e, ~0u)), 21u)], func_1(Struct_4(4294967295u, u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -292f, -1000f, -508f)), global3[_wgslsmith_index_u32(u_input.e, 21u)], Struct_2(u_input.a.zy, vec2<i32>(27343i, u_input.b), Struct_1(u_input.e, 15555u), u_input.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-254f, 1458f)))), func_1(global0[_wgslsmith_index_u32(~90081u, 31u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1537f, 144f)))).d.b.x || func_2().d.b.x, !select(reverseBits(-44219i) > _wgslsmith_dot_vec3_i32(u_input.d, u_input.d), true, true));
    let x = u_input.a;
    s_output = StorageBuffer(824f, ~min(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(7944u, 18u)])), abs(vec2<i32>(u_input.b, global2[_wgslsmith_index_u32(u_input.a.x, 18u)])), ~u_input.d.zy), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.d.zy, vec2<i32>(global2[_wgslsmith_index_u32(var_1.b, 18u)], global2[_wgslsmith_index_u32(var_1.b, 18u)])), vec2<i32>(global2[_wgslsmith_index_u32(var_1.a, 18u)], global2[_wgslsmith_index_u32(var_1.a, 18u)]))), _wgslsmith_add_u32(u_input.a.x, var_1.b));
}

