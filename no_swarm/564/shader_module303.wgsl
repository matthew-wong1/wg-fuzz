struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    let var_0 = Struct_5(abs(_wgslsmith_dot_vec3_u32(~u_input.b.yxw, u_input.b.zxy)), Struct_3(137f, Struct_1(countOneBits(u_input.a.x), vec4<u32>(_wgslsmith_div_u32(u_input.b.x, 1u), _wgslsmith_div_u32(9240u, 4294967295u), 28010u, 29882u), _wgslsmith_mod_u32(u_input.b.x, 16117u) != max(u_input.b.x, u_input.b.x), u_input.a.x)));
    let var_1 = var_0;
    var var_2 = Struct_3(var_1.b.a, Struct_1(19564i, vec4<u32>(_wgslsmith_clamp_u32(7198u, 5631u, 0u), _wgslsmith_dot_vec2_u32(u_input.b.wy, vec2<u32>(33129u, 0u)), 0u, select(1u, u_input.b.x, var_1.b.b.c)) | var_0.b.b.b, all(vec2<bool>(!var_0.b.b.c, var_0.b.b.c)), abs(firstTrailingBit(abs(var_0.b.b.a)))));
    global0 = array<Struct_2, 5>();
    var var_3 = var_2.b.b & select((vec4<u32>(1u, 18758u, var_1.b.b.b.x, 1u) & var_2.b.b) >> (u_input.b % vec4<u32>(32u)), ~(~_wgslsmith_mult_vec4_u32(var_0.b.b.b, vec4<u32>(84577u, 4294967295u, 3555u, 4294967295u))), select(vec4<bool>(select(true, true, true), true, all(vec2<bool>(var_1.b.b.c, false)), any(vec4<bool>(true, true, var_0.b.b.c, var_1.b.b.c))), !select(vec4<bool>(var_0.b.b.c, var_1.b.b.c, var_1.b.b.c, var_1.b.b.c), vec4<bool>(false, var_1.b.b.c, var_2.b.c, var_2.b.c), false), !vec4<bool>(var_1.b.b.c, true, var_1.b.b.c, false)));
    return -232f != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_1.b.a, var_0.b.a))))));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_mod_u32(~(u_input.b.x << (firstLeadingBit(u_input.b.x) % 32u)), ~countOneBits(4294967295u));
    var var_1 = select(!(!vec4<bool>(select(false, true, false), false, u_input.a.x > 2147483647i, all(vec3<bool>(true, false, false)))), vec4<bool>(445f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1216f)) + 365f), true, false, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), func_3()))), !((11537u > (69443u ^ u_input.b.x)) && any(vec2<bool>(true, false))));
    var_0 = u_input.b.x;
    global0 = array<Struct_2, 5>();
    var var_2 = Struct_5(~(~u_input.b.x), Struct_3(780f, Struct_1(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(2147483647i, 2147483647i)), abs(vec2<i32>(u_input.a.x, -7089i))), reverseBits(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 39704u)), false == var_1.x, u_input.a.x >> (_wgslsmith_div_u32(14524u, 38090u) % 32u))));
    return Struct_4(var_1.x);
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4, arg_3: bool) -> Struct_4 {
    let var_0 = countOneBits(~u_input.a.x) >> (16023u % 32u);
    global0 = array<Struct_2, 5>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-194f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2212f) - _wgslsmith_div_f32(-1114f, 1025f)))) * vec2<f32>(1214f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2011f + 178f) + -1000f))));
    var var_2 = global0[_wgslsmith_index_u32(7246u, 5u)];
    let var_3 = !select(!(!(!vec3<bool>(arg_2.a, arg_0.a, var_2.b.c))), vec3<bool>(var_2.b.c, false, var_2.b.a > select(var_0, -2147483647i, true)), !(!select(vec3<bool>(arg_0.a, arg_3, arg_0.a), vec3<bool>(arg_2.a, arg_0.a, arg_3), arg_2.a)));
    return Struct_4(arg_3);
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_4 {
    return func_4(arg_0, 66572u, Struct_4(arg_2.b.c), func_3());
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1) -> Struct_4 {
    var var_0 = arg_2;
    let var_1 = true;
    var_0 = Struct_1(abs(~85711i), vec4<u32>(_wgslsmith_div_u32(4294967295u, var_0.b.x), 61766u, firstLeadingBit(var_0.b.x), max(~u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(u_input.a), firstTrailingBit(vec3<i32>(-1i, u_input.a.x, -1i)), vec3<i32>(-54504i, -49436i, u_input.a.x)), -(u_input.a & vec3<i32>(u_input.a.x, -188i, 8593i))) <= var_0.d, 12280i ^ u_input.a.x);
    var var_2 = ~arg_2.b.x & select(62945u, abs(_wgslsmith_clamp_u32(~4294967295u, var_0.b.x >> (8812u % 32u), arg_2.b.x)), any(vec4<bool>(true, true, true, true)));
    global0 = array<Struct_2, 5>();
    return func_5(func_4(func_2(), 4294967295u >> (0u % 32u), Struct_4(any(!vec2<bool>(arg_0.a, true))), false), firstTrailingBit(~(_wgslsmith_sub_vec2_i32(u_input.a.zy, u_input.a.zy) << (abs(vec2<u32>(22649u, 64695u)) % vec2<u32>(32u)))), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~var_0.b.x, 1u), 5u)], ~(vec2<u32>(~u_input.b.x, arg_2.b.x) << ((var_0.b.ww & vec2<u32>(arg_2.b.x, 14553u)) % vec2<u32>(32u))));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_4) -> Struct_3 {
    let var_0 = Struct_1(arg_0.x, vec4<u32>(_wgslsmith_dot_vec3_u32(select(u_input.b.xwx & vec3<u32>(19244u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(true, true, true)), u_input.b.ywz), 10250u, 16138u, u_input.b.x), arg_1.a, -(abs(~arg_0.x) ^ _wgslsmith_mod_i32(arg_0.x, ~(-39024i))));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-423f, -1000f))), _wgslsmith_f_op_f32(458f - _wgslsmith_f_op_f32(-2132f + 521f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(652f * -893f))) + 622f), -2112f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1f))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1209f, 1386f)), _wgslsmith_f_op_f32(step(-468f, -1000f)), -2233f, -1035f))));
    let var_2 = _wgslsmith_f_op_vec2_f32(var_1.yy + vec2<f32>(_wgslsmith_f_op_f32(floor(173f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-734f + _wgslsmith_f_op_f32(-790f + var_1.x)))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-635f + _wgslsmith_f_op_f32(sign(856f))), var_1.x))));
    let var_4 = Struct_4(false);
    return Struct_3(-1168f, var_0);
}

