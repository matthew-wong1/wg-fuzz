struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 5792u, 0u, 0u);

var<private> global1: Struct_1;

var<private> global2: f32;

var<private> global3: array<i32, 23> = array<i32, 23>(-44903i, -1i, 23010i, 1i, 1i, i32(-2147483648), -8155i, 2147483647i, 13361i, i32(-2147483648), -8986i, 7212i, i32(-2147483648), -16505i, 0i, i32(-2147483648), 0i, -48148i, -444i, 58130i, 1i, 20479i, i32(-2147483648));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<u32>) -> f32 {
    global2 = _wgslsmith_f_op_f32(ceil(238f));
    let var_0 = vec2<u32>(~(~4593u), u_input.a.x ^ countOneBits(4294967295u));
    global0 = vec4<u32>(36359u, 1u, 4294967295u, 82488u);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1106f * global1.a)))))) + global1.a);
    return _wgslsmith_div_f32(global1.a, -1000f);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(false, ~global0.x, vec2<bool>(all(vec3<bool>(true, true, true)), !all(vec4<bool>(false, true, false, false))), ~(~u_input.a) >> (vec2<u32>(firstTrailingBit(4294967295u), 0u) % vec2<u32>(32u)))));
    global1 = arg_3;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -790f), var_0.a, 61783i <= global3[_wgslsmith_index_u32(98465u, 23u)])))))));
    var var_2 = vec3<bool>(all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, false), all(vec3<bool>(true, false, true)))) | true, select(!(!(u_input.b != -8636i)), !(arg_1.x > arg_2.a), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), all(vec3<bool>(false, false, false))), all(vec2<bool>(true, true)))));
    return -u_input.b ^ select(-2147483647i ^ global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(51275u, 23u)], true);
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = ~_wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(-41098i, global3[_wgslsmith_index_u32(46997u, 23u)])), select(vec2<i32>(global3[_wgslsmith_index_u32(2130u, 23u)], u_input.b), vec2<i32>(u_input.b, 1i), false))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b >> (69419u % 32u)), vec2<i32>(min(u_input.b, 12051i), func_2(u_input.a.x, vec4<f32>(arg_1.a, global1.a, global1.a, global1.a), arg_1, arg_1))));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(913f, global1.a, var_1.a) * vec3<f32>(arg_1.a, global1.a, arg_1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(367f, global1.a, var_1.a))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a, arg_1.a, 399f)))))), vec3<f32>(-964f, _wgslsmith_f_op_f32(abs(arg_1.a)), 1000f), false))));
    var var_3 = arg_0;
    var_1 = arg_1;
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1126f + 900f))));
    var var_1 = abs(u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1930f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2191f * var_0.a)))), _wgslsmith_div_f32(-143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1876f) - _wgslsmith_f_op_f32(var_0.a + var_0.a))))));
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_f32(global1.a - 1f));
    let var_0 = Struct_1(arg_0.a);
    global3 = array<i32, 23>();
    global1 = func_4(1u, select(arg_1, vec2<bool>(true, select(!arg_1.x, !arg_1.x, arg_0.a > global1.a)), arg_1), arg_0);
    global0 = ~(~(vec4<u32>(54043u, u_input.a.x, 1u, 4294967295u | global0.x) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 20034u, 4294967295u, 0u), vec4<u32>(0u, 78428u, 81216u, 4294967295u))));
    return func_4(~4294967295u, arg_1, var_0);
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~_wgslsmith_sub_i32(arg_3.x, 0i) & _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(4294967295u, 23u)] << (arg_0 % 32u), 2147483647i ^ u_input.b), firstTrailingBit(arg_3.x)), vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(1i, 1i)), reverseBits(1i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(578f, -1578f, 748f, global1.a))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a, global1.a, 510f, 598f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, arg_2.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global1.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), -550f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, -1693f, -424f, -951f)))), select(!vec4<bool>(any(vec4<bool>(false, false, true, true)), any(vec4<bool>(true, false, false, true)), true, all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), !vec4<bool>(true, select(true, true, false), u_input.a.x <= 14629u, false))));
    global1 = Struct_1(arg_2.a);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(217f - 1817f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var var_1 = func_6(global0.x, Struct_1(940f), func_5(func_4(firstTrailingBit(global0.x), vec2<bool>(func_1(true, Struct_1(global1.a)), true), Struct_1(_wgslsmith_f_op_f32(1670f * global1.a))), vec2<bool>(any(vec3<bool>(true, true, true)), true)), -vec2<i32>(2147483647i, 0i));
    var var_2 = ~18298u;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 1555f));
    var var_4 = func_4(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(reverseBits(global0.zxy), abs(global0.xwy | global0.wxx)), ~1u), select(vec2<bool>(true, true), vec2<bool>(!any(vec3<bool>(false, false, false)), func_1(true, func_4(global0.x, vec2<bool>(false, true), Struct_1(global1.a)))), !any(vec4<bool>(false, true, false, false))), func_4(~(~u_input.a.x), vec2<bool>(true, true), func_4(1u, vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_f32(step(-1106f, 1790f))))));
    var var_5 = Struct_1(func_6(_wgslsmith_mod_u32(global0.x, 0u), Struct_1(681f), func_6(global0.x, Struct_1(global1.a), func_4(~11596u, select(vec2<bool>(false, true), vec2<bool>(true, false), false), func_6(0u, Struct_1(global1.a), Struct_1(var_3.a), vec2<i32>(1i, global3[_wgslsmith_index_u32(4294967295u, 23u)]))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -9978i), vec2<i32>(2147483647i, -18281i)), -7423i)), -vec2<i32>(-23239i, _wgslsmith_dot_vec2_i32(vec2<i32>(-27863i, u_input.b), vec2<i32>(-1i, 35506i)))).a);
    var var_6 = _wgslsmith_f_op_vec2_f32(vec2<f32>(387f, _wgslsmith_f_op_f32(floor(global1.a))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(595f, var_5.a) + vec2<f32>(-2571f, -199f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -2187f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_4.a, -1018f))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(197f, var_3.a)))))));
    var_6 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_6.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))) + _wgslsmith_f_op_f32(f32(-1f) * -1041f)));
    var var_7 = Struct_1(var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, 0u, select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global0.x), global0.zz)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) - 219f))), _wgslsmith_f_op_f32(-var_5.a), -2092f), global3[_wgslsmith_index_u32(~u_input.a.x, 23u)] >> (global0.x % 32u), _wgslsmith_f_op_f32(round(1975f)), vec2<u32>(~_wgslsmith_div_u32(~4294967295u, abs(global0.x)), 4294967295u));
}

