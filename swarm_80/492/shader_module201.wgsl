struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<bool> {
    global0 = array<Struct_1, 17>();
    var var_0 = 905f;
    let var_1 = true;
    let var_2 = ~select(58329u, 1u, !select(true, any(vec2<bool>(false, var_1)), all(vec2<bool>(var_1, var_1))));
    var var_3 = global0[_wgslsmith_index_u32(select(abs(var_2), 11307u, select(2147483647i >= min(_wgslsmith_clamp_i32(-28040i, u_input.e, -2147483647i), ~u_input.e), any(!vec2<bool>(var_1, true)), true)), 17u)];
    return !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, !var_1, any(vec4<bool>(var_1, false, true, true)), false), true), !(!select(vec4<bool>(var_1, true, var_1, var_3.a), vec4<bool>(true, var_1, false, true), var_1)), !select(select(vec4<bool>(var_3.a, var_1, true, var_1), vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(false, var_3.a, false, false)), select(vec4<bool>(var_3.a, false, var_3.a, var_3.a), vec4<bool>(var_1, var_3.a, var_3.a, false), vec4<bool>(var_1, var_1, var_1, true)), vec4<bool>(false, true, true, var_1)));
}

fn func_2() -> Struct_1 {
    var var_0 = any(!select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, false, false, false)), true), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
    var var_1 = select(func_3(), select(select(vec4<bool>(any(vec2<bool>(true, false)), any(vec3<bool>(true, true, true)), true, select(false, true, false)), vec4<bool>(true, all(vec4<bool>(true, true, false, false)), true, func_3().x), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false))), !vec4<bool>(true, true, 18686i > u_input.e, true), true), !all(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))));
    var var_2 = any(select(!func_3().wz, select(select(select(var_1.zz, var_1.wx, vec2<bool>(true, var_1.x)), !vec2<bool>(true, var_1.x), u_input.e >= u_input.e), select(select(var_1.wy, var_1.wz, vec2<bool>(var_1.x, var_1.x)), vec2<bool>(var_1.x, var_1.x), var_1.x), var_1.xx), !(!select(var_1.xy, vec2<bool>(var_1.x, true), var_1.x))));
    let var_3 = Struct_1(all(!var_1.zy) || any(select(vec3<bool>(var_1.x, true, true), func_3().xzw, !var_1.wxy)), firstLeadingBit(vec4<i32>(-u_input.e, u_input.e, 17186i, 0i ^ (u_input.e | u_input.e))), ~vec4<u32>(firstTrailingBit(u_input.a), u_input.a << (67765u % 32u), firstTrailingBit(1u), _wgslsmith_mod_u32(4294967295u, u_input.d)) | vec4<u32>(u_input.b.x, u_input.a, ~4747u ^ u_input.a, ~u_input.c.x << (u_input.a % 32u)), -1469f);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(451f, -942f), vec2<f32>(var_3.d, var_3.d), vec2<bool>(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-248f, var_3.d), vec2<f32>(818f, var_3.d), var_3.a)))))) - vec2<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -697f) + 265f), var_3.d)));
    return Struct_1(var_3.d > 1344f, vec4<i32>(_wgslsmith_div_i32(var_3.b.x, 0i), 1017i, min(u_input.e, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.b.x, 36714i, u_input.e, -2147483647i), var_3.b | var_3.b)), var_3.b.x), select(vec4<u32>(abs(u_input.a), max(countOneBits(4294967295u), 110910u), var_3.c.x, var_3.c.x), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.c.x, 0u, 18468u, u_input.c.x), abs(vec4<u32>(90671u, 4294967295u, var_3.c.x, u_input.b.x)))), true), var_4.x);
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = any(!vec4<bool>(!all(vec2<bool>(var_0.a, var_0.a)), true, 1i < countOneBits(u_input.e), false));
    let var_2 = ~vec4<u32>(4294967295u, ~max(countOneBits(u_input.b.x), ~var_0.c.x), ~0u, 10592u);
    var var_3 = false;
    var_1 = false;
    return Struct_2(var_2, vec2<f32>(var_0.d, arg_0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(942f)), var_0.d)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> vec4<u32> {
    var var_0 = Struct_1(any(vec2<bool>(false, true)), ~func_2().b, u_input.b, _wgslsmith_f_op_f32(min(arg_0.c, arg_0.b.x)));
    return ~firstLeadingBit(~var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 19915u;
    var var_1 = _wgslsmith_add_i32(-u_input.e, u_input.e);
    var var_2 = global0[_wgslsmith_index_u32(39712u, 17u)];
    var_2 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(var_2.c.x, u_input.c.x)), 20431u)), 17u)];
    var var_3 = 65538u;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_add_u32(43823u, 4912u)), -var_2.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(func_4(func_1(-844f, 553f), -var_2.b), vec4<u32>(4294967295u ^ var_2.c.x, _wgslsmith_add_u32(var_2.c.x, 1u), ~1u, 30472u)), func_4(Struct_2(vec4<u32>(4294967295u, 16637u, 8091u, 6270u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.d, var_2.d), vec2<f32>(2096f, 782f))), 1f), vec4<i32>(max(-60391i, 38905i), var_2.b.x & var_2.b.x, ~var_2.b.x, _wgslsmith_mod_i32(var_2.b.x, 27014i)))));
}

