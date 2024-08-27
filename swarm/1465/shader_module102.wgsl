struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: vec4<i32>;

var<private> global2: vec3<f32> = vec3<f32>(-1216f, 407f, 442f);

var<private> global3: Struct_1 = Struct_1(1129f, 0u);

var<private> global4: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-1399f, 4294967295u), Struct_1(1318f, 62845u), Struct_1(-1398f, 4294967295u), Struct_1(-278f, 4294967295u), Struct_1(142f, 60637u), Struct_1(1121f, 1u), Struct_1(-508f, 0u), Struct_1(-706f, 4294967295u), Struct_1(-1264f, 37140u), Struct_1(-240f, 4294967295u), Struct_1(2247f, 0u), Struct_1(-922f, 1u), Struct_1(278f, 1626u), Struct_1(182f, 0u), Struct_1(137f, 57308u), Struct_1(1526f, 0u), Struct_1(1594f, 4294967295u), Struct_1(1106f, 12646u), Struct_1(1000f, 1u), Struct_1(111f, 23965u), Struct_1(-586f, 4294967295u), Struct_1(-995f, 1u), Struct_1(-327f, 4294967295u), Struct_1(732f, 4294967295u), Struct_1(420f, 0u), Struct_1(820f, 1u), Struct_1(-2584f, 4294967295u), Struct_1(-556f, 5365u), Struct_1(884f, 4294967295u), Struct_1(1249f, 4294967295u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    global3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2255f))), -1000f), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.b, arg_2.b) ^ ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global3.b, 7913u), vec2<u32>(62370u, 44528u), vec2<u32>(95867u, 1u)), reverseBits(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(64864u, arg_2.b), vec2<u32>(62697u, arg_2.b))))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a + arg_2.a)))), select(~global3.b, _wgslsmith_mod_u32(~(global3.b >> (0u % 32u)), global3.b), arg_0.x));
    let var_1 = _wgslsmith_sub_i32(abs(-65227i), ~33053i);
    global1 = -countOneBits((vec4<i32>(var_1, arg_1.x, var_1, 38740i) ^ ~vec4<i32>(2147483647i, 41299i, var_1, 17251i)) & firstLeadingBit(reverseBits(arg_1)));
    let var_2 = false;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(select(var_0.b << (38750u % 32u), 14919u, !var_2), 31597u, ~global3.b) & _wgslsmith_sub_vec3_u32(~vec3<u32>(54385u, arg_2.b, 4294967295u) >> (vec3<u32>(global3.b, arg_2.b, var_0.b) % vec3<u32>(32u)), vec3<u32>(0u, max(6090u, global3.b), 0u)), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 17857u, global3.b), countOneBits(vec3<u32>(arg_2.b, 127228u, 0u))) ^ vec3<u32>(~global3.b, _wgslsmith_mod_u32(arg_2.b, var_0.b), 24386u), firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(1u, global3.b), arg_2.b << (global3.b % 32u), 1u))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(376f, _wgslsmith_mult_u32(global3.b, global3.b));
    return global4[_wgslsmith_index_u32(~(1u >> (~func_3(vec3<bool>(true, true, true), vec4<i32>(global1.x, -2147483647i, 1i, u_input.a.x), Struct_1(-1362f, 64821u)) % 32u)), 30u)];
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    global1 = -select(select(abs(vec4<i32>(-5268i, global0[_wgslsmith_index_u32(39450u, 1u)], 1i, 2147483647i)), vec4<i32>(1i, -65567i, global1.x, _wgslsmith_sub_i32(u_input.a.x, global0[_wgslsmith_index_u32(arg_0.b, 1u)])), false), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-40899i, global1.x, 2147483647i, global1.x), vec4<i32>(-1i, global1.x, global0[_wgslsmith_index_u32(global3.b, 1u)], -2147483647i)), vec4<i32>(0i, global0[_wgslsmith_index_u32(arg_0.b, 1u)], 10638i, global1.x) ^ vec4<i32>(2147483647i, -44381i, u_input.a.x, 1i)) << (vec4<u32>(arg_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global3.b), vec2<u32>(global3.b, arg_0.b)), global3.b & 1u, 19125u) % vec4<u32>(32u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, any(vec2<bool>(true, false))), vec4<bool>(any(vec3<bool>(true, false, false)), all(vec2<bool>(true, true)), true, true)));
    global3 = func_2();
    global1 = vec4<i32>(abs(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.b, global3.b), vec2<u32>(global3.b, global3.b)) >> (0u % 32u), 0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 76802u), vec2<u32>(global3.b, arg_0.b))), 1u)]), _wgslsmith_mod_i32(~global0[_wgslsmith_index_u32(arg_0.b, 1u)] ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 1u)], global1.x), global1.xx), u_input.a.x | ~2147483647i) >> ((90128u | abs(~global3.b)) % 32u), ~(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(18280u, global3.b)), ~vec2<u32>(1149u, global3.b)), 1u)]), _wgslsmith_sub_i32(-33258i, -24977i));
    global3 = global4[_wgslsmith_index_u32(max(arg_0.b, global3.b), 30u)];
    let var_0 = func_2();
    return ~vec3<u32>(global3.b, global3.b, _wgslsmith_sub_u32(4294967295u, var_0.b));
}

fn func_1(arg_0: vec4<i32>) -> vec3<u32> {
    global3 = global4[_wgslsmith_index_u32(firstLeadingBit(~(~abs(~global3.b))), 30u)];
    var var_0 = func_4(func_2());
    let var_1 = global4[_wgslsmith_index_u32(32742u, 30u)];
    let var_2 = false;
    global3 = func_2();
    return func_4(global4[_wgslsmith_index_u32(countOneBits(~func_2().b), 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(4294967295u == firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 33377u, global3.b, 0u), vec4<u32>(global3.b, 32320u, global3.b, 4294967295u))), false, any(vec4<bool>(true, select(false, true, true), any(vec4<bool>(false, true, false, true)), true)));
    var var_1 = ~_wgslsmith_dot_vec3_u32(func_1(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, global0[_wgslsmith_index_u32(global3.b, 1u)], 9206i), max(vec4<i32>(global1.x, global0[_wgslsmith_index_u32(0u, 1u)], -2147483647i, 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(global3.b, 1u)], global1.x, global1.x, -1i)))), vec3<u32>(~0u, ~34943u, _wgslsmith_sub_u32(~global3.b, global3.b)));
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(4294967295u), global3.b << (~(~global3.b >> (firstLeadingBit(0u) % 32u)) % 32u)), 30u)];
    var var_3 = global4[_wgslsmith_index_u32(38466u, 30u)];
    let var_4 = _wgslsmith_div_u32(var_2.b, ~(~1u));
    var var_5 = global2.zz;
    var var_6 = 1u;
    var var_7 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(578f)));
}

