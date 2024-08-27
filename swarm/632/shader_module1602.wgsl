struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(2147483647i, true, vec2<f32>(-1198f, 462f), vec2<bool>(false, false))), Struct_2(Struct_1(35519i, false, vec2<f32>(1575f, 1665f), vec2<bool>(true, false))), Struct_2(Struct_1(-1i, false, vec2<f32>(1151f, -1000f), vec2<bool>(false, true))), Struct_2(Struct_1(20484i, true, vec2<f32>(-869f, 1395f), vec2<bool>(true, false))), Struct_2(Struct_1(-1i, true, vec2<f32>(-1819f, -2285f), vec2<bool>(true, true))), Struct_2(Struct_1(33468i, true, vec2<f32>(-962f, 1000f), vec2<bool>(false, true))), Struct_2(Struct_1(23793i, true, vec2<f32>(700f, -185f), vec2<bool>(false, true))), Struct_2(Struct_1(2147483647i, false, vec2<f32>(182f, 2898f), vec2<bool>(true, false))), Struct_2(Struct_1(-8863i, false, vec2<f32>(524f, 1000f), vec2<bool>(false, true))), Struct_2(Struct_1(-9553i, true, vec2<f32>(-804f, -1142f), vec2<bool>(true, true))), Struct_2(Struct_1(i32(-2147483648), false, vec2<f32>(518f, -968f), vec2<bool>(true, true))), Struct_2(Struct_1(-1i, false, vec2<f32>(-504f, 1308f), vec2<bool>(false, false))), Struct_2(Struct_1(-1i, false, vec2<f32>(564f, 864f), vec2<bool>(false, true))), Struct_2(Struct_1(-10524i, false, vec2<f32>(-1078f, 2404f), vec2<bool>(true, false))), Struct_2(Struct_1(24188i, true, vec2<f32>(-1000f, -328f), vec2<bool>(true, true))), Struct_2(Struct_1(1i, true, vec2<f32>(-629f, 356f), vec2<bool>(true, false))), Struct_2(Struct_1(-1i, true, vec2<f32>(2007f, -1405f), vec2<bool>(true, false))), Struct_2(Struct_1(i32(-2147483648), true, vec2<f32>(-1639f, 1075f), vec2<bool>(false, true))), Struct_2(Struct_1(-27586i, false, vec2<f32>(371f, 690f), vec2<bool>(false, true))));

var<private> global2: bool;

var<private> global3: array<Struct_2, 32>;

var<private> global4: Struct_2;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_mult_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39881u, 32u)], 32u)], 17905u, global0[_wgslsmith_index_u32(u_input.b, 32u)]) | vec4<u32>(u_input.a, u_input.b, 5166u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], 32u)], 33053u, 6887u), vec4<u32>(u_input.b, 1u, 22637u, u_input.b), vec4<u32>(1u, 1u, 6003u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 32u)], 32u)])))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(1u, 32u)]), 32u)], u_input.b, ~global0[_wgslsmith_index_u32(30110u, 32u)], 4294967295u), ~vec4<u32>(33508u, u_input.a, 9992u, global0[_wgslsmith_index_u32(u_input.b, 32u)]) << ((vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], 4294967295u, 4294967295u, 69539u) ^ vec4<u32>(7770u, u_input.b, 4294967295u, 68020u)) % vec4<u32>(32u))));
    var var_1 = Struct_2(global4.a);
    var var_2 = ~vec2<u32>((_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(var_0.x, 32u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), var_0) >> (31745u % 32u)) & var_0.x, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~(~u_input.a), 32u)], ~u_input.b));
    var_2 = var_0.zz;
    global1 = array<Struct_2, 19>();
    return ~var_0.yw;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(-global4.a.a, global4.a.b, vec2<f32>(_wgslsmith_f_op_f32(-global4.a.c.x), -277f), global4.a.d));
    var var_1 = global4.a.d.x;
    var var_2 = vec2<u32>(4294967295u, u_input.a) | min(func_3(), vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3().x, 4294967295u), 32u)], countOneBits(u_input.a)));
    let var_3 = Struct_1(-2147483647i, global4.a.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global4.a.c)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1397f, -895f) - vec2<f32>(530f, 1123f))))))), !(!var_0.a.d));
    var_2 = select(firstLeadingBit(~func_3()), ~(~max(~vec2<u32>(0u, 10571u), ~vec2<u32>(0u, 4294967295u))), var_3.d);
    return vec3<bool>((true & (var_3.a != _wgslsmith_dot_vec4_i32(vec4<i32>(-10454i, -2147483647i, global4.a.a, var_0.a.a), vec4<i32>(var_3.a, var_3.a, 2147483647i, 1i)))) && true, var_0.a.b, 1i > _wgslsmith_div_i32(1032i, _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, global4.a.a, -7159i, 0i), abs(vec4<i32>(var_0.a.a, var_0.a.a, 6404i, var_3.a)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4) -> i32 {
    var var_0 = Struct_4(Struct_1(2147483647i, global4.a.b || all(arg_1.a.d), global4.a.c, vec2<bool>(arg_1.a.d.x, arg_0.x)));
    global2 = global4.a.b;
    let var_1 = global3[_wgslsmith_index_u32(select(1u, u_input.a, _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(22795u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), 32u)], ~1u) >= u_input.b), 32u)];
    var_0 = Struct_4(Struct_1(global4.a.a, any(arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.a.c + vec2<f32>(var_0.a.c.x, global4.a.c.x)))), func_2().yz));
    global2 = false;
    return ~28414i;
}

