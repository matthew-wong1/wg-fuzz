struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

var<private> global2: array<u32, 24> = array<u32, 24>(0u, 4294967295u, 554u, 0u, 8167u, 0u, 10425u, 74204u, 68925u, 80941u, 1u, 82195u, 86433u, 25187u, 60167u, 25148u, 0u, 38283u, 4294967295u, 47909u, 4294967295u, 4294967295u, 4294967295u, 5121u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-223f, arg_2), vec2<f32>(-545f, -297f), vec2<bool>(true, arg_1.x))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-185f, 501f), vec2<f32>(arg_2, arg_2)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), vec2<f32>(arg_2, arg_2)))))));
    var var_1 = vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -u_input.a, -u_input.a ^ _wgslsmith_mult_i32(firstTrailingBit(0i), -2147483647i)), _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, ~(-2147483647i)) << (~1u % 32u), u_input.a), u_input.a);
    let var_2 = select(!vec2<bool>((i32(-1i) * -43174i) < (63761i & var_1.x), true), vec2<bool>(arg_1.x, (_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35729u, 24u)], 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)]) << (~global2[_wgslsmith_index_u32(1u, 24u)] % 32u)) != select(~54028u, firstTrailingBit(19900u), any(arg_0))), arg_1.zx);
    var var_3 = 0u;
    let var_4 = ~u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-533f + arg_2) + 971f);
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, false, false), vec3<bool>(false, true, false), -1000f)))))), -2147483647i);
    var var_1 = var_0;
    global1 = -427f;
    global0 = !(~(~countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37381u, 24u)], 24u)])) > (0u & ~min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22744u, 24u)], 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)], 24u)])));
    let var_2 = var_0;
    return select(vec2<bool>(false, true), !select(vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(true, true), true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = 1864f;
    global2 = array<u32, 24>();
    let var_1 = (reverseBits(~_wgslsmith_sub_u32(28216u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37741u, 24u)], 24u)])) ^ 0u) <= 0u;
    let var_2 = arg_2;
    let var_3 = vec3<f32>(arg_2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, arg_2.a)))))), _wgslsmith_f_op_f32(select(var_2.a, var_2.a, !all(vec3<bool>(true, var_1, true)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-532f, _wgslsmith_f_op_f32(1141f * 450f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(arg_0.x, var_1, false, arg_0.x), vec3<bool>(arg_0.x, true, var_1), arg_1.a)))))));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: i32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(arg_1.x - 2887f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_1.x, -472f, arg_0)), _wgslsmith_f_op_f32(-arg_1.x), true))))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = vec3<f32>(-1385f, _wgslsmith_f_op_f32(func_4(!(!func_2()), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), -1349f, -13341i < u_input.a)), countOneBits(11068i)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x + arg_1.x))), -1i))), _wgslsmith_f_op_f32(700f + -959f));
    let var_2 = -463f;
    global0 = false;
    var var_3 = countOneBits(vec2<i32>((i32(-1i) * -2147483647i) >> ((min(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)]) & _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 43373u), vec2<u32>(4294967295u, 7075u))) % 32u), _wgslsmith_div_i32(~(-arg_2), arg_2)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(var_1, arg_1, vec3<bool>(arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-677f, -297f, arg_1.x), vec3<f32>(-857f, 790f, var_2)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1593f, 1000f, var_1.x))))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(-192f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(arg_0, true, true, false), vec3<bool>(true, arg_0, false), 1000f))), -909f))));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec3_i32(~(-min(vec3<i32>(0i, -12404i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)) << (vec3<u32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 24u)]), 24u)], ~global2[_wgslsmith_index_u32(49751u, 24u)], ~1u) % vec3<u32>(32u))), -vec3<i32>(~(-2147483647i), ~2147483647i, ~(-26108i)) << (vec3<u32>(1u, ~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1, 24u)], 24u)], 0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 1u, arg_1, arg_1), vec4<u32>(24714u, 1u, 0u, arg_1))) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(~(-vec3<i32>(-3143i, -2147483647i, -22931i)), max(min(vec3<i32>(52905i, u_input.a, u_input.a), -vec3<i32>(1i, u_input.a, u_input.a)), ~(~vec3<i32>(26612i, 2147483647i, 39064i)))));
    var var_1 = Struct_1(arg_0.x, 2147483647i);
    var var_2 = global2[_wgslsmith_index_u32(arg_1, 24u)];
    let var_3 = Struct_1(-304f, -reverseBits(var_0.x));
    var var_4 = !(((_wgslsmith_mult_u32(arg_1, 0u) > (arg_1 ^ global2[_wgslsmith_index_u32(61460u, 24u)])) && false) && true);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(func_1(160234u > (~1u & _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)], 0u, global2[_wgslsmith_index_u32(0u, 24u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(65875u, 24u)], global2[_wgslsmith_index_u32(56223u, 24u)]))), _wgslsmith_div_vec3_f32(vec3<f32>(-614f, _wgslsmith_f_op_f32(-1435f - 1535f), _wgslsmith_f_op_f32(max(1000f, 168f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(210f - 347f), -1396f)), ~countOneBits(~0i))), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21636u, 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(55739u, 24u)])), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], global2[_wgslsmith_index_u32(1u, 24u)], 45609u))), 24u)], 24u)], 24u)], -2186f);
    let var_1 = var_0.a;
    var var_2 = 3249f;
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(135f))))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1297f, var_0.a)));
    var var_3 = vec2<bool>(all(select(func_2(), vec2<bool>(true, true), select(vec2<bool>(true, true), func_2(), 1346f < var_1))), func_2().x);
    var_3 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(!vec2<bool>(var_3.x, true), Struct_1(421f, u_input.a), func_5(vec3<f32>(var_0.a, 1050f, var_1), 22178u, 161f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(928f, var_0.a, true)) + var_0.a)))), vec2<i32>((u_input.a >> (0u % 32u)) ^ ~min(0i, 2147483647i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -22932i, var_0.b, u_input.a), vec4<i32>(2147483647i, -9793i, 15928i, -12911i)) >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(58759u, 24u)], 24u)] % 32u)), ~_wgslsmith_div_vec3_u32(~vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17675u, 24u)], 24u)], 24u)]) | abs(vec3<u32>(global2[_wgslsmith_index_u32(60729u, 24u)], 67403u, 1189u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(61783u, 24u)], 30628u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(3469u, 24u)], 67570u), vec3<u32>(19906u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45435u, 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21642u, 24u)], 24u)])) << (~vec3<u32>(global2[_wgslsmith_index_u32(39757u, 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15262u, 24u)], 24u)], 59433u) % vec3<u32>(32u))), _wgslsmith_add_vec4_u32(max(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(25709u, 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17354u, 24u)], 24u)], 24u)], 46912u), vec4<u32>(1825u, global2[_wgslsmith_index_u32(6572u, 24u)], 4294967295u, 0u)), vec4<u32>(34709u, 4294967295u, global2[_wgslsmith_index_u32(1u, 24u)], 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36169u, 24u)], 24u)], 24u)], 22527u, global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(2217u, 24u)]), vec4<u32>(global2[_wgslsmith_index_u32(1291u, 24u)], 16424u, global2[_wgslsmith_index_u32(16163u, 24u)], 76404u), ~vec4<u32>(7524u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], global2[_wgslsmith_index_u32(20401u, 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)]))), ~(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2205u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 4551u, global2[_wgslsmith_index_u32(4294967295u, 24u)]))));
}

