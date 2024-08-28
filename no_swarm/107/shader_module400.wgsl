struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<bool>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: Struct_3;

var<private> global2: vec2<i32> = vec2<i32>(118665i, -10478i);

var<private> global3: array<bool, 11>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec4<i32>) -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a, 409f, global1.a, global1.a))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(433f, -1412f, global1.a, 283f), vec4<f32>(global1.a, -897f, global1.a, global1.a), vec4<bool>(false, global3[_wgslsmith_index_u32(52447u, 11u)], true, true))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-204f, global1.a, global1.a, 972f) - vec4<f32>(-241f, 284f, -1000f, global1.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a, -1128f, global1.a, global1.a)))) + vec4<f32>(_wgslsmith_f_op_f32(min(1250f, global1.a)), 1071f, _wgslsmith_f_op_f32(global1.a + -369f), _wgslsmith_f_op_f32(-global1.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(139f, 270f, global1.a) * vec3<f32>(global1.a, -940f, -1706f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a, global1.a, global1.a), vec3<f32>(global1.a, global1.a, global1.a), true)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1142f, global1.a, global1.a) - vec3<f32>(global1.a, -834f, 1590f)))))), global0[_wgslsmith_index_u32(global1.b, 4u)], global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global1.b, ~(~u_input.e.x)), 4u)], arg_2);
    var var_1 = vec4<bool>(!var_0.d.c.x, true | any(var_0.d.c), true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(global1.b, 25842u)), 0u, _wgslsmith_mult_u32(46133u, u_input.e.x ^ 2354u), var_0.d.b), ~u_input.e), 11u)]);
    var var_2 = var_0;
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.d.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.e.x, 650f, global1.a, var_0.d.e.x) * var_2.a) * var_2.c.e)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_0.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, _wgslsmith_f_op_f32(var_2.a.x + -417f), _wgslsmith_f_op_f32(trunc(1332f))) + var_2.c.e.xwy), var_0.c, Struct_1(select(max(vec3<u32>(arg_1.x, 26615u, var_2.d.a.x), select(var_0.d.a, vec3<u32>(var_2.d.b, 49679u, 4294967295u), var_1.zyz)), var_0.c.a, select(var_1.wyz, select(var_1.yxw, vec3<bool>(global3[_wgslsmith_index_u32(0u, 11u)], true, global3[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec3<bool>(var_1.x, true, false)), true)), ~(~arg_1.x) >> ((_wgslsmith_clamp_u32(var_0.d.b, 0u, u_input.d.x) | ~0u) % 32u), select(!select(vec2<bool>(false, false), var_1.xx, vec2<bool>(true, true)), vec2<bool>(true, -1785f <= var_2.a.x), vec2<bool>(var_0.d.c.x, all(vec4<bool>(var_2.d.c.x, global3[_wgslsmith_index_u32(var_0.d.a.x, 11u)], true, false)))), -vec2<i32>(select(1i, -17039i, global3[_wgslsmith_index_u32(1385u, 11u)]), 3028i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2550f, var_0.d.e.x, global1.a, 1000f), var_2.c.e))) + vec4<f32>(_wgslsmith_div_f32(-863f, global1.a), _wgslsmith_f_op_f32(f32(-1f) * -390f), global1.a, var_2.a.x))), var_2.e);
    var var_3 = var_2.a.zw;
    return select(var_0.d.d, vec2<i32>(-33022i, firstTrailingBit(-25825i)) | ((arg_0 >> (arg_1 % vec2<u32>(32u))) & vec2<i32>(global2.x, var_0.d.d.x)), true);
}

