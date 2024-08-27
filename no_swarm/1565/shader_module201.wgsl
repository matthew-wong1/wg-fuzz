struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(-1i, -33112i, -1i), vec3<i32>(5233i, -31991i, -21646i), vec3<i32>(0i, 1i, -27918i), vec3<i32>(-6868i, 17030i, -41063i), vec3<i32>(19274i, -51596i, 2147483647i), vec3<i32>(1i, 7233i, i32(-2147483648)), vec3<i32>(2147483647i, 70434i, 2147483647i), vec3<i32>(82578i, i32(-2147483648), 22847i), vec3<i32>(i32(-2147483648), -19978i, -12470i), vec3<i32>(-1i, 59843i, i32(-2147483648)), vec3<i32>(42295i, 2147483647i, 2828i));

var<private> global1: array<bool, 31> = array<bool, 31>(false, true, false, true, false, false, true, false, false, true, true, true, true, true, true, true, true, true, true, false, false, true, false, true, false, false, true, true, false, false, false);

var<private> global2: array<vec4<bool>, 8>;

var<private> global3: u32 = 68448u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> vec4<u32> {
    let var_0 = arg_1.e.yz;
    global2 = array<vec4<bool>, 8>();
    let var_1 = Struct_4(Struct_2(arg_1.a, -401f, i32(-1i) * -(u_input.c >> (43489u % 32u)), global0[_wgslsmith_index_u32(arg_1.a.c.x, 11u)], vec3<bool>(true, true, true)));
    var var_2 = var_1.a;
    var_2 = var_1.a;
    return var_2.a.c;
}

fn func_2() -> Struct_1 {
    return Struct_1(vec2<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 46556u, u_input.d), vec4<u32>(1u, 32686u, 20474u, u_input.d))), 20257u), _wgslsmith_div_i32(~abs(u_input.b.x), 88592i) ^ u_input.c, ~(max(func_3(global1[_wgslsmith_index_u32(52322u, 31u)], Struct_2(Struct_1(vec2<u32>(4294967295u, u_input.a), u_input.c, vec4<u32>(4294967295u, 0u, 19341u, u_input.a), u_input.d), 228f, -3396i, global0[_wgslsmith_index_u32(u_input.a, 11u)], vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a, 31u)])), 65433u), ~vec4<u32>(44409u, 1u, u_input.d, u_input.d)) & _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 28332u, u_input.d, 81906u), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), vec4<u32>(26773u, 4294967295u, 4294967295u, u_input.d))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, u_input.d), ~vec3<u32>(32682u, u_input.a, 0u)), ~vec3<u32>(~0u, 1u, 4294967295u)));
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> u32 {
    let var_0 = func_2();
    var var_1 = Struct_2(arg_1.a.a, _wgslsmith_f_op_f32(-160f * -2004f), arg_1.a.d.x, ~reverseBits(min(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.d, 11u)]), arg_1.a.d)), !vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(arg_1.a.a.c, var_0.c), 5445u), 31u)], true, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(34580u, 55048u, arg_0), 31u)]));
    var var_2 = all(vec2<bool>(any(select(select(vec3<bool>(true, arg_1.a.e.x, var_1.e.x), arg_1.a.e, vec3<bool>(global1[_wgslsmith_index_u32(var_1.a.c.x, 31u)], true, true)), vec3<bool>(arg_1.a.e.x, global1[_wgslsmith_index_u32(129241u, 31u)], false), vec3<bool>(true, arg_1.a.e.x, false))), any(vec4<bool>(any(global2[_wgslsmith_index_u32(24307u, 8u)]), !global1[_wgslsmith_index_u32(var_1.a.d, 31u)], true, any(arg_1.a.e.zy)))));
    var var_3 = ~26511u;
    return 117170u;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: u32) -> f32 {
    let var_0 = Struct_2(Struct_1(vec2<u32>(1u, ~arg_0.a.c.x & 0u), 23427i, vec4<u32>(u_input.a << (_wgslsmith_sub_u32(arg_3, 40872u) % 32u), 10335u, arg_0.a.c.x, 0u), 10687u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b + arg_0.b))), i32(-1i) * -func_2().b, vec3<i32>(arg_0.c, max(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-56636i, 2147483647i), vec2<i32>(0i, -29624i)), ~vec2<i32>(-14682i, arg_0.a.b)), max(_wgslsmith_add_i32(-1i, -1i), -2147483647i)), _wgslsmith_clamp_i32(arg_0.c, 1i, -1i)), select(!arg_0.e, arg_1, select(arg_1, arg_0.e, !(!vec3<bool>(global1[_wgslsmith_index_u32(arg_3, 31u)], global1[_wgslsmith_index_u32(arg_3, 31u)], false)))));
    var var_1 = Struct_4(arg_0);
    global1 = array<bool, 31>();
    global2 = array<vec4<bool>, 8>();
    global2 = array<vec4<bool>, 8>();
    return _wgslsmith_f_op_f32(trunc(-298f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 8>();
    var var_0 = _wgslsmith_dot_vec3_u32(max(vec3<u32>(~0u, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 113478u), vec3<u32>(u_input.d, 94652u, 31761u))), vec3<u32>(~5850u, u_input.a, u_input.d)) ^ _wgslsmith_div_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.d), vec3<u32>(0u, u_input.d, 18467u))), select(~vec3<u32>(u_input.d, u_input.d, 0u), vec3<u32>(43228u, u_input.d, 1u) >> (vec3<u32>(4294967295u, 3306u, u_input.a) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(68715u, 31u)])), ~_wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, 4294967295u, u_input.d)), vec3<u32>(4294967295u, u_input.d ^ u_input.d, 0u)));
    global1 = array<bool, 31>();
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1444f, 772f, _wgslsmith_f_op_f32(-964f + _wgslsmith_f_op_f32(-1000f * -1169f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec2<u32>(u_input.d, 0u), u_input.b.x, vec4<u32>(1u, u_input.a, u_input.a, u_input.a), u_input.a), -1000f, u_input.b.x, global0[_wgslsmith_index_u32(u_input.d, 11u)], vec3<bool>(false, false, true)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], false, false), vec3<i32>(-2147483647i, u_input.c, u_input.b.x), func_1(u_input.a, Struct_4(Struct_2(Struct_1(vec2<u32>(64626u, 0u), 0i, vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), u_input.a), -1184f, u_input.c, vec3<i32>(u_input.c, u_input.c, 0i), vec3<bool>(global1[_wgslsmith_index_u32(61806u, 31u)], global1[_wgslsmith_index_u32(u_input.d, 31u)], false)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -116f), _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec2<u32>(4294967295u, 90998u), u_input.c, vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a), u_input.a), -2350f, 8188i, vec3<i32>(u_input.b.x, u_input.c, u_input.c), vec3<bool>(global1[_wgslsmith_index_u32(0u, 31u)], true, false)), vec3<bool>(true, true, true), vec3<i32>(1i, u_input.b.x, u_input.c), 66333u)))))));
    let var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_2.xyy, var_2.xxz))), -1076f);
}

