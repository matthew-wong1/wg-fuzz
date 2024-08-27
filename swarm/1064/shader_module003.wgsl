struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(1873f, 281f), vec2<f32>(-1096f, -377f), vec2<f32>(247f, -1713f), vec2<f32>(700f, -591f), vec2<f32>(690f, -563f), vec2<f32>(494f, -839f), vec2<f32>(1317f, 1442f), vec2<f32>(-988f, 1000f), vec2<f32>(143f, -152f), vec2<f32>(-1054f, -853f), vec2<f32>(-353f, 2068f), vec2<f32>(-569f, 2074f), vec2<f32>(-230f, -855f), vec2<f32>(1225f, -970f), vec2<f32>(439f, 1267f), vec2<f32>(235f, -335f), vec2<f32>(-621f, 2024f), vec2<f32>(-697f, 906f), vec2<f32>(119f, 262f), vec2<f32>(-174f, 1000f), vec2<f32>(-1178f, -252f), vec2<f32>(658f, -1116f));

var<private> global1: array<Struct_2, 31>;

var<private> global2: vec4<i32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    let var_0 = countOneBits(_wgslsmith_div_vec3_u32(countOneBits(~vec3<u32>(20396u, 10958u, arg_1.x)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_1.x, 9591u), abs(vec3<u32>(41642u, arg_1.x, arg_1.x)))) & ~reverseBits(vec3<u32>(arg_1.x, arg_1.x, arg_1.x)));
    global0 = array<vec2<f32>, 22>();
    var var_1 = var_0;
    var var_2 = select(select(vec2<bool>(true, all(vec4<bool>(true, true, true, true)) || false), vec2<bool>(true, true), select(vec2<bool>(any(vec4<bool>(false, false, true, false)), all(vec2<bool>(false, true))), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true), all(vec2<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)))));
    let var_3 = Struct_3(Struct_1(arg_0.a, arg_0.b, ~u_input.b, firstLeadingBit(_wgslsmith_clamp_i32(select(global2.x, u_input.b.x, true), arg_0.a.x, -u_input.b.x))), Struct_2(arg_0, _wgslsmith_f_op_f32(-arg_0.b), arg_0, Struct_1(-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_0.d, 1i, u_input.b.x), vec4<i32>(arg_0.c.x, u_input.a, -30991i, -43569i)), -1014f, -u_input.b, 0i)), 1i, Struct_1(_wgslsmith_add_vec4_i32(-arg_0.a, _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.x, 16646i, -63503i, 1i) << (vec4<u32>(0u, 4294967295u, 0u, var_0.x) % vec4<u32>(32u)), vec4<i32>(19099i, global2.x, 12336i, -1i))), 909f, abs(~(-vec2<i32>(11149i, arg_0.a.x))), arg_0.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.b))) * 1f));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1789f, 555f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1646f + -717f))), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(-9103i, 2147483647i, global2.x, global2.x) & vec4<i32>(29728i, 0i, global2.x, u_input.b.x), 1401f, abs(vec2<i32>(-2147483647i, global2.x)), countOneBits(-15798i)), abs(vec2<u32>(4294967295u, 21288u))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(-597f, 1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(108f * -193f), -226f)), -1011f, -810f)))));
    let var_1 = var_0.x;
    let var_2 = Struct_2(Struct_1(vec4<i32>(u_input.a, -2147483647i, u_input.b.x, -(i32(-1i) * -5784i)), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(global2.x, 1i, -1i, 30872i), _wgslsmith_f_op_f32(2259f + var_1), max(global2.zy, vec2<i32>(u_input.a, u_input.a)), -42011i), vec2<u32>(~985u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 36423u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u))))), _wgslsmith_sub_vec2_i32(-vec2<i32>(global2.x, u_input.a), global2.xy), ~countOneBits(global2.x)), var_0.x, Struct_1(-(_wgslsmith_div_vec4_i32(vec4<i32>(-15289i, global2.x, u_input.a, u_input.a), vec4<i32>(global2.x, global2.x, global2.x, 2147483647i)) ^ vec4<i32>(0i, global2.x, u_input.b.x, global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -498f), vec2<i32>(-1i) * -(u_input.b ^ vec2<i32>(-1i, global2.x)), 2147483647i), Struct_1(abs(vec4<i32>(global2.x, _wgslsmith_sub_i32(global2.x, -12890i), -2147483647i, _wgslsmith_clamp_i32(u_input.a, -5269i, -8i))), 170f, vec2<i32>(max(~(-46091i), u_input.a), u_input.c), 2147483647i));
    global2 = firstTrailingBit(~(~var_2.d.a));
    var var_3 = vec2<i32>(_wgslsmith_clamp_i32(max(~var_2.d.a.x, _wgslsmith_div_i32(-16880i, 2147483647i)) | reverseBits(var_2.c.a.x), 1i, -2147483647i), _wgslsmith_clamp_i32(var_2.d.a.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(var_2.c.a.x | var_2.a.a.x, global2.x), i32(-1i) * -u_input.b.x), 34335i));
    return var_2.b;
}

