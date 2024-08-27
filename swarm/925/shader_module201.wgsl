struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<u32>) -> Struct_1 {
    global0 = array<vec2<i32>, 12>();
    let var_0 = Struct_2(_wgslsmith_mult_u32(select(u_input.a, 1u, true && arg_1.a) ^ (1u << (reverseBits(arg_0) % 32u)), ~arg_0), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x) * arg_2.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1707f + arg_2.x))))), Struct_1(arg_1.a), arg_0, -328f);
    let var_1 = _wgslsmith_div_i32(firstTrailingBit(-48437i), 30319i >> (max(_wgslsmith_add_u32(arg_3.x, min(4294967295u, u_input.a)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 12608u, 1u), vec3<u32>(arg_0, arg_0, arg_0)), countOneBits(vec3<u32>(28245u, 55410u, 1010u)))) % 32u));
    let var_2 = 0i;
    global0 = array<vec2<i32>, 12>();
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5) -> bool {
    let var_0 = _wgslsmith_add_vec3_u32(min(~(vec3<u32>(u_input.a, 60653u, 4294967295u) ^ vec3<u32>(80265u, 9800u, 13399u)), vec3<u32>(0u, u_input.a ^ 4294967295u, _wgslsmith_sub_u32(u_input.a, u_input.a))) | ~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(2441u, 9909u, 41150u), vec3<u32>(u_input.a, u_input.a, u_input.a))), firstTrailingBit(firstLeadingBit(vec3<u32>(1u, 20407u, 4294967295u))));
    let var_1 = ~(~firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 133462u, 66882u), vec3<u32>(4294967295u, var_0.x, var_0.x))));
    var var_2 = Struct_4(0i, Struct_2(_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.x, var_1, u_input.a), 10069u, var_1), firstLeadingBit(_wgslsmith_mult_u32(27054u, 20481u))), vec2<f32>(-1000f, -2200f), func_2(~_wgslsmith_clamp_u32(1u, var_0.x, 1u), Struct_1(true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-496f, arg_1.a.a.x)), firstLeadingBit(~var_0.xz)), 0u, arg_1.a.a.x), !select(!select(vec4<bool>(false, arg_0.a, arg_1.c.x, false), vec4<bool>(false, arg_1.c.x, false, arg_0.a), vec4<bool>(false, true, arg_0.a, false)), vec4<bool>(all(arg_1.c), true, arg_1.c.x, false), false));
    var var_3 = Struct_4(var_2.a, Struct_2(var_2.b.d, var_2.b.b, arg_0, ~abs(_wgslsmith_clamp_u32(29843u, 0u, 45389u)), _wgslsmith_f_op_f32(var_2.b.e + var_2.b.e)), !select(var_2.c, !select(vec4<bool>(true, false, true, arg_0.a), vec4<bool>(arg_1.c.x, false, true, arg_1.c.x), var_2.c), vec4<bool>(var_2.c.x, any(vec3<bool>(false, true, arg_1.c.x)), false, var_2.c.x & true)));
    var_2 = Struct_4(var_3.a, Struct_2(_wgslsmith_sub_u32(1u, var_3.b.d), vec2<f32>(_wgslsmith_f_op_f32(var_2.b.e - 2473f), _wgslsmith_f_op_f32(floor(arg_1.a.a.x))), arg_1.b, _wgslsmith_dot_vec2_u32(vec2<u32>(112303u, 1u), vec2<u32>(var_2.b.a >> (57853u % 32u), _wgslsmith_add_u32(0u, 48731u))), var_3.b.e), !vec4<bool>(false, true, var_2.c.x, true));
    return false;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = firstLeadingBit(select(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(97348u, 37697u, 0u), vec3<u32>(34994u, 4294967295u, u_input.a), vec3<u32>(21236u, 79712u, u_input.a))), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 0u, 3459u)) | abs(vec3<u32>(u_input.a, 1u, u_input.a)), _wgslsmith_sub_vec3_u32(~vec3<u32>(68873u, 47879u, 4294967295u), firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)))), func_3(Struct_1(false), Struct_5(Struct_3(vec2<f32>(-1028f, 775f)), func_2(1u, Struct_1(true), vec2<f32>(-1281f, 193f), vec2<u32>(u_input.a, u_input.a)), vec3<bool>(true, true, true)))));
    global0 = array<vec2<i32>, 12>();
    var var_1 = -vec4<i32>(-firstLeadingBit(i32(-1i) * -34576i), _wgslsmith_dot_vec3_i32(-arg_0, _wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, arg_0.x, -2147483647i), vec3<i32>(-5595i, arg_0.x, 2147483647i))), -2147483647i, -71786i);
    var var_2 = abs(64028u);
    var_0 = _wgslsmith_mod_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.x, u_input.a, var_0.x), vec3<u32>(var_0.x, 14313u, u_input.a)), ~max(vec3<u32>(51746u, u_input.a, 82543u), vec3<u32>(4294967295u, u_input.a, var_0.x)))), ~vec3<u32>(reverseBits(var_0.x), 0u, u_input.a));
    return Struct_1(arg_0.x >= 3913i);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> Struct_4 {
    let var_0 = min(5648i, firstLeadingBit(~(~1i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.e))), -749f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(882f * -1000f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(507f, arg_0.e, arg_0.b.x)) - vec3<f32>(-1627f, -1027f, arg_0.e)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.e, -196f, 1000f), vec3<f32>(arg_0.b.x, 537f, -596f)) - vec3<f32>(arg_0.e, arg_0.e, arg_0.e))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1659f, _wgslsmith_f_op_f32(f32(-1f) * -980f), _wgslsmith_f_op_f32(-arg_0.e))))));
    var var_2 = Struct_3(var_1.yy);
    let var_3 = -_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(arg_2, 12u)] << (vec2<u32>(~4294967295u, 4294967295u >> (u_input.a % 32u)) % vec2<u32>(32u)), vec2<i32>(countOneBits(-var_0), i32(-1i) * -4506i));
    var_2 = Struct_3(var_1.zz);
    return Struct_4(var_3, Struct_2(firstTrailingBit(1u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a)), arg_0.b, (var_2.a.x >= var_1.x) && (arg_0.c.a | true))), func_2(arg_1 & u_input.a, Struct_1(true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zx)), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, arg_1), vec2<u32>(arg_2, 39024u))), abs(u_input.a), _wgslsmith_f_op_f32(select(arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1143f))), false))), !select(!select(vec4<bool>(false, false, arg_0.c.a, true), vec4<bool>(arg_0.c.a, arg_0.c.a, false, true), arg_0.c.a), !select(vec4<bool>(false, arg_0.c.a, arg_0.c.a, true), vec4<bool>(arg_0.c.a, false, arg_0.c.a, true), true), func_2(~arg_1, Struct_1(false), _wgslsmith_f_op_vec2_f32(-var_1.zy), select(vec2<u32>(arg_0.a, 74028u), vec2<u32>(u_input.a, u_input.a), arg_0.c.a)).a));
}

