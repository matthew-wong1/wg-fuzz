struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-957f - arg_2.a));
    var_0 = arg_0;
    var_0 = arg_2;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a));
    return var_1.a;
}

fn func_2(arg_0: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * arg_0), _wgslsmith_f_op_f32(min(arg_0, -564f)), 304f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1185f, 1115f, -1286f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -431f, var_0.x) - vec4<f32>(619f, 524f, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 470f, arg_0, 1225f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-590f, arg_0), _wgslsmith_f_op_f32(arg_0 + 1515f), _wgslsmith_f_op_f32(-1345f + 706f), _wgslsmith_f_op_f32(floor(950f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(-1461f, arg_0)));
    var_2 = Struct_1(var_1.x);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.x), u_input.b, Struct_1(675f))), -653f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(sign(var_2.a)))), 1f)));
    return -vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, 0i, 35566i, u_input.b), vec4<i32>(-2147483647i, u_input.b, -17767i, u_input.b), vec4<bool>(false, false, true, true)), vec4<i32>(u_input.b, 2147483647i, 1i, -2147483647i)), -1i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -22517i, 41040i, u_input.b), vec4<i32>(-31748i, 0i, u_input.b, u_input.b)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(0i, -2147483647i, u_input.b, -1i), vec4<i32>(26372i, u_input.b, 1i, -1i)), select(vec4<i32>(u_input.b, u_input.b, 0i, 35889i) << (vec4<u32>(u_input.a.x, 32125u, 4294967295u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, -7680i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 13801i)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)))), -(1i & firstTrailingBit(u_input.b)));
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec3_i32(reverseBits(min(select(vec3<i32>(2147483647i, -19131i, u_input.b) >> (u_input.a % vec3<u32>(32u)), vec3<i32>(1i, u_input.b, u_input.b), true), -(vec3<i32>(-49875i, -7647i, u_input.b) ^ vec3<i32>(-34040i, u_input.b, -21173i)))), func_2(_wgslsmith_f_op_f32(-2178f - -682f)));
    var var_1 = select(vec4<bool>(true, all(vec3<bool>(true, true, true)), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), true)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(true, true)), true, true), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))), vec4<bool>(all(vec4<bool>(false, true, true, false)) && true, !any(vec2<bool>(false, false)), all(vec4<bool>(false, true, true, false)) & true, true), vec4<bool>(false, all(vec4<bool>(false, true, true, true)) | false, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, u_input.b > var_0.x), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(997f), -8636i, Struct_1(563f)))) <= _wgslsmith_f_op_f32(-1f)));
    var_0 = ~(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), var_0.xy) >> (~57538u % 32u), firstTrailingBit(var_0.x), var_0.x >> (78587u % 32u)));
    var var_2 = vec2<f32>(1f, 1f);
    let var_3 = vec3<i32>(max(_wgslsmith_sub_i32(reverseBits(u_input.b), 1041i), _wgslsmith_sub_i32(var_0.x, 8113i)) | 12858i, ~(-1i), var_0.x);
    return select(vec3<bool>(true, false, false & !var_1.x), vec3<bool>(false, !var_1.x & (true | !var_1.x), (any(vec4<bool>(var_1.x, var_1.x, var_1.x, true)) == false) & !any(vec2<bool>(var_1.x, true))), select(var_1.wxx, select(var_1.zyy, var_1.yww, !var_1.x), var_1.xwx));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = !vec2<bool>(select(!(u_input.b != u_input.b), !arg_2.x, arg_2.x), true);
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, ~u_input.a.x & 1u), vec3<u32>(reverseBits(abs(max(u_input.a.x, 0u))), ~firstLeadingBit(u_input.a.x), u_input.a.x >> (~(4294967295u << (u_input.a.x % 32u)) % 32u)));
    var_1 = min(u_input.a, _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(~1u, u_input.a.x << (var_1.x % 32u), u_input.a.x))) << (vec3<u32>(1994u, var_1.x, _wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 1u), u_input.a.zx, arg_2.xy) & countOneBits(u_input.a.xx), vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(28525u, u_input.a.x)))) % vec3<u32>(32u));
    var var_2 = ~(~countOneBits(firstLeadingBit(vec4<u32>(0u, 1u, 1u, 1u)))) >> (~max(abs(vec4<u32>(37552u, 46673u, var_1.x, u_input.a.x)) >> (vec4<u32>(var_1.x, var_1.x, u_input.a.x, 48398u) % vec4<u32>(32u)), ~select(vec4<u32>(4660u, var_1.x, var_1.x, u_input.a.x), vec4<u32>(4294967295u, var_1.x, u_input.a.x, 9292u), vec4<bool>(var_0.x, false, arg_2.x, var_0.x))) % vec4<u32>(32u));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - 1011f))) + _wgslsmith_f_op_f32(abs(arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -49445i;
    var_0 = _wgslsmith_mod_i32(u_input.b, ~_wgslsmith_sub_i32(~u_input.b, -2147483647i | u_input.b));
    let var_1 = func_4(Struct_1(393f), -(~17364i), func_1());
    var_0 = u_input.b;
    var_0 = 1i;
    var_0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, reverseBits(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 19984i, u_input.b, -1i) | vec4<i32>(u_input.b, -61337i, 1i, u_input.b), vec4<i32>(5501i, u_input.b, u_input.b, u_input.b) & vec4<i32>(u_input.b, -99445i, u_input.b, u_input.b)))), u_input.b, reverseBits(_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(u_input.a.x, 17874u, u_input.a.x)), vec3<u32>(u_input.a.x, 4294967295u, 1u) | vec3<u32>(27131u, 1u, 29405u))), _wgslsmith_clamp_i32(firstTrailingBit(6812i), 0i, 2147483647i));
}