fn func_1() -> bool {
    global1 = array<Struct_2, 31>();
    return !(157f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(!(any(vec2<bool>(false, false)) & select(true, true, true)), all(vec3<bool>(func_1(), true, true)), true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false), vec4<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true))), !(true && any(vec2<bool>(true, true))), (_wgslsmith_f_op_f32(select(502f, 198f, true)) >= _wgslsmith_div_f32(1941f, -438f)) | all(vec3<bool>(true, false, true)), any(vec3<bool>(true, true, true))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-404f * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-413f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1080f - -457f)))), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -363f)));
    var var_2 = Struct_1(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(5200i, u_input.a, 2147483647i, 2147483647i), vec4<i32>(1121i, 18861i, -2147483647i, global2.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, 0i, -76302i), vec4<i32>(global2.x, 16625i, 2147483647i, 793i)))) | (vec4<i32>(global2.x, _wgslsmith_add_i32(global2.x, 1i), -global2.x, global2.x | global2.x) & -_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, 2147483647i, 14328i, -47789i), vec4<i32>(u_input.c, 1i, 33782i, u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -107f) * _wgslsmith_f_op_f32(ceil(var_1.x)))))), u_input.b, ~firstTrailingBit(2147483647i));
    let var_3 = ~(-_wgslsmith_clamp_i32(var_2.a.x, _wgslsmith_mod_i32(-2147483647i, 28645i), _wgslsmith_clamp_i32(var_2.d, 18212i, var_2.c.x))) ^ max(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(global2.x, global2.x, -1i), _wgslsmith_sub_vec3_i32(var_2.a.zyy, vec3<i32>(1i, u_input.b.x, var_2.c.x))), -1i), global2.x);
    let var_4 = Struct_4(~32122u, Struct_1(_wgslsmith_clamp_vec4_i32(max(var_2.a, vec4<i32>(var_2.c.x, -23429i, var_2.c.x, -2147483647i)), select(vec4<i32>(2147483647i, -1i, var_2.d, var_3), vec4<i32>(0i, u_input.c, global2.x, 23105i), var_0), vec4<i32>(-1i, 20763i, 27090i, -1i)) | vec4<i32>(i32(-1i) * -61863i, -1i, -51962i, var_2.a.x ^ var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + var_1.x) - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_mult_vec2_i32(var_2.a.zy, abs(vec2<i32>(u_input.c, -1i) ^ u_input.b)), 1i), var_0.zy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-221f, var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-688f * var_4.b.b) + _wgslsmith_div_f32(-586f, var_4.b.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b - -210f), _wgslsmith_f_op_f32(ceil(var_1.x)))))), abs(select(~(vec4<u32>(23092u, 26766u, var_4.a, 20974u) >> (vec4<u32>(0u, 2240u, var_4.a, var_4.a) % vec4<u32>(32u))), ~vec4<u32>(var_4.a, 48427u, 0u, 33895u) | vec4<u32>(13607u, var_4.a, 25032u, var_4.a), vec4<bool>(any(vec2<bool>(var_4.c.x, false)), false, var_0.x, 1323f <= var_1.x))), _wgslsmith_f_op_f32(abs(var_2.b)));
}

