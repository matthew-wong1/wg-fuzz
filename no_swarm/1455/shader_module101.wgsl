struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23>;

var<private> global1: u32 = 1u;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, true));

var<private> global3: array<Struct_1, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec4<i32>) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(-1479f)), 1301f);
    global0 = array<vec4<u32>, 23>();
    global1 = ~(~(u_input.a & u_input.a));
    global3 = array<Struct_1, 19>();
    global3 = array<Struct_1, 19>();
    return 704u;
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_u32(countOneBits(global0[_wgslsmith_index_u32(func_3(global3[_wgslsmith_index_u32(firstLeadingBit(abs(arg_1)), 19u)], global3[_wgslsmith_index_u32(62584u, 19u)], arg_0, -vec4<i32>(arg_0, arg_0, arg_0, arg_0)), 23u)]), ~vec4<u32>(_wgslsmith_clamp_u32(abs(arg_1), u_input.a, func_3(global3[_wgslsmith_index_u32(87089u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)], arg_0, vec4<i32>(19879i, arg_0, arg_0, arg_0))), _wgslsmith_clamp_u32(~4294967295u, reverseBits(1u), 1u), ~_wgslsmith_clamp_u32(24966u, arg_1, 10451u), _wgslsmith_dot_vec3_u32(~vec3<u32>(23128u, 70169u, 4294967295u), vec3<u32>(u_input.a, 1u, 0u))));
    var var_1 = global3[_wgslsmith_index_u32(8173u, 19u)];
    global2 = Struct_1(!(!global2.a));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~abs(var_0.xx), firstLeadingBit(abs(vec2<u32>(u_input.a, 4294967295u)))), var_0.ww) & (_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(54738u, var_0.x)), vec2<u32>(_wgslsmith_div_u32(arg_1, 3320u), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(arg_1, 23u)], vec4<u32>(1u, arg_1, 1u, 44422u)))) | u_input.a), 19u)];
    let var_3 = global3[_wgslsmith_index_u32(select(~arg_1, var_0.x, select(all(var_2.a), true, var_1.a.x) || true) << (1u % 32u), 19u)];
    return global3[_wgslsmith_index_u32(4294967295u, 19u)];
}

fn func_1() -> Struct_1 {
    global2 = func_2(1i, 1u);
    let var_0 = global3[_wgslsmith_index_u32(max(func_3(func_2(1i, ~(26195u | u_input.a)), global3[_wgslsmith_index_u32(~(~max(4294967295u, 32u)), 19u)], ~(-2147483647i), countOneBits(-_wgslsmith_div_vec4_i32(vec4<i32>(-12046i, -53327i, -55179i, -26922i), vec4<i32>(-21755i, -2147483647i, 31853i, -2147483647i)))), u_input.a), 19u)];
    let var_1 = _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(1i, -2147483647i, 27584i, countOneBits(39478i)));
    let var_2 = Struct_1(global2.a);
    let var_3 = !var_0.a;
    return Struct_1(vec2<bool>(global2.a.x, -var_1.x >= var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 23>();
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1201f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1415f))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(415f, _wgslsmith_f_op_f32(f32(-1f) * -801f)))))));
    global1 = func_3(global3[_wgslsmith_index_u32(u_input.a << (4294967295u % 32u), 19u)], global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a, 23u)])) ^ u_input.a), 19u)], _wgslsmith_mod_i32(firstTrailingBit(17292i), max(select(-23328i, select(56428i, 44910i, global2.a.x), true | global2.a.x), abs(21571i))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(-38984i >> (u_input.a % 32u), i32(-1i) * -2147483647i), -min(1i, -2147483647i)), 45465i, -_wgslsmith_sub_i32(116687i << (1u % 32u), ~1i), ~_wgslsmith_div_i32(-33560i, -2147483647i)));
    global0 = array<vec4<u32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~(~5156u)), var_1, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-2147483647i), 1i), vec2<i32>(-2147483647i, 2147483647i))));
}