fn func_7(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    let var_0 = vec3<u32>(~(~(arg_0.b.b.x >> (5412u % 32u))), arg_0.b.b.x, _wgslsmith_dot_vec4_u32(min(u_input.b, arg_0.b.b), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0.b.b.x, u_input.b.x, arg_0.b.b.x), vec4<u32>(u_input.b.x, arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x)), ~u_input.b))) | ~arg_0.b.b.zwy;
    let var_1 = select(vec2<bool>(arg_1, !func_6(vec3<i32>(17497i, 21021i, u_input.a.x) ^ u_input.a, Struct_4(arg_0.b.c)).b.c), select(select(vec2<bool>(arg_0.b.c, true), select(vec2<bool>(arg_0.b.c, arg_0.b.c), !vec2<bool>(arg_1, false), false), true & arg_1), vec2<bool>(true, true), vec2<bool>(!(-622f >= arg_0.a), false)), !(!vec2<bool>(!arg_0.b.c, true)));
    let var_2 = arg_0.b.a;
    global0 = array<Struct_2, 5>();
    var var_3 = func_5(func_4(func_4(func_1(func_2(), all(vec2<bool>(true, var_1.x)), arg_0.b), u_input.b.x, func_1(Struct_4(arg_1), arg_1, func_6(u_input.a, Struct_4(false)).b), true), ~(arg_0.b.b.x << (var_0.x % 32u)), func_2(), arg_0.b.c), firstLeadingBit(-abs(u_input.a.zz)), Struct_2(var_0.x, Struct_1(-1i, _wgslsmith_clamp_vec4_u32(select(vec4<u32>(73812u, arg_0.b.b.x, 7162u, 4294967295u), vec4<u32>(var_0.x, 0u, u_input.b.x, var_0.x), vec4<bool>(true, var_1.x, true, true)), ~u_input.b, max(vec4<u32>(48542u, arg_0.b.b.x, 4294967295u, 0u), u_input.b)), (u_input.a.x < u_input.a.x) & !arg_0.b.c, _wgslsmith_mod_i32(-1i, var_2)), arg_0.b.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -248f, 319f) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a, 558f, 932f), vec3<f32>(arg_0.a, arg_0.a, arg_0.a)))))), vec2<u32>(reverseBits(~(~0u)), ~u_input.b.x));
    return func_6(~u_input.a, func_5(Struct_4(~arg_0.b.d < u_input.a.x), vec2<i32>(var_2, -min(var_2, -2147483647i)), Struct_2(~(~arg_0.b.b.x), Struct_1(~u_input.a.x, vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 27814u), false, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 8637i, 0i), vec3<i32>(21514i, 1i, var_2))), _wgslsmith_div_i32(var_2 ^ 1i, select(var_2, u_input.a.x, arg_0.b.c)), vec3<f32>(_wgslsmith_div_f32(arg_0.a, arg_0.a), _wgslsmith_f_op_f32(977f - arg_0.a), _wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, arg_1)))), ~_wgslsmith_div_vec2_u32(vec2<u32>(33364u, u_input.b.x), arg_0.b.b.wz))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, u_input.b.x < 1u, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), any(vec4<bool>(false, true, false, true)))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.b.x > 0u))));
    global0 = array<Struct_2, 5>();
    var var_1 = func_7(func_6(firstLeadingBit(abs(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x))) >> (_wgslsmith_mult_vec3_u32(abs(vec3<u32>(0u, u_input.b.x, u_input.b.x)), vec3<u32>(u_input.b.x, 16529u, 112u)) % vec3<u32>(32u)), func_1(Struct_4(true), firstLeadingBit(-1i) < u_input.a.x, Struct_1(u_input.a.x, vec4<u32>(u_input.b.x, 97416u, 1u, 3678u), true, ~u_input.a.x))), -2147483647i <= u_input.a.x);
    let var_2 = 53898u;
    var_1 = func_7(Struct_3(208f, Struct_1(var_1.a, vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, 53867u), u_input.b.x, u_input.b.x, var_1.b.x), _wgslsmith_f_op_f32(select(1000f, -1000f, true)) <= _wgslsmith_f_op_f32(sign(-1072f)), u_input.a.x)), func_5(func_4(func_2(), u_input.b.x, Struct_4(true), var_1.c), firstLeadingBit(u_input.a.yz), Struct_2(_wgslsmith_clamp_u32(var_2 >> (var_2 % 32u), var_2, var_2), func_6(firstTrailingBit(vec3<i32>(-2271i, -107948i, var_1.d)), func_1(Struct_4(true), var_0, Struct_1(var_1.a, vec4<u32>(1u, var_1.b.x, var_1.b.x, 1u), false, u_input.a.x))).b, -2147483647i, vec3<f32>(_wgslsmith_f_op_f32(sign(-1510f)), _wgslsmith_f_op_f32(962f * 1832f), _wgslsmith_f_op_f32(-167f - 528f))), countOneBits(_wgslsmith_mod_vec2_u32(var_1.b.zz, u_input.b.yx)) ^ min(max(var_1.b.wz, u_input.b.yw), countOneBits(var_1.b.wy))).a);
    let var_3 = u_input.b.x;
    var_1 = Struct_1(var_1.a, ~max(func_6(countOneBits(vec3<i32>(-27095i, -2147483647i, var_1.d)), func_1(Struct_4(var_0), true, Struct_1(var_1.d, vec4<u32>(4294967295u, var_1.b.x, u_input.b.x, 1u), true, u_input.a.x))).b.b, u_input.b), var_1.c, _wgslsmith_clamp_i32(42597i, var_1.a | _wgslsmith_mod_i32(u_input.a.x ^ var_1.a, var_1.a & u_input.a.x), _wgslsmith_dot_vec2_i32(abs(-u_input.a.zz), select(vec2<i32>(1i, var_1.d) << (vec2<u32>(var_2, var_3) % vec2<u32>(32u)), -vec2<i32>(0i, 2147483647i), true))));
    global0 = array<Struct_2, 5>();
    var var_4 = func_7(func_6(-(~select(vec3<i32>(2147483647i, u_input.a.x, var_1.d), u_input.a, vec3<bool>(var_0, var_0, var_0))), Struct_4(true && !var_1.c)), -18111i != _wgslsmith_div_i32(abs(u_input.a.x), -28183i));
    let x = u_input.a;
    s_output = StorageBuffer(~0i, select(u_input.b.zz, vec2<u32>(_wgslsmith_add_u32(u_input.b.x, var_4.b.x), _wgslsmith_mod_u32(var_4.b.x, 10709u)), var_1.c) & ~var_4.b.xy);
}

