struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec4<bool>(true, true, false, false), 510f, vec3<bool>(true, true, false), Struct_1(35839u, vec3<u32>(0u, 64020u, 4294967295u), vec3<i32>(0i, i32(-2147483648), 0i))), Struct_2(vec4<bool>(true, true, true, true), 1472f, vec3<bool>(false, true, false), Struct_1(0u, vec3<u32>(4294967295u, 65346u, 6649u), vec3<i32>(0i, -75484i, -58158i))), Struct_2(vec4<bool>(false, false, true, true), -683f, vec3<bool>(true, false, true), Struct_1(0u, vec3<u32>(0u, 0u, 26031u), vec3<i32>(10243i, 2147483647i, 2147483647i))), Struct_2(vec4<bool>(false, false, false, false), 1290f, vec3<bool>(false, false, false), Struct_1(79u, vec3<u32>(4294967295u, 30631u, 35229u), vec3<i32>(0i, -43387i, i32(-2147483648)))), Struct_2(vec4<bool>(false, false, false, false), 1371f, vec3<bool>(true, false, true), Struct_1(1u, vec3<u32>(37990u, 1u, 0u), vec3<i32>(0i, 17128i, 2147483647i))), Struct_2(vec4<bool>(true, true, true, false), -792f, vec3<bool>(false, false, true), Struct_1(4719u, vec3<u32>(4294967295u, 1u, 52130u), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)))), Struct_2(vec4<bool>(false, false, true, false), -891f, vec3<bool>(false, true, true), Struct_1(4294967295u, vec3<u32>(52310u, 1u, 1u), vec3<i32>(-16836i, 2147483647i, 0i))), Struct_2(vec4<bool>(false, false, false, false), -324f, vec3<bool>(false, false, true), Struct_1(0u, vec3<u32>(38099u, 64119u, 1u), vec3<i32>(-4216i, 38786i, -57778i))), Struct_2(vec4<bool>(false, false, false, false), -1000f, vec3<bool>(true, false, true), Struct_1(51206u, vec3<u32>(31016u, 51674u, 4294967295u), vec3<i32>(-4776i, -16757i, 271i))), Struct_2(vec4<bool>(true, false, false, false), 1000f, vec3<bool>(false, true, false), Struct_1(24571u, vec3<u32>(29478u, 1u, 1u), vec3<i32>(0i, 1i, i32(-2147483648)))), Struct_2(vec4<bool>(false, true, false, false), -1117f, vec3<bool>(false, false, false), Struct_1(36744u, vec3<u32>(0u, 43755u, 0u), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)))), Struct_2(vec4<bool>(false, true, true, false), 916f, vec3<bool>(false, true, false), Struct_1(4294967295u, vec3<u32>(23775u, 24064u, 9128u), vec3<i32>(0i, 1i, 11416i))), Struct_2(vec4<bool>(false, true, false, false), -563f, vec3<bool>(false, true, false), Struct_1(0u, vec3<u32>(8918u, 4294967295u, 1u), vec3<i32>(58726i, -26955i, -1i))), Struct_2(vec4<bool>(true, false, false, true), -357f, vec3<bool>(false, false, false), Struct_1(1u, vec3<u32>(1u, 1u, 50432u), vec3<i32>(1i, -11325i, -9602i))), Struct_2(vec4<bool>(false, true, false, true), -2171f, vec3<bool>(true, false, true), Struct_1(85723u, vec3<u32>(75278u, 12879u, 4294967295u), vec3<i32>(-68335i, -1i, 2147483647i))), Struct_2(vec4<bool>(true, false, false, true), -1000f, vec3<bool>(false, false, true), Struct_1(1u, vec3<u32>(36173u, 4294967295u, 21493u), vec3<i32>(0i, i32(-2147483648), -82843i))), Struct_2(vec4<bool>(true, true, true, false), -2174f, vec3<bool>(true, false, false), Struct_1(0u, vec3<u32>(0u, 9u, 4294967295u), vec3<i32>(-1741i, 2147483647i, -34165i))), Struct_2(vec4<bool>(false, false, true, false), 1061f, vec3<bool>(true, true, true), Struct_1(46939u, vec3<u32>(42987u, 4294967295u, 53651u), vec3<i32>(-1i, -1i, 2147483647i))), Struct_2(vec4<bool>(true, true, true, true), 824f, vec3<bool>(false, true, false), Struct_1(0u, vec3<u32>(1u, 1u, 0u), vec3<i32>(2147483647i, 26369i, 0i))), Struct_2(vec4<bool>(true, true, false, false), -677f, vec3<bool>(false, false, false), Struct_1(4294967295u, vec3<u32>(1u, 48020u, 4294967295u), vec3<i32>(0i, -1i, 2147483647i))), Struct_2(vec4<bool>(false, false, true, false), 907f, vec3<bool>(false, false, false), Struct_1(4294967295u, vec3<u32>(110899u, 17539u, 4294967295u), vec3<i32>(-25356i, -1i, -55128i))), Struct_2(vec4<bool>(true, false, true, true), 571f, vec3<bool>(false, false, false), Struct_1(1u, vec3<u32>(8501u, 18777u, 17471u), vec3<i32>(-1i, 1i, 7215i))), Struct_2(vec4<bool>(false, true, false, true), 519f, vec3<bool>(false, true, false), Struct_1(1u, vec3<u32>(4294967295u, 4294967295u, 16396u), vec3<i32>(270i, -1i, 4473i))), Struct_2(vec4<bool>(true, true, false, true), 715f, vec3<bool>(false, false, true), Struct_1(35779u, vec3<u32>(101770u, 70270u, 1u), vec3<i32>(2147483647i, 32273i, -21042i))), Struct_2(vec4<bool>(true, false, false, true), -1268f, vec3<bool>(true, false, true), Struct_1(57837u, vec3<u32>(16016u, 26716u, 16943u), vec3<i32>(-1i, 2147483647i, 677i))), Struct_2(vec4<bool>(true, true, true, true), -445f, vec3<bool>(true, true, false), Struct_1(0u, vec3<u32>(1u, 0u, 4294967295u), vec3<i32>(-1i, -57647i, 1i))), Struct_2(vec4<bool>(false, true, false, false), 616f, vec3<bool>(false, false, false), Struct_1(62825u, vec3<u32>(0u, 1u, 4294967295u), vec3<i32>(-1i, 22567i, -54296i))), Struct_2(vec4<bool>(true, false, true, true), 3171f, vec3<bool>(false, false, true), Struct_1(13349u, vec3<u32>(1u, 0u, 4294967295u), vec3<i32>(3402i, 0i, -30800i))), Struct_2(vec4<bool>(false, false, true, true), 568f, vec3<bool>(false, false, false), Struct_1(0u, vec3<u32>(2866u, 52636u, 4294967295u), vec3<i32>(0i, 21355i, i32(-2147483648)))), Struct_2(vec4<bool>(false, false, false, false), -489f, vec3<bool>(true, false, false), Struct_1(4294967295u, vec3<u32>(38097u, 0u, 40337u), vec3<i32>(-1i, -38949i, i32(-2147483648)))));

