struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<i32>;

var<private> global2: array<f32, 4>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    global1 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 3990i, -1i), vec3<i32>(u_input.a, global1.x, -24614i)) & (global1.x >> (arg_0.c.x % 32u)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(global1.x, 1i), firstTrailingBit(-42857i)), ~1i, _wgslsmith_mod_i32(countOneBits(u_input.a), 1i)), ~(~(-vec4<i32>(-84181i, 0i, -1i, global1.x))), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -5646i, 5798i, u_input.a), -vec4<i32>(3828i, u_input.a, u_input.a, -12589i)), -(vec4<i32>(4833i, global1.x, -45148i, -1i) ^ vec4<i32>(u_input.a, -3323i, 1i, arg_0.b.x)), -abs(vec4<i32>(1i, global1.x, -1i, -45452i)))));
    let var_0 = any(vec4<bool>(true, true, any(vec3<bool>(select(false, true, true), all(vec3<bool>(arg_0.a, arg_0.a, false)), all(vec4<bool>(true, arg_0.a, arg_0.a, false)))), arg_0.a));
    return !any(vec4<bool>(true | arg_0.a, arg_0.a, !var_0, false));
}

fn func_2() -> i32 {
    global2 = array<f32, 4>();
    global1 = reverseBits(vec4<i32>(~(~global1.x), global1.x, _wgslsmith_div_i32(-u_input.a, ~39267i), u_input.a) & (firstLeadingBit(reverseBits(vec4<i32>(-19175i, u_input.a, u_input.a, global1.x))) & vec4<i32>(u_input.a, u_input.a, -u_input.a, u_input.a | -5777i)));
    var var_0 = func_3(Struct_1(any(vec3<bool>(true, true, true)), vec3<i32>(select(u_input.a, global1.x, false), 1i, _wgslsmith_sub_i32(u_input.a, u_input.a)), vec2<u32>(min(13477u, 36254u), 1u), _wgslsmith_f_op_f32(f32(-1f) * -388f)), global2[_wgslsmith_index_u32(reverseBits(~1u), 4u)]) && ((global2[_wgslsmith_index_u32(max(~0u, ~1u), 4u)] > -148f) && all(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))));
    var var_1 = vec2<bool>(!func_3(Struct_1(true, global1.xyy, firstLeadingBit(vec2<u32>(53716u, 60359u)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(11068u, 4u)])))), true);
    let var_2 = any(vec4<bool>(var_1.x, !var_1.x, var_1.x, true)) & all(vec4<bool>(!all(vec2<bool>(false, true)), true, false, select(func_3(Struct_1(false, global1.wzw, vec2<u32>(0u, 47438u), -1587f), global2[_wgslsmith_index_u32(0u, 4u)]), false, any(vec4<bool>(var_1.x, false, var_1.x, var_1.x)))));
    return ~global1.x >> (~0u % 32u);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> vec3<i32> {
    global1 = -abs(vec4<i32>(_wgslsmith_dot_vec3_i32(global1.xwy, vec3<i32>(global1.x, -2147483647i, 27432i)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.b.x, 12609i, -37812i, global1.x), vec4<i32>(-20418i, u_input.a, 1i, u_input.a)), 1i, all(vec2<bool>(arg_1, false))), 1i >> (~arg_2.c.c.x % 32u), ~(~(-1i))));
    var var_0 = arg_2;
    let var_1 = arg_2.a.c.x;
    var var_2 = select(arg_2.a.b, vec3<i32>(var_0.c.b.x, max(2147483647i, func_2()), arg_2.a.b.x), false);
    let var_3 = (_wgslsmith_div_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-52691i, 42530i, -2147483647i, arg_0.a.b.x), vec4<i32>(22088i, 0i, arg_0.c.b.x, -2523i))), 1i) >> (~firstTrailingBit(arg_2.b.x) % 32u)) & reverseBits(-global1.x);
    return global1.yww;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> StorageBuffer {
    global2 = array<f32, 4>();
    global1 = vec4<i32>(-func_1(Struct_2(Struct_1(false, vec3<i32>(-2147483647i, 7436i, global1.x), arg_1.c, arg_1.d), ~vec4<u32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x), arg_1), all(!vec4<bool>(false, arg_1.a, arg_1.a, false)), Struct_2(Struct_1(arg_1.a, arg_1.b, vec2<u32>(arg_1.c.x, arg_1.c.x), 264f), max(vec4<u32>(0u, 0u, arg_1.c.x, 1u), vec4<u32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, 41585u)), Struct_1(false, arg_0.ywx, vec2<u32>(4294967295u, 1u), -1936f))).x, 2147483647i, u_input.a, -u_input.a);
    global2 = array<f32, 4>();
    global1 = -_wgslsmith_mod_vec4_i32(arg_0, ~arg_0);
    global1 = vec4<i32>(global1.x, _wgslsmith_mult_i32(1i, 1i), u_input.a << (~(~(17410u >> (arg_1.c.x % 32u))) % 32u), -(i32(-1i) * -2147483647i));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(391f, global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(arg_1.c.x, 4u)]), vec3<f32>(arg_1.d, -1000f, arg_1.d)))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(208f, arg_1.d, -115f))) + vec3<f32>(-552f, -1253f, global2[_wgslsmith_index_u32(arg_1.c.x, 4u)])), vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 68815u, arg_1.c.x, 25214u), vec4<u32>(4294967295u, arg_1.c.x, 42271u, arg_1.c.x)), 4u)], _wgslsmith_f_op_f32(ceil(arg_1.d)), global2[_wgslsmith_index_u32(arg_1.c.x, 4u)])))), arg_1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(arg_1.c.x, 4u)], global2[_wgslsmith_index_u32(35224u, 4u)], global2[_wgslsmith_index_u32(1u, 4u)], 1347f), vec4<f32>(207f, arg_1.d, arg_1.d, 779f))), vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], -688f, global2[_wgslsmith_index_u32(arg_1.c.x, 4u)], global2[_wgslsmith_index_u32(arg_1.c.x, 4u)]))))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, global2[_wgslsmith_index_u32(arg_1.c.x >> (1u % 32u), 4u)], 236f, 665f)))), ~vec2<i32>(arg_1.b.x, -52342i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 4>();
    var var_0 = false;
    global2 = array<f32, 4>();
    global1 = abs(-(~vec4<i32>(global1.x & u_input.a, 0i, u_input.a, -u_input.a)));
    let x = u_input.a;
    s_output = func_4(vec4<i32>(-1i, -1i, -95242i, 1i), Struct_1(true, max(global1.yyz, _wgslsmith_mult_vec3_i32(func_1(Struct_2(Struct_1(false, vec3<i32>(u_input.a, global1.x, global1.x), vec2<u32>(4294967295u, 1u), global2[_wgslsmith_index_u32(46706u, 4u)]), vec4<u32>(10618u, 38046u, 4294967295u, 15533u), Struct_1(true, vec3<i32>(global1.x, 5517i, 1i), vec2<u32>(64757u, 1u), global2[_wgslsmith_index_u32(1u, 4u)])), true, Struct_2(Struct_1(true, global1.yyw, vec2<u32>(1806u, 77752u), -767f), vec4<u32>(26710u, 89221u, 37300u, 22570u), Struct_1(false, vec3<i32>(0i, 2234i, 2147483647i), vec2<u32>(0u, 12750u), global2[_wgslsmith_index_u32(93635u, 4u)]))), global1.yxw)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 30693u)), -2014f));
}

