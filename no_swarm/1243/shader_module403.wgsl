struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_3) -> u32 {
    var var_0 = vec2<f32>(1f, -160f);
    var var_1 = 11265i;
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, var_0.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), -1020f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec2<f32>(-1486f, global0[_wgslsmith_index_u32(1u, 21u)]))), vec2<bool>(true, select(false, arg_2.a.b.a, true)))))));
    let var_2 = arg_2.a.b;
    var var_3 = arg_1.x;
    return 0u;
}

fn func_2() -> Struct_4 {
    let var_0 = -abs(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(0u, 1u, 91379u, 0u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(37104i, u_input.a, u_input.a, 0i), vec4<i32>(u_input.a, 1i, 11338i, u_input.a)))));
    global0 = array<f32, 21>();
    var var_1 = !(!(!vec2<bool>(true, select(true, true, false))));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29455u, 68189u, 5432u), vec3<u32>(23344u, 4294967295u, 1u)), 21u)])))));
    return Struct_4(vec3<u32>(func_3(Struct_2(Struct_1(var_1.x), Struct_1(false), vec3<bool>(var_1.x, var_1.x, true)), select(select(vec3<bool>(false, var_1.x, false), vec3<bool>(true, true, false), var_1.x), select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, true, false), var_1.x), vec3<bool>(var_1.x, false, var_1.x)), Struct_3(Struct_2(Struct_1(var_1.x), Struct_1(var_1.x), vec3<bool>(true, true, var_1.x)))), select(1u << (1u % 32u), 68410u, all(vec4<bool>(var_1.x, false, var_1.x, var_1.x))), reverseBits(~_wgslsmith_mult_u32(0u, 14388u))), var_1.x, -(var_0.yyz | _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, 1i, var_0.x)), var_0.zxw)), vec2<i32>(~(-9776i), var_0.x), 43795u);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4) -> Struct_3 {
    return Struct_3(Struct_2(Struct_1(select(false, true, arg_1.b) | (arg_1.b || true)), Struct_1(arg_1.b), vec3<bool>(false, arg_1.b, func_2().b)));
}

