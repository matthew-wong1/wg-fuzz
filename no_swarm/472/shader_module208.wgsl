struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: bool = true;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: Struct_3) -> vec2<bool> {
    global0 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_add_vec4_i32(~abs(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, arg_3.b, u_input.b, -1i), vec4<i32>(arg_0, -51968i, arg_2, arg_0)), vec4<i32>(-60614i, arg_2, arg_0, -1i))), abs(reverseBits(abs(vec4<i32>(36881i, arg_3.b, arg_0, u_input.b)))));
    global0 = array<Struct_1, 29>();
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(725f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1113f * 1013f), -631f, arg_2 >= arg_2))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(1217f + 665f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f * 418f)) - 1738f))));
    global1 = select(any(select(arg_3.a.yyy, !select(arg_3.a.xwz, arg_3.a.yxz, arg_3.a.zwy), true)), any(!vec2<bool>(arg_3.a.x, false & arg_3.a.x)), !((u_input.a >> (~u_input.a % 32u)) == _wgslsmith_sub_u32(u_input.a, reverseBits(1u))));
    return vec2<bool>(arg_1, any(arg_3.a.yyy));
}

fn func_2(arg_0: bool) -> vec2<u32> {
    let var_0 = select(select(select(vec2<bool>(arg_0, all(vec3<bool>(true, true, arg_0))), func_3(~u_input.b, all(vec2<bool>(arg_0, true)), _wgslsmith_div_i32(u_input.b, u_input.b), Struct_3(vec4<bool>(false, false, true, arg_0), u_input.b)), select(true & arg_0, true, true)), select(vec2<bool>(func_3(-2147483647i, false, 34930i, Struct_3(vec4<bool>(arg_0, arg_0, arg_0, true), u_input.b)).x, true), select(!vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), false), !(!vec2<bool>(arg_0, true))), arg_0), vec2<bool>(true, !(arg_0 && false)), arg_0);
    var var_1 = Struct_3(!select(select(vec4<bool>(arg_0, var_0.x, false, false), select(vec4<bool>(var_0.x, arg_0, true, var_0.x), vec4<bool>(true, arg_0, true, false), vec4<bool>(var_0.x, false, false, arg_0)), vec4<bool>(var_0.x, arg_0, true, true)), vec4<bool>(var_0.x | false, !var_0.x, true, true), select(select(vec4<bool>(arg_0, var_0.x, var_0.x, true), vec4<bool>(true, true, true, false), false), vec4<bool>(false, arg_0, true, false), var_0.x)), ~firstLeadingBit(~u_input.b));
    let var_2 = ~(~vec3<u32>(firstLeadingBit(7785u), u_input.a, ~u_input.a) | ((~vec3<u32>(70177u, 28231u, u_input.a) << (vec3<u32>(u_input.a, 74225u, u_input.a) % vec3<u32>(32u))) | max(abs(vec3<u32>(0u, 42598u, u_input.a)), abs(vec3<u32>(u_input.a, u_input.a, 9948u)))));
    global0 = array<Struct_1, 29>();
    global1 = false;
    return firstTrailingBit(vec2<u32>(31755u, abs(_wgslsmith_clamp_u32(firstTrailingBit(u_input.a), u_input.a ^ 4294967295u, ~var_2.x))));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> i32 {
    var var_0 = ~(vec2<u32>(u_input.a, ~(u_input.a ^ 49604u)) & func_2(true));
    global1 = true;
    var var_1 = -(arg_1.b & ~arg_1.b) | arg_1.b;
    let var_2 = vec2<i32>(~(-arg_1.b) ^ -2147483647i, u_input.b);
    var var_3 = min(abs(_wgslsmith_add_vec2_u32(~countOneBits(vec2<u32>(71117u, 4294967295u)), ~(~vec2<u32>(u_input.a, 0u)))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 72128u), vec2<u32>(1u, var_0.x)), min(vec2<u32>(var_0.x, 0u), vec2<u32>(7617u, var_0.x))) >> (select(abs(max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, var_0.x))), vec2<u32>(1u, _wgslsmith_sub_u32(var_0.x, u_input.a)), !(!vec2<bool>(false, arg_0))) % vec2<u32>(32u)));
    return 2147483647i;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-333f)) * 452f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1804f)), true)), 863f);
    global0 = array<Struct_1, 29>();
    var var_1 = min(arg_0.zwy ^ vec3<i32>(0i, u_input.b, -2147483647i), reverseBits(_wgslsmith_mod_vec3_i32(min(-arg_0.yyy, firstLeadingBit(vec3<i32>(arg_0.x, 30290i, arg_0.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(59044i, u_input.b, -1i), ~arg_0.zxw))));
    let var_2 = Struct_1(min(~(-33360i), _wgslsmith_mult_i32(select(_wgslsmith_add_i32(1i, -21627i), _wgslsmith_div_i32(var_1.x, arg_0.x), false), min(~arg_0.x, ~(-7027i)))), arg_1.x, vec3<u32>(func_2(true).x & 53167u, u_input.a, ~u_input.a), arg_1.x, arg_0.xxy);
    let var_3 = var_0;
    return abs(var_2.c.x);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    global1 = false && arg_3.b.x;
    global1 = arg_3.b.x;
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(926f, -1661f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(741f + 1887f), _wgslsmith_f_op_f32(f32(-1f) * -109f))), _wgslsmith_f_op_f32(trunc(-915f)), arg_0.d))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-980f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-767f, 126f)) - _wgslsmith_f_op_f32(1289f - 175f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(641f)) + _wgslsmith_f_op_f32(f32(-1f) * -224f)), 0u > ~arg_3.c.c.x))));
    var var_1 = vec4<u32>(35818u, arg_0.c.x, u_input.a, arg_0.c.x);
    global1 = arg_0.b;
    return arg_3;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    global1 = !(!(!(arg_1.b.x & true)));
    var var_0 = vec2<i32>(abs(u_input.b), 2325i);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(1238f)), 518f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1222f, 567f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -268f), 1000f, 1106f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(232f, -369f, -210f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(955f)) * -606f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-479f + 663f), _wgslsmith_f_op_f32(f32(-1f) * -174f))), 609f), !arg_1.b.zyx)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1127f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1393f)) * _wgslsmith_f_op_f32(round(var_1.x))) + _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))) < -1289f;
    let var_3 = var_1.x;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-848f - 646f) * 1623f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(680f)) + -1900f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(657f, -348f)) * 474f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -790f) - -176f));
    global1 = func_6(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(0i, 29088i)) ^ ~(vec2<i32>(48366i, -2147483647i) & vec2<i32>(u_input.b, u_input.b)), select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, 0i), vec4<i32>(u_input.b, -9454i, u_input.b, 51480i)), -3040i), abs(~vec2<i32>(u_input.b, u_input.b)), true)), func_5(global0[_wgslsmith_index_u32(func_4(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-21551i, 0i, u_input.b), vec3<i32>(-2147483647i, u_input.b, -23812i)), u_input.b, func_1(true, Struct_3(vec4<bool>(false, false, false, true), 2147483647i)), reverseBits(976i)), vec3<bool>(true, true, true), reverseBits(firstTrailingBit(u_input.a)), vec3<bool>(true, true, true)), 29u)], ~(~u_input.a) < select(_wgslsmith_dot_vec4_u32(vec4<u32>(32630u, 29358u, u_input.a, 4294967295u), vec4<u32>(37890u, u_input.a, u_input.a, u_input.a)), u_input.a, func_3(-20250i, false, u_input.b, Struct_3(vec4<bool>(true, true, false, false), -45336i)).x), _wgslsmith_mult_u32(~1u, ~(u_input.a >> (u_input.a % 32u))), Struct_2(_wgslsmith_mult_u32(~u_input.a, ~24945u), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(86979u, 29u)], ~4294967295u)), func_5(func_5(Struct_1(-u_input.b, true, vec3<u32>(10247u, 1u, u_input.a) | vec3<u32>(u_input.a, 1156u, u_input.a), true, ~vec3<i32>(-15845i, u_input.b, -2147483647i)), false, 67787u | _wgslsmith_dot_vec4_u32(vec4<u32>(862u, 1u, 8841u, 4294967295u), vec4<u32>(u_input.a, 25011u, u_input.a, u_input.a)), Struct_2(1u, select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), func_5(Struct_1(u_input.b, false, vec3<u32>(u_input.a, u_input.a, 79068u), true, vec3<i32>(-1819i, -5245i, u_input.b)), false, 75373u, Struct_2(1u, vec4<bool>(true, false, true, true), Struct_1(u_input.b, false, vec3<u32>(4294967295u, 0u, 4294967295u), true, vec3<i32>(u_input.b, u_input.b, u_input.b)), u_input.a)).c, ~9865u)).c, false, 1u, Struct_2(select(32048u, 85748u, false), func_5(func_5(Struct_1(u_input.b, true, vec3<u32>(u_input.a, 49604u, u_input.a), true, vec3<i32>(28125i, u_input.b, u_input.b)), false, u_input.a, Struct_2(u_input.a, vec4<bool>(false, true, true, true), global0[_wgslsmith_index_u32(1u, 29u)], u_input.a)).c, u_input.b != u_input.b, ~u_input.a, Struct_2(u_input.a, vec4<bool>(false, false, false, true), global0[_wgslsmith_index_u32(u_input.a, 29u)], u_input.a)).b, global0[_wgslsmith_index_u32(u_input.a, 29u)], _wgslsmith_clamp_u32(0u, 0u, u_input.a) << (~u_input.a % 32u))).c, ~vec2<i32>(-28094i, -select(-24396i, u_input.b, true)));
    global0 = array<Struct_1, 29>();
    var var_1 = countOneBits(~min(vec4<u32>(1u, u_input.a, ~u_input.a, 1u), firstTrailingBit(~vec4<u32>(u_input.a, u_input.a, 78375u, 62632u))));
    let var_2 = Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 48858i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<i32>(min(u_input.b, u_input.b), -1779i, 1i, _wgslsmith_mod_i32(7973i, 2147483647i))), -u_input.b), all(vec3<bool>(true, true, true)), var_1.zww, true, -(~(~(vec3<i32>(u_input.b, u_input.b, u_input.b) ^ vec3<i32>(1i, 1i, 0i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(~(~var_1.yz), ~var_2.c.zy));
}

