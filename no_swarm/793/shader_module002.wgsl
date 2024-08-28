struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: i32 = 14809i;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<i32>(0i, 2147483647i, 2147483647i), 79132u, vec3<f32>(2158f, 322f, -120f)), Struct_1(vec3<i32>(2147483647i, 0i, 15236i), 4294967295u, vec3<f32>(858f, -940f, 204f)), Struct_1(vec3<i32>(-1i, 36866i, -655i), 0u, vec3<f32>(625f, -198f, -1898f)), Struct_1(vec3<i32>(-20163i, 2147483647i, 0i), 0u, vec3<f32>(230f, -2409f, -1198f)), Struct_1(vec3<i32>(2147483647i, -48938i, 0i), 55913u, vec3<f32>(1166f, 828f, -956f)), Struct_1(vec3<i32>(-27128i, i32(-2147483648), 13525i), 0u, vec3<f32>(-1966f, -135f, 223f)), Struct_1(vec3<i32>(i32(-2147483648), -7813i, 2147483647i), 17718u, vec3<f32>(1726f, -578f, 439f)), Struct_1(vec3<i32>(-1i, 7868i, 2147483647i), 56431u, vec3<f32>(1996f, 1372f, 807f)), Struct_1(vec3<i32>(i32(-2147483648), 17091i, 0i), 36453u, vec3<f32>(1178f, 859f, 1506f)), Struct_1(vec3<i32>(2147483647i, 9737i, -1i), 63489u, vec3<f32>(-168f, 361f, -902f)));

