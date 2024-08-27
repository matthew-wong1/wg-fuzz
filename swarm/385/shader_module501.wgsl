struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 197f;

var<private> global1: vec3<i32> = vec3<i32>(-1i, 73384i, -1i);

var<private> global2: Struct_1 = Struct_1(vec3<u32>(4294967295u, 1u, 21839u), vec2<bool>(false, false));

var<private> global3: array<bool, 9> = array<bool, 9>(true, true, true, false, true, false, true, false, true);

var<private> global4: array<i32, 32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-452f + -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1317f + 339f), -825f)), global4[_wgslsmith_index_u32(1u, 32u)] <= _wgslsmith_mult_i32(29546i, 1i)))));
    global4 = array<i32, 32>();
    let var_0 = vec2<f32>(436f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1243f))) * -1382f));
    let var_1 = Struct_1(global2.a, !global2.b);
    let var_2 = -6158i & (~_wgslsmith_add_i32(-23155i, 1i) >> (u_input.b % 32u));
    return _wgslsmith_div_u32(0u, 44007u);
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(global2.a << (global2.a % vec3<u32>(32u)), vec2<bool>(global3[_wgslsmith_index_u32(~abs(4949u) << (firstTrailingBit(abs(52573u)) % 32u), 9u)], !(~u_input.b != (u_input.b & 0u))));
    global2 = Struct_1(vec3<u32>(1u, u_input.b, ~_wgslsmith_div_u32(~u_input.b, u_input.b)), select(select(vec2<bool>(!var_0.b.x, true), vec2<bool>(global3[_wgslsmith_index_u32(~86598u, 9u)], true), !select(global2.b, global2.b, true)), global2.b, !select(global2.b.x, var_0.b.x || true, true)));
    let var_1 = any(global2.b);
    global4 = array<i32, 32>();
    let var_2 = func_3();
    return Struct_2(select(vec2<bool>(var_1, true), select(var_0.b, global2.b, global2.b.x), !(!vec2<bool>(var_0.b.x, false))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: u32, arg_3: vec3<i32>) -> u32 {
    var var_0 = func_2(1i, ~(-vec2<i32>(arg_3.x, global4[_wgslsmith_index_u32(global2.a.x, 32u)])) ^ (countOneBits(select(global1.zz, arg_3.xz, vec2<bool>(global2.b.x, false))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global2.a.x), global2.a.yz, _wgslsmith_div_vec2_u32(vec2<u32>(arg_2, u_input.b), vec2<u32>(u_input.b, 1u))) % vec2<u32>(32u))));
    var var_1 = Struct_1(vec3<u32>(func_3(), 32042u, 908u), arg_1);
    var var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(firstLeadingBit(var_1.a), vec3<u32>(~57272u, 69104u, 0u), reverseBits(vec3<u32>(_wgslsmith_clamp_u32(arg_2, 4294967295u, 38355u), max(global2.a.x, arg_2), 21463u))), select(var_0.a, vec2<bool>(false, true), true));
    let var_3 = _wgslsmith_f_op_f32(round(arg_0.x));
    global2 = Struct_1(~(~(vec3<u32>(4294967295u, var_1.a.x, 60056u) & vec3<u32>(77033u, arg_2, arg_2))), var_2.b);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(vec3<u32>(global2.a.x, global2.a.x << ((0u >> (~4294967295u % 32u)) % 32u), max(abs(func_1(vec3<f32>(-396f, -604f, -619f), vec2<bool>(false, true), 87886u, vec3<i32>(-17051i, -12487i, -1i))), ~41267u)), func_2(~_wgslsmith_sub_i32(20252i, global1.x >> (u_input.b % 32u)), global1.zy).a);
    var var_0 = vec4<bool>(any(vec3<bool>(false, false, true)), true, !(!all(select(vec4<bool>(true, false, global2.b.x, false), vec4<bool>(false, global3[_wgslsmith_index_u32(global2.a.x, 9u)], true, global3[_wgslsmith_index_u32(64635u, 9u)]), vec4<bool>(false, true, true, global2.b.x)))), ~u_input.b < 4023u);
    let var_1 = (~vec2<u32>(_wgslsmith_mod_u32(u_input.b, 10367u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 60922u, global2.a.x, 25754u), vec4<u32>(1867u, u_input.b, 0u, u_input.b))) ^ vec2<u32>(4294967295u, global2.a.x)) & _wgslsmith_sub_vec2_u32(~reverseBits(vec2<u32>(u_input.b, u_input.b)), global2.a.xy);
    global1 = vec3<i32>(-1i) * -(~(~vec3<i32>(15109i, u_input.a, 0i) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(-44408i, u_input.a, -49602i), vec3<i32>(global1.x, global4[_wgslsmith_index_u32(u_input.b, 32u)], -2147483647i))));
    var var_2 = vec4<bool>(true, false, var_0.x, 899f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-792f, 406f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(160f * 353f), _wgslsmith_f_op_f32(f32(-1f) * -1299f), false)), !var_0.x && true)));
    let var_3 = ~vec4<u32>(reverseBits(_wgslsmith_sub_u32(func_1(vec3<f32>(656f, -417f, -1000f), vec2<bool>(global3[_wgslsmith_index_u32(1u, 9u)], var_0.x), 10523u, vec3<i32>(global1.x, u_input.a, -17211i)), 48505u)), countOneBits(u_input.b), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.a.x, u_input.b, u_input.b), vec4<u32>(global2.a.x, var_1.x, 1u, var_1.x)), _wgslsmith_add_u32(0u, var_1.x)) & 0u, reverseBits(1u));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-485f)), -433f, false || global3[_wgslsmith_index_u32(var_3.x, 9u)]))), 1032f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1571f + 736f)))), 1f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(_wgslsmith_f_op_f32(486f * 935f), _wgslsmith_f_op_f32(max(379f, -939f)), _wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(sign(-191f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-275f, 1164f, -1251f, -690f), vec4<f32>(276f, 1000f, -278f, 318f), vec4<bool>(var_2.x, false, false, false))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1617f, 223f, 1545f, 211f) + vec4<f32>(451f, 236f, -1247f, -1470f)), vec4<f32>(-1264f, 189f, 743f, -350f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_4.wx + _wgslsmith_f_op_vec2_f32(exp2(var_4.zx))), _wgslsmith_div_vec4_u32(~var_3, ~var_3));
}

