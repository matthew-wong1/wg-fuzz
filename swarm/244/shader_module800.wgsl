struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 13830u, 0u), vec3<u32>(0u, 44484u, 49735u), vec3<u32>(4294967295u, 48855u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(30947u, 1u, 33352u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 22000u, 7041u), vec3<u32>(0u, 5510u, 4294967295u), vec3<u32>(1u, 4294967295u, 78433u), vec3<u32>(28547u, 60170u, 10457u), vec3<u32>(25944u, 18085u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(10481u, 0u, 26327u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(19273u, 1u, 0u), vec3<u32>(13631u, 35452u, 99068u), vec3<u32>(0u, 65112u, 50593u), vec3<u32>(0u, 95601u, 0u), vec3<u32>(46263u, 35078u, 0u), vec3<u32>(1u, 3158u, 20679u), vec3<u32>(1570u, 4294967295u, 4294967295u), vec3<u32>(2121u, 0u, 10502u), vec3<u32>(52686u, 2830u, 40400u), vec3<u32>(0u, 33406u, 4294967295u));

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<i32>(-30601i, 33869i, -27134i)), Struct_1(vec3<i32>(1i, -1i, -1i)), Struct_1(vec3<i32>(-32326i, 1i, 23260i)), Struct_1(vec3<i32>(0i, 19996i, i32(-2147483648))), Struct_1(vec3<i32>(-9765i, -1i, 17717i)), Struct_1(vec3<i32>(-3273i, i32(-2147483648), 9237i)), Struct_1(vec3<i32>(-2411i, 39201i, 24522i)), Struct_1(vec3<i32>(0i, 2147483647i, -6771i)));

var<private> global2: Struct_2 = Struct_2(vec2<u32>(15081u, 4294967295u), Struct_1(vec3<i32>(12247i, 38068i, -15054i)), 12027i, vec3<u32>(4294967295u, 28423u, 4294967295u), vec4<u32>(60337u, 4294967295u, 0u, 17315u));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(~global2.a.x, 8u)];
    var_0 = Struct_1(u_input.a);
    global0 = array<vec3<u32>, 26>();
    var var_1 = Struct_2(arg_0, Struct_1(_wgslsmith_add_vec3_i32(var_0.a, -vec3<i32>(arg_1, 8741i, 1i))), var_0.a.x >> (_wgslsmith_div_u32(~4294967295u, select(~17802u, 1u, true)) % 32u), ~vec3<u32>(0u, ~global2.a.x >> (1u % 32u), _wgslsmith_div_u32(_wgslsmith_mod_u32(57602u, global2.a.x), 0u | global2.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(61628u, 1u, 1u, 4294967295u | arg_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, global2.d.x, 9610u), abs(global2.e)), select(global2.e, global2.e, false) ^ ~vec4<u32>(1u, 0u, 17439u, global2.e.x)) | vec4<u32>(arg_0.x, 4256u, 0u, 4294967295u));
    var var_2 = ~(~(~(~var_1.e.x)));
    return 959f;
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    let var_0 = Struct_2(vec2<u32>(9411u, global2.e.x), global2.b, -20886i, firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(global2.a.x, global2.a.x, 7180u), vec3<u32>(global2.e.x, global2.d.x, global2.a.x)) >> (vec3<u32>(global2.d.x, 62911u, global2.d.x) % vec3<u32>(32u))) ^ global2.e.wyz, ~_wgslsmith_div_vec4_u32(abs(global2.e & vec4<u32>(38306u, 0u, 4294967295u, 4294967295u)), vec4<u32>(_wgslsmith_clamp_u32(global2.e.x, 38035u, 34851u), 1u, 4294967295u << (global2.d.x % 32u), 1u)));
    global0 = array<vec3<u32>, 26>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-856f - 255f)) - _wgslsmith_f_op_f32(step(-158f, -1000f))), _wgslsmith_f_op_f32(func_3(global2.e.zz, _wgslsmith_div_i32(_wgslsmith_sub_i32(4420i, u_input.b), _wgslsmith_div_i32(-2147483647i, 13497i)), Struct_1(~var_0.b.a)))));
    global1 = array<Struct_1, 8>();
    let var_2 = _wgslsmith_add_i32(abs(countOneBits(min(u_input.a.x, 0i))), 25718i << (var_0.a.x % 32u)) < ((max(global2.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.a.x, 73643i, 2406i, -1i), vec4<i32>(1i, 2147483647i, u_input.a.x, global2.b.a.x))) >> (_wgslsmith_dot_vec2_u32(select(var_0.e.xy, vec2<u32>(var_0.d.x, 1u), arg_0.x), var_0.e.zy) % 32u)) >> ((global2.d.x | 1u) % 32u));
    return -122f;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global2 = arg_0;
    var var_0 = -(~1i);
    var var_1 = _wgslsmith_mult_u32(~(~_wgslsmith_dot_vec3_u32(arg_0.e.zzx, vec3<u32>(0u, 22618u, 4294967295u))), ~_wgslsmith_mult_u32(53693u, ~global2.a.x)) ^ 46845u;
    global1 = array<Struct_1, 8>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-123f * 1219f)) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-406f * _wgslsmith_f_op_f32(sign(430f))), _wgslsmith_f_op_f32(func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))))))));
    return arg_0;
}

