struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(-1i, -13816i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_mod_i32(~global0[_wgslsmith_index_u32(~(1u & u_input.c), 2u)], _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, u_input.a.x), -40141i), _wgslsmith_clamp_i32(u_input.a.x, 0i, 0i) | -global0[_wgslsmith_index_u32(u_input.b, 2u)])), _wgslsmith_mod_vec4_i32(min(~vec4<i32>(-1i, 20142i, u_input.a.x, global0[_wgslsmith_index_u32(u_input.d, 2u)]), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, global0[_wgslsmith_index_u32(89367u, 2u)])) >> ((vec4<u32>(u_input.c, u_input.c, 16869u, 4294967295u) | countOneBits(vec4<u32>(4581u, 84676u, u_input.c, u_input.b))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, ~(-61250i)), -1i, -3671i, -select(u_input.a.x, u_input.a.x, true))), !vec3<bool>(true, true, -u_input.a.x >= u_input.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-549f, 1471f, true)) * -649f), -337f, max(global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)]) >= _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.d, 2u)], global0[_wgslsmith_index_u32(u_input.d, 2u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-336f, _wgslsmith_f_op_f32(f32(-1f) * -1521f), true)), -190f))), abs(u_input.a) ^ u_input.a);
    var var_1 = reverseBits(min(firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(0u, 2u)], -1i, 2147483647i, 4649i)), var_0.b)) & vec4<i32>(var_0.a, 45272i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, 1i), 46458i, countOneBits(2147483647i)), min(39642i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(var_0.b, var_0.b), 1i)));
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(min(~vec2<i32>(global0[_wgslsmith_index_u32(0u, 2u)], u_input.a.x) & vec2<i32>(var_1.x, 1i), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(4294967295u, 2u)]) & vec2<i32>(var_0.e.x, var_1.x)), var_0.e), var_0.e);
    let var_3 = var_0;
    var_2 = countOneBits(min(-1i, ~_wgslsmith_dot_vec3_i32(reverseBits(var_3.b.wwy), ~var_1.xyw)));
    return select(-countOneBits(var_0.b), vec4<i32>(_wgslsmith_sub_i32(var_3.b.x, -57403i), var_3.e.x, -38683i, ~497i), all(vec2<bool>(true, var_3.c.x)));
}

