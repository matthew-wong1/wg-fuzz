struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false));

var<private> global1: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(34888u, 43918u), vec2<u32>(36236u, 4294967295u), vec2<u32>(3462u, 27125u), vec2<u32>(29816u, 4294967295u), vec2<u32>(98913u, 1u), vec2<u32>(29696u, 10174u), vec2<u32>(749u, 1u), vec2<u32>(61935u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 79739u), vec2<u32>(4294967295u, 96486u), vec2<u32>(4294967295u, 56489u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 24752u), vec2<u32>(0u, 5877u), vec2<u32>(32028u, 0u), vec2<u32>(0u, 27561u), vec2<u32>(4294967295u, 1u), vec2<u32>(17381u, 0u), vec2<u32>(1u, 13577u));

var<private> global2: bool;

var<private> global3: array<f32, 21> = array<f32, 21>(300f, -2170f, -104f, -403f, -1000f, -557f, -770f, -906f, 1033f, 943f, 1016f, 243f, -415f, -1000f, 1497f, 417f, 663f, -952f, -707f, -663f, 2041f);

var<private> global4: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    global4 = -2147483647i;
    global1 = array<vec2<u32>, 20>();
    global0 = array<vec4<bool>, 18>();
    var var_0 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32((_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, arg_0.x), 1u) & 56633u) >> ((9360u << (1u % 32u)) % 32u), 21u)]);
    let var_1 = true;
    return !(!vec3<bool>(any(global0[_wgslsmith_index_u32(4294967295u, 18u)]), any(global0[_wgslsmith_index_u32(~6019u, 18u)]), all(vec3<bool>(false, var_1, var_1))));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = vec2<bool>(true && any(!global0[_wgslsmith_index_u32(select(22722u, 1u, false), 18u)]), !(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)) & all(!global0[_wgslsmith_index_u32(arg_0, 18u)])));
    global4 = ~1i;
    global0 = array<vec4<bool>, 18>();
    let var_1 = Struct_2(~1i);
    var var_2 = !var_0.x;
    return Struct_2(_wgslsmith_add_i32(abs(-14038i) >> (firstLeadingBit(34487u) % 32u), var_1.a) | 1i);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_mod_i32(countOneBits(12995i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, ~2668i), u_input.a.xx)));
    let var_1 = (vec2<i32>(-1i) * -(vec2<i32>(arg_0.a, 16242i) | u_input.a.wx)) ^ u_input.a.zz;
    let var_2 = arg_2;
    let var_3 = u_input.a.xwx;
    let var_4 = arg_1.x;
    return global0[_wgslsmith_index_u32(4294967295u, 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global0[_wgslsmith_index_u32(abs(1u), 18u)], select(vec4<bool>(all(func_1(vec4<u32>(21656u, 62500u, 39872u, 0u))), true, true, false), func_3(func_2(0u, reverseBits(vec3<u32>(45022u, 15892u, 1u))), vec4<u32>(1u, _wgslsmith_mult_u32(0u, 4294967295u), ~0u, _wgslsmith_clamp_u32(57925u, 0u, 4294967295u)), func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 8279u, 4294967295u), vec4<u32>(4294967295u, 70203u, 8767u, 49562u)), ~vec3<u32>(1u, 1u, 0u)), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 21u)], -266f)), select(!global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(53924u, 11169u), global1[_wgslsmith_index_u32(5751u, 20u)]) ^ ~1u, 18u)], false)), any(!global0[_wgslsmith_index_u32(~min(0u, 2712u), 18u)]));
    global2 = var_0.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~26930u, 21u)] * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(12843u, 21u)] * global3[_wgslsmith_index_u32(4294967295u, 21u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1512f + 740f) + _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(4294967295u, 21u)]))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 21u)]))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(~(~28837u), 21u)])))));
    var var_2 = _wgslsmith_dot_vec2_i32(u_input.a.yx, -u_input.a.wx);
    var var_3 = Struct_1(u_input.a);
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(-reverseBits(var_3.a.yy), vec2<i32>(2147483647i, u_input.a.x)), vec2<i32>(var_3.a.x ^ (-2147483647i << (0u % 32u)), min(-1i, countOneBits(-2147483647i)))), -27353i);
}

