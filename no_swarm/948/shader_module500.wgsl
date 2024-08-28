struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(72275u, 2181u), vec2<u32>(20006u, 95844u), vec2<u32>(21176u, 88563u), vec2<u32>(22221u, 4294967295u), vec2<u32>(43818u, 1u), vec2<u32>(44486u, 22989u), vec2<u32>(17141u, 1u), vec2<u32>(1931u, 91261u), vec2<u32>(4294967295u, 5317u), vec2<u32>(4294967295u, 101504u), vec2<u32>(14425u, 1u));

var<private> global2: array<u32, 4> = array<u32, 4>(0u, 0u, 4294967295u, 1u);

var<private> global3: vec2<f32> = vec2<f32>(681f, 241f);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 11u)];
    let var_1 = arg_1.e;
    var var_2 = ~global0.a.c.b.x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c.a.x) - _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(700f))))) <= global0.a.b.x;
    global1 = array<vec2<u32>, 11>();
    return u_input.a;
}

fn func_3() -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(1673f - 606f), -1340f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-2276f)))), _wgslsmith_f_op_f32(-global0.a.d.c.x));
    global0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, var_0.x) + global0.a.b.xy))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1580f) - global0.a.b.zz))), _wgslsmith_f_op_vec3_f32(exp2(var_0.xzz)), global0.a.c, Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.d.a.x, global3.x, -1325f)), global0.a.d.c.wzx, vec3<bool>(global0.b.x, global0.b.x, false))), vec3<u32>(4294967295u ^ u_input.e.x, countOneBits(27999u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a.e.x, 4u)], 4u)] << (global0.a.e.x % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, global0.a.d.c.x, -648f, global3.x), vec4<f32>(global3.x, var_0.x, global3.x, global3.x))))), global0.a.e), global0.b);
    var var_1 = global0.b;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1135f)), global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -392f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, 1220f) * -246f)), global3.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(global0.a.c.c))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x - var_3.x)))))));
}