var<private> global3: array<Struct_1, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> vec4<f32> {
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1 >> (u_input.a.wy % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1, arg_1), vec2<i32>(arg_1.x, arg_1.x)), select(~arg_1, arg_1, !vec2<bool>(arg_0, arg_0)), vec2<i32>(-30186i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_1.x, 34304i), vec3<i32>(arg_1.x, 0i, arg_1.x))))), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(countOneBits(-2686i), ~arg_1.x)), ~arg_1));
    global1 = _wgslsmith_dot_vec4_i32(select(-vec4<i32>(0i, arg_1.x, ~arg_1.x, 12583i), ~(vec4<i32>(1739i, arg_1.x, -2147483647i, arg_1.x) | -vec4<i32>(1i, arg_1.x, arg_1.x, arg_1.x)), select(!vec4<bool>(false, false, arg_0, true), select(vec4<bool>(false, false, true, false), !vec4<bool>(arg_0, true, true, arg_0), !arg_0), !select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false), false))), vec4<i32>(-2147483647i, arg_1.x, -78147i, (22490i & (arg_1.x & 2147483647i)) >> (~(~35425u) % 32u)));
    global1 = arg_1.x;
    var var_0 = Struct_1(~vec3<i32>(arg_1.x << (1u % 32u), _wgslsmith_sub_i32(~arg_1.x, min(arg_1.x, -1i)), 1i), u_input.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(952f, -632f, _wgslsmith_f_op_f32(337f - -312f)))), vec3<f32>(-382f, _wgslsmith_f_op_f32(select(-1686f, _wgslsmith_f_op_f32(-169f + -124f), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1358f * 1073f)))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, arg_0, false), arg_0), !vec3<bool>(arg_0, false, false), true), select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, false)), !vec3<bool>(true, false, arg_0), true & arg_0), false))));
    var_0 = global2[_wgslsmith_index_u32(~firstLeadingBit(10567u), 10u)];
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -367f), var_0.c.x, -955f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-845f, -222f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, var_0.c.x)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<bool> {
    global3 = array<Struct_1, 24>();
    global2 = array<Struct_1, 10>();
    let var_0 = Struct_1(arg_1.a, 60201u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2100f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1407f - arg_2.x)))));
    global1 = var_0.a.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.c.x)));
    return select(vec3<bool>((any(vec3<bool>(false, true, true)) || all(vec3<bool>(false, true, true))) || select(all(vec2<bool>(false, true)), select(true, false, false), false), true, true), vec3<bool>(false, (var_0.a.x & _wgslsmith_dot_vec3_i32(vec3<i32>(-36647i, 2147483647i, arg_1.a.x), vec3<i32>(-1i, 1881i, -31453i))) >= (firstTrailingBit(995i) >> (abs(u_input.a.x) % 32u)), false), !(!(!select(true, false, true))));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    global0 = u_input.a.xz;
    global0 = vec2<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.b, 4294967295u)), ~vec2<u32>(arg_2.b, arg_2.b)), max(u_input.c, 0u)) ^ u_input.a.wz;
    var var_0 = countOneBits(vec2<i32>(arg_1.x, -1i));
    var var_1 = select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, arg_1.x != arg_1.x), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))), func_4(_wgslsmith_mult_vec3_u32(~u_input.a.ywx, max(firstLeadingBit(vec3<u32>(global0.x, 24162u, 10686u)), u_input.a.wyy)), Struct_1(reverseBits(vec3<i32>(var_0.x, 47645i, 2147483647i)), u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_2.c)) * _wgslsmith_f_op_vec3_f32(-arg_2.c))), _wgslsmith_f_op_vec4_f32(func_3(arg_2.c.x >= arg_2.c.x, countOneBits(vec2<i32>(arg_2.a.x, -2147483647i))))), vec3<bool>(false, any(vec3<bool>(false, all(vec4<bool>(true, false, true, false)), all(vec3<bool>(false, true, false)))), select(9428u > _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), true && (-59157i >= arg_1.x), _wgslsmith_f_op_f32(min(arg_0, -220f)) != _wgslsmith_f_op_f32(-741f - arg_0))));
    var_0 = vec2<i32>(abs(_wgslsmith_dot_vec3_i32(~(arg_1.zyx >> (u_input.a.wzx % vec3<u32>(32u))), arg_2.a)), 1i);
    return firstLeadingBit(_wgslsmith_sub_u32((22478u ^ arg_2.b) ^ ((global0.x ^ u_input.b) | u_input.c), firstLeadingBit(_wgslsmith_dot_vec3_u32(select(vec3<u32>(14970u, 10954u, 1u), u_input.a.wzy, vec3<bool>(var_1.x, var_1.x, var_1.x)), countOneBits(vec3<u32>(arg_2.b, u_input.c, 1u))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = global0.x;
    var var_1 = select(vec3<bool>(!(!(-18575i < arg_1)), true, select(true, !select(false, true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))), vec3<bool>(true, false, (-981f > _wgslsmith_f_op_f32(ceil(arg_2.c.x))) & all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))));
    var var_2 = ~vec3<u32>(firstTrailingBit(_wgslsmith_mult_u32(func_2(arg_2.c.x, arg_0, global2[_wgslsmith_index_u32(arg_2.b, 10u)]), _wgslsmith_sub_u32(arg_2.b, 0u))), u_input.c, ~99583u);
    global1 = 1i;
    global3 = array<Struct_1, 24>();
    return Struct_1(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(~arg_0.x, _wgslsmith_clamp_i32(arg_3.x, 26398i, 1i), arg_3.x), arg_2.a)), _wgslsmith_div_u32(select(global0.x, var_2.x ^ ~1u, any(select(vec2<bool>(true, var_1.x), var_1.yy, var_1.xy))), ~(_wgslsmith_dot_vec3_u32(u_input.a.wzz, vec3<u32>(u_input.b, var_2.x, 0u)) & 4294967295u)), arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 10>();
    var var_0 = !vec3<bool>(false, false, select(true, false, (global0.x >= u_input.b) & true));
    let var_1 = func_1(~(~vec4<i32>(0i, -39703i, min(-2147483647i, 1i), 1i)), i32(-1i) * -40704i, Struct_1(-vec3<i32>(_wgslsmith_div_i32(-81305i, 1i), _wgslsmith_sub_i32(-2147483647i, -1i), i32(-1i) * -1i), abs(~(~17762u)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-508f, _wgslsmith_f_op_f32(sign(-1495f)), _wgslsmith_f_op_f32(1000f + -1018f))))), vec3<i32>(~(i32(-1i) * -19583i), -2147483647i, ((i32(-1i) * -46613i) << (select(11438u, 1u, var_0.x) % 32u)) ^ -39240i));
    global2 = array<Struct_1, 10>();
    let var_2 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(u_input.a.yyw, _wgslsmith_add_vec3_u32(~vec3<u32>(var_1.b, 1u, global0.x), firstLeadingBit(u_input.a.yxy))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, -330f, var_1.c.x, var_1.c.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, -287f, var_1.c.x) * vec4<f32>(-1337f, 1800f, 229f, 714f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1034f, var_1.c.x, -160f, var_1.c.x) + vec4<f32>(var_1.c.x, 104f, -691f, var_1.c.x))))))));
}

