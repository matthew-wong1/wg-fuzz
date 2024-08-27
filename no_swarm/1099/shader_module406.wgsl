struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 21>;

var<private> global1: u32 = 57756u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: u32) -> u32 {
    global1 = (arg_2 ^ u_input.c) ^ (~(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2, arg_1.x), u_input.a.yyz) & 23154u) >> (arg_1.x % 32u));
    let var_0 = -2147483647i;
    let var_1 = global0[_wgslsmith_index_u32(0u, 21u)];
    let var_2 = all(!var_1.a.c);
    var var_3 = firstTrailingBit(min(~vec3<u32>(var_1.b.x, 710u, arg_0), _wgslsmith_sub_vec3_u32(var_1.b.xyx, vec3<u32>(_wgslsmith_add_u32(arg_2, arg_1.x), _wgslsmith_dot_vec4_u32(var_1.b, vec4<u32>(13498u, 45025u, 74779u, arg_2)), u_input.a.x))));
    return 4294967295u;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: bool) -> Struct_1 {
    global0 = array<Struct_5, 21>();
    let var_0 = 1549f;
    var var_1 = Struct_3(Struct_1(abs((arg_1 << (vec3<u32>(39591u, 0u, 0u) % vec3<u32>(32u))) & ~arg_1), vec3<u32>(arg_0, arg_0, select(abs(arg_0), func_3(arg_0, u_input.a.zw, u_input.b), arg_2))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(530f, var_0) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1996f, var_0) * vec2<f32>(541f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1000f, var_0)))))), Struct_1(arg_1, ~u_input.a.xyw), Struct_2(_wgslsmith_clamp_i32(firstLeadingBit(i32(-1i) * -1i), -80298i, u_input.e), i32(-1i) * -abs(u_input.e), vec3<bool>(arg_2, false, arg_2 == true)));
    var var_2 = var_1.d;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-110f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-863f, var_0)))))), _wgslsmith_f_op_f32(-var_0)));
    return var_1.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> u32 {
    global0 = array<Struct_5, 21>();
    global1 = u_input.b;
    global0 = array<Struct_5, 21>();
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(-(2147483647i & max(1i, u_input.e)), arg_1.x, -2147483647i), ~(-(i32(-1i) * -u_input.e)), -_wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(u_input.e, u_input.e) >> (17925u % 32u), 19472i), ~abs(1i));
    var var_1 = ~(abs(_wgslsmith_mult_vec3_u32(u_input.a.wyz, vec3<u32>(arg_2, 4473u, u_input.c))) ^ vec3<u32>(arg_2 | u_input.c, arg_2, _wgslsmith_dot_vec3_u32(vec3<u32>(22920u, arg_0.b.x, 1u), arg_0.b))) ^ arg_0.b;
    return 75001u;
}

fn func_5(arg_0: vec2<i32>, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_3(func_2(1u, vec3<i32>(abs(-2147483647i), i32(-1i) * -20526i, -6299i), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(1107f, -1347f) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1423f, 1070f)), _wgslsmith_f_op_f32(abs(752f)))), Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(13178i, 1i, u_input.d), vec3<i32>(-2147483647i, 1i, arg_0.x)), -(vec3<i32>(u_input.d, 1i, 26290i) & vec3<i32>(-33114i, u_input.d, 2147483647i)), select(vec3<i32>(u_input.e, -2147483647i, arg_0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 23109i, -20954i), vec3<i32>(-2147483647i, arg_0.x, arg_0.x)), vec3<bool>(true, true, true))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 10263u, 61658u), u_input.a.yzz), arg_1, arg_1) | ~abs(vec3<u32>(arg_1, 20526u, 1u))), Struct_2(17531i, 0i, vec3<bool>(true, true, any(vec4<bool>(true, true, true, true)) && true)));
    global0 = array<Struct_5, 21>();
    var_0 = Struct_3(Struct_1(var_0.c.a & vec3<i32>(var_0.a.a.x ^ 24050i, -2147483647i, ~1i), ~var_0.a.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x - -1446f)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(var_0.b)), var_0.b))), func_2(_wgslsmith_mod_u32(~u_input.b, countOneBits(48321u)), ~_wgslsmith_div_vec3_i32(~vec3<i32>(-74461i, var_0.c.a.x, arg_0.x), _wgslsmith_div_vec3_i32(var_0.a.a, vec3<i32>(var_0.d.a, var_0.a.a.x, -2147483647i))), true), Struct_2(reverseBits(-2147483647i), -18680i, select(!vec3<bool>(var_0.d.c.x, false, false), select(var_0.d.c, select(var_0.d.c, vec3<bool>(var_0.d.c.x, var_0.d.c.x, true), var_0.d.c.x), var_0.d.c), select(var_0.d.c, !vec3<bool>(var_0.d.c.x, var_0.d.c.x, false), vec3<bool>(var_0.d.c.x, var_0.d.c.x, true)))));
    let var_1 = -u_input.d;
    var var_2 = Struct_2(var_1, countOneBits(2147483647i), var_0.d.c);
    return var_0.d;
}

fn func_1() -> StorageBuffer {
    global0 = array<Struct_5, 21>();
    let var_0 = func_5(-countOneBits(vec2<i32>(0i, _wgslsmith_add_i32(u_input.e, u_input.e))), select(func_4(func_2(_wgslsmith_clamp_u32(1u, u_input.c, u_input.c), vec3<i32>(u_input.d, 26937i, u_input.e) ^ vec3<i32>(1i, u_input.e, u_input.e), true), select(vec2<i32>(1i, 28799i), vec2<i32>(u_input.e, u_input.d), false) << (u_input.a.wx % vec2<u32>(32u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), u_input.a.x)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_mod_u32(~u_input.b, u_input.a.x)), true));
    return StorageBuffer(55952u, 32518u, _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(select(u_input.a.yx, u_input.a.yy, false) | ~u_input.a.xz, u_input.a.zz | _wgslsmith_div_vec2_u32(u_input.a.xy, vec2<u32>(u_input.b, 0u))), vec2<u32>(~_wgslsmith_add_u32(0u, 1u), ~1u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(u_input.e, u_input.e, var_0.a, u_input.d)), ~vec4<i32>(15205i, var_0.a, var_0.b, 2147483647i)), -_wgslsmith_mult_i32(-11170i, abs(u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.e, u_input.e & u_input.d);
    var var_1 = true;
    global0 = array<Struct_5, 21>();
    global1 = (_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, ~1u), firstTrailingBit(abs(33807u))) ^ u_input.a.x) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(abs(u_input.c), ~u_input.c), reverseBits(~_wgslsmith_div_vec2_u32(vec2<u32>(76477u, u_input.a.x), vec2<u32>(19032u, u_input.a.x))));
    var var_2 = vec2<bool>(true, any(select(vec3<bool>(true, true, all(vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), true)));
    let var_3 = false;
    let x = u_input.a;
    s_output = func_1();
}

