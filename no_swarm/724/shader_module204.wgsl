struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, 0u);

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<u32>(4294967295u, 23268u, 29372u, 31242u), Struct_1(true, 12415u, 1630f, -1776f)), Struct_2(vec4<u32>(44023u, 1u, 62190u, 1u), Struct_1(false, 1u, -1334f, 1485f)), Struct_2(vec4<u32>(304u, 66793u, 4294967295u, 4294967295u), Struct_1(false, 27450u, 2157f, 100f)), Struct_2(vec4<u32>(28419u, 4294967295u, 0u, 1u), Struct_1(false, 11035u, -1321f, 1144f)), Struct_2(vec4<u32>(0u, 4294967295u, 81047u, 29781u), Struct_1(false, 707u, 1538f, -1028f)), Struct_2(vec4<u32>(0u, 21541u, 1u, 1u), Struct_1(false, 81860u, 928f, -1557f)), Struct_2(vec4<u32>(4294967295u, 52204u, 1u, 73860u), Struct_1(false, 5017u, -1970f, -897f)), Struct_2(vec4<u32>(6930u, 1u, 37332u, 4294967295u), Struct_1(true, 1u, -946f, -994f)), Struct_2(vec4<u32>(4147u, 34000u, 4294967295u, 48938u), Struct_1(false, 0u, -282f, 794f)), Struct_2(vec4<u32>(29771u, 1u, 62699u, 16953u), Struct_1(false, 4294967295u, -1000f, 396f)), Struct_2(vec4<u32>(43483u, 21840u, 1u, 32440u), Struct_1(true, 70544u, -350f, -817f)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 52486u, 0u), Struct_1(false, 4294967295u, 952f, 1743f)), Struct_2(vec4<u32>(6467u, 6746u, 13687u, 4294967295u), Struct_1(true, 4294967295u, 1428f, -1187f)), Struct_2(vec4<u32>(1u, 4294967295u, 66936u, 0u), Struct_1(true, 4294967295u, 202f, -628f)), Struct_2(vec4<u32>(0u, 51658u, 4294967295u, 1u), Struct_1(true, 39453u, -1897f, -149f)), Struct_2(vec4<u32>(8479u, 38785u, 28742u, 61694u), Struct_1(false, 6044u, -735f, -232f)), Struct_2(vec4<u32>(26841u, 1u, 6306u, 0u), Struct_1(true, 5400u, 1000f, 576f)), Struct_2(vec4<u32>(1u, 66735u, 0u, 0u), Struct_1(true, 1u, -156f, 770f)), Struct_2(vec4<u32>(20480u, 12019u, 0u, 58464u), Struct_1(true, 60326u, -1000f, 405f)), Struct_2(vec4<u32>(14562u, 1u, 14969u, 4294967295u), Struct_1(true, 77027u, 856f, 243f)), Struct_2(vec4<u32>(1867u, 4294967295u, 18801u, 1u), Struct_1(true, 0u, 348f, -1068f)), Struct_2(vec4<u32>(30485u, 1u, 18686u, 15873u), Struct_1(false, 10899u, 892f, 559f)), Struct_2(vec4<u32>(19319u, 1u, 4294967295u, 1u), Struct_1(false, 13638u, -2353f, 1842f)), Struct_2(vec4<u32>(7751u, 1u, 33035u, 4294967295u), Struct_1(false, 0u, 1831f, 1000f)), Struct_2(vec4<u32>(1u, 1u, 39154u, 0u), Struct_1(true, 2969u, 103f, 2139f)), Struct_2(vec4<u32>(0u, 42967u, 0u, 41830u), Struct_1(false, 1u, -629f, 1270f)));

var<private> global2: i32 = -41445i;

var<private> global3: array<Struct_1, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> vec3<f32> {
    let var_0 = -2147483647i;
    global1 = array<Struct_2, 26>();
    let var_1 = _wgslsmith_mod_u32(20993u ^ (0u & reverseBits(u_input.c.x)), 0u);
    let var_2 = _wgslsmith_f_op_f32(min(-1080f, -1000f));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2))) + arg_0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(round(-446f))))), _wgslsmith_f_op_f32(472f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1366f) + _wgslsmith_div_f32(-918f, -206f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, var_2, false))) + _wgslsmith_f_op_f32(min(367f, _wgslsmith_f_op_f32(-var_2)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(516f))))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec4<f32>) -> u32 {
    global3 = array<Struct_1, 29>();
    return arg_1.x;
}

