struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(4294967295u, 33762u, 0u, 4294967295u), vec4<u32>(4294967295u, 22874u, 31121u, 43410u), vec4<u32>(16424u, 0u, 1u, 1u), vec4<u32>(4303u, 72014u, 4294967295u, 1u), vec4<u32>(1u, 0u, 64071u, 1u), vec4<u32>(4294967295u, 50640u, 38381u, 16964u), vec4<u32>(6498u, 1u, 0u, 8053u), vec4<u32>(4294967295u, 0u, 1u, 19354u), vec4<u32>(21420u, 36679u, 1u, 0u), vec4<u32>(4294967295u, 1u, 31008u, 0u), vec4<u32>(54228u, 4294967295u, 40639u, 3122u), vec4<u32>(29106u, 0u, 33741u, 0u), vec4<u32>(17085u, 1u, 56192u, 0u), vec4<u32>(0u, 103669u, 4294967295u, 12378u), vec4<u32>(28999u, 4294967295u, 1u, 82295u), vec4<u32>(54306u, 1u, 48619u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 24598u), vec4<u32>(0u, 0u, 80179u, 9969u), vec4<u32>(81960u, 52644u, 4294967295u, 27850u), vec4<u32>(42515u, 4642u, 27830u, 13020u), vec4<u32>(75508u, 1u, 45564u, 7168u), vec4<u32>(1u, 58522u, 79283u, 20348u), vec4<u32>(7948u, 0u, 2753u, 58683u), vec4<u32>(38471u, 0u, 1u, 0u), vec4<u32>(639u, 4294967295u, 31160u, 68190u), vec4<u32>(15527u, 1u, 39292u, 118994u), vec4<u32>(62988u, 0u, 19213u, 52185u));

var<private> global1: i32 = -46034i;

var<private> global2: bool = false;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<f32>, arg_3: vec3<u32>) -> f32 {
    global1 = _wgslsmith_div_i32(reverseBits(_wgslsmith_div_i32(arg_0.x, reverseBits(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(-17756i, arg_0.x, arg_0.x))))), ~(min(arg_0.x | -17703i, _wgslsmith_mod_i32(arg_0.x, -71614i)) >> (1u % 32u)));
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_2.zy)), arg_2.wx), _wgslsmith_add_i32(arg_0.x, arg_0.x & -13002i)), true, ~(~arg_3.x), false, -arg_0.xz);
    global1 = abs(-16279i);
    let var_1 = !(641f >= var_0.a.a.x) | (var_0.c < _wgslsmith_mult_u32(1u, ~arg_3.x ^ _wgslsmith_dot_vec4_u32(u_input.b, global0[_wgslsmith_index_u32(u_input.b.x, 27u)])));
    var var_2 = arg_0.x;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1030f)));
}

fn func_3(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = 1184f;
    var_0 = arg_0.x;
    var var_1 = Struct_3(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), true), all(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(arg_0.zz, 1i), true, 1u, !all(vec4<bool>(true, true, false, false)), abs(vec2<i32>(1i, 1i))), vec3<u32>(~u_input.b.x, ~51681u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yx), u_input.b.x), u_input.a);
    var var_2 = var_1.b.d;
    var var_3 = max(~abs(var_1.c.yy), vec2<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_1.d, u_input.a, u_input.a)), var_1.c)));
    return var_1.b.a;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -989f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x, _wgslsmith_f_op_f32(max(559f, arg_0.a.x)), arg_0.a.x) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), 328f, _wgslsmith_f_op_f32(func_2(vec3<i32>(0i, arg_0.b, arg_0.b), 61853u, vec4<f32>(-988f, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<u32>(u_input.b.x, u_input.a, u_input.b.x))), arg_0.a.x))));
    var var_1 = arg_0;
    var var_2 = Struct_3(vec4<bool>(!(~u_input.a <= abs(u_input.a)), true, countOneBits(~u_input.a) <= u_input.b.x, true || (firstTrailingBit(76500u) != 56094u)), Struct_2(arg_0, all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true)), (u_input.b.x & 4294967295u) << (countOneBits(22810u) % 32u), false, vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, 0i, -2147483647i, arg_0.b) >> (global0[_wgslsmith_index_u32(1u, 27u)] % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(21211i, arg_0.b, -15364i, var_0.b))))), u_input.b.zxx, reverseBits(firstTrailingBit(4294967295u)) << ((u_input.a | ~1u) % 32u));
    var var_3 = _wgslsmith_f_op_f32(sign(-1064f));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a), 1i);
    return arg_0;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    var var_0 = vec3<f32>(arg_2.b.a.a.x, -753f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(241f)))))));
    var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(arg_2.b.a.a.x * var_0.x), arg_2.b.a.a.x);
    global1 = (-64550i >> (u_input.a % 32u)) ^ 9649i;
    var var_1 = arg_2.a;
    var var_2 = arg_2.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(-vec2<i32>(-reverseBits(3900i), firstTrailingBit(-1i)), func_1(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1569f, 317f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(380f, 1000f))))), ~abs(2147483647i))), Struct_3(vec4<bool>(true, true, true, true), Struct_2(func_1(func_3(vec4<f32>(-142f, 753f, 427f, -374f))), _wgslsmith_div_u32(u_input.b.x, 0u) < ~u_input.b.x, ~4294967295u, true, ~min(vec2<i32>(-1i, 10156i), vec2<i32>(33543i, 1i))), select(u_input.b.xxx, u_input.b.yzw, vec3<bool>(true, true, true)), u_input.a << (u_input.b.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, u_input.a);
}

