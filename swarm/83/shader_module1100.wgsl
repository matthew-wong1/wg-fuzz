struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: Struct_3,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false));

var<private> global1: vec3<i32>;

var<private> global2: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    let var_0 = select(vec4<bool>(true == (arg_1.b.x == firstLeadingBit(arg_0.b)), true, true, select(true, true, 338f >= _wgslsmith_f_op_f32(step(-407f, -3031f)))), select(select(global0[_wgslsmith_index_u32(38141u, 10u)], vec4<bool>(true, arg_0.b > 1u, true, true), false), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(28718u, arg_2.b.x), 10u)], !select(select(global0[_wgslsmith_index_u32(43797u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], false), vec4<bool>(false, true, false, false), true)), vec4<bool>(true, all(select(vec4<bool>(true, false, true, false), global0[_wgslsmith_index_u32(~10386u, 10u)], global0[_wgslsmith_index_u32(12799u, 10u)])), (arg_2.a.a >= _wgslsmith_f_op_f32(1160f + arg_1.a.a)) & true, true));
    global1 = ~(~vec3<i32>(firstTrailingBit(u_input.a.x) >> (~arg_0.b % 32u), -29642i, arg_0.a.x | -global1.x));
    let var_1 = arg_1.b.x;
    global0 = array<vec4<bool>, 10>();
    let var_2 = ~vec2<i32>(~(~u_input.a.x), global1.x);
    return 7225u;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = (~(~40234i) ^ -u_input.a.x) | ((i32(-1i) * -u_input.a.x) >> (func_3(Struct_2(vec3<i32>(u_input.a.x, -53286i, u_input.a.x), _wgslsmith_div_u32(21831u, arg_0), Struct_1(arg_1.x)), Struct_3(Struct_1(arg_1.x), ~vec4<u32>(70454u, arg_0, 33443u, 0u), Struct_1(1106f)), Struct_3(Struct_1(-581f), ~vec4<u32>(1u, arg_0, arg_0, arg_0), Struct_1(1371f))) % 32u));
    let var_1 = u_input.a.x;
    global0 = array<vec4<bool>, 10>();
    global2 = 388f;
    let var_2 = Struct_3(Struct_1(-188f), vec4<u32>(arg_0, abs(~(arg_0 ^ arg_0)), _wgslsmith_sub_u32(arg_0, arg_0), ~4294967295u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1034f, _wgslsmith_f_op_f32(-1000f - arg_1.x))))));
    return Struct_2(vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, -14338i, 1i, global1.x), vec4<i32>(-38700i, u_input.a.x, 20191i, var_1)), -vec4<i32>(u_input.a.x, var_1, var_1, u_input.a.x)) | u_input.a.x, firstLeadingBit(_wgslsmith_mod_i32(-36159i, abs(global1.x)))), var_2.b.x, var_2.c);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u) << (vec2<u32>(arg_2.b, 1u) % vec2<u32>(32u)), ~vec2<u32>(49090u, arg_2.b), vec2<u32>(43400u, 4294967295u)), vec2<u32>(abs(20140u), _wgslsmith_dot_vec4_u32(vec4<u32>(19924u, arg_2.b, 0u, arg_2.b), vec4<u32>(arg_2.b, 2299u, arg_2.b, arg_2.b)))), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(1142u, 0u), ~vec2<u32>(arg_2.b, arg_2.b)), abs(~vec2<u32>(arg_2.b, 26909u)))), vec2<u32>(1u, 22869u));
    global2 = arg_0;
    let var_1 = select(!vec3<bool>(false, any(arg_1), false), vec3<bool>(var_0.x == abs(~28047u), any(vec2<bool>(1i != u_input.a.x, arg_1.x)), !(~var_0.x <= arg_2.b)), !(!select(!vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true), !arg_1.x)));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(392f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.a * 1766f))), 248f))));
    let var_3 = var_0;
    return vec3<bool>(false, arg_1.x, !(~arg_2.a.x <= countOneBits(arg_2.a.x)) == !select(arg_1.x, !arg_1.x, global1.x < -2147483647i));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec3<i32>) -> i32 {
    let var_0 = all(select(vec3<bool>(true, true, true), !vec3<bool>(true, arg_1.b.x < arg_1.b.x, true), !func_4(_wgslsmith_f_op_f32(select(978f, 1000f, false)), vec2<bool>(true, false), func_2(1u, vec3<f32>(arg_1.c.a, arg_0, -307f)))));
    var var_1 = all(!global0[_wgslsmith_index_u32(0u, 10u)]);
    var_1 = var_0;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 * arg_0))), -210f), _wgslsmith_f_op_f32(floor(2512f)))) * _wgslsmith_f_op_f32(1935f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-961f - _wgslsmith_f_op_f32(arg_0 - arg_1.a.a)))));
    let var_2 = var_0;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global1.x, abs(~global1.x)), vec3<i32>(_wgslsmith_add_i32(func_1(-245f, Struct_3(Struct_1(-997f), vec4<u32>(47856u, 4294967295u, 16589u, 27081u), Struct_1(-1000f)), vec3<i32>(-2147483647i, -4749i, global1.x)), abs(global1.x)), global1.x, max(-u_input.a.x, u_input.a.x))) | (i32(-1i) * -2147483647i);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(413f, _wgslsmith_f_op_f32(round(664f)), false))) + 1371f));
    var_0 = -2147483647i;
    var var_1 = firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_vec2_u32(~vec2<u32>(11866u, 4294967295u), vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 34066u), vec2<u32>(4294967295u, 61272u), vec2<u32>(46947u, 68168u))))) & vec2<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<bool>(false, true, true))), vec3<u32>(~28416u, firstTrailingBit(1u), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1044f - -157f) + _wgslsmith_f_op_f32(f32(-1f) * -278f)), 1000f, _wgslsmith_f_op_f32(floor(func_2(64029u, vec3<f32>(189f, -160f, -949f)).c.a)), _wgslsmith_f_op_f32(min(-868f, -825f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, 345f), func_2(var_1.x, vec3<f32>(833f, -629f, -1714f)).c.a, 1124f, _wgslsmith_f_op_f32(-334f * 1320f)))), 1002f);
}

