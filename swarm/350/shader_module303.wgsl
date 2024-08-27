struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_2) -> bool {
    global0 = array<Struct_2, 13>();
    let var_0 = arg_0.c.a;
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(min(39838u, _wgslsmith_mult_u32(reverseBits(u_input.b.x), 0u)), u_input.b.x ^ _wgslsmith_clamp_u32(0u, 4294967295u ^ u_input.b.x, ~4294967295u), u_input.b.x), 13u)];
    var_1 = Struct_2(_wgslsmith_add_vec3_i32((_wgslsmith_sub_vec3_i32(vec3<i32>(-6348i, -2147483647i, arg_3.c.b), arg_3.a) | abs(arg_1.a)) | vec3<i32>(~0i, _wgslsmith_mod_i32(arg_3.c.b, 28268i), u_input.a.x), abs(~arg_3.a)), arg_0.a.x, arg_0.c, _wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(~vec2<i32>(arg_0.c.a, arg_3.a.x), var_1.a.yz), var_1.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_1.e)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_2 = 36201i;
    return !all(vec4<bool>(arg_2.x & arg_2.x, false, !all(vec4<bool>(false, true, true, false)), all(select(arg_2, vec4<bool>(false, false, false, true), true))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> i32 {
    var var_0 = vec3<bool>(false, !any(vec4<bool>(false, true, true, true)) && (true && !(arg_0.d.x != 2147483647i)), any(!vec4<bool>(true, func_3(Struct_2(arg_0.a, 0i, Struct_1(-1i, arg_0.a.x), vec2<i32>(21343i, 0i), 1639f), Struct_2(u_input.a, 0i, arg_0.c, arg_0.d, -352f), vec4<bool>(true, true, false, false), Struct_2(arg_0.a, u_input.a.x, arg_0.c, arg_0.d, arg_0.e)), any(vec4<bool>(false, true, true, true)), true)));
    let var_1 = !select(select(vec3<bool>(var_0.x, var_0.x, true), select(select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, true, true), vec3<bool>(var_0.x, false, true)), select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, false, var_0.x), vec3<bool>(true, var_0.x, false)), any(vec2<bool>(var_0.x, var_0.x))), any(vec4<bool>(false, true, var_0.x, var_0.x))), !select(!vec3<bool>(var_0.x, true, false), vec3<bool>(false, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x)), var_0.x);
    let var_2 = arg_1.x ^ 44588u;
    let var_3 = !var_1.x;
    var var_4 = arg_0.c;
    return arg_0.b;
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    return Struct_2(~_wgslsmith_clamp_vec3_i32(vec3<i32>(8643i & arg_0, ~1i, abs(0i)), u_input.a, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 4431i, -52684i, 0i), vec4<i32>(u_input.a.x, -1i, -6353i, 60780i)), 49788i, func_2(Struct_2(vec3<i32>(u_input.a.x, -3188i, arg_0), -1i, Struct_1(arg_0, arg_0), vec2<i32>(arg_0, 1i), 210f), vec3<u32>(0u, u_input.b.x, u_input.b.x)))), u_input.a.x, Struct_1(max(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a.x, arg_0), ~u_input.a.x, -2080i), abs(_wgslsmith_div_i32(27718i, u_input.a.x))), arg_0), vec2<i32>(40879i, 2147483647i), -548f);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e, arg_1.e, 1345f, 479f) + vec4<f32>(625f, arg_1.e, arg_1.e, 2119f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.e, arg_1.e, 141f, 1117f), vec4<f32>(arg_1.e, -115f, arg_1.e, arg_1.e))))))));
    var var_1 = ~_wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(firstLeadingBit(abs(u_input.b.x)), u_input.b.x));
    let var_2 = ~0u;
    var var_3 = arg_1.d;
    var var_4 = any(vec3<bool>(_wgslsmith_sub_u32(~1u, firstLeadingBit(var_2)) <= 0u, any(vec4<bool>(true, true, arg_0, !arg_0)), !(!all(vec3<bool>(false, false, false)))));
    return StorageBuffer(_wgslsmith_add_i32(2147483647i, ~func_1(3686i).b), vec3<i32>(22747i, ~func_2(func_1(2147483647i), abs(vec3<u32>(u_input.b.x, 70043u, 4294967295u))), func_1(1i).b), u_input.a.x, -(~(-(~u_input.a.yx))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, var_2, 6539u), vec3<u32>(93478u, u_input.b.x, u_input.b.x)) ^ u_input.b.x, ~var_2), ~u_input.b.x, firstLeadingBit(select(42070u, _wgslsmith_sub_u32(u_input.b.x, 4294967295u), arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(19712i, ~max(u_input.a.x, 0i));
    var var_1 = global0[_wgslsmith_index_u32(40810u, 13u)];
    let var_2 = -348f;
    let x = u_input.a;
    s_output = func_4(true, func_1(_wgslsmith_clamp_i32(u_input.a.x, abs(~var_1.b), 1i)), Struct_1(_wgslsmith_add_i32(var_1.d.x, countOneBits(-1i)), firstTrailingBit(-firstTrailingBit(-17267i))));
}

