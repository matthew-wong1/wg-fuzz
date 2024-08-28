struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(0u, 4530u, 69882u, 0u), vec4<u32>(4294967295u, 77920u, 2194u, 44057u), vec4<u32>(71007u, 1u, 0u, 66442u), vec4<u32>(1u, 48327u, 0u, 1300u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(87182u, 1u, 1u, 1u), vec4<u32>(73023u, 1u, 15053u, 0u));

var<private> global3: f32 = 583f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    let var_0 = Struct_2((-_wgslsmith_div_vec4_i32(vec4<i32>(48894i, 20912i, -2147483647i, u_input.a), vec4<i32>(u_input.d, 2147483647i, u_input.c.x, u_input.a)) >> (global2[_wgslsmith_index_u32(u_input.e.x, 7u)] % vec4<u32>(32u))) ^ -(-vec4<i32>(u_input.d, u_input.a, -34823i, 0i) & vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, u_input.a)), 53621u);
    var var_1 = ~abs(~(~var_0.b));
    let var_2 = -1945f;
    return ~_wgslsmith_add_i32(-41894i, u_input.c.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: i32) -> u32 {
    let var_0 = u_input.c.x;
    let var_1 = false;
    var var_2 = global1[_wgslsmith_index_u32(u_input.e.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(85754u & u_input.e.x, _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], ~vec4<u32>(u_input.e.x, u_input.b, u_input.e.x, u_input.b))), _wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.e.zz), u_input.e.yy)) % 32u), 9u)];
    let var_3 = Struct_2(vec4<i32>(~(~var_0), func_3(), var_0, 0i) ^ -_wgslsmith_mult_vec4_i32(~vec4<i32>(var_0, -1i, 1i, 90334i), select(vec4<i32>(-9428i, u_input.a, 0i, u_input.a), vec4<i32>(u_input.c.x, var_0, u_input.c.x, 11066i), var_1)), 1u >> (var_2.c.x % 32u));
    var_2 = Struct_1(var_2.a && false, _wgslsmith_mult_u32(var_3.b, ~_wgslsmith_mod_u32(var_2.b, _wgslsmith_mult_u32(u_input.b, 53828u))), select(var_2.c, reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.b, 37227u) & 0u, 7u)]), arg_1));
    return _wgslsmith_mult_u32(_wgslsmith_mod_u32(45254u, _wgslsmith_sub_u32(var_2.b & 63873u, _wgslsmith_sub_u32(var_3.b, 25600u))), _wgslsmith_sub_u32(28446u, ~(var_3.b << (1u % 32u)))) | u_input.e.x;
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-318f - 1120f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-615f * -908f))));
    var var_1 = Struct_2(vec4<i32>(~arg_0, ~(-arg_0), u_input.a, _wgslsmith_dot_vec2_i32(-u_input.c.zy, vec2<i32>(-6437i, 1i))) & vec4<i32>(-10637i, -u_input.c.x, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.d) & vec2<i32>(arg_0, -1i), ~vec2<i32>(-2147483647i, 23590i))), func_2(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), true, abs(49574u) != ~u_input.b, (u_input.e.x >= u_input.b) & true), ~arg_0));
    let var_2 = Struct_1(true, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, ~u_input.e.x), _wgslsmith_div_vec2_u32(u_input.e.zy, ~reverseBits(u_input.e.yz))), _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.e.x, ~(~u_input.b), select(26810u, u_input.b, true), _wgslsmith_dot_vec4_u32(~global2[_wgslsmith_index_u32(u_input.e.x, 7u)], vec4<u32>(var_1.b, u_input.e.x, u_input.b, 3944u))), vec4<u32>(~u_input.b, firstLeadingBit(u_input.b), max(var_1.b, _wgslsmith_mod_u32(var_1.b, 46909u)), u_input.b)));
    let var_3 = var_2.a;
    global1 = array<Struct_1, 9>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<i32>(u_input.a, u_input.d, u_input.c.x, abs(min(reverseBits(u_input.d), 2147483647i >> (u_input.b % 32u)))), func_1(_wgslsmith_div_i32(-_wgslsmith_div_i32(u_input.a, u_input.d), -2147483647i)));
    global2 = array<vec4<u32>, 7>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(350f, 404f) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1323f)) - _wgslsmith_f_op_f32(ceil(916f))), 1312f)));
    let var_2 = vec3<f32>(var_1.x, var_1.x, var_1.x);
    let var_3 = vec2<bool>(_wgslsmith_f_op_f32(var_2.x * -268f) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -801f), any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-1439f, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(28246i ^ u_input.d, select(var_0.a.x, var_0.a.x, false)), abs(min(u_input.c.x, var_0.a.x))), -(~2147483647i), var_0.a.x));
}

