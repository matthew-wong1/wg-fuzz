struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(16488u, 30154u, 54279u, 4294967295u), vec4<u32>(34199u, 79262u, 1u, 497u), vec4<u32>(0u, 0u, 1u, 6890u), vec4<u32>(16804u, 66971u, 42984u, 0u), vec4<u32>(0u, 4294967295u, 0u, 79547u), vec4<u32>(0u, 28182u, 15294u, 1u), vec4<u32>(1u, 33715u, 0u, 81740u), vec4<u32>(58683u, 1u, 0u, 12328u), vec4<u32>(1u, 4294967295u, 729u, 2261u), vec4<u32>(4294967295u, 0u, 92432u, 10152u), vec4<u32>(0u, 1u, 0u, 47029u));

var<private> global2: array<i32, 11>;

var<private> global3: f32;

var<private> global4: Struct_3;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 12u)];
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1900f, global4.c.x, 610f), vec3<f32>(global4.c.x, -383f, global4.b.b.b))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1540f, -1156f, 1710f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(161f, global4.e, global4.b.a.b), vec3<f32>(global4.b.b.b, -2758f, global4.e), global0[_wgslsmith_index_u32(0u, 12u)]))))));
    var var_2 = firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(46172u, 1u)) ^ abs(countOneBits(global4.b.b.d.x)));
    return _wgslsmith_f_op_f32(min(-942f, global4.e));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-278f, _wgslsmith_div_f32(1880f, global4.e)), -175f) + 635f);
    global2 = array<i32, 11>();
    global4 = Struct_3(reverseBits(_wgslsmith_div_vec4_i32(select(global4.b.c, global4.b.c, global4.d) << (_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(4294967295u, arg_1.e, 7526u, global4.b.a.e)) % vec4<u32>(32u)), -vec4<i32>(global4.b.c.x, -78920i, global4.a.x, u_input.d.x))), global4.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(920f, var_0))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.b * var_0), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.x, var_0)))), select(!select(select(vec4<bool>(true, global4.b.b.a.x, true, false), global4.d, global4.d), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], global4.b.a.a.x, false), true), vec4<bool>(true, !(!global4.d.x), select(arg_1.a.x, true, all(vec4<bool>(arg_1.a.x, true, false, true))), all(vec3<bool>(true, true, true))), 0u > _wgslsmith_add_u32(arg_1.e, 43890u | arg_1.e)), _wgslsmith_f_op_f32(func_3()));
    global3 = global4.c.x;
    let var_1 = global4.b.b;
    return global4.b.a;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_3) -> Struct_2 {
    global4 = arg_2.a;
    var var_0 = ~(~_wgslsmith_sub_vec3_u32(~u_input.c.zxy, _wgslsmith_sub_vec3_u32(max(vec3<u32>(arg_2.a.b.a.d.x, arg_1.c.x, 0u), vec3<u32>(arg_2.a.b.b.c.x, arg_3.b.a.c.x, 2694u)), _wgslsmith_clamp_vec3_u32(u_input.c.yzz, arg_1.d.www, arg_2.a.b.a.d.zyw))));
    return Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.b)), _wgslsmith_f_op_f32(sign(-758f)))), ~vec2<u32>(~var_0.x, 4294967295u), vec4<u32>(global4.b.a.d.x, arg_0, 0u, 4294967295u) & firstTrailingBit(min(arg_3.b.a.d, vec4<u32>(var_0.x, global4.b.a.d.x, arg_1.c.x, 4294967295u))), arg_0), func_2(abs(2147483647i), global4.b.a, vec3<i32>(-1653i, -7367i, global4.b.c.x), ~abs(~arg_2.a.b.a.e)), reverseBits(abs(~vec4<i32>(u_input.b, 2147483647i, 261i, 2147483647i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.b.a.c.x, arg_1.d.x, var_0.x, 10103u), global1[_wgslsmith_index_u32(22395u, 12u)]) % vec4<u32>(32u)))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global4.c)));
    global2 = array<i32, 11>();
    let var_1 = vec4<f32>(-1004f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(step(global4.b.b.b, _wgslsmith_f_op_f32(-global4.c.x))), _wgslsmith_f_op_f32(floor(617f)));
    var var_2 = vec3<f32>(global4.b.a.b, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -791f));
    var var_3 = arg_0.a;
    return Struct_3(-vec4<i32>(-28927i ^ u_input.b, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global4.b.b.e, arg_2), 11u)], func_4(4294967295u, arg_0.b, Struct_4(Struct_3(global4.b.c, Struct_2(Struct_1(vec2<bool>(false, true), global4.e, vec2<u32>(global4.b.a.d.x, 1u), arg_0.b.d, 30190u), Struct_1(var_3.a, 393f, var_3.c, global4.b.b.d, global4.b.b.d.x), vec4<i32>(0i, u_input.b, u_input.b, arg_0.c.x)), var_2.yz, vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], global0[_wgslsmith_index_u32(23617u, 12u)], var_3.a.x, true), var_0.x)), Struct_3(vec4<i32>(global2[_wgslsmith_index_u32(arg_2, 11u)], u_input.b, u_input.d.x, 9901i), Struct_2(global4.b.b, Struct_1(arg_0.b.a, var_1.x, global4.b.a.d.ww, vec4<u32>(global4.b.a.e, global4.b.a.d.x, u_input.c.x, 14582u), 4294967295u), vec4<i32>(2147483647i, -7461i, -2147483647i, 37284i)), var_0, vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, true, global0[_wgslsmith_index_u32(18496u, 12u)]), global4.e)).c.x, 0i) ^ (select(global4.b.c, global4.b.c, select(false, global4.d.x, arg_1)) >> (global4.b.a.d % vec4<u32>(32u))), func_4(u_input.a.x, Struct_1(func_2(-13341i, Struct_1(vec2<bool>(false, arg_1), 870f, vec2<u32>(56378u, global4.b.b.d.x), u_input.c, 26508u), vec3<i32>(1i, 1i, 1i), 4294967295u).a, func_4(~4294967295u, Struct_1(global4.b.a.a, 2200f, vec2<u32>(4294967295u, arg_2), arg_0.b.d, arg_2), Struct_4(Struct_3(global4.b.c, Struct_2(arg_0.a, Struct_1(var_3.a, var_2.x, global4.b.a.c, global1[_wgslsmith_index_u32(0u, 12u)], 0u), vec4<i32>(-2147483647i, u_input.d.x, -3840i, arg_0.c.x)), var_2.yx, global4.d, var_3.b)), Struct_3(global4.a, Struct_2(arg_0.a, Struct_1(vec2<bool>(arg_0.a.a.x, true), 216f, var_3.d.xy, vec4<u32>(global4.b.a.e, global4.b.b.e, 68868u, arg_2), arg_0.b.d.x), arg_0.c), vec2<f32>(arg_0.a.b, -1000f), vec4<bool>(true, false, false, arg_1), global4.c.x)).b.b, ~global4.b.b.c, global4.b.a.d, arg_0.a.d.x), Struct_4(Struct_3(vec4<i32>(22894i, 1i, global4.b.c.x, -20697i), Struct_2(Struct_1(arg_0.b.a, var_2.x, vec2<u32>(0u, 20861u), arg_0.a.d, 61616u), Struct_1(global4.d.zw, var_1.x, u_input.c.xy, global1[_wgslsmith_index_u32(var_3.e, 12u)], u_input.c.x), global4.a), var_0, select(global4.d, global4.d, global4.d), _wgslsmith_div_f32(var_0.x, -393f))), Struct_3(global4.b.c, global4.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.c) * vec2<f32>(global4.e, -103f)), select(!vec4<bool>(true, var_3.a.x, true, true), vec4<bool>(var_3.a.x, arg_1, true, global0[_wgslsmith_index_u32(global4.b.a.d.x, 12u)]), select(vec4<bool>(false, var_3.a.x, global4.d.x, arg_1), global4.d, vec4<bool>(arg_1, false, true, arg_0.b.a.x))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(298f + global4.e)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-708f, arg_0.b.b)) * var_1.zw)))), select(select(global4.d, global4.d, select(select(vec4<bool>(var_3.a.x, false, var_3.a.x, true), global4.d, vec4<bool>(var_3.a.x, true, var_3.a.x, false)), global4.d, false)), select(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_3.c.x, 12u)], true, arg_1, true), global4.d, arg_1), vec4<bool>(true, all(global4.d), global4.c.x >= var_2.x, all(global4.d)), vec4<bool>(u_input.a.x <= 4294967295u, !global4.b.b.a.x, true, false)), global4.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_1.x) * _wgslsmith_f_op_f32(var_1.x + global4.e))) - 591f));
}

