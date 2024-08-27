struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(1321f, -272f), vec2<f32>(1224f, -520f), vec2<f32>(-1972f, 824f), vec2<f32>(-528f, 2558f), vec2<f32>(-902f, -1076f), vec2<f32>(-728f, 907f), vec2<f32>(-310f, 1859f), vec2<f32>(-1136f, 631f), vec2<f32>(-821f, -625f), vec2<f32>(-235f, 1112f), vec2<f32>(-131f, 1442f), vec2<f32>(410f, -282f), vec2<f32>(-170f, 339f), vec2<f32>(-147f, 263f), vec2<f32>(406f, -303f), vec2<f32>(2986f, 1175f), vec2<f32>(388f, -1408f), vec2<f32>(1605f, -803f), vec2<f32>(1198f, -1554f), vec2<f32>(-2609f, -131f), vec2<f32>(545f, -1000f), vec2<f32>(803f, -168f), vec2<f32>(245f, -1182f), vec2<f32>(-224f, 840f), vec2<f32>(497f, 1000f), vec2<f32>(420f, -2204f), vec2<f32>(-141f, -1544f), vec2<f32>(584f, -832f), vec2<f32>(-1372f, 1518f), vec2<f32>(299f, 565f), vec2<f32>(-486f, 172f), vec2<f32>(766f, 742f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: u32) -> u32 {
    var var_0 = arg_2.a;
    var_0 = arg_2.a;
    let var_1 = arg_3;
    var_0 = arg_2.a;
    global0 = array<vec2<f32>, 32>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(4294967295u), 1u), vec2<u32>(arg_1, ~_wgslsmith_div_u32(arg_1, 0u))) & _wgslsmith_sub_u32(min(~99422u, ~arg_0.d) ^ arg_0.d, arg_0.d | 0u);
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global0 = array<vec2<f32>, 32>();
    global0 = array<vec2<f32>, 32>();
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(223f * 2642f), _wgslsmith_f_op_f32(min(804f, -1843f)), -1306f, -913f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-204f, -784f, -618f, 898f)))))))));
    global0 = array<vec2<f32>, 32>();
    global0 = array<vec2<f32>, 32>();
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~80495u, 1u), func_2(Struct_1(vec2<bool>(true, false), vec3<f32>(-663f, 676f, 136f), 391f, 4294967295u), ~0u, Struct_3(Struct_2(1095f, vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec2<bool>(false, true))), max(45053u, 27138u)), select(min(4294967295u, 4294967295u), 20860u, func_3(vec4<i32>(u_input.a, u_input.a, 0i, -2147483647i)))), firstLeadingBit(~vec3<u32>(1u, 4294967295u, 0u))), _wgslsmith_div_u32(abs(6601u), max(~firstLeadingBit(0u), ~1u)), select(~(~(~4294967295u)), 57618u, !any(vec4<bool>(true, false, false, true))));
    global0 = array<vec2<f32>, 32>();
    var var_1 = _wgslsmith_f_op_f32(round(-973f));
    var var_2 = Struct_1(!vec2<bool>(all(vec2<bool>(false, true)), true), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2393f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(882f, -866f)), _wgslsmith_f_op_f32(476f + -1000f), all(vec3<bool>(true, false, false))))), _wgslsmith_div_f32(-2121f, _wgslsmith_f_op_f32(f32(-1f) * -309f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1422f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1441f))), ~var_0.x);
    global0 = array<vec2<f32>, 32>();
    return Struct_1(select(!(!select(vec2<bool>(var_2.a.x, false), vec2<bool>(false, false), false)), !var_2.a, select(var_2.a, select(select(var_2.a, var_2.a, false), var_2.a, var_2.a.x), !var_2.a)), var_2.b, _wgslsmith_f_op_f32(-1f), abs(_wgslsmith_clamp_u32(countOneBits(~70506u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_0, vec3<u32>(24375u, var_0.x, var_2.d)), max(vec3<u32>(var_0.x, var_0.x, 55212u), vec3<u32>(var_0.x, var_0.x, 0u))), ~(var_2.d | 57469u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_3 {
    global0 = array<vec2<f32>, 32>();
    global0 = array<vec2<f32>, 32>();
    let var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1064f - -1000f), _wgslsmith_f_op_f32(select(1000f, arg_1.c, false)), arg_1.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~(max(arg_1.d >> (arg_0.x % 32u), _wgslsmith_add_u32(arg_0.x, arg_0.x)) ^ 39854u));
    var var_1 = func_1().b.x;
    var var_2 = -1i;
    return Struct_3(Struct_2(var_0.c, select(vec3<bool>(func_3(vec4<i32>(u_input.a, u_input.a, u_input.a, 20741i)), any(vec3<bool>(arg_1.a.x, arg_1.a.x, false)), !arg_1.a.x), select(vec3<bool>(false, true, arg_1.a.x), vec3<bool>(false, arg_1.a.x, false), true), vec3<bool>(all(vec4<bool>(false, false, true, arg_1.a.x)), var_0.d <= var_0.d, !arg_1.a.x)), vec3<bool>(arg_1.a.x, true, func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 6328i), vec4<i32>(u_input.a, u_input.a, 0i, -18773i)))), !vec2<bool>(!var_0.a.x, all(vec3<bool>(false, true, var_0.a.x)))));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    global0 = array<vec2<f32>, 32>();
    let var_0 = func_4(reverseBits(abs(~vec3<u32>(35571u, 4294967295u, 5900u))), Struct_1(arg_0.a.c.xx, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a * arg_0.a.a) * arg_0.a.a), _wgslsmith_f_op_f32(arg_0.a.a * arg_0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -290f))), arg_0.a.a, _wgslsmith_div_u32(min(23076u, 4294967295u), select(_wgslsmith_div_u32(12994u, 43280u), _wgslsmith_mod_u32(36062u, 4294967295u), arg_0.a.d.x)))).a.a;
    let var_1 = func_4(_wgslsmith_clamp_vec3_u32(~countOneBits(vec3<u32>(4294967295u, 4294967295u, 1u)) ^ vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 12484u, 32500u, 81661u), vec4<u32>(0u, 6308u, 1u, 0u)), 20074u, _wgslsmith_mod_u32(4294967295u, 14665u)), countOneBits(vec3<u32>(~1u, 1u, ~66570u)), select(~vec3<u32>(1u, 54858u, 0u), ~(~vec3<u32>(83119u, 47562u, 0u)), select(func_4(vec3<u32>(1u, 0u, 9119u), Struct_1(vec2<bool>(arg_0.a.d.x, arg_0.a.c.x), vec3<f32>(1058f, -344f, -1000f), arg_0.a.a, 4294967295u)).a.b, arg_0.a.c, arg_0.a.b.x))), func_1()).a.c;
    global0 = array<vec2<f32>, 32>();
    global0 = array<vec2<f32>, 32>();
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-286f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-716f + _wgslsmith_f_op_f32(f32(-1f) * -1675f))))), func_4(reverseBits(vec3<u32>(1u, 1u, 1u)), Struct_1(select(func_1().a, func_1().a, var_1.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, arg_0.a.a, -200f) + vec3<f32>(arg_0.a.a, -1000f, arg_0.a.a)))), -1221f, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(3838u, 23547u, 0u), vec3<u32>(4294967295u, 4294967295u, 58415u)), ~vec3<u32>(12002u, 2345u, 0u)))).a.c, vec3<bool>(false, true, var_1.x), !select(arg_0.a.b.xz, var_1.zx, arg_0.a.c.zy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(vec3<u32>(1u, 1u, 1u), func_1()));
    let var_1 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(u_input.a), u_input.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))), func_1().d, 35090i);
}