fn func_2() -> vec2<f32> {
    global3 = array<Struct_1, 29>();
    var var_0 = ~(-vec4<i32>(1i, 1i, 1i, 1i)) >> (~(~(~(~vec4<u32>(41376u, 17573u, 0u, global0.b)))) % vec4<u32>(32u));
    var var_1 = _wgslsmith_add_u32(firstTrailingBit(select(_wgslsmith_sub_u32(~0u, global0.b ^ 11257u), 68195u, !all(vec3<bool>(global0.a, false, global0.a)))), 28252u >> (1u % 32u));
    global1 = array<Struct_2, 26>();
    let var_2 = func_4(Struct_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(-499f))))), Struct_2(countOneBits(vec4<u32>(20202u, u_input.a, 0u, 29675u) & vec4<u32>(u_input.b.x, global0.b, u_input.c.x, 22075u)), global3[_wgslsmith_index_u32(0u, 29u)]), -13573i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(-1000f)).x + -629f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -748f), _wgslsmith_f_op_f32(select(293f, -1000f, false)), select(global0.a, true, true))), global0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(535f, 685f, 589f)))), u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1871f, 1000f, 203f, 1019f)))))));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-850f - -221f) * 1077f), _wgslsmith_f_op_f32(floor(1438f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1382f, -1870f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1297f, -2691f)))), !vec2<bool>(true, global0.a))))));
}

fn func_1() -> vec2<i32> {
    global1 = array<Struct_2, 26>();
    var var_0 = global1[_wgslsmith_index_u32(global0.b, 26u)];
    global3 = array<Struct_1, 29>();
    let var_1 = ~firstLeadingBit(global0.b) & (var_0.a.x << (_wgslsmith_mod_u32(_wgslsmith_div_u32(firstTrailingBit(32803u), ~var_0.b.b), _wgslsmith_div_u32(u_input.b.x ^ 0u, u_input.b.x ^ var_0.b.b)) % 32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-541f, var_0.b.c), vec2<f32>(var_0.b.c, var_0.b.c), vec2<bool>(true, var_0.b.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(776f, var_0.b.d) * vec2<f32>(var_0.b.c, var_0.b.d))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.d, 406f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.c, var_0.b.d) * vec2<f32>(var_0.b.c, var_0.b.d))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0.b.d, var_0.b.c), -801f) - _wgslsmith_f_op_vec2_f32(func_2()))))));
    return ~vec2<i32>(-(-52536i >> (_wgslsmith_sub_u32(var_0.b.b, global0.b) % 32u)), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(~func_1(), vec2<i32>(-26565i, 1i)), -2147483647i, 0i, select(-1i, -(_wgslsmith_sub_i32(2147483647i, 21321i) << (~u_input.c.x % 32u)), true));
    let var_2 = select(select(select(!(!vec3<bool>(global0.a, global0.a, false)), !(!vec3<bool>(false, global0.a, false)), select(!vec3<bool>(true, global0.a, false), vec3<bool>(global0.a, global0.a, true), select(vec3<bool>(false, true, global0.a), vec3<bool>(global0.a, global0.a, global0.a), global0.a))), !select(!vec3<bool>(true, false, global0.a), vec3<bool>(true, false, true), false), !(all(vec3<bool>(false, global0.a, global0.a)) || any(vec4<bool>(true, true, true, global0.a)))), select(vec3<bool>(any(!vec3<bool>(global0.a, global0.a, global0.a)), any(select(vec3<bool>(false, false, false), vec3<bool>(global0.a, false, false), global0.a)), false), !vec3<bool>(global0.a, !global0.a, false), select(!(!vec3<bool>(true, global0.a, true)), select(select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(global0.a, true, true), vec3<bool>(global0.a, global0.a, true)), !vec3<bool>(global0.a, true, true), !vec3<bool>(global0.a, false, global0.a)), true)), select(vec3<bool>(all(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(global0.a, true, true), vec3<bool>(global0.a, global0.a, true))), global0.a), !vec3<bool>(global0.a && global0.a, select(true, global0.a, global0.a), global0.a), global0.a));
    global0 = Struct_3(global0.a, _wgslsmith_add_u32(reverseBits(global0.b), _wgslsmith_div_u32(u_input.d.x, ~4294967295u)) & select(min(u_input.d.x & global0.b, select(global0.b, 37385u, true)), firstTrailingBit(~36299u), false));
    let var_3 = select(!(!vec3<bool>(u_input.c.x <= global0.b, any(vec2<bool>(global0.a, true)), all(var_2.zx))), var_2, global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1250f - -349f)) - 995f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-743f)))), ~vec3<u32>(global0.b, ~1u, 60291u));
}

