struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-1208f, 970f, -817f, 589f, -1546f, -241f, -176f, 798f, -767f, 122f, -187f);

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(0u, 75592u), vec2<u32>(10089u, 9031u), vec2<u32>(14990u, 8615u), vec2<u32>(4294967295u, 96006u), vec2<u32>(1u, 1u), vec2<u32>(13759u, 47257u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 27032u), vec2<u32>(25517u, 0u), vec2<u32>(30846u, 55848u), vec2<u32>(4294967295u, 1u), vec2<u32>(18738u, 0u), vec2<u32>(57980u, 36400u), vec2<u32>(13378u, 46733u), vec2<u32>(26462u, 4294967295u), vec2<u32>(8431u, 0u), vec2<u32>(1u, 94440u), vec2<u32>(4294967295u, 3675u), vec2<u32>(1u, 0u), vec2<u32>(1u, 1u), vec2<u32>(86540u, 46116u), vec2<u32>(29774u, 18352u), vec2<u32>(1u, 21595u), vec2<u32>(11279u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(83200u, 58814u), vec2<u32>(41014u, 41228u), vec2<u32>(45526u, 0u), vec2<u32>(1u, 81100u), vec2<u32>(37987u, 0u), vec2<u32>(37252u, 2863u));

var<private> global3: array<Struct_1, 8>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1090f))))), _wgslsmith_f_op_f32(abs(-1222f)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(49293u, 11u)] <= 844f)))));
    global1 = array<Struct_1, 13>();
    var var_1 = Struct_1(4294967295u, 4294967295u, vec2<f32>(global0[_wgslsmith_index_u32(32636u << (u_input.a % 32u), 11u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(~u_input.a, 11u)])))), true, reverseBits(-38746i));
    global2 = array<vec2<u32>, 31>();
    var var_2 = Struct_1(countOneBits(1u), 11551u & u_input.a, vec2<f32>(265f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 + _wgslsmith_div_f32(-1236f, 796f))))), select(var_1.d, !all(vec2<bool>(var_1.d, var_1.d)), var_1.d), var_1.e);
    return ~_wgslsmith_dot_vec2_u32(~(~global2[_wgslsmith_index_u32(4294967295u, 31u)] >> ((global2[_wgslsmith_index_u32(37557u, 31u)] ^ vec2<u32>(var_1.b, 0u)) % vec2<u32>(32u))), max(~countOneBits(global2[_wgslsmith_index_u32(u_input.a, 31u)]), firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a, 31u)] & global2[_wgslsmith_index_u32(0u, 31u)])));
}

fn func_2() -> Struct_1 {
    global2 = array<vec2<u32>, 31>();
    global2 = array<vec2<u32>, 31>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], 999f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(438f, global0[_wgslsmith_index_u32(u_input.a, 11u)], -2103f) - vec3<f32>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(44016u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)]))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 11u)] - -598f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 11u)]), global0[_wgslsmith_index_u32(func_3(), 11u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(136f, global0[_wgslsmith_index_u32(u_input.a, 11u)], -1172f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(52999u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], 254f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(countOneBits(30474u), 11u)] - _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(94691u, 11u)], -333f))), _wgslsmith_f_op_f32(ceil(-371f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 11u)]) - _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a, 11u)])))) - vec3<f32>(_wgslsmith_f_op_f32(-1083f * -1246f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1300f, global0[_wgslsmith_index_u32(u_input.a, 11u)]))), global0[_wgslsmith_index_u32(u_input.a, 11u)])));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], var_0.x, 569f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 11u)], -536f, 761f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, 442f, 236f), vec3<f32>(-1055f, -449f, var_0.x))))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-213f, 1000f, var_0.x)), vec3<f32>(-1774f, -334f, var_0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1160f, 1011f, var_0.x))), vec3<f32>(var_0.x, -872f, -1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(2795u, 11u)], var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], 247f, global0[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-831f, -1159f, global0[_wgslsmith_index_u32(1u, 11u)])), vec3<bool>(true, true, true)))))));
    global2 = array<vec2<u32>, 31>();
    return global3[_wgslsmith_index_u32((~(~4294967295u) >> (u_input.a % 32u)) ^ (61883u >> (u_input.a % 32u)), 8u)];
}

fn func_1() -> vec3<bool> {
    global0 = array<f32, 11>();
    global1 = array<Struct_1, 13>();
    let var_0 = func_2();
    var var_1 = -(~(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, 0i, var_0.e, -2147483647i), vec4<i32>(var_0.e, var_0.e, -10456i, 44206i) >> (vec4<u32>(var_0.a, u_input.a, 48619u, var_0.b) % vec4<u32>(32u)), select(vec4<i32>(2147483647i, 75440i, 0i, 0i), vec4<i32>(var_0.e, 2147483647i, var_0.e, var_0.e), false))));
    let var_2 = 0i;
    return select(vec3<bool>(var_0.d == ((var_1.x != var_2) && var_0.d), (u_input.a == 29696u) && true, all(!select(vec3<bool>(true, true, var_0.d), vec3<bool>(var_0.d, true, var_0.d), vec3<bool>(var_0.d, var_0.d, var_0.d)))), select(select(vec3<bool>(true, var_0.d, true), !select(vec3<bool>(var_0.d, true, var_0.d), vec3<bool>(var_0.d, true, false), vec3<bool>(var_0.d, var_0.d, false)), true), !vec3<bool>(false, any(vec2<bool>(var_0.d, var_0.d)), true), !(!select(vec3<bool>(false, var_0.d, true), vec3<bool>(false, var_0.d, var_0.d), vec3<bool>(false, var_0.d, false)))), !(4416u == ~(u_input.a ^ u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(func_1());
    global0 = array<f32, 11>();
    var var_1 = global1[_wgslsmith_index_u32(u_input.a, 13u)];
    let var_2 = !func_1().x;
    var var_3 = -(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.e, -32869i, var_1.e), vec3<i32>(-1i, 0i, -17322i)), select(vec3<i32>(var_1.e, 1i, -54185i), vec3<i32>(var_1.e, var_1.e, -62805i), true)), ~firstTrailingBit(vec3<i32>(18114i, var_1.e, var_1.e))) ^ ~abs(-vec3<i32>(var_1.e, var_1.e, var_1.e)));
    var var_4 = countOneBits(vec2<u32>(~_wgslsmith_mod_u32(firstLeadingBit(54291u), 4294967295u), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, abs(u_input.a)), 1u)));
    var_0 = var_1.d;
    var_3 = vec3<i32>(_wgslsmith_add_i32(-var_1.e, firstLeadingBit(reverseBits(1i))), _wgslsmith_add_i32(reverseBits(0i), -13795i), ~_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(var_1.e, var_1.e, var_3.x, -18154i)), min(-vec4<i32>(var_1.e, var_1.e, var_3.x, -1i), ~vec4<i32>(2147483647i, var_1.e, var_1.e, -1i))));
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(109351u, ~var_5.a >> (u_input.a % 32u)) << (~u_input.a % 32u), vec4<u32>(var_1.b, abs(_wgslsmith_div_u32(20306u, ~66527u)), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 26097u, var_1.b) << (vec3<u32>(var_5.b, var_4.x, 2454u) % vec3<u32>(32u)), vec3<u32>(var_1.b, 15346u, 26535u))), _wgslsmith_mult_u32(func_3(), u_input.a) ^ 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_5.c - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1282f, -862f), vec2<f32>(-1688f, var_1.c.x)) + func_2().c))));
}

