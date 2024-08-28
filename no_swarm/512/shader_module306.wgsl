struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<f32, 19>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_div_f32(344f, -226f);
    global1 = array<f32, 19>();
    global1 = array<f32, 19>();
    global1 = array<f32, 19>();
    let var_1 = Struct_1(vec3<bool>(true, !(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(1u, 19u)])) > _wgslsmith_f_op_f32(f32(-1f) * -944f)), false), vec3<u32>(~(~31321u), 1u, 0u));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(328f + _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.b, 19u)]))) + -2000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1141f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1422f))))), var_0);
}

fn func_3() -> vec3<bool> {
    var var_0 = -((vec3<i32>(-1i) * -(~vec3<i32>(u_input.a, 2858i, u_input.a))) | _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, 0i, -4952i), -vec3<i32>(global0.x, -2147483647i, 2147483647i)), vec3<i32>(global0.x, _wgslsmith_mod_i32(global0.x, global0.x), u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, global0.x), vec3<i32>(global0.x, u_input.a, -1010i)) & vec3<i32>(-24404i, u_input.a, 17126i)));
    global1 = array<f32, 19>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2(global1[_wgslsmith_index_u32(u_input.b, 19u)], -abs(var_0.x))))));
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_mod_u32(~u_input.b ^ min(19342u, 1u), u_input.b), 4294967295u >> (u_input.b % 32u)), select(~vec3<u32>(firstLeadingBit(1u), _wgslsmith_div_u32(18828u, 4294967295u), 81130u), ~(~vec3<u32>(u_input.b, 54279u, 40173u)) << (vec3<u32>(u_input.b, ~u_input.b, u_input.b) % vec3<u32>(32u)), vec3<bool>(u_input.b != u_input.b, (var_1.x <= -2037f) || true, !any(vec3<bool>(true, false, true)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.zz, vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 12852u, 0u, u_input.b), vec4<u32>(var_2.x, 31136u, u_input.b, 1u)), vec4<u32>(var_2.x, 45574u, 1u, u_input.b) << (vec4<u32>(117112u, u_input.b, u_input.b, 26104u) % vec4<u32>(32u))), 19u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(20335u, 19u)], 1049f) - -112f))));
    return vec3<bool>(any(vec4<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false)), true, false, any(vec2<bool>(true, true)))), true, !(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_2.x), vec2<u32>(18188u, u_input.b) << (vec2<u32>(u_input.b, 57486u) % vec2<u32>(32u))), 19u)] > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -180f))));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = arg_0.b.x;
    global1 = array<f32, 19>();
    var var_1 = _wgslsmith_mult_vec4_i32(abs(vec4<i32>(_wgslsmith_clamp_i32(abs(u_input.a), u_input.a, global0.x), ~u_input.a << (min(1u, arg_0.b.x) % 32u), min(563i, ~u_input.a), _wgslsmith_div_i32(~2147483647i, abs(u_input.a)))), firstLeadingBit(~(~vec4<i32>(0i, global0.x, 2147483647i, 2147483647i))) | _wgslsmith_mod_vec4_i32(-reverseBits(vec4<i32>(1i, u_input.a, -2147483647i, u_input.a)), max(vec4<i32>(global0.x, 0i, 2147483647i, global0.x), vec4<i32>(global0.x, u_input.a, 0i, u_input.a)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(0i, global0.x, u_input.a, 18681i), vec4<i32>(global0.x, -34805i, 1i, u_input.a))));
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(47374u, 61714u), var_2.b.xx), ~arg_0.b.x), 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-273f))), global1[_wgslsmith_index_u32(var_2.b.x, 19u)]) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_2.b.x, 19u)], 377f, 228f)) + vec3<f32>(global1[_wgslsmith_index_u32(arg_0.b.x, 19u)], global1[_wgslsmith_index_u32(20395u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)])))) + _wgslsmith_f_op_vec3_f32(func_2(global1[_wgslsmith_index_u32(605u, 19u)], u_input.a)));
    return select(var_2.a, select(!select(var_2.a, func_3(), true), select(arg_0.a, func_3(), !var_2.a.x), var_2.a), all(select(select(vec2<bool>(false, arg_0.a.x), vec2<bool>(arg_0.a.x, true), func_3().yz), select(select(arg_0.a.xx, arg_0.a.yy, var_2.a.yz), vec2<bool>(var_2.a.x, arg_0.a.x), !arg_0.a.x), vec2<bool>(any(vec2<bool>(var_2.a.x, false)), all(arg_0.a)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = -120f;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -381f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_0.b.x, 19u)], 257f) + _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(arg_0.b.x, 19u)]))), -1346f);
    global1 = array<f32, 19>();
    var_0 = _wgslsmith_f_op_f32(max(938f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = ~vec2<i32>(_wgslsmith_mult_i32(global0.x, 44840i) | (u_input.a | 30323i), -1i) | ~(~select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(70683i, 0i), arg_1.a.yy) ^ ~select(vec2<i32>(1i, u_input.a), vec2<i32>(-1i, global0.x), vec2<bool>(arg_1.a.x, arg_1.a.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (0u == _wgslsmith_dot_vec3_u32(~(~vec3<u32>(19500u, 1570u, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 54611u), vec3<u32>(1u, u_input.b, 1u)) & ~vec3<u32>(u_input.b, 0u, 1u))) || !func_4(Struct_1(func_1(Struct_1(vec3<bool>(false, false, true), vec3<u32>(54497u, 90306u, 0u))), vec3<u32>(u_input.b, 0u, 1u) << (vec3<u32>(4294967295u, 0u, 0u) % vec3<u32>(32u))), Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(31872u, u_input.b, u_input.b))));
    let var_1 = Struct_1(!vec3<bool>(any(!vec3<bool>(var_0, var_0, var_0)), var_0, func_1(Struct_1(vec3<bool>(var_0, var_0, var_0), vec3<u32>(22820u, 37837u, 77934u))).x), reverseBits(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, 72508u)), vec3<u32>(4294967295u, select(u_input.b, u_input.b, false), ~1u))));
    var var_2 = countOneBits(_wgslsmith_mult_vec2_i32(-max(vec2<i32>(1i, 1i), max(vec2<i32>(u_input.a, 1234i), vec2<i32>(1i, global0.x))), select(select(vec2<i32>(1i, 38896i), vec2<i32>(u_input.a, 25553i) << (var_1.b.xx % vec2<u32>(32u)), var_1.a.xz), ~firstLeadingBit(vec2<i32>(global0.x, 2147483647i)), select(var_1.a.yy, vec2<bool>(var_1.a.x, true), func_3().xx))));
    global1 = array<f32, 19>();
    var_2 = firstLeadingBit((firstTrailingBit(-vec2<i32>(global0.x, var_2.x)) >> (_wgslsmith_clamp_vec2_u32(var_1.b.zy, vec2<u32>(1u, var_1.b.x), var_1.b.zz << (var_1.b.yz % vec2<u32>(32u))) % vec2<u32>(32u))) ^ vec2<i32>(max(global0.x, -2147483647i), ~(-6280i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 19u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 19u)] * -419f), _wgslsmith_f_op_f32(-850f + global1[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_div_f32(952f, global1[_wgslsmith_index_u32(51664u, 19u)])))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(7990u, 19u)])), 553f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(22828u, 19u)]), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_1.b.x, 19u)], global1[_wgslsmith_index_u32(23172u, 19u)], true))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 19u)], -246f, global1[_wgslsmith_index_u32(9473u, 19u)], 973f) - vec4<f32>(-129f, -851f, -2249f, global1[_wgslsmith_index_u32(var_1.b.x, 19u)])), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(94030u, 19u)], 613f, global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<f32>(1000f, global1[_wgslsmith_index_u32(912u, 19u)], -1563f, -1969f))))))), -_wgslsmith_mod_vec3_i32(vec3<i32>(1i, abs(-35763i), global0.x), vec3<i32>(_wgslsmith_add_i32(var_2.x, -44537i), var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.x, -2147483647i), vec3<i32>(var_2.x, -41122i, u_input.a)))), vec2<i32>(-abs(-49974i), -13234i), vec2<f32>(global1[_wgslsmith_index_u32(firstTrailingBit(var_1.b.x), 19u)], _wgslsmith_f_op_f32(387f * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(floor(280f))))));
}

