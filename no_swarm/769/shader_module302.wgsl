struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(1u, 4294967295u, 77343u, 59990u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    var var_0 = Struct_1(u_input.b, _wgslsmith_mult_vec2_u32(u_input.b, _wgslsmith_mult_vec2_u32(u_input.b, u_input.b)), reverseBits(vec3<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(41488u, 4294967295u, u_input.b.x, 7429u), vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(12888u, 4u)], u_input.b.x), true), vec4<u32>(9948u, u_input.c, 20796u, global0[_wgslsmith_index_u32(u_input.b.x, 4u)])), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(42864u, 4u)]), vec2<u32>(global0[_wgslsmith_index_u32(1u, 4u)], u_input.c))), firstTrailingBit(4294967295u))), 18432u);
    global0 = array<u32, 4>();
    let var_1 = ~_wgslsmith_sub_i32(2147483647i, -_wgslsmith_mod_i32(i32(-1i) * -29295i, -26244i ^ u_input.a));
    let var_2 = Struct_1(vec2<u32>(max(max(58589u, abs(4294967295u)), (20128u | global0[_wgslsmith_index_u32(0u, 4u)]) >> (global0[_wgslsmith_index_u32(var_0.d, 4u)] % 32u)), 4294967295u), vec2<u32>(~u_input.c, _wgslsmith_dot_vec2_u32(~(~u_input.b), var_0.b)), var_0.c ^ var_0.c, ~54521u);
    var_0 = var_2;
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 4u)];
}

fn func_4(arg_0: vec3<u32>) -> vec4<f32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -805f))), _wgslsmith_f_op_f32(-748f + 205f), u_input.a < ~min(u_input.a, u_input.a))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-716f))), _wgslsmith_div_f32(202f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-510f))))));
    let var_1 = var_0;
    var var_2 = ~_wgslsmith_clamp_i32(abs(u_input.a), u_input.a, ~countOneBits(reverseBits(9895i)));
    global0 = array<u32, 4>();
    var var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(arg_0.xz | _wgslsmith_add_vec2_u32(vec2<u32>(37220u, u_input.b.x), vec2<u32>(global0[_wgslsmith_index_u32(25667u, 4u)], 0u))), vec2<u32>(global0[_wgslsmith_index_u32(1u, 4u)] ^ ~1u, arg_0.x)), u_input.b);
    return vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1572f), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -132f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(~firstLeadingBit(~u_input.b), ~abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(global0[_wgslsmith_index_u32(19988u, 4u)], 89054u))), arg_0.xyw, _wgslsmith_dot_vec2_u32(arg_0.xy, vec2<u32>(21097u, ~_wgslsmith_mult_u32(1u, arg_0.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-705f, -502f, 1000f, _wgslsmith_f_op_f32(select(-436f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-584f * 355f))), !select(arg_1.x, arg_1.x, arg_1.x)))) + _wgslsmith_f_op_vec4_f32(func_4(vec3<u32>(func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-411f, -2410f, -1000f, 1659f), vec4<f32>(-937f, 756f, 1065f, 225f), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x))), vec4<i32>(-1i, u_input.a, 0i, 2147483647i), arg_1.x, vec2<bool>(false, false)), 45724u, 1u))));
    let var_2 = Struct_1(vec2<u32>(u_input.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 80938u), vec2<u32>(0u, 81306u))), vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.c, 4073u, 24443u), var_0.c, arg_1.x) | vec3<u32>(9824u, 32068u, arg_2.c.x), vec3<u32>(arg_0.x, 66489u, var_0.b.x) >> (select(vec3<u32>(var_0.c.x, var_0.a.x, 1u), vec3<u32>(0u, 45697u, 0u), arg_1.xxy) % vec3<u32>(32u))), ~(~(~var_0.d))), max(firstLeadingBit(abs(abs(var_0.c))), vec3<u32>(firstLeadingBit(73881u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 43846u), var_0.b), ~(0u << (arg_2.c.x % 32u)))), global0[_wgslsmith_index_u32(~var_0.a.x, 4u)]);
    var var_3 = vec3<u32>(1u, arg_0.x & _wgslsmith_mod_u32(~(~var_2.a.x), max(~50528u, _wgslsmith_mult_u32(39386u, var_2.d))), 0u);
    let var_4 = Struct_1(min(~u_input.b, select(vec2<u32>(4294967295u, ~arg_2.b.x), max(select(vec2<u32>(4294967295u, 27509u), vec2<u32>(var_2.b.x, 9068u), vec2<bool>(true, false)), arg_0.xz), select(vec2<bool>(false, false), arg_1.wy, select(arg_1.zz, vec2<bool>(arg_1.x, true), vec2<bool>(false, arg_1.x))))), vec2<u32>(~u_input.c ^ ~(~var_3.x), 1u), vec3<u32>(~(~36987u), reverseBits(var_0.a.x) >> (0u % 32u), global0[_wgslsmith_index_u32(59592u, 4u)]), ~(select(abs(1u), _wgslsmith_clamp_u32(1u, 0u, 31902u), false && arg_1.x) ^ _wgslsmith_mult_u32(10109u, ~arg_0.x)));
    return var_3.x;
}

