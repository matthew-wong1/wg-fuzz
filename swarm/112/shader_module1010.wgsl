struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10>;

var<private> global1: vec4<u32>;

var<private> global2: array<bool, 29> = array<bool, 29>(true, false, false, true, true, false, true, false, true, true, false, true, false, true, true, false, true, true, true, true, true, true, false, true, false, true, false, true, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: i32, arg_3: f32) -> vec4<i32> {
    let var_0 = ~(~select(select(-vec3<i32>(u_input.b, arg_2, 29160i), ~vec3<i32>(arg_1.b, -1i, 0i), false), vec3<i32>(i32(-1i) * -24861i, u_input.b >> (arg_1.a.x % 32u), i32(-1i) * -2568i), vec3<bool>(false, any(vec3<bool>(arg_0, true, true)), true)));
    global2 = array<bool, 29>();
    var var_1 = _wgslsmith_f_op_f32(1029f + _wgslsmith_f_op_f32(-arg_3));
    global0 = array<Struct_4, 10>();
    let var_2 = Struct_1(1000f, ~firstTrailingBit(select(vec4<u32>(4567u, u_input.a.x, 1917u, 6273u), ~vec4<u32>(u_input.a.x, arg_1.a.x, 75550u, global1.x), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 29u)])));
    return ~(-vec4<i32>(i32(-1i) * -33077i, u_input.b << (36913u % 32u), ~u_input.b, arg_1.b) ^ (~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -1511i, arg_2, u_input.b), vec4<i32>(arg_2, arg_2, 0i, u_input.b)) << (~var_2.b % vec4<u32>(32u))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = -func_3(((arg_1.b.x >> (79313u % 32u)) ^ ~0u) < (u_input.a.x ^ 32658u), global0[_wgslsmith_index_u32(0u, 10u)], abs(-u_input.b >> (46172u % 32u)), -1313f);
    global2 = array<bool, 29>();
    var var_1 = min(10219i | ~(-max(1i, u_input.b)), _wgslsmith_add_i32(min(-49840i, _wgslsmith_dot_vec2_i32(var_0.xw, abs(vec2<i32>(-1i, u_input.b)))), ~_wgslsmith_dot_vec3_i32(-var_0.ywy, -vec3<i32>(0i, u_input.b, var_0.x))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.a, 422f, arg_1.a))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2) + var_2) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2, vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.a)), arg_1.a, 742f, _wgslsmith_f_op_f32(arg_1.a * arg_1.a)))));
    return ~arg_1.b.x;
}

