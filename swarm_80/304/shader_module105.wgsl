struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_3;

var<private> global1: Struct_1 = Struct_1(-31520i);

var<private> global2: Struct_3;

var<private> global3: array<f32, 17>;

var<private> global4: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(1u, 1u, 7996u, 32157u), vec4<u32>(4294967295u, 18380u, 49u, 1u), vec4<u32>(58433u, 4294967295u, 0u, 0u), vec4<u32>(29641u, 4441u, 1u, 14880u), vec4<u32>(40425u, 25165u, 1u, 23746u), vec4<u32>(42895u, 37183u, 34092u, 4294967295u), vec4<u32>(4294967295u, 9434u, 4294967295u, 1u), vec4<u32>(51676u, 4294967295u, 18390u, 1u), vec4<u32>(4294967295u, 0u, 3913u, 1u), vec4<u32>(4294967295u, 1u, 41140u, 0u), vec4<u32>(1u, 165u, 4417u, 4294967295u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = global0.d.a;
    global1 = Struct_1(~arg_0.a.a);
    global3 = array<f32, 17>();
    let var_1 = select(global2.a.e, select(!arg_3.a.e, vec4<bool>(!any(arg_0.e.yx), !(false | arg_3.e.x), true, !all(global2.e)), any(select(arg_3.a.e.xz, global0.e, vec2<bool>(true, true)))), global2.e.x);
    global3 = array<f32, 17>();
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-845f, arg_3.a.b, -103f, global3[_wgslsmith_index_u32(0u, 17u)])) - vec4<f32>(147f, global0.a.b, arg_3.a.b, -380f))))));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: f32) -> i32 {
    global0 = Struct_3(global2.a, global2.d, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d.x, u_input.a, arg_2.d.x), ~vec3<u32>(499u, ~global0.c, ~16771u)), global0.a.a, vec2<bool>(!((-2183f > arg_0) | false), !(!global2.a.e.x)));
    global3 = array<f32, 17>();
    return ~_wgslsmith_sub_i32(2147483647i | arg_2.c.a, _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_2.c.a, -1i), abs(-7867i ^ arg_2.c.a)));
}

