struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: array<vec4<bool>, 4>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global1 = array<vec4<bool>, 4>();
    let var_0 = all(vec2<bool>(any(vec2<bool>(true, true)), false));
    let var_1 = i32(-1i) * -u_input.d;
    var var_2 = Struct_1(vec4<i32>(-(i32(-1i) * -10010i) | var_1, 2147483647i, var_1, _wgslsmith_mod_i32(23241i, _wgslsmith_div_i32(0i, u_input.d) | 1i)), u_input.d, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1809f, 332f, 775f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-982f, -384f, -510f), vec3<f32>(-958f, -680f, -1227f), var_0))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1501f, 927f, -1918f)))))))), countOneBits(vec2<i32>(var_1, var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -857f))));
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(reverseBits(~(u_input.a >> (41545u % 32u))), 0u), 29u)];
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(274f + 254f))), _wgslsmith_f_op_f32(trunc(2057f))) * _wgslsmith_f_op_f32(-136f - _wgslsmith_f_op_f32(abs(384f))));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> Struct_1 {
    global1 = array<vec4<bool>, 4>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(952f - _wgslsmith_f_op_f32(f32(-1f) * -204f)), _wgslsmith_f_op_f32(-1235f - _wgslsmith_f_op_f32(f32(-1f) * -105f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(f32(-1f) * -270f), -926f);
    let var_1 = ~vec2<u32>(56772u, u_input.b.x);
    let var_2 = var_0.x;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(1u, 1625u, u_input.c.x), abs(1u)), firstTrailingBit(abs(countOneBits(vec2<u32>(69547u, 24241u)))) << (u_input.c % vec2<u32>(32u))), 29u)];
    return Struct_1(var_3.a, u_input.d, var_3.c, vec2<i32>(-var_3.a.x, _wgslsmith_mod_i32(0i, -(38593i | u_input.d))), var_3.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = vec3<u32>(firstLeadingBit(max(_wgslsmith_clamp_u32(u_input.b.x, 42940u, 51064u), _wgslsmith_mod_u32(3948u, 1u))), _wgslsmith_mult_u32(0u, ~_wgslsmith_mod_u32(63976u, u_input.a)), 4294967295u) & ~vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(1u), arg_2 ^ u_input.b.x), firstLeadingBit(0u >> (u_input.a % 32u)), ~(~arg_2));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_3.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.e + arg_3.e) * _wgslsmith_f_op_f32(sign(-1292f))), arg_1.e))), func_2(vec3<i32>(-1i, -41641i, abs(_wgslsmith_sub_i32(8897i, u_input.d))), -1i).c.x);
    var_0 = abs(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(511u, u_input.c.x, var_0.x) >> (vec3<u32>(u_input.c.x, 0u, var_0.x) % vec3<u32>(32u))), vec3<u32>(arg_2, 0u, 1u)));
    let var_2 = true && (all(vec4<bool>(false, arg_0.a.x != u_input.d, false, true)) || false);
    var_0 = firstLeadingBit(firstLeadingBit(vec3<u32>(var_0.x, u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 42176u, 1u, 52625u), vec4<u32>(60744u, 4294967295u, arg_2, arg_2)) & ~0u)));
    return ~abs(vec3<i32>(_wgslsmith_clamp_i32(0i, -55449i, arg_1.a.x) | -21895i, _wgslsmith_mult_i32(-18730i, arg_3.a.x) << (~1u % 32u), func_2(vec3<i32>(-3813i, arg_0.a.x, -1i), _wgslsmith_dot_vec2_i32(arg_3.a.xw, arg_1.d)).a.x));
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_1, 29>();
    global1 = array<vec4<bool>, 4>();
    var var_0 = _wgslsmith_add_u32(~u_input.b.x & (_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, u_input.a, u_input.b.x), vec4<u32>(u_input.a, 0u, 0u, u_input.a))) << (~(~1u) % 32u)), reverseBits(u_input.b.x));
    global1 = array<vec4<bool>, 4>();
    let var_1 = vec4<bool>(true, true | all(vec2<bool>(all(vec3<bool>(false, true, false)), true)), !(!all(select(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)]))), true);
    return u_input.b.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = array<Struct_1, 29>();
    var var_0 = arg_2.e;
    let var_1 = select(vec3<u32>(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) + arg_0.x), func_4(func_2(vec3<i32>(arg_1.b, -2147483647i, arg_1.a.x), -6647i), arg_1, _wgslsmith_clamp_u32(u_input.a, u_input.c.x, 0u), Struct_1(vec4<i32>(u_input.d, -32700i, -1i, arg_2.a.x), -3159i, arg_1.c, arg_2.a.wx, -1000f)), func_2(-arg_2.a.yyz, -1i)), u_input.a, u_input.c.x), vec3<u32>(4294967295u, 39571u, max(0u, u_input.b.x)), any(vec3<bool>(true, true, false)) || true);
    var var_2 = arg_1;
    global0 = array<Struct_1, 29>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1873f)) + arg_2.e))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec4<i32>(1i, ~reverseBits(0i), u_input.d, abs(_wgslsmith_mod_i32(-20831i, u_input.d))), ~u_input.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(vec2<f32>(735f, -635f), Struct_1(vec4<i32>(5996i, u_input.d, u_input.d, -1i), -1i, vec3<f32>(-1000f, 1918f, 333f), vec2<i32>(19260i, 16569i), -2002f), Struct_1(vec4<i32>(8640i, u_input.d, -11585i, u_input.d), u_input.d, vec3<f32>(-813f, -1757f, -699f), vec2<i32>(21602i, -19047i), 372f))))), 541f, -1151f)), -vec2<i32>(-reverseBits(1i), u_input.d), -338f);
    var var_1 = Struct_1(var_0.a, var_0.a.x, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -840f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -529f))), 643f))), func_2(var_0.a.xzz, -1i).a.zz, var_0.c.x);
    var var_2 = _wgslsmith_add_u32((_wgslsmith_mult_u32(1u, 42364u) & ~u_input.a) ^ ~_wgslsmith_sub_u32(u_input.c.x, 1u), _wgslsmith_mult_u32(~(~u_input.b.x), u_input.b.x)) | u_input.c.x;
    let var_3 = var_0.a;
    var_1 = Struct_1(max(vec4<i32>(~(12685i << (u_input.c.x % 32u)), var_1.a.x, -(~u_input.d), var_1.a.x), var_3), func_4(func_2(~(vec3<i32>(2147483647i, var_1.b, u_input.d) << (vec3<u32>(u_input.c.x, u_input.a, 26452u) % vec3<u32>(32u))), var_0.a.x), func_2(vec3<i32>(_wgslsmith_mult_i32(-53555i, var_3.x), -10833i, -10171i), 2147483647i), u_input.b.x | 45797u, func_2(abs(var_1.a.ywx), _wgslsmith_mod_i32(55070i, min(-2147483647i, var_3.x)))).x, var_0.c, ~var_3.xz, _wgslsmith_f_op_f32(-var_0.e));
    var_1 = func_2(~vec3<i32>(var_3.x, 2147483647i, -(~27757i)), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(f32(-1f) * -3161f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.c.x)))))), 817f, vec3<u32>(1u, 4294967295u, _wgslsmith_mod_u32(~1542u, 38455u)));
}