fn func_1() -> vec3<bool> {
    global0 = array<Struct_4, 10>();
    var var_0 = select(u_input.a, ~vec3<u32>(~30488u, min(func_2(vec4<bool>(global2[_wgslsmith_index_u32(24942u, 29u)], false, global2[_wgslsmith_index_u32(13791u, 29u)], false), Struct_1(-312f, vec4<u32>(u_input.c.x, u_input.c.x, 0u, 1u))), 1580u), _wgslsmith_add_u32(_wgslsmith_mult_u32(global1.x, 0u), 22058u)), global2[_wgslsmith_index_u32(1u, 29u)]);
    global2 = array<bool, 29>();
    global0 = array<Struct_4, 10>();
    let var_1 = vec2<bool>(any(select(!vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 29u)], false, global2[_wgslsmith_index_u32(1800u, 29u)]), !vec4<bool>(true, false, global2[_wgslsmith_index_u32(var_0.x, 29u)], true), global2[_wgslsmith_index_u32(0u, 29u)])), any(vec4<bool>(global2[_wgslsmith_index_u32(~global1.x, 29u)], all(vec2<bool>(true, true)), !any(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)])), any(vec3<bool>(true, true, true)))));
    return !vec3<bool>(true, any(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 29u)], var_1.x), vec3<bool>(true, var_1.x, var_1.x), false)), !(all(vec4<bool>(var_1.x, false, false, global2[_wgslsmith_index_u32(global1.x, 29u)])) || true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec2<bool>(global2[_wgslsmith_index_u32(countOneBits(~global1.x), 29u)], global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.c.x, 27604u, global1.x), 29u)]), vec2<bool>(true, true), all(func_1()));
    let var_1 = !var_0.x;
    var var_2 = true;
    var_2 = (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(3493u, global1.x, u_input.a.x, 102970u)), ~(~vec4<u32>(0u, 3925u, 0u, 57521u))) << (~(10804u << (u_input.c.x % 32u)) % 32u)) > ~_wgslsmith_mod_u32(max(u_input.c.x << (1u % 32u), u_input.a.x), _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(7573u, 891u)));
    var var_3 = ~u_input.c;
    let var_4 = !(!select(!vec2<bool>(true, var_1), vec2<bool>(!var_1, global2[_wgslsmith_index_u32(0u, 29u)]), any(select(vec4<bool>(true, true, false, false), vec4<bool>(var_1, true, var_0.x, var_0.x), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(33909u, 29u)], var_0.x)))));
    var var_5 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(~4294967295u, ~0u, min(70065u, var_3.x) >> (0u % 32u), u_input.c.x), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, 13785u, global1.x), _wgslsmith_add_vec3_u32(u_input.a, u_input.a)), select(~global1.x, u_input.a.x, _wgslsmith_div_u32(0u, 1u) <= u_input.c.x), ~global1.x & 2847u, min(~(~global1.x), _wgslsmith_div_u32(~u_input.a.x, ~u_input.c.x))), vec4<u32>(min(~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, global1.x, 0u, global1.x), vec4<u32>(4294967295u, var_3.x, 29942u, u_input.a.x)) & _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, 9602u, 54464u, u_input.c.x), vec4<u32>(global1.x, 1u, 0u, 37582u))), _wgslsmith_dot_vec4_u32((vec4<u32>(global1.x, u_input.a.x, u_input.a.x, 59858u) & vec4<u32>(var_3.x, var_3.x, 18771u, 29390u)) << ((vec4<u32>(var_3.x, u_input.a.x, global1.x, 45339u) & vec4<u32>(var_3.x, global1.x, 37941u, 498u)) % vec4<u32>(32u)), ~select(vec4<u32>(1u, var_3.x, var_3.x, 0u), vec4<u32>(4294967295u, global1.x, var_3.x, global1.x), true)), abs(~4294967295u), 17894u));
    var var_6 = -(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) | vec4<i32>(u_input.b, -1i, -1i, u_input.b), -vec4<i32>(2147483647i, 13043i, u_input.b, u_input.b)), ~u_input.b));
    let var_7 = Struct_2(-102f, min(vec2<u32>(select(var_5.x, ~global1.x, var_1), 71181u), ~global1.zw), abs(58618i), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(0i, min(vec4<i32>(-30605i, var_6.x, var_6.x, -(var_7.c ^ u_input.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_6.x, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_6.x, var_7.c, var_6.x), vec3<i32>(var_7.c, -1i, u_input.b)), 1i), firstTrailingBit(vec4<i32>(1i, 2147483647i, var_6.x, 2147483647i) | vec4<i32>(var_6.x, 2147483647i, 0i, u_input.b)))), countOneBits(~var_5.xzy) | vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_5.x, 21014u, 2716u, 1u), vec4<u32>(14884u, global1.x, var_3.x, 18300u)), select(vec4<u32>(118582u, 67996u, 61797u, 32380u), vec4<u32>(var_3.x, global1.x, 4294967295u, var_5.x), var_0.x)), min(var_5.x, func_2(vec4<bool>(true, var_4.x, true, var_1), Struct_1(-1396f, vec4<u32>(global1.x, global1.x, global1.x, 4294967295u)))), global1.x), _wgslsmith_f_op_f32(select(var_7.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_7.a - 1000f), _wgslsmith_f_op_f32(var_7.a + -1973f))), _wgslsmith_div_f32(var_7.a, _wgslsmith_f_op_f32(f32(-1f) * -141f)), var_4.x)), (true | any(vec3<bool>(false, var_4.x, false))) || !all(vec4<bool>(false, false, true, false)))));
}

