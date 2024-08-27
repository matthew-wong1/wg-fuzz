struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(43318u, vec4<bool>(false, true, true, true), false), Struct_1(4294967295u, vec4<bool>(true, true, true, false), false), Struct_1(4294967295u, vec4<bool>(false, true, true, true), true), Struct_1(0u, vec4<bool>(false, true, false, false), false), Struct_1(31478u, vec4<bool>(true, false, true, true), false), Struct_1(42485u, vec4<bool>(false, false, true, true), false), Struct_1(1u, vec4<bool>(false, false, true, false), true), Struct_1(61520u, vec4<bool>(false, false, false, false), true), Struct_1(1u, vec4<bool>(false, false, false, true), false), Struct_1(74672u, vec4<bool>(true, false, true, false), true), Struct_1(1u, vec4<bool>(false, true, true, true), false), Struct_1(0u, vec4<bool>(false, false, false, true), true), Struct_1(9278u, vec4<bool>(false, false, false, true), false), Struct_1(4294967295u, vec4<bool>(false, false, true, true), true), Struct_1(1u, vec4<bool>(false, true, true, false), true), Struct_1(1u, vec4<bool>(true, true, false, true), false), Struct_1(1u, vec4<bool>(true, false, true, false), true), Struct_1(13572u, vec4<bool>(true, true, true, false), true), Struct_1(37150u, vec4<bool>(true, false, true, true), true), Struct_1(4294967295u, vec4<bool>(true, true, true, true), true), Struct_1(2248u, vec4<bool>(false, false, true, true), true));

var<private> global1: array<vec3<f32>, 24>;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(4294967295u, vec4<bool>(false, false, true, false), true), Struct_1(0u, vec4<bool>(false, false, true, false), false), Struct_1(47393u, vec4<bool>(true, false, false, true), false), Struct_1(4294967295u, vec4<bool>(true, false, false, false), false), Struct_1(0u, vec4<bool>(true, true, true, true), false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    global0 = array<Struct_1, 21>();
    let var_0 = Struct_5(Struct_4(true, global0[_wgslsmith_index_u32(firstLeadingBit(min(~1u, abs(1u))), 21u)], Struct_3(global2[_wgslsmith_index_u32(max(~78225u, 14930u), 5u)], vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true), 1u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 14844u, 4294967295u), vec4<u32>(4294967295u, 4183u, 1u, 96612u)), 5u)], select(vec2<bool>(true, true), vec2<bool>(true, false), true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), abs((vec4<i32>(u_input.a.x, arg_0, -1i, arg_0) | u_input.a) | vec4<i32>(arg_0, -2147483647i, u_input.c.x, u_input.a.x))));
    global1 = array<vec3<f32>, 24>();
    global2 = array<Struct_1, 5>();
    let var_1 = 0u;
    return select(select(var_0.a.c.a.b, var_0.a.c.a.b, false), select(vec4<bool>(false, var_0.a.d.x, all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, var_0.a.c.d.b.x, false, var_0.a.b.b.x), var_0.a.c.a.b)), var_0.a.b.c), !var_0.a.b.b, any(var_0.a.c.b.yy)), false);
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_5(Struct_4(any(select(func_3(u_input.c.x), vec4<bool>(true, true, false, true), u_input.a.x <= -1i)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(~8325u, max(63109u, 0u))), 21u)], Struct_3(global2[_wgslsmith_index_u32(abs(~40449u), 5u)], vec3<bool>(false, any(vec4<bool>(false, false, true, true)), any(vec3<bool>(true, false, false))), reverseBits(4536u), Struct_1(1u, vec4<bool>(true, true, true, true), true), vec2<bool>(true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), _wgslsmith_clamp_vec4_i32(firstLeadingBit(u_input.a) >> (reverseBits(vec4<u32>(81657u, 18856u, 18039u, 38260u)) % vec4<u32>(32u)), select(u_input.a, vec4<i32>(0i, -2147483647i, -2147483647i, u_input.b.x), vec4<bool>(false, true, true, false)), u_input.a)));
    let var_1 = ~(~(abs(vec3<i32>(2147483647i, u_input.c.x, -35296i)) << (~select(vec3<u32>(19047u, var_0.a.b.a, 0u), vec3<u32>(4294967295u, var_0.a.b.a, 4294967295u), var_0.a.b.c) % vec3<u32>(32u))));
    global2 = array<Struct_1, 5>();
    var var_2 = vec2<u32>(4294967295u, firstTrailingBit(var_0.a.c.a.a));
    var_2 = _wgslsmith_sub_vec2_u32(abs(~_wgslsmith_add_vec2_u32(~vec2<u32>(var_0.a.b.a, var_2.x), firstTrailingBit(vec2<u32>(0u, 11058u)))), ~countOneBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_2.x, 4294967295u)), vec2<u32>(0u, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(17368u, var_2.x), vec2<u32>(var_0.a.c.c, 4294967295u)))));
    return !(!vec2<bool>(true, all(select(var_0.a.d, vec3<bool>(var_0.a.b.c, var_0.a.c.b.x, var_0.a.a), var_0.a.a))));
}

