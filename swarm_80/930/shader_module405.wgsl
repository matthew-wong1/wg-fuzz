struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
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

var<private> global0: i32;

var<private> global1: vec2<u32> = vec2<u32>(124826u, 43746u);

var<private> global2: array<Struct_1, 15>;

var<private> global3: vec3<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_add_vec4_u32(abs(_wgslsmith_sub_vec4_u32(select(max(arg_0.b, vec4<u32>(32285u, arg_0.b.x, 0u, 61818u)), abs(vec4<u32>(global1.x, arg_0.b.x, 4294967295u, 42777u)), !vec4<bool>(false, false, arg_1.x, arg_1.x)), vec4<u32>(~4294967295u, _wgslsmith_div_u32(global1.x, u_input.e), ~global1.x, ~arg_0.b.x))), (arg_0.b >> (vec4<u32>(arg_0.b.x, ~global1.x, 1u, ~4294967295u) % vec4<u32>(32u))) >> (arg_0.b % vec4<u32>(32u)));
    let var_1 = global2[_wgslsmith_index_u32(abs(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.x << (u_input.e % 32u), _wgslsmith_dot_vec3_u32(arg_0.b.xxx, u_input.c), ~0u), ~var_0.x | ~var_0.x)), 15u)];
    let var_2 = arg_0;
    let var_3 = ~var_0.zwz;
    global3 = vec3<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1962f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(432f)))))), -208f);
    return vec3<i32>(var_2.a, -_wgslsmith_mult_i32(var_2.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, var_1.a, u_input.d), vec3<i32>(var_1.a, u_input.d, -1i) >> (vec3<u32>(14301u, arg_0.b.x, global1.x) % vec3<u32>(32u)))), 1i);
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = reverseBits(-func_3(arg_0, vec2<bool>(true, true), vec3<bool>(global3.x <= -312f, all(vec4<bool>(true, true, true, true)), false), -529f));
    var var_1 = !select(vec4<bool>(true | (1i < u_input.b), !(arg_0.a >= u_input.a), false, false), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), false), u_input.e < global1.x), vec4<bool>(all(vec3<bool>(true, true, true)), true, _wgslsmith_dot_vec4_u32(arg_0.b, vec4<u32>(36733u, u_input.c.x, u_input.c.x, 58933u)) < u_input.e, true));
    let var_2 = Struct_1(~func_3(global2[_wgslsmith_index_u32(max(~4294967295u, ~0u), 15u)], select(vec2<bool>(var_1.x, var_1.x), !vec2<bool>(var_1.x, var_1.x), !var_1.x), select(!var_1.yxx, select(var_1.zyw, var_1.zzy, var_1.x), true), global3.x).x, arg_0.b);
    let var_3 = -1345f;
    let var_4 = arg_0;
    return global1.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = vec4<u32>(1u, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_3.b.x, global1.x, global1.x) | arg_3.b, _wgslsmith_clamp_vec4_u32(arg_3.b, arg_3.b, arg_3.b)), abs(~arg_3.b.x)), _wgslsmith_sub_u32(1u, func_2(arg_3)), u_input.e);
    var var_1 = firstLeadingBit(arg_0.zx);
    global1 = _wgslsmith_div_vec2_u32(u_input.c.yy, arg_2.xz);
    var var_2 = -2147483647i;
    global2 = array<Struct_1, 15>();
    return _wgslsmith_f_op_f32(step(336f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-726f, _wgslsmith_f_op_f32(step(729f, _wgslsmith_f_op_f32(ceil(global3.x)))))), 723f, -20162i <= abs(var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c.yz;
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_mod_vec3_i32(~vec3<i32>(6168i, -1i, u_input.d), select(vec3<i32>(u_input.a, -20518i, u_input.a), vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<bool>(false, false, true)))), vec3<i32>(1i >> (global1.x % 32u), ~u_input.d, firstTrailingBit(_wgslsmith_mult_i32(1i, u_input.a)))), abs(~firstTrailingBit(2147483647i)));
    var var_2 = 15517u;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec3_i32(vec3<i32>(var_1, u_input.d, u_input.a), vec3<i32>(0i, 10864i, var_1)), vec3<u32>(var_0.x, var_0.x, 0u) << (vec3<u32>(var_0.x, u_input.c.x, var_0.x) % vec3<u32>(32u)), u_input.c, global2[_wgslsmith_index_u32(~u_input.e, 15u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, _wgslsmith_div_f32(global3.x, 883f))), _wgslsmith_div_f32(-195f, global3.x)));
    var var_4 = ~firstLeadingBit(firstLeadingBit(~min(vec4<i32>(u_input.b, -1266i, var_1, -9479i), vec4<i32>(2147483647i, 0i, 25696i, u_input.b))));
    let var_5 = Struct_1(_wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(3012i, var_1, -9588i, -16222i), vec4<i32>(0i, u_input.b, 0i, -1i) & vec4<i32>(-4028i, 2147483647i, 0i, var_4.x)), reverseBits(9451i)), ~_wgslsmith_div_vec4_u32(vec4<u32>(54565u, 2986u, ~4294967295u, 21588u), vec4<u32>(_wgslsmith_add_u32(12635u, 0u), ~u_input.e, u_input.c.x, reverseBits(1u))));
    var_4 = vec4<i32>(-2147483647i, var_5.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, -41997i, 1i), ~var_4.zyy), -_wgslsmith_mod_vec3_i32(~var_4.yww, var_4.wxx >> (vec3<u32>(1u, u_input.c.x, 4294967295u) % vec3<u32>(32u)))), -var_5.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~countOneBits(var_4.zw)) >> (var_5.b.wz % vec2<u32>(32u)));
}

