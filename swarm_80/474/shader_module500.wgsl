struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(703f, 1000f, -581f, -1037f, 1328f, 1000f, -157f, 450f, -129f, 892f, 100f, -157f, 1353f, -1979f, -389f, -788f, -163f, -519f, -193f, 460f, -756f, 193f, 1000f, -1083f, 172f, 682f, 589f, -2112f, 423f, -252f);

var<private> global1: array<u32, 30>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 30u)], u_input.b.x), u_input.b.x, global1[_wgslsmith_index_u32(28u, 30u)]) & vec3<u32>(21540u, u_input.b.x, ~u_input.b.x)) ^ ~firstTrailingBit(~vec3<u32>(0u, 30789u, u_input.b.x) >> (~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(71622u, 30u)], 30u)], 30u)], 12284u) % vec3<u32>(32u)));
    let var_1 = 1f;
    let var_2 = select(all(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), !(1592f <= var_1), true);
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, -1000f, -346f), vec3<f32>(-2320f, global0[_wgslsmith_index_u32(1u, 30u)], 1255f), var_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], -430f, -619f))), select(true, var_2, all(vec4<bool>(var_2, var_2, true, var_2))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1363f + global0[_wgslsmith_index_u32(u_input.b.x, 30u)])), -103f, var_1)));
    var var_4 = firstLeadingBit(~4294967295u);
    return !any(!select(vec4<bool>(var_2, true, var_2, var_2), vec4<bool>(var_2, true, var_2, var_2), u_input.a.x > -41641i));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    var var_0 = ~_wgslsmith_add_u32(abs(select(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(0u, 30u)]), vec2<u32>(arg_0.x, 4294967295u)), 74313u | global1[_wgslsmith_index_u32(9705u, 30u)], true)), 64936u);
    var var_1 = select(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.b.x, -2147483647i, arg_2.b.x, firstTrailingBit(i32(-1i) * -1i)), -(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b.x, -36064i, u_input.a.x, arg_1.b.x), arg_1.b) >> (~vec4<u32>(u_input.b.x, 4294967295u, 0u, 15195u) % vec4<u32>(32u)))), ~countOneBits(u_input.a), true);
    return func_3();
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    let var_0 = vec2<i32>(-2147483647i, firstTrailingBit(u_input.a.x));
    return Struct_1(1317f, ~u_input.a);
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_mult_vec2_i32(-(arg_2.xy ^ _wgslsmith_mult_vec2_i32(arg_2.yz, vec2<i32>(arg_0, u_input.a.x))), arg_2.xx), !vec2<bool>(func_2(u_input.b, Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], arg_2), Struct_1(-645f, u_input.a), !arg_1), false), !arg_1.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(15497u, 30u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -881f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-674f + 436f), 1559f, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(70034u, 30u)], 30u)])))))), vec4<i32>(_wgslsmith_dot_vec2_i32(~firstLeadingBit(arg_2.xx), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 0i), u_input.a.ww))), 22001i, ~(i32(-1i) * -arg_0), min(arg_0, _wgslsmith_add_i32(var_0.b.x, _wgslsmith_div_i32(arg_0, 52412i)))));
    let var_2 = ~select(select(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.x, var_1.b.x, 1i), vec3<i32>(u_input.a.x, u_input.a.x, 0i)) >> (select(vec3<u32>(1u, global1[_wgslsmith_index_u32(u_input.b.x, 30u)], global1[_wgslsmith_index_u32(u_input.b.x, 30u)]), vec3<u32>(21172u, 5970u, u_input.b.x), vec3<bool>(true, arg_1.x, arg_1.x)) % vec3<u32>(32u)), ~vec3<i32>(-2147483647i, arg_0, 0i), vec3<bool>(true, true, true)), _wgslsmith_mod_vec3_i32(vec3<i32>(~var_1.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, 32086i, 18553i, var_0.b.x), vec4<i32>(arg_0, 0i, -2147483647i, var_1.b.x)), ~u_input.a.x), -u_input.a.xzw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-677f))) != _wgslsmith_f_op_f32(round(1746f)));
    var_0 = var_1;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1000f)))))), -(~(~vec4<i32>(17465i, -37779i, u_input.a.x, var_0.b.x))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a)) * -724f)), 745f), ~(~select(vec4<i32>(var_3.b.x, u_input.a.x, var_1.b.x, 4012i), -vec4<i32>(-13036i, -2147483647i, 24381i, 1i), select(vec4<bool>(true, arg_1.x, false, arg_3), vec4<bool>(true, arg_1.x, false, arg_1.x), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a.x, select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)] < global0[_wgslsmith_index_u32(4294967295u, 30u)], any(vec2<bool>(false, true))), vec2<bool>(false, true), false), vec4<i32>(firstTrailingBit(u_input.a.x) | u_input.a.x, -2147483647i, u_input.a.x, firstTrailingBit(-2549i)), all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)] < global1[_wgslsmith_index_u32(61030u, 30u)], true, true, false)) == true);
    let var_1 = ~select(vec3<i32>(var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.b.x, u_input.a.x, u_input.a.x), u_input.a), _wgslsmith_add_i32(_wgslsmith_div_i32(var_0.b.x, u_input.a.x), firstTrailingBit(var_0.b.x))), -max(~vec3<i32>(-2147483647i, u_input.a.x, 22256i), _wgslsmith_sub_vec3_i32(vec3<i32>(25705i, -1i, var_0.b.x), vec3<i32>(1i, u_input.a.x, -21921i))), select(vec3<bool>(all(vec2<bool>(true, false)), true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7011u, 30u)], 30u)] == global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, false)))));
    let var_2 = u_input.b;
    global0 = array<f32, 30>();
    let var_3 = 21247i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(~0i), 2147483647i), vec4<u32>(~min(global1[_wgslsmith_index_u32(76905u, 30u)], u_input.b.x ^ var_2.x), ~(~_wgslsmith_clamp_u32(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], var_2.x)), ~4294967295u, ~_wgslsmith_mod_u32(~5383u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, 36356u, 15438u), vec4<u32>(0u, 54578u, global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 0u)), 30u)])), _wgslsmith_mult_vec4_i32((vec4<i32>(var_1.x, u_input.a.x, -78344i, -836i) << ((vec4<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(6091u, 30u)], 42504u) | vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(var_2.x, 30u)], global1[_wgslsmith_index_u32(u_input.b.x, 30u)], u_input.b.x)) % vec4<u32>(32u))) ^ ~var_0.b, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(select(u_input.a, var_0.b, vec4<bool>(true, true, false, true)), u_input.a), vec4<i32>(_wgslsmith_mod_i32(var_1.x, -28894i), firstTrailingBit(var_3), abs(var_1.x), _wgslsmith_mult_i32(-26342i, 75028i)))), u_input.b.x);
}

