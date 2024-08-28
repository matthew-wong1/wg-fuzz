struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(760f, 734f), vec2<f32>(519f, 1796f), vec2<f32>(-116f, -463f), vec2<f32>(-372f, -255f), vec2<f32>(150f, 138f), vec2<f32>(1282f, 806f), vec2<f32>(550f, -950f), vec2<f32>(-1119f, -279f), vec2<f32>(-1519f, 440f), vec2<f32>(-231f, 460f), vec2<f32>(1023f, -1000f), vec2<f32>(-116f, -1003f), vec2<f32>(393f, 405f), vec2<f32>(1000f, -724f), vec2<f32>(-533f, -1000f), vec2<f32>(1629f, 103f), vec2<f32>(430f, 785f), vec2<f32>(-414f, 214f), vec2<f32>(-683f, -402f), vec2<f32>(1961f, -113f));

var<private> global1: vec3<f32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec4<f32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-440f, 1000f, 1348f, _wgslsmith_f_op_f32(arg_2.x + -812f)));
    global0 = array<vec2<f32>, 20>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(-1148f)), vec4<bool>(arg_0, !(!any(vec2<bool>(arg_0, false))), true, true), ~(_wgslsmith_clamp_vec4_i32(vec4<i32>(-7124i, -1i, 1i, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.d.x, 59119i), vec4<i32>(-12435i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(-1i, u_input.a.x, -41730i, u_input.a.x)) ^ -(vec4<i32>(u_input.d.x, -8089i, u_input.d.x, 2147483647i) ^ vec4<i32>(u_input.d.x, 1i, 46336i, u_input.d.x))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(852f * -651f), global1.x)), var_1.a)))), _wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(floor(arg_1.b))), var_1.b.xw);
    global0 = array<vec2<f32>, 20>();
    return vec3<f32>(_wgslsmith_f_op_f32(1947f - var_1.a), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(trunc(-499f))), var_2.a);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, 167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_f_op_vec3_f32(func_3(true, Struct_3(898f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, arg_1.a, -355f, global1.x))), vec4<f32>(arg_1.a, global1.x, 1000f, 1157f)), arg_1.b.ww), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - -696f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + arg_1.a), -797f))), !(!(!arg_1.b.wzy))));
    var var_0 = select(arg_1.b.wy, select(vec2<bool>(true, arg_0.a & any(vec3<bool>(arg_1.b.x, arg_0.a, arg_0.a))), arg_1.b.wy, arg_1.b.wx), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, arg_1.a, 1446f, arg_1.a) + vec4<f32>(global1.x, arg_1.a, arg_1.a, 1131f))))) - vec4<f32>(1922f, arg_1.a, 1570f, _wgslsmith_f_op_f32(-arg_1.a))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(577f, global1.x, 120f, 778f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1592f, -524f, global1.x, 617f), vec4<f32>(-1462f, -611f, 1629f, arg_1.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.a, -744f, -177f, arg_1.a)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1086f, 1241f, global1.x, global1.x) * vec4<f32>(global1.x, 598f, -271f, global1.x)))))));
    global0 = array<vec2<f32>, 20>();
    var var_2 = ~select(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) ^ _wgslsmith_add_vec4_u32(vec4<u32>(0u, 34738u, u_input.b, u_input.b), vec4<u32>(0u, 44949u, 1u, 1u)), vec4<u32>(~1u, u_input.b, ~17014u, reverseBits(1u)), any(vec2<bool>(true, true))) & vec4<u32>(~abs(u_input.c), ~(~reverseBits(u_input.c)), 31046u, 55430u);
    return Struct_1(var_1.x, arg_1.b, vec4<i32>(countOneBits(4308i) & _wgslsmith_clamp_i32(reverseBits(-11904i), u_input.a.x, ~u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(~arg_1.c.x, 1i, 46891i), vec3<i32>(arg_1.c.x, u_input.d.x, 0i) >> (firstTrailingBit(var_2.yxx) % vec3<u32>(32u))), ~1i, _wgslsmith_clamp_i32(1i, 21543i, ~(arg_1.c.x << (5029u % 32u)))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: f32) -> vec2<bool> {
    global1 = arg_1;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + 351f);
    var var_1 = arg_0.b;
    var var_2 = !select(!arg_0.b.b.zw, select(!(!var_1.b.wx), vec2<bool>(var_1.b.x & arg_0.b.b.x, var_1.b.x), true), func_2(Struct_2(true), arg_0.b).b.yx);
    return vec2<bool>(var_2.x, !(arg_2 > 478f));
}

