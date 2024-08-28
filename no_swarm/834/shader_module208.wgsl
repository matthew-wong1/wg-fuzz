struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(29675u, 29750u), 1i, -161f, false, -428f);

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<u32>(1u, 45154u), -7226i, 1000f, false, 1645f), Struct_1(vec2<u32>(70957u, 4294967295u), -13334i, 902f, true, 1823f), Struct_1(vec2<u32>(0u, 1u), 8903i, -882f, false, 207f), Struct_1(vec2<u32>(4294967295u, 0u), 0i, 792f, true, -1225f), Struct_1(vec2<u32>(81596u, 0u), -30626i, 302f, false, 1087f), Struct_1(vec2<u32>(69690u, 0u), 8088i, -322f, false, 329f), Struct_1(vec2<u32>(1u, 1u), 0i, -1197f, true, 720f), Struct_1(vec2<u32>(1u, 0u), -6301i, 417f, true, 1516f), Struct_1(vec2<u32>(41362u, 4048u), 8716i, 120f, false, 1000f));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(reverseBits(reverseBits(global0.a)), reverseBits(global0.b), global0.c, global0.d, _wgslsmith_f_op_f32(global0.c - global0.c)), u_input.d, 42007i, 2147483647i);
    global1 = array<Struct_1, 9>();
    let var_1 = _wgslsmith_clamp_vec2_i32(var_0.b, _wgslsmith_sub_vec2_i32(-u_input.d, reverseBits(firstTrailingBit(u_input.d))), -_wgslsmith_mod_vec2_i32(vec2<i32>(~var_0.b.x, 1i), -firstLeadingBit(u_input.d)));
    var var_2 = Struct_2(var_0.a, vec2<i32>(abs(_wgslsmith_mod_i32(var_0.b.x, var_1.x)) & var_1.x, -global0.b), ~(-998i), global0.b);
    return vec2<bool>(var_0.a.e == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c)), global0.d);
}

