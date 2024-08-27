struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: vec2<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<i32> {
    var var_0 = all(vec4<bool>(true, !global1.x, any(vec4<bool>(true, !global1.x, all(vec2<bool>(global1.x, false)), all(vec4<bool>(global1.x, true, false, global1.x)))), true));
    let var_1 = Struct_2(_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_2.x, 1i >> (arg_0.x % 32u)), arg_2.yw, !global1.x), vec2<i32>(countOneBits(arg_2.x), 1i)), firstTrailingBit(-vec3<i32>(_wgslsmith_div_i32(-7545i, arg_2.x), _wgslsmith_clamp_i32(-52856i, u_input.a.x, 1i), _wgslsmith_clamp_i32(-19883i, 1i, u_input.a.x))));
    var var_2 = _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.b, 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1191f))));
    var_0 = global1.x;
    var var_3 = arg_0.yx;
    return vec4<i32>(-7111i, _wgslsmith_clamp_i32(arg_2.x, select(firstTrailingBit(_wgslsmith_sub_i32(2147483647i, u_input.a.x)), 1i, any(vec2<bool>(true, true))), arg_2.x), _wgslsmith_dot_vec4_i32(arg_2, _wgslsmith_add_vec4_i32(min(arg_2, arg_2), select(_wgslsmith_clamp_vec4_i32(arg_2, arg_2, arg_2), vec4<i32>(arg_2.x, -2147483647i, 22185i, 0i), select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, true, global1.x, false))))), -2147483647i);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>) -> u32 {
    let var_0 = 0u;
    global0 = array<f32, 18>();
    var var_1 = 4294967295u;
    var var_2 = firstTrailingBit(vec2<u32>(firstTrailingBit(u_input.c), var_0));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_2.x, 18u)], -144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(887f - -1744f) - 1950f))));
    return var_2.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: u32, arg_3: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_add_u32(u_input.b >> (19728u % 32u), ~func_4(vec3<i32>(u_input.a.x, 0i, -1i), func_3(vec4<u32>(4294967295u, arg_2, 0u, 4294967295u), Struct_2(arg_0.c.x, arg_0.a.b), vec4<i32>(-2147483647i, -2147483647i, 2147483647i, 3187i))) << (~0u % 32u));
    var var_1 = Struct_2(reverseBits(_wgslsmith_mult_i32(u_input.a.x, arg_0.a.a)) & ~(-(i32(-1i) * -23261i)), vec3<i32>(arg_0.c.x, ~(~arg_0.a.b.x) & _wgslsmith_div_i32(_wgslsmith_add_i32(-35974i, 2147483647i), ~u_input.a.x), u_input.a.x));
    global1 = !(!vec2<bool>(true, global1.x));
    let var_2 = vec4<i32>(~abs(~(-56405i)), _wgslsmith_mult_i32(func_3(abs(vec4<u32>(36847u, 7417u, 47576u, 17962u)), arg_0.a, _wgslsmith_mod_vec4_i32(vec4<i32>(58387i, u_input.a.x, -15920i, -2147483647i) >> (vec4<u32>(u_input.c, arg_2, arg_2, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(-49032i, arg_0.c.x, -2147483647i, -1i))).x, firstLeadingBit(~var_1.b.x >> (arg_2 % 32u))), 1i, -16588i);
    let var_3 = Struct_2(_wgslsmith_clamp_i32(0i, 0i, reverseBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_2.x, u_input.a.x, var_1.a), var_2.yww))), _wgslsmith_div_vec3_i32(-reverseBits(vec3<i32>(var_2.x, -19486i, 1i)), ~_wgslsmith_mod_vec3_i32(var_1.b, var_2.xzx)) ^ vec3<i32>(9168i, ~1i, var_2.x));
    return !select(vec2<bool>(true, true), select(vec2<bool>(!global1.x, global0[_wgslsmith_index_u32(10629u, 18u)] < arg_0.b.x), !select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, false), true), select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false), true), select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, true), vec2<bool>(global1.x, true)), vec2<bool>(true, true))), !(!global1.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    global1 = vec2<bool>(global1.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_2.d.x, ~4294967295u), 18u)] == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.b, 18u)] - -1043f)));
    global1 = !select(select(select(vec2<bool>(global1.x, false), !vec2<bool>(arg_2.a.x, global1.x), arg_2.a), select(select(vec2<bool>(global1.x, true), arg_2.a, vec2<bool>(true, arg_2.a.x)), vec2<bool>(false, true), true), vec2<bool>(arg_2.a.x, false)), func_2(Struct_3(Struct_2(4657i, vec3<i32>(u_input.a.x, -1i, 5831i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(877f, arg_2.c.x, arg_2.c.x)), select(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(-2147483647i, 32703i, 13701i), arg_2.a.x)), vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(arg_2.d.zx, vec2<u32>(4294967295u, 636u)), _wgslsmith_dot_vec3_u32(arg_2.d, vec3<u32>(4294967295u, arg_0.x, arg_0.x))), _wgslsmith_mult_u32(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 1u, arg_1), arg_0.wyx)), ~(arg_0.x | arg_1)), true);
    let var_0 = 46021u;
    var var_1 = -2147483647i;
    global0 = array<f32, 18>();
    return Struct_3(Struct_2(_wgslsmith_add_i32(~0i, i32(-1i) * -15035i) >> (_wgslsmith_mult_u32(arg_1, ~1u) % 32u), vec3<i32>(u_input.a.x | firstTrailingBit(arg_2.b), _wgslsmith_mult_i32(-28587i, ~0i), ~max(arg_2.b, -50240i))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(491f, 1060f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.c.x), arg_2.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1603f, global0[_wgslsmith_index_u32(~arg_1, 18u)], -1035f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.c.yyx) * vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 18u)], 227f, -1144f))), global1.x)), select(select(vec3<i32>(-11291i, 20594i, u_input.a.x), vec3<i32>(1i, -17545i, 7908i), vec3<bool>(false, global1.x, false)) | vec3<i32>(u_input.a.x, u_input.a.x, arg_2.b), (vec3<i32>(78266i, arg_2.b, -1i) >> (vec3<u32>(arg_1, 44106u, u_input.c) % vec3<u32>(32u))) & firstLeadingBit(vec3<i32>(1i, arg_2.b, -1i)), select(select(vec3<bool>(global1.x, arg_2.a.x, true), vec3<bool>(arg_2.a.x, arg_2.a.x, global1.x), vec3<bool>(false, false, true)), !vec3<bool>(global1.x, false, arg_2.a.x), true)) << (_wgslsmith_div_vec3_u32(vec3<u32>(~13248u, arg_2.d.x, select(19888u, u_input.c, true)), arg_0.xxy) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(66318u, 18u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x), func_1(~firstTrailingBit(vec4<u32>(44803u, 73412u, 0u, arg_1)), ~_wgslsmith_add_u32(29392u, 35686u), Struct_1(vec2<bool>(true, true), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.b.x, arg_0.c.x), vec2<i32>(-2147483647i, arg_0.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-761f, global0[_wgslsmith_index_u32(43519u, 18u)], arg_0.b.x, global0[_wgslsmith_index_u32(u_input.c, 18u)]) * vec4<f32>(1180f, arg_0.b.x, 1000f, -1052f)), vec3<u32>(4294967295u, u_input.b, u_input.c) & vec3<u32>(29413u, arg_1, u_input.b))).b.x), _wgslsmith_f_op_f32(-arg_0.b.x));
    let var_1 = 29392u;
    var var_2 = arg_0;
    return arg_0.a;
}

