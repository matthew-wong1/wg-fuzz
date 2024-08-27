struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(0u, 22564u, 17737u), vec3<u32>(0u, 10746u, 17497u), vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 1u, 93326u), vec3<u32>(38978u, 104397u, 105583u), vec3<u32>(17385u, 1u, 48725u), vec3<u32>(23779u, 4294967295u, 31269u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(41535u, 9801u, 4253u), vec3<u32>(1u, 21428u, 1u), vec3<u32>(68730u, 19073u, 23025u), vec3<u32>(30358u, 68080u, 87535u), vec3<u32>(12767u, 4294967295u, 4294967295u), vec3<u32>(28503u, 4294967295u, 5795u), vec3<u32>(1u, 14715u, 11238u), vec3<u32>(43955u, 1u, 28527u), vec3<u32>(29937u, 1u, 0u), vec3<u32>(4294967295u, 6982u, 3113u), vec3<u32>(0u, 27661u, 72195u), vec3<u32>(1u, 1u, 34549u), vec3<u32>(0u, 18647u, 62379u), vec3<u32>(3873u, 1527u, 0u), vec3<u32>(3896u, 0u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 49014u, 24821u), vec3<u32>(1u, 116236u, 95400u), vec3<u32>(44128u, 0u, 4294967295u), vec3<u32>(0u, 12225u, 74781u), vec3<u32>(58554u, 0u, 76272u), vec3<u32>(0u, 1u, 1u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    global1 = array<vec3<u32>, 30>();
    var var_0 = Struct_3(~38340u, -6743i, false, vec2<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(406f * arg_1) - _wgslsmith_f_op_f32(arg_1 + arg_1)) * _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(arg_1 - -784f)))));
    let var_1 = select(vec4<bool>(!all(!vec4<bool>(false, false, var_0.c, true)), any(!vec2<bool>(true, var_0.c)), var_0.c, var_0.c), !vec4<bool>(false, false, !(var_0.a <= 64497u), var_0.c), select(select(select(select(vec4<bool>(var_0.c, true, var_0.c, false), vec4<bool>(var_0.c, false, var_0.c, false), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c)), select(vec4<bool>(true, false, var_0.c, false), vec4<bool>(true, false, var_0.c, true), true), var_0.c), !(!vec4<bool>(var_0.c, var_0.c, false, true)), any(vec2<bool>(var_0.c, true))), !(!(!vec4<bool>(var_0.c, true, var_0.c, var_0.c))), select(vec4<bool>(all(vec4<bool>(true, true, var_0.c, true)), true, all(vec2<bool>(var_0.c, false)), var_0.c || true), vec4<bool>(!var_0.c, var_0.c, false, false), select(vec4<bool>(true, true, false, true), select(vec4<bool>(var_0.c, var_0.c, true, var_0.c), vec4<bool>(false, var_0.c, var_0.c, false), vec4<bool>(false, false, false, false)), !vec4<bool>(var_0.c, true, true, var_0.c)))));
    var var_2 = Struct_1(all(var_1.wy), ~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.a, 46628u, 4294967295u, 31024u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, 4294967295u, 1u, 0u), vec4<u32>(var_0.a, var_0.a, 4294967295u, 1u)))), var_0.d.x, 1i);
    var_2 = Struct_1(var_1.x, abs(_wgslsmith_mult_vec4_u32(~var_2.b >> (vec4<u32>(var_2.b.x, var_0.a, var_0.a, var_2.b.x) % vec4<u32>(32u)), var_2.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_2.c)), _wgslsmith_f_op_f32(f32(-1f) * -935f))))), (abs(-1i) ^ _wgslsmith_mod_i32(-1i, u_input.a.x)) ^ -_wgslsmith_sub_i32(-1i, var_0.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x - var_0.d.x));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1374f, 1255f)))));
    global0 = false;
    global0 = true;
    let var_1 = _wgslsmith_add_i32(u_input.a.x, u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(func_3(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-499f * 1000f))));
    return Struct_1(false, ~select(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 24464u, 1u, 40918u), vec4<u32>(26792u, 6818u, 43511u, 68745u)), any(vec3<bool>(false, true, true))) & max(firstLeadingBit(vec4<u32>(4294967295u, 1u, 88676u, 1u)), vec4<u32>(_wgslsmith_mod_u32(0u, 101738u), max(1u, 0u), max(25284u, 1u), select(108432u, 36644u, false))), -503f, _wgslsmith_mult_i32(firstTrailingBit(min(-10655i, -43009i)), min(42471i, -var_1)));
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: Struct_1) -> Struct_2 {
    var var_0 = !select(vec2<bool>(any(vec3<bool>(arg_2.a, false, true)), (arg_2.a || true) != all(vec4<bool>(arg_1.a.a, true, arg_1.a.a, arg_2.a))), vec2<bool>(true, true), !arg_0);
    global1 = array<vec3<u32>, 30>();
    var_0 = select(select(!select(!vec2<bool>(arg_0, arg_1.a.a), vec2<bool>(arg_1.a.a, arg_2.a), vec2<bool>(false, var_0.x)), select(vec2<bool>(true, any(vec4<bool>(true, true, var_0.x, arg_0))), select(vec2<bool>(true, true), vec2<bool>(var_0.x, true), vec2<bool>(false, arg_1.a.a)), !(!vec2<bool>(var_0.x, arg_1.b.c))), all(vec3<bool>(!arg_0, true, !var_0.x))), select(select(select(vec2<bool>(var_0.x, arg_2.a), !vec2<bool>(var_0.x, false), arg_0), vec2<bool>(any(vec4<bool>(false, true, arg_1.a.a, true)), any(vec4<bool>(arg_1.a.a, arg_2.a, true, true))), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), any(vec3<bool>(true, false, arg_2.a)))), !select(select(vec2<bool>(arg_0, true), vec2<bool>(false, var_0.x), vec2<bool>(true, false)), vec2<bool>(arg_1.b.c, arg_0), true), arg_1.a.a), arg_2.a || arg_1.a.a);
    var_0 = !vec2<bool>(!any(vec2<bool>(true, true)), true);
    var_0 = select(select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, arg_2.a), vec2<bool>(arg_1.b.c, arg_2.a)), !vec2<bool>(var_0.x, true), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, true), select(vec2<bool>(arg_1.a.a, arg_2.a), !vec2<bool>(arg_2.a, arg_0), arg_2.a)), vec2<bool>(var_0.x || true, !(!var_0.x)), true), !select(!vec2<bool>(false, arg_0), select(select(vec2<bool>(arg_1.b.c, arg_1.a.a), vec2<bool>(true, arg_2.a), vec2<bool>(true, arg_1.b.c)), vec2<bool>(arg_2.a, false), true | var_0.x), true), select(select(!(!vec2<bool>(true, arg_2.a)), vec2<bool>(true, false), arg_1.b.a < ~arg_1.b.a), select(select(vec2<bool>(false, arg_0), !vec2<bool>(arg_1.b.c, true), arg_2.a || var_0.x), !(!vec2<bool>(var_0.x, false)), (arg_2.b.x < arg_2.b.x) != arg_1.b.c), select(!(!vec2<bool>(var_0.x, arg_0)), !vec2<bool>(arg_2.a, arg_0), true)));
    return Struct_2(vec2<bool>(!arg_1.b.c != arg_2.a, !(-336f > _wgslsmith_f_op_f32(floor(arg_1.a.c)))), 26069u, vec2<i32>(-1i) * -(vec2<i32>(0i, 27487i) & abs(u_input.a)));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(true, Struct_5(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -182f), 1f))), Struct_3(56582u, u_input.a.x, any(vec2<bool>(true, true)), _wgslsmith_div_vec2_f32(vec2<f32>(536f, -419f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(179f, -157f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(707f, 1539f, -1113f))) * vec3<f32>(910f, -635f, -1000f)))), Struct_1(true, ~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-252f * 386f)), 24890i));
    global1 = array<vec3<u32>, 30>();
    global1 = array<vec3<u32>, 30>();
    global1 = array<vec3<u32>, 30>();
    let var_1 = var_0.a.x;
    return StorageBuffer(_wgslsmith_add_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b, 1u, 10955u, 13789u) & vec4<u32>(var_0.b, 50037u, var_0.b, var_0.b), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, 37474u, var_0.b, var_0.b), vec4<u32>(33421u, 4294967295u, 1u, 712u))), min(firstTrailingBit(vec4<u32>(1641u, var_0.b, var_0.b, 1u)), vec4<u32>(39544u, 0u, var_0.b, var_0.b)), !select(var_0.a.x, var_1, var_1)), firstLeadingBit(min(vec4<u32>(var_0.b, var_0.b, 4294967295u, 17248u) >> (vec4<u32>(var_0.b, 1u, var_0.b, 21260u) % vec4<u32>(32u)), vec4<u32>(var_0.b, var_0.b, 15972u, 40191u)))), ~(firstTrailingBit(1u) ^ select(74034u, var_0.b, var_0.a.x)) ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 15495u, var_0.b, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(15430u, var_0.b, 0u, var_0.b), vec4<u32>(var_0.b, 1u, 51440u, 22760u), vec4<u32>(var_0.b, var_0.b, 1u, 1326u))) | firstTrailingBit(0u)), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.x >> (var_0.b % 32u), -31701i | u_input.a.x, var_0.c.x, _wgslsmith_mod_i32(16222i, 7687i)), select(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 18110i, -49004i, -1i), vec4<i32>(u_input.a.x, 0i, var_0.c.x, -11568i)), ~vec4<i32>(38250i, var_0.c.x, u_input.a.x, 7227i), var_1))), vec2<u32>(1u ^ ~func_2(-185f).b.x, ~reverseBits(var_0.b)), -vec2<i32>(-1i, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