fn func_1(arg_0: vec2<bool>) -> bool {
    global0 = array<u32, 4>();
    var var_0 = Struct_1(vec2<u32>(~4294967295u, firstTrailingBit(1u)) & vec2<u32>(~1u, ~1u), vec2<u32>(~0u, _wgslsmith_mult_u32(4294967295u, ~func_2(vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 4u)], 1u, 3595u, 106423u), vec4<bool>(true, false, arg_0.x, arg_0.x), Struct_1(u_input.b, vec2<u32>(u_input.c, 1u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 4u)], u_input.c, 0u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)])))), abs(~vec3<u32>(u_input.b.x, u_input.c, u_input.c ^ 37397u)), 1u);
    return any(select(vec3<bool>(true, true, true), vec3<bool>(!arg_0.x, !arg_0.x, any(select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(false, false, false, true), arg_0.x))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(abs(u_input.b.x), ~u_input.b.x, countOneBits(0u)) >> (vec3<u32>(_wgslsmith_sub_u32(0u, u_input.b.x), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27851u, 4u)], 4u)], 4294967295u), 4u)], ~8166u) % vec3<u32>(32u)), select(vec3<u32>(2063u & global0[_wgslsmith_index_u32(u_input.c, 4u)], _wgslsmith_div_u32(31371u, u_input.c), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 4u)], 4u)]), ~(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], u_input.b.x) ^ vec3<u32>(u_input.c, u_input.b.x, u_input.b.x)), false));
    let var_1 = select(vec4<bool>(!any(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, true)), true, func_1(vec2<bool>(true, true))), select(vec4<bool>(false, true, any(vec3<bool>(true, true, true)), true), vec4<bool>(true, false, true, true), vec4<bool>(!(-92970i <= u_input.a), true, any(vec3<bool>(true, true, true)), true)), all(vec3<bool>(any(vec2<bool>(true, true)), true, true)));
    global0 = array<u32, 4>();
    var var_2 = _wgslsmith_dot_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 1u), ~var_0.zy), min(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.c, 4u)]) << (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34033u, 4u)], 4u)], 4294967295u) % vec2<u32>(32u)), var_0.zz), var_1.xz), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(var_0.yx), u_input.b, vec2<u32>(0u, u_input.c)), u_input.b | ~vec2<u32>(var_0.x, 0u))) & 1u;
    global0 = array<u32, 4>();
    var_2 = 85669u >> (u_input.c % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, ~var_0.x, 0u) & ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c & global0[_wgslsmith_index_u32(52863u, 4u)], global0[_wgslsmith_index_u32(abs(var_0.x), 4u)]), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 60331u, var_0.x), vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(var_0.x, 4u)], global0[_wgslsmith_index_u32(96938u, 4u)])), ~vec3<u32>(var_0.x, 4294967295u, u_input.c))), ~(min(39328u, 0u) << (max(u_input.b.x, var_0.x) % 32u))));
}

