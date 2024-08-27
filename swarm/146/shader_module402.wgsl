struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(5143i, vec4<i32>(-1i, -28874i, -12966i, 0i), Struct_1(-229f, 1599f, 1i), Struct_1(-333f, -144f, -28440i)), Struct_2(-17480i, vec4<i32>(-1i, 2147483647i, i32(-2147483648), -5507i), Struct_1(1232f, 1000f, -24954i), Struct_1(719f, -704f, 1i)), Struct_2(47731i, vec4<i32>(-26545i, i32(-2147483648), 0i, 21154i), Struct_1(599f, -487f, 1i), Struct_1(-480f, -717f, 1i)), Struct_2(-101986i, vec4<i32>(-8806i, 2147483647i, -1i, 1i), Struct_1(1071f, -701f, -1i), Struct_1(441f, 2352f, -17750i)), Struct_2(i32(-2147483648), vec4<i32>(54887i, 2147483647i, 2147483647i, 2147483647i), Struct_1(-959f, -1000f, -47341i), Struct_1(-944f, -760f, 25961i)), Struct_2(0i, vec4<i32>(-24370i, 2147483647i, 2147483647i, 38943i), Struct_1(-597f, 1000f, -16634i), Struct_1(1883f, -366f, 0i)), Struct_2(0i, vec4<i32>(-19872i, 47988i, 0i, -33318i), Struct_1(-435f, 140f, 0i), Struct_1(-896f, -931f, i32(-2147483648))), Struct_2(1i, vec4<i32>(i32(-2147483648), 52096i, 0i, 20011i), Struct_1(609f, 2117f, 47527i), Struct_1(-1519f, -1346f, -1i)));

var<private> global2: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(-21670i, 0i, 1i, 0i), vec4<i32>(1i, -14485i, -1i, i32(-2147483648)), vec4<i32>(8474i, -1i, 13419i, i32(-2147483648)), vec4<i32>(54314i, 0i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), 12793i, -1091i, 0i), vec4<i32>(17343i, -1i, -17338i, i32(-2147483648)), vec4<i32>(0i, 41221i, 10380i, i32(-2147483648)), vec4<i32>(12740i, 1i, -4233i, -66679i), vec4<i32>(0i, 15420i, 1i, 17295i), vec4<i32>(-609i, 1i, 1i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), 1i, 5869i), vec4<i32>(39861i, i32(-2147483648), 0i, -1i), vec4<i32>(17650i, 10016i, -23804i, -1i), vec4<i32>(1i, 3661i, -1i, 0i), vec4<i32>(-1032i, -8968i, -61338i, 29347i), vec4<i32>(-1i, 0i, -1i, 29867i), vec4<i32>(i32(-2147483648), 0i, -1i, 77176i), vec4<i32>(-7422i, -9944i, 0i, 28993i), vec4<i32>(-2885i, 1i, 3665i, -16848i), vec4<i32>(1i, i32(-2147483648), 15630i, 30020i), vec4<i32>(75436i, i32(-2147483648), -26765i, -1i), vec4<i32>(1i, 0i, 0i, -15711i), vec4<i32>(51941i, -1i, 1i, -26206i), vec4<i32>(1i, -6998i, 0i, -35576i), vec4<i32>(-546i, 0i, i32(-2147483648), 48386i), vec4<i32>(-37682i, -55370i, 2147483647i, i32(-2147483648)), vec4<i32>(-37351i, -1i, 0i, 15957i), vec4<i32>(-9012i, -41954i, -1i, 10362i), vec4<i32>(16292i, 1i, -1i, 1i), vec4<i32>(16581i, 1i, -3018i, 2147483647i));

var<private> global3: vec2<f32> = vec2<f32>(-341f, 1088f);

var<private> global4: vec3<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    var var_0 = all(vec4<bool>(true, all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false))), true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))) && any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true))));
    global1 = array<Struct_2, 8>();
    let var_1 = firstTrailingBit(1i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<u32>) -> vec3<u32> {
    global3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a.xz * global0.a.yz))))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-461f, _wgslsmith_f_op_f32(-global3.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(min(global0.d.a, _wgslsmith_f_op_f32(round(global0.d.b)))))));
    global2 = array<vec4<i32>, 30>();
    let var_1 = Struct_4(select(vec2<i32>(-(i32(-1i) * -19020i), max(2147483647i, countOneBits(global0.e))), -_wgslsmith_sub_vec2_i32(vec2<i32>(global0.e, global0.e), -vec2<i32>(arg_0.x, arg_0.x)), true), global0.d, Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)))), abs(u_input.a), select(0u, ~firstLeadingBit(0u), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false))), global0.d, reverseBits(-46230i)), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-360f, -1000f, true)), _wgslsmith_f_op_f32(max(1096f, 2013f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + -254f) - _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1893f, -1130f)))), min(arg_1, global4.x), global4.x, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2414f), _wgslsmith_f_op_f32(-global0.d.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global3.x)), global0.e), 1i), vec2<f32>(_wgslsmith_f_op_f32(round(-1339f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1018f, global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_div_f32(global3.x, -1558f))))));
    let var_2 = any(!(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), false)));
    return vec3<u32>(~(~global4.x & arg_1), arg_2.x, 0u);
}