fn func_1() -> Struct_4 {
    global1 = array<Struct_2, 19>();
    let var_0 = ~(_wgslsmith_div_i32(1i, func_4(func_2(), Struct_4(global4.a))) ^ countOneBits(_wgslsmith_add_i32(_wgslsmith_mult_i32(global4.a.a, global4.a.a), -9450i >> (0u % 32u))));
    global2 = !(global4.a.b & !func_2().x);
    var var_1 = all(select(!select(!vec4<bool>(global4.a.b, global4.a.d.x, true, false), select(vec4<bool>(true, true, global4.a.d.x, false), vec4<bool>(false, false, global4.a.b, global4.a.d.x), vec4<bool>(global4.a.b, global4.a.d.x, false, true)), false), !vec4<bool>(global4.a.d.x, true, true, global4.a.d.x), select(vec4<bool>(false, true, select(false, true, true), true), vec4<bool>(true, true, func_2().x, all(vec3<bool>(false, false, true))), vec4<bool>(false, true, any(vec4<bool>(false, global4.a.b, global4.a.b, global4.a.d.x)), global4.a.a < global4.a.a))));
    let var_2 = ~(vec4<u32>(global0[_wgslsmith_index_u32(1u, 32u)], 83336u, 17762u, u_input.a) & ~(~abs(vec4<u32>(10929u, 1u, 34065u, 0u))));
    return Struct_4(global4.a);
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.a.c.x))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.a.c.x)))), arg_1)));
    var var_1 = _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 1u), 32u)], _wgslsmith_add_u32(_wgslsmith_clamp_u32(260u & (u_input.b ^ 0u), ~(~global0[_wgslsmith_index_u32(28283u, 32u)]), ~(~u_input.b)), ~58759u));
    let var_2 = _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -363f)));
    var_1 = global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(~18652u, 32u)]), 32u)];
    global2 = arg_2.a.b;
    return Struct_3(arg_0.a, func_1().a);
}

