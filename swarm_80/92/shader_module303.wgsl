struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(73060u);

var<private> global1: f32;

var<private> global2: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false));

var<private> global3: array<bool, 11>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec4<i32> {
    global1 = -650f;
    global3 = array<bool, 11>();
    var var_0 = global0.a;
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(1u), 0u, _wgslsmith_dot_vec3_u32(u_input.b & u_input.b, ~u_input.b), firstLeadingBit(u_input.b.x)), ~vec4<u32>(0u, ~1u, u_input.b.x, _wgslsmith_mod_u32(45314u, 2591u))), ~vec4<u32>(~34770u, ~u_input.b.x, ~select(global0.a, u_input.b.x, global3[_wgslsmith_index_u32(global0.a, 11u)]), ~0u));
    global2 = array<vec3<bool>, 8>();
    return ~vec4<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(select(vec4<i32>(arg_0, -33582i, arg_0, 0i), vec4<i32>(-67999i, -2147483647i, -1i, 2147483647i), vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(u_input.b.x, 11u)]))), vec4<i32>(firstTrailingBit(arg_0), arg_1, arg_1, arg_1)), arg_0, ~(~arg_0), _wgslsmith_div_i32(arg_0, 22777i));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: f32) -> f32 {
    global3 = array<bool, 11>();
    let var_0 = arg_0;
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 2037u, arg_0.a) | vec3<u32>(~68383u, 43044u, arg_0.a), ~_wgslsmith_sub_vec3_u32(vec3<u32>(23735u, 1u, arg_0.a), ~vec3<u32>(4294967295u, arg_0.a, var_0.a))) & ((~countOneBits(u_input.b) | (~u_input.b >> (vec3<u32>(var_0.a, 4294967295u, arg_0.a) % vec3<u32>(32u)))) ^ ~(~(~vec3<u32>(var_0.a, 38765u, u_input.b.x))));
    var var_2 = ~_wgslsmith_add_u32(~u_input.b.x, var_0.a);
    var var_3 = vec2<i32>(arg_1, max(reverseBits(28365i) | -u_input.a, reverseBits(~(i32(-1i) * -10877i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-852f + 102f) + _wgslsmith_f_op_f32(arg_3 - 143f))))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = vec3<f32>(-466f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-391f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_0, ~1i, firstTrailingBit(func_3(u_input.a, 75581i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1105f + 1526f)))))));
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    global3 = array<bool, 11>();
    let var_0 = func_2(all(arg_1.zx), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_3.x)), arg_3.x) <= 990f, arg_0, Struct_1(4294967295u), countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.a, 50715u, global0.a), u_input.b))), arg_2, 4294967295u);
    global0 = var_0;
    global1 = _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + _wgslsmith_f_op_f32(ceil(692f))));
    let var_1 = max(firstTrailingBit(select(u_input.b, _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a, u_input.b.x, 61992u), vec3<u32>(u_input.b.x, 24306u, 4294967295u) ^ vec3<u32>(64510u, 29712u, 107970u)), true)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(min(u_input.b, ~u_input.b), vec3<u32>(~56244u, 4294967295u, 0u >> (u_input.b.x % 32u))), firstLeadingBit(u_input.b)));
    return arg_0;
}

