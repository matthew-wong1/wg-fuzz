struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: vec4<i32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(~(reverseBits(select(vec3<i32>(global1.x, global1.x, global1.x), global1.yxy, true)) >> (~(~vec3<u32>(1u, 0u, 15489u)) % vec3<u32>(32u))), _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, -14134i), vec2<i32>(56620i, global1.x)) & ~vec2<i32>(global1.x, -35391i), global1.wz));
    global1 = _wgslsmith_div_vec4_i32(-(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.x, global1.x, -2147483647i, global1.x), vec4<i32>(1i, global1.x, var_0.b, global1.x)), vec4<i32>(global1.x, 1i, var_0.a.x, -2147483647i), vec4<i32>(0i, var_0.b, -1i, 2147483647i)) << ((~vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 121020u, 4682u), vec4<u32>(u_input.a, 4432u, u_input.a, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<i32>((_wgslsmith_dot_vec3_i32(global1.xwz, global1.xzz) >> (135851u % 32u)) >> (u_input.a % 32u), global1.x, _wgslsmith_div_i32(max(-8136i, 42139i), ~var_0.a.x) | global1.x, global1.x));
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    return -_wgslsmith_mult_i32(_wgslsmith_add_i32(i32(-1i) * -global1.x, var_0.a.x), _wgslsmith_div_i32(-165i, abs(min(20724i, 57309i))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<u32> {
    global1 = vec4<i32>(func_3(), 71896i, func_3(), _wgslsmith_dot_vec3_i32(vec3<i32>(select(-9031i, 30330i, arg_3.x), global1.x & arg_1.b, ~arg_1.a.x), abs(vec3<i32>(-10235i, 0i, 28017i))) >> (u_input.a % 32u));
    global0 = array<f32, 19>();
    return max(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 7782u, u_input.a, ~1u), ~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)))), vec4<u32>(30482u, u_input.a, ~firstTrailingBit(~0u), reverseBits(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a, 0u, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))))));
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = ~arg_0.x;
    let var_1 = true;
    let var_2 = Struct_1(vec3<i32>(~global1.x, global1.x, _wgslsmith_sub_i32(select(_wgslsmith_add_i32(global1.x, global1.x), ~8407i, true), ~abs(global1.x))), 1i & -_wgslsmith_mod_i32(select(global1.x, -1i, false), 31151i));
    global0 = array<f32, 19>();
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.a), 19u)]))), 560f)), global0[_wgslsmith_index_u32(var_0, 19u)], global0[_wgslsmith_index_u32(var_0, 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(571f - global0[_wgslsmith_index_u32(arg_0.x, 19u)]) - global0[_wgslsmith_index_u32(u_input.a, 19u)]) + 1000f)));
    return Struct_1(vec3<i32>(abs(_wgslsmith_mult_i32(var_2.a.x | 54639i, var_2.a.x)), 1i, ~2849i), ~(~(~(var_2.a.x ^ -2147483647i))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = min(~_wgslsmith_add_u32(u_input.a, _wgslsmith_mult_u32(4294967295u | u_input.a, ~4294967295u)), _wgslsmith_sub_u32(min(20890u, u_input.a), ~4294967295u));
    var var_1 = func_4(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 52040u), vec3<u32>(u_input.a, 37996u, 55703u)), u_input.a, 625u, 86003u) >> (countOneBits(func_2(-17919i, arg_1, arg_0, vec3<bool>(true, true, false)) ^ min(vec4<u32>(60841u, 4294967295u, 13332u, 29138u), vec4<u32>(u_input.a, 14845u, u_input.a, u_input.a))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.a, 19u)])))), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a, 19u)]))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))));
    var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(min(~1213u, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(22881u, u_input.a), vec2<u32>(u_input.a, 1u)))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(51099u, u_input.a, u_input.a, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a), vec4<u32>(4294967295u, 57737u, u_input.a, 43939u)))), vec2<u32>(u_input.a, firstTrailingBit(48157u)));
    global1 = -_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b ^ arg_1.b, var_1.b, ~global1.x, func_4(vec4<u32>(u_input.a, u_input.a, u_input.a, 33204u)).a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.x, global1.x, global1.x, -2147483647i) & vec4<i32>(global1.x, global1.x, arg_1.a.x, arg_0.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a.x, global1.x, 1i, 0i), vec4<i32>(0i, 5951i, 2147483647i, -27831i)))) << (~min(min(vec4<u32>(2842u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)) ^ firstLeadingBit(vec4<u32>(1u, 1u, u_input.a, u_input.a)), abs(~vec4<u32>(0u, 0u, 67997u, u_input.a))) % vec4<u32>(32u));
    return arg_1;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(u_input.a & u_input.a), 19u)]))));
    let var_1 = Struct_1(vec3<i32>(func_1(arg_1, func_4(~vec4<u32>(4294967295u, u_input.a, 1u, u_input.a))).b, global1.x, -2147483647i), 7505i);
    return vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1923f - var_0), _wgslsmith_f_op_f32(-873f - var_0))))), _wgslsmith_div_f32(-741f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1100f))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(609f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 19u)] - -787f)), _wgslsmith_f_op_f32(select(var_0, 1f, true))), 487f)), 1187f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1264f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = Struct_1(-vec3<i32>(-1i, global1.x, global1.x) | -min(select(global1.wyy, vec3<i32>(-19898i, global1.x, global1.x), vec3<bool>(true, true, true)), global1.ywx), -(reverseBits(global1.x) >> (reverseBits(u_input.a) % 32u)));
    global0 = array<f32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-947f, global0[_wgslsmith_index_u32(1u, 19u)], 897f, 411f) - vec4<f32>(1000f, -1000f, 1870f, -241f))), _wgslsmith_f_op_vec4_f32(func_5(vec4<bool>(true, true, true, true), func_1(Struct_1(vec3<i32>(global1.x, 235i, global1.x), global1.x), Struct_1(vec3<i32>(-44497i, 33385i, var_1.b), var_1.a.x)))))), ((var_1.a.x >> (56591u % 32u)) & var_1.a.x) >> (u_input.a % 32u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-103f, global0[_wgslsmith_index_u32(53510u, 19u)], 1000f), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], -1294f, 333f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)]) + vec3<f32>(-1279f, 772f, 235f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)]) * vec3<f32>(-287f, -1953f, global0[_wgslsmith_index_u32(u_input.a, 19u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 19u)], -133f, global0[_wgslsmith_index_u32(u_input.a, 19u)]) + vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], 932f))))));
}