var<private> global1: Struct_1;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = global1.b.x;
    global1 = global2.d;
    global2 = global0[_wgslsmith_index_u32(firstTrailingBit(~(4294967295u << (global1.b.x % 32u))), 30u)];
    global1 = Struct_1(43479u, select(vec3<u32>(_wgslsmith_mult_u32(19935u, ~global1.b.x), 3275u, u_input.c.x), global1.b, vec3<bool>(global2.a.x & all(global2.a), false, false)), vec3<i32>(~u_input.a, u_input.a, -select(66751i, 0i, global2.c.x)) | -((vec3<i32>(-2147483647i, 2147483647i, u_input.b.x) << (global1.b % vec3<u32>(32u))) << (_wgslsmith_clamp_vec3_u32(global1.b, vec3<u32>(global2.d.b.x, global1.b.x, 54319u), vec3<u32>(global2.d.b.x, u_input.d, 34214u)) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.b)), 318f, 1109f, -588f)))));
    return ~u_input.d;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: vec3<bool>) -> bool {
    var var_0 = 321f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1137f, -174f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.b, -740f) + vec2<f32>(1f, 1f)))));
    let var_2 = global2.d.a;
    var var_3 = arg_1.d;
    global2 = arg_1;
    return !global2.c.x;
}

fn func_2(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = global2.c.x & func_4(Struct_3(func_3(), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.d, u_input.c.x), 0u), 30u)], Struct_1(55578u << (global2.d.a % 32u), ~global1.b, vec3<i32>(global1.c.x, 9405i, -1i) << (global1.b % vec3<u32>(32u))), firstTrailingBit(_wgslsmith_div_i32(global2.d.c.x, 3015i))), global0[_wgslsmith_index_u32(~reverseBits(~1u), 30u)], ~global1.c.x, !global2.a.zzx);
    var var_1 = global2.a.x;
    var_1 = !(!global2.a.x || global2.c.x);
    let var_2 = min(max(u_input.b ^ vec3<i32>(global1.c.x, _wgslsmith_div_i32(39868i, -1i), -arg_0.x), _wgslsmith_clamp_vec3_i32(u_input.b, -u_input.b << (global1.b % vec3<u32>(32u)), -global1.c & firstLeadingBit(vec3<i32>(8397i, -11775i, global2.d.c.x)))), vec3<i32>(~(-43841i), _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, global2.d.c.x), ~global1.c.yz), -1i) ^ (_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, global1.c.x, 0i) >> (global2.d.b % vec3<u32>(32u)), u_input.b) >> (vec3<u32>(~1u, 24680u, ~u_input.c.x) % vec3<u32>(32u))));
    var var_3 = true;
    return global2.a;
}

