struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(2028i, 1i, 2147483647i, 26933i, i32(-2147483648), 1i, -15824i, -24929i, 6163i, 2147483647i, 25164i, 0i, 17930i, 0i, 747i, 18057i, -32489i, -61307i, i32(-2147483648), 0i, 2209i, 27114i, i32(-2147483648));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(Struct_2(vec4<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), _wgslsmith_div_u32(3937u, u_input.a.x) > 1u, true, true), Struct_1(vec3<i32>(_wgslsmith_mult_i32(0i, u_input.d.x), ~(-1i), global0[_wgslsmith_index_u32(~0u, 23u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.b.x), vec4<u32>(u_input.b.x, 124152u, u_input.b.x, 4294967295u), u_input.a) & _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b.x, 25993u), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.a.x)), vec4<bool>(true, true, true, true), (vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 0i, global0[_wgslsmith_index_u32(4212u, 23u)], u_input.d.x) & vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 14119i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)])) | _wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.d.x, u_input.e, u_input.d.x), vec4<i32>(u_input.d.x, u_input.c, 2147483647i, -5220i)))));
    let var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(-824f)), _wgslsmith_div_f32(1322f, -321f), _wgslsmith_f_op_f32(round(-1000f))), vec3<f32>(_wgslsmith_f_op_f32(sign(-1351f)), _wgslsmith_f_op_f32(-1453f + -1652f), _wgslsmith_f_op_f32(round(1034f))), true))), (1i & -u_input.e) | 0i, var_0, var_0.a);
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    let var_2 = Struct_4(var_1.a.a);
    return var_2.a.x;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec3<u32>) -> u32 {
    let var_0 = abs(~_wgslsmith_mult_vec3_u32(u_input.a.zyw, abs(_wgslsmith_add_vec3_u32(arg_2, vec3<u32>(60915u, 1u, 4294967295u)))));
    global0 = array<i32, 23>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(361f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1620f + 241f), _wgslsmith_f_op_f32(round(481f))))));
    let var_2 = arg_1;
    var var_3 = !(!(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 23u)] == u_input.c, any(vec3<bool>(arg_0, arg_0, false)))));
    return ~max(_wgslsmith_mod_u32(~arg_2.x, _wgslsmith_add_u32(~var_2, var_2)), abs(min(3564u, 1912u) ^ max(var_2, arg_2.x)));
}

fn func_1() -> vec4<i32> {
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    var var_0 = min(_wgslsmith_mod_u32(u_input.a.x, 0u), select(~(~1u), reverseBits(func_2(true, 58677u, u_input.a.xyy)), ~99679u < ~u_input.b.x)) | 0u;
    var var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, -1460f, _wgslsmith_f_op_f32(-181f + -339f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1014f, 411f, -159f) - vec3<f32>(-1958f, 1978f, -604f)))), _wgslsmith_dot_vec3_i32(max(firstLeadingBit(vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(35428u, 23u)], u_input.d.x) << (u_input.a.zyx % vec3<u32>(32u))), ~(~vec3<i32>(-1i, u_input.c, u_input.c))), _wgslsmith_div_vec3_i32(abs(vec3<i32>(2147483647i, -2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 23u)])) | ~vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], u_input.c, global0[_wgslsmith_index_u32(0u, 23u)]), vec3<i32>(global0[_wgslsmith_index_u32(~1281u, 23u)], i32(-1i) * -13314i, 1i))), Struct_3(Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], -13464i), ~vec4<u32>(22037u, 95156u, u_input.b.x, 19098u), vec4<bool>(true, true, true, true), firstTrailingBit(vec4<i32>(u_input.d.x, -1i, u_input.e, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]))))), Struct_2(!vec4<bool>(true, select(false, false, true), true, all(vec4<bool>(false, true, true, true))), Struct_1(vec3<i32>(max(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), -global0[_wgslsmith_index_u32(18527u, 23u)], i32(-1i) * -2147483647i), vec4<u32>(u_input.b.x, 71473u, u_input.a.x, ~27361u), vec4<bool>(all(vec2<bool>(true, true)), true, any(vec3<bool>(false, true, true)), all(vec2<bool>(false, true))), select(-vec4<i32>(0i, u_input.c, -1i, global0[_wgslsmith_index_u32(21571u, 23u)]), _wgslsmith_div_vec4_i32(vec4<i32>(-58681i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 2147483647i, global0[_wgslsmith_index_u32(60967u, 23u)]), vec4<i32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 0i, global0[_wgslsmith_index_u32(u_input.b.x, 23u)])), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.a - var_1.a.a)) + var_1.a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x), var_1.a.a)), true | !(!var_1.c.a.a.x))));
    return vec4<i32>(_wgslsmith_mod_i32(-26299i, var_1.d.b.d.x << (var_1.c.a.b.b.x % 32u)), 0i, -abs(-58578i ^ _wgslsmith_add_i32(-1i, u_input.c)), -51652i);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = ~arg_0.a.x;
    global0 = array<i32, 23>();
    var var_1 = countOneBits(arg_0.b);
    global0 = array<i32, 23>();
    let var_2 = arg_2.b;
    return Struct_3(Struct_2(select(select(vec4<bool>(var_2.c.x, var_2.c.x, false, true), arg_0.c, true), select(vec4<bool>(arg_0.c.x, arg_2.a.x, arg_2.b.c.x, arg_0.c.x), !arg_0.c, vec4<bool>(arg_0.c.x, true, true, false)), arg_2.a.x), Struct_1(-select(var_2.d.xyy, arg_0.a, arg_0.c.x), firstTrailingBit(u_input.a), var_2.c, ~(~vec4<i32>(2147483647i, arg_0.d.x, global0[_wgslsmith_index_u32(1u, 23u)], -28749i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 23>();
    let var_0 = func_4(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c | 2147483647i, u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.e, -1i, 38985i), vec4<i32>(-1i, 31546i, u_input.e, u_input.e))), vec3<i32>(-1i) * -vec3<i32>(global0[_wgslsmith_index_u32(1u, 23u)], -27533i, 2147483647i)), abs(countOneBits(~vec4<u32>(57758u, u_input.b.x, u_input.a.x, u_input.b.x))), vec4<bool>(true, true, true, true), func_1()), any(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false))), Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.c > 23576i, false, true), !all(vec3<bool>(true, false, false))), Struct_1(~vec3<i32>(-19943i, 55700i, u_input.c) << (reverseBits(u_input.a.yzz) % vec3<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~u_input.b.x, ~40949u, u_input.a.x), vec4<bool>(false, true, true, select(true, true, true)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 29932i, global0[_wgslsmith_index_u32(15059u, 23u)], u_input.c), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.e, 1i, 1i)), select(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], -27325i, u_input.d.x, 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], -54189i, u_input.e), vec4<bool>(false, false, true, false))))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), 0u < ~u_input.b.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(179f, 478f))), _wgslsmith_f_op_f32(f32(-1f) * -589f), _wgslsmith_f_op_f32(f32(-1f) * -601f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1024f), _wgslsmith_f_op_f32(max(-1004f, 1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1207f - -565f), _wgslsmith_f_op_f32(floor(-1719f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1862f * 847f)))))));
    global0 = array<i32, 23>();
    let var_2 = vec3<i32>(reverseBits(abs(u_input.d.x)), -(~var_0.a.b.d.x) & (~_wgslsmith_sub_i32(var_0.a.b.a.x, 0i) >> (var_0.a.b.b.x % 32u)), -77544i);
    let x = u_input.a;
    s_output = StorageBuffer(-58492i, 773f, var_1.x, firstLeadingBit(var_0.a.b.b.xy));
}

