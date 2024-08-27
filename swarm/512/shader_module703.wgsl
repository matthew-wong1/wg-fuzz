struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(62799u, 21260u, 9457u), vec3<u32>(4294967295u, 34511u, 4294967295u), vec3<u32>(25095u, 31197u, 1u), vec3<u32>(1u, 51896u, 81736u), vec3<u32>(11641u, 0u, 1u), vec3<u32>(13946u, 0u, 1u), vec3<u32>(0u, 33651u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 40803u, 119780u), vec3<u32>(0u, 4294967295u, 73476u), vec3<u32>(69239u, 17113u, 4294967295u), vec3<u32>(88448u, 4294967295u, 86154u), vec3<u32>(12914u, 102587u, 64769u), vec3<u32>(4294967295u, 42002u, 13691u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(43836u, 1056u, 78387u), vec3<u32>(37169u, 0u, 42138u), vec3<u32>(0u, 1u, 1u), vec3<u32>(34429u, 1785u, 0u), vec3<u32>(4294967295u, 9398u, 38998u), vec3<u32>(1u, 87446u, 1264u), vec3<u32>(1u, 39160u, 0u), vec3<u32>(55462u, 71412u, 4294967295u), vec3<u32>(9294u, 4294967295u, 36387u), vec3<u32>(96833u, 35766u, 6177u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1787u, 116213u), vec3<u32>(0u, 1u, 22220u));

var<private> global1: Struct_2 = Struct_2(Struct_1(false, 13807i), vec3<u32>(0u, 1u, 4294967295u));

var<private> global2: vec4<i32> = vec4<i32>(1i, -2862i, 1i, 1i);

var<private> global3: f32;

var<private> global4: array<Struct_2, 22>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: u32) -> vec3<i32> {
    global4 = array<Struct_2, 22>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - -1001f), _wgslsmith_f_op_f32(-1f)));
    global4 = array<Struct_2, 22>();
    global2 = vec4<i32>(global1.a.b << (arg_2 % 32u), 26727i, -global1.a.b, _wgslsmith_clamp_i32(_wgslsmith_div_i32(global2.x, global1.a.b) | 0i, max(_wgslsmith_mult_i32(1i, u_input.d.x), -7846i), _wgslsmith_add_i32(abs(global1.a.b), -global2.x))) >> (u_input.c % vec4<u32>(32u));
    var var_0 = global1.a;
    return global2.zwz;
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_4 {
    var var_0 = _wgslsmith_clamp_i32(~(-12077i), _wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(global2.yyy, vec3<i32>(-2147483647i, -38514i, 0i)), u_input.d.xzy & vec3<i32>(26542i, -1i, 51205i), arg_1), -func_3(vec4<bool>(global1.a.a, global1.a.a, true, true), vec3<f32>(arg_0, arg_0, arg_0), 74628u)) >> (global1.b.x % 32u), global1.a.b);
    let var_1 = !select(vec2<bool>(arg_1, !global1.a.a), !select(vec2<bool>(global1.a.a, false), vec2<bool>(false, false), true), select(select(vec2<bool>(true, true), !vec2<bool>(global1.a.a, global1.a.a), select(false, arg_1, arg_1)), vec2<bool>(!global1.a.a, arg_0 > arg_0), any(select(vec2<bool>(arg_1, global1.a.a), vec2<bool>(arg_1, arg_1), vec2<bool>(true, false)))));
    var var_2 = !select(all(select(!vec2<bool>(var_1.x, global1.a.a), !var_1, vec2<bool>(false, global1.a.a))), !var_1.x, all(var_1));
    global4 = array<Struct_2, 22>();
    var var_3 = global1.a.a;
    return Struct_4(Struct_2(Struct_1(select(true, select(true, true, true), all(vec4<bool>(arg_1, false, arg_1, arg_1))), -global1.a.b), (vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) & vec3<u32>(22983u, 1u, u_input.c.x)) & (_wgslsmith_mult_vec3_u32(u_input.c.xyy, vec3<u32>(8484u, global1.b.x, u_input.c.x)) & u_input.c.zwx)), 24573u, ~_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(global1.b.x, 0u, 0u, 65099u) ^ (vec4<u32>(0u, global1.b.x, u_input.c.x, 0u) >> (u_input.c % vec4<u32>(32u)))), global4[_wgslsmith_index_u32(16256u, 22u)], global4[_wgslsmith_index_u32(15143u, 22u)]);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> f32 {
    let var_0 = func_2(arg_0.x, !global1.a.a);
    var var_1 = var_0.e.a.b;
    var var_2 = func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -182f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, 378f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) - -1253f))), var_0.a.a.a).d;
    global0 = array<vec3<u32>, 30>();
    let var_3 = 103918u;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -294f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, true);
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(1000f, 965f), -1000f))))))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1648f, 1450f)), _wgslsmith_f_op_f32(f32(-1f) * -1141f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3475f * -1732f)))));
    let var_1 = func_3(!vec4<bool>(false & all(vec4<bool>(var_0.x, false, var_0.x, true)), true, !func_2(1217f, false).e.a.a, any(!vec3<bool>(global1.a.a, var_0.x, global1.a.a))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(680f, -636f, -535f))), vec3<f32>(429f, -165f, 874f), select(true, false, var_0.x)))))), u_input.c.x).x;
    global1 = Struct_2(Struct_1(!global1.a.a, ~(-59476i << (~global1.b.x % 32u))), vec3<u32>(~func_2(_wgslsmith_f_op_f32(sign(-1000f)), var_0.x).c.x, 4294967295u, u_input.c.x));
    global0 = array<vec3<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(_wgslsmith_add_i32(countOneBits(global2.x), func_2(-609f, global1.a.a).e.a.b)), u_input.d.x >> (~10306u % 32u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(945f, 1064f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1020f)))), vec2<bool>(!(!global1.a.a), var_0.x))));
}

