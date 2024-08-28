struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-61210i, vec4<i32>(i32(-2147483648), 26884i, -28873i, 1i), 281f), Struct_1(1i, vec4<i32>(i32(-2147483648), 5864i, 22443i, -1i), 395f), Struct_1(-5433i, vec4<i32>(0i, -1i, 0i, 1i), 235f), Struct_1(i32(-2147483648), vec4<i32>(6749i, 0i, -1i, 1i), 619f), Struct_1(0i, vec4<i32>(-3208i, -13934i, 40057i, i32(-2147483648)), 1000f), Struct_1(i32(-2147483648), vec4<i32>(17748i, -9746i, -21007i, -1i), -843f), Struct_1(0i, vec4<i32>(39010i, -6338i, i32(-2147483648), -20554i), -225f), Struct_1(2147483647i, vec4<i32>(0i, -8892i, i32(-2147483648), 12630i), -1827f), Struct_1(0i, vec4<i32>(11405i, 36392i, -34996i, -15405i), 746f), Struct_1(-1i, vec4<i32>(0i, 13699i, 2845i, 14033i), -2016f), Struct_1(-34311i, vec4<i32>(0i, 2147483647i, -1i, -2966i), 224f), Struct_1(-95i, vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 1i), -247f), Struct_1(11807i, vec4<i32>(0i, 24641i, 0i, -11675i), 868f), Struct_1(-64287i, vec4<i32>(10746i, -9135i, -1i, 72862i), -487f), Struct_1(-1i, vec4<i32>(-1i, -1i, 1i, 0i), 943f), Struct_1(i32(-2147483648), vec4<i32>(49064i, 31557i, 5687i, 10537i), 1470f), Struct_1(2147483647i, vec4<i32>(-1i, -53179i, -1i, 0i), 1029f), Struct_1(-1i, vec4<i32>(-32064i, 0i, 2147483647i, 47201i), 1000f), Struct_1(-1i, vec4<i32>(-24307i, -1i, 2147483647i, 46092i), -2500f), Struct_1(7682i, vec4<i32>(i32(-2147483648), -49840i, 0i, -46410i), -1088f));

var<private> global2: array<vec3<i32>, 7>;

var<private> global3: f32 = -294f;

var<private> global4: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<i32> {
    global0 = array<Struct_1, 7>();
    let var_0 = all(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))) & any(vec4<bool>(true, true, true, true));
    var var_1 = 4294967295u;
    global1 = array<Struct_1, 20>();
    global0 = array<Struct_1, 7>();
    return vec4<i32>(-22878i, reverseBits(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.xz), _wgslsmith_mult_i32(firstTrailingBit(u_input.a.x), -u_input.a.x), _wgslsmith_div_i32(-19085i, u_input.a.x) << (14230u % 32u))), ~(~_wgslsmith_mult_i32(9935i, u_input.a.x) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 1u, 0u), vec4<u32>(u_input.c, u_input.b, u_input.c, u_input.c)) % 32u)), u_input.a.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: u32) -> f32 {
    let var_0 = ~countOneBits(~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(arg_2, u_input.b, arg_2)), ~vec3<u32>(u_input.c, 5842u, u_input.c)));
    global2 = array<vec3<i32>, 7>();
    var var_1 = Struct_1(u_input.a.x ^ _wgslsmith_sub_i32(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, -1i, 20147i), vec4<i32>(u_input.a.x, u_input.a.x, -1171i, -2147483647i))), _wgslsmith_sub_i32(arg_0.x, -1i) | 7742i), ~func_3(), arg_1.x);
    global4 = 1i;
    global1 = array<Struct_1, 20>();
    return arg_1.x;
}

fn func_1() -> Struct_1 {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), 4294967295u <= u_input.c), all(vec3<bool>(true, true, true))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(10402u, 7u)], vec4<f32>(-447f, 575f, -1626f, 131f), 28868u))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -156f) - _wgslsmith_f_op_f32(max(-199f, 239f))), true, false, true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(true, true, true))));
    let var_1 = select(select(var_0.zxy, var_0.wzz, !(!vec3<bool>(var_0.x, var_0.x, var_0.x))), vec3<bool>(!var_0.x, all(!vec3<bool>(var_0.x, false, true)), false), select(select(var_0.xyw, !select(var_0.yzy, var_0.wzx, false), var_0.x), var_0.zwy, var_0.x));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~max(_wgslsmith_clamp_u32(u_input.c, 14630u, u_input.c), _wgslsmith_div_u32(u_input.b, u_input.c) | u_input.b), abs(~(u_input.b << (u_input.b % 32u)))), 7u)];
    return global1[_wgslsmith_index_u32(u_input.c, 20u)];
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_1();
    global3 = _wgslsmith_f_op_f32(-231f * _wgslsmith_f_op_f32(func_2(var_0.b.wwx, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, arg_1.c, -974f, 210f) + vec4<f32>(-1286f, -688f, 538f, var_0.c)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, -781f, arg_2, -572f) * vec4<f32>(-184f, arg_2, arg_3.c, 571f))))), u_input.b)));
    global2 = array<vec3<i32>, 7>();
    let var_1 = global1[_wgslsmith_index_u32(0u, 20u)];
    var var_2 = func_1().b.xzx;
    return Struct_1(_wgslsmith_dot_vec3_i32(arg_0, -countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, arg_3.a, -21415i), vec3<i32>(var_2.x, 2147483647i, u_input.a.x)))), -var_0.b, _wgslsmith_f_op_f32(step(-936f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(select(-895f, var_1.c, false)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~global2[_wgslsmith_index_u32(u_input.b, 7u)], global1[_wgslsmith_index_u32(u_input.c, 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1f))))), func_1());
    global4 = -abs(-4619i);
    global0 = array<Struct_1, 7>();
    var var_1 = -26574i;
    var var_2 = func_4(vec3<i32>(u_input.a.x, var_0.a, i32(-1i) * -50713i), var_0, -1510f, Struct_1(~_wgslsmith_mod_i32(u_input.a.x, 1i) >> (u_input.c % 32u), func_1().b, _wgslsmith_f_op_f32(func_2(~var_0.b.wyw, vec4<f32>(_wgslsmith_f_op_f32(-806f + -117f), _wgslsmith_f_op_f32(step(var_0.c, var_0.c)), var_0.c, _wgslsmith_f_op_f32(sign(var_0.c))), ~u_input.c))));
    global4 = var_0.b.x;
    var var_3 = -((-2147483647i | var_0.a) << (u_input.c % 32u));
    global2 = array<vec3<i32>, 7>();
    let var_4 = -abs(-41751i) << (u_input.c % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c * var_2.c)), _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(463f)) * _wgslsmith_f_op_f32(min(-409f, _wgslsmith_f_op_f32(var_0.c - -640f))))), vec4<u32>(~min(_wgslsmith_clamp_u32(82503u, u_input.b, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(u_input.b, 46605u))), firstLeadingBit(u_input.b), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 17455u, u_input.b) >> (vec4<u32>(16485u, u_input.b, u_input.b, u_input.c) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(u_input.c, 2855u, 38896u, 0u)))), _wgslsmith_mult_u32(u_input.b, ~(~15705u))));
}

