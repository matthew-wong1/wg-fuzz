struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, true, false, true, true, true, true, true);

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<f32>(914f, 754f), vec4<i32>(3857i, -20807i, i32(-2147483648), 1i), vec2<i32>(19873i, 16904i), vec2<i32>(47576i, 0i)), Struct_1(vec2<f32>(487f, -646f), vec4<i32>(-48790i, -37690i, -6862i, -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(0i, -29793i)), Struct_1(vec2<f32>(1114f, 1789f), vec4<i32>(-57230i, 2147483647i, -11906i, 36942i), vec2<i32>(2147483647i, 1i), vec2<i32>(19629i, 23663i)), Struct_1(vec2<f32>(225f, 570f), vec4<i32>(i32(-2147483648), -31394i, -53957i, 31116i), vec2<i32>(i32(-2147483648), 30075i), vec2<i32>(0i, -46336i)), Struct_1(vec2<f32>(-559f, 1902f), vec4<i32>(-1i, 2147483647i, 1i, 6139i), vec2<i32>(-18011i, -14828i), vec2<i32>(-23229i, -35887i)), Struct_1(vec2<f32>(1137f, 1095f), vec4<i32>(-16190i, 17594i, -1i, 16962i), vec2<i32>(-1i, 56184i), vec2<i32>(620i, i32(-2147483648))), Struct_1(vec2<f32>(843f, -2292f), vec4<i32>(-8866i, 1i, 0i, 1i), vec2<i32>(27197i, -21754i), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<f32>(-436f, 1581f), vec4<i32>(-40524i, -14104i, 0i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(35139i, 34610i)), Struct_1(vec2<f32>(1328f, 729f), vec4<i32>(-22087i, 20352i, -8799i, 2147483647i), vec2<i32>(40355i, 0i), vec2<i32>(2147483647i, 1i)), Struct_1(vec2<f32>(-1751f, 1192f), vec4<i32>(1i, i32(-2147483648), -5198i, 52367i), vec2<i32>(-7649i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -44882i)), Struct_1(vec2<f32>(1083f, 327f), vec4<i32>(2147483647i, -1139i, -34574i, -15349i), vec2<i32>(-1i, -12455i), vec2<i32>(26636i, 2889i)), Struct_1(vec2<f32>(-589f, 1000f), vec4<i32>(-1i, 48288i, 0i, 2147483647i), vec2<i32>(-3241i, 95153i), vec2<i32>(1i, -1i)), Struct_1(vec2<f32>(-101f, 1000f), vec4<i32>(i32(-2147483648), 0i, 1i, 4418i), vec2<i32>(-37304i, i32(-2147483648)), vec2<i32>(-2792i, -57753i)), Struct_1(vec2<f32>(-445f, -1000f), vec4<i32>(45737i, 1i, 8156i, -35986i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(64281i, -14897i)), Struct_1(vec2<f32>(993f, 1225f), vec4<i32>(2147483647i, 0i, i32(-2147483648), i32(-2147483648)), vec2<i32>(22986i, 2147483647i), vec2<i32>(-1i, -28502i)), Struct_1(vec2<f32>(2683f, 873f), vec4<i32>(18480i, 2829i, 0i, 2147483647i), vec2<i32>(-5630i, -9509i), vec2<i32>(2424i, 35877i)), Struct_1(vec2<f32>(-905f, 475f), vec4<i32>(19580i, 21651i, 38029i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<f32>(323f, -1534f), vec4<i32>(16449i, 27875i, 2147483647i, i32(-2147483648)), vec2<i32>(48942i, i32(-2147483648)), vec2<i32>(29345i, -1i)), Struct_1(vec2<f32>(479f, -901f), vec4<i32>(-1i, -36114i, -26743i, 79282i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-6683i, 15947i)), Struct_1(vec2<f32>(-841f, -386f), vec4<i32>(1i, 0i, 1i, 1i), vec2<i32>(-7773i, 0i), vec2<i32>(32399i, 2147483647i)), Struct_1(vec2<f32>(-301f, 1000f), vec4<i32>(2147483647i, 2147483647i, -1i, 16088i), vec2<i32>(-12477i, 25487i), vec2<i32>(36588i, 2147483647i)), Struct_1(vec2<f32>(771f, -716f), vec4<i32>(-73782i, 0i, 0i, i32(-2147483648)), vec2<i32>(-16635i, i32(-2147483648)), vec2<i32>(2147483647i, 2985i)));

var<private> global2: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1596f), 1f))), select(vec4<i32>(8474i, u_input.a, 1i, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(3307i, u_input.a), vec2<i32>(u_input.b, 12822i)), u_input.b << (arg_0.x % 32u), u_input.b, ~u_input.b), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 26701i, u_input.a, -2147483647i), vec4<i32>(2147483647i, u_input.b, 2147483647i, u_input.b)))), vec4<bool>(!any(vec2<bool>(true, false)), false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(33335u, arg_0.x), arg_0), vec2<u32>(1u, 4294967295u)), 8u)], global0[_wgslsmith_index_u32(~arg_0.x, 8u)])), abs(vec2<i32>(countOneBits(30157i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -47652i, u_input.b), vec3<i32>(18830i, u_input.a, -21253i)))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(34501i), 1i, u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, -22767i), vec4<i32>(u_input.b, u_input.b, u_input.a, 1i))), (vec4<i32>(u_input.a, 3120i, u_input.b, u_input.a) | vec4<i32>(u_input.a, -1i, -2147483647i, u_input.b)) ^ (vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.a) & vec4<i32>(u_input.a, u_input.a, -28829i, u_input.b))), u_input.b));
    var var_1 = Struct_2(-550f, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.x, countOneBits(~4294967295u), 68593u), _wgslsmith_div_u32(~(~arg_0.x), 38139u)), countOneBits(arg_0.x), global1[_wgslsmith_index_u32(abs(arg_0.x) | _wgslsmith_mult_u32(arg_0.x, _wgslsmith_div_u32(1u, ~44489u)), 22u)], vec2<i32>(1i, -4252i));
    let var_2 = ~0u;
    var var_3 = 1u;
    var var_4 = Struct_2(219f, var_2, 18223u, global1[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_div_vec2_i32(-firstTrailingBit(~vec2<i32>(var_1.d.d.x, -1i)), min(~var_0.c ^ _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), var_1.e), var_0.b.wz)));
    return global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(~var_4.c, 68123u, ~arg_0.x, select(var_4.b, 74510u, global0[_wgslsmith_index_u32(var_2, 8u)])), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 3076u, 8296u, var_2), vec4<u32>(4294967295u, 1u, var_4.b, var_2)), ~(~vec4<u32>(var_2, var_2, var_2, var_1.b))))), 8u)];
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0.d;
    var_0 = global1[_wgslsmith_index_u32(0u, 22u)];
    var var_1 = vec2<bool>(true, !func_3(abs(~vec2<u32>(arg_0.b, 30052u))));
    var var_2 = global1[_wgslsmith_index_u32(reverseBits(~arg_0.c), 22u)];
    let var_3 = Struct_1(vec2<f32>(-146f, var_0.a.x), vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.d.d.x, var_0.c.x), arg_0.e), _wgslsmith_dot_vec2_i32(var_2.d, ~vec2<i32>(-1i, u_input.b) << ((vec2<u32>(arg_0.b, arg_0.b) | vec2<u32>(0u, 1u)) % vec2<u32>(32u))), ~_wgslsmith_mod_i32(var_0.d.x, ~(-2080i)), ~(_wgslsmith_add_i32(var_2.b.x, var_0.c.x) | -2147483647i)), abs(~(~(vec2<i32>(u_input.b, -2147483647i) << (vec2<u32>(arg_0.b, 4294967295u) % vec2<u32>(32u))))), ~(_wgslsmith_div_vec2_i32(~vec2<i32>(arg_0.d.d.x, arg_0.e.x), select(var_0.d, vec2<i32>(var_2.d.x, var_0.b.x), vec2<bool>(var_1.x, var_1.x))) & (var_0.c ^ var_0.b.xy)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -430f))))));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_1.d.a.x - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_1)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.x)))), arg_1.b >> (~3920u % 32u), _wgslsmith_sub_u32(arg_1.c, ~_wgslsmith_div_u32(16974u, 4294967295u)), global1[_wgslsmith_index_u32(arg_1.c, 22u)], reverseBits(~min(vec2<i32>(arg_1.d.b.x, arg_1.d.c.x), vec2<i32>(1i, -1i))) | max(vec2<i32>(~arg_1.d.b.x, u_input.a), vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.b), ~(-7994i))));
    let var_2 = global0[_wgslsmith_index_u32(1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_1.c, ~50958u), ~abs(vec2<u32>(var_1.b, 1u))), 8u)] & (true | !(!any(vec2<bool>(false, false))));
    let var_3 = global0[_wgslsmith_index_u32(47392u, 8u)];
    let var_4 = _wgslsmith_clamp_i32(-(~(-(~0i))), abs(27945i), -31915i);
    return vec3<u32>(~_wgslsmith_sub_u32(var_1.c ^ (4294967295u | var_1.c), ~arg_1.b), 1u, var_1.c);
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<u32>) -> u32 {
    var var_0 = arg_2.x;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(exp2(arg_0))))), arg_2.x, arg_2.x, global1[_wgslsmith_index_u32(arg_2.x, 22u)], ~vec2<i32>(i32(-1i) * -20617i, _wgslsmith_sub_i32(-2147483647i >> (arg_2.x % 32u), _wgslsmith_mod_i32(u_input.b, u_input.a))));
    var var_2 = reverseBits(select(vec3<i32>(-1i, abs(-34037i), var_1.d.c.x), firstLeadingBit(var_1.d.b.xxw), arg_1.xxw));
    var var_3 = var_2.x;
    var_2 = vec3<i32>(select(-(~var_2.x), _wgslsmith_div_i32(~2147483647i, u_input.b), true), u_input.b, -38776i);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~firstTrailingBit(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 44633u), vec2<u32>(1u, 1u))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(198f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-979f * -882f), -641f))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -464f), !vec4<bool>(global0[_wgslsmith_index_u32(31327u, 8u)], true, false, false), func_1(-1286f, Struct_2(572f, 7379u, 4294967295u, Struct_1(vec2<f32>(1144f, 126f), vec4<i32>(u_input.a, u_input.a, 0i, u_input.b), vec2<i32>(u_input.a, u_input.a), vec2<i32>(-18236i, -21558i)), vec2<i32>(u_input.a, u_input.b)))), min(max(var_0.x, 9618u), _wgslsmith_mod_u32(43211u, var_0.x))), _wgslsmith_clamp_u32(func_4(_wgslsmith_f_op_f32(sign(-1918f)), select(vec4<bool>(global0[_wgslsmith_index_u32(49104u, 8u)], false, global0[_wgslsmith_index_u32(var_0.x, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 8u)], false, global0[_wgslsmith_index_u32(var_0.x, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], false, global0[_wgslsmith_index_u32(var_0.x, 8u)])), vec3<u32>(var_0.x, 0u, var_0.x)), var_0.x, ~0u), select(~0u, 78442u, global0[_wgslsmith_index_u32(~(~0u), 8u)])), 105549u, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1281f, 1038f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-476f, -683f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-3080f, -450f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-448f, 759f) + vec2<f32>(271f, -889f)))), vec4<i32>(2147483647i, ~max(u_input.a, 1i), 529i << (~var_0.x % 32u), ~(~2147483647i)), abs(_wgslsmith_add_vec2_i32(vec2<i32>(-16593i, u_input.b), vec2<i32>(u_input.b, u_input.a)) >> (~vec2<u32>(0u, 29435u) % vec2<u32>(32u))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-21517i, u_input.a), countOneBits(vec2<i32>(u_input.b, u_input.b)))), select(~(~vec2<i32>(-29453i, u_input.a)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 2147483647i), vec3<i32>(1i, u_input.a, -1i)), _wgslsmith_mod_i32(u_input.b, u_input.a)), vec2<bool>(global0[_wgslsmith_index_u32(~4294967295u, 8u)], global0[_wgslsmith_index_u32(~var_0.x, 8u)])) | ~min(vec2<i32>(u_input.b, 0i), select(vec2<i32>(u_input.b, 4783i), vec2<i32>(u_input.a, u_input.b), vec2<bool>(true, false))));
    var var_2 = countOneBits(~_wgslsmith_sub_vec4_u32(select(~vec4<u32>(var_1.c, 41847u, 4294967295u, var_0.x), ~vec4<u32>(42731u, 51600u, var_0.x, 0u), func_3(vec2<u32>(9574u, 4294967295u))), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, var_1.c, 0u, var_0.x), vec4<u32>(var_0.x, var_1.b, var_0.x, 40640u))));
    var_0 = select(~_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, 1u), var_2.zz), ~firstLeadingBit(firstLeadingBit(vec2<u32>(24709u, 0u) | var_2.xw)), all(!vec3<bool>(!global0[_wgslsmith_index_u32(50324u, 8u)], select(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(var_1.c, 8u)], false), false)));
    let var_3 = vec4<bool>(true, !select(global0[_wgslsmith_index_u32(var_0.x, 8u)], true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(27928u, var_1.b, global0[_wgslsmith_index_u32(var_2.x, 8u)]), var_2.x), 8u)]), true, any(vec2<bool>(global0[_wgslsmith_index_u32(min(1u, 0u), 8u)], func_3(vec2<u32>(4294967295u, var_0.x)))));
    var var_4 = Struct_2(var_1.d.a.x, 8199u, 74123u, Struct_1(vec2<f32>(1217f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), reverseBits(firstLeadingBit(~var_1.d.b)), var_1.d.d, -max(var_1.e & vec2<i32>(50718i, -8399i), _wgslsmith_div_vec2_i32(var_1.e, vec2<i32>(1i, var_1.d.b.x)))), select(_wgslsmith_add_vec2_i32(vec2<i32>(-2702i, -4184i), var_1.e), -vec2<i32>(u_input.a, 61465i) >> (vec2<u32>(var_0.x, 6505u) % vec2<u32>(32u)), !var_3.xy) | vec2<i32>(var_1.d.d.x, ~(-1i)));
    var var_5 = var_4.d;
    var_0 = _wgslsmith_add_vec2_u32(~var_2.xy, var_2.zz);
    global0 = array<bool, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.a.x), var_1.a), vec3<i32>(var_1.d.c.x, -var_1.e.x, reverseBits(var_5.c.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(var_5.c.x, u_input.a, var_1.e.x, -2147483647i), -vec4<i32>(-55235i, u_input.b, var_5.d.x, 2147483647i))), _wgslsmith_div_f32(var_1.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_4.a)) + _wgslsmith_f_op_f32(-466f * var_5.a.x)))), vec3<i32>(-2147483647i, _wgslsmith_div_i32(reverseBits(u_input.b), var_4.e.x), -var_1.d.b.x), (4294967295u | ~(var_0.x >> (14701u % 32u))) << (~(~(var_2.x >> (var_4.b % 32u))) % 32u));
}

