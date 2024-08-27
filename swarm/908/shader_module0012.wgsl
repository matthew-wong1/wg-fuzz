struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(4294967295u, 50721u, 1084u, 10070u), vec4<u32>(55803u, 12248u, 4294967295u, 4294967295u), vec4<u32>(74221u, 27574u, 25556u, 4294967295u), vec4<u32>(54953u, 0u, 105391u, 0u), vec4<u32>(1u, 0u, 88799u, 109825u), vec4<u32>(22296u, 1636u, 4294967295u, 26440u), vec4<u32>(61084u, 23773u, 41251u, 2041u), vec4<u32>(13651u, 4294967295u, 25598u, 4294967295u), vec4<u32>(20024u, 27314u, 0u, 4294967295u), vec4<u32>(0u, 37895u, 0u, 0u), vec4<u32>(83242u, 1u, 0u, 12850u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(69005u, 17631u, 0u, 1u), vec4<u32>(17870u, 0u, 65361u, 13915u), vec4<u32>(19124u, 0u, 28011u, 0u), vec4<u32>(65081u, 1u, 21084u, 1u), vec4<u32>(60269u, 117082u, 0u, 29313u), vec4<u32>(5617u, 4294967295u, 4294967295u, 0u), vec4<u32>(4687u, 9291u, 0u, 4294967295u), vec4<u32>(79729u, 4294967295u, 1u, 14993u), vec4<u32>(0u, 0u, 1u, 9975u), vec4<u32>(70451u, 48991u, 4294967295u, 26865u), vec4<u32>(0u, 92107u, 893u, 4294967295u), vec4<u32>(53302u, 27185u, 0u, 19729u), vec4<u32>(50854u, 33514u, 4294967295u, 26547u), vec4<u32>(27815u, 11184u, 4294967295u, 1u));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<u32> {
    let var_0 = vec2<u32>(1u, reverseBits(firstTrailingBit(firstLeadingBit(~1396u))));
    var var_1 = vec3<bool>(true, !(u_input.a.x <= reverseBits(2147483647i)), select(true || !select(false, true, true), true, true));
    var var_2 = var_1.x;
    return ~vec2<u32>(var_0.x, firstLeadingBit(~(~var_0.x)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-abs(vec4<i32>(-26738i, -48181i, -20590i, arg_0)), abs(vec4<i32>(global0.x, 2147483647i, 0i, -4832i)), vec4<i32>(2147483647i, arg_0, -1i, global0.x) & -vec4<i32>(u_input.a.x, 25870i, 20112i, global0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x ^ arg_0, ~u_input.a.x, abs(u_input.a.x), _wgslsmith_mod_i32(-38594i, 16793i)), vec4<i32>(arg_0 ^ u_input.a.x, 40275i, firstLeadingBit(-12651i), max(11561i, global0.x)))), _wgslsmith_mult_vec3_i32(~(-(~global0.wwz)), vec3<i32>(arg_0, arg_0, firstTrailingBit(0i))), -_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-5727i, -28547i, arg_0), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.a.x), global0.xzz), ~vec3<i32>(global0.x, u_input.a.x, 42211i)), vec3<i32>(_wgslsmith_add_i32(u_input.a.x, 2147483647i), global0.x, u_input.a.x)));
    let var_1 = vec2<u32>(~abs(arg_2.x), 3716u) >> (func_3() % vec2<u32>(32u));
    let var_2 = true;
    var var_3 = vec2<i32>(u_input.a.x, 0i);
    var var_4 = Struct_2(firstTrailingBit(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~arg_2.x), min(var_1.x, reverseBits(2257u)), 4294967295u), 26u)]), arg_2.xy);
    return Struct_3(0i, vec3<i32>(_wgslsmith_clamp_i32(var_0.b.x & global0.x, 1i, u_input.a.x >> (4294967295u % 32u)), _wgslsmith_mod_i32(-global0.x, arg_0 & var_3.x), _wgslsmith_add_i32(1i, ~(-1i))) >> (~(abs(vec3<u32>(76335u, 25125u, 1u)) >> (~var_4.a.wzz % vec3<u32>(32u))) % vec3<u32>(32u)), firstLeadingBit(firstLeadingBit(arg_0)));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-378f - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) * arg_1))));
    global1 = array<vec4<u32>, 26>();
    global1 = array<vec4<u32>, 26>();
    global1 = array<vec4<u32>, 26>();
    global1 = array<vec4<u32>, 26>();
    return vec4<i32>(47438i, -_wgslsmith_mod_i32(-1i, -42478i), -2147483647i, ~(-1i));
}

