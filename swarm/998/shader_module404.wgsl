struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
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

var<private> global0: f32;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-261f, vec3<bool>(false, true, false), vec4<u32>(28095u, 0u, 2432u, 4294967295u), vec4<bool>(true, true, false, false)), Struct_1(795f, vec3<bool>(true, false, true), vec4<u32>(38224u, 4294967295u, 4294967295u, 4294967295u), vec4<bool>(true, false, true, false)), Struct_1(1000f, vec3<bool>(false, false, false), vec4<u32>(4294967295u, 54573u, 26452u, 4294967295u), vec4<bool>(true, true, false, true)), Struct_1(903f, vec3<bool>(false, true, true), vec4<u32>(18371u, 0u, 40027u, 0u), vec4<bool>(false, false, false, true)), Struct_1(1219f, vec3<bool>(true, false, true), vec4<u32>(43393u, 1u, 4294967295u, 1u), vec4<bool>(false, false, true, true)), Struct_1(-586f, vec3<bool>(false, true, false), vec4<u32>(99486u, 4294967295u, 1905u, 1u), vec4<bool>(false, false, true, false)), Struct_1(902f, vec3<bool>(false, true, false), vec4<u32>(19431u, 8170u, 10447u, 61688u), vec4<bool>(true, false, true, false)), Struct_1(974f, vec3<bool>(false, false, false), vec4<u32>(36890u, 36850u, 0u, 36527u), vec4<bool>(false, false, false, false)), Struct_1(929f, vec3<bool>(false, false, true), vec4<u32>(0u, 2479u, 1u, 4528u), vec4<bool>(false, false, true, false)), Struct_1(-682f, vec3<bool>(false, false, true), vec4<u32>(0u, 35193u, 17931u, 1u), vec4<bool>(false, false, false, true)), Struct_1(742f, vec3<bool>(false, true, true), vec4<u32>(45597u, 10050u, 37353u, 55656u), vec4<bool>(false, false, false, false)), Struct_1(899f, vec3<bool>(true, true, false), vec4<u32>(2177u, 4294967295u, 0u, 0u), vec4<bool>(true, false, true, true)), Struct_1(640f, vec3<bool>(true, true, true), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<bool>(true, true, true, false)), Struct_1(-291f, vec3<bool>(true, true, true), vec4<u32>(22639u, 0u, 1u, 0u), vec4<bool>(false, true, true, true)), Struct_1(1500f, vec3<bool>(false, true, true), vec4<u32>(36057u, 20940u, 29574u, 4294967295u), vec4<bool>(false, true, true, true)), Struct_1(-247f, vec3<bool>(true, false, true), vec4<u32>(60730u, 4294967295u, 65760u, 0u), vec4<bool>(true, true, false, false)), Struct_1(1000f, vec3<bool>(false, false, false), vec4<u32>(18512u, 1u, 4294967295u, 0u), vec4<bool>(false, true, true, false)), Struct_1(-1053f, vec3<bool>(true, false, true), vec4<u32>(0u, 0u, 4294967295u, 184u), vec4<bool>(false, false, false, true)), Struct_1(-294f, vec3<bool>(true, true, true), vec4<u32>(1u, 89260u, 16376u, 4294967295u), vec4<bool>(false, true, true, false)), Struct_1(-116f, vec3<bool>(true, true, true), vec4<u32>(7323u, 1u, 56577u, 4491u), vec4<bool>(false, true, false, true)), Struct_1(146f, vec3<bool>(true, true, true), vec4<u32>(4294967295u, 15546u, 1u, 53069u), vec4<bool>(false, true, false, false)), Struct_1(1759f, vec3<bool>(true, false, false), vec4<u32>(40732u, 1u, 22236u, 30093u), vec4<bool>(true, true, false, false)), Struct_1(844f, vec3<bool>(true, false, false), vec4<u32>(12304u, 1u, 0u, 43657u), vec4<bool>(false, true, true, true)), Struct_1(603f, vec3<bool>(false, false, true), vec4<u32>(4386u, 107041u, 0u, 0u), vec4<bool>(false, false, false, true)), Struct_1(-1741f, vec3<bool>(true, false, true), vec4<u32>(25737u, 4294967295u, 4294967295u, 0u), vec4<bool>(false, true, true, true)), Struct_1(277f, vec3<bool>(true, true, false), vec4<u32>(0u, 45463u, 65839u, 0u), vec4<bool>(true, true, true, true)), Struct_1(558f, vec3<bool>(false, true, true), vec4<u32>(1u, 1u, 1u, 12010u), vec4<bool>(true, false, true, false)), Struct_1(1000f, vec3<bool>(false, false, false), vec4<u32>(1u, 0u, 41799u, 38026u), vec4<bool>(false, false, false, true)), Struct_1(-821f, vec3<bool>(false, true, false), vec4<u32>(79141u, 14143u, 0u, 30871u), vec4<bool>(false, false, true, true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(vec3<bool>(true, all(vec3<bool>(true, true, true)), true), firstTrailingBit(44443u), u_input.a);
    let var_1 = select(vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(136f)), _wgslsmith_f_op_f32(abs(-1912f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f * 754f)), !var_0.a.x, any(!select(vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(false, false), var_0.a.zz)), true), vec4<bool>(var_0.a.x || true, var_0.a.x, all(vec4<bool>(true, !var_0.a.x, true, var_0.a.x)), any(vec4<bool>(var_0.a.x, var_0.a.x && var_0.a.x, var_0.a.x, !var_0.a.x))), select(!(!(!vec4<bool>(true, false, true, var_0.a.x))), vec4<bool>(-334f < _wgslsmith_f_op_f32(trunc(-506f)), all(select(var_0.a, var_0.a, var_0.a)), !any(var_0.a.yx), true), var_0.a.x));
    let var_2 = 3098i;
    let var_3 = vec3<u32>(~(~u_input.a), 31569u, 4294967295u);
    global0 = _wgslsmith_f_op_f32(266f - -1232f);
    return select(var_0.a, !select(vec3<bool>(any(var_0.a.zy), false, 14253u > var_0.c), vec3<bool>(var_0.a.x, any(vec4<bool>(false, false, true, var_1.x)), all(vec3<bool>(var_1.x, true, false))), select(var_1.zzw, vec3<bool>(true, false, var_1.x), var_0.a)), select(vec3<bool>(!any(var_0.a), !all(vec3<bool>(var_1.x, true, true)), false), vec3<bool>(1u > _wgslsmith_mult_u32(u_input.a, 1u), all(select(vec3<bool>(var_1.x, var_0.a.x, false), var_1.ywz, var_1.x)), select(var_1.x, true, true)), any(!var_1.xyx) || true));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = ~(~arg_1.c.xwx);
    var var_1 = arg_2;
    let var_2 = vec3<bool>(arg_0, func_3().x, !(!(true || !arg_2.a.x)));
    let var_3 = arg_2.c << (~var_1.b % 32u);
    var var_4 = select(arg_1.d, select(vec4<bool>(var_1.a.x, all(vec3<bool>(true, arg_2.a.x, false)), all(vec4<bool>(true, var_1.a.x, false, false)), !(arg_1.b.x && arg_2.a.x)), arg_1.d, false), select(arg_1.d, select(vec4<bool>(false, all(arg_1.d), arg_1.d.x, true), !(!vec4<bool>(false, true, arg_2.a.x, true)), true), true));
    return arg_0;
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = vec2<bool>(arg_0 & func_4(arg_0, Struct_1(-391f, vec3<bool>(true, true, false), vec4<u32>(u_input.a, 24668u, u_input.a, u_input.a), vec4<bool>(arg_0, false, true, true)), Struct_2(func_3(), _wgslsmith_sub_u32(u_input.a, 72816u), 1u)), false);
    let var_1 = any(select(func_3().zz, vec2<bool>(~7261u < _wgslsmith_mult_u32(u_input.a, 1u), var_0.x), arg_0));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(633f)) * -544f) + _wgslsmith_f_op_f32(select(-1000f, -1036f, func_4(true, Struct_1(-730f, vec3<bool>(var_1, var_0.x, arg_0), vec4<u32>(32393u, u_input.a, 0u, 0u), vec4<bool>(var_1, var_1, true, var_1)), Struct_2(vec3<bool>(true, false, arg_0), 28700u, 0u)))))), -411f);
    let var_2 = _wgslsmith_sub_vec2_i32(~vec2<i32>(-14594i, ~1i), ~(~(-(vec2<i32>(0i, 0i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))))));
    var var_3 = Struct_2(vec3<bool>(true, false, var_1), max(_wgslsmith_add_u32(28000u, u_input.a), ~u_input.a), _wgslsmith_mult_u32(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_mod_u32(1u, 20407u)), _wgslsmith_sub_u32(u_input.a, ~0u)), ~firstLeadingBit(13797u)));
    return Struct_3(var_2);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: i32) -> vec3<f32> {
    let var_0 = func_2(!any(vec2<bool>(true, true)));
    let var_1 = 1445f;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), select(!func_3(), func_3(), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))), vec4<u32>(u_input.a, firstLeadingBit(~u_input.a), 0u, ~_wgslsmith_div_u32(11476u, 18574u) ^ _wgslsmith_sub_u32(13426u, u_input.a)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.a.x >= -7234i, false, true), true));
    var var_3 = -(vec3<i32>(-1i) * -vec3<i32>(-1i, 1i, ~(-50344i)));
    global0 = _wgslsmith_div_f32(-1378f, -924f);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1372f)) * _wgslsmith_f_op_f32(select(-235f, 267f, any(vec2<bool>(false, false))))), arg_0.x, -1366f));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = true;
    return _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 29u)];
    let var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, var_0.a, var_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec4<f32>(-1262f, -1232f, 241f, var_0.a), 0i, var_1)))))), abs(_wgslsmith_div_vec2_i32(func_2(true || var_0.d.x).a, vec2<i32>(var_1 | -46478i, var_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -219f)))))), global1[_wgslsmith_index_u32(var_0.c.x, 29u)]));
    let var_3 = !var_0.d.wx;
    var var_4 = _wgslsmith_mod_vec2_u32(~vec2<u32>(~(~53329u), ~_wgslsmith_mult_u32(14787u, var_0.c.x)), _wgslsmith_div_vec2_u32(var_0.c.xw, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(1u, u_input.a), countOneBits(var_0.c.x)), u_input.a)));
    let var_5 = var_1;
    var_4 = ~max(max(_wgslsmith_mult_vec2_u32(vec2<u32>(23157u, 1u), var_0.c.ww), var_0.c.yw << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(reverseBits(var_0.c.xy << (var_0.c.zz % vec2<u32>(32u))), var_0.c.zx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 654f, 537f)) + vec3<f32>(var_2, -1769f, var_2)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(875f, 329f, 2182f), vec3<f32>(var_0.a, var_2, var_0.a)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_0.a, 329f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(458f, -1000f, 1000f) - vec3<f32>(var_2, var_0.a, var_2))))), select(func_3(), vec3<bool>(!var_3.x, var_0.b.x | true, !var_0.b.x), vec3<bool>(func_4(var_0.b.x, Struct_1(-281f, vec3<bool>(false, true, var_0.b.x), var_0.c, vec4<bool>(var_3.x, false, var_0.b.x, var_3.x)), Struct_2(vec3<bool>(var_0.d.x, false, var_0.b.x), 0u, 0u)), func_3().x, 3758u <= var_4.x)))), min(~(~firstLeadingBit(var_4.x)), abs(var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), var_0.a)), ~1u, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~(vec2<i32>(var_5, -19304i) & vec2<i32>(2147483647i, var_1)), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 0i), -vec2<i32>(var_1, var_1))), var_5));
}

