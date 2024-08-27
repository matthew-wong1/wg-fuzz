struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<bool>) -> vec2<f32> {
    var var_0 = vec3<i32>(-26581i, _wgslsmith_mult_i32(arg_1, 2147483647i), abs(29045i));
    var_0 = -vec3<i32>(_wgslsmith_mod_i32(0i, var_0.x) >> (~u_input.b.x % 32u), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -6362i, 12020i), vec3<i32>(1i, var_0.x, arg_1))), _wgslsmith_div_i32(i32(-1i) * -8774i, arg_1));
    var var_1 = select(var_0.x, abs(var_0.x << (~u_input.a % 32u)), !arg_2.x) << (u_input.b.x % 32u);
    var var_2 = u_input.b.xyy;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -518f), -1564f))), _wgslsmith_f_op_f32(-arg_0.x)));
    return arg_0.xz;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_4(reverseBits(-1i), u_input.b.zww, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(558f, 1000f, 602f, arg_1)))), _wgslsmith_mod_i32(arg_2.x, _wgslsmith_clamp_i32(arg_0.x, arg_2.x, arg_2.x)), vec3<bool>(true, arg_1 == arg_1, true))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -431f) + -1545f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1329f))))));
    let var_1 = Struct_2(var_0.c, 1i, arg_2.x, Struct_1(select(~(~68649u), 89152u, any(vec2<bool>(true, true))), ~u_input.b.x, true, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(1i, 942i), ~arg_2.x), max(~(-9673i), firstLeadingBit(arg_2.x)), ~arg_0.x, -2147483647i)), Struct_1(6719u, 1u, !all(vec3<bool>(true, false, false)), vec4<i32>(~arg_0.x, _wgslsmith_sub_i32(0i, _wgslsmith_mult_i32(3957i, 32510i)), -1i, -1i)));
    return Struct_3(var_0.a, vec3<i32>(abs(~select(var_0.a, var_0.a, var_1.e.c)), max(arg_0.x, _wgslsmith_clamp_i32(arg_2.x | arg_2.x, _wgslsmith_mult_i32(23006i, var_1.c), ~0i)), _wgslsmith_clamp_i32(1i, reverseBits(arg_2.x), ~var_1.b) & abs(abs(arg_2.x))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1043f, -472f)), _wgslsmith_div_f32(396f, var_0.c.x)) * vec2<f32>(-945f, 1f)), var_1.e.d.x, -40200i, var_1.e, Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.d.b, var_1.e.a, var_0.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.e.b, u_input.b.x, u_input.a), u_input.b.wzx)), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b) << (var_0.b.x % 32u), (15996u < u_input.a) == var_1.e.c, ~var_1.d.d)), Struct_2(_wgslsmith_f_op_vec2_f32(-var_1.a), arg_2.x, 0i, Struct_1(2716u, select(~var_0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, 0u), vec2<u32>(u_input.a, var_1.e.b)), all(vec2<bool>(true, var_1.d.c))), !(!var_1.d.c), select(var_1.d.d, var_1.e.d, false) ^ firstTrailingBit(var_1.e.d)), Struct_1(~(~79881u), _wgslsmith_mod_u32(u_input.b.x, var_1.e.a), true || (arg_0.x > arg_2.x), firstTrailingBit(vec4<i32>(arg_0.x, 0i, 35428i, -2147483647i)))), Struct_1(~(_wgslsmith_add_u32(1u, var_1.d.a) >> (94827u % 32u)), firstLeadingBit(var_0.b.x) | firstLeadingBit(~24402u), !all(!vec3<bool>(true, var_1.e.c, false)), -var_1.e.d));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(arg_2.a.x));
    let var_1 = 1u;
    return arg_2.d;
}

