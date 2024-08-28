struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(1u, 0u, 4294967295u, 57313u), vec4<u32>(16976u, 16022u, 25890u, 7551u), vec4<u32>(0u, 1u, 30234u, 20129u), vec4<u32>(33592u, 1u, 19707u, 1u), vec4<u32>(38597u, 4294967295u, 103311u, 27325u), vec4<u32>(36305u, 18437u, 4294967295u, 89365u), vec4<u32>(3244u, 0u, 4294967295u, 1u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_5) -> vec2<u32> {
    var var_0 = Struct_1(~(~1u) << (1u % 32u), 73177u, _wgslsmith_mult_u32(1u, 1u));
    global0 = array<vec4<u32>, 7>();
    var var_1 = vec2<u32>(var_0.c, min(select(0u, var_0.a, true), _wgslsmith_mult_u32(~1u, 0u)));
    var var_2 = select(select(vec3<bool>(arg_0.c, arg_2.c, any(!vec2<bool>(arg_2.c, arg_2.c))), vec3<bool>(arg_2.c, arg_0.a.x, all(select(vec2<bool>(arg_0.a.x, arg_1.b), vec2<bool>(arg_1.b, arg_2.c), arg_2.c))), arg_2.a.x), !select(vec3<bool>(all(arg_0.a), arg_0.c, arg_0.c), !vec3<bool>(arg_0.c, arg_0.c, arg_2.c), vec3<bool>(any(vec3<bool>(arg_0.a.x, arg_2.a.x, true)), arg_0.c, true)), false);
    var var_3 = Struct_4(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), min(45906i, u_input.c.x)) << (28289u % 32u), 50484i), arg_1, Struct_3(!select(any(vec2<bool>(true, true)), !arg_0.c, arg_2.a.x), Struct_1(_wgslsmith_mult_u32(~arg_0.d, ~var_0.b), firstTrailingBit(arg_0.d) & firstLeadingBit(53534u), ~var_1.x), arg_1.c.yz));
    return firstLeadingBit(var_3.c.c);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(false, Struct_1(u_input.a, 3840u & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a) << (vec2<u32>(u_input.a, 48429u) % vec2<u32>(32u)), vec2<u32>(u_input.a, 9891u)), ~(u_input.a ^ u_input.a)), ~(~func_3(Struct_5(vec2<bool>(true, false), 742f, true, 16351u), Struct_2(Struct_1(0u, 0u, u_input.a), true, global0[_wgslsmith_index_u32(u_input.a, 7u)]), Struct_5(vec2<bool>(false, false), 1048f, true, u_input.a))) ^ _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 1u) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(83371u, u_input.a)), vec2<u32>(countOneBits(u_input.a), ~1u), abs(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 48833u), vec2<u32>(1u, 73414u)))));
    global0 = array<vec4<u32>, 7>();
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2818f, 851f, true)) - _wgslsmith_f_op_f32(341f * _wgslsmith_div_f32(-1223f, -1037f))), _wgslsmith_f_op_f32(f32(-1f) * -130f)))));
    let var_2 = reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, ~u_input.a), vec2<u32>(1u, ~reverseBits(89057u)), var_0.c));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-761f + -255f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -673f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, var_1))))));
    return Struct_2(Struct_1(var_0.b.c, var_0.c.x, firstLeadingBit(abs(u_input.a))), true, select(_wgslsmith_add_vec4_u32(~(~global0[_wgslsmith_index_u32(u_input.a, 7u)]), vec4<u32>(abs(var_2.x), var_2.x, var_2.x, _wgslsmith_mult_u32(u_input.a, u_input.a))), ~max(_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(var_2.x, 7u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(13102u, var_0.b.a, var_2.x), 7u)]), select(select(select(vec4<bool>(var_0.a, true, var_0.a, false), vec4<bool>(var_0.a, true, false, true), var_0.a), select(vec4<bool>(var_0.a, true, var_0.a, var_0.a), vec4<bool>(var_0.a, false, true, var_0.a), vec4<bool>(var_0.a, var_0.a, true, true)), select(vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(false, true, var_0.a, true), vec4<bool>(var_0.a, var_0.a, false, var_0.a))), vec4<bool>(true, var_0.a, !var_0.a, var_0.a), !(!vec4<bool>(var_0.a, false, true, false)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(arg_0.yz, arg_0.yw));
    global0 = array<vec4<u32>, 7>();
    var var_1 = func_2();
    var var_2 = Struct_5(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), !(!(!any(vec3<bool>(false, true, arg_1.c)))), 13140u);
    let var_3 = func_2();
    return var_1.a;
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> bool {
    var var_0 = false;
    let var_1 = Struct_3(arg_1.a, func_1(global0[_wgslsmith_index_u32((_wgslsmith_mult_u32(2983u, 0u) << (abs(arg_1.b.c) % 32u)) ^ _wgslsmith_sub_u32(u_input.a, u_input.a), 7u)], Struct_5(!select(vec2<bool>(arg_1.a, false), vec2<bool>(true, arg_1.a), vec2<bool>(arg_1.a, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -184f)), arg_1.a, _wgslsmith_mod_u32(97977u, 4294967295u)), vec3<f32>(-512f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(228f)))), -858f)), vec2<u32>(~u_input.a, 1u));
    let var_2 = Struct_1(var_1.b.c, _wgslsmith_add_u32(4021u, func_2().c.x), _wgslsmith_clamp_u32(~(17049u << (arg_1.c.x % 32u)) ^ ~_wgslsmith_mod_u32(13475u, 77241u), 76568u, ~u_input.a));
    var var_3 = Struct_5(!vec2<bool>(var_1.a, false), 682f, true, ~select(select(var_2.b << (44131u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.b, var_1.c.x), vec3<u32>(u_input.a, var_1.b.c, u_input.a)), false), abs(2890u >> (arg_1.c.x % 32u)), arg_1.a));
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b, var_3.b) * vec2<f32>(-1048f, var_3.b)), vec2<f32>(2152f, var_3.b))), vec2<f32>(_wgslsmith_f_op_f32(abs(1598f)), _wgslsmith_f_op_f32(-243f + -965f))))), vec2<f32>(var_3.b, var_3.b));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 7>();
    var var_0 = !(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), all(vec3<bool>(true, false, false)))) || ((i32(-1i) * -2147483647i) < _wgslsmith_div_i32(~u_input.b.x, -17593i)));
    let var_1 = vec3<bool>(func_4(u_input.c.x, Struct_3(select(true, false, select(true, true, true)), func_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), Struct_5(vec2<bool>(false, false), 2478f, false, u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -395f, -603f) * vec3<f32>(-389f, -154f, -1000f))), ~vec2<u32>(u_input.a, u_input.a))), false, true);
    let var_2 = !vec2<bool>(all(vec3<bool>(19352u != u_input.a, false, false)), true);
    var var_3 = _wgslsmith_add_vec3_u32(firstTrailingBit(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)), u_input.a, max(4294967295u, u_input.a)))), abs(~firstLeadingBit(reverseBits(vec3<u32>(u_input.a, 4294967295u, u_input.a)))));
    var_3 = vec3<u32>(func_1(_wgslsmith_mult_vec4_u32(~reverseBits(global0[_wgslsmith_index_u32(u_input.a, 7u)]), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, u_input.a), global0[_wgslsmith_index_u32(var_3.x, 7u)]) << (global0[_wgslsmith_index_u32(~4294967295u, 7u)] % vec4<u32>(32u))), Struct_5(!select(vec2<bool>(var_2.x, true), var_2, vec2<bool>(false, var_2.x)), _wgslsmith_f_op_f32(max(-832f, _wgslsmith_f_op_f32(948f * 1000f))), var_1.x, abs(firstLeadingBit(1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(863f, 267f, -115f), vec3<f32>(-1028f, -812f, 2271f))))))).c, ~func_3(Struct_5(select(vec2<bool>(true, var_1.x), vec2<bool>(false, true), false), _wgslsmith_div_f32(351f, 195f), u_input.a > 14925u, ~u_input.a), Struct_2(func_1(global0[_wgslsmith_index_u32(u_input.a, 7u)], Struct_5(vec2<bool>(var_2.x, false), -773f, var_2.x, var_3.x), vec3<f32>(812f, 347f, 220f)), false, max(global0[_wgslsmith_index_u32(u_input.a, 7u)], vec4<u32>(u_input.a, 4294967295u, 1u, 0u))), Struct_5(var_1.zz, _wgslsmith_f_op_f32(-977f + 223f), func_4(0i, Struct_3(var_1.x, Struct_1(var_3.x, 1u, u_input.a), var_3.zx)), _wgslsmith_dot_vec2_u32(var_3.yx, vec2<u32>(var_3.x, var_3.x)))).x, 0u);
    global0 = array<vec4<u32>, 7>();
    var_3 = _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(abs(37351u), ~u_input.a, u_input.a), vec3<u32>(0u, min(1u, 65818u), var_3.x), _wgslsmith_mult_vec3_u32(vec3<u32>(69197u, var_3.x, 0u), firstLeadingBit(vec3<u32>(0u, 77384u, var_3.x)))), ~(countOneBits(min(vec3<u32>(44342u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))) | countOneBits(abs(vec3<u32>(42494u, u_input.a, 66633u)))));
    let var_4 = 1147f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -1503i), -_wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(15402i, u_input.c.x))), _wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(63100u ^ var_3.x, 7u)], ~(~_wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], vec4<u32>(953u, u_input.a, u_input.a, 1u)))), min(u_input.c.x, 1i));
}

