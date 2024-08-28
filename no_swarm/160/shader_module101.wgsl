struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-45423i, 13683i);

var<private> global1: Struct_1 = Struct_1(vec3<i32>(0i, 24051i, 2147483647i), -14581i);

var<private> global2: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-923f, -535f, 261f), vec3<f32>(2280f, -450f, -184f), vec3<f32>(1721f, 1112f, -1579f), vec3<f32>(-268f, -797f, -739f), vec3<f32>(266f, -1000f, -116f), vec3<f32>(358f, 335f, 487f), vec3<f32>(-1209f, 612f, 373f), vec3<f32>(-452f, -726f, 495f), vec3<f32>(1000f, -1163f, 2837f), vec3<f32>(-109f, -1877f, -777f), vec3<f32>(-615f, 1007f, 662f), vec3<f32>(795f, -1272f, 924f), vec3<f32>(-1435f, -131f, 244f), vec3<f32>(1590f, -535f, -766f), vec3<f32>(-1011f, -1223f, 268f), vec3<f32>(560f, -939f, 449f), vec3<f32>(514f, -519f, -823f), vec3<f32>(-614f, -1425f, -203f), vec3<f32>(-304f, 1435f, -882f), vec3<f32>(-1391f, 1277f, -1501f), vec3<f32>(1000f, 1397f, 3352f));

var<private> global3: vec3<u32> = vec3<u32>(42922u, 24894u, 53947u);

