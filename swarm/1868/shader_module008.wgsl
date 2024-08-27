struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-346f, 1414f);

var<private> global1: array<Struct_2, 6>;

var<private> global2: array<Struct_1, 8>;

var<private> global3: i32 = 0i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: u32, arg_3: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1071f - -1070f))))) - _wgslsmith_f_op_f32(select(-745f, -733f, !arg_3 & true)));
    var_0 = global0.x;
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 6u)];
    let var_2 = Struct_1(arg_0, reverseBits(~(~arg_2)) << (_wgslsmith_add_u32(reverseBits(_wgslsmith_clamp_u32(109037u, 93249u, 1u)), u_input.a.x) % 32u));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, _wgslsmith_f_op_f32(global0.x - 1231f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1098f, var_1.a))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, 1341f), vec2<f32>(var_1.b, 2777f), vec2<bool>(arg_3, arg_3)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.x)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(209f, var_1.b), vec2<f32>(-713f, var_1.b))))))));
    return vec4<bool>(all(select(vec3<bool>(arg_3, any(vec3<bool>(false, false, arg_3)), true), vec3<bool>(false, arg_3, true), select(true, true, any(vec4<bool>(arg_3, false, arg_3, false))))), any(!(!vec3<bool>(arg_3, arg_3, arg_3))), all(!vec2<bool>(select(arg_3, arg_3, arg_3), false || arg_3)), arg_3);
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(37644u, 6u)];
    var var_1 = global2[_wgslsmith_index_u32(24152u ^ abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(32604u, 25731u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u)), abs(u_input.a.x)), ~u_input.a.x ^ 5028u)), 8u)];
    global3 = firstTrailingBit(u_input.b.x);
    let var_2 = all(!select(select(func_3(-4117i, u_input.b, 4294967295u, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(false, true)), true, true, true), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))));
    var var_3 = ~18512u | _wgslsmith_dot_vec4_u32(~u_input.a, ~vec4<u32>(u_input.a.x, u_input.a.x, ~u_input.a.x, ~var_1.b));
    return _wgslsmith_mod_i32(select(-9534i, _wgslsmith_div_i32(_wgslsmith_mult_i32(countOneBits(8989i), 1i), reverseBits(var_1.a)), any(select(vec2<bool>(var_2, var_2), vec2<bool>(true, false), vec2<bool>(var_2, var_2)))), _wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.a, 27068i, -33253i), ~(vec3<i32>(-1i, -2147483647i, var_1.a) | vec3<i32>(var_1.a, u_input.b.x, arg_0))) & ~_wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(0i, 1i)));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: f32) -> u32 {
    global3 = func_2(~u_input.b.x);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, true))) - -1250f) * -788f);
    global3 = u_input.b.x;
    let var_1 = global1[_wgslsmith_index_u32(1u, 6u)];
    var var_2 = Struct_1(i32(-1i) * -2147483647i, _wgslsmith_div_u32(~arg_1, _wgslsmith_mult_u32(u_input.a.x, ~(u_input.a.x ^ 0u))));
    return 63718u;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = u_input.a.x;
    var var_2 = arg_0;
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(706f + _wgslsmith_f_op_f32(f32(-1f) * -1302f)), _wgslsmith_f_op_f32(select(-146f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 2295f) * global0.x), true))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x - global0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), 455f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2167f, global0.x)))))));
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, max(countOneBits(-2147483647i), 0i), -arg_0.a) ^ -(~(~vec3<i32>(-2147483647i, var_2.a, 1i))), vec3<i32>(-41259i, var_2.a, -2147483647i) << (_wgslsmith_sub_vec3_u32(abs(vec3<u32>(var_1, var_0.b, 7490u)), vec3<u32>(~13383u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1, 0u, arg_0.b), vec4<u32>(arg_0.b, arg_0.b, 5941u, 0u)), 10060u)) % vec3<u32>(32u)));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    let var_0 = Struct_2(_wgslsmith_div_f32(global0.x, global0.x), global0.x);
    let var_1 = _wgslsmith_div_u32(6192u, 31204u);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1003f, 270f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_0.b)), all(vec3<bool>(arg_3, arg_3, arg_3))))))));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(abs(func_1(vec4<f32>(global0.x, global0.x, var_0.b, 406f), 1u, 1000f)), ~countOneBits(0u) >> (~func_1(vec4<f32>(-605f, global0.x, 1058f, global0.x), arg_0.b, global0.x) % 32u), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, var_1 & var_1, 44790u, _wgslsmith_mult_u32(u_input.a.x, arg_2.x)))), min(reverseBits(arg_2.yzw), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(arg_2.x, 58561u, 102590u)), vec3<u32>(arg_2.x, 14193u, arg_2.x)), vec3<u32>(19441u, u_input.a.x, 40055u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    let var_1 = 16394i;
    var var_2 = func_5(func_4(global2[_wgslsmith_index_u32(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-866f, global0.x, 189f, global0.x), vec4<f32>(global0.x, 601f, -171f, 640f)), 0u, _wgslsmith_f_op_f32(f32(-1f) * -381f)), 8u)]), ~1i, u_input.a, true & (any(vec4<bool>(true, true, true, true)) & all(vec4<bool>(false, false, true, true)))) >> (46562u % 32u);
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(global0.x - 1000f));
    global2 = array<Struct_1, 8>();
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(~1u), 48979u), 8u)];
    let var_4 = func_4(func_4(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b, 12007u, u_input.a.x), u_input.a.xxz), 0u), 8u)]));
    var var_5 = -(var_4.a & func_4(global2[_wgslsmith_index_u32(var_4.b, 8u)]).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, global0.x, true)), _wgslsmith_f_op_f32(select(-1000f, 1666f, false)), -939f, -1459f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2890f, global0.x, global0.x, -409f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(613f, -1558f, global0.x, 448f) - vec4<f32>(global0.x, global0.x, -248f, global0.x))))));
}