fn func_6(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> Struct_3 {
    global3 = array<Struct_2, 32>();
    var var_0 = true;
    return Struct_3(global4.a, arg_2.a);
}

fn func_7(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> Struct_1 {
    global3 = array<Struct_2, 32>();
    let var_0 = ~abs(55639u);
    let var_1 = _wgslsmith_clamp_vec4_u32(abs(~select(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(0u, 32u)], 536u, 10331u), vec4<u32>(global0[_wgslsmith_index_u32(var_0, 32u)], var_0, u_input.a, arg_2), global4.a.d.x) & ~(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(var_0, 32u)], 11393u, arg_2))), ~vec4<u32>(global0[_wgslsmith_index_u32((var_0 >> (var_0 % 32u)) ^ var_0, 32u)], ~83754u, 64630u, 1u), firstTrailingBit(firstTrailingBit(firstLeadingBit(vec4<u32>(var_0, 1u, var_0, var_0) >> (vec4<u32>(u_input.b, 9767u, var_0, 0u) % vec4<u32>(32u))))));
    var var_2 = _wgslsmith_div_vec2_i32(~firstTrailingBit(~vec2<i32>(arg_0.a.a, 3144i)), ~abs(firstLeadingBit(vec2<i32>(-26077i, global4.a.a) >> (var_1.zz % vec2<u32>(32u)))));
    let var_3 = arg_0;
    return Struct_1(2147483647i, true, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(1210f, arg_0.b.c.x), vec2<f32>(arg_0.b.c.x, 509f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.c.x, -2273f) + global4.a.c) + _wgslsmith_f_op_vec2_f32(-global4.a.c)), _wgslsmith_f_op_vec2_f32(arg_0.b.c - _wgslsmith_f_op_vec2_f32(global4.a.c + var_3.a.c))))), global4.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(func_5(Struct_4(global4.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2062f - 267f) - _wgslsmith_div_f32(global4.a.c.x, -2040f)), func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1004f), -515f)) + global4.a.c.x), Struct_2(func_1().a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(20925u, 32u)], 48451u), ~vec4<u32>(u_input.b, 96891u, 0u, u_input.a))), -4793i, ~_wgslsmith_sub_u32(u_input.b >> (u_input.a % 32u), select(4294967295u, 50130u, global4.a.d.x)) >> (global0[_wgslsmith_index_u32(u_input.b, 32u)] % 32u));
    var var_1 = var_0.a;
    var var_2 = func_5(func_1(), global4.a.c.x, func_1()).b;
    let var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a & ~global0[_wgslsmith_index_u32(33653u, 32u)], 32u)]), global0[_wgslsmith_index_u32((6572u ^ firstLeadingBit(u_input.b)) << (_wgslsmith_sub_u32(min(0u, 1u), firstLeadingBit(u_input.a)) % 32u), 32u)], 15722u), ~(firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], u_input.b, 0u) >> (vec3<u32>(0u, u_input.a, 54561u) % vec3<u32>(32u))) & vec3<u32>(_wgslsmith_mod_u32(40578u, global0[_wgslsmith_index_u32(23114u, 32u)]), 646u, 4294967295u & global0[_wgslsmith_index_u32(15099u, 32u)])), vec3<u32>(u_input.a | firstTrailingBit(~u_input.a), ~(~u_input.b), u_input.b));
    global4 = Struct_2(func_6(func_6(func_6(Struct_3(global4.a, global4.a), _wgslsmith_f_op_f32(-var_2.c.x), global3[_wgslsmith_index_u32(39158u, 32u)], 9762u), 475f, global1[_wgslsmith_index_u32(~63767u, 19u)], 1u), var_2.c.x, global3[_wgslsmith_index_u32(~0u, 32u)], u_input.a).b);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(func_1().a.c.x - _wgslsmith_f_op_f32(var_2.c.x + 1752f)), _wgslsmith_f_op_f32(trunc(func_7(func_6(Struct_3(global4.a, Struct_1(2147483647i, false, global4.a.c, var_2.d)), global4.a.c.x, global1[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(max(46409u, 0u), 32u)]), max(func_6(Struct_3(var_0, global4.a), 876f, global1[_wgslsmith_index_u32(4294967295u, 19u)], 59358u).b.a, max(2147483647i, var_0.a)), 0u).c.x)), 785f);
    var_1 = var_2.a;
    var var_5 = _wgslsmith_add_u32(66036u, ~var_3.x);
    var var_6 = Struct_2(Struct_1(~(~(-2147483647i)), false, global4.a.c, func_6(func_6(Struct_3(global4.a, global4.a), _wgslsmith_f_op_f32(-var_2.c.x), Struct_2(Struct_1(-8641i, true, vec2<f32>(var_0.c.x, var_2.c.x), global4.a.d)), 4294967295u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.c.x))), Struct_2(var_0), u_input.b).a.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zx, -1243f, vec2<f32>(var_6.a.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_4.x * 763f), 1310f))));
}

