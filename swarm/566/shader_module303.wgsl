struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(1000f, vec2<i32>(36513i, -1i), false, vec2<i32>(-36817i, 0i), Struct_2(vec2<bool>(false, false), Struct_1(1u, false, -319f))), Struct_3(1735f, vec2<i32>(1i, 0i), false, vec2<i32>(-47175i, 13162i), Struct_2(vec2<bool>(true, true), Struct_1(0u, true, 991f))), Struct_3(262f, vec2<i32>(1i, 784i), false, vec2<i32>(-16850i, -389i), Struct_2(vec2<bool>(false, false), Struct_1(53431u, false, 216f))), Struct_3(332f, vec2<i32>(i32(-2147483648), -40091i), false, vec2<i32>(i32(-2147483648), 25894i), Struct_2(vec2<bool>(false, false), Struct_1(4294967295u, true, -1000f))), Struct_3(453f, vec2<i32>(i32(-2147483648), 6347i), false, vec2<i32>(-1i, i32(-2147483648)), Struct_2(vec2<bool>(false, true), Struct_1(4294967295u, false, 1426f))), Struct_3(667f, vec2<i32>(i32(-2147483648), 0i), true, vec2<i32>(-1i, -38505i), Struct_2(vec2<bool>(false, true), Struct_1(27606u, true, -2332f))), Struct_3(-1169f, vec2<i32>(2147483647i, 2147483647i), false, vec2<i32>(27112i, 0i), Struct_2(vec2<bool>(false, false), Struct_1(1u, false, -1187f))), Struct_3(-1218f, vec2<i32>(5958i, 1i), false, vec2<i32>(-20416i, -1i), Struct_2(vec2<bool>(true, false), Struct_1(0u, false, 1420f))), Struct_3(1294f, vec2<i32>(-1i, 20597i), false, vec2<i32>(1i, -14167i), Struct_2(vec2<bool>(false, true), Struct_1(27287u, true, -859f))), Struct_3(874f, vec2<i32>(85479i, -1i), false, vec2<i32>(i32(-2147483648), -62462i), Struct_2(vec2<bool>(false, false), Struct_1(1u, false, 856f))));

var<private> global1: array<u32, 8> = array<u32, 8>(6253u, 4294967295u, 1u, 16778u, 4294967295u, 1u, 75511u, 1u);

