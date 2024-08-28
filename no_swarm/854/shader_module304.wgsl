struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 9> = array<u32, 9>(13220u, 4294967295u, 43440u, 0u, 46973u, 0u, 1u, 52276u, 41430u);

var<private> global2: Struct_1 = Struct_1(vec2<f32>(951f, 960f), -36903i, vec2<f32>(-235f, 1722f));

var<private> global3: array<u32, 16> = array<u32, 16>(0u, 51797u, 1u, 0u, 8240u, 4294967295u, 4294967295u, 31343u, 15650u, 61785u, 1u, 6179u, 45577u, 17062u, 0u, 97364u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> vec2<f32> {
    var var_0 = 24511u;
    let var_1 = Struct_1(global0.c, 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(195f, global2.c.x), vec2<f32>(792f, -1392f), true))))));
    let var_2 = false;
    let var_3 = _wgslsmith_add_vec2_u32(u_input.a.zy | vec2<u32>(~8697u, 49256u), ~_wgslsmith_mod_vec2_u32(max(~vec2<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 16u)], 84475u), select(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 16u)], 16u)], global3[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec2<u32>(18568u, global3[_wgslsmith_index_u32(30684u, 16u)]), vec2<bool>(var_2, true))), vec2<u32>(u_input.a.x, select(4294967295u, u_input.a.x, var_2))));
    var var_4 = u_input.a.wxz;
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1096f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2105f + global0.a.x), var_1.a.x));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = ~(~4294967295u);
    var_0 = 0u;
    global2 = Struct_1(vec2<f32>(-325f, 1f), -firstTrailingBit(global2.b) >> (_wgslsmith_dot_vec4_u32(countOneBits(u_input.a), vec4<u32>(~0u, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)]), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11819u, 9u)], 16u)], 9u)] | 1u)) % 32u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f - -684f)) * global0.c.x), -1000f));
    global2 = Struct_1(global0.c, -2147483647i, vec2<f32>(-418f, -247f));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global2.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.c, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.c.x, -451f), vec2<f32>(arg_0, 430f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1049f, global2.c.x), global2.c))))), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-1i, -12965i, global0.b, global2.b)) & vec4<i32>(global2.b, _wgslsmith_clamp_i32(global2.b, global2.b, 47088i), 19250i, global2.b), min(-(~vec4<i32>(0i, -25703i, global2.b, -2147483647i)), abs(abs(vec4<i32>(87435i, global0.b, global2.b, 31136i))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_1()))))));
    return 0i;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(~1u, ~_wgslsmith_div_u32(~u_input.a.x, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(41792u, 9u)], 0u))), firstLeadingBit(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.a.xz), 9u)], 0u & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)])) ^ _wgslsmith_sub_u32((u_input.a.x ^ 1u) << (global3[_wgslsmith_index_u32(u_input.a.x, 16u)] % 32u), global3[_wgslsmith_index_u32(0u, 16u)]));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global0.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-873f * 1689f), 524f)))), _wgslsmith_clamp_i32(global2.b, ~select(-39927i, global0.b, true), func_3(global0.c.x)) ^ _wgslsmith_div_i32(global2.b, global2.b), global2.a);
    global1 = array<u32, 9>();
    let var_2 = Struct_1(global0.a, i32(-1i) * -var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec2_f32(func_1()).x, global2.a.x))));
    let var_3 = select(vec4<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), firstTrailingBit(firstLeadingBit(2147483647i)) < _wgslsmith_sub_i32(-18447i, global0.b ^ var_1.b), any(vec2<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 9u)] > u_input.a.x, true))), select(vec4<bool>(false, true, select(false, false, true) && all(vec2<bool>(false, false)), all(vec4<bool>(false, true, true, false))), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, true, false), true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), select(vec4<bool>(false, !all(vec4<bool>(true, false, true, false)), all(vec3<bool>(true, true, true)) | any(vec4<bool>(true, false, true, true)), false), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)), !vec4<bool>(all(vec2<bool>(false, true)), true, any(vec2<bool>(true, false)), false)));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(global0.a)))) + vec2<f32>(func_2().c.x, _wgslsmith_f_op_f32(f32(-1f) * -1081f)));
    var_0 = vec2<f32>(arg_0.c.x, 1817f);
    var var_1 = func_2();
    let var_2 = ~arg_2;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0.a, vec2<f32>(global0.c.x, var_0.x))) - _wgslsmith_f_op_vec2_f32(-arg_0.a)))), ~_wgslsmith_mod_i32(0i, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1415f, -723f))), _wgslsmith_f_op_vec2_f32(floor(arg_0.a)))), global0.c)));
    return -(~(1i ^ _wgslsmith_mod_i32(arg_0.b, _wgslsmith_div_i32(2147483647i, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 16>();
    global1 = array<u32, 9>();
    global1 = array<u32, 9>();
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global2.c)) + _wgslsmith_f_op_vec2_f32(func_1()))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x * global0.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(161f * 327f))))), -23485i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-994f)), global2.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_2(), -(~1000i), reverseBits(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(global0.b, global2.b, 2147483647i)), countOneBits(vec3<i32>(2904i, var_1.b, global0.b)), firstTrailingBit(vec3<i32>(-38331i, var_1.b, -6567i))))), u_input.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x + -1775f)) * 792f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-204f - -948f) * _wgslsmith_f_op_f32(-global2.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1237f, var_1.a.x), _wgslsmith_f_op_f32(-334f + global0.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(global2.c.x - global2.c.x)) * _wgslsmith_f_op_f32(-global2.a.x))), -select(var_1.b, -2147483647i & var_1.b, true) ^ ((~(-2147483647i) >> (global3[_wgslsmith_index_u32(4294967295u, 16u)] % 32u)) ^ _wgslsmith_mod_i32(~74875i, 27176i)));
}

