struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_3(abs(arg_1.a));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_2.x))))))), -764f);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: i32) -> vec2<f32> {
    var var_0 = Struct_3(~(~countOneBits(vec3<i32>(arg_2, arg_2, arg_2)) << (vec3<u32>(u_input.a.x >> (28475u % 32u), select(54959u, 1u, arg_0), _wgslsmith_add_u32(46326u, 83234u)) % vec3<u32>(32u))));
    var_0 = Struct_3(-select(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-5282i, arg_2, -2914i), vec3<i32>(arg_2, arg_2, var_0.a.x))), var_0.a, true));
    var_0 = Struct_3(firstTrailingBit(abs(_wgslsmith_mod_vec3_i32(countOneBits(var_0.a), var_0.a ^ vec3<i32>(var_0.a.x, 2147483647i, arg_2)))));
    var var_1 = var_0.a;
    var_0 = Struct_3(vec3<i32>(var_0.a.x, ~var_0.a.x, arg_2));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1, -624f))) - vec2<f32>(arg_1, 1019f))))))));
}

fn func_2(arg_0: u32, arg_1: bool) -> i32 {
    let var_0 = -firstLeadingBit(min(52160i, 30993i << (u_input.a.x % 32u)));
    let var_1 = _wgslsmith_f_op_f32(floor(-486f));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(var_1, var_1)), -237f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 426f)), vec2<f32>(-1468f, 662f))), arg_1))), _wgslsmith_f_op_vec2_f32(func_4(true, _wgslsmith_f_op_f32(func_3(false, Struct_3(vec3<i32>(var_0, var_0, 1i)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -2002f, var_1) * vec3<f32>(var_1, 201f, var_1)))), Struct_2(Struct_1(vec3<i32>(var_0, var_0, var_0), 1u), true, Struct_1(vec3<i32>(39785i, -94272i, var_0), 25916u)))), -2147483647i)), select(vec2<bool>(true, any(select(vec2<bool>(arg_1, true), vec2<bool>(false, arg_1), true))), select(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), vec2<bool>(arg_1, true)), vec2<bool>(true, true), -var_0 > 2147483647i), vec2<bool>(false, all(vec2<bool>(arg_1, arg_1)) | select(true, arg_1, arg_1)))));
    var_2 = true;
    return var_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(-_wgslsmith_add_i32(~(-37876i), func_2(~4294967295u, arg_0.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i, 18164i, -20364i, 0i) >> (abs(vec4<u32>(66731u, u_input.b.x, 1u, u_input.b.x)) % vec4<u32>(32u)), -vec4<i32>(2147483647i, -51205i, -16218i, -2147483647i) << ((vec4<u32>(49209u, 4294967295u, 28621u, 1u) << (vec4<u32>(1u, u_input.b.x, u_input.a.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), abs(vec4<i32>(min(35920i, -1i), -37295i, -2147483647i << (u_input.b.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -7079i, 0i), vec3<i32>(-1i, 48970i, 0i))))));
    var var_1 = Struct_3(vec3<i32>(max(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, -2147483647i), vec2<i32>(0i, var_0)), _wgslsmith_add_i32(18011i, 26005i)), firstLeadingBit(abs(var_0)), var_0));
    let var_2 = Struct_3(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(17242i, var_1.a.x), -1i), -36736i), -((i32(-1i) * -2147483647i) ^ _wgslsmith_div_i32(-2147483647i, var_1.a.x)), var_0));
    let var_3 = Struct_1(countOneBits(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-23351i, var_0, var_0), var_2.a), -vec3<i32>(-2147483647i, var_0, -1i))) | firstTrailingBit(min(select(var_2.a, vec3<i32>(-2147483647i, 2147483647i, var_0), false), -vec3<i32>(var_2.a.x, 38305i, var_2.a.x))), ~u_input.a.x ^ select(_wgslsmith_add_u32(u_input.b.x, u_input.a.x), ~_wgslsmith_add_u32(0u, u_input.b.x), all(vec2<bool>(true, true))));
    let var_4 = arg_1.x;
    return Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(var_3.a, _wgslsmith_div_vec3_i32(var_2.a & var_1.a, vec3<i32>(2147483647i, 1i, var_1.a.x))), ~firstTrailingBit(var_3.b)), arg_0.x, Struct_1(var_2.a, _wgslsmith_add_u32(0u, u_input.a.x) | _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b.x, 4294967295u), _wgslsmith_mult_u32(14220u, u_input.b.x))));
}

fn func_5(arg_0: Struct_2) -> vec2<bool> {
    return select(!select(!select(vec2<bool>(false, arg_0.b), vec2<bool>(false, false), vec2<bool>(true, true)), !(!vec2<bool>(arg_0.b, false)), !all(vec4<bool>(false, arg_0.b, true, false))), !vec2<bool>(all(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)), true), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_5(func_1(vec4<bool>(false, all(vec4<bool>(false, true, true, true)), false, any(vec4<bool>(true, false, true, false))), vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), -193f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1354f, -687f, -2933f, 1366f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(999f, -1666f, 342f, 1420f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(471f, 584f, -815f, 806f))))))));
    let var_2 = _wgslsmith_div_vec3_f32(var_1.yzw, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 494f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, -229f, var_0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, 1101f, -1393f), var_1.zxx)), var_1.yyz))));
    let var_3 = ~vec4<i32>(1i, 1i, countOneBits(1i), ~2147483647i);
    let var_4 = Struct_3(var_3.zyw);
    let var_5 = var_3.yx;
    var var_6 = Struct_3(-var_4.a);
    var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))), vec3<f32>(636f, var_2.x, 1745f));
}