fn func_1() -> Struct_1 {
    let var_0 = global2.b;
    let var_1 = Struct_3(76675u, Struct_2(func_2(global2.d.c.zy), _wgslsmith_f_op_f32(f32(-1f) * -2599f), vec3<bool>(!(global2.d.a <= u_input.c.x), false, 0i != _wgslsmith_add_i32(global1.c.x, global2.d.c.x)), global2.d), global2.d, 4884i);
    let var_2 = u_input.b.x;
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    return var_1.c;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global1 = global2.d;
    global1 = func_1();
    let var_0 = _wgslsmith_sub_i32(-2147483647i, 1i >> (~func_1().a % 32u));
    global0 = array<Struct_2, 30>();
    global2 = Struct_2(vec4<bool>(true, any(!func_2(vec2<i32>(arg_0.c.x, -36384i))), _wgslsmith_add_i32(0i, u_input.a) >= var_0, global2.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.b))), vec3<bool>(false, !func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.c.x, 1i), arg_0.c.xy, vec2<i32>(-43591i, u_input.a))).x, global2.c.x), func_1());
    return Struct_2(global2.a, 1231f, global2.a.zzy, func_1());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global2.d.a, func_5(func_1()), Struct_1(u_input.c.x, global1.b, -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), reverseBits(global2.d.c))), -global2.d.c.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(step(-1414f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)))));
    global2 = func_5(func_5(global2.d).d);
    global1 = func_5(func_5(var_0.b.d).d).d;
    global0 = array<Struct_2, 30>();
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * -799f), -542f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 168f)) + global2.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.zy, ~(~max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, global1.c.x, -14967i, global2.d.c.x), vec4<i32>(-2147483647i, -7576i, -25811i, 51404i)), min(vec4<i32>(-2147483647i, -2147483647i, global2.d.c.x, var_0.c.c.x), vec4<i32>(-2147483647i, var_0.b.d.c.x, 27948i, 2147483647i)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1036f, _wgslsmith_f_op_f32(exp2(var_0.b.b)), _wgslsmith_f_op_f32(var_1.x * var_0.b.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, var_0.b.b, -826f), vec3<f32>(var_1.x, global2.b, -122f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2551f, 313f, global2.b), vec3<f32>(global2.b, -1320f, -399f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1037f, var_1.x, global2.b)))))), ~min(global1.c.x, -global2.d.c.x));
}

