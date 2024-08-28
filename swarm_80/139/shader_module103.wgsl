struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<vec4<bool>, 15>;

var<private> global2: array<f32, 18> = array<f32, 18>(142f, 429f, -180f, 143f, -1000f, -1356f, 1000f, 969f, 1927f, -454f, 497f, 972f, -339f, -818f, 1175f, 1000f, -2348f, 244f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> u32 {
    global0 = array<Struct_1, 16>();
    let var_0 = global0[_wgslsmith_index_u32(4624u, 16u)];
    global1 = array<vec4<bool>, 15>();
    return _wgslsmith_mod_u32(26718u, _wgslsmith_sub_u32(3797u, reverseBits(_wgslsmith_clamp_u32(min(4294967295u, 25229u), _wgslsmith_div_u32(4294967295u, 1u), 1u))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(17285u << (1u % 32u), 16u)];
    let var_1 = ~vec4<u32>(abs(1u), 4294967295u >> (0u % 32u), 1u, _wgslsmith_mult_u32(~17667u, func_3(vec2<i32>(1i, -7047i), 1063f))) ^ vec4<u32>(4294967295u >> (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(37167u, 0u, 29151u), vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 47851u, 22535u)), ~vec3<u32>(39245u, 55341u, 24501u)) % 32u), 1u, ~4294967295u, 45094u);
    let var_2 = vec2<i32>(u_input.b, ~_wgslsmith_sub_i32(u_input.a, _wgslsmith_clamp_i32(arg_0.a >> (1u % 32u), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -11098i, 2147483647i), vec3<i32>(arg_0.b, 1i, u_input.b)))));
    var var_3 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(reverseBits(1u), ~func_3(vec2<i32>(-1i, u_input.a), arg_0.c)), var_1.x >> (76682u % 32u)), var_1.x | 1u, var_1.x, func_3(countOneBits(_wgslsmith_div_vec2_i32(abs(var_2), _wgslsmith_div_vec2_i32(var_2, vec2<i32>(var_2.x, -1i)))), 1321f));
    let var_4 = arg_0;
    return Struct_1(_wgslsmith_mod_i32(-abs(var_0.a >> (51141u % 32u)), u_input.b), 1i, var_0.c, arg_0.d);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c, -639f)) - 1326f)))));
    var var_1 = func_2(global0[_wgslsmith_index_u32(~min(1u, ~_wgslsmith_mod_u32(4294967295u, 64645u)), 16u)]);
    var var_2 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(abs(min(u_input.b, var_1.b)), _wgslsmith_div_i32(2147483647i, -arg_0.b))), vec2<i32>(arg_0.a, u_input.b), abs(firstLeadingBit((vec2<i32>(var_1.a, arg_1) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))) ^ -vec2<i32>(arg_0.b, 651i))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(24892u, 18u)])) + _wgslsmith_div_f32(var_1.c, 1773f))), 648f, var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1219f, 721f))) * var_1.c)));
    let var_4 = vec2<u32>(abs(50046u), 49517u);
    return global0[_wgslsmith_index_u32(var_4.x, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(4294967295u);
    global0 = array<Struct_1, 16>();
    global2 = array<f32, 18>();
    let var_1 = func_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~var_0), 16u)], -32941i);
    let var_2 = global1[_wgslsmith_index_u32(~var_0, 15u)];
    global0 = array<Struct_1, 16>();
    let var_3 = countOneBits(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(_wgslsmith_div_u32(39750u, 937u), 8318u, firstLeadingBit(11964u))), abs(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(22217u, 23524u, 30693u), vec3<u32>(var_0, 4226u, var_0)), vec3<u32>(var_0, 45392u, var_0)))));
    var var_4 = var_1;
    var var_5 = func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_3, select(~var_3, vec3<u32>(56033u, firstLeadingBit(4294967295u), var_0), select(!vec3<bool>(true, var_4.d, var_4.d), var_2.yzy, false))), 16u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1259f - var_1.c)))))));
}

