struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(31422u, 1u), vec2<u32>(4294967295u, 12721u))), ~1u) << (~0u % 32u), 6u)];
    let var_1 = Struct_2(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~var_0.x, _wgslsmith_clamp_u32(var_0.x, var_0.x, var_0.x), 56575u << (var_0.x % 32u)), ~vec3<u32>(var_0.x, 1u, 0u)), reverseBits(vec3<u32>(_wgslsmith_div_u32(var_0.x, 0u), ~4294967295u, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(51051u, 6u)])))), Struct_1(vec4<i32>(_wgslsmith_mult_i32(-u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(23185i, u_input.b), u_input.a)), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, -426i, -7724i), select(vec3<i32>(-1i, -7772i, u_input.a.x), vec3<i32>(1i, -23569i, 1i), false)), u_input.a.x >> (0u % 32u), _wgslsmith_add_i32(~u_input.a.x, u_input.a.x)), arg_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-825f, 1733f, arg_0.x, -1076f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, -404f, -539f, arg_0.x))))), ~_wgslsmith_clamp_vec2_u32(min(var_0.xy, var_0.zz), var_0.yz & vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, var_0.x))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true))));
    let var_2 = var_1.c;
    let var_3 = var_1;
    return var_1.a.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(~func_3(vec2<f32>(952f, -106f)), ~(~4294967295u), ~1u), vec3<u32>(countOneBits(~4294967295u), reverseBits(~17345u), select(~36219u, 0u, u_input.a.x == -55051i))), Struct_1(vec4<i32>(-1i, u_input.b, 2147483647i, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -264f, arg_0.x, -1709f)))), firstTrailingBit(~(~vec2<u32>(15653u, 0u)))), vec3<bool>(!(true != all(vec4<bool>(true, true, true, false))), !all(vec3<bool>(true, false, false)) || true, true));
    global0 = array<vec3<u32>, 6>();
    return Struct_2(~firstTrailingBit(vec3<u32>(29442u, var_0.b.d.x ^ var_0.b.d.x, ~19922u)), var_0.b, vec3<bool>(true, var_0.c.x, !var_0.c.x));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = -736i;
    var_0 = -(~(firstLeadingBit(u_input.a.x >> (arg_1.x % 32u)) << (arg_1.x % 32u)));
    let var_1 = func_2(arg_2.xy, _wgslsmith_div_vec3_f32(arg_2, arg_2));
    var_0 = firstTrailingBit(20825i);
    var var_2 = var_1.b.a;
    return Struct_4(-2081f, Struct_2(vec3<u32>(15636u, ~arg_1.x, var_1.a.x), Struct_1(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b.a.x, 0i, 7383i, u_input.a.x), var_1.b.a), 840f, vec4<f32>(_wgslsmith_f_op_f32(select(arg_2.x, var_1.b.c.x, arg_0)), -900f, var_1.b.b, _wgslsmith_f_op_f32(trunc(var_1.b.c.x))), ~(vec2<u32>(arg_1.x, 1u) & var_1.a.zz)), var_1.c), true, i32(-1i) * -var_1.b.a.x, Struct_3(Struct_2(min(vec3<u32>(1u, arg_1.x, var_1.b.d.x) << (var_1.a % vec3<u32>(32u)), ~arg_1), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_2.x, 7033i, var_1.b.a.x), var_1.b.a), arg_2.x, vec4<f32>(arg_2.x, 217f, var_1.b.b, -1640f), ~var_1.b.d), var_1.c), vec4<f32>(_wgslsmith_div_f32(var_1.b.b, _wgslsmith_f_op_f32(ceil(var_1.b.b))), _wgslsmith_div_f32(_wgslsmith_div_f32(-1435f, arg_2.x), 1000f), _wgslsmith_f_op_f32(-arg_2.x), 739f), _wgslsmith_clamp_i32(-48375i, u_input.a.x, 0i), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.b.c.yw, vec2<f32>(-692f, arg_2.x), vec2<bool>(false, arg_0))) + _wgslsmith_div_vec2_f32(var_1.b.c.zz, vec2<f32>(arg_2.x, arg_2.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(arg_2)))))));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec4<f32>) -> bool {
    var var_0 = func_1(any(arg_0.b.c.zz), vec3<u32>(arg_0.b.a.x, _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(arg_0.b.b.d, arg_0.e.a.a.zx), ~(~57953u)), _wgslsmith_add_u32(~max(arg_0.b.b.d.x, 25179u), ~arg_0.e.d.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1438f, _wgslsmith_f_op_f32(floor(-1149f)), arg_0.a) * vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.b.b - arg_2.x), arg_2.x, arg_2.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1017f, arg_0.a, -1151f) - vec3<f32>(arg_2.x, arg_2.x, -852f)))));
    let var_1 = func_2(arg_0.e.d.b.c.yw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.b.x, 1048f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-var_0.e.b.x)))))).b;
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.b.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-205f - var_1.b))), _wgslsmith_f_op_f32(-var_1.c.x))), arg_2, arg_0.b.a.zy);
    var_0 = func_1(all(select(var_0.e.d.c.yx, !var_0.e.d.c.xx, !vec2<bool>(var_0.b.c.x, true))), arg_0.b.a, _wgslsmith_f_op_vec3_f32(-var_2.c.zyz));
    var var_3 = select(vec3<bool>(var_0.e.a.c.x, var_0.b.c.x, arg_0.b.c.x), arg_0.b.c, vec3<bool>(!arg_1 & true, all(arg_0.b.c.yy) != true, arg_0.b.c.x));
    return true & (1106f <= arg_0.e.d.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 6>();
    global0 = array<vec3<u32>, 6>();
    var var_0 = select(true && func_4(func_1(any(vec2<bool>(false, false)), max(global0[_wgslsmith_index_u32(27647u, 6u)], global0[_wgslsmith_index_u32(16017u, 6u)]), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -458f, -887f), vec3<f32>(662f, 920f, 1329f)))), false, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-2058f, 602f, 321f, -855f), vec4<f32>(653f, -1059f, -810f, -157f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-314f, 1307f, -537f, -204f) - vec4<f32>(1435f, -2549f, 1097f, 998f))))), any(vec2<bool>(true, true || any(vec2<bool>(false, true)))), true);
    var_0 = func_4(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1036f + -1118f) + _wgslsmith_f_op_f32(ceil(729f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -259f) + _wgslsmith_f_op_f32(-119f * -184f))), func_1(true, ~vec3<u32>(1u, 4294967295u, 4294967295u), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(954f, -1969f) - vec2<f32>(1449f, -794f)), vec3<f32>(457f, 2251f, 1478f)).b.c.yyx).e.d, true, u_input.b, Struct_3(func_1(any(vec3<bool>(false, false, true)), vec3<u32>(1u, 1u, 1u), vec3<f32>(1f, 1f, 1f)).b, func_2(vec2<f32>(-216f, 305f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-585f, 933f, 383f)))).b.c, 1i, func_1(true, vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(553f, 687f, -474f)))).e.a)), all(select(vec3<bool>(true, true, true), vec3<bool>(func_1(false, global0[_wgslsmith_index_u32(1u, 6u)], vec3<f32>(1000f, 1266f, 449f)).e.d.c.x, any(vec3<bool>(true, true, true)), true), func_2(vec2<f32>(460f, -537f), vec3<f32>(-468f, -1185f, -2234f)).c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-427f, _wgslsmith_f_op_f32(f32(-1f) * -1254f), _wgslsmith_f_op_f32(trunc(-785f)), -2360f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(272f, 1667f, -407f, -1082f)) - func_2(vec2<f32>(-731f, -871f), vec3<f32>(-437f, 865f, 368f)).b.c))));
    global0 = array<vec3<u32>, 6>();
    let var_1 = ~(~(~vec2<u32>(abs(8252u), func_3(vec2<f32>(390f, -383f)))));
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(1197f, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-540f, _wgslsmith_f_op_f32(f32(-1f) * -2150f)), 1f, -433f) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1123f, -297f), _wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(193f + -782f)), vec3<f32>(1f, 1f, 1f))));
}

