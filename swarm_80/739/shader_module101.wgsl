struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-39198i, 36246i);

var<private> global1: array<vec2<u32>, 9>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-369f, _wgslsmith_f_op_f32(f32(-1f) * -225f), true)) * -590f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -460f))), global0.x <= (2147483647i << (firstTrailingBit(abs(4294967295u)) % 32u)), ~u_input.c, min(-2217i, 1i));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<bool>) -> vec2<i32> {
    let var_0 = arg_0;
    global1 = array<vec2<u32>, 9>();
    global1 = array<vec2<u32>, 9>();
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(536f, 353f, var_0.b.a, arg_0.b.a), vec4<f32>(var_0.b.a, -671f, -1000f, -1207f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(729f, -427f, arg_0.b.a, 352f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a, arg_0.b.a, arg_0.b.a, -1000f)), vec4<f32>(-511f, var_0.b.a, arg_0.b.a, arg_0.b.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a, _wgslsmith_f_op_f32(abs(-245f)), func_2(vec4<u32>(15150u, 4294967295u, arg_2, var_0.b.c)).a, arg_0.b.a)))));
    var var_2 = func_2(vec4<u32>(_wgslsmith_add_u32(47247u, 24404u) | (_wgslsmith_clamp_u32(4294967295u, arg_0.b.c, arg_0.b.c) | select(1u, u_input.c, true)), func_2(vec4<u32>(45221u, 64851u, u_input.c, 4294967295u) ^ vec4<u32>(arg_1.x, 86630u, arg_1.x, arg_0.b.c)).c & _wgslsmith_div_u32(var_0.b.c, 4294967295u), ~arg_2, 32944u));
    return select(-(-vec2<i32>(0i, u_input.d.x) ^ (arg_0.d.xz | countOneBits(vec2<i32>(var_0.c, -83144i)))), min(vec2<i32>(global0.x, countOneBits(u_input.a.x << (17257u % 32u))), ~(-_wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.d, 1i), u_input.a.wy))), false);
}

