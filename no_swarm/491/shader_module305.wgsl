struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<f32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(i32(-2147483648), 1i, i32(-2147483648), 2848i, -1i, i32(-2147483648), 1i, 0i, 28601i, 65757i, -61889i, 9855i, -26855i, 2147483647i, 36495i, -3042i, 4792i, i32(-2147483648), -1973i, -51192i, 49501i, 36195i, -1i, -32688i);

var<private> global1: vec4<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool) -> i32 {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(select(arg_1.a.b.x, _wgslsmith_f_op_f32(arg_1.a.b.x + 269f), var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-788f)))))) * arg_1.a.b.zw);
    let var_2 = global1.yyw;
    global0 = array<i32, 24>();
    return -(~max(2147483647i, -global1.x));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = false;
    var_0 = any(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), true), !vec4<bool>(true, all(vec4<bool>(false, false, false, true)), any(vec4<bool>(true, false, false, false)), any(vec4<bool>(false, true, true, false))), vec4<bool>(false, false, all(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, false, true, false)))));
    var var_1 = u_input.a;
    var_0 = true;
    let var_2 = -(vec2<i32>(-1i) * -vec2<i32>(u_input.a, ~0i));
    return _wgslsmith_mod_u32((arg_0.x | abs(52427u)) ^ arg_0.x, 1922u >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(arg_0.x, arg_0.x), ~29865u), ~(~24990u)) % 32u));
}

fn func_1() -> Struct_1 {
    global1 = -(~countOneBits(-vec4<i32>(global1.x, u_input.a, global0[_wgslsmith_index_u32(52107u, 24u)], global0[_wgslsmith_index_u32(63886u, 24u)]))) ^ min(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-20595i, global1.x, global0[_wgslsmith_index_u32(0u, 24u)], -25200i), vec4<i32>(u_input.a, 22203i, u_input.a, global0[_wgslsmith_index_u32(96726u, 24u)]), vec4<i32>(global0[_wgslsmith_index_u32(0u, 24u)], global1.x, global1.x, global0[_wgslsmith_index_u32(1u, 24u)])) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(~(-vec4<i32>(9969i, 1609i, global0[_wgslsmith_index_u32(1u, 24u)], 0i)), vec4<i32>(_wgslsmith_mult_i32(-40065i, 7371i), ~global1.x, u_input.a, func_2(vec2<i32>(u_input.a, 7866i), Struct_2(Struct_1(vec2<bool>(false, true), vec4<f32>(1561f, 1735f, 1633f, -1525f), 0i, true), 44030u), false))));
    global0 = array<i32, 24>();
    let var_0 = countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(16227i, 1i, -24666i, global0[_wgslsmith_index_u32(1u, 24u)]), vec4<i32>(global1.x, u_input.a, -1i, global1.x)), _wgslsmith_sub_vec4_i32(~vec4<i32>(global1.x, global0[_wgslsmith_index_u32(4294967295u, 24u)], global1.x, global1.x), _wgslsmith_div_vec4_i32(vec4<i32>(-67066i, global0[_wgslsmith_index_u32(35591u, 24u)], 10003i, -63348i), vec4<i32>(-27246i, -2147483647i, 1i, global0[_wgslsmith_index_u32(63501u, 24u)])))), vec4<i32>(_wgslsmith_add_i32(firstLeadingBit(global1.x), ~u_input.a), ~max(global0[_wgslsmith_index_u32(1u, 24u)], -1i), -2147483647i, 1i)));
    let var_1 = vec3<i32>(abs(66084i), _wgslsmith_mod_i32(global1.x, global1.x), _wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(max(var_0.x, var_0.x), global0[_wgslsmith_index_u32(0u, 24u)])), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-1i, 54124i)), vec2<i32>(1i, u_input.a))));
    global0 = array<i32, 24>();
    return Struct_1(vec2<bool>(u_input.a == firstLeadingBit(_wgslsmith_dot_vec2_i32(global1.wy, vec2<i32>(-1i, -581i))), !select(false, false, true) != any(vec2<bool>(true, true))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-1178f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1176f * 505f))), -1532f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(852f - -1086f), _wgslsmith_f_op_f32(-352f - 123f), true)), 302f))), 1i << (~(4294967295u & func_3(vec2<u32>(1u, 1u))) % 32u), true);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> Struct_5 {
    let var_0 = !select(select(vec3<bool>(arg_1, arg_0.d, func_1().d), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, arg_0.a.x), vec3<bool>(arg_1, true, true), arg_0.d), !vec3<bool>(arg_2.a.a.x, arg_1, true), true)), vec3<bool>(arg_2.b > 4294967295u, any(select(vec4<bool>(false, arg_1, false, arg_0.a.x), vec4<bool>(arg_1, arg_3, arg_2.a.a.x, arg_1), arg_1)), arg_2.b == arg_2.b), any(select(vec4<bool>(arg_0.a.x, false, arg_3, arg_2.a.a.x), vec4<bool>(arg_0.d, arg_3, arg_0.d, arg_1), select(vec4<bool>(true, arg_3, arg_1, false), vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(false, arg_2.a.a.x, arg_2.a.a.x, arg_1)))));
    let var_1 = func_1();
    global0 = array<i32, 24>();
    global1 = vec4<i32>(max(arg_2.a.c, var_1.c), firstTrailingBit(reverseBits(0i)), _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(-5994i, arg_0.c), abs(arg_0.c)), var_1.c), ~0i);
    var var_2 = ~global0[_wgslsmith_index_u32(func_3(~vec2<u32>(abs(8073u), _wgslsmith_clamp_u32(arg_2.b, arg_2.b, arg_2.b))), 24u)];
    return Struct_5(Struct_3(func_1().a, arg_2, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_0.b)), vec4<f32>(var_1.b.x, var_1.b.x, 1497f, _wgslsmith_f_op_f32(f32(-1f) * -752f))), _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_div_u32(1u, 4294967295u)), ~4294967295u)), vec2<u32>(31145u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), all(vec3<bool>(true, false, true)), Struct_2(func_1(), select(0u, 1u, true)), !(!any(vec2<bool>(false, false))));
    var var_1 = vec2<i32>(-1i) * -vec2<i32>(1i, abs(_wgslsmith_add_i32(-2147483647i, global0[_wgslsmith_index_u32(var_0.b.x, 24u)])));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.a.c * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(var_0.a.c, vec4<f32>(1381f, var_0.a.c.x, 721f, 2152f)))), _wgslsmith_f_op_vec4_f32(var_0.a.b.a.b * vec4<f32>(var_0.a.b.a.b.x, 293f, var_0.a.c.x, -1102f))))), var_0.a.c, false));
    let var_3 = var_1.x;
    let var_4 = 47195u;
    var_1 = global1.xx;
    var var_5 = 197f;
    let var_6 = func_4(var_0.a.b.a, var_0.a.a.x, Struct_2(var_0.a.b.a, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4, var_4, 14489u, 90250u), vec4<u32>(35991u, var_0.a.b.b, var_4, 79731u)) >> (var_0.b.x % 32u))), all(!vec4<bool>(true, var_0.a.a.x, true, var_0.a.a.x)) || any(vec4<bool>(var_0.a.b.a.a.x, false, any(var_0.a.b.a.a), func_1().a.x))).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, var_4, 68333u), 52128u), 4294967295u, abs(21660u), var_4), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(sign(var_6.b.a.b.x)))));
}

