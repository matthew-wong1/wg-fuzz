struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    let var_0 = abs(u_input.b.x);
    var var_1 = 9657u;
    global0 = array<bool, 22>();
    var var_2 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0, 28657u)), reverseBits(~u_input.b)), u_input.b.x, 1u, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 4294967295u)), u_input.b.x));
    var var_3 = any(vec3<bool>(arg_1.x, global0[_wgslsmith_index_u32(~(var_2.x << (24031u % 32u)), 22u)] || !(true && arg_1.x), any(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)) || (!global0[_wgslsmith_index_u32(u_input.b.x, 22u)] || select(global0[_wgslsmith_index_u32(var_2.x, 22u)], true, arg_1.x))));
    return ~(var_2.x ^ abs(var_2.x));
}

fn func_2() -> u32 {
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    var var_0 = vec2<bool>(true, true);
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b.x >> (u_input.b.x % 32u), ~59725u), _wgslsmith_div_u32(~u_input.b.x, func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(967f, -365f)), select(vec2<bool>(var_0.x, false), vec2<bool>(global0[_wgslsmith_index_u32(2406u, 22u)], true), var_0.x), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -726f)), u_input.a.wwz)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec3<i32>(-2147483647i, abs(0i), u_input.e);
    global0 = array<bool, 22>();
    var var_1 = (4294967295u & arg_0) ^ _wgslsmith_sub_u32(_wgslsmith_mult_u32(~_wgslsmith_add_u32(4294967295u, arg_0), _wgslsmith_add_u32(55438u, _wgslsmith_mod_u32(u_input.b.x, 0u))), func_2());
    var_1 = min(_wgslsmith_mod_u32(~(_wgslsmith_add_u32(38950u, u_input.b.x) | ~u_input.b.x), ~(~2083u >> (~u_input.b.x % 32u))), 46713u);
    var_1 = u_input.b.x;
    return Struct_1(2796f);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = arg_0;
    var var_1 = -866f;
    var var_2 = ~_wgslsmith_mod_vec3_u32(firstLeadingBit(select(vec3<u32>(31592u, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<bool>(false, false, true)) << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 41571u, 1u), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) % vec3<u32>(32u))), ~abs(vec3<u32>(4294967295u, u_input.b.x, 106888u)));
    let var_3 = 8661i;
    let var_4 = var_0.a;
    return ~firstTrailingBit(_wgslsmith_div_u32(26355u, _wgslsmith_div_u32(41726u ^ u_input.b.x, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(func_4(func_1(u_input.b.x), abs(u_input.a.x) >= -68355i, any(select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], false), vec2<bool>(false, true), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 22u)])), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 22u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec2<bool>(global0[_wgslsmith_index_u32(14928u, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)])))), func_1(_wgslsmith_add_u32(u_input.b.x, u_input.b.x))), ~u_input.b.x, 1u);
    let var_1 = u_input.a;
    global0 = array<bool, 22>();
    let var_2 = -u_input.e;
    var var_3 = Struct_2(func_1(u_input.b.x));
    var var_4 = var_3.a;
    let var_5 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(2719f, var_4.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a - 1152f) + _wgslsmith_f_op_f32(max(-995f, 534f)))))));
    var_3 = Struct_2(Struct_1(-1210f));
    var_3 = Struct_2(func_1(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.x << (1u % 32u), _wgslsmith_sub_u32(0u, u_input.b.x), 4294967295u), var_0.x, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(-select(~_wgslsmith_sub_vec2_i32(vec2<i32>(21765i, var_2), vec2<i32>(var_2, u_input.c)), u_input.a.xx, !select(vec2<bool>(global0[_wgslsmith_index_u32(47217u, 22u)], global0[_wgslsmith_index_u32(var_0.x, 22u)]), vec2<bool>(false, false), global0[_wgslsmith_index_u32(29898u, 22u)])), 149f, _wgslsmith_mod_vec2_u32(~firstLeadingBit(u_input.b), _wgslsmith_add_vec2_u32(~u_input.b, abs(u_input.b))) | ~u_input.b, _wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.a.wx), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_2), var_1.zz)), vec2<i32>(41466i, u_input.d)));
}