fn func_6(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: i32) -> u32 {
    global1 = !vec2<bool>(false, min(min(9421u, u_input.c), ~23725u) > abs(abs(u_input.c)));
    var var_0 = func_1(reverseBits(~abs(vec4<u32>(18797u, 43324u, u_input.b, 54820u))), 0u, Struct_1(func_2(Struct_3(arg_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-935f, global0[_wgslsmith_index_u32(u_input.c, 18u)], 748f)), vec3<i32>(2147483647i, 1i, -21478i)), ~(~vec3<u32>(59281u, u_input.b, u_input.c)), ~u_input.b, u_input.b), u_input.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(270f, global0[_wgslsmith_index_u32(20037u, 18u)], 638f, -1000f))), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -899f), -712f, _wgslsmith_f_op_f32(arg_1.x + arg_0.b.x))), ~firstLeadingBit(countOneBits(vec3<u32>(1u, 4294967295u, u_input.b))))).a;
    let var_1 = vec2<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.b), vec2<u32>(4294967295u, 0u)), abs(_wgslsmith_clamp_u32(countOneBits(1u), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(77037u, u_input.b, u_input.c, u_input.c), vec4<u32>(1u, 46814u, 18568u, 31610u)))));
    let var_2 = vec3<bool>(select(all(vec3<bool>(true, global1.x, global1.x)), all(!(!vec3<bool>(global1.x, global1.x, true))), false), false, !any(vec3<bool>(true, true, true)));
    var_0 = func_1(~vec4<u32>(u_input.c, 1979u, 0u >> (1u % 32u), ~(~1u)), var_1.x, Struct_1(!var_2.yz, _wgslsmith_mult_i32(-18074i, ~arg_2.a) & abs(_wgslsmith_mult_i32(-26265i, 15171i)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b, 18u)], -1559f)), _wgslsmith_f_op_f32(-223f - -1000f), global0[_wgslsmith_index_u32(u_input.c, 18u)], arg_1.x))), vec3<u32>(36275u, ~_wgslsmith_mod_u32(var_1.x, u_input.b), ~u_input.c))).a;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global1 = vec2<bool>(104215u == ~u_input.b, global1.x);
    global0 = array<f32, 18>();
    let var_1 = _wgslsmith_sub_u32(~(~u_input.b), func_6(Struct_3(func_5(func_1(vec4<u32>(u_input.c, u_input.c, u_input.c, 10520u), 0u, Struct_1(vec2<bool>(false, global1.x), u_input.a.x, vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 18u)], 975f, global0[_wgslsmith_index_u32(1u, 18u)], 1000f), vec3<u32>(0u, 36505u, 1u))), firstLeadingBit(0u), Struct_2(u_input.a.x, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-316f, 1000f, -941f))), vec3<i32>(~(-1i), i32(-1i) * -2147483647i, i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 18u)], -205f, global0[_wgslsmith_index_u32(u_input.b, 18u)])))), Struct_2(~1971i, func_3(~vec4<u32>(u_input.c, 0u, 65383u, u_input.c), func_1(vec4<u32>(1u, u_input.b, 1u, u_input.c), u_input.b, Struct_1(vec2<bool>(false, false), -16950i, vec4<f32>(global0[_wgslsmith_index_u32(12153u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)], 305f, -1000f), vec3<u32>(u_input.c, u_input.c, 29256u))).a, ~vec4<i32>(var_0, -14634i, 7377i, var_0)).zyz), ~var_0));
    global1 = !vec2<bool>(any(vec2<bool>(true, any(vec3<bool>(global1.x, global1.x, global1.x)))), any(select(vec4<bool>(false, true, global1.x, false), !vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(false, false, global1.x, global1.x))));
    var var_2 = vec3<bool>(global1.x, !global1.x, false);
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_1, 18u)], -1383f, global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]) * vec4<f32>(382f, global0[_wgslsmith_index_u32(4294967295u, 18u)], 1735f, -1961f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(959f, global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(var_1, 18u)], -2270f))), -934f >= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 18u)] - global0[_wgslsmith_index_u32(var_1, 18u)]))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1186f, 766f, -232f, global0[_wgslsmith_index_u32(71340u, 18u)]))))));
    var var_4 = vec3<bool>(true, !all(!vec4<bool>(false, false, global1.x, false)) && true, !(!all(select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, true, false), vec3<bool>(true, false, global1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-728f, var_3.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-349f + var_3.x))), 981f) - _wgslsmith_f_op_vec2_f32(-var_3.yz)));
}