var<private> global4: array<f32, 16>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_sub_u32(u_input.b, ~_wgslsmith_clamp_u32(u_input.b, ~global3.x, ~1u)) & ~firstTrailingBit(~abs(99616u));
    let var_1 = global1.a.zy;
    global4 = array<f32, 16>();
    global1 = Struct_1(global1.a, 13250i);
    global0 = vec2<i32>(_wgslsmith_add_i32(-_wgslsmith_sub_i32(27027i | global0.x, 1i), global1.a.x), ~10776i);
    return global3.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> bool {
    var var_0 = Struct_1(arg_2.b.a, firstLeadingBit(arg_2.b.a.x) >> (1678u % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, 727f), _wgslsmith_f_op_vec2_f32(-arg_2.a), vec2<bool>(-2383i <= global0.x, true)))));
    var_0 = Struct_1(_wgslsmith_mult_vec3_i32(var_0.a, var_0.a) & vec3<i32>(abs(arg_2.b.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(39187i, u_input.a, global0.x, global1.a.x) >> (vec4<u32>(4294967295u, u_input.b, 1u, 61936u) % vec4<u32>(32u)), vec4<i32>(-23403i, u_input.a, 2147483647i, u_input.a)), -48579i), ~_wgslsmith_clamp_i32(-2147483647i, ~2147483647i, 0i));
    var_0 = arg_2.b;
    var var_2 = (abs(func_3()) < 1u) | (arg_2.a.x == _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1, 0u), 16u)])));
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global4[_wgslsmith_index_u32(u_input.b, 16u)], global4[_wgslsmith_index_u32(4294967295u, 16u)]))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1982f, -1600f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global4[_wgslsmith_index_u32(69706u, 16u)])), vec2<f32>(1108f, -294f)))))));
    let var_1 = func_4(var_0, u_input.b >> (func_3() % 32u), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(602f + 108f))), _wgslsmith_f_op_f32(sign(669f))), Struct_1(global1.a, _wgslsmith_div_i32(-2147483647i, global0.x) ^ global1.b)), ~max(8564i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -14653i), global1.a)));
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var var_3 = Struct_2(vec2<f32>(_wgslsmith_div_f32(var_2, -831f), _wgslsmith_f_op_f32(trunc(-359f))), Struct_1(abs(select(-global1.a, _wgslsmith_div_vec3_i32(global1.a, global1.a), false)), _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.a.x, 2147483647i), global1.a.xz, vec2<i32>(0i, -24755i)), vec2<i32>(countOneBits(1i), 1i))));
    var var_4 = Struct_1(vec3<i32>(8077i, ~u_input.a, 9534i) & global1.a, _wgslsmith_add_i32(-2147483647i, 1i));
    return var_3.b;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<i32> {
    global3 = ~vec3<u32>(0u, u_input.b, 0u) & select(vec3<u32>(75602u, global3.x, arg_0), ~(~vec3<u32>(0u, u_input.b, u_input.b)) >> (vec3<u32>(_wgslsmith_mult_u32(65540u, 0u), 0u, _wgslsmith_mod_u32(arg_0, global3.x)) % vec3<u32>(32u)), vec3<bool>(_wgslsmith_add_i32(global1.a.x, arg_1.b) < arg_2.a.x, false, (u_input.a != global1.a.x) || false));
    var var_0 = reverseBits(~global1.a);
    let var_1 = vec2<u32>(1u, global3.x);
    let var_2 = abs(var_0.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2116f))))));
    return -min(-vec4<i32>(0i, min(u_input.a, arg_2.a.x), max(u_input.a, -1i), 73491i), _wgslsmith_add_vec4_i32(-vec4<i32>(20505i, 0i, arg_2.b, -9913i), ~(vec4<i32>(var_0.x, -1i, global1.b, arg_1.b) | vec4<i32>(global1.a.x, arg_2.b, var_0.x, -47962i))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    global2 = array<vec3<f32>, 21>();
    let var_0 = 27411u;
    var var_1 = min(vec2<u32>(select(~(~global3.x), 20264u, true), var_0), min(global3.zx, ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 4294967295u), global3.xy))));
    var var_2 = -abs(func_5(var_1.x, func_2(), Struct_1(global1.a ^ global1.a, ~(-1i)), vec2<f32>(_wgslsmith_f_op_f32(select(1314f, global4[_wgslsmith_index_u32(0u, 16u)], true)), _wgslsmith_f_op_f32(727f + -1146f))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(43954u, 16u)], _wgslsmith_f_op_f32(arg_0.a.x - 1429f))), func_2());
    return Struct_1(~(-(~vec3<i32>(var_3.b.a.x, -3248i, 49385i) << (~vec3<u32>(0u, 4294967295u, 1u) % vec3<u32>(32u)))), -2147483647i);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<u32>) -> Struct_2 {
    global3 = arg_2 & _wgslsmith_add_vec3_u32(~abs(arg_2) << (~_wgslsmith_mult_vec3_u32(arg_2, arg_2) % vec3<u32>(32u)), abs(~vec3<u32>(0u, 24764u, 1u)));
    global1 = func_1(Struct_2(vec2<f32>(-115f, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.b), 16u)]), func_1(Struct_2(vec2<f32>(1f, 1f), func_2()), select(!vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), !vec4<bool>(false, arg_1.x, true, arg_1.x), true))), vec4<bool>(any(vec2<bool>(false, false)), true, any(!(!vec3<bool>(true, arg_1.x, false))), global4[_wgslsmith_index_u32(0u & _wgslsmith_sub_u32(arg_2.x, 45241u), 16u)] > global4[_wgslsmith_index_u32(global3.x, 16u)]));
    global0 = firstTrailingBit(_wgslsmith_clamp_vec2_i32(~(~arg_0.a.xy), _wgslsmith_sub_vec2_i32(arg_0.a.zy, vec2<i32>(global1.b, -9035i) ^ vec2<i32>(2147483647i, global1.a.x)), _wgslsmith_sub_vec2_i32(func_1(Struct_2(vec2<f32>(1088f, global4[_wgslsmith_index_u32(619u, 16u)]), arg_0), vec4<bool>(arg_1.x, true, true, arg_1.x)).a.zz, vec2<i32>(global0.x, global0.x)))) >> (_wgslsmith_div_vec2_u32(vec2<u32>(~global3.x & 4294967295u, func_3()), select(vec2<u32>(_wgslsmith_mod_u32(u_input.b, arg_2.x), _wgslsmith_div_u32(20254u, global3.x)), global3.yx, !arg_1)) % vec2<u32>(32u));
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~u_input.b ^ global3.x, 16u)] * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(arg_2.x, 16u)]))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-519f, _wgslsmith_f_op_f32(floor(761f))))))), func_2());
    global2 = array<vec3<f32>, 21>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.a.xx;
    var var_0 = 0u;
    var var_1 = func_6(func_1(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(688f * global4[_wgslsmith_index_u32(44001u, 16u)]), -1460f), Struct_1(select(vec3<i32>(global1.b, 1i, 2147483647i), vec3<i32>(global0.x, u_input.a, u_input.a), true), 2065i)), select(vec4<bool>(any(vec3<bool>(false, true, true)), global4[_wgslsmith_index_u32(19593u, 16u)] == 1519f, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), false)), vec2<bool>(true, true), abs(vec3<u32>(max(27266u, 55124u), global3.x, u_input.b) >> (min(vec3<u32>(47730u, 37101u, 60515u) << (vec3<u32>(global3.x, global3.x, global3.x) % vec3<u32>(32u)), vec3<u32>(0u, 41000u, 55593u)) % vec3<u32>(32u))));
    var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(~24087u, 16u)], -844f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))), func_6(var_1.b, select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, false, true, true)))), firstTrailingBit(vec3<u32>(~global3.x, _wgslsmith_div_u32(global3.x, global3.x), 1u))).b);
    var var_2 = func_6(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_add_i32(var_1.b.a.x, -32224i), -1i), global1.a), 2147483647i), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), vec3<u32>(min(u_input.b, 1u & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 15119u, 0u), vec3<u32>(u_input.b, global3.x, 1u))), reverseBits(min(~global3.x, u_input.b)), ~u_input.b));
    let var_3 = -30602i;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~select(func_6(Struct_1(var_1.b.a, u_input.a), vec2<bool>(true, false), vec3<u32>(104873u, 4294967295u, global3.x)).b.a.x, _wgslsmith_div_i32(-30953i, var_1.b.b), true)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(~vec3<u32>(global3.x, u_input.b, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(9248u, 26078u, u_input.b), vec3<u32>(1u, 70553u, global3.x)) | reverseBits(vec3<u32>(global3.x, 0u, 4294967295u))), vec3<u32>(47498u, 0u, func_3())), -func_2().a.x);
}

