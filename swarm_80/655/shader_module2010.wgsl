struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
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

var<private> global0: i32;

var<private> global1: array<vec2<bool>, 27>;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<f32>(-768f, 484f), 72361u), Struct_1(vec2<f32>(-1088f, 653f), 48534u), Struct_1(vec2<f32>(-480f, 1000f), 4294967295u), Struct_1(vec2<f32>(-698f, 1000f), 0u), Struct_1(vec2<f32>(1000f, 730f), 13882u), Struct_1(vec2<f32>(-108f, 467f), 86875u), Struct_1(vec2<f32>(825f, -1177f), 4717u), Struct_1(vec2<f32>(684f, 1253f), 9954u), Struct_1(vec2<f32>(1934f, 282f), 28935u), Struct_1(vec2<f32>(1000f, -587f), 20162u), Struct_1(vec2<f32>(1000f, 227f), 72331u), Struct_1(vec2<f32>(434f, 331f), 72451u), Struct_1(vec2<f32>(-1000f, -1301f), 99940u), Struct_1(vec2<f32>(-510f, -1000f), 0u), Struct_1(vec2<f32>(1346f, -427f), 0u), Struct_1(vec2<f32>(946f, 1000f), 6381u), Struct_1(vec2<f32>(-2077f, -2022f), 1u), Struct_1(vec2<f32>(328f, 1601f), 21123u), Struct_1(vec2<f32>(1000f, 781f), 1u), Struct_1(vec2<f32>(-319f, 1256f), 1u));

var<private> global3: array<i32, 29> = array<i32, 29>(2147483647i, 1i, -22204i, 53092i, 11422i, -9506i, i32(-2147483648), 1i, 1i, -1i, 2147483647i, -1i, -1i, 1i, 1i, 37078i, 5286i, 9327i, 1i, 2147483647i, 2147483647i, 1i, 67083i, -29165i, i32(-2147483648), i32(-2147483648), 2147483647i, -1i, -9139i);

var<private> global4: Struct_4;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec2<u32> {
    global3 = array<i32, 29>();
    var var_0 = reverseBits(_wgslsmith_clamp_vec3_u32(global4.a.b, ~min(~global4.a.b, vec3<u32>(751u, u_input.a, 1u)), vec3<u32>(arg_0.b.b | 1u, ~_wgslsmith_sub_u32(arg_0.b.b, u_input.d.x), _wgslsmith_clamp_u32(5937u, 0u, firstTrailingBit(1u)))));
    var var_1 = -22290i;
    var var_2 = var_0.x;
    var_0 = ~global4.a.b;
    return countOneBits(var_0.yx >> (max(var_0.yz << (u_input.d % vec2<u32>(32u)), var_0.zx << (var_0.zy % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global2 = array<Struct_1, 20>();
    let var_0 = Struct_3(global2[_wgslsmith_index_u32(u_input.a, 20u)], global4.a.b, Struct_1(global4.a.c.a, ~max(u_input.d.x, max(4294967295u, 4294967295u))));
    global3 = array<i32, 29>();
    let var_1 = func_3(Struct_2(global2[_wgslsmith_index_u32(~44332u << (var_0.a.b % 32u), 20u)], var_0.a, _wgslsmith_div_u32(u_input.a, select(global4.a.a.b, u_input.a, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1780f, -1000f, global4.a.a.a.x), vec3<f32>(1000f, -468f, var_0.a.a.x), arg_0))), _wgslsmith_dot_vec3_i32(countOneBits(u_input.c.xwx), vec3<i32>(u_input.c.x, 48641i, u_input.c.x))), firstLeadingBit(_wgslsmith_add_u32(~u_input.a, _wgslsmith_mod_u32(u_input.d.x, var_0.a.b)))) >> (var_0.b.zx % vec2<u32>(32u));
    let var_2 = Struct_3(global2[_wgslsmith_index_u32(var_1.x, 20u)], vec3<u32>(var_0.c.b, u_input.d.x, var_0.b.x), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global4.a.c.b, 28862u) << (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(21644u, 4294967295u, var_1.x, 4294967295u), ~vec4<u32>(4294967295u, 4294967295u, 20175u, u_input.d.x)), min(var_1.x, 81190u) | 4294967295u) % 32u), 20u)]);
    return Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.c.a.x, var_0.a.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1145f, -1559f)) + _wgslsmith_f_op_f32(-1894f * -1948f))), _wgslsmith_div_u32(~_wgslsmith_mod_u32(u_input.d.x, 1u), countOneBits(var_1.x))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.a.x, -1139f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-410f, global4.a.c.a.x) * global4.a.c.a))), 37720u), global4.a.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-global4.a.c.a.x), global4.a.c.a.x, _wgslsmith_div_f32(global4.a.c.a.x, 925f))))), _wgslsmith_dot_vec3_i32(vec3<i32>(128315i & u_input.c.x, select(-2147483647i, -41525i, arg_0), reverseBits(u_input.b.x)), -u_input.c.wwz) & ~(~0i));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = -40818i ^ ~min(-1i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 103087u, var_0.c, global4.a.c.b), vec4<u32>(1u, 35030u, global4.a.b.x, 19547u)) >> ((var_0.c & 15614u) % 32u), 29u)]);
    let var_2 = var_0.d;
    global1 = array<vec2<bool>, 27>();
    let var_3 = firstLeadingBit(-func_2(true).e ^ 1i) < u_input.b.x;
    return Struct_3(func_2(var_3).a, _wgslsmith_sub_vec3_u32(global4.a.b, _wgslsmith_div_vec3_u32(reverseBits(~vec3<u32>(global4.a.b.x, arg_0.a.b, global4.a.c.b)), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_0.c, arg_0.a.b), global4.a.b)))), func_2(select(true, !var_3, all(select(vec3<bool>(var_3, var_3, var_3), vec3<bool>(false, var_3, var_3), vec3<bool>(var_3, false, var_3))))).b);
}