fn func_2() -> Struct_2 {
    global1 = Struct_1(func_4(global2.a.b, _wgslsmith_f_op_vec4_f32(func_3(global2.a, 52953i, countOneBits(global2.a.d), Struct_3(Struct_2(Struct_1(global2.a.a.a), 742f, global2.d, vec2<u32>(u_input.a, 509u), global0.a.e), global2.b, 4294967295u, Struct_1(global1.a), vec2<bool>(global0.e.x, true)))), Struct_2(Struct_1(global1.a), global3[_wgslsmith_index_u32(global2.a.d.x, 17u)], Struct_1(global1.a), firstTrailingBit(vec2<u32>(global0.a.d.x, 0u)), !vec4<bool>(global2.e.x, global0.e.x, true, global0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.a.b)))) & ~abs(-global1.a));
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-112f + global2.a.b), -248f));
    let var_1 = !vec3<bool>(all(global0.a.e), global2.a.e.x, 64429u != _wgslsmith_mult_u32(global2.c, global0.c));
    var var_2 = ~_wgslsmith_add_vec2_u32(~firstLeadingBit(global2.a.d), _wgslsmith_clamp_vec2_u32(global0.a.d, reverseBits(vec2<u32>(global2.a.d.x, u_input.a)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 49021u), global0.a.d), ~global2.a.d)));
    let var_3 = global0.c;
    return global0.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<i32>) -> Struct_2 {
    global0 = Struct_3(global2.a, Struct_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -194i), arg_2 << (vec2<u32>(u_input.a, global0.a.d.x) % vec2<u32>(32u)))), firstLeadingBit(global0.a.d.x), global0.b, global0.a.e.zw);
    let var_0 = Struct_3(func_2(), Struct_1(-(min(-39987i, 27012i) | _wgslsmith_dot_vec3_i32(vec3<i32>(8615i, arg_2.x, 1i), vec3<i32>(2147483647i, 13396i, global2.b.a)))), ~_wgslsmith_mult_u32(global2.a.d.x, global2.a.d.x) << (_wgslsmith_mod_u32(21025u, 29256u) % 32u), func_2().c, !(!arg_1));
    global0 = var_0;
    var var_1 = global0.a.b;
    global4 = array<vec4<u32>, 12>();
    return global0.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    var var_0 = arg_0.c;
    let var_1 = vec4<i32>(-select(74689i << (arg_1.d.x % 32u), -16614i, any(vec4<bool>(arg_0.e.x, false, arg_0.e.x, arg_1.e.x))), var_0.a, -_wgslsmith_sub_i32(arg_1.a.a, -33182i), ~42030i);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(arg_1.c, _wgslsmith_f_op_f32(-221f + arg_1.b), Struct_1(arg_1.c.a), arg_1.d, arg_0.e), 27668i, firstTrailingBit(~vec2<u32>(61896u, 26992u)), Struct_3(arg_0, arg_1.a, _wgslsmith_clamp_u32(u_input.a, arg_0.d.x, arg_0.d.x), arg_1.c, vec2<bool>(arg_0.e.x, arg_0.e.x)))).x, 377f, !func_2().e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(264f)) * -106f));
    var var_3 = var_1.xyw;
    let var_4 = !(!(true && !any(arg_0.e.wwy)));
    return Struct_3(arg_0, arg_0.c, ~select(global0.c, 39222u, !arg_1.e.x), global2.b, vec2<bool>(var_4, all(global2.a.e)));
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    let var_0 = arg_3.b;
    var var_1 = -2529f;
    let var_2 = false;
    var var_3 = func_1(func_2().a, select(vec2<bool>(true, false), vec2<bool>(true, all(vec4<bool>(global2.a.e.x, var_2, false, arg_0.e.x))), !global2.e.x), ~vec2<i32>(_wgslsmith_mod_i32(global2.a.c.a & var_0.a, ~global2.d.a), -(arg_0.a.a << (4294967295u % 32u))));
    var_3 = Struct_2(Struct_1(func_4(_wgslsmith_f_op_f32(-global0.a.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 2184f, global2.a.b, global3[_wgslsmith_index_u32(15361u, 17u)]))), global2.a, -1000f)), _wgslsmith_f_op_f32(-global2.a.b), arg_0.a, ~func_5(global2.a, Struct_2(var_3.c, arg_2.a.b, arg_2.d, ~vec2<u32>(arg_2.c, arg_3.c), func_2().e)).a.d, vec4<bool>(any(vec3<bool>(any(vec4<bool>(global2.e.x, true, global0.a.e.x, arg_0.e.x)), arg_3.a.e.x, 183f <= global0.a.b)), false, _wgslsmith_mult_u32(6985u, ~global2.c) != ~(~77245u), !arg_3.e.x));
    return _wgslsmith_mod_i32(_wgslsmith_mod_i32(global2.b.a, abs(_wgslsmith_add_i32(1i, global1.a) << (4294967295u % 32u))), global2.a.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(select(~(-1i), global0.a.a.a, global0.e.x), -func_6(global2.a, ~(global0.a.d.x & u_input.a), func_5(func_1(global0.a.a, vec2<bool>(global0.a.e.x, true), vec2<i32>(2147483647i, global2.d.a)), Struct_2(global2.d, -654f, global2.a.a, global0.a.d, vec4<bool>(global2.a.e.x, global2.a.e.x, global0.a.e.x, true))), func_5(Struct_2(Struct_1(-47264i), global0.a.b, Struct_1(24531i), vec2<u32>(global0.c, u_input.a), vec4<bool>(global0.e.x, false, global2.e.x, true)), func_1(Struct_1(global2.b.a), global2.e, vec2<i32>(2147483647i, global1.a)))), global0.b.a, -func_1(global0.b, vec2<bool>(true, true), -(~vec2<i32>(-65835i, 0i))).a.a);
    let var_1 = ~vec2<i32>(func_6(global0.a, global2.a.d.x, Struct_3(global2.a, Struct_1(global1.a), global2.a.d.x, Struct_1(-2147483647i), vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(var_0.x), global3[_wgslsmith_index_u32(15940u, 17u)], global2.d, vec2<u32>(1u, global0.a.d.x), vec4<bool>(false, true, global2.a.e.x, global0.e.x)), Struct_1(var_0.x), 56163u, global0.b, global2.e)) << (max(global0.a.d.x, ~47854u) % 32u), -1i);
    global3 = array<f32, 17>();
    let var_2 = _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~func_1(func_1(Struct_1(0i), global0.a.e.yz, vec2<i32>(0i, 2147483647i)).a, func_1(Struct_1(global0.d.a), global2.a.e.wy, _wgslsmith_clamp_vec2_i32(vec2<i32>(-33203i, -2147483647i), vec2<i32>(60486i, global2.b.a), vec2<i32>(-1i, -6406i))).e.xx, vec2<i32>(-1i, -10217i)).d.x, 17u)] * _wgslsmith_f_op_f32(ceil(163f)));
    let var_3 = true;
    var var_4 = 730f;
    var var_5 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_6(Struct_2(var_5.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-319f, global3[_wgslsmith_index_u32(u_input.a, 17u)]) - 1329f), Struct_1(abs(-2147483647i)), firstLeadingBit(~global0.a.d), vec4<bool>(func_1(global0.b, global2.e, var_1).e.x, true, !global0.e.x, any(vec3<bool>(var_3, global0.e.x, true)))), _wgslsmith_dot_vec3_u32(~(vec3<u32>(130572u, 1u, u_input.a) ^ vec3<u32>(global0.a.d.x, 15807u, u_input.a)), ~vec3<u32>(0u, 33314u, global2.a.d.x) | _wgslsmith_mod_vec3_u32(vec3<u32>(var_5.d.x, 32065u, 1u), vec3<u32>(4294967295u, 1u, 22416u))), func_5(func_5(global0.a, Struct_2(Struct_1(var_0.x), -1000f, global0.b, vec2<u32>(15007u, global0.c), vec4<bool>(true, false, global0.e.x, var_3))).a, Struct_2(Struct_1(-2147483647i), _wgslsmith_f_op_f32(ceil(var_2)), Struct_1(-39711i), ~vec2<u32>(0u, 0u), func_2().e)), func_5(Struct_2(func_2().a, 375f, func_2().c, var_5.d | var_5.d, var_5.e), Struct_2(func_2().c, _wgslsmith_f_op_f32(max(global0.a.b, -1000f)), func_2().c, global0.a.d & var_5.d, !global2.a.e))));
}