fn func_2() -> vec3<f32> {
    global3 = array<bool, 11>();
    global2 = -func_3(~(-firstTrailingBit(u_input.c.xz)), u_input.d.zx, u_input.c);
    let var_0 = vec2<u32>(abs(0u), global1.b);
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + -287f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.a, global1.a))), _wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(max(global1.a, global1.a)))))) + vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -256f))), global1.a, _wgslsmith_f_op_f32(f32(-1f) * -2023f)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = u_input.e;
    let var_1 = -1656f;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-266f, 260f, _wgslsmith_f_op_f32(ceil(arg_2.b.x)), -124f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) * vec3<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(max(-1412f, -1109f)), 392f)), Struct_1(~_wgslsmith_div_vec3_u32(arg_2.d.a, abs(vec3<u32>(global1.b, 4294967295u, global1.b))), 50837u, vec2<bool>(false, !(arg_2.a.x < global1.a)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_2.d.d.x), u_input.c.xy), 38108i) & abs(func_3(u_input.c.zy, arg_2.c.a.xz, vec4<i32>(-1i, -10294i, arg_0, global2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-361f)), _wgslsmith_f_op_f32(step(-569f, var_1)), 1f, _wgslsmith_f_op_f32(trunc(-327f))))), Struct_1(vec3<u32>(~1u | u_input.b.x, 1u, arg_2.d.b), 10910u, select(select(arg_2.d.c, select(vec2<bool>(true, false), arg_2.d.c, global3[_wgslsmith_index_u32(arg_1, 11u)]), !vec2<bool>(arg_2.d.c.x, global3[_wgslsmith_index_u32(10230u, 11u)])), vec2<bool>(true, true), arg_2.c.c), _wgslsmith_add_vec2_i32(vec2<i32>(global2.x, arg_0), u_input.c.wy | (arg_2.d.d ^ vec2<i32>(0i, arg_0))), arg_2.a), ~(vec4<i32>(_wgslsmith_dot_vec4_i32(arg_2.e, u_input.c), _wgslsmith_sub_i32(global2.x, -2147483647i), arg_2.e.x, i32(-1i) * -4832i) >> (_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(42293u, global1.b, u_input.e.x, 4294967295u)), abs(u_input.e)) % vec4<u32>(32u))));
    let var_3 = -(-abs(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, 51462i, var_2.d.d.x, arg_0), vec4<i32>(-1i, u_input.c.x, -1i, -1i))) | (u_input.c << ((~vec4<u32>(global1.b, 26u, arg_2.d.b, global1.b) << ((vec4<u32>(7392u, 68306u, u_input.b.x, 40376u) & vec4<u32>(1u, 0u, 4294967295u, arg_2.d.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_4 = true;
    return vec2<u32>(34867u, 2970u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + global1.a) - 1688f)))));
    global3 = array<bool, 11>();
    let var_1 = Struct_1(u_input.e.wxw, global1.b, vec2<bool>(true, false), u_input.c.wz, vec4<f32>(1000f, 1362f, _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(var_0, var_0)), _wgslsmith_f_op_f32(select(-1778f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-485f, global1.a), -400f)), true))));
    global0 = array<Struct_1, 4>();
    var var_2 = _wgslsmith_clamp_i32(~1i, reverseBits(u_input.a), _wgslsmith_dot_vec3_i32(u_input.c.wxw, _wgslsmith_mod_vec3_i32(u_input.c.zyy, vec3<i32>(1i, 2147483647i, var_1.d.x))));
    var var_3 = select(func_1(-59434i, ~_wgslsmith_add_u32(global1.b, ~4294967295u), Struct_2(var_1.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1237f, -169f, var_1.e.x) * _wgslsmith_f_op_vec3_f32(-var_1.e.xyy)), Struct_1(_wgslsmith_mod_vec3_u32(var_1.a, vec3<u32>(u_input.b.x, 29193u, global1.b)), 0u, var_1.c, vec2<i32>(9831i, 0i), vec4<f32>(118f, 1299f, -1846f, 468f)), Struct_1(_wgslsmith_add_vec3_u32(u_input.e.xyy, vec3<u32>(global1.b, u_input.e.x, 4294967295u)), ~u_input.d.x, vec2<bool>(true, true), vec2<i32>(6252i, -1i), vec4<f32>(132f, 973f, var_0, 532f)), _wgslsmith_add_vec4_i32(vec4<i32>(8695i, 21314i, global2.x, -62892i), u_input.c ^ vec4<i32>(-1i, -1i, 0i, -36372i)))), firstLeadingBit(vec2<u32>(firstLeadingBit(var_1.a.x), max(1u, u_input.d.x & var_1.b))), false);
    let var_4 = select(vec3<bool>(!global3[_wgslsmith_index_u32(abs(var_3.x), 11u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(var_1.a.x), _wgslsmith_mod_u32(28749u, 63283u & u_input.d.x)), 11u)], true), select(!vec3<bool>(any(vec4<bool>(true, true, var_1.c.x, false)), global3[_wgslsmith_index_u32(global1.b, 11u)], all(var_1.c)), vec3<bool>(true, true, var_1.c.x), false), !(!any(var_1.c)));
    global1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-615f)) * _wgslsmith_f_op_f32(f32(-1f) * -705f)), firstTrailingBit(func_1(firstLeadingBit(_wgslsmith_div_i32(var_1.d.x, -32247i)), _wgslsmith_mult_u32(global1.b, 4294967295u) >> (~4294967295u % 32u), Struct_2(_wgslsmith_f_op_vec4_f32(-var_1.e), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(406f, var_0, -952f), vec3<f32>(1584f, global1.a, global1.a), vec3<bool>(var_4.x, var_4.x, global3[_wgslsmith_index_u32(var_1.b, 11u)]))), Struct_1(vec3<u32>(1u, u_input.e.x, 1u), 13213u, var_1.c, u_input.c.wz, var_1.e), Struct_1(vec3<u32>(0u, 4294967295u, 22817u), 61202u, vec2<bool>(var_1.c.x, var_1.c.x), u_input.c.wy, var_1.e), select(vec4<i32>(global2.x, u_input.a, global2.x, -36701i), vec4<i32>(-4491i, 35257i, global2.x, u_input.c.x), global3[_wgslsmith_index_u32(1u, 11u)]))).x));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.c.xyz, vec3<i32>(var_1.d.x, var_1.d.x, global2.x), select(select(select(var_4, var_4, global3[_wgslsmith_index_u32(global1.b, 11u)]), var_4, var_4), select(select(vec3<bool>(false, false, true), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 11u)], var_4.x, true), vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x)), !var_4, var_4.x), vec3<bool>(true, any(vec4<bool>(var_1.c.x, global3[_wgslsmith_index_u32(var_1.b, 11u)], true, true)), true))), var_1.e.x, _wgslsmith_f_op_f32(abs(1318f)));
}