fn func_1() -> u32 {
    let var_0 = func_4(func_2(_wgslsmith_mod_vec3_i32(-vec3<i32>(-48382i, 1i, 31848i), countOneBits(vec3<i32>(-1i, -1i, 2147483647i))) >> (~vec3<u32>(u_input.a, 51952u, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -896f)))), ~_wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, -20044i, 55008i, 0i), firstLeadingBit(vec4<i32>(-1i, -1i, -65882i, -59520i)))), vec3<u32>(~min(41332u & u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(28238u, 42091u), u_input.b.zz)), 4294967295u, countOneBits(u_input.b.x) << (u_input.b.x % 32u)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2938f - 712f) - _wgslsmith_div_f32(1425f, 323f)), -1594f), -30471i, ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(20549i, -2147483647i, 22483i), vec3<i32>(41401i, 1i, -2147483647i))), Struct_1(u_input.a, _wgslsmith_mult_u32(u_input.a, ~u_input.a), all(vec3<bool>(true, true, true)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-44723i, 0i, 0i, 29269i), vec4<i32>(-2609i, 1i, 29367i, 0i)))), Struct_1(_wgslsmith_add_u32(u_input.a, firstTrailingBit(0u)), ~u_input.b.x, false, firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -21195i, 1i, -2147483647i), vec4<i32>(55712i, 1i, -28328i, 15775i))))), select(vec3<bool>(_wgslsmith_mult_u32(u_input.b.x, 102145u) >= ~u_input.a, !select(false, true, true), any(vec3<bool>(true, true, true))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), any(vec3<bool>(all(vec4<bool>(false, false, true, false)), true, false))));
    var var_1 = false;
    var_1 = func_4(func_2(max(var_0.d.xwy, vec3<i32>(var_0.d.x, _wgslsmith_div_i32(var_0.d.x, 0i), min(var_0.d.x, var_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1903f, _wgslsmith_f_op_f32(f32(-1f) * -1300f)) * _wgslsmith_f_op_f32(ceil(-1000f))), -var_0.d), select(reverseBits(vec3<u32>(0u, u_input.b.x, var_0.a)), ~countOneBits(u_input.b.wzy), vec3<bool>(var_0.d.x <= -25045i, -1i < var_0.d.x, var_0.c)) ^ reverseBits(u_input.b.www), func_2(var_0.d.xxz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(828f - 373f) + _wgslsmith_div_f32(-124f, -271f))), vec4<i32>(var_0.d.x, 1i, ~(~(-47541i)), i32(-1i) * -var_0.d.x)).d, vec3<bool>(true, true, false)).c;
    let var_2 = var_0.c;
    var_1 = true;
    return ~_wgslsmith_mod_u32(4294967295u, ~(func_4(Struct_3(var_0.d.x, var_0.d.yxw, Struct_2(vec2<f32>(2306f, 957f), var_0.d.x, 1i, Struct_1(3904u, 10823u, false, vec4<i32>(-2147483647i, var_0.d.x, var_0.d.x, 0i)), Struct_1(1u, u_input.b.x, var_2, vec4<i32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x))), Struct_2(vec2<f32>(1240f, -1099f), var_0.d.x, var_0.d.x, Struct_1(u_input.b.x, 1493u, false, var_0.d), var_0), Struct_1(var_0.a, 8915u, var_0.c, var_0.d)), u_input.b.yyx, Struct_2(vec2<f32>(-837f, -248f), -14060i, var_0.d.x, Struct_1(u_input.b.x, var_0.a, var_2, var_0.d), Struct_1(15988u, var_0.a, var_0.c, var_0.d)), vec3<bool>(true, var_0.c, var_2)).a ^ _wgslsmith_add_u32(u_input.b.x, var_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_clamp_i32(-1i, 1052i, -16763i);
    let var_2 = Struct_1(u_input.a, abs(~56930u), true, vec4<i32>(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(select(-2147483647i, -2147483647i, true), 1i >> (u_input.a % 32u)), -2147483647i), -(~_wgslsmith_sub_i32(1i, 2147483647i)), -1i));
    let var_3 = var_2;
    var var_4 = _wgslsmith_mult_u32((1u & ~(u_input.a | 39732u)) << ((var_3.a << (~reverseBits(var_3.b) % 32u)) % 32u), func_1());
    var var_5 = _wgslsmith_mod_u32(var_3.b, _wgslsmith_div_u32(~var_3.b, ~firstTrailingBit(~4294967295u)));
    let var_6 = select(vec3<bool>(var_2.c && true, !func_2(vec3<i32>(-6415i, 30275i, var_2.d.x), -185f, vec4<i32>(2147483647i, 59073i, var_2.d.x, 2147483647i)).c.d.c | (firstTrailingBit(2604i) > (1i >> (u_input.b.x % 32u))), var_2.c), !select(select(vec3<bool>(true, true, false), !vec3<bool>(var_3.c, var_2.c, var_3.c), false), !select(vec3<bool>(var_3.c, false, false), vec3<bool>(var_3.c, true, true), vec3<bool>(true, true, var_3.c)), var_3.c), var_2.d.x < var_2.d.x);
    let var_7 = var_3.d.www;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - func_2(var_3.d.yzz, _wgslsmith_div_f32(-483f, -529f), vec4<i32>(var_7.x, var_7.x, 2147483647i, 2147483647i) & vec4<i32>(-2147483647i, var_2.d.x, var_7.x, -70795i)).d.a.x), 478f)));
}