fn func_2() -> vec4<u32> {
    global0 = array<i32, 2>();
    var var_0 = reverseBits(-abs(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -52301i, u_input.a.x, global0[_wgslsmith_index_u32(1u, 2u)]), vec4<i32>(2147483647i, -11284i, 373i, -2147483647i))) & func_3());
    var_0 = vec4<i32>(global0[_wgslsmith_index_u32(~(u_input.d << (42443u % 32u)), 2u)], u_input.a.x, (u_input.a.x >> (~min(u_input.d, 4294967295u) % 32u)) | var_0.x, 0i);
    var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(-abs(1i), global0[_wgslsmith_index_u32(15175u, 2u)], 2147483647i, select(~(-2147483647i), -var_0.x, all(vec4<bool>(true, false, false, true)))), vec4<i32>(global0[_wgslsmith_index_u32(10012u, 2u)], ~_wgslsmith_mod_i32(-49001i, u_input.a.x), _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(17013i, u_input.a.x))), select(29269i, 1i, true)), ~(-3218i)));
    let var_1 = _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(firstTrailingBit(countOneBits(0u)), 1u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(13848u, u_input.b), min(firstLeadingBit(~vec2<u32>(52347u, u_input.b)), _wgslsmith_div_vec2_u32(abs(vec2<u32>(5235u, u_input.b)), ~vec2<u32>(8734u, u_input.b)))));
    return _wgslsmith_add_vec4_u32(~(abs(vec4<u32>(var_1.x, var_1.x, 6048u, 1u)) >> (vec4<u32>(_wgslsmith_div_u32(var_1.x, 16790u), min(102444u, 0u), 1u, u_input.c) % vec4<u32>(32u))), ~(~vec4<u32>(0u, abs(4294967295u), u_input.d, firstTrailingBit(var_1.x))));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> Struct_3 {
    var var_0 = select(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(select(countOneBits(vec3<u32>(6473u, u_input.b, 4294967295u)), firstLeadingBit(vec3<u32>(u_input.c, u_input.d, u_input.c)), vec3<bool>(false, false, false)), vec3<u32>(1u, _wgslsmith_mod_u32(4294967295u, u_input.b), 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 1u), vec3<u32>(u_input.c, u_input.b, 0u)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.d, 37018u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 11140u, 4294967295u), vec3<u32>(15079u, 0u, u_input.c))) % vec3<u32>(32u))), vec3<u32>(~u_input.d & _wgslsmith_div_u32(20480u, _wgslsmith_mult_u32(u_input.b, u_input.d)), _wgslsmith_dot_vec4_u32(~func_2(), vec4<u32>(firstLeadingBit(28395u), 12047u, _wgslsmith_mod_u32(4294967295u, 29205u), firstLeadingBit(u_input.d))), _wgslsmith_clamp_u32(18444u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(53504u, u_input.c)), _wgslsmith_div_u32(~1u, ~u_input.c))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var_0 = ~firstLeadingBit(~(~_wgslsmith_add_vec3_u32(vec3<u32>(91577u, 69693u, 1u), vec3<u32>(4294967295u, var_0.x, 4294967295u))));
    var var_1 = max(vec2<u32>(var_0.x, var_0.x), var_0.xz);
    return Struct_3(Struct_2(Struct_1(_wgslsmith_clamp_i32(u_input.a.x | 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-48697i, 0i, -1i, global0[_wgslsmith_index_u32(var_0.x, 2u)]), vec4<i32>(u_input.a.x, 16974i, global0[_wgslsmith_index_u32(var_1.x, 2u)], u_input.a.x)), _wgslsmith_div_i32(-2147483647i, 1i)), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, global0[_wgslsmith_index_u32(var_1.x, 2u)], global0[_wgslsmith_index_u32(var_0.x, 2u)], 79544i), vec4<i32>(5399i, 15610i, 24612i, u_input.a.x))), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), _wgslsmith_f_op_f32(-1000f - 2067f), u_input.a)), false, Struct_1(u_input.a.x, (vec4<i32>(u_input.a.x, u_input.a.x, -26698i, global0[_wgslsmith_index_u32(var_0.x, 2u)]) ^ ~vec4<i32>(1339i, 18641i, -1i, global0[_wgslsmith_index_u32(0u, 2u)])) << (vec4<u32>(~var_1.x, ~7262u, 43368u, ~u_input.b) % vec4<u32>(32u)), select(vec3<bool>(u_input.d > var_0.x, true, true), vec3<bool>(true, all(vec4<bool>(false, true, false, true)), any(vec2<bool>(false, false))), false), _wgslsmith_f_op_f32(trunc(-1619f)), _wgslsmith_div_vec2_i32(u_input.a, u_input.a)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    return ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(74911u, 2849u, 15996u), max(vec3<u32>(0u, 9674u, u_input.b), vec3<u32>(u_input.b, u_input.b, 33900u))) << (_wgslsmith_div_u32(1u, 4294967295u) % 32u), abs(~u_input.b << (16894u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(~u_input.c <= func_4(func_1(vec3<f32>(636f, 1268f, -446f), -1567f), Struct_3(func_1(vec3<f32>(196f, -984f, -799f), 1365f).a, true, func_1(vec3<f32>(-835f, 993f, 786f), -845f).c)), (any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true)) | all(vec3<bool>(true, false, false))) || any(vec3<bool>(true, true, true)), any(vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), 1i < u_input.a.x, any(vec3<bool>(true, true, true)))), all(vec2<bool>(true, true)));
    let var_1 = vec4<u32>(u_input.d & 0u, u_input.d, 8233u, _wgslsmith_div_u32(75883u, 25797u) | min(u_input.c, firstTrailingBit(~16836u)));
    let var_2 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_add_i32(~func_3().x, global0[_wgslsmith_index_u32(6139u, 2u)]), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)))), -vec4<i32>(~(2147483647i << (u_input.d % 32u)), global0[_wgslsmith_index_u32(var_1.x, 2u)], min(-global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(~u_input.c, 2u)]), i32(-1i) * -global0[_wgslsmith_index_u32(var_1.x, 2u)]), !(!select(func_1(vec3<f32>(104f, 375f, -662f), 1326f).a.a.c, select(vec3<bool>(false, false, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), func_1(vec3<f32>(126f, 1118f, -508f), -401f).a.a.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(288f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -386f) + _wgslsmith_f_op_f32(step(507f, -580f))))))), u_input.a);
    var var_3 = vec3<i32>(abs(select(-global0[_wgslsmith_index_u32(4303u, 2u)] << (func_4(Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(10034u, 2u)], vec4<i32>(71440i, 2147483647i, u_input.a.x, -20000i), vec3<bool>(false, false, var_0.x), var_2.d, u_input.a)), var_0.x, Struct_1(var_2.a, vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 2u)], u_input.a.x, 57225i), vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x), var_2.d, var_2.e)), Struct_3(Struct_2(var_2), var_0.x, Struct_1(var_2.e.x, var_2.b, var_0.ywy, var_2.d, vec2<i32>(global0[_wgslsmith_index_u32(22593u, 2u)], -33730i)))) % 32u), -(~var_2.a), true)), _wgslsmith_dot_vec2_i32(var_2.e, u_input.a), i32(-1i) * -34434i);
    var var_4 = _wgslsmith_mod_u32(~(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_1.ww, vec2<u32>(var_1.x, 1u)), ~var_1.yy) << (~(~u_input.b) % 32u)), ~(~0u));
    var var_5 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.d + var_2.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) - _wgslsmith_f_op_f32(step(var_2.d, 322f))) + -583f)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-491f, var_2.d))));
    var_5 = vec2<f32>(func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1159f, -1222f, var_5.x) + vec3<f32>(1000f, var_5.x, var_2.d)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(296f, 208f, -3204f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-801f, var_2.d) - -698f)).c.d, 1000f);
    let var_6 = Struct_3(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_5.x, var_2.d, var_5.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.x, var_2.d, var_2.d)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.d, var_5.x, var_5.x))))), var_5.x).a, any(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d, -651f, var_5.x)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1723f, 832f, var_2.d)))), var_2.d).a.a.c.xx), Struct_1(max(_wgslsmith_mod_i32(-44904i, func_3().x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, 32466i, 1i, global0[_wgslsmith_index_u32(var_1.x, 2u)]), var_2.b)), select(-vec4<i32>(u_input.a.x, u_input.a.x, 0i, -1i), vec4<i32>(_wgslsmith_add_i32(2147483647i, 0i), -2147483647i, 2147483647i, firstTrailingBit(var_2.b.x)), select(select(vec4<bool>(false, var_2.c.x, true, false), vec4<bool>(true, true, true, var_0.x), false), select(vec4<bool>(false, var_0.x, var_0.x, var_2.c.x), vec4<bool>(true, var_2.c.x, false, var_2.c.x), true), select(vec4<bool>(var_0.x, false, true, var_2.c.x), vec4<bool>(var_0.x, true, var_0.x, false), var_2.c.x))), select(var_2.c, var_2.c, false || all(var_2.c.yx)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -882f))), vec2<i32>(1i, -u_input.a.x)));
    let var_7 = (_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(var_1, vec4<u32>(0u, var_1.x, u_input.b, 67686u)), func_4(Struct_3(var_6.a, false, Struct_1(u_input.a.x, vec4<i32>(var_3.x, global0[_wgslsmith_index_u32(4294967295u, 2u)], -62974i, global0[_wgslsmith_index_u32(25499u, 2u)]), var_6.c.c, 1113f, u_input.a)), func_1(vec3<f32>(var_5.x, var_5.x, var_2.d), 1678f))) << (min(~abs(4294967295u), u_input.d & 27416u) % 32u)) <= ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a.a.a, ~_wgslsmith_add_vec2_u32(firstLeadingBit(var_1.zz << (var_1.wy % vec2<u32>(32u))), ~var_1.zw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-329f, var_2.d, var_5.x, var_2.d), vec4<f32>(var_5.x, var_5.x, -1027f, 2168f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1095f, -643f, var_6.c.d, var_5.x) + vec4<f32>(-848f, var_6.a.a.d, var_6.c.d, var_2.d)), vec4<bool>(false, true, var_7, var_7))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-333f, 819f, var_5.x, var_5.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1286f, 870f, var_6.a.a.d, -443f) + vec4<f32>(var_2.d, -499f, 1789f, var_2.d)), !vec4<bool>(false, true, var_7, true))))), var_1.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(338f, -825f)))))));
}