fn func_5(arg_0: f32, arg_1: Struct_4) -> Struct_5 {
    global0 = array<vec2<i32>, 12>();
    var var_0 = func_4(func_4(func_4(func_4(arg_1.b, reverseBits(arg_1.b.a), ~61489u).b, reverseBits(func_4(Struct_2(0u, arg_1.b.b, arg_1.b.c, arg_1.b.a, -1919f), u_input.a, 2048u).b.a), u_input.a).b, _wgslsmith_sub_u32(~u_input.a, arg_1.b.d), 4294967295u).b, _wgslsmith_div_u32(~5066u >> (abs(_wgslsmith_mult_u32(4294967295u, arg_1.b.a)) % 32u), u_input.a), ~arg_1.b.d).c.xyx;
    return Struct_5(Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(403f, arg_1.b.b.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1471f, 441f))), _wgslsmith_f_op_vec2_f32(arg_1.b.b - arg_1.b.b), select(arg_1.c.yy, vec2<bool>(var_0.x, false), true))))), arg_1.b.c, func_4(Struct_2(~_wgslsmith_mod_u32(arg_1.b.a, arg_1.b.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b.b + arg_1.b.b) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(986f, 403f), arg_1.b.b))), arg_1.b.c, u_input.a, arg_1.b.e), 81081u, _wgslsmith_mod_u32(u_input.a, max(u_input.a, arg_1.b.d))).c.wxy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(select(1u >= _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, 4294967295u), _wgslsmith_mult_u32(1u, u_input.a)), true, any(vec2<bool>(false, true))), false);
    global0 = array<vec2<i32>, 12>();
    var var_1 = func_5(-398f, func_4(Struct_2(abs(u_input.a), vec2<f32>(1f, 1f), func_1(vec3<i32>(-2147483647i, 37210i, 0i)), ~u_input.a, _wgslsmith_f_op_f32(sign(-2269f))), ~min(_wgslsmith_mult_u32(0u, 0u), u_input.a), u_input.a));
    var var_2 = func_4(func_4(func_4(func_4(func_4(Struct_2(4294967295u, var_1.a.a, var_1.b, 36292u, 339f), 1u, 53229u).b, 85319u >> (u_input.a % 32u), u_input.a).b, 0u, _wgslsmith_mult_u32(firstLeadingBit(81304u), u_input.a)).b, _wgslsmith_mult_u32(~(~u_input.a), ~u_input.a), u_input.a).b, min(0u, u_input.a), ~(~(~(4294967295u << (u_input.a % 32u)))));
    var var_3 = var_2.b.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(~firstTrailingBit(vec3<u32>(0u, var_2.b.d, var_2.b.d)), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_2.b.d, 47935u, var_2.b.d), vec3<u32>(u_input.a, 3178u, u_input.a)) | vec3<u32>(1u, 1u, ~0u), select(var_2.c.wyy, var_2.c.xwy, !var_1.c.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(656f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_f32(round(var_2.b.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-719f)) * _wgslsmith_f_op_f32(min(-1418f, -804f)))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1596f + var_2.b.e), 1464f)), var_2.b.b.x, 444f), !(!func_4(var_2.b, var_2.b.a, 0u).c.x))), select(~0i, var_2.a, !(!var_2.b.c.a)), i32(-1i) * -1i);
}

