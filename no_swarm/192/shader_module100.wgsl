struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(4294967295u, 4294967295u, 0u, 1u, 0u, 10130u, 37789u, 4294967295u, 93616u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: f32) -> u32 {
    global0 = array<u32, 9>();
    global0 = array<u32, 9>();
    global0 = array<u32, 9>();
    var var_0 = !(!(!vec3<bool>(any(vec2<bool>(false, false)), false, true)));
    var var_1 = _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-1i, _wgslsmith_add_i32(u_input.a, u_input.a), u_input.a << (116098u % 32u), 0i)), vec4<i32>(0i, -6383i, _wgslsmith_div_i32(reverseBits(abs(-21904i)), u_input.a), -46623i));
    return ~countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, ~1u), ~firstTrailingBit(vec4<u32>(2979u, global0[_wgslsmith_index_u32(30489u, 9u)], 0u, u_input.b))), 9u)]);
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    var var_0 = vec2<bool>(any(vec4<bool>(_wgslsmith_f_op_f32(step(-1670f, 815f)) < arg_0.e.a, !select(arg_0.d, true, arg_0.d), true, true)), 1551f > arg_0.e.a);
    var var_1 = 36927i ^ ((-(i32(-1i) * -17531i) << (firstTrailingBit(74531u) % 32u)) ^ ~u_input.a);
    var_1 = arg_0.c;
    let var_2 = _wgslsmith_mult_u32(select(select(abs(~83657u), 4294967295u, !var_0.x), 1u, any(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.d, arg_0.d, false), !arg_0.d))), arg_0.a.x);
    var_0 = select(vec2<bool>(arg_0.d, !(!var_0.x)), vec2<bool>(any(!select(vec4<bool>(arg_0.d, true, var_0.x, true), vec4<bool>(false, var_0.x, true, arg_0.d), vec4<bool>(var_0.x, false, arg_0.d, true))), !(func_3(var_0.x, arg_0.e.a) < (global0[_wgslsmith_index_u32(85123u, 9u)] & 4294967295u))), any(select(!select(vec4<bool>(var_0.x, false, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, false, var_0.x, false), var_0.x), select(!vec4<bool>(true, true, true, arg_0.d), select(vec4<bool>(false, arg_0.d, var_0.x, arg_0.d), vec4<bool>(var_0.x, false, arg_0.d, false), vec4<bool>(var_0.x, true, true, var_0.x)), false), all(select(vec3<bool>(true, false, false), vec3<bool>(arg_0.d, var_0.x, var_0.x), vec3<bool>(true, var_0.x, true))))));
    return Struct_2(_wgslsmith_div_f32(1038f, arg_0.e.a));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global0 = array<u32, 9>();
    global0 = array<u32, 9>();
    var var_0 = all(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), select(true, true, select(false, true, true))));
    let var_1 = 1345f;
    var var_2 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(u_input.b, ~abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24963u, 9u)], 9u)])), 68125u));
    return arg_0;
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> u32 {
    global0 = array<u32, 9>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1189f)))));
    let var_1 = ~1u;
    var var_2 = select(vec4<bool>(true, (arg_0.x >= func_2(Struct_3(vec3<u32>(u_input.b, var_1, 25953u), Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], 1u)), u_input.a, false, arg_2)).a) & (all(vec3<bool>(false, true, false)) && true), (true && all(vec4<bool>(true, false, false, true))) && all(vec2<bool>(true, true)), arg_3 == arg_2.a), vec4<bool>((global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(80527u, 62902u, 14707u, global0[_wgslsmith_index_u32(var_1, 9u)]), vec4<u32>(4294967295u, 0u, u_input.b, var_1)), 9u)] < (var_1 >> (88591u % 32u))) || !all(vec4<bool>(true, false, true, false)), _wgslsmith_f_op_f32(-1455f + _wgslsmith_f_op_f32(f32(-1f) * -1420f)) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(trunc(-909f)), all(vec2<bool>(true, false)))), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)), any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))))), !(-1837f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1598f * arg_3) + 1061f)));
    let var_3 = Struct_2(arg_0.x);
    return _wgslsmith_div_u32(4294967295u, firstTrailingBit(4294967295u));
}

fn func_1() -> i32 {
    let var_0 = vec2<i32>(~1i, (-49114i ^ u_input.a) >> (global0[_wgslsmith_index_u32(min(~(~u_input.b), ~1u), 9u)] % 32u));
    global0 = array<u32, 9>();
    var var_1 = 1u;
    global0 = array<u32, 9>();
    var var_2 = reverseBits(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21500u, 9u)], 9u)], u_input.b, false), 9u)], 29579u & u_input.b), u_input.b)) < func_5(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1555f, _wgslsmith_div_f32(1771f, 313f), _wgslsmith_f_op_f32(f32(-1f) * -2611f)))), ~(~(-var_0.x)), func_4(func_2(Struct_3(vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)]), Struct_1(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(57473u, 9u)])), 2411i, false, Struct_2(708f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2067f)), _wgslsmith_f_op_f32(1f + -174f)));
    return (65164i << (select(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b, u_input.b), global0[_wgslsmith_index_u32(~26686u, 9u)]), ~(925u >> (u_input.b % 32u)), any(vec4<bool>(true, false, true, false))) % 32u)) & -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (func_1() & _wgslsmith_mod_i32(-_wgslsmith_mult_i32(16136i, 35762i), ~u_input.a)) ^ u_input.a;
    let var_1 = vec3<bool>(any(select(vec3<bool>(true, false, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), !any(vec4<bool>(true, false, false, false)))), any(!vec3<bool>(select(false, false, true), all(vec2<bool>(true, false)), any(vec3<bool>(true, true, false)))), true);
    let var_2 = Struct_1(min(vec2<u32>(u_input.b, 77649u), countOneBits(vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 9u)], 9u)], 9u)])) ^ (vec2<u32>(u_input.b, 0u) ^ vec2<u32>(10875u, u_input.b))));
    var var_3 = 2677u;
    global0 = array<u32, 9>();
    let var_4 = var_2;
    var_0 = -13600i;
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-375f)), 2045f)), ~(~vec2<u32>(u_input.b | 56357u, 1u)), 22897u, max(reverseBits(min(select(vec3<i32>(u_input.a, 61203i, -38683i), vec3<i32>(2147483647i, u_input.a, -1i), vec3<bool>(false, var_1.x, var_1.x)), vec3<i32>(-31864i, 1i, u_input.a))), min(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 2147483647i), -vec3<i32>(u_input.a, u_input.a, 40196i)), min(reverseBits(vec3<i32>(u_input.a, u_input.a, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 0i, 61867i), vec3<i32>(-2147483647i, u_input.a, u_input.a))))));
}