fn func_1() -> Struct_3 {
    global0 = array<f32, 21>();
    var var_0 = -358f;
    var var_1 = ~max(~firstLeadingBit(vec2<u32>(0u, 28942u)), vec2<u32>(~abs(1u), 96706u));
    var var_2 = ~59855u;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 21u)]) - global0[_wgslsmith_index_u32(0u, 21u)]) - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4470u, 21u)])));
    return func_4(abs(firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.a, 2147483647i, 3097i, u_input.a)))), func_2());
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_2 {
    return Struct_2(func_1().a.a, func_1().a.b, select(!arg_0.a.c, vec3<bool>(func_2().b, false, arg_1.b), !select(select(arg_0.a.c, vec3<bool>(arg_0.a.a.a, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, true, false)), arg_0.a.c, vec3<bool>(arg_0.a.b.a, true, arg_1.b))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_5 {
    let var_0 = false;
    global0 = array<f32, 21>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~_wgslsmith_sub_u32(abs(~1u), ~1u)), 21u)];
    var var_2 = Struct_1(func_1().a.a.a);
    var var_3 = reverseBits(min(u_input.a, ~(~u_input.a)) ^ -u_input.a);
    return Struct_5(vec3<i32>(-7935i, u_input.a >> (~(~28714u) % 32u), u_input.a), -1358f, (any(arg_2) & false) || false, arg_0, 11637u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(30478u, 21u)], -784f, global0[_wgslsmith_index_u32(1u, 21u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1633f, -174f, global0[_wgslsmith_index_u32(1u, 21u)], 2378f), vec4<f32>(1000f, global0[_wgslsmith_index_u32(5681u, 21u)], -164f, -102f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(8813u, 21u)], global0[_wgslsmith_index_u32(8764u, 21u)], global0[_wgslsmith_index_u32(70609u, 21u)])), _wgslsmith_div_vec4_f32(vec4<f32>(346f, -253f, -242f, 175f), vec4<f32>(855f, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)])))), vec4<bool>(true, true, all(vec4<bool>(true, false, true, true)), true)))));
    var var_1 = func_6(Struct_3(func_5(func_1(), Struct_4(vec3<u32>(1u, 1u, 1u), true, select(vec3<i32>(u_input.a, -1i, -38021i), vec3<i32>(-57213i, -14094i, u_input.a), true), abs(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mult_u32(1u, 42758u)))), Struct_1(func_4(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)), vec4<i32>(27942i, 0i, -1i, 0i)), Struct_4(vec3<u32>(1u, 1u, 1u), false, ~vec3<i32>(11919i, 25772i, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), reverseBits(77593u))).a.c.x), !vec4<bool>(true, true, false, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 21u)])) >= global0[_wgslsmith_index_u32(1u, 21u)]));
    var_1 = func_6(Struct_3(Struct_2(func_6(var_1.d, Struct_1(var_1.d.a.a.a), select(vec4<bool>(var_1.d.a.b.a, true, true, var_1.d.a.a.a), vec4<bool>(true, true, false, false), true)).d.a.b, var_1.d.a.a, vec3<bool>(select(false, true, false), !var_1.c, var_1.c != var_1.d.a.a.a))), func_5(func_4(firstLeadingBit(vec4<i32>(var_1.a.x, u_input.a, 1i, var_1.a.x)) | -vec4<i32>(u_input.a, u_input.a, 2147483647i, 1i), func_2()), Struct_4(select(~vec3<u32>(4294967295u, var_1.e, var_1.e), ~vec3<u32>(var_1.e, var_1.e, 4294967295u), any(var_1.d.a.c)), any(vec4<bool>(var_1.d.a.c.x, false, true, var_1.d.a.b.a)), _wgslsmith_clamp_vec3_i32(var_1.a, var_1.a, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 4086i), var_1.a)), vec2<i32>(-1i) * -vec2<i32>(-13323i, u_input.a), select(59432u, ~55781u, var_1.d.a.b.a))).a, !vec4<bool>(true, false, false, !(!var_1.d.a.a.a)));
    let var_2 = func_6(Struct_3(Struct_2(var_1.d.a.b, var_1.d.a.a, !func_5(Struct_3(Struct_2(var_1.d.a.b, Struct_1(var_1.c), var_1.d.a.c)), Struct_4(vec3<u32>(73052u, 21251u, var_1.e), var_1.c, var_1.a, vec2<i32>(var_1.a.x, -15530i), 4294967295u)).c)), func_4(abs(vec4<i32>(_wgslsmith_div_i32(64159i, -16141i), -1i, 2147483647i, u_input.a ^ -1i)), Struct_4(~reverseBits(vec3<u32>(var_1.e, var_1.e, 32153u)), true, var_1.a, ~vec2<i32>(32096i, var_1.a.x) | vec2<i32>(17093i, -540i), ~reverseBits(1u))).a.a, vec4<bool>(func_6(var_1.d, var_1.d.a.b, vec4<bool>(var_1.d.a.c.x, var_1.d.a.c.x, var_1.c, any(vec4<bool>(var_1.d.a.c.x, true, var_1.c, true)))).c, var_1.c, var_1.c, var_1.c)).d.a;
    var var_3 = Struct_2(var_2.a, func_4(vec4<i32>(-24301i >> (var_1.e % 32u), ~var_1.a.x, var_1.a.x, 33820i & min(u_input.a, -1751i)), Struct_4(~(vec3<u32>(18604u, var_1.e, 1u) | vec3<u32>(var_1.e, 85447u, var_1.e)), false, firstLeadingBit(var_1.a), vec2<i32>(-u_input.a, 41724i), _wgslsmith_mult_u32(var_1.e | var_1.e, var_1.e << (var_1.e % 32u)))).a.a, !func_4(max(firstTrailingBit(vec4<i32>(var_1.a.x, -1i, var_1.a.x, u_input.a)), abs(vec4<i32>(var_1.a.x, var_1.a.x, -2147483647i, u_input.a))), Struct_4(vec3<u32>(40413u, var_1.e, var_1.e) >> (vec3<u32>(1u, 1u, var_1.e) % vec3<u32>(32u)), !var_1.d.a.b.a, var_1.a, vec2<i32>(var_1.a.x, var_1.a.x), countOneBits(0u))).a.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(select(var_1.e, 108964u, !var_1.c), ~var_1.e, 4294967295u), -44684i ^ u_input.a, vec2<i32>(4903i >> (firstLeadingBit(var_1.e & var_1.e) % 32u), -47115i), -1707f);
}

