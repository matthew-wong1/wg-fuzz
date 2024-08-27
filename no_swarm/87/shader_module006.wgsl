struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(-1050f, -1562f, -200f, 904f, -1000f);

var<private> global1: array<vec4<i32>, 15>;

var<private> global2: vec2<i32>;

var<private> global3: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(1u, 0u, 4294967295u, 67372u), vec4<u32>(54456u, 84337u, 3105u, 11311u), vec4<u32>(56260u, 1u, 0u, 0u), vec4<u32>(55871u, 64291u, 26936u, 27493u), vec4<u32>(0u, 10436u, 2751u, 0u), vec4<u32>(0u, 2612u, 1u, 1u), vec4<u32>(18515u, 0u, 62592u, 53555u), vec4<u32>(37540u, 4294967295u, 18993u, 27797u), vec4<u32>(35603u, 0u, 0u, 10690u), vec4<u32>(6453u, 34499u, 17402u, 0u), vec4<u32>(4294967295u, 55643u, 57955u, 46672u), vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, 98697u, 48794u, 65636u), vec4<u32>(6165u, 1u, 85587u, 4294967295u), vec4<u32>(0u, 41840u, 125402u, 1u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 112847u), vec4<u32>(4294967295u, 1u, 77499u, 4294967295u), vec4<u32>(18759u, 0u, 4768u, 4294967295u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(4294967295u, 6892u, 1u, 1u));

