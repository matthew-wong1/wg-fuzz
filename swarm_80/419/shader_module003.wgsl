struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: array<bool, 11>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global1 = array<bool, 11>();
    let var_0 = Struct_1(vec4<bool>(all(arg_1.a) && true, all(select(select(arg_2.a, vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_0.a.x), arg_0.a), select(vec4<bool>(false, false, false, arg_0.a.x), arg_1.a, arg_0.a), all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], false, arg_2.a.x, true)))), arg_2.a.x, arg_1.a.x && arg_0.a.x), countOneBits(~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b.x, -2147483647i), -vec2<i32>(arg_1.b.x, -3244i))));
    var var_1 = countOneBits(min(u_input.a, min(~u_input.a | (vec2<u32>(19490u, 1u) | u_input.a), ~vec2<u32>(u_input.a.x, 1u))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-1136f + -782f), _wgslsmith_f_op_f32(round(-1117f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-970f + _wgslsmith_f_op_f32(max(604f, 588f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(378f * -873f), _wgslsmith_f_op_f32(sign(-1111f))))), -3391f, any(arg_2.a.yxy))), _wgslsmith_f_op_f32(ceil(-355f)));
    var var_3 = countOneBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, arg_0.b.x), vec2<i32>(-1i) * -arg_0.b), (2147483647i | arg_2.b.x) ^ var_0.b.x));
    return global1[_wgslsmith_index_u32(4294967295u & abs(var_1.x), 11u)];
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<bool>) -> vec4<bool> {
    global0 = array<Struct_1, 1>();
    let var_0 = select(select(vec4<bool>(!func_3(Struct_1(vec4<bool>(arg_2.x, true, false, false), vec2<i32>(u_input.c.x, 32474i)), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(60264u, 11u)], arg_2.x, global1[_wgslsmith_index_u32(0u, 11u)], false), vec2<i32>(-56919i, u_input.c.x)), global0[_wgslsmith_index_u32(80340u, 1u)]), all(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 11u)], true, global1[_wgslsmith_index_u32(arg_0.x, 11u)], false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 11u)], false, arg_2.x, global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), false)), global1[_wgslsmith_index_u32(arg_0.x, 11u)], false || global1[_wgslsmith_index_u32(~arg_0.x, 11u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0.x, 11u)], !(!arg_2.x), !arg_2.x), true), vec4<bool>(false, all(select(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.x, 11u)], arg_2.x, false), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 11u)], global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(1u, 11u)]), all(vec4<bool>(arg_2.x, true, global1[_wgslsmith_index_u32(arg_0.x, 11u)], global1[_wgslsmith_index_u32(6997u, 11u)])))), !global1[_wgslsmith_index_u32(39388u, 11u)], arg_2.x), !(!(!vec4<bool>(true, false, arg_2.x, global1[_wgslsmith_index_u32(53654u, 11u)]))));
    var var_1 = Struct_1(var_0, _wgslsmith_div_vec2_i32(arg_1.ww, ~arg_1.wx));
    var var_2 = _wgslsmith_div_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, u_input.d, arg_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.d, u_input.a.x, 17152u), vec4<u32>(1u, 49634u, arg_0.x, 3620u)), ~vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d))), vec4<u32>(firstLeadingBit(0u << (abs(arg_0.x) % 32u)), ~(~max(0u, 78894u)), ~_wgslsmith_div_u32(~30u, _wgslsmith_clamp_u32(1u, 1u, 19346u)), ~(_wgslsmith_mod_u32(14864u, u_input.d) >> (firstTrailingBit(15651u) % 32u))));
    var_2 = ~reverseBits(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(min(vec4<u32>(86401u, arg_0.x, u_input.a.x, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, 95849u, var_2.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 20575u, 4294967295u, u_input.d), vec4<u32>(1u, 46058u, 82640u, 98639u))), max(~vec4<u32>(41271u, arg_0.x, 33315u, 5575u), firstTrailingBit(vec4<u32>(4294967295u, u_input.d, 19886u, var_2.x)))));
    return vec4<bool>(false, var_1.a.x, all(!var_0.zy), all(var_0));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    var var_0 = select(func_2(~vec3<u32>(~4294967295u, 3912u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(63359u, u_input.d))), u_input.c, arg_0.a.wzz), arg_2.a, vec4<bool>(true, !select(select(arg_0.a.x, false, global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), arg_1.x >= 3161u, !arg_0.a.x), !all(!arg_2.a), all(!vec2<bool>(global1[_wgslsmith_index_u32(arg_1.x, 11u)], arg_2.a.x))));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_dot_vec4_u32(((select(vec4<u32>(u_input.a.x, arg_3.x, 1u, 1u), vec4<u32>(arg_3.x, 0u, u_input.d, arg_3.x), arg_2.a) | (vec4<u32>(arg_1.x, arg_3.x, 4294967295u, 4294967295u) | vec4<u32>(1u, 41780u, u_input.d, 27219u))) >> (firstTrailingBit(abs(vec4<u32>(56388u, 4294967295u, 1u, arg_3.x))) % vec4<u32>(32u))) | vec4<u32>(firstLeadingBit(~31279u), firstLeadingBit(arg_1.x), abs(arg_3.x), ~3427u << ((arg_3.x & u_input.a.x) % 32u)), vec4<u32>(_wgslsmith_clamp_u32(92240u, ~4294967295u, reverseBits(4294967295u)), ((33381u & arg_1.x) << (_wgslsmith_mult_u32(arg_3.x, u_input.d) % 32u)) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, arg_1.x, arg_3.x, arg_1.x), vec4<u32>(arg_1.x, 0u, 67225u, u_input.d)), ~vec4<u32>(1u, 93831u, 54957u, arg_3.x)), 0u, 17301u));
    var var_3 = 2147483647i;
    var_0 = select(func_2(select(arg_1, _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.x, 0u, arg_1.x), vec3<u32>(arg_3.x, 1u, u_input.a.x)), vec3<u32>(arg_1.x, u_input.a.x, u_input.d)), !select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_1.a.x, arg_2.a.x, false), false)), select(u_input.c, u_input.c, select(func_3(arg_2, Struct_1(vec4<bool>(true, arg_2.a.x, global1[_wgslsmith_index_u32(4294967295u, 11u)], arg_2.a.x), vec2<i32>(u_input.e.x, arg_2.b.x)), arg_0), true, arg_0.a.x)), !vec3<bool>(var_1.a.x, arg_0.a.x && false, true)), func_2(arg_1, u_input.c, var_1.a.zxz), true);
    return 29917u & (arg_3.x << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~arg_1, arg_1), arg_3.x, arg_3.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 11u)] == true, true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_1(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(67099u, 11u)], true, false), vec2<i32>(u_input.e.x, u_input.e.x)), vec3<u32>(58635u, u_input.d, 1u), global0[_wgslsmith_index_u32(u_input.d, 1u)], vec2<u32>(0u, 1426u)), u_input.d), 11u)]), select(firstTrailingBit(vec2<i32>(0i, u_input.c.x) ^ u_input.e.zy), -countOneBits(vec2<i32>(1i, u_input.b)) | (u_input.e.zz << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))), select(select(func_2(vec3<u32>(11736u, u_input.a.x, u_input.d), vec4<i32>(u_input.b, 27100i, 1i, 0i), vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d, 11u)])).zw, vec2<bool>(true, true), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], true)), select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(11554u, 11u)], true), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(0u, 11u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 11u)], false))), all(vec3<bool>(true, false, false)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-284f, -3138f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(527f, 1635f)))))), -630f);
    var var_2 = select(!(!func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.d), vec3<u32>(u_input.d, u_input.d, 25404u)), -u_input.c, var_0.a.xyx).xyz), vec3<bool>(false | !global1[_wgslsmith_index_u32(u_input.a.x, 11u)], !(-var_0.b.x <= countOneBits(var_0.b.x)), var_0.a.x), !global1[_wgslsmith_index_u32(u_input.d, 11u)]);
    global1 = array<bool, 11>();
    var_2 = !var_0.a.zyz;
    let var_3 = global0[_wgslsmith_index_u32(reverseBits(4294967295u), 1u)];
    let var_4 = firstLeadingBit(select(-_wgslsmith_mod_vec3_i32(-vec3<i32>(67992i, 23346i, var_3.b.x), ~u_input.c.wzz), u_input.c.yyy, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, var_1.x))), vec2<i32>(max(var_3.b.x & _wgslsmith_add_i32(2147483647i, var_3.b.x), var_4.x), _wgslsmith_dot_vec4_i32(~u_input.c >> (max(vec4<u32>(18331u, u_input.a.x, 1u, 0u), vec4<u32>(u_input.a.x, 46384u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_4.x, -1i, 1i, 0i), u_input.c))), ~(~u_input.d));
}