fn func_1() -> vec3<f32> {
    let var_0 = abs(vec3<i32>(-u_input.a, u_input.a, max(u_input.d.x, ~func_2(vec3<i32>(0i, u_input.d.x, 8334i), global0.a))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-599f + 1409f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global3.x)))) - _wgslsmith_f_op_f32(-global0.a.d.c.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.x))) + _wgslsmith_f_op_f32(func_3()))), 777f);
    var var_2 = abs(global0.a.d.b.zy);
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.b.x) - _wgslsmith_div_f32(global0.a.c.c.x, _wgslsmith_f_op_f32(-var_1.x))), 577f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_1.x, global0.b.x))))));
    var var_3 = Struct_4(Struct_3(Struct_2(global0.a.c.a.yy, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global0.a.d.c.yyx))), Struct_1(global0.a.c.a, u_input.c.xxy, vec4<f32>(global3.x, var_1.x, 338f, global0.a.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1313f, 1819f, 1699f), vec3<f32>(-1133f, global0.a.d.a.x, -1115f))), vec3<u32>(u_input.e.x, 1u, 12549u), _wgslsmith_f_op_vec4_f32(-global0.a.d.c)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, global0.a.c.b.x, u_input.c.x), vec4<u32>(u_input.e.x, global0.a.d.b.x, global0.a.e.x, 1u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.e.x, 4u)], u_input.e.x, 4294967295u, 14923u)), vec4<u32>(0u, u_input.e.x, 4294967295u, 38972u), vec4<u32>(15072u, global0.a.d.b.x, var_2.x, u_input.c.x))), vec3<bool>(true, 1u > _wgslsmith_add_u32(global2[_wgslsmith_index_u32(24869u, 4u)], global2[_wgslsmith_index_u32(1u, 4u)]), global0.b.x)), global0.a.d);
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(266f, 1932f, global3.x), var_3.a.a.b, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-775f, var_1.x, 971f)))), vec3<f32>(465f, _wgslsmith_f_op_f32(sign(769f)), -411f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(357f, var_3.a.a.d.a.x, 342f)))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_1) -> Struct_3 {
    let var_0 = -771f;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.d.a) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.c.a))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 1190f, -1618f)))))), ~(u_input.c.wzy ^ vec3<u32>(~arg_1.c.b.x, 1u, ~0u)), _wgslsmith_f_op_vec4_f32(min(global0.a.d.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(global3.x, global0.a.c.a.x)), arg_1.d.a.x, _wgslsmith_f_op_f32(round(-949f)), _wgslsmith_f_op_f32(-var_0))))));
    global2 = array<u32, 4>();
    let var_2 = Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1()).x * _wgslsmith_f_op_f32(-arg_3.a.x)), arg_3.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-644f)), _wgslsmith_f_op_f32(-arg_2.b.a.x), 508f) * _wgslsmith_f_op_vec3_f32(ceil(arg_3.a))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1809f, -581f, -1202f)) - _wgslsmith_f_op_vec3_f32(round(arg_3.a))), _wgslsmith_div_vec3_u32(abs(vec3<u32>(1u, arg_1.e.x, 0u)), var_1.b ^ vec3<u32>(26196u, 11509u, global2[_wgslsmith_index_u32(global0.a.c.b.x, 4u)])), arg_3.c), Struct_1(arg_3.a, ~vec3<u32>(1u, arg_3.b.x, arg_2.b.b.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-173f, arg_3.a.x, var_1.a.x, arg_3.c.x)))), ~vec4<u32>(arg_2.b.b.x, 4294967295u, 23994u, global2[_wgslsmith_index_u32(44816u, 4u)]) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, 33077u, global2[_wgslsmith_index_u32(arg_2.b.b.x, 4u)], 1u), vec4<u32>(1u, arg_0.x, 4294967295u, 1u)) % vec4<u32>(32u))), arg_2.a.b);
    var var_3 = select(vec3<bool>(var_2.b.x, select(false, var_2.b.x != arg_2.a.b.x, select(28711u, var_2.a.c.b.x, global0.b.x) > arg_2.a.a.d.b.x), true), arg_2.a.b, false);
    return Struct_3(global0.a, select(!(!(!vec3<bool>(var_3.x, false, arg_2.a.b.x))), vec3<bool>(all(!vec4<bool>(false, var_2.b.x, var_3.x, var_2.b.x)), any(!vec3<bool>(var_3.x, true, var_3.x)), !arg_2.a.b.x), var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1784f, global3.x)), _wgslsmith_f_op_vec2_f32(max(global0.a.a, vec2<f32>(global0.a.b.x, 474f))))) + global0.a.c.c.yz);
    let var_0 = global0.a;
    global0 = func_4(_wgslsmith_div_vec2_u32(vec2<u32>(~47975u, select(~u_input.e.x, global2[_wgslsmith_index_u32(0u, 4u)] | var_0.e.x, true)), vec2<u32>(global0.a.d.b.x, ~_wgslsmith_mod_u32(var_0.c.b.x, 72790u))), Struct_2(global0.a.d.c.yy, _wgslsmith_f_op_vec3_f32(func_1()), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.x, global3.x, -427f)))), vec3<u32>(_wgslsmith_clamp_u32(u_input.e.x, global2[_wgslsmith_index_u32(u_input.e.x, 4u)], 582u), _wgslsmith_clamp_u32(0u, 1u, u_input.c.x), var_0.e.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(952f, var_0.b.x, global3.x, -264f)), _wgslsmith_div_vec4_f32(global0.a.d.c, vec4<f32>(222f, var_0.a.x, var_0.a.x, -222f)), vec4<bool>(true, global0.b.x, false, global0.b.x)))), Struct_1(global0.a.b, vec3<u32>(var_0.e.x << (u_input.c.x % 32u), 4294967295u, _wgslsmith_dot_vec3_u32(var_0.c.b, global0.a.e.xxw)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 508f, var_0.b.x, var_0.a.x)))), ~vec4<u32>(~1553u, 0u, var_0.d.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.e.x, u_input.e.x, 62106u, var_0.d.b.x), vec4<u32>(var_0.c.b.x, global0.a.c.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55286u, 4u)], 4u)], 29521u)))), Struct_4(Struct_3(global0.a, vec3<bool>(global0.b.x, global0.b.x, !global0.b.x)), Struct_1(vec3<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), global0.a.b.x), vec3<u32>(var_0.d.b.x & 3494u, _wgslsmith_dot_vec2_u32(global0.a.d.b.xx, vec2<u32>(33146u, 72300u)), firstTrailingBit(u_input.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -1287f, -676f, -348f)) - _wgslsmith_f_op_vec4_f32(min(global0.a.c.c, vec4<f32>(global0.a.c.a.x, global0.a.d.c.x, global0.a.c.c.x, -1558f)))))), var_0.d);
    var var_1 = u_input.c.x;
    var var_2 = !(false && (!(!global0.b.x) || global0.b.x));
    let var_3 = !vec2<bool>(func_4(~_wgslsmith_clamp_vec2_u32(vec2<u32>(46751u, global2[_wgslsmith_index_u32(40045u, 4u)]), u_input.e.zz, vec2<u32>(0u, global0.a.d.b.x)), func_4(~global1[_wgslsmith_index_u32(27458u, 11u)], Struct_2(var_0.a, var_0.d.a, var_0.c, Struct_1(var_0.d.a, u_input.e, vec4<f32>(var_0.c.c.x, -961f, var_0.b.x, global0.a.a.x)), u_input.c), Struct_4(Struct_3(global0.a, global0.b), Struct_1(vec3<f32>(-874f, global3.x, global0.a.b.x), u_input.c.xyw, global0.a.c.c)), func_4(vec2<u32>(global2[_wgslsmith_index_u32(1u, 4u)], 0u), global0.a, Struct_4(Struct_3(Struct_2(global0.a.d.a.xz, vec3<f32>(830f, -1335f, -256f), Struct_1(vec3<f32>(global0.a.a.x, global0.a.b.x, -386f), vec3<u32>(u_input.c.x, 109779u, var_0.d.b.x), vec4<f32>(-1162f, -395f, global0.a.d.a.x, global3.x)), Struct_1(vec3<f32>(-739f, var_0.c.c.x, -1443f), u_input.c.wzz, vec4<f32>(560f, global0.a.c.a.x, -749f, 651f)), global0.a.e), global0.b), Struct_1(global0.a.b, vec3<u32>(global2[_wgslsmith_index_u32(var_0.d.b.x, 4u)], global0.a.e.x, global0.a.c.b.x), vec4<f32>(global3.x, var_0.a.x, 222f, global0.a.c.a.x))), global0.a.d).a.c).a, Struct_4(func_4(var_0.d.b.yy, global0.a, Struct_4(Struct_3(global0.a, global0.b), Struct_1(vec3<f32>(global0.a.d.a.x, global0.a.c.c.x, 1705f), vec3<u32>(global2[_wgslsmith_index_u32(3178u, 4u)], u_input.e.x, 23330u), var_0.d.c)), var_0.d), global0.a.c), var_0.c).b.x, !(!global0.b.x || (global0.b.x | true)));
    let var_4 = _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(18692i & u_input.b.x, _wgslsmith_div_i32(-1i, u_input.d.x)), i32(-1i) * -1i), firstTrailingBit(_wgslsmith_add_i32(-1i, u_input.a) >> (~0u % 32u))) ^ ~33992i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(~(u_input.d & vec4<i32>(var_4, u_input.a, u_input.b.x, var_4)), ~min(vec4<i32>(u_input.b.x, -27299i, -38027i, var_4), u_input.d)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.c.a), _wgslsmith_f_op_vec3_f32(-var_0.d.a), select(vec3<bool>(var_3.x, var_3.x, global0.b.x), global0.b, global0.b)))))), _wgslsmith_f_op_f32(global0.a.a.x - -818f));
}

