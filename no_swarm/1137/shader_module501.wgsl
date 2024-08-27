struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(2147483647i);

var<private> global1: array<f32, 15>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> vec3<i32> {
    global0 = array<i32, 1>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-681f * _wgslsmith_f_op_f32(abs(arg_1.e)))));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~19692u, arg_1.a.c.a, arg_1.c.c.a), ~u_input.a.x) >> (arg_1.a.c.a % 32u), 6984u);
    let var_2 = arg_1;
    global1 = array<f32, 15>();
    return _wgslsmith_add_vec3_i32(arg_1.c.b, firstLeadingBit(vec3<i32>(-arg_1.a.b.x, max(i32(-1i) * -41176i, _wgslsmith_mult_i32(-1i, arg_0.x)), ~(2147483647i & arg_0.x))));
}

fn func_2(arg_0: Struct_1) -> bool {
    global1 = array<f32, 15>();
    var var_0 = Struct_1(~0u, _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(-262f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + global1[_wgslsmith_index_u32(arg_0.a, 15u)])))));
    let var_1 = reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(~abs(vec3<i32>(-23438i, global0[_wgslsmith_index_u32(4294967295u, 1u)], -1i)), reverseBits(func_3(vec2<i32>(global0[_wgslsmith_index_u32(0u, 1u)], 23047i), Struct_3(Struct_2(vec3<f32>(var_0.b, global1[_wgslsmith_index_u32(u_input.e, 15u)], 443f), vec3<i32>(-1i, global0[_wgslsmith_index_u32(21551u, 1u)], -4571i), Struct_1(var_0.a, -1000f)), 773f, Struct_2(vec3<f32>(global1[_wgslsmith_index_u32(59313u, 15u)], 326f, -454f), vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], u_input.b.x, 25009i), arg_0), true, arg_0.b)))), u_input.b.x, -(~u_input.c) << (~(arg_0.a | u_input.a.x) % 32u)));
    var var_2 = !vec3<bool>(true, !select(true, true, true), max(~93735u, _wgslsmith_dot_vec2_u32(vec2<u32>(53903u, var_0.a), u_input.a.xy)) <= arg_0.a);
    var var_3 = _wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_0.a, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, 41229u), vec2<u32>(u_input.a.x, 42438u)), 3665u)), select(vec4<u32>(_wgslsmith_add_u32(28493u, u_input.e) << (~4294967295u % 32u), 0u, max(select(u_input.a.x, arg_0.a, true), ~5211u), arg_0.a), vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(var_0.a, var_0.a), _wgslsmith_add_u32(13191u, 0u), arg_0.a) | ~(u_input.a | vec4<u32>(0u, 0u, var_0.a, var_0.a)), true));
    return all(vec3<bool>(var_0.b != var_0.b, !all(!vec4<bool>(false, var_2.x, var_2.x, false)), select(any(select(vec3<bool>(true, false, true), vec3<bool>(false, var_2.x, false), var_2.x)), var_2.x, var_2.x && (41287u >= u_input.d.x))));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = any(vec2<bool>(true, true));
    var var_1 = u_input.a;
    let var_2 = !select(vec3<bool>(var_0, var_0, (global0[_wgslsmith_index_u32(33992u, 1u)] >= -35975i) != true), !vec3<bool>(true, func_2(Struct_1(0u, -1183f)), true), var_0 | !var_0);
    return -440f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 15u)])) - _wgslsmith_f_op_f32(func_1(2147483647i)))), global1[_wgslsmith_index_u32(u_input.e, 15u)]);
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1360f, -1596f, global1[_wgslsmith_index_u32(u_input.e, 15u)])) + vec3<f32>(-200f, global1[_wgslsmith_index_u32(u_input.e, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)]))), _wgslsmith_sub_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(21325i, -13135i, global0[_wgslsmith_index_u32(u_input.e, 1u)]), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(64513u, 1u)], u_input.c)), vec3<i32>(-2147483647i, 2147483647i, -67433i), vec3<bool>(true, true, true)), _wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, -8802i, -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.e, 1u)], 342i, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]) << (vec3<u32>(u_input.e, u_input.a.x, u_input.e) % vec3<u32>(32u)))), Struct_1(min(u_input.e, u_input.e << (38127u % 32u)), 784f)), _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1389f))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(select(u_input.a.x, u_input.e, true), 15u)] * _wgslsmith_f_op_f32(-1923f + global1[_wgslsmith_index_u32(u_input.a.x, 15u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_0))), ~vec3<i32>(firstTrailingBit(2147483647i), ~global0[_wgslsmith_index_u32(67082u, 1u)], -4317i), Struct_1(61927u, 1332f)), true, global1[_wgslsmith_index_u32(29140u ^ _wgslsmith_clamp_u32(u_input.d.x, 1u, _wgslsmith_mult_u32(u_input.d.x, 1u)), 15u)]);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.c.a, vec3<f32>(674f, var_1.a.c.b, var_0))))), vec3<f32>(-1520f, _wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(sign(-407f))))), vec3<i32>(var_1.a.b.x, 58569i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(~420i, i32(-1i) * -38182i), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(var_1.c.c.a & var_1.a.c.a, 1u)], u_input.b.x))), var_1.a.c);
    var var_3 = !vec4<bool>(var_1.d, var_1.d, true, var_1.d);
    var var_4 = Struct_2(var_2.a, vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.c, global0[_wgslsmith_index_u32(var_1.c.c.a, 1u)] | -24766i), var_1.a.b.x), reverseBits(countOneBits(~var_1.a.b.x)), 25619i), Struct_1(u_input.a.x << (_wgslsmith_clamp_u32(abs(0u), 4294967295u, 1u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.c.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1i)) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 15u)])))));
    var var_5 = ~(~(1u | var_2.c.a));
    let var_6 = vec4<i32>(~_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 23216i, global0[_wgslsmith_index_u32(4294967295u, 1u)], -1i), vec4<i32>(2147483647i, u_input.c, -1i, 1i))), 2147483647i, max(var_4.b.x, select(_wgslsmith_mod_i32(-2147483647i, -1i), ~(-50916i), var_3.x)), var_2.b.x) | (_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(var_2.b, vec3<i32>(var_2.b.x, u_input.b.x, var_2.b.x)), abs(u_input.c), 1i, -var_4.b.x), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-14721i, 46973i, 22784i, var_4.b.x), abs(vec4<i32>(9550i, global0[_wgslsmith_index_u32(0u, 1u)], var_2.b.x, 39319i)), -vec4<i32>(2147483647i, -24108i, -1i, -694i))) << (vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(4294967295u), _wgslsmith_mod_u32(var_2.c.a, 35316u), ~var_4.c.a), ~var_2.c.a ^ (var_2.c.a >> (var_4.c.a % 32u)), ~_wgslsmith_sub_u32(40457u, 1u), select(var_1.a.c.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.a, var_4.c.a, 1u, 62340u), u_input.a), true)) % vec4<u32>(32u)));
    let var_7 = !(global1[_wgslsmith_index_u32(max(4294967295u, u_input.a.x), 15u)] != _wgslsmith_f_op_f32(step(952f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(306f, -644f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(870f, var_2.c.b, var_1.b, var_0)), vec4<f32>(481f, var_0, var_1.e, var_1.c.a.x))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), -1109f, global1[_wgslsmith_index_u32(u_input.d.x, 15u)], _wgslsmith_f_op_f32(round(var_2.a.x)))), var_1.c.b.zz, var_6);
}

