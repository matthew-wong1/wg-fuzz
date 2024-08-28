struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(1u, 4294967295u, 2389u, 4294967295u), vec4<u32>(24018u, 4294967295u, 0u, 31666u), vec4<u32>(0u, 0u, 42659u, 56254u), vec4<u32>(4294967295u, 1u, 1u, 402u), vec4<u32>(0u, 4294967295u, 3910u, 0u));

var<private> global1: array<bool, 16> = array<bool, 16>(true, true, false, false, true, true, true, false, false, true, false, true, true, false, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.xxw, arg_1.wxz, global1[_wgslsmith_index_u32(u_input.a.x, 16u)])), vec3<f32>(arg_1.x, arg_1.x, 454f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.zyz, arg_1.yww)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -594f, arg_1.x) * vec3<f32>(arg_1.x, arg_1.x, 812f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1297f, arg_1.x, -140f) + vec3<f32>(2063f, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec3_f32(arg_1.yxx * _wgslsmith_f_op_vec3_f32(arg_1.yyy * vec3<f32>(-551f, arg_1.x, arg_1.x))))));
    global0 = array<vec4<u32>, 5>();
    let var_1 = global1[_wgslsmith_index_u32(0u, 16u)];
    var var_2 = arg_0.x;
    let var_3 = !(!vec2<bool>(all(select(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec3<bool>(true, false, global1[_wgslsmith_index_u32(3146u, 16u)]), vec3<bool>(global1[_wgslsmith_index_u32(51054u, 16u)], global1[_wgslsmith_index_u32(u_input.b.x, 16u)], false))), any(select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(1u, 16u)]))));
    return (~(~58905u) >> (~(~(~u_input.a.x)) % 32u)) << (u_input.b.x % 32u);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(815f, 120f))))));
    let var_1 = Struct_5(var_0.a);
    let var_2 = Struct_3(Struct_1(select(vec3<bool>(!global1[_wgslsmith_index_u32(4294967295u, 16u)], any(vec4<bool>(false, global1[_wgslsmith_index_u32(50011u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(u_input.b.x, 16u)])), u_input.c.x >= u_input.c.x), vec3<bool>(global1[_wgslsmith_index_u32(func_3(vec4<i32>(u_input.c.x, 0i, 1i, u_input.c.x), vec4<f32>(-290f, var_0.a.x, var_0.a.x, -265f)), 16u)], u_input.a.x <= 4294967295u, true), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(18787u, 16u)], true)), global0[_wgslsmith_index_u32(u_input.b.x, 5u)], u_input.c.yz), Struct_1(vec3<bool>(!global1[_wgslsmith_index_u32(max(37859u, u_input.b.x), 16u)], max(u_input.c.x, -2383i) <= (i32(-1i) * -42238i), false), vec4<u32>(70106u, u_input.a.x, ~(~u_input.b.x), select(~4294967295u, _wgslsmith_clamp_u32(4294967295u, 77467u, u_input.b.x), global1[_wgslsmith_index_u32(~0u, 16u)])), _wgslsmith_sub_vec2_i32(u_input.c.xy, vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, 46927i), u_input.c.x))), true);
    var var_3 = global1[_wgslsmith_index_u32(~firstTrailingBit(u_input.a.x), 16u)];
    var_0 = Struct_5(var_0.a);
    return Struct_2(u_input.c.x, var_2.b, ~((firstTrailingBit(var_2.a.b.x) | countOneBits(4294967295u)) ^ max(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-442f, var_1.a.x, var_1.a.x, var_1.a.x)))))))));
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: f32, arg_3: vec2<i32>) -> Struct_2 {
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = -125f;
    let var_1 = !select(func_2().b.a.yz, arg_0.b.a.yy, arg_0.b.a.xy);
    global0 = array<vec4<u32>, 5>();
    let var_2 = max(1u, arg_1.b.b.x >> (firstLeadingBit(func_1(arg_1, select(0u, 1u, var_1.x), _wgslsmith_f_op_f32(-3307f + -871f), vec2<i32>(arg_1.a, 41291i)).b.b.x) % 32u));
    let var_3 = global1[_wgslsmith_index_u32(reverseBits(6166u), 16u)] | false;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -1368f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + func_2().d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(Struct_4(u_input.c.x, Struct_1(vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(u_input.b.x, 5u)], vec2<i32>(u_input.c.x, 0i)), vec2<i32>(1i, u_input.c.x), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(65231u, 16u)]), vec3<f32>(352f, -1059f, 1534f)), _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(43628u, 0u)), -2343f, -vec2<i32>(u_input.c.x, 38502i)), Struct_4(u_input.c.x, func_2().b, u_input.c.wy, select(vec2<bool>(true, global1[_wgslsmith_index_u32(41543u, 16u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 16u)]), global1[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec3<f32>(1134f, 410f, -1002f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(812f))), ~0i))));
    var var_1 = firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.a.xy, min(~reverseBits(vec2<u32>(0u, 16736u)), u_input.b.zx)));
    let var_2 = global1[_wgslsmith_index_u32(var_1.x, 16u)];
    let var_3 = ~(~vec2<u32>(_wgslsmith_mult_u32(1u, ~4294967295u), var_1.x));
    var var_4 = Struct_2(func_2().a, func_2().b, _wgslsmith_dot_vec4_u32(~(~(~global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), vec4<u32>(u_input.b.x, 53870u, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1281f * -914f) + _wgslsmith_f_op_f32(-619f - -820f)), 985f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -268f), -1712f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-613f - 1000f) + _wgslsmith_div_f32(-864f, -134f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-202f, -1000f, 866f, -312f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(584f, 998f, 801f, 1357f) * vec4<f32>(915f, -1725f, 1990f, 1012f))))));
    var_1 = func_2().b.b.yx;
    let var_5 = func_2().b;
    var_4 = func_2();
    var_4 = func_1(Struct_4(min(var_5.c.x, _wgslsmith_div_i32(1i >> (var_5.b.x % 32u), var_4.b.c.x)), Struct_1(vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a.x & var_1.x, 16u)]), var_5.b, vec2<i32>(var_5.c.x, ~var_4.b.c.x)), ~(-(~vec2<i32>(2147483647i, -1i))), !select(var_4.b.a.yx, var_4.b.a.yz, vec2<bool>(var_4.b.a.x, global1[_wgslsmith_index_u32(var_5.b.x, 16u)])), _wgslsmith_f_op_vec3_f32(var_4.d.yww - vec3<f32>(_wgslsmith_f_op_f32(abs(-189f)), _wgslsmith_f_op_f32(var_4.d.x - var_4.d.x), _wgslsmith_f_op_f32(var_4.d.x * -561f)))), ~(~26749u), _wgslsmith_f_op_f32(-var_4.d.x), var_5.c);
    let x = u_input.a;
    s_output = StorageBuffer(min(5561i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_4.a, u_input.c.x) >> (vec3<u32>(var_3.x, 0u, 59910u) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, u_input.c.x, 52450i))) >> ((min(19587u ^ var_3.x, _wgslsmith_mod_u32(var_4.c, 35799u)) & ~(~1u)) % 32u), ~56787i);
}

