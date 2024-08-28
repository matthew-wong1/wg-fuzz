struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.e.x, 81960u, ~arg_0.x), ~countOneBits(u_input.b.x), 51095u, arg_0.x), _wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(5049u, u_input.e.x, 54455u, arg_0.x)), ~vec4<u32>(63630u, u_input.c, u_input.e.x, u_input.e.x), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, arg_0.x, arg_0.x, u_input.a.x), vec4<u32>(u_input.c, 0u, 37875u, 0u))))) << (~vec4<u32>(~_wgslsmith_mod_u32(0u, arg_0.x), arg_0.x, arg_0.x, 0u) % vec4<u32>(32u));
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    return ~(~(u_input.c ^ 1u));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 26727u), 17u)];
    global0 = array<Struct_2, 17>();
    var var_1 = select(!vec2<bool>(u_input.b.x >= func_3(vec3<u32>(var_0.a.d, 41528u, var_0.a.a.x)), !any(vec3<bool>(true, true, false))), !select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, false)), 4294967295u == u_input.b.x), any(vec2<bool>(true, true))), true);
    global0 = array<Struct_2, 17>();
    let var_2 = true;
    return all(!vec2<bool>(false, any(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_2, var_2, var_1.x), false))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = arg_2.x;
    global0 = array<Struct_2, 17>();
    var var_1 = firstLeadingBit(vec2<i32>(~1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.a.c, 0i, arg_1.a.c), vec3<i32>(19123i, arg_0.x, _wgslsmith_mult_i32(arg_0.x, 23464i)))));
    var_0 = func_2(0i);
    global0 = array<Struct_2, 17>();
    return arg_1.a;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> f32 {
    global0 = array<Struct_2, 17>();
    var var_0 = Struct_2(Struct_1(~abs(func_1(vec4<i32>(-33968i, u_input.d, arg_1.c, u_input.d), Struct_2(Struct_1(u_input.a, vec2<f32>(-756f, arg_0), -9454i, 72159u), -1464f, 1541f), vec2<bool>(arg_2, arg_2)).a), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_1.b))), arg_1.b)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.c, u_input.d, 1i), vec3<i32>(2147483647i, -1i, 1i)), -vec3<i32>(-1i, u_input.d, -7556i)) >> ((u_input.b.x >> (~0u % 32u)) % 32u), ~func_3(~vec3<u32>(60581u, arg_1.a.x, arg_1.a.x))), _wgslsmith_f_op_f32(arg_1.b.x + -1033f), arg_0);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-654f + -3074f))), _wgslsmith_div_f32(var_0.a.b.x, 1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.b.x, -496f))))));
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    return _wgslsmith_f_op_f32(811f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))))));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    global0 = array<Struct_2, 17>();
    let var_0 = Struct_1(arg_2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -201f))), firstLeadingBit(-35910i >> (arg_1 % 32u)), firstTrailingBit(~arg_2.d));
    global0 = array<Struct_2, 17>();
    var var_1 = ~vec3<u32>(0u, _wgslsmith_div_u32(var_0.d, 29785u), ~(~(arg_2.a.x >> (22632u % 32u))));
    var var_2 = vec4<i32>(i32(-1i) * -2147483647i, 12386i, u_input.d, ~var_0.c);
    return global0[_wgslsmith_index_u32(abs(abs(66776u)), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 446f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -253f)))) * -361f);
    var var_1 = func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f)), func_1(vec4<i32>(-1i, 2147483647i, u_input.d, -1i) << (vec4<u32>(10298u, u_input.c, 0u, 22297u) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.e.x), 17u)], select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), 61270u < (u_input.a.x | 3858u))))), 0u, func_1(~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, u_input.d, u_input.d) | vec4<i32>(u_input.d, 2147483647i, u_input.d, u_input.d), max(vec4<i32>(u_input.d, 2147483647i, -10836i, u_input.d), vec4<i32>(-9331i, 0i, u_input.d, -2147483647i))), Struct_2(func_1(vec4<i32>(2147483647i, 19106i, 1i, -27426i), global0[_wgslsmith_index_u32(1u, 17u)], vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -614f) * -151f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1128f) + 1008f)), vec2<bool>(true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true))));
    var var_2 = var_1.a;
    var var_3 = var_1.a;
    let var_4 = var_2.d;
    var_3 = Struct_1(select(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 0u) | ~vec2<u32>(var_1.a.a.x, var_1.a.a.x), var_1.a.a), vec2<u32>(~u_input.a.x, func_3(~u_input.b)), any(vec2<bool>(true, true))), var_3.b, abs(_wgslsmith_mod_i32(5251i, -48383i)), ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(11872u, _wgslsmith_div_u32(reverseBits(1u), _wgslsmith_mult_u32(select(4294967295u, var_3.d, false), 30091u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b.x, var_1.b))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.x, -889f))), select(4294967295u, ~(~(~4294967295u)), true));
}