var<private> global4: i32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1951f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(631u, 5u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-854f, global0[_wgslsmith_index_u32(34737u, 5u)], true)), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(30531u, 5u)])), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 5u)]))))))), -640f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1133f * 1576f)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, -2184f, 376f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(761f, 1000f, -1000f) + vec3<f32>(-376f, -434f, 1619f)))), u_input.c.x >= reverseBits(10277u), !vec4<bool>(any(vec4<bool>(true, true, false, false)), false, any(vec2<bool>(false, true)), all(vec2<bool>(false, true))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + 1436f), var_0.x)))), select(~u_input.d, vec3<i32>(0i, select(-u_input.d.x, -1i, false), abs(global2.x)), !all(vec3<bool>(false, false, false))), select(select(vec2<bool>(var_0.x != 870f, false), vec2<bool>(all(vec3<bool>(true, false, false)), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true)), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.ywx), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false)), select(vec4<bool>(true, all(vec4<bool>(true, false, false, true)), any(vec4<bool>(true, true, true, false)), false), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, false, true), all(vec4<bool>(false, true, false, false))), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true)), true, -120f));
    let var_2 = var_1.a.c;
    var var_3 = var_1.d.c;
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(0u, 5u)], var_0.x, 779f))), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], var_0.x, var_1.d.e)))), var_1.d.c.x, vec4<bool>(var_1.a.b, any(var_3.yz), false, false), all(var_2.wyy) | any(var_1.a.c), _wgslsmith_f_op_f32(f32(-1f) * -180f)), u_input.d, !(!vec2<bool>(false, var_2.x | var_1.c.x)), var_1.d);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(var_4.d.e, 1000f, any(select(var_1.a.c, !var_4.d.c, !vec4<bool>(true, true, var_4.c.x, var_2.x))))));
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(~abs(1u), 5u)], global0[_wgslsmith_index_u32(0u, 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(41788u, 5u)], 2355f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 5u)]))))));
    var var_1 = u_input.c.x;
    global0 = array<f32, 5>();
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-364f, var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(func_3()))));
    let var_3 = Struct_3(Struct_1(var_0.wzw, false, vec4<bool>(select(false, global0[_wgslsmith_index_u32(65183u, 5u)] >= var_0.x, true), true, u_input.d.x > global2.x, !(var_0.x < 816f)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))), -u_input.d, Struct_2(Struct_1(var_0.xyx, !all(vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, select(true, true, true)), true, global0[_wgslsmith_index_u32(max(u_input.e.x, ~6496u), 5u)]), ~(~(vec3<i32>(u_input.d.x, global2.x, u_input.d.x) & u_input.d)), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.xxx, vec3<f32>(1210f, 318f, 220f), true)), _wgslsmith_f_op_vec3_f32(ceil(var_2.yyz))), true, vec4<bool>(true, any(vec4<bool>(true, true, true, true)), global0[_wgslsmith_index_u32(u_input.e.x, 5u)] < 1140f, true), true, -1353f)), 1u);
    return var_3.a.c;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(67686u, 5u)], -312f, -2496f)), -1356f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(12990u, 5u)])), 845f), func_2(), !(!arg_0 && all(vec4<bool>(arg_0, true, arg_0, arg_0))), -356f), ~u_input.d, Struct_2(Struct_1(vec3<f32>(-1902f, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.e.x, 5u)], global0[_wgslsmith_index_u32(0u, 5u)])), 1i > _wgslsmith_div_i32(u_input.d.x, global2.x), select(vec4<bool>(false, arg_0, true, false), !vec4<bool>(true, arg_0, arg_0, false), false), arg_0, global0[_wgslsmith_index_u32(~u_input.a.x, 5u)]), -vec3<i32>(countOneBits(u_input.d.x), ~(-38254i), 1i), !vec2<bool>(true | arg_0, arg_0), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 453f, global0[_wgslsmith_index_u32(4294967295u, 5u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], -326f, 1123f)), vec3<bool>(arg_0, false, arg_0))), !(arg_0 == true), select(vec4<bool>(arg_0, true, true, false), select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(arg_0, true, true, arg_0), true), false), any(select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), 1185f)), ~abs(~4294967295u));
    var var_1 = -select(vec4<i32>(_wgslsmith_add_i32(-20934i, 2147483647i) ^ global2.x, ~(-29265i), -reverseBits(-42200i), 19816i), vec4<i32>(u_input.d.x, min(-1i, i32(-1i) * -2147483647i), u_input.d.x, global2.x), var_0.c.d.c);
    global4 = ~_wgslsmith_add_i32(reverseBits(u_input.d.x) & -1i, firstLeadingBit(~var_1.x)) & max(-29283i, ~2147483647i);
    let var_2 = select(select(vec3<bool>(all(var_0.c.d.c.xyw), var_0.a.b, all(!var_0.a.c)), !(!select(var_0.c.d.c.yzy, var_0.c.d.c.wxz, false)), any(!vec2<bool>(true, arg_0))), var_0.c.d.c.xxy, vec3<bool>(arg_0, false, var_0.c.d.b | (~var_0.d <= u_input.a.x)));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 270f, var_0.a.e)))), !(!(var_2.x & false)), func_2(), all(!select(var_0.c.d.c, vec4<bool>(false, true, true, var_2.x), var_0.a.c.x)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(20016u, 5u)])), ~vec3<i32>(-33713i, 4390i | _wgslsmith_mult_i32(var_0.c.b.x, var_1.x), i32(-1i) * -21079i), Struct_2(var_0.c.a, abs(var_1.yww), select(vec2<bool>(func_2().x, func_2().x), !var_2.zy, false), var_0.a), var_0.d);
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.c.a.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2042f, 1073f, -1147f))))), false, vec4<bool>(false, true, true, ~var_1.x != 8871i), !any(!var_3.c.d.c.wxx) && all(vec4<bool>(true, var_3.c.a.b, any(vec2<bool>(false, false)), var_2.x || var_0.c.c.x)), _wgslsmith_f_op_f32(step(320f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_3.d, 5u)])) * _wgslsmith_div_f32(var_3.a.e, global0[_wgslsmith_index_u32(var_3.d, 5u)])))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(true), _wgslsmith_mult_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), countOneBits(vec3<i32>(2147483647i, global2.x, global2.x))), u_input.d), !select(vec2<bool>(true, all(vec4<bool>(true, true, false, false))), vec2<bool>(any(vec3<bool>(false, true, true)), select(false, true, true)), any(func_2().xw)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(14298u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(37919u, 5u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)], -1202f))))), !(~u_input.d.x < _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.d.x, global2.x))), func_1(false).c, false, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~(~u_input.b.x), 5u)]))));
    global3 = array<vec4<u32>, 21>();
    let var_1 = var_0.a.a.x;
    var var_2 = func_1(true).a.xx;
    let var_3 = ~(u_input.e.zzx ^ ~vec3<u32>(12949u, _wgslsmith_add_u32(u_input.e.x, 59779u), 4294967295u));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(step(-708f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_3.x, 5u)] - var_0.d.a.x)))))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