fn func_1() -> vec2<u32> {
    global0 = -countOneBits(_wgslsmith_mult_vec4_i32(func_4(func_2(u_input.a.x, vec2<f32>(-339f, 1494f), vec3<u32>(15315u, 100249u, 7121u), vec4<bool>(false, false, false, true)), _wgslsmith_f_op_f32(f32(-1f) * -568f)), select(firstLeadingBit(vec4<i32>(global0.x, 100i, 2147483647i, global0.x)), vec4<i32>(global0.x, 1i, global0.x, u_input.a.x) >> (vec4<u32>(64703u, 48200u, 1u, 49991u) % vec4<u32>(32u)), true)));
    global1 = array<vec4<u32>, 26>();
    var var_0 = Struct_1(((_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(17845u, 0u)) >> (~903u % 32u)) & 11381u) << (countOneBits(0u) % 32u), !all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))));
    var_0 = Struct_1(1u, any(select(select(vec4<bool>(var_0.b, var_0.b, var_0.b, true), select(vec4<bool>(var_0.b, var_0.b, false, false), vec4<bool>(false, true, false, var_0.b), vec4<bool>(var_0.b, false, true, true)), true), select(vec4<bool>(false, var_0.b, var_0.b, false), select(vec4<bool>(var_0.b, false, var_0.b, false), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<bool>(false, var_0.b, var_0.b, var_0.b)), !vec4<bool>(false, var_0.b, var_0.b, var_0.b)), !vec4<bool>(true, var_0.b, var_0.b, false))));
    let var_1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~54804u, ~var_0.a, min(109918u, var_0.a)), vec3<u32>(_wgslsmith_mult_u32(0u, var_0.a), ~var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(70906u, 11139u, 1u, var_0.a), vec4<u32>(var_0.a, 38559u, 1u, 0u)))), ~(~56095u >> (0u % 32u))), !var_0.b & (var_0.b & true));
    return (~max(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 33245u), vec2<u32>(var_0.a, var_0.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a, var_0.a), vec2<u32>(var_1.a, 51359u))) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u))) << (~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u) >> (~vec2<u32>(var_1.a, 1u) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, var_1.a, 4294967295u), vec4<u32>(var_0.a, var_0.a, var_1.a, 20780u)), ~60648u)) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global0.x, _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(global0.zyw, select(vec3<i32>(global0.x, 1i, u_input.a.x), global0.zyz, vec3<bool>(true, true, false))), countOneBits(~global0.yxy)) ^ ((-global0.zyw & vec3<i32>(global0.x, global0.x, u_input.a.x)) ^ _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(global0.x, u_input.a.x, u_input.a.x)), global0.xyz)), _wgslsmith_mult_i32(firstLeadingBit((global0.x & 19548i) | u_input.a.x), _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(global0.x, -10312i), u_input.a)), -u_input.a << (~vec2<u32>(71592u, 1u) % vec2<u32>(32u)))));
    global0 = abs(vec4<i32>(-min(-9987i, ~var_0.b.x), ~_wgslsmith_clamp_i32(~global0.x, ~1i, u_input.a.x), 47664i, global0.x & -56797i));
    var var_1 = _wgslsmith_add_vec2_u32(select(vec2<u32>(1u, 1u), ~countOneBits(~vec2<u32>(19780u, 19115u)), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), any(vec3<bool>(true, true, true)))), func_1());
    let var_2 = var_0.c;
    var_1 = _wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(abs(~vec2<u32>(var_1.x, var_1.x)), vec2<u32>(var_1.x, ~48090u)), ~vec2<u32>(var_1.x, 14359u));
    var var_3 = vec2<bool>(true, true);
    let var_4 = Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(25981u, var_1.x) ^ var_1.x, 1u, ~4294967295u, _wgslsmith_mult_u32(41262u & var_1.x, 1u)), min(vec4<u32>(61921u, 40779u, var_1.x, var_1.x), ~global1[_wgslsmith_index_u32(var_1.x, 26u)]) ^ firstTrailingBit(abs(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)))), vec2<u32>(61438u, func_1().x));
    let x = u_input.a;
    s_output = StorageBuffer(global0.www);
}

