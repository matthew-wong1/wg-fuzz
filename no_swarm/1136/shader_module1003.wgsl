struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28>;

var<private> global1: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(30531i, i32(-2147483648), -22213i, 8343i), vec4<i32>(-1i, -1i, 2147483647i, 22316i), vec4<i32>(1771i, 1i, -1i, -29149i), vec4<i32>(2147483647i, -20439i, -24323i, 2147483647i), vec4<i32>(-1i, -20305i, -8699i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), 0i, 76735i), vec4<i32>(2147483647i, -1i, i32(-2147483648), 6183i), vec4<i32>(-55665i, 1978i, -1i, 0i), vec4<i32>(2147483647i, -79811i, -1i, -5739i), vec4<i32>(0i, -9125i, 2147483647i, 20475i), vec4<i32>(0i, i32(-2147483648), 36632i, i32(-2147483648)), vec4<i32>(-37972i, 14667i, 1i, -6734i), vec4<i32>(4786i, -30444i, -23950i, 1i), vec4<i32>(2147483647i, 0i, 15972i, 0i), vec4<i32>(-76572i, -64228i, 1i, -1i));

var<private> global2: vec4<bool>;

var<private> global3: array<vec4<bool>, 8>;

var<private> global4: array<f32, 3>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    return Struct_2(countOneBits(arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1422f)), _wgslsmith_f_op_f32(min(-1389f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~arg_0.x, 3u)] * _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(60916u, 3u)]))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(min(arg_0.x, _wgslsmith_mod_u32(arg_0.x, 0u)), 3u)], _wgslsmith_f_op_f32(f32(-1f) * -725f))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> i32 {
    var var_0 = ~arg_3.a.yyx & ~_wgslsmith_sub_vec3_u32(vec3<u32>(~arg_3.a.x, 44860u, func_1(arg_3.a).a.x), vec3<u32>(arg_3.a.x, 13913u, arg_3.a.x) & _wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.a.x, 1u, arg_3.a.x), arg_3.a.zzw));
    var var_1 = _wgslsmith_sub_i32(select(-u_input.a, u_input.b.x, !(true && (var_0.x >= 1u))), -_wgslsmith_mod_i32(-32021i, -u_input.a));
    var var_2 = Struct_3(abs(arg_3.a.x), max(1u, (~1u >> (~var_0.x % 32u)) << ((abs(arg_3.a.x) >> (var_0.x % 32u)) % 32u)));
    var var_3 = !arg_2 | (arg_1 | true);
    let var_4 = 33655u;
    return -37907i >> ((func_1(vec4<u32>(_wgslsmith_mult_u32(var_2.a, 28272u), _wgslsmith_mod_u32(0u, var_2.b), arg_3.a.x, 0u)).a.x & select(countOneBits(func_1(vec4<u32>(4294967295u, 4294967295u, var_2.a, 15357u)).a.x), var_4 & 28551u, true)) % 32u);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 3u)] + 1000f), arg_0.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(80931u, 3u)]))));
    global2 = vec4<bool>(any(arg_1) == global2.x, false, all(global3[_wgslsmith_index_u32(~(~1u), 8u)]), any(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_1(vec4<u32>(1u, 13793u, 35469u, 4294967295u)).a, vec4<u32>(~4294967295u, select(1u, 59609u, global2.x), countOneBits(4294967295u), abs(39038u))), 8u)]));
    let var_2 = Struct_2(~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 0u, 3280u, 4294967295u), ~vec4<u32>(78593u, 111383u, 1u, 95763u), select(vec4<u32>(3073u, 63626u, 24019u, 5586u), vec4<u32>(7750u, 724u, 4294967295u, 41049u), true)), abs(vec4<u32>(1u, 1u, 1u, 1u))), arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.wy, vec2<f32>(472f, 510f)))))));
    global1 = array<vec4<i32>, 15>();
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.x;
    var var_1 = _wgslsmith_mult_i32(func_2(u_input.b.x, true, false, func_1(~vec4<u32>(0u, 3887u, 10981u, 49480u))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -16479i) & (vec2<i32>(u_input.a, -8534i) | vec2<i32>(39263i, -52528i)), -countOneBits(u_input.b))) != abs(2147483647i);
    var var_2 = Struct_3(~(~17697u), countOneBits(countOneBits(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-649f, global4[_wgslsmith_index_u32(11050u, 3u)], global4[_wgslsmith_index_u32(25954u, 3u)], global4[_wgslsmith_index_u32(15517u, 3u)])), vec3<bool>(true, true, false)))));
    var_2 = Struct_3(~(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_2.a, var_2.a, 32564u, var_2.a)), firstLeadingBit(vec4<u32>(var_2.b, var_2.a, 24232u, var_2.a)))), 0u);
    let var_3 = Struct_1(~(~firstTrailingBit(_wgslsmith_add_u32(var_2.b, var_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(386f, global4[_wgslsmith_index_u32(~func_3(vec4<f32>(global4[_wgslsmith_index_u32(var_2.a, 3u)], -905f, -975f, 1000f), global2.wzz), 3u)], true))));
    var var_4 = reverseBits(min(-65963i, func_2(-u_input.a, all(global2.yx), true, func_1(vec4<u32>(var_2.b, var_3.a, var_2.b, 17519u))))) >> (~(0u ^ var_3.a) % 32u);
    var_0 = any(global3[_wgslsmith_index_u32(func_1(~vec4<u32>(~0u, var_3.a, ~var_3.a, 50819u)).a.x, 8u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1444f, var_3.b, global4[_wgslsmith_index_u32(var_3.a, 3u)], global4[_wgslsmith_index_u32(var_2.a, 3u)]) + _wgslsmith_div_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(45222u, 3u)], -1434f, -475f, global4[_wgslsmith_index_u32(20880u, 3u)]), vec4<f32>(var_3.b, -164f, global4[_wgslsmith_index_u32(4294967295u, 3u)], 128f))), vec3<bool>(global2.x, true, !global2.x)), ~u_input.a, 33661u, vec4<i32>(u_input.b.x, u_input.b.x | u_input.a, u_input.b.x, u_input.a));
}