fn func_1() -> i32 {
    global4 = func_5(func_4(~global4.b.a.c.x << (global4.b.a.d.x % 32u), func_2(i32(-1i) * -global2[_wgslsmith_index_u32(u_input.c.x, 11u)], global4.b.a, -_wgslsmith_mult_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(global4.b.b.c.x, 11u)], -1i, 2147483647i), global4.a.xxz), u_input.a.x), Struct_4(Struct_3(global4.a, global4.b, _wgslsmith_f_op_vec2_f32(-global4.c), vec4<bool>(global0[_wgslsmith_index_u32(40033u, 12u)], true, false, true), global4.e)), Struct_3(min(global4.a, -global4.b.c), global4.b, vec2<f32>(_wgslsmith_div_f32(-364f, global4.b.b.b), _wgslsmith_f_op_f32(-1152f + global4.b.b.b)), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], false, true), global4.d, global4.d), !global4.d, global0[_wgslsmith_index_u32(1u, 12u)] && true), global4.b.a.b)), true, ~global4.b.b.d.x);
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.e, global4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.a.b, global4.e, global4.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2305f, global4.e, -854f))))))));
    global4 = func_5(global4.b, global0[_wgslsmith_index_u32(~1u << ((1u >> (u_input.c.x % 32u)) % 32u), 12u)], 31989u);
    global0 = array<bool, 12>();
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var var_1 = vec2<bool>(!(!global4.b.b.a.x), true | any(global4.d.zzy));
    let var_2 = ~22845i;
    global0 = array<bool, 12>();
    var var_3 = Struct_2(Struct_1(select(global4.d.zz, !global4.d.zy, global4.b.b.a), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global4.c.x, -1083f)), global4.e), -1705f), vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), select(u_input.c.x, 11295u, global0[_wgslsmith_index_u32(1u, 12u)]), ~14019u), _wgslsmith_div_u32(max(global4.b.a.e, u_input.c.x), global4.b.b.d.x)), ~vec4<u32>(0u, firstLeadingBit(4294967295u), 0u, 4294967295u), ~u_input.c.x), global4.b.b, vec4<i32>(global4.a.x, abs(_wgslsmith_clamp_i32(u_input.d.x, -1i, -36855i)), func_1(), var_2));
    var var_4 = Struct_3(-var_3.c, Struct_2(var_3.b, func_4(u_input.c.x, func_4(u_input.c.x, global4.b.b, Struct_4(Struct_3(var_3.c, Struct_2(global4.b.b, Struct_1(vec2<bool>(var_1.x, global4.d.x), 1828f, u_input.a, vec4<u32>(1u, global4.b.a.c.x, u_input.c.x, 1u), var_3.b.d.x), global4.b.c), global4.c, vec4<bool>(var_1.x, true, var_1.x, true), global4.c.x)), func_5(global4.b, global4.b.b.a.x, 1u)).b, Struct_4(Struct_3(var_3.c, Struct_2(var_3.b, var_3.a, vec4<i32>(global4.a.x, 2147483647i, -1i, global2[_wgslsmith_index_u32(32543u, 11u)])), vec2<f32>(var_3.b.b, var_3.b.b), global4.d, global4.c.x)), func_5(global4.b, select(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true, false), 1u)).b, global4.b.c), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-682f * var_3.b.b))), var_3.a.b, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a.x, 0u), 12u)])), var_3.a.b), global4.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-772f, global4.e) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-678f))))));
    var_0 = -14608i;
    let x = u_input.a;
    s_output = StorageBuffer(~func_5(func_4(30396u, global4.b.b, Struct_4(Struct_3(vec4<i32>(var_4.a.x, u_input.d.x, 1i, var_4.a.x), global4.b, global4.c, global4.d, var_4.e)), func_5(var_4.b, true, 0u)), false, 1u).b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1037f + -128f))) * -746f));
}