fn func_2(arg_0: i32) -> vec3<f32> {
    global0 = Struct_1(~max(_wgslsmith_div_vec2_u32(global0.a, _wgslsmith_mod_vec2_u32(global0.a, vec2<u32>(36024u, u_input.a))), vec2<u32>(~global0.a.x, global0.a.x)), -u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -924f), global0.d, -247f);
    var var_0 = select(func_3(), vec2<bool>(!all(vec2<bool>(false, global0.d)), global0.d), true);
    var var_1 = all(!vec2<bool>(global0.d, true));
    var var_2 = global1[_wgslsmith_index_u32(u_input.a, 9u)];
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_2.e), _wgslsmith_f_op_f32(step(-542f, global0.c)), _wgslsmith_f_op_f32(-464f * var_2.c))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, 1000f, var_2.c) + vec3<f32>(1160f, global0.e, global0.c)))))), !(var_0.x || (firstTrailingBit(global0.a.x) <= _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, 65589u, 0u), vec3<u32>(4294967295u, u_input.a, 15587u))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(u_input.d.x)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(194f, global0.e, global0.c))))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(897f, _wgslsmith_f_op_f32(global0.c + 756f), 1000f))));
    global0 = Struct_1(vec2<u32>(1u, _wgslsmith_div_u32(u_input.a, arg_1.a.a.x)), _wgslsmith_dot_vec2_i32(max(vec2<i32>(11877i, arg_1.a.b) << (vec2<u32>(48699u, 1u) % vec2<u32>(32u)), vec2<i32>(u_input.c, -34630i) << (global0.a % vec2<u32>(32u))), min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-3945i, -8904i), vec2<i32>(arg_1.c, 16872i), vec2<i32>(arg_1.b.x, 15226i)), firstTrailingBit(arg_1.b))) >> (arg_0.x % 32u), var_0.x, select(true, false, !(!arg_1.a.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-672f, -1489f) * -1036f)) + _wgslsmith_f_op_f32(sign(-2572f))));
    var var_1 = arg_1.a.d;
    var_1 = true;
    let var_2 = 1u;
    return select(-_wgslsmith_clamp_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.c, -6829i, u_input.b), vec4<i32>(-1i, 22729i, -23292i, 33605i)), abs(min(vec4<i32>(global0.b, arg_1.a.b, arg_1.a.b, global0.b), vec4<i32>(u_input.c, u_input.d.x, 9395i, -30473i))), countOneBits(~vec4<i32>(2147483647i, 27145i, 2147483647i, -16174i))), _wgslsmith_mod_vec4_i32((firstTrailingBit(vec4<i32>(u_input.d.x, global0.b, global0.b, -33202i)) | select(vec4<i32>(20504i, 1i, 0i, global0.b), vec4<i32>(global0.b, u_input.b, global0.b, global0.b), vec4<bool>(arg_1.a.d, true, true, true))) | select(vec4<i32>(-721i, u_input.b, arg_1.a.b, global0.b), _wgslsmith_div_vec4_i32(vec4<i32>(-39605i, u_input.c, 3507i, -2147483647i), vec4<i32>(arg_1.b.x, global0.b, global0.b, 1293i)), global0.d), ~(~(-vec4<i32>(arg_1.b.x, arg_1.d, arg_1.d, global0.b)))), !all(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global1 = array<Struct_1, 9>();
    var var_0 = Struct_1(select(_wgslsmith_mult_vec2_u32(select(vec2<u32>(49060u, global0.a.x), vec2<u32>(arg_1.a.x, global0.a.x), arg_0.a.d), vec2<u32>(4294967295u, 4294967295u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a.a.x, arg_0.a.a.x), vec2<u32>(arg_0.a.a.x, 4294967295u)), false) | max(abs(~vec2<u32>(0u, arg_2)), vec2<u32>(firstTrailingBit(u_input.a), _wgslsmith_sub_u32(44002u, global0.a.x))), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.e - arg_0.a.e) - -628f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e, 677f))) * 1267f), (arg_1.d | all(!vec2<bool>(arg_1.d, arg_0.a.d))) && (func_1(vec3<u32>(arg_2, 27310u, arg_0.a.a.x) & vec3<u32>(4294967295u, 20305u, 1u), Struct_2(Struct_1(vec2<u32>(u_input.a, 66717u), global0.b, arg_0.a.c, false, 140f), vec2<i32>(u_input.c, 2147483647i), -12970i, -14909i)).x != arg_0.c), arg_0.a.c);
    global0 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(arg_0.a.a.x), arg_2), arg_0.a.a.x), ~(~vec2<u32>(62974u, 1u))), -81467i, _wgslsmith_f_op_f32(min(var_0.e, arg_1.c)), any(vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), arg_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -810f)) + _wgslsmith_f_op_f32(global0.e + var_0.e))));
    var_0 = Struct_1(_wgslsmith_div_vec2_u32(arg_1.a, abs(max(vec2<u32>(29561u, 51121u), var_0.a))), 14484i, _wgslsmith_div_f32(152f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(679f - _wgslsmith_f_op_f32(sign(404f))) + _wgslsmith_f_op_f32(-1032f - 739f))), all(vec2<bool>(all(select(vec3<bool>(false, var_0.d, arg_1.d), vec3<bool>(false, global0.d, false), false)), 1u >= arg_2)), _wgslsmith_f_op_f32(-780f * _wgslsmith_f_op_f32(arg_0.a.e * _wgslsmith_f_op_f32(abs(-545f)))));
    var var_1 = global1[_wgslsmith_index_u32(44771u, 9u)];
    return Struct_1(~firstLeadingBit(_wgslsmith_sub_vec2_u32(select(var_1.a, vec2<u32>(4282u, 5175u), vec2<bool>(true, true)), ~vec2<u32>(4294967295u, 0u))), func_1(firstTrailingBit(min(vec3<u32>(1u, arg_2, 13061u), vec3<u32>(var_1.a.x, arg_1.a.x, u_input.a))) & (vec3<u32>(42913u, 15802u, arg_2) >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, arg_1.a.x), vec3<u32>(0u, 4294967295u, 4294967295u)) % vec3<u32>(32u))), Struct_2(Struct_1(max(global0.a, var_0.a), arg_1.b, _wgslsmith_f_op_f32(step(-744f, 2459f)), any(vec3<bool>(false, arg_0.a.d, false)), _wgslsmith_f_op_f32(min(arg_0.a.c, -692f))), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-82696i, u_input.c), vec2<i32>(arg_0.c, arg_0.a.b), vec2<i32>(arg_0.c, 1i)), u_input.d, u_input.d.x < -22928i), arg_0.c, 19889i)).x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -356f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(global1[_wgslsmith_index_u32(global0.a.x, 9u)], u_input.d, _wgslsmith_mult_i32(u_input.d.x, select(1i, global0.b, all(vec2<bool>(global0.d, false)))), ~_wgslsmith_dot_vec4_i32(func_1(vec3<u32>(63190u, global0.a.x, u_input.a), Struct_2(global1[_wgslsmith_index_u32(u_input.a, 9u)], u_input.d, 14111i, 1i)), -vec4<i32>(-2147483647i, -35866i, -9626i, u_input.b))), Struct_1(~global0.a >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 0u) & global0.a, select(vec2<u32>(7971u, 1u), vec2<u32>(u_input.a, global0.a.x), global0.d)) % vec2<u32>(32u)), -global0.b, _wgslsmith_f_op_vec3_f32(func_2(-32168i)).x, true || !all(vec4<bool>(false, true, global0.d, global0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0.e, global0.c, global0.d)), global0.e)) * global0.c)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, global0.a.x, global0.a.x, u_input.a), vec4<u32>(u_input.a, 3126u, 4294967295u, global0.a.x), false), vec4<u32>(48485u, 1u, 50128u, global0.a.x) << (vec4<u32>(45608u, 4294967295u, u_input.a, 0u) % vec4<u32>(32u))) ^ _wgslsmith_mult_u32(~global0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), global0.a)), abs(u_input.a), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(15717u, 16906u, global0.a.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a.x, u_input.a, 0u) << (vec3<u32>(44044u, u_input.a, 4294967295u) % vec3<u32>(32u)), reverseBits(vec3<u32>(global0.a.x, 17975u, 1u))))));
    global0 = func_4(Struct_2(Struct_1(global0.a, global0.b, _wgslsmith_div_f32(-533f, 555f), any(vec3<bool>(var_0.d, var_0.d, global0.d)), _wgslsmith_f_op_f32(-874f - -1094f)), _wgslsmith_add_vec2_i32(u_input.d, ~u_input.d), func_4(Struct_2(Struct_1(vec2<u32>(22760u, u_input.a), u_input.b, -827f, var_0.d, 1343f), abs(vec2<i32>(-1i, global0.b)), abs(-10382i), _wgslsmith_mult_i32(global0.b, var_0.b)), Struct_1(~var_0.a, select(-18557i, -17626i, global0.d), -1000f, !global0.d, _wgslsmith_div_f32(803f, var_0.e)), 4294967295u).b, -25450i), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.a.x & 38480u, 4294967295u), 9u)], var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, 1i & _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b, u_input.b, u_input.c), vec3<i32>(global0.b, 1i, -18451i)), firstLeadingBit(vec3<i32>(u_input.b, var_0.b, u_input.c))), -1i));
}