fn func_4(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(_wgslsmith_f_op_f32(ceil(global3.x)), global3.x, _wgslsmith_f_op_f32(f32(-1f) * -1374f))), u_input.b.x, min(global4.x, ~11585u), Struct_1(global0.d.b, _wgslsmith_f_op_f32(step(global0.d.a, _wgslsmith_f_op_f32(-global3.x))), -1i), reverseBits(global0.d.c));
    global4 = _wgslsmith_mult_vec3_u32(arg_0, vec3<u32>(u_input.a, ~(0u & ~global4.x), select(u_input.a, _wgslsmith_div_u32(global0.b, global4.x), global3.x == global0.d.a) << (~arg_0.x % 32u)));
    let var_1 = ~_wgslsmith_sub_vec3_i32(select(vec3<i32>(-5159i >> (global0.c % 32u), ~(-1i), -2147483647i), vec3<i32>(-1i) * -vec3<i32>(var_0.d.c, global0.e, global0.e), true), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(var_0.e, var_0.e, 1i)) >> (_wgslsmith_mult_vec3_u32(arg_0, vec3<u32>(1u, 1u, arg_0.x)) % vec3<u32>(32u)), vec3<i32>(var_0.d.c, ~(-31561i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 23582i, -2147483647i), vec3<i32>(var_0.d.c, var_0.e, 1i)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(337f, _wgslsmith_f_op_f32(sign(1f))))), 1069f, var_0.e);
    var var_3 = Struct_1(global0.d.a, var_0.d.b, 10370i);
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.a + global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1983f)))), -2228f, global3.x), global0.b, 4294967295u, Struct_1(344f, _wgslsmith_div_f32(1130f, -828f), _wgslsmith_mod_i32(0i, 1i)), 40927i);
}

fn func_1() -> Struct_3 {
    let var_0 = ~(u_input.b.zz | vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, 1u), global4.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(global4.x, 26397u), u_input.b.x)));
    global0 = func_4(func_2(firstTrailingBit(vec2<i32>(global0.e, _wgslsmith_add_i32(1i, -5020i))), ~_wgslsmith_add_u32(46357u, ~53207u), u_input.b));
    global0 = Struct_3(global0.a, _wgslsmith_div_u32(~firstLeadingBit(4294967295u), ~1u), u_input.a, global0.d, max(2147483647i, -_wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, global0.d.c), ~global0.d.c)));
    var var_1 = ~vec2<u32>(19192u, global4.x);
    var var_2 = _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global3.x)));
    return func_4(abs(~(~u_input.b) << (_wgslsmith_clamp_vec3_u32(u_input.b & u_input.b, u_input.b, vec3<u32>(0u, global4.x, global0.c) | vec3<u32>(1u, global0.b, 4294967295u)) % vec3<u32>(32u))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> bool {
    global1 = array<Struct_2, 8>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(max(func_1().a, _wgslsmith_f_op_vec3_f32(-global0.a))), arg_1.b, firstTrailingBit(~(1u & ~arg_0.c)), Struct_1(global3.x, 1787f, firstLeadingBit(arg_1.e)), _wgslsmith_dot_vec4_i32(vec4<i32>(~global0.e, -(global0.d.c & global0.e), -32693i, ~reverseBits(2147483647i)), _wgslsmith_mult_vec4_i32(-global2[_wgslsmith_index_u32(34414u, 30u)], max(global2[_wgslsmith_index_u32(global0.b, 30u)], global2[_wgslsmith_index_u32(44676u, 30u)])) | vec4<i32>(global0.e, 0i << (arg_0.c % 32u), _wgslsmith_mod_i32(-2467i, 1i), 0i)));
    let var_1 = arg_0.d;
    let var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 0u)), min(vec2<u32>(global0.b, 3908u), vec2<u32>(101314u, var_0.c)) >> (u_input.b.xy % vec2<u32>(32u))), 48007u, firstTrailingBit(~arg_1.c)), ~firstTrailingBit(_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_0.b, 14916u, 56833u), reverseBits(u_input.b), u_input.b)));
    var var_3 = _wgslsmith_mod_u32(~54150u, 1u);
    return 2147483647i > arg_0.d.c;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(global4.x, ~(u_input.a ^ global4.x), _wgslsmith_div_u32(global4.x, global0.c)), u_input.a, 5111u));
    global0 = Struct_3(global0.a, u_input.a, select(~0u, ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(14401u, global0.b, 26857u, global4.x), vec4<u32>(u_input.b.x, global0.c, u_input.b.x, 1u)), vec4<u32>(1u, u_input.b.x, 0u, 27716u) << (vec4<u32>(0u, global4.x, 0u, global4.x) % vec4<u32>(32u))), func_5(Struct_3(vec3<f32>(1057f, global3.x, -1000f), 1u, global0.b, Struct_1(-345f, global0.a.x, 1i), global0.e ^ global0.e), func_1(), ~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x))), Struct_1(global0.a.x, -1626f, firstTrailingBit(countOneBits(global0.e))), i32(-1i) * -25861i);
    var var_0 = abs(reverseBits(-1i));
    global4 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.a.yx, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global0.a.x)))), _wgslsmith_f_op_f32(-global0.d.a)), false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(941f, -867f, func_1().a.x, _wgslsmith_f_op_f32(429f * -326f)))));
    let var_3 = func_4(vec3<u32>(reverseBits(0u), global0.c, _wgslsmith_dot_vec2_u32(min(global4.xy << (u_input.b.zy % vec2<u32>(32u)), abs(vec2<u32>(54101u, u_input.a))), vec2<u32>(7089u, func_4(u_input.b).b))));
    global3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))));
    global1 = array<Struct_2, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(select(select(global0.d.c, var_3.e, true), -1835i, true), _wgslsmith_sub_i32(abs(-15770i) & _wgslsmith_sub_i32(global0.d.c, -6706i), -10065i)), var_3.d.c);
}