fn func_1(arg_0: vec2<f32>) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(step(global1.x, -1440f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global1.x, arg_0.x, arg_0.x), vec4<f32>(508f, global1.x, 1000f, arg_0.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, 1093f, arg_0.x, 1805f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1091f, 417f, arg_0.x, 535f))))), true)))), select(func_4(Struct_4(vec4<f32>(global1.x, global1.x, -600f, -660f), func_2(Struct_2(false), Struct_1(global1.x, vec4<bool>(true, true, false, false), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.a.x)))), vec3<f32>(650f, _wgslsmith_div_f32(global1.x, -1000f), 726f), global1.x), vec2<bool>(true, true), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true), select(true, true, false)))));
    let var_1 = Struct_4(vec4<f32>(global1.x, var_0.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(708f, -245f)) - _wgslsmith_f_op_f32(sign(var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(262f))))), 982f), Struct_1(var_0.b.x, vec4<bool>(func_4(Struct_4(var_0.b, Struct_1(286f, vec4<bool>(var_0.c.x, var_0.c.x, true, false), vec4<i32>(1i, 6957i, u_input.d.x, -30133i))), _wgslsmith_f_op_vec3_f32(-var_0.b.wxx), _wgslsmith_f_op_f32(select(-1000f, 1795f, var_0.c.x))).x, var_0.c.x, true, !var_0.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.a.x, -51474i, u_input.a.x)), u_input.a.x, 0i, max(u_input.d.x, -3258i)), firstLeadingBit(vec4<i32>(u_input.d.x, 29156i, u_input.d.x, u_input.a.x)))));
    let var_2 = Struct_2(all(!vec4<bool>(all(vec4<bool>(var_1.b.b.x, false, true, var_1.b.b.x)), true, true, var_1.b.b.x)));
    let var_3 = Struct_5(var_1.b, u_input.a.x, Struct_3(567f, var_0.b, var_1.b.b.zw), (abs(0u) ^ (_wgslsmith_div_u32(45513u, u_input.c) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.b, 0u, u_input.b)) % 32u))) >= min(4294967295u, ~u_input.b), var_2.a);
    global1 = var_3.c.b.xzy;
    return var_3.d;
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    return func_2(Struct_2(true), func_2(Struct_2(!arg_0 | true), func_2(Struct_2(!arg_0), Struct_1(_wgslsmith_f_op_f32(step(-2105f, global1.x)), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<i32>(u_input.a.x, arg_1.x, arg_1.x, arg_1.x)))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_5) -> vec4<bool> {
    return func_5(true, vec3<i32>(arg_1.b, select(u_input.d.x, -_wgslsmith_mod_i32(arg_1.a.c.x, u_input.a.x), true), _wgslsmith_div_i32(arg_0.c.x, 0i)), vec4<u32>(u_input.b, ~u_input.c, u_input.b, ~40133u), -func_2(Struct_2(true), func_5(false, _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.b, 18822i, -1i), arg_0.c.wxw), vec4<u32>(u_input.b, u_input.c, u_input.c, u_input.c) ^ vec4<u32>(47571u, u_input.c, u_input.b, 0u), -arg_0.c.x)).c.x).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-526f, global1.x), global0[_wgslsmith_index_u32(4294967295u, 20u)])))), _wgslsmith_div_vec3_i32(min(-u_input.d, countOneBits(vec3<i32>(1i, -1i, u_input.d.x))), -(~u_input.d)), min(~firstTrailingBit(vec4<u32>(22574u, 8753u, u_input.c, u_input.c)), reverseBits(vec4<u32>(0u, u_input.c, 27283u, u_input.b))), u_input.a.x), Struct_5(Struct_1(global1.x, func_2(Struct_2(false), Struct_1(-935f, vec4<bool>(false, true, true, true), vec4<i32>(2147483647i, -35604i, -2147483647i, 27218i))).b, vec4<i32>(u_input.d.x, u_input.a.x, 26384i, 40283i) | (vec4<i32>(-45975i, -26993i, u_input.a.x, 1i) & vec4<i32>(u_input.a.x, u_input.d.x, -1i, 2147483647i))), -12961i, Struct_3(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, 198f, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-109f, global1.x, -621f, 206f) + vec4<f32>(global1.x, 502f, -1379f, -997f)), vec4<bool>(false, false, false, true))), func_4(Struct_4(vec4<f32>(global1.x, -163f, 1849f, global1.x), Struct_1(871f, vec4<bool>(false, false, false, true), vec4<i32>(u_input.d.x, -37082i, u_input.d.x, u_input.a.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.x, global1.x, -1765f))), _wgslsmith_div_f32(global1.x, global1.x))), func_4(Struct_4(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-354f, -485f, global1.x, -868f))), func_2(Struct_2(true), Struct_1(global1.x, vec4<bool>(true, true, true, false), vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, 1i)))), vec3<f32>(425f, -110f, -1049f), global1.x).x, _wgslsmith_f_op_f32(-global1.x) <= _wgslsmith_div_f32(-1267f, -1096f)));
    global1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(1558f + global1.x)) - global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(false, Struct_3(-461f, vec4<f32>(214f, global1.x, -1545f, -643f), vec2<bool>(var_0.x, true)), vec4<f32>(761f, 1306f, global1.x, global1.x))).x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(global1.x + -1680f)))), global1.x, _wgslsmith_div_f32(func_5(u_input.d.x >= -1i, _wgslsmith_sub_vec3_i32(vec3<i32>(-43719i, u_input.a.x, u_input.d.x), u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.c, u_input.c, u_input.b)), 55169i).a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.x, var_0.x)))));
    global0 = array<vec2<f32>, 20>();
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 202f, -933f, global1.x) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, -214f, global1.x, 1000f), vec4<f32>(global1.x, global1.x, -2911f, global1.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 476f, global1.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-537f, global1.x, 1000f, 791f), vec4<f32>(-344f, -382f, global1.x, global1.x), false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)))), func_2(Struct_2(true), func_5(func_5(var_0.x, u_input.d, vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.c), 2147483647i).b.x != any(var_0.wx), ~(~u_input.d), vec4<u32>(abs(2124u), min(0u, 37370u), u_input.b, u_input.b & u_input.c), ~40105i)));
    let var_2 = !var_1.b.b;
    var var_3 = Struct_2(func_1(global0[_wgslsmith_index_u32(1u, 20u)]));
    let var_4 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(~40481u, 1u ^ u_input.c), ~(~(~u_input.b)));
    let var_5 = func_6(func_2(Struct_2(!(false || var_3.a)), Struct_1(-636f, !var_2, var_1.b.c)), Struct_5(func_2(Struct_2(false), Struct_1(-1163f, !var_1.b.b, var_1.b.c)), -(~(i32(-1i) * -1i)), Struct_3(var_1.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) + _wgslsmith_f_op_vec4_f32(var_1.a + var_1.a)), select(!vec2<bool>(var_0.x, var_2.x), func_5(var_3.a, u_input.d, vec4<u32>(u_input.b, 1u, 65249u, 4294967295u), var_1.b.c.x).b.zz, vec2<bool>(true, var_0.x))), _wgslsmith_f_op_f32(ceil(global1.x)) >= -365f, true));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_u32(vec2<u32>(15871u, _wgslsmith_mod_u32(u_input.c, var_4)), vec2<u32>(1u, ~91326u)), var_1.b.c.x, select(vec4<u32>(u_input.c, var_4, 29637u, abs(0u)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(30959u, u_input.b, u_input.c, u_input.c), vec4<u32>(45607u, var_4, var_4, 74121u))), select(func_2(Struct_2(true), Struct_1(299f, var_0, vec4<i32>(-18648i, 2147483647i, var_1.b.c.x, u_input.a.x))).b.x, func_4(Struct_4(vec4<f32>(359f, -1174f, var_1.a.x, global1.x), var_1.b), vec3<f32>(1528f, global1.x, -228f), global1.x).x, var_1.b.b.x)));
}