fn func_6(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(!any(select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(0u, 11u)], global3[_wgslsmith_index_u32(u_input.b.x, 11u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 11u)], false, global3[_wgslsmith_index_u32(50748u, 11u)], true), vec4<bool>(false, false, global3[_wgslsmith_index_u32(global0.a, 11u)], global3[_wgslsmith_index_u32(global0.a, 11u)]), false), !vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 11u)], true, global3[_wgslsmith_index_u32(4294967295u, 11u)]))), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(select(~vec2<u32>(arg_1.a, arg_1.a), u_input.b.yz, vec2<bool>(true, false)), vec2<u32>(30329u, 4294967295u) << (vec2<u32>(u_input.b.x, arg_1.a) % vec2<u32>(32u))), 11u)], max(_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, global0.a >> (global0.a % 32u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_1.a, global0.a), ~1u)) >= max(26777u, _wgslsmith_div_u32(_wgslsmith_div_u32(1u, arg_1.a), _wgslsmith_dot_vec3_u32(vec3<u32>(55131u, global0.a, global0.a), u_input.b))), true);
    var var_1 = Struct_1(0u);
    let var_2 = vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -366f));
    let var_3 = select(!(!vec4<bool>(var_0.x, var_0.x, true, -2147483647i < u_input.a)), vec4<bool>(_wgslsmith_mod_i32(_wgslsmith_add_i32(7876i, 1i), -u_input.a) <= _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(2147483647i, 28i, u_input.a)), !(!any(vec3<bool>(var_0.x, false, global3[_wgslsmith_index_u32(var_1.a, 11u)]))), var_0.x, any(select(!vec4<bool>(var_0.x, var_0.x, true, false), !vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(global0.a, 11u)]), true))), true);
    global2 = array<vec3<bool>, 8>();
    return Struct_1(func_2(any(!select(vec2<bool>(var_3.x, true), vec2<bool>(false, true), false)), arg_1, arg_1, var_1.a).a);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec4<u32>) -> f32 {
    var var_0 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))), func_5(func_2(false, Struct_1(0u), Struct_1(abs(arg_0)), arg_2.x), select(select(select(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], vec3<bool>(global3[_wgslsmith_index_u32(36478u, 11u)], global3[_wgslsmith_index_u32(37981u, 11u)], false), vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 11u)], global3[_wgslsmith_index_u32(0u, 11u)])), vec3<bool>(false, true, global3[_wgslsmith_index_u32(4294967295u, 11u)]), all(global2[_wgslsmith_index_u32(1u, 8u)])), !(!vec3<bool>(true, global3[_wgslsmith_index_u32(arg_0, 11u)], false)), vec3<bool>(global3[_wgslsmith_index_u32(countOneBits(0u), 11u)], false, any(vec2<bool>(true, global3[_wgslsmith_index_u32(arg_0, 11u)])))), Struct_1(select(u_input.b.x, 105635u, false) << (arg_1 % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-705f - -1055f), _wgslsmith_f_op_f32(f32(-1f) * -360f))));
    let var_1 = func_3(_wgslsmith_sub_i32(u_input.a, u_input.a), max(2147483647i, _wgslsmith_add_i32(-(~u_input.a), -2147483647i))).xyx;
    var var_2 = Struct_1(4294967295u);
    var_0 = Struct_1(var_0.a);
    var var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(max(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, var_1.x, u_input.a, 2147483647i), vec4<i32>(2147483647i, var_1.x, -12478i, var_1.x)), select(vec4<i32>(-2147483647i, 1i, 14125i, u_input.a), vec4<i32>(var_1.x, 10048i, -4081i, var_1.x), false)), ~func_3(var_1.x, -15961i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 2147483647i, var_1.x), ~vec4<i32>(u_input.a, var_1.x, var_1.x, var_1.x)) << (vec4<u32>(var_2.a, 1u, 19774u, ~arg_0) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_i32(func_3(-22842i, i32(-1i) * -var_1.x), vec4<i32>(_wgslsmith_mult_i32(14020i, ~(-4354i)), 25438i, var_1.x, -15721i));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-436f, -614f)));
}

fn func_7(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = global0.a;
    global3 = array<bool, 11>();
    global2 = array<vec3<bool>, 8>();
    let var_1 = Struct_1(4294967295u);
    var var_2 = func_6(arg_0.x, var_1);
    return Struct_1(min(45719u, var_1.a) | 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 8>();
    var var_0 = func_7(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1218f, 430f, 1000f, -551f))) + vec4<f32>(-560f, 1227f, -702f, -1945f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-443f, -674f, 1008f, -1678f)))), vec4<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(global0.a, u_input.b.x, vec4<u32>(u_input.b.x, 15225u, global0.a, global0.a))), -741f)), _wgslsmith_f_op_f32(func_1(_wgslsmith_sub_u32(global0.a, global0.a), reverseBits(1u), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, global0.a))), -118f)));
    global2 = array<vec3<bool>, 8>();
    global1 = _wgslsmith_f_op_f32(-793f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-126f, _wgslsmith_f_op_f32(-1046f + 917f))), 868f, !(u_input.a < u_input.a))) * _wgslsmith_f_op_f32(f32(-1f) * -183f)));
    var var_1 = 1i;
    var var_2 = -825f;
    let var_3 = reverseBits(firstTrailingBit(vec2<i32>(u_input.a ^ _wgslsmith_div_i32(2147483647i, -5638i), -23770i)));
    let var_4 = func_7(vec4<f32>(270f, _wgslsmith_f_op_f32(f32(-1f) * -1011f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1318f), _wgslsmith_div_f32(555f, 1140f), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.a, 64242u), 11u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1168f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1282f, 1523f) - _wgslsmith_f_op_f32(f32(-1f) * -976f)) * 940f)));
    global1 = _wgslsmith_f_op_f32(max(-475f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -898f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~_wgslsmith_div_i32(reverseBits(1i), -2147483647i) & (-(0i ^ var_3.x) ^ 2147483647i), 76124u, min(_wgslsmith_div_i32(_wgslsmith_add_i32(13788i, -2147483647i), 1i), abs(~reverseBits(var_3.x))));
}