fn func_4(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1395f - 536f), -427f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(431f, 2269f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 754f))))));
    global2 = arg_0;
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(ceil(1148f));
    global2 = func_1(func_1(var_1));
    return _wgslsmith_clamp_u32(1u, 32879u & _wgslsmith_mod_u32(global2.a.x, _wgslsmith_add_u32(global2.e.x, global2.a.x)), max(var_1.a.x, _wgslsmith_dot_vec2_u32(var_1.e.xx, global2.d.xz)) << (global2.a.x % 32u)) << (~(~0u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -countOneBits(reverseBits(vec4<i32>(-2147483647i, -4466i, global2.c, 2147483647i)) << (global2.e % vec4<u32>(32u))) & vec4<i32>(abs(-u_input.a.x), _wgslsmith_mod_i32(-1i, global2.b.a.x), u_input.b, reverseBits(global2.b.a.x));
    var var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(29925u, ~(~max(global2.e.x, global2.e.x))), vec2<u32>(8739u, _wgslsmith_add_u32(_wgslsmith_mod_u32(~global2.d.x, 29349u), ~(~66577u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(662f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(216f - 239f) - _wgslsmith_f_op_f32(f32(-1f) * -353f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1235f)), -2026f))))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -567f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(1406f, 1243f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-275f)))))));
    let var_3 = select(func_4(func_1(Struct_2(~global2.a, global1[_wgslsmith_index_u32(global2.d.x, 8u)], 0i, vec3<u32>(var_1.x, global2.d.x, 17903u), global2.e))), 43947u, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-923f + -1929f) - _wgslsmith_f_op_f32(ceil(-506f))) != 418f) & true);
    var var_4 = _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec2_u32(vec2<u32>(58908u, var_1.x ^ var_3), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, ~var_3), global2.e.zw & global2.e.zx, vec2<u32>(1u, var_1.x) ^ vec2<u32>(var_3, var_3))), select(abs(-57276i), 1i, false), global2.b));
    global2 = func_1(Struct_2(global2.e.ww, func_1(func_1(Struct_2(global2.a, Struct_1(vec3<i32>(var_0.x, -2147483647i, -2147483647i)), var_0.x, vec3<u32>(4294967295u, 48604u, var_1.x), vec4<u32>(var_3, 1u, 4294967295u, 1883u)))).b, countOneBits(_wgslsmith_mult_i32(abs(u_input.b), ~11694i)), ~global0[_wgslsmith_index_u32(var_3, 26u)], global2.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1200f, 784f, -752f)))))) + vec3<f32>(_wgslsmith_f_op_f32(floor(-360f)), _wgslsmith_f_op_f32(f32(-1f) * -520f), -388f)), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true)))) - _wgslsmith_f_op_f32(f32(-1f) * -856f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-739f, -466f)), 1601f), max(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_0.x, -3074i), -global2.b.a)), vec3<i32>(_wgslsmith_sub_i32(reverseBits(0i), firstTrailingBit(1i)), -2147483647i, countOneBits(abs(-30351i)))), _wgslsmith_mod_vec2_i32(var_0.yx, global2.b.a.yz), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1602f, -1000f) + vec2<f32>(298f, 537f)) + vec2<f32>(1136f, 1147f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1510f, 159f), vec2<f32>(930f, -1738f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-736f, -1139f) - vec2<f32>(1000f, -1000f))))));
}