fn func_1() -> vec3<bool> {
    global2 = array<Struct_1, 5>();
    let var_0 = func_2();
    let var_1 = Struct_5(Struct_4(_wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i, u_input.b.x, -1i), -u_input.c.x) > u_input.a.x, global2[_wgslsmith_index_u32(abs(41880u), 5u)], Struct_3(global0[_wgslsmith_index_u32(~(~1u), 21u)], !select(vec3<bool>(var_0.x, false, false), vec3<bool>(false, var_0.x, var_0.x), var_0.x), _wgslsmith_mod_u32(1u, 1u), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(77957u, 1u, 1u), vec3<u32>(0u, 1u, 1u)), !vec4<bool>(var_0.x, true, var_0.x, true), var_0.x), !func_3(50240i).xw), !select(vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false), var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x)), u_input.a));
    let var_2 = !vec2<bool>(true, firstTrailingBit(var_1.a.b.a ^ var_1.a.b.a) >= ~4294967295u);
    var var_3 = _wgslsmith_f_op_f32(sign(-1709f));
    return vec3<bool>(var_0.x, !(!(var_2.x | !var_0.x)), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, ~40834u), 3087u), 21u)], select(select(vec3<bool>(all(vec2<bool>(true, true)), u_input.a.x > -3634i, all(vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), true), !select(func_1(), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), func_3(-108510i).x), vec3<bool>(true, false && func_3(0i).x, true)), ~(~15738u), Struct_1(1u, vec4<bool>(true, true, true, true), true), func_1().yy);
    let var_1 = vec4<f32>(-2940f, -740f, 853f, _wgslsmith_div_f32(906f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-572f, _wgslsmith_div_f32(323f, -921f))))));
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(51225u, _wgslsmith_sub_u32(select(4294967295u, _wgslsmith_sub_u32(var_0.c, 4294967295u), all(vec4<bool>(true, false, var_0.d.b.x, false))), 70263u), _wgslsmith_add_u32(54640u, ~4294967295u) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c, var_0.c, var_0.a.a, var_0.a.a), firstLeadingBit(vec4<u32>(4294967295u, 90932u, var_0.c, var_0.a.a))) % 32u)), ~vec3<u32>(var_0.d.a, var_0.a.a, 70709u));
    let var_3 = var_0;
    var var_4 = vec2<i32>(-2147483647i, ~(-2147483647i));
    global0 = array<Struct_1, 21>();
    var var_5 = Struct_4(!any(select(vec3<bool>(var_3.b.x, false, true), select(var_3.a.b.xzy, var_3.b, false), true)), Struct_1(~(_wgslsmith_mod_u32(var_2, 4294967295u) ^ 0u), !select(var_0.d.b, select(var_0.a.b, vec4<bool>(true, true, var_3.b.x, var_3.d.c), var_3.b.x), !vec4<bool>(false, var_3.d.b.x, false, true)), true), var_3, vec3<bool>(var_3.d.c, true && any(var_0.d.b), !func_3(countOneBits(1i)).x), firstLeadingBit(~(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -9878i, 2147483647i, var_4.x))));
    global1 = array<vec3<f32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.ww))) + var_1.ww));
}

