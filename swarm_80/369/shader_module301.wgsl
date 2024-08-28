struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    let var_0 = Struct_2(arg_3.a, _wgslsmith_f_op_vec3_f32(-arg_2.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_3.b.yx);
    var var_2 = all(var_0.a.a.zz);
    var_2 = arg_3.a.a.x;
    let var_3 = Struct_2(var_0.a, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, arg_0))), var_1.x), var_1.x, 773f));
    return false;
}

fn func_3(arg_0: vec4<i32>) -> bool {
    let var_0 = select(!select(vec2<bool>(u_input.a.x != arg_0.x, false), select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec2<bool>(false, false))), vec2<bool>(true, true)), !select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, true)), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), true), false));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(step(-1229f, -477f))) + _wgslsmith_div_vec2_f32(vec2<f32>(-1086f, -894f), vec2<f32>(-245f, -1387f))))));
    var var_2 = min(vec3<u32>(1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(~4294967295u, select(0u, 46930u, true)), _wgslsmith_mult_u32(countOneBits(4294967295u), _wgslsmith_mod_u32(4294967295u, 4294967295u))), abs(~(~12140u))), vec3<u32>(_wgslsmith_clamp_u32(1u, max(_wgslsmith_clamp_u32(1u, 1u, 0u), ~37426u), ~_wgslsmith_div_u32(63886u, 10012u)), 1u, ~(~1u)));
    let var_3 = Struct_1(vec3<bool>(!(u_input.a.x <= (-22299i << (0u % 32u))), !(var_0.x && true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_1.x, 594f)))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_1.x))))), vec2<f32>(var_1.x, var_1.x));
    let var_4 = Struct_2(Struct_1(select(vec3<bool>(!var_3.a.x, false, var_3.a.x), !(!var_3.a), var_3.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-170f, 850f) * vec2<f32>(var_1.x, 419f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1190f, -1000f, -2118f)))))));
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_2;
    var var_1 = u_input.a;
    let var_2 = vec4<u32>(~107791u, arg_0.x, ~0u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(~vec3<u32>(1u, arg_0.x, arg_0.x), arg_0, !var_0.a), ~vec3<u32>(arg_0.x, arg_0.x, 15371u) ^ abs(arg_0)), vec3<u32>(arg_0.x, ~_wgslsmith_mult_u32(arg_0.x, arg_0.x), 0u)));
    var_1 = ~max(~(~arg_1), _wgslsmith_div_vec4_i32(-u_input.a, ~vec4<i32>(-35934i, -6511i, var_1.x, 1i))) << (vec4<u32>(var_2.x, 39333u, ~(~(~112923u)), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.x, 0u), arg_0), 0u)) % vec4<u32>(32u));
    var var_3 = 68465u >> (max(arg_0.x, ~((1u >> (var_2.x % 32u)) ^ var_2.x)) % 32u);
    return vec4<bool>(true, func_2(_wgslsmith_f_op_f32(min(arg_2.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b.x * arg_2.b.x), 1f, !arg_2.a.x)))), select(!arg_2.a, vec3<bool>(!arg_2.a.x, arg_2.a.x, all(vec2<bool>(arg_2.a.x, var_0.a.x))), var_0.a.x), Struct_2(arg_2, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(952f, arg_2.b.x, -977f)), vec3<f32>(-1100f, arg_2.b.x, 538f), var_0.a.x | arg_2.a.x))), Struct_2(Struct_1(arg_2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -502f) - vec2<f32>(-352f, var_0.b.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, -1084f, 1000f)))))), true, (_wgslsmith_div_i32(0i, var_1.x) > ~95879i) & func_3(~reverseBits(u_input.a)));
}

fn func_4(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(!vec3<bool>(!arg_1, arg_1, true), vec2<f32>(-664f, _wgslsmith_f_op_f32(f32(-1f) * -1542f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-755f, _wgslsmith_f_op_f32(select(759f, -1290f, false)), _wgslsmith_div_f32(932f, -619f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-319f, 477f, -555f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1520f, 141f, -2232f) - vec3<f32>(-934f, -1000f, -477f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1285f)), -193f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f)))));
    let var_1 = vec3<i32>(-1i, select(0i, u_input.a.x, true), u_input.a.x);
    var var_2 = u_input.a;
    var var_3 = var_0.a.b.x;
    var var_4 = abs(~18842i) << (~_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(2081u, 101318u, 1u)), 67125u) % 32u);
    return Struct_1(select(var_0.a.a, func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_0, 1u) << (vec3<u32>(arg_0, arg_0, 0u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 4247u, arg_0), vec3<u32>(arg_0, arg_0, 1u)), select(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, arg_0, arg_0), false)), _wgslsmith_add_vec4_i32(vec4<i32>(11588i, 1i, u_input.a.x, var_1.x), u_input.a), var_0.a).zyz, 0i > _wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, var_1.x), 1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -291f) * var_0.a.b) * _wgslsmith_f_op_vec2_f32(var_0.b.xx * var_0.b.yy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -936f)) * var_0.a.b)) * _wgslsmith_f_op_vec2_f32(-var_0.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = select(!select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, all(vec4<bool>(true, true, false, false))), vec2<bool>(all(vec4<bool>(true, true, false, true)), true)), vec2<bool>(true, 2147483647i != (min(u_input.a.x, 1i) >> (reverseBits(var_0) % 32u))), true);
    let var_2 = func_4(1u, all(func_1(~(~vec3<u32>(var_0, 29594u, 4294967295u)), reverseBits(u_input.a), Struct_1(vec3<bool>(var_1.x, false, false), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1187f, -654f)))))));
    let var_3 = ~select(-6911i, -1i, var_1.x);
    var var_4 = ~(~firstTrailingBit(vec3<u32>(0u, max(var_0, 22827u), _wgslsmith_dot_vec3_u32(vec3<u32>(29855u, 13641u, 0u), vec3<u32>(var_0, var_0, var_0)))));
    var_4 = ~(vec3<u32>(_wgslsmith_clamp_u32(var_0 >> (19513u % 32u), 76957u << (1u % 32u), ~var_0), _wgslsmith_sub_u32(reverseBits(602u), 1u), var_0) | ~_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 53171u, var_0), ~vec3<u32>(39282u, 4294967295u, 0u)));
    var var_5 = countOneBits(_wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_4.x, 97266u), var_4.yx) | (reverseBits(vec2<u32>(16023u, var_0)) & min(var_4.yz, vec2<u32>(var_0, 7652u))), firstTrailingBit(vec2<u32>(abs(4294967295u), ~var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(32500i, ~(i32(-1i) * -u_input.a.x)), var_3, ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 4294967295u, 1u), ~vec3<u32>(4294967295u, 4294967295u, 112073u)), var_0, var_4.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1187f, -1000f, var_2.b.x, var_2.b.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.b.x, -386f, var_2.b.x, 338f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, var_2.b.x, 1168f, 1492f)))))));
}

