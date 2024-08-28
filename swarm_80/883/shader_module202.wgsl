struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-307f, -990f), vec2<f32>(944f, -1206f), vec2<f32>(-190f, 1000f), vec2<f32>(1175f, -526f), vec2<f32>(-1269f, -149f), vec2<f32>(734f, 723f), vec2<f32>(-408f, -241f), vec2<f32>(-468f, 591f), vec2<f32>(1000f, 893f), vec2<f32>(1276f, 1268f), vec2<f32>(877f, 1000f), vec2<f32>(-1214f, 1151f), vec2<f32>(-1000f, -1335f), vec2<f32>(-486f, -253f), vec2<f32>(-1000f, 180f), vec2<f32>(-1143f, 263f), vec2<f32>(320f, -694f), vec2<f32>(474f, 434f), vec2<f32>(528f, -1353f), vec2<f32>(833f, -244f), vec2<f32>(-1353f, -850f), vec2<f32>(447f, 114f), vec2<f32>(693f, 718f), vec2<f32>(973f, -1000f), vec2<f32>(-392f, -1000f), vec2<f32>(-836f, -328f));

var<private> global1: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<i32>) -> vec4<f32> {
    let var_0 = Struct_1(vec4<f32>(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1588f) * _wgslsmith_f_op_f32(trunc(292f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1.a.x)))))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -134f)), _wgslsmith_f_op_vec4_f32(global1.a - vec4<f32>(global1.b.x, global1.a.x, global1.b.x, -881f)), u_input.a.x, vec2<i32>(~24487i, _wgslsmith_div_i32(arg_0.x, 12241i)), u_input.b.x & (0u >> (_wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(global1.e, 4294967295u))) % 32u)));
    var var_1 = _wgslsmith_f_op_f32(-503f + -995f) <= _wgslsmith_f_op_f32(max(global1.b.x, var_0.b.x));
    let var_2 = Struct_2(vec3<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_div_i32(arg_0.x << (1u % 32u), -42122i) == -1i, !all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)))), ~firstTrailingBit(abs(var_0.c & -2147483647i)), 4294967295u);
    var var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~max(vec2<u32>(var_0.e, u_input.c), vec2<u32>(global1.e, var_2.c)) >> (vec2<u32>(4294967295u, ~1u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.b, ~(~vec2<u32>(global1.e, 1u))), u_input.b << (u_input.b % vec2<u32>(32u))), min(vec2<u32>(~var_2.c, _wgslsmith_dot_vec4_u32(vec4<u32>(16068u, 45506u, 4294967295u, var_2.c), vec4<u32>(21080u, 1u, var_2.c, var_2.c))), ~countOneBits(~vec2<u32>(4294967295u, u_input.b.x))));
    let var_4 = var_0;
    return var_0.a;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.b.x, -387f, -554f, 1750f))) - _wgslsmith_f_op_vec4_f32(func_3(abs(vec4<i32>(2147483647i, arg_0.b, arg_1.b, arg_1.b))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_2.b.x)), global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(exp2(global1.b.x))))), global1.b, -21382i, vec2<i32>(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_mult_i32(7989i, 61894i) & arg_0.b), firstTrailingBit(global1.c)), _wgslsmith_dot_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(1u, 1u, 1u, 0u))), vec4<u32>(~0u, u_input.b.x, global1.e, ~u_input.b.x)) & 37647u);
    var var_1 = ~(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(-27937i, arg_0.b, 2147483647i), firstTrailingBit(vec3<i32>(var_0.c, -1i, arg_2.c))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -848f))), global1.b.x);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(-arg_2.a.x))))));
    var var_4 = arg_2;
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec3<u32>, arg_3: u32) -> Struct_1 {
    global1 = func_2(Struct_2(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_sub_i32(-_wgslsmith_sub_i32(2147483647i, arg_1), ~(2147483647i << (arg_0 % 32u))), arg_0), Struct_2(vec3<bool>(!(36824i == u_input.a.x), true, true), u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0, global1.e), _wgslsmith_mod_u32(global1.e, 4294967295u)), ~u_input.b.x)), Struct_1(_wgslsmith_div_vec4_f32(global1.a, global1.a), global1.a, _wgslsmith_sub_i32(~global1.d.x, -55197i), global1.d, max(1u, 0u)));
    let var_0 = true;
    global0 = array<vec2<f32>, 26>();
    var var_1 = Struct_2(select(select(select(select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, false), var_0), vec3<bool>(false, true, var_0), select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, false, var_0), vec3<bool>(false, false, var_0))), select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, true), vec3<bool>(true, var_0, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, !var_0, all(vec4<bool>(var_0, false, true, var_0)))), select(vec3<bool>(false, true, var_0), vec3<bool>(false, all(vec4<bool>(var_0, false, true, true)), false), select(select(vec3<bool>(var_0, var_0, true), vec3<bool>(true, true, var_0), var_0), !vec3<bool>(true, true, var_0), false)), !vec3<bool>(all(vec3<bool>(false, true, var_0)), all(vec3<bool>(true, false, var_0)), true)), _wgslsmith_dot_vec3_i32(max(~firstLeadingBit(vec3<i32>(arg_1, arg_1, 0i)), ~(vec3<i32>(global1.d.x, -1i, 0i) << (arg_2 % vec3<u32>(32u)))), abs(max(vec3<i32>(-1i, -6577i, arg_1), vec3<i32>(u_input.a.x, -36781i, global1.d.x)) | ~vec3<i32>(-1i, u_input.a.x, 0i))), global1.e);
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global1.a.yyz), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a.x - 347f))), _wgslsmith_f_op_f32(global1.b.x - 326f), global1.a.x), _wgslsmith_f_op_vec3_f32(ceil(global1.a.wzy)))));
    return func_2(Struct_2(!select(vec3<bool>(var_0, false, true), vec3<bool>(false, var_1.a.x, var_0), !var_0), -countOneBits(max(global1.d.x, global1.c)), arg_2.x), Struct_2(!(!var_1.a), _wgslsmith_clamp_i32(2147483647i, reverseBits(arg_1) & select(-2147483647i, 0i, false), i32(-1i) * -28919i), ~select(arg_2.x, reverseBits(arg_2.x), var_0)), Struct_1(func_2(Struct_2(select(var_1.a, vec3<bool>(false, var_0, true), true), func_2(Struct_2(var_1.a, -2147483647i, u_input.b.x), Struct_2(vec3<bool>(var_0, var_0, true), -2147483647i, 0u), Struct_1(global1.a, vec4<f32>(-859f, 1007f, -629f, -1041f), arg_1, global1.d, 4294967295u)).d.x, arg_2.x ^ 39004u), Struct_2(vec3<bool>(false, var_0, var_0), -20866i, ~arg_3), func_2(Struct_2(vec3<bool>(false, var_0, true), var_1.b, 4294967295u), Struct_2(var_1.a, arg_1, u_input.c), Struct_1(vec4<f32>(-608f, global1.a.x, global1.a.x, global1.a.x), global1.a, var_1.b, vec2<i32>(-58772i, arg_1), arg_0))).a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.x, -1190f, 917f, global1.b.x), vec4<f32>(global1.a.x, var_2.x, 1265f, var_2.x), true)))))), ~u_input.a.x, ~(-abs(u_input.a)), ~(~52489u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_1) -> vec4<f32> {
    global1 = arg_3;
    let var_0 = true;
    global0 = array<vec2<f32>, 26>();
    global0 = array<vec2<f32>, 26>();
    var var_1 = arg_1.a.x;
    return func_1((arg_1.c & _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_3.e, arg_0.e, global1.e), countOneBits(vec3<u32>(0u, 88485u, 4294967295u)))) >> (func_1(2553u, 1i, ~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.e, 1u, 0u), vec3<u32>(4294967295u, 0u, 1u)), countOneBits(_wgslsmith_clamp_u32(4294967295u, global1.e, global1.e))).e % 32u), ~_wgslsmith_add_i32(1i, 1i), abs(vec3<u32>(_wgslsmith_add_u32(98660u, global1.e), u_input.b.x & 1u, 23049u) >> (vec3<u32>(~65602u, ~27514u, arg_3.e) % vec3<u32>(32u))), 86530u).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_4(func_1(abs(~global1.e), u_input.a.x, vec3<u32>(abs(global1.e), global1.e ^ global1.e, global1.e), 15701u), Struct_2(vec3<bool>(any(vec2<bool>(true, true)), true, true), 1i, ~(~58446u)), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -19i), vec2<i32>(global1.c, -2147483647i)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), _wgslsmith_add_vec2_u32(u_input.b, u_input.b)) % vec2<u32>(32u)), func_2(Struct_2(vec3<bool>(false, true, false), u_input.a.x, global1.e), Struct_2(vec3<bool>(false, false, true), u_input.a.x, ~35528u), func_1(global1.e, 2147483647i, reverseBits(vec3<u32>(global1.e, 106746u, 11457u)), select(4294967295u, global1.e, false))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(global1.b.x)), global1.b.x, 2007f, global1.b.x), _wgslsmith_mult_i32(16071i, ~(-34306i)), func_1(reverseBits(func_2(Struct_2(vec3<bool>(true, false, true), 0i, 22259u), Struct_2(vec3<bool>(false, true, true), global1.c, u_input.b.x), Struct_1(vec4<f32>(global1.b.x, global1.b.x, global1.a.x, global1.a.x), global1.a, -10547i, vec2<i32>(global1.c, u_input.a.x), 0u)).e), u_input.a.x << (global1.e % 32u), ~(~abs(vec3<u32>(global1.e, u_input.c, u_input.b.x))), func_1(~4294967295u, 22896i, ~vec3<u32>(10163u, u_input.c, 1u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c, 30866u), vec3<u32>(u_input.c, u_input.c, global1.e)) % vec3<u32>(32u)), _wgslsmith_sub_u32(4294967295u, reverseBits(18021u))).e).d, min(~(~_wgslsmith_mod_u32(u_input.b.x, global1.e)), 1u));
    global1 = func_1(u_input.c, ~(_wgslsmith_div_i32(func_1(global1.e, global1.d.x, vec3<u32>(u_input.b.x, global1.e, 1u), 1u).c, var_0.c) >> (reverseBits(u_input.b.x) % 32u)), _wgslsmith_mod_vec3_u32(select(~(vec3<u32>(global1.e, u_input.b.x, 1u) >> (vec3<u32>(var_0.e, 7545u, 4294967295u) % vec3<u32>(32u))), ~max(vec3<u32>(4294967295u, 0u, var_0.e), vec3<u32>(global1.e, 1u, var_0.e)), vec3<bool>(true, true, true)), vec3<u32>(_wgslsmith_div_u32(u_input.c, 12419u) | global1.e, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(47968u, u_input.b.x, 17256u, global1.e)), vec4<u32>(72615u, 0u, global1.e, u_input.c)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(23733u, u_input.b.x), ~1u, 0u))), 0u);
    let var_1 = _wgslsmith_f_op_f32(floor(func_2(Struct_2(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, false))), -38789i, global1.e), Struct_2(vec3<bool>(true, true, true), 0i << (u_input.b.x % 32u), ~(28555u << (var_0.e % 32u))), Struct_1(func_2(Struct_2(vec3<bool>(false, false, true), 13732i, 0u), Struct_2(vec3<bool>(true, false, true), u_input.a.x, global1.e), Struct_1(vec4<f32>(global1.b.x, var_0.b.x, -1201f, global1.a.x), var_0.a, var_0.c, u_input.a, 5869u)).b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, var_0.b.x, global1.b.x, -1188f)), 34539i >> (~var_0.e % 32u), ~_wgslsmith_div_vec2_i32(var_0.d, var_0.d), global1.e)).b.x));
    let var_2 = 1000f;
    global1 = func_2(Struct_2(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), var_0.e >= u_input.c), false), u_input.a.x, func_1(select(_wgslsmith_sub_u32(var_0.e, u_input.b.x), var_0.e, true), i32(-1i) * -20501i, max(vec3<u32>(33627u, var_0.e, 37802u) | vec3<u32>(var_0.e, 4294967295u, var_0.e), ~vec3<u32>(var_0.e, 0u, global1.e)), global1.e).e), Struct_2(vec3<bool>(true, true, select(all(vec3<bool>(true, true, false)), true, true)), -(~(~(-39119i))), var_0.e), var_0);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1579f, -965f, var_0.a.x, 710f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global1.b)) * vec4<f32>(193f, -522f, var_0.a.x, -854f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1418f)), global1.b.x, 466f, var_0.a.x), global1.b))), global1.c ^ 67257i, min(-_wgslsmith_add_vec2_i32(-vec2<i32>(0i, -54378i), vec2<i32>(81993i, -2147483647i) ^ u_input.a), vec2<i32>(var_0.c, firstLeadingBit(min(global1.c, var_0.c)))), ~global1.e);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