fn func_5(arg_0: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-1657f + -1000f);
    let var_1 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-243f * _wgslsmith_f_op_f32(var_0 - -1191f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(430f)) * _wgslsmith_f_op_f32(arg_0.a.c.a.x + arg_0.a.c.a.x))), arg_0.a.a.b), global4.a.b, func_2(!(~global3[_wgslsmith_index_u32(u_input.a, 29u)] <= -u_input.e)).b);
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.a.a.x, global4.a.a.a.x, arg_0.a.a.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1000f, var_1.a.a.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1001f, arg_0.a.a.a.x, var_0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.c.a.x, 1644f, -1710f) * vec3<f32>(arg_0.a.c.a.x, 818f, var_1.a.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.a.c.a.x, func_4(Struct_2(Struct_1(vec2<f32>(-1978f, 570f), 41518u), Struct_1(vec2<f32>(var_1.c.a.x, 1164f), arg_0.a.b.x), global4.a.b.x, vec3<f32>(-109f, var_0, -818f), -34440i), vec2<i32>(u_input.c.x, u_input.e)).c.a.x, func_4(Struct_2(var_1.c, arg_0.a.c, var_1.b.x, vec3<f32>(global4.a.a.a.x, -403f, global4.a.a.a.x), 10325i), u_input.b).a.a.x))))));
    var var_3 = var_1;
    global2 = array<Struct_1, 20>();
    return global4.a.a.b;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_4) -> i32 {
    var var_0 = arg_3.a.b;
    let var_1 = _wgslsmith_f_op_f32(-global4.a.a.a.x);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_5(Struct_4(func_4(func_2(true), vec2<i32>(global3[_wgslsmith_index_u32(1u, 29u)], 0i)))), ~abs(_wgslsmith_mod_u32(1u, ~0u))), 20u)];
    let var_3 = func_4(func_2(!all(vec2<bool>(false, true)) | true), abs(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, 1i), vec2<i32>(-19745i, u_input.c.x)), -vec2<i32>(arg_2.x, 0i)), firstTrailingBit(reverseBits(vec2<i32>(u_input.e, 2147483647i)))))).c;
    var var_4 = any(vec4<bool>(all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), false, false, select(all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), true)));
    return -21499i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global4.a.c, (global4.a.b & vec3<u32>(_wgslsmith_add_u32(22672u, 72518u), ~global4.a.a.b, ~global4.a.b.x)) & (firstLeadingBit(vec3<u32>(36125u, 0u, global4.a.b.x) >> (vec3<u32>(u_input.d.x, u_input.d.x, global4.a.b.x) % vec3<u32>(32u))) ^ (firstTrailingBit(global4.a.b) ^ global4.a.b)), global2[_wgslsmith_index_u32(global4.a.c.b, 20u)]);
    let var_1 = firstTrailingBit(_wgslsmith_div_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(global4.a.b.x, 46067u, u_input.a, 0u))), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 5829u, var_0.b.x, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 49904u, 81587u, 0u), vec4<u32>(var_0.b.x, global4.a.b.x, 18532u, u_input.a)))) >> (~firstLeadingBit(firstTrailingBit(vec4<u32>(var_0.c.b, var_0.c.b, global4.a.c.b, 4294967295u))) % vec4<u32>(32u)));
    let var_2 = u_input.c.wz;
    global0 = func_1(712f, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global4.a.c.a))), u_input.a), u_input.c, Struct_4(global4.a)) | -2147483647i;
    var var_3 = select(!vec2<bool>(true, (var_1.x << (0u % 32u)) > 1u), !(!select(global1[_wgslsmith_index_u32(func_5(Struct_4(Struct_3(Struct_1(var_0.c.a, u_input.a), global4.a.b, Struct_1(global4.a.c.a, 66100u)))), 27u)], !global1[_wgslsmith_index_u32(0u, 27u)], true)), false);
    global0 = u_input.c.x;
    global3 = array<i32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(global4.a.c.a);
}

