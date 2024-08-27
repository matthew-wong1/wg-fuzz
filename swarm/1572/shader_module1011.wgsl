struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23>;

var<private> global1: Struct_3;

var<private> global2: array<i32, 6>;

var<private> global3: bool = false;

var<private> global4: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(1i, -44382i, 0i, 18795i), vec4<i32>(6128i, 2147483647i, -19039i, i32(-2147483648)), vec4<i32>(-33600i, 0i, -34073i, -1i), vec4<i32>(-6049i, -1i, 54208i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(-31724i, 2147483647i, i32(-2147483648), -1i), vec4<i32>(-11744i, 1i, i32(-2147483648), -22630i), vec4<i32>(-34280i, -1i, -23535i, 1i), vec4<i32>(0i, 0i, 32192i, 1239i), vec4<i32>(36859i, 1158i, 59221i, 28653i), vec4<i32>(2147483647i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(1i, 13604i, -9203i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), -27242i, 59665i), vec4<i32>(-1841i, -26150i, 4074i, i32(-2147483648)), vec4<i32>(-29693i, -14812i, 1i, 0i), vec4<i32>(-1i, -10245i, i32(-2147483648), -451i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = Struct_1(all(vec3<bool>(true, true, all(vec4<bool>(true, true, true, true)))));
    let var_1 = Struct_1(var_0.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(1000f, -892f, false)), -1412f)))));
    global2 = array<i32, 6>();
    var var_3 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u >> (select(u_input.c.x, countOneBits(4294967295u), true) % 32u), 2339u), 6u)], 0u, var_1.a);
    return Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-1i, ~29373i, arg_0), arg_0, 1i), -firstTrailingBit(vec3<i32>(14947i, 1i, -2147483647i)) << (~_wgslsmith_div_vec3_u32(u_input.a.xxy, u_input.a.zww) % vec3<u32>(32u))));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: f32) -> i32 {
    var var_0 = -673f;
    global0 = array<vec2<u32>, 23>();
    global2 = array<i32, 6>();
    let var_1 = Struct_4(Struct_2(i32(-1i) * -1i, u_input.c.x, true), Struct_3(-1i));
    var var_2 = Struct_2(firstLeadingBit(~1i), ~(u_input.c.x & ~var_1.a.b), !(_wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_div_f32(-391f, arg_2)) || (any(select(vec4<bool>(false, false, true, false), vec4<bool>(var_1.a.c, true, false, var_1.a.c), vec4<bool>(arg_1, arg_1, false, arg_1))) | var_1.a.c));
    return ~_wgslsmith_mult_i32(min(~var_1.a.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, u_input.b), vec3<i32>(27771i, var_1.b.a, u_input.b))), global1.a);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: bool) -> i32 {
    var var_0 = func_2(max(firstLeadingBit(-(~2147483647i)), 1i));
    let var_1 = 4294967295u;
    global0 = array<vec2<u32>, 23>();
    var var_2 = vec4<bool>(!(109079u > reverseBits(_wgslsmith_sub_u32(4294967295u, var_1))), arg_3, ~(-1i) < func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1671f, -1837f, 712f), vec3<f32>(789f, 649f, 737f), true))), false & !arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1204f * 596f))), !all(select(select(vec3<bool>(true, false, arg_3), vec3<bool>(false, arg_3, false), vec3<bool>(arg_3, arg_3, arg_3)), vec3<bool>(false, true, arg_3), !arg_3)));
    let var_3 = max(_wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(14230i, global2[_wgslsmith_index_u32(arg_1.x, 6u)], 1i), vec3<i32>(0i, global1.a, 1i), vec3<i32>(32738i, 2147483647i, var_0.a))), vec3<i32>(-2147483647i & u_input.b, global1.a, var_0.a)), reverseBits(vec3<i32>(-51067i, 2147483647i, u_input.b)) & select(~vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], 71547i, 17490i), vec3<i32>(global1.a, -11144i, u_input.b), select(var_2.zxy, vec3<bool>(arg_3, var_2.x, true), var_2.xxx))) | (vec3<i32>(-1i) * -vec3<i32>(i32(-1i) * -1i, global1.a, _wgslsmith_mult_i32(var_0.a, var_0.a)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -728f) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(907f, -547f)))))));
    let var_1 = u_input.a.x;
    let var_2 = ~u_input.a.wzx;
    var var_3 = Struct_3(_wgslsmith_dot_vec2_i32(~(-select(vec2<i32>(-2147483647i, 18017i), vec2<i32>(15849i, -79388i), vec2<bool>(true, true))), vec2<i32>(0i, func_1(4294967295u, ~u_input.a.yyx, ~vec4<u32>(83171u, 13920u, u_input.c.x, u_input.c.x), true))));
    let var_4 = vec4<u32>(4294967295u, _wgslsmith_add_u32(var_2.x, u_input.c.x), u_input.a.x, var_1);
    var var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(abs(1311f))));
    let var_6 = select(vec4<bool>(true, true, false, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))) & ((1i & global2[_wgslsmith_index_u32(var_1, 6u)]) <= 32615i)), vec4<bool>(any(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false)), (2147483647i << (var_1 % 32u)) != ~firstLeadingBit(var_3.a), _wgslsmith_add_u32(var_2.x, var_2.x) <= 51200u, all(vec3<bool>(true, true, -1i == global2[_wgslsmith_index_u32(var_2.x, 6u)]))), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(false, true, true, true))), vec4<bool>(true, true, !select(true, false, false), true), vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), _wgslsmith_f_op_f32(round(1492f)) <= _wgslsmith_f_op_f32(round(420f)), true, any(vec2<bool>(false, false)))));
    let var_7 = _wgslsmith_f_op_f32(round(1296f));
    var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f)) + 829f));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~var_4.x ^ _wgslsmith_sub_u32(var_1, 4294967295u)), u_input.c.x), 6u)], vec3<i32>(_wgslsmith_div_i32(~2147483647i, ~var_3.a) << (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_2, vec3<u32>(12667u, var_2.x, 47755u)), var_1) % 32u), -(~20063i) << (~(~var_1) % 32u), firstLeadingBit(countOneBits(-global1.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_7))), countOneBits(_wgslsmith_mod_u32(26959u, min(108579u, var_4.x))), ~(~var_4));
}