fn func_1(arg_0: bool, arg_1: u32) -> vec3<u32> {
    global0 = vec2<i32>(abs(0i), global0.x);
    let var_0 = abs(_wgslsmith_mod_i32(global0.x, _wgslsmith_mult_i32(global0.x, _wgslsmith_dot_vec2_i32(u_input.b.xz, -u_input.a.wy))));
    let var_1 = func_2(~(~vec4<u32>(13502u, ~29489u, _wgslsmith_add_u32(31068u, arg_1), 41265u)));
    global0 = func_3(Struct_2(!select(select(vec4<bool>(var_1.b, var_1.b, var_1.b, arg_0), vec4<bool>(var_1.b, var_1.b, var_1.b, false), true), select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(var_1.b, var_1.b, arg_0, true), arg_0), !vec4<bool>(arg_0, true, false, false)), Struct_1(_wgslsmith_f_op_f32(-621f - var_1.a), arg_0, select(var_1.c, u_input.c, var_1.b) << (1u % 32u), 2147483647i), -1i, u_input.d), ~vec3<u32>(51911u, ~abs(0u), 42583u), _wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(min(global1[_wgslsmith_index_u32(var_1.c, 9u)], global1[_wgslsmith_index_u32(var_1.c, 9u)]), _wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(51242u, 9u)], vec2<u32>(var_1.c, arg_1)))), var_1.c & (_wgslsmith_mod_u32(arg_1, 4294967295u) ^ ~0u)), vec2<bool>(!arg_0, false));
    let var_2 = Struct_3(Struct_1(var_1.a, !(!(true & arg_0)), u_input.c, _wgslsmith_mod_i32(~_wgslsmith_mult_i32(-26122i, var_1.d), var_1.d)), -1i, ~(-(~var_1.d) ^ func_3(Struct_2(vec4<bool>(arg_0, arg_0, false, var_1.b), var_1, -1i, u_input.d), reverseBits(vec3<u32>(var_1.c, 18288u, u_input.c)), ~u_input.c, select(vec2<bool>(arg_0, var_1.b), vec2<bool>(false, true), vec2<bool>(var_1.b, false))).x), arg_1, _wgslsmith_f_op_f32(978f + var_1.a));
    return abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(28338u, 0u, u_input.c), min(vec3<u32>(4294967295u, 8755u, var_1.c), vec3<u32>(u_input.c, arg_1, arg_1)))) & vec3<u32>(_wgslsmith_mod_u32(4294967295u, var_1.c), firstLeadingBit(~var_1.c), (~0u & var_1.c) & ~(~4605u));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    var var_0 = arg_2.b.c;
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(ceil(func_2(vec4<u32>(u_input.c, 38314u, 1u, arg_0.x)).a)) > arg_2.b.a, func_2((vec4<u32>(80405u, u_input.c, 4294967295u, 45364u) | ~vec4<u32>(arg_2.b.c, arg_2.b.c, arg_0.x, arg_2.b.c)) | ~vec4<u32>(u_input.c, arg_0.x, arg_0.x, arg_0.x)).b, any(arg_2.a), any(vec2<bool>(true, true)));
    var var_2 = vec4<i32>(countOneBits(73531i), _wgslsmith_clamp_i32(global0.x << (41376u % 32u), (i32(-1i) * -1i) | (~global0.x | u_input.d.x), arg_2.d.x), _wgslsmith_dot_vec4_i32(~(~_wgslsmith_div_vec4_i32(u_input.b, u_input.b)), vec4<i32>(u_input.b.x << (func_1(var_1.x, arg_1.x).x % 32u), 0i, 28187i, _wgslsmith_div_i32(1i, 1i))), -(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c, 2147483647i, global0.x), u_input.a.wwx), ~u_input.a.x)));
    global1 = array<vec2<u32>, 9>();
    let var_3 = ~_wgslsmith_mult_u32(arg_1.x, _wgslsmith_add_u32(16385u, 1u));
    return Struct_2(!var_1, arg_2.b, -var_2.x, abs(vec3<i32>(var_2.x, _wgslsmith_mult_i32(2147483647i, u_input.b.x), 35472i & u_input.b.x)) | vec3<i32>(_wgslsmith_clamp_i32(18341i, abs(global0.x), 2147483647i), max(firstLeadingBit(-2147483647i), max(-2147483647i, u_input.d.x)), reverseBits(-1i >> (arg_1.x % 32u))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, -456f, false))), func_4(reverseBits(vec3<u32>(4294967295u, 4294967295u, 44782u)), ~vec3<u32>(0u, arg_1, u_input.c), arg_0, arg_0.b.a).b.a, true)), arg_0.b.a, arg_0.a.x)), any(arg_0.a.wxw), abs(abs(~arg_0.b.c)), arg_3.x);
    var var_1 = _wgslsmith_clamp_vec4_u32(max(select(vec4<u32>(4895u, 25247u, var_0.c, 46850u), vec4<u32>(var_0.c, 4294967295u, var_0.c, u_input.c), vec4<bool>(false, false, var_0.b, arg_0.a.x)) >> (firstTrailingBit(vec4<u32>(78372u, arg_0.b.c, u_input.c, arg_1)) % vec4<u32>(32u)), select(~vec4<u32>(arg_1, arg_0.b.c, 4294967295u, var_0.c), vec4<u32>(4294967295u, arg_1, 0u, 1u), var_0.a <= var_0.a)), ~vec4<u32>(func_1(arg_0.a.x, arg_1).x, arg_1 & 16889u, _wgslsmith_mod_u32(arg_0.b.c, 17812u), abs(arg_0.b.c)), vec4<u32>(arg_0.b.c, ~79897u, reverseBits(62304u), u_input.c) ^ (abs(vec4<u32>(arg_1, arg_0.b.c, 4294967295u, 7811u)) << (~vec4<u32>(arg_1, 0u, var_0.c, 50472u) % vec4<u32>(32u)))) << (vec4<u32>(0u, countOneBits(1u), firstTrailingBit(u_input.c), 15413u) % vec4<u32>(32u));
    let var_2 = var_1.www;
    let var_3 = _wgslsmith_dot_vec3_u32(~var_1.wxx, var_1.wwz);
    var var_4 = vec4<i32>(~arg_0.c, arg_3.x | max(0i ^ (-13890i << (arg_0.b.c % 32u)), (16266i & u_input.a.x) | (i32(-1i) * -10099i)), 1i, _wgslsmith_add_i32(arg_0.b.d | u_input.e, 2147483647i));
    return Struct_3(arg_0.b, 18951i, abs(func_3(arg_0, vec3<u32>(1u, arg_1, 1u), _wgslsmith_add_u32(~72218u, _wgslsmith_dot_vec2_u32(vec2<u32>(7879u, 4294967295u), var_2.yy)), select(!arg_0.a.xw, vec2<bool>(false, arg_0.b.b), !var_0.b)).x), _wgslsmith_dot_vec3_u32(select(var_1.xxx, ~(~var_1.zwz), _wgslsmith_f_op_f32(var_0.a - -351f) != _wgslsmith_f_op_f32(abs(var_0.a))), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.c, 0u, var_1.x), vec3<u32>(arg_1, var_1.x, 70670u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.x, 9334u, var_2.x), vec3<u32>(u_input.c, arg_1, 1u))) & vec3<u32>(~6601u, ~34906u, ~6924u)), -1145f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec2_i32(u_input.b.xz, select(vec2<i32>(~(-11672i), ~countOneBits(u_input.b.x)), vec2<i32>(_wgslsmith_add_i32(0i, ~12941i), 19522i), true));
    var var_0 = func_5(func_4(abs(func_1(true, u_input.c)), ~firstTrailingBit(vec3<u32>(0u, u_input.c, 10023u)), Struct_2(vec4<bool>(true, any(vec2<bool>(true, false)), any(vec3<bool>(true, false, true)), true), func_2(vec4<u32>(4294967295u, u_input.c, 29404u, u_input.c) | vec4<u32>(48929u, u_input.c, 4294967295u, 45864u)), func_2(vec4<u32>(4294967295u, u_input.c, 32554u, u_input.c) | vec4<u32>(u_input.c, 11437u, 21258u, 1u)).d, min(abs(vec3<i32>(1i, u_input.d.x, 555i)), -u_input.b.wzy)), -644f), func_2(firstTrailingBit(firstTrailingBit(~vec4<u32>(83142u, 31216u, 0u, u_input.c)))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -563f) - func_4(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(u_input.c, 4294967295u, 10320u) << (vec3<u32>(0u, u_input.c, 0u) % vec3<u32>(32u)), func_4(vec3<u32>(u_input.c, 0u, 1u), vec3<u32>(u_input.c, 0u, 103465u), Struct_2(vec4<bool>(true, false, true, false), Struct_1(350f, false, 52098u, -1i), -47459i, u_input.b.wzw), 1470f), -1568f).b.a) * _wgslsmith_f_op_f32(-func_4(vec3<u32>(u_input.c, 4294967295u, u_input.c), reverseBits(vec3<u32>(0u, 1u, 0u)), Struct_2(vec4<bool>(true, true, true, true), Struct_1(-782f, false, u_input.c, -1i), 0i, vec3<i32>(global0.x, u_input.d.x, global0.x)), _wgslsmith_f_op_f32(step(1000f, 839f))).b.a)), select((select(u_input.b, vec4<i32>(2147483647i, u_input.d.x, 1i, -1i), vec4<bool>(false, true, false, true)) & max(u_input.b, vec4<i32>(global0.x, -54787i, global0.x, 1i))) & reverseBits(-u_input.b), max(-u_input.a, ~_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(-1i, u_input.e, u_input.b.x, 14429i))), false));
    var var_1 = vec4<bool>(var_0.a.b, true, true, false);
    let var_2 = firstLeadingBit(-var_0.a.d) >> (u_input.c % 32u);
    var var_3 = func_5(func_4(~vec3<u32>(var_0.a.c, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, 1u), vec3<u32>(var_0.d, 1u, 1u)), func_4(vec3<u32>(0u, u_input.c, 11819u), vec3<u32>(u_input.c, 0u, 1894u), Struct_2(vec4<bool>(true, true, var_1.x, var_1.x), Struct_1(511f, var_0.a.b, 3173u, var_0.c), u_input.a.x, vec3<i32>(var_2, u_input.a.x, 2147483647i)), var_0.e).b.c), vec3<u32>(1215u, ~var_0.d, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.c, u_input.c, var_0.d, 44782u), vec4<u32>(var_0.d, u_input.c, 4294967295u, 0u))), func_4(~vec3<u32>(35169u, u_input.c, 4294967295u), _wgslsmith_div_vec3_u32(~vec3<u32>(8878u, var_0.a.c, var_0.d), vec3<u32>(var_0.d, 60880u, var_0.a.c)), Struct_2(!vec4<bool>(var_1.x, false, var_1.x, false), var_0.a, _wgslsmith_add_i32(var_0.b, -20695i), select(vec3<i32>(22799i, 22259i, 7548i), u_input.a.xwx, false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.a + var_0.a.a)))), _wgslsmith_f_op_f32(var_0.a.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)))), ~var_0.a.c, _wgslsmith_f_op_f32(floor(var_0.e)), vec4<i32>(-1i, ~_wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, -1i), 58496i & global0.x), u_input.a.x, _wgslsmith_clamp_i32(17294i, -(global0.x << (var_0.d % 32u)), -51722i)));
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec2<i32>(func_3(Struct_2(vec4<bool>(false, false, true, false), Struct_1(var_0.a.a, false, u_input.c, 50336i), 25758i, u_input.b.wyx), vec3<u32>(var_0.d, var_3.a.c, 9613u), 0u, var_1.yy).x, _wgslsmith_add_i32(1917i, -1i)), -vec2<i32>(41502i, global0.x)), vec3<f32>(_wgslsmith_f_op_f32(-137f + var_3.a.a), -907f, _wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.c, 4294967295u, u_input.c, 27593u) | vec4<u32>(u_input.c, 38681u, u_input.c, 4294967295u)).a + _wgslsmith_f_op_f32(var_3.a.a + _wgslsmith_f_op_f32(var_3.e + 562f)))), ~select(reverseBits(vec4<u32>(4294967295u, 58429u, var_0.d, 87945u)), ~abs(vec4<u32>(u_input.c, var_0.d, 19049u, var_3.a.c)), all(vec4<bool>(false, var_1.x, false, var_1.x)) != all(vec4<bool>(false, var_1.x, true, false))));
}