var<private> global2: vec3<i32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~arg_0.a, 10u)];
    var var_1 = Struct_1(1u, true, -1532f);
    global1 = array<u32, 8>();
    let var_2 = ~reverseBits(4294967295u);
    var_1 = var_0.e.b;
    return Struct_1(u_input.a, _wgslsmith_f_op_f32(2569f - _wgslsmith_f_op_f32(step(834f, _wgslsmith_f_op_f32(arg_1 * -1035f)))) < var_0.a, -1529f);
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec3<i32>) -> vec4<i32> {
    var var_0 = arg_0.a;
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(~113301u, firstLeadingBit(firstLeadingBit(arg_0.e.b.a)) ^ _wgslsmith_add_u32(35120u & u_input.a, 98562u), _wgslsmith_clamp_u32(u_input.a ^ min(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)]), 4294967295u, ~_wgslsmith_clamp_u32(1u, arg_0.e.b.a, u_input.a))), min(vec3<u32>(~(~u_input.c.x), ~global1[_wgslsmith_index_u32(1u, 8u)], u_input.a | arg_0.e.b.a), ~(~vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.c.x, 8u)], 22988u))));
    var var_2 = Struct_3(-650f, _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, global2.x), ~vec2<i32>(u_input.b, 2147483647i)), ~vec2<i32>(u_input.b, -1i), vec2<i32>(_wgslsmith_mult_i32(57255i, -1i), arg_2.x)), arg_2.xz), all(arg_0.e.a), arg_0.d, arg_0.e);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(202f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.e.b.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(727f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1190f + var_2.e.b.c))) * -1690f)));
    var_2 = arg_0;
    return vec4<i32>(arg_0.b.x, reverseBits(u_input.b ^ 1i), -2147483647i, arg_0.b.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1764f, _wgslsmith_f_op_f32(round(-928f)), _wgslsmith_f_op_f32(floor(-625f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(932f, -1000f, 1000f))))) - vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-124f, 602f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-183f, -691f)), _wgslsmith_f_op_f32(f32(-1f) * -1414f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-514f, -1294f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global0 = array<Struct_3, 10>();
    global1 = array<u32, 8>();
    var var_1 = !any(arg_3.yz);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(select(-1000f, 1f, arg_2)), abs(max(vec2<i32>(_wgslsmith_sub_i32(u_input.b, -21897i), _wgslsmith_mod_i32(13307i, arg_1)), countOneBits(vec2<i32>(u_input.b, arg_0.x)))), any(vec4<bool>(false, any(vec4<bool>(false, false, false, arg_2)), arg_2, false)) | arg_2, ~vec2<i32>(arg_1, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, arg_1, -2147483647i, global2.x), func_3(Struct_3(var_0.x, vec2<i32>(-67536i, 2147483647i), arg_2, arg_0, Struct_2(vec2<bool>(true, false), Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], arg_2, var_0.x))), arg_3.x, vec3<i32>(arg_0.x, arg_1, -1i)))), Struct_2(vec2<bool>(var_0.x < var_0.x, !(!arg_2)), Struct_1(abs(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(63326u, 8u)], 4294967295u)), !(u_input.c.x != global1[_wgslsmith_index_u32(48533u, 8u)]), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -558f)))));
    return -838f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(46473u, any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f - -1053f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(214f, 1726f) + -1000f))), _wgslsmith_f_op_f32(abs(940f)));
    global1 = array<u32, 8>();
    var var_1 = vec2<bool>(any(vec3<bool>(any(select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, false))), any(vec4<bool>(false, var_0.b, true, var_0.b)) && false, true)), var_0.b);
    var var_2 = func_1(func_1(Struct_1(1u, !any(vec2<bool>(var_1.x, true)), 1068f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(var_0.c, var_0.c)) * -202f)), _wgslsmith_f_op_f32(select(111f, -735f, all(!vec2<bool>(var_0.b, var_1.x)))));
    let var_3 = true;
    var_0 = func_1(func_1(Struct_1(0u, var_2.b, _wgslsmith_f_op_f32(floor(-1393f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.c)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(global2.yz, u_input.b, false, vec3<bool>(false, var_0.b, false))), var_2.c))))), _wgslsmith_f_op_f32(min(-1811f, _wgslsmith_f_op_f32(-var_0.c))));
    var_0 = Struct_1(firstLeadingBit(max(~51710u, _wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(4109u, 8u)], var_0.a)))), func_1(Struct_1(u_input.a, var_2.b, 731f), var_0.c).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1851f * var_2.c)));
    let var_4 = vec4<f32>(1f, 1f, 1f, 1f);
    let var_5 = global0[_wgslsmith_index_u32(1u, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.b, global2.x)), ~u_input.b, countOneBits(global2.x), _wgslsmith_sub_i32(var_5.d.x, var_5.d.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -1i, -2147483647i, global2.x), -vec4<i32>(-38724i, u_input.b, 2147483647i, 2147483647i))) ^ select(-vec4<i32>(5843i, 2147483647i, global2.x, -1i), max(-vec4<i32>(global2.x, global2.x, var_5.d.x, 25318i), vec4<i32>(-12157i, var_5.d.x, u_input.b, global2.x) | vec4<i32>(-1i, -2147483647i, 2147483647i, -2147483647i)), select(select(vec4<bool>(var_2.b, var_0.b, var_2.b, false), vec4<bool>(true, var_0.b, true, false), false), select(vec4<bool>(var_5.e.a.x, true, false, false), vec4<bool>(false, true, true, var_0.b), var_2.b), select(vec4<bool>(var_1.x, var_2.b, false, true), vec4<bool>(true, var_2.b, true, var_1.x), false))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_4.x), 165f))), var_5.e.b.c), u_input.a);
}

