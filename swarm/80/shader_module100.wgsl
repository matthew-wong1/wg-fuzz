struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

var<private> global1: array<Struct_2, 15>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1.a.ywz;
    var_0 = !select(arg_1.a.xxx, !arg_1.a.wzz, arg_1.a.x);
    let var_1 = false;
    let var_2 = true;
    global1 = array<Struct_2, 15>();
    return ~(-u_input.a.x) >> (arg_1.b % 32u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec2<i32>) -> f32 {
    global0 = array<Struct_3, 19>();
    let var_0 = ~arg_1.c;
    let var_1 = _wgslsmith_sub_vec4_i32(u_input.a, ~u_input.a);
    global0 = array<Struct_3, 19>();
    global1 = array<Struct_2, 15>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.b)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: f32) -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(38025u, 19u)];
    let var_1 = var_0.c;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit((~0u >> (firstTrailingBit(var_1.b) % 32u)) | 59684u), _wgslsmith_sub_u32(u_input.c.x, min(42069u, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, 0u)))) | ~firstTrailingBit(abs(27485u))), 19u)];
    var var_3 = global0[_wgslsmith_index_u32(var_1.b, 19u)];
    let var_4 = Struct_2(vec2<bool>(var_3.c.a.x, any(vec4<bool>(var_2.c.a.x, false, false, true)) | any(vec2<bool>(var_3.d, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-381f - var_2.a), -542f, var_0.b < 0u))))), ~(~(43095u ^ select(4008u, 0u, true))));
    return vec4<bool>(select(arg_0, var_3.d != false, all(var_2.c.a)), true, select(true, true, false), all(select(!vec4<bool>(false, var_0.c.a.x, var_4.a.x, var_4.a.x), var_3.c.a, vec4<bool>(!var_3.d, false, !var_0.c.a.x, var_2.b >= 93490u))));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: i32) -> Struct_2 {
    global0 = array<Struct_3, 19>();
    global1 = array<Struct_2, 15>();
    global1 = array<Struct_2, 15>();
    var var_0 = Struct_1(!func_4(select(true, true, !arg_1.x), func_2(true, Struct_1(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), 1u, vec2<i32>(arg_2, arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(802f * arg_0)), _wgslsmith_f_op_f32(func_3(Struct_1(arg_1, u_input.b.x, u_input.a.zx), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, 8389u), 15u)], arg_1, u_input.a.yw))), abs((abs(u_input.b.x) >> (1u % 32u)) >> (firstLeadingBit(u_input.c.x) % 32u)), ~vec2<i32>(u_input.a.x, 0i));
    var var_1 = ~var_0.b;
    return global1[_wgslsmith_index_u32(106628u, 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var var_1 = i32(-1i) * -34440i;
    var var_2 = func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-113f, -518f))))), vec4<bool>(!(-u_input.a.x >= countOneBits(1i)), !all(vec4<bool>(true, true, true, true)), true, all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true))), _wgslsmith_add_i32(0i, _wgslsmith_sub_i32(1i, -2911i)));
    var_2 = func_1(_wgslsmith_f_op_f32(var_2.b + var_2.b), vec4<bool>(var_2.a.x, false && var_2.a.x, !(all(vec3<bool>(var_2.a.x, false, var_2.a.x)) & !var_2.a.x), false), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), u_input.a.x, -u_input.a.x, max(-53648i, u_input.a.x | u_input.a.x)), vec4<i32>(_wgslsmith_div_i32(u_input.a.x, abs(-11202i)), u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x ^ u_input.a.x, 2147483647i, u_input.a.x), abs(u_input.a.x))));
    let var_3 = true;
    var_2 = func_1(var_2.b, select(select(vec4<bool>(true, var_2.a.x, var_2.a.x & var_2.a.x, all(vec4<bool>(var_3, false, var_2.a.x, var_3))), select(!vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_3), func_4(var_2.a.x, u_input.a.x, var_2.b, var_2.b), var_3), vec4<bool>(var_2.a.x, var_3, all(vec2<bool>(true, false)), var_2.a.x)), vec4<bool>(any(!vec4<bool>(var_3, var_2.a.x, false, var_2.a.x)), all(var_2.a) | false, true, !var_3), true), select(~(-33011i) << (select(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 4294967295u), true) % 32u), firstLeadingBit(u_input.a.x), select(var_2.a.x, any(select(vec4<bool>(true, var_2.a.x, true, true), vec4<bool>(false, true, var_2.a.x, var_3), var_3)), any(vec2<bool>(false, false)))));
    let var_4 = global1[_wgslsmith_index_u32(select(30368u, ~firstLeadingBit(_wgslsmith_add_u32(u_input.b.x, var_2.c)), true) & countOneBits(var_2.c), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zz);
}

