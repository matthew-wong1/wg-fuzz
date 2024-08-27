struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(countOneBits(0u));
    var_0 = Struct_1(~0u);
    let var_1 = all(select(select(vec3<bool>(true, any(vec4<bool>(true, false, false, false)), true), select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), true), vec3<bool>(true, true, true)), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), true));
    var var_2 = Struct_1(firstTrailingBit(((var_0.a | var_0.a) | (var_0.a >> (var_0.a % 32u))) >> (19626u % 32u)));
    let var_3 = 1240f;
    return -(~(_wgslsmith_dot_vec4_i32(~u_input.b, abs(vec4<i32>(u_input.b.x, u_input.a, -2147483647i, -41725i))) << (39210u % 32u)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~(~_wgslsmith_add_u32(22716u, _wgslsmith_mult_u32(0u, 0u))));
    var var_1 = func_3();
    let var_2 = !(!all(vec4<bool>(false, true, true, true))) && false;
    let var_3 = Struct_1(var_0.a);
    var var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-243f, -976f, 455f, 1337f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(442f, -518f, -428f, 791f) + vec4<f32>(169f, -302f, 424f, -331f))))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(306f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2008f))), _wgslsmith_f_op_f32(-1f))))));
    return Struct_1(var_0.a);
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = arg_0.xx;
    var var_1 = func_2();
    let var_2 = Struct_1(select(103223u, var_1.a, true));
    var_1 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, firstLeadingBit(var_1.a)), ~(~(~vec2<u32>(6062u, var_1.a)))));
    let var_3 = -(~(-u_input.b.x & ~19019i)) != ~(0i | abs(abs(arg_1)));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-614f, 1000f, -669f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(490f, -1000f, -1086f)), true)))))), abs(25727i));
    let var_1 = u_input.b;
    var var_2 = func_2();
    var_2 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -394f), 507f) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-992f, -2257f, -292f), vec3<f32>(1358f, 469f, 1000f)))))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -762f), 1172f, 421f)))), -var_1.x);
    let var_3 = Struct_1(firstTrailingBit(~abs(25786u)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(251f, -639f, -1478f), vec3<f32>(1427f, 871f, 1000f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1512f, -1000f, 853f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(392f * 134f)), _wgslsmith_f_op_f32(f32(-1f) * -546f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-674f, -1827f, -507f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1244f, -217f, -609f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-409f, -325f, 1550f)), vec3<f32>(424f, 1756f, -1896f), vec3<bool>(true, false, true))))));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = reverseBits(~(~arg_0) >> (func_2().a % 32u));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(arg_2.a, arg_2.a, 1u, 1u) & vec4<u32>(arg_2.a, 1u, 22886u, arg_2.a)), ~vec4<u32>(_wgslsmith_div_u32(arg_2.a, 1u), arg_2.a, arg_2.a, arg_2.a ^ 77930u)));
    var_0 = arg_0;
    var var_2 = !vec2<bool>(true, false | all(vec4<bool>(true, true, true, true)));
    var_1 = arg_2;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~reverseBits(0i), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1093f, 1274f, 203f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1357f, 213f, 1808f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-430f, 2154f, -1176f), vec3<f32>(-912f, -1110f, 733f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(vec3<f32>(1037f, 409f, -1000f), u_input.a), Struct_1(1u), func_2(), func_2())) - _wgslsmith_f_op_vec3_f32(func_4(func_1(vec3<f32>(-203f, -1012f, -1424f), u_input.b.x), Struct_1(0u), Struct_1(25921u), Struct_1(34083u)))))), func_2());
    let var_1 = u_input.b.x;
    var var_2 = countOneBits(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.b.yw >> (vec2<u32>(48577u, 0u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(13500i, 1i), vec2<i32>(var_1, u_input.a))), ~(~u_input.b.x)), -(~(~u_input.b.x)), -2147483647i, 29901i));
    var_2 = u_input.b;
    var_2 = firstTrailingBit(_wgslsmith_mult_vec4_i32(u_input.b, u_input.b));
    var_2 = ~vec4<i32>(1i, 43710i, var_1, -var_1) ^ -u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1469f, -1447f)) + 980f) + -768f));
}

