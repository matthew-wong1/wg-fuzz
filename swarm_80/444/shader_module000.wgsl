struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<f32>(-585f, 1891f)), Struct_1(vec2<f32>(529f, -1000f)), Struct_1(vec2<f32>(467f, -1583f)), Struct_1(vec2<f32>(1152f, -1657f)), Struct_1(vec2<f32>(1857f, -222f)), Struct_1(vec2<f32>(1000f, 1469f)), Struct_1(vec2<f32>(618f, 568f)), Struct_1(vec2<f32>(-1000f, 1485f)), Struct_1(vec2<f32>(-1065f, -1079f)), Struct_1(vec2<f32>(-419f, -874f)), Struct_1(vec2<f32>(-1516f, -589f)), Struct_1(vec2<f32>(-808f, -1841f)), Struct_1(vec2<f32>(1461f, -1391f)), Struct_1(vec2<f32>(-852f, -794f)), Struct_1(vec2<f32>(-1083f, 1761f)), Struct_1(vec2<f32>(1371f, 760f)), Struct_1(vec2<f32>(579f, -786f)), Struct_1(vec2<f32>(236f, -726f)));

var<private> global2: array<f32, 28>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1546f, arg_1.a.x, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -352f, arg_0.a.x)), vec3<bool>(false, true, false))))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(143f, arg_0.a.x, global2[_wgslsmith_index_u32(u_input.b, 28u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-258f, arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1606f, arg_0.a.x, arg_0.a.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(110295u, 28u)]) * vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 28u)], arg_1.a.x, arg_1.a.x))))));
    var var_1 = firstTrailingBit(vec2<i32>(u_input.a, -(~0i << (u_input.b % 32u))));
    let var_2 = (-u_input.a ^ ~2147483647i) >= (-(~min(var_1.x, -2147483647i)) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 44278i, 4623i), vec3<i32>(1i, -37809i, var_1.x)), vec3<i32>(var_1.x, u_input.a, var_1.x) << (vec3<u32>(u_input.b, u_input.b, 62658u) % vec3<u32>(32u)), vec3<i32>(u_input.a, 0i, 2147483647i)), min(vec3<i32>(1i, 19771i, var_1.x) & vec3<i32>(u_input.a, 21875i, 60692i), vec3<i32>(-2147483647i, 2147483647i, u_input.a))));
    global0 = u_input.b;
    var var_3 = abs(max(i32(-1i) * -_wgslsmith_sub_i32(var_1.x, u_input.a), 27144i));
    return ~firstLeadingBit(_wgslsmith_div_u32(u_input.b, _wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(77696u, u_input.b))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(0u, 18u)];
    var var_1 = u_input.b;
    global2 = array<f32, 28>();
    global0 = _wgslsmith_sub_u32(~4294967295u, arg_0.x);
    var var_2 = vec2<u32>(27035u, u_input.b << (func_3(global1[_wgslsmith_index_u32(arg_0.x, 18u)], global1[_wgslsmith_index_u32(~13785u, 18u)]) % 32u));
    return Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a * var_0.a));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = func_2(select(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(1u, 69964u, 1u, u_input.b)), vec4<u32>(~49242u, u_input.b, ~u_input.b, countOneBits(u_input.b)), ~(vec4<u32>(19925u, u_input.b, 1u, u_input.b) ^ vec4<u32>(u_input.b, u_input.b, 38172u, 86081u))), max(~(~vec4<u32>(u_input.b, u_input.b, 54514u, u_input.b)), select(~vec4<u32>(30008u, 4294967295u, 81457u, u_input.b), reverseBits(vec4<u32>(u_input.b, 48556u, 1u, 1u)), true)), true));
    var var_1 = -reverseBits(~(-select(vec3<i32>(10109i, 8822i, arg_2), vec3<i32>(1i, u_input.a, 2147483647i), vec3<bool>(true, false, false))));
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1525f))), arg_1.a.x));
    global0 = u_input.b;
    let var_2 = -(~28483i);
    return 47504u;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(func_4(global2[_wgslsmith_index_u32(~u_input.b, 28u)], func_2(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), -50398i), u_input.b, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(46112u, 58419u)), ~(~vec2<u32>(0u, 46847u)))));
    var var_1 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1853f));
    var var_3 = arg_1.x;
    return !vec3<bool>(!any(vec2<bool>(var_1.x, var_1.x)) != all(!vec2<bool>(var_1.x, var_1.x)), var_1.x, true);
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.b, 18u)];
    global2 = array<f32, 28>();
    var var_1 = select(!(!vec2<bool>(true, any(vec2<bool>(false, true)))), !vec2<bool>(arg_0.x, !all(arg_0)), !(!(true & arg_0.x)) && all(!(!vec4<bool>(arg_0.x, false, false, false))));
    let var_2 = arg_0.x;
    var var_3 = _wgslsmith_div_i32(u_input.a, _wgslsmith_mod_i32(abs(i32(-1i) * -u_input.a), 2761i));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(37370u, 28u)] + var_0.a.x), -849f), _wgslsmith_f_op_vec2_f32(exp2(var_0.a)))) - vec2<f32>(global2[_wgslsmith_index_u32(max(u_input.b, u_input.b) << (_wgslsmith_div_u32(u_input.b, 0u) % 32u), 28u)], _wgslsmith_f_op_f32(round(-231f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(u_input.b, 28u)];
    var var_1 = func_5(select(!vec3<bool>(true, select(true, true, false), true), vec3<bool>(all(vec4<bool>(true, false, true, true)), true, false), select(!func_1(Struct_1(vec2<f32>(-525f, global2[_wgslsmith_index_u32(u_input.b, 28u)])), vec4<i32>(-29741i, -22123i, -2147483647i, u_input.a)), vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(false, true, true, false)), true))));
    var var_2 = select(vec3<bool>(true, true, false), vec3<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), 36563u <= u_input.b)), any(func_1(func_2(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)), reverseBits(vec4<i32>(-5303i, u_input.a, u_input.a, u_input.a))).xz)), vec3<bool>(false, all(vec4<bool>(false, true, true, true)), any(func_1(global1[_wgslsmith_index_u32(~u_input.b, 18u)], vec4<i32>(u_input.a, -21588i, 2147483647i, u_input.a)).zy)));
    var var_3 = global1[_wgslsmith_index_u32(~u_input.b, 18u)];
    let var_4 = ~_wgslsmith_clamp_vec2_i32(~vec2<i32>(-7317i, reverseBits(1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1314i, firstTrailingBit(-27389i)), select(vec2<i32>(18789i, u_input.a), vec2<i32>(-7783i, u_input.a) ^ vec2<i32>(u_input.a, 2147483647i), vec2<bool>(false, true)), _wgslsmith_add_vec2_i32(~vec2<i32>(-50703i, 2147483647i), -vec2<i32>(-5408i, u_input.a))), abs(max(vec2<i32>(-12280i, 2147483647i), vec2<i32>(41971i, u_input.a)) & (vec2<i32>(u_input.a, -68555i) ^ vec2<i32>(u_input.a, u_input.a))));
    global2 = array<f32, 28>();
    let var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-807f + 387f) + _wgslsmith_f_op_f32(abs(var_3.a.x))), 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b), vec2<i32>(-28748i, -8876i) | firstTrailingBit(vec2<i32>(u_input.a, -u_input.a)));
}

