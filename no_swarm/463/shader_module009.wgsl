struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
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

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<bool>(false, true), false), Struct_1(vec2<bool>(true, false), false), Struct_1(vec2<bool>(true, true), true), Struct_1(vec2<bool>(true, true), false), Struct_1(vec2<bool>(false, false), true), Struct_1(vec2<bool>(false, false), true), Struct_1(vec2<bool>(true, false), true), Struct_1(vec2<bool>(true, true), true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<i32> {
    let var_0 = select(u_input.b.x, -17790i & u_input.c, false);
    var var_1 = false;
    let var_2 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(47279u, 32286u, 0u), vec3<u32>(4294967295u, 0u, 293u)), reverseBits(4294967295u), ~108930u), firstLeadingBit(vec3<u32>(1u, 11769u, 1u))), _wgslsmith_clamp_u32(~4294967295u, 1u, 48352u)), 1u);
    var var_3 = var_2.x;
    let var_4 = global0[_wgslsmith_index_u32(~(~(~max(var_2.x, var_2.x ^ var_2.x))), 8u)];
    return _wgslsmith_sub_vec3_i32(~_wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, -36993i, 74512i) << (select(vec3<u32>(var_2.x, 38027u, 32819u), vec3<u32>(11692u, var_2.x, var_2.x), false) % vec3<u32>(32u)), vec3<i32>(var_0, 1i, u_input.b.x) << (~vec3<u32>(4294967295u, 43149u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0, 30280i, 1i), u_input.b.xyy)), u_input.b.zzx);
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<Struct_1, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(424f, -259f, 1655f, -237f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(175f, -328f, 911f, 1057f), vec4<f32>(-305f, -1000f, -1322f, -166f))))))));
    global0 = array<Struct_1, 8>();
    let var_1 = (_wgslsmith_mult_i32(u_input.a, u_input.d.x) << (1u % 32u)) < _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d.x, _wgslsmith_mult_i32(~u_input.c, u_input.b.x)), -(~(-u_input.b.x)));
    let var_2 = abs(_wgslsmith_dot_vec3_i32(func_3(), u_input.b.yyz));
    return max(select(~select(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(13329u, 1807u, 13848u)), select(vec3<bool>(false, var_1, var_1), vec3<bool>(true, arg_0.b, var_1), false)), vec3<u32>(~1u, _wgslsmith_div_u32(53440u, 1u), 850u), select(select(select(vec3<bool>(arg_0.b, false, var_1), vec3<bool>(true, arg_0.a.x, var_1), arg_0.a.x), vec3<bool>(false, arg_0.a.x, true), !vec3<bool>(var_1, var_1, false)), !select(vec3<bool>(true, arg_0.a.x, var_1), vec3<bool>(arg_0.a.x, true, true), true), var_1)), ~(~vec3<u32>(1u, 1u, 1u)));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_5, arg_3: Struct_3) -> vec4<u32> {
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    return ~(firstTrailingBit(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(arg_2.b, arg_1.x, arg_2.b, 4294967295u)), abs(vec4<u32>(1u, arg_1.x, 37061u, 0u)))) & firstLeadingBit(vec4<u32>(reverseBits(0u), _wgslsmith_add_u32(arg_2.b, 21698u), arg_2.b ^ arg_1.x, 65190u)));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<u32>) -> Struct_1 {
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    return global0[_wgslsmith_index_u32(arg_1.x, 8u)];
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_4) -> Struct_4 {
    global0 = array<Struct_1, 8>();
    var var_0 = func_5(reverseBits(abs(~u_input.d)) | _wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a) >> (~vec2<u32>(33031u, 4294967295u) % vec2<u32>(32u)), -u_input.b.zx), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 11064u, 68928u, 1u), vec4<u32>(9645u, 4294967295u, 4294967295u, 50519u)), 1u, abs(4294967295u), ~34653u) << (func_4(arg_1.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(42972u, 29277u, 46519u), vec3<u32>(0u, 102476u, 0u), vec3<u32>(57851u, 1u, 4294967295u)), func_2(global0[_wgslsmith_index_u32(27897u, 8u)])), Struct_5(Struct_3(Struct_1(arg_0.a.a, arg_0.a.a.x), vec3<bool>(arg_0.a.b, false, false)), 65265u, arg_0.a, max(vec2<i32>(-27554i, u_input.d.x), vec2<i32>(u_input.d.x, 1i))), arg_3.d) % vec4<u32>(32u)));
    var var_1 = ~(~select(0u, ~(~72895u), true));
    var_0 = arg_0.a;
    let var_2 = -309f;
    return Struct_4(arg_0, arg_0, global0[_wgslsmith_index_u32(0u >> (firstTrailingBit(_wgslsmith_clamp_u32(33540u, 37308u, 0u) >> (4294967295u % 32u)) % 32u), 8u)], arg_3.d, func_5(~max(u_input.b.zy, u_input.d), countOneBits(vec4<u32>(1u, 1u, 1u, 1u))));
}

fn func_6(arg_0: u32, arg_1: Struct_4) -> u32 {
    let var_0 = _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, select(arg_0, arg_0, !arg_1.d.a.b), ~(~0u)), ~vec3<u32>(func_4(-1624f, vec3<u32>(arg_0, 44807u, arg_0), Struct_5(arg_1.d, 16117u, Struct_1(arg_1.e.a, arg_1.a.a.b), u_input.d), arg_1.d).x, arg_0 & 8267u, ~45669u)));
    let var_1 = Struct_4(Struct_2(func_5(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(18835i, 0i, -2147483647i, u_input.b.x), vec4<i32>(u_input.c, u_input.b.x, -11684i, -1i))), ~vec4<u32>(0u, 0u, 4294967295u, arg_0)), arg_1.c.a.x), arg_1.a, Struct_1(arg_1.c.a, var_0 == 1u), arg_1.d, Struct_1(vec2<bool>(all(vec3<bool>(false, arg_1.a.a.a.x, false)) && !arg_1.e.b, true | !arg_1.a.b), all(select(func_1(Struct_2(Struct_1(vec2<bool>(arg_1.a.a.b, true), arg_1.c.a.x), arg_1.b.a.a.x), vec4<f32>(-1729f, 1324f, -2151f, -110f), vec2<f32>(-578f, 608f), arg_1).d.b, arg_1.d.b, vec3<bool>(arg_1.c.a.x, false, arg_1.b.a.b)))));
    var var_2 = vec2<u32>(_wgslsmith_sub_u32(var_0, ~var_0), _wgslsmith_mult_u32(arg_0, 4294967295u));
    var_2 = _wgslsmith_div_vec2_u32(~vec2<u32>(countOneBits(func_2(Struct_1(vec2<bool>(true, false), arg_1.e.a.x)).x), ~0u << (~var_0 % 32u)), func_2(global0[_wgslsmith_index_u32(countOneBits(var_0 >> (0u % 32u)), 8u)]).yz >> ((((vec2<u32>(25413u, 4294967295u) & vec2<u32>(var_2.x, 0u)) & _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.x, 0u), vec2<u32>(1u, arg_0))) & func_4(_wgslsmith_f_op_f32(f32(-1f) * -365f), func_4(1124f, vec3<u32>(var_2.x, 101607u, 59695u), Struct_5(Struct_3(Struct_1(arg_1.a.a.a, false), vec3<bool>(false, true, arg_1.d.a.b)), var_0, Struct_1(vec2<bool>(arg_1.c.b, var_1.b.a.b), true), vec2<i32>(u_input.a, u_input.c)), Struct_3(global0[_wgslsmith_index_u32(var_2.x, 8u)], vec3<bool>(false, var_1.a.a.b, arg_1.b.a.b))).xxy, Struct_5(Struct_3(Struct_1(var_1.d.b.zy, var_1.e.a.x), vec3<bool>(false, true, var_1.d.b.x)), arg_0, arg_1.c, vec2<i32>(1i, u_input.a)), Struct_3(arg_1.a.a, var_1.d.b)).xz) % vec2<u32>(32u)));
    global0 = array<Struct_1, 8>();
    return 97283u | _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.x, 36643u, 4294967295u) | vec4<u32>(arg_0, arg_0, arg_0, 0u), ~vec4<u32>(arg_0, arg_0, 0u, var_2.x)), arg_0), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 8>();
    let var_0 = firstLeadingBit(_wgslsmith_mod_u32(~max(~1u, _wgslsmith_add_u32(1u, 12559u)), ~abs(1u)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1272f);
    let var_2 = _wgslsmith_f_op_f32(-var_1);
    var var_3 = ~(~_wgslsmith_dot_vec4_i32(min(u_input.b, vec4<i32>(-1i, u_input.a, u_input.d.x, 8464i)), vec4<i32>(abs(7855i), u_input.c, 1i, 2147483647i)));
    let var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(var_0), var_0, _wgslsmith_clamp_u32(0u, var_0, var_0) | (var_0 & 0u), firstTrailingBit(var_0)) ^ vec4<u32>(firstTrailingBit(~var_0), 124472u, ~(~var_0), ~var_0), vec4<u32>(func_6(max(_wgslsmith_div_u32(var_0, var_0), _wgslsmith_sub_u32(120467u, var_0)), func_1(Struct_2(global0[_wgslsmith_index_u32(var_0, 8u)], false), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-729f, var_2, 477f, -279f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-246f, var_1), vec2<f32>(2909f, var_2))), Struct_4(Struct_2(global0[_wgslsmith_index_u32(var_0, 8u)], false), Struct_2(global0[_wgslsmith_index_u32(1u, 8u)], true), Struct_1(vec2<bool>(true, false), true), Struct_3(Struct_1(vec2<bool>(true, false), true), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(true, true), false)))), ~var_0, var_0, max(reverseBits(~var_0), var_0)));
    var var_5 = func_1(func_1(func_1(func_1(func_1(Struct_2(global0[_wgslsmith_index_u32(var_0, 8u)], false), vec4<f32>(-963f, -1000f, 516f, var_1), vec2<f32>(1178f, -533f), Struct_4(Struct_2(global0[_wgslsmith_index_u32(var_0, 8u)], true), Struct_2(Struct_1(vec2<bool>(false, true), false), false), Struct_1(vec2<bool>(false, false), false), Struct_3(Struct_1(vec2<bool>(false, true), false), vec3<bool>(false, true, true)), Struct_1(vec2<bool>(false, true), false))).b, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, var_1, 804f, var_2))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(120f, -230f))), Struct_4(Struct_2(Struct_1(vec2<bool>(true, true), false), false), Struct_2(global0[_wgslsmith_index_u32(63494u, 8u)], true), global0[_wgslsmith_index_u32(var_4, 8u)], Struct_3(Struct_1(vec2<bool>(false, true), false), vec3<bool>(true, false, false)), global0[_wgslsmith_index_u32(var_4, 8u)])).a, vec4<f32>(750f, _wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_f32(var_2 * -144f), var_2), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-956f, var_1) - vec2<f32>(var_1, var_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-563f, 156f) * vec2<f32>(241f, -946f))), Struct_4(Struct_2(Struct_1(vec2<bool>(false, false), true), true), func_1(Struct_2(global0[_wgslsmith_index_u32(var_4, 8u)], true), vec4<f32>(var_1, var_1, -1013f, 1000f), vec2<f32>(1224f, 851f), Struct_4(Struct_2(Struct_1(vec2<bool>(false, true), true), true), Struct_2(global0[_wgslsmith_index_u32(var_4, 8u)], false), Struct_1(vec2<bool>(false, false), false), Struct_3(Struct_1(vec2<bool>(true, false), false), vec3<bool>(true, false, false)), Struct_1(vec2<bool>(false, true), false))).a, global0[_wgslsmith_index_u32(func_6(0u, Struct_4(Struct_2(Struct_1(vec2<bool>(false, false), false), true), Struct_2(global0[_wgslsmith_index_u32(var_4, 8u)], false), Struct_1(vec2<bool>(true, false), false), Struct_3(global0[_wgslsmith_index_u32(50920u, 8u)], vec3<bool>(true, false, false)), Struct_1(vec2<bool>(true, true), true))), 8u)], Struct_3(global0[_wgslsmith_index_u32(0u, 8u)], vec3<bool>(true, false, false)), global0[_wgslsmith_index_u32(var_0, 8u)])).a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-205f, var_2, _wgslsmith_f_op_f32(trunc(1888f)), 1f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(816f, -139f, -533f, var_2) * vec4<f32>(var_1, -607f, 1547f, 343f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1, var_1))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, 162f))))), Struct_4(func_1(Struct_2(global0[_wgslsmith_index_u32(var_0, 8u)], true), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, 732f, var_2, var_2))), vec2<f32>(987f, var_1), Struct_4(Struct_2(global0[_wgslsmith_index_u32(9424u, 8u)], false), Struct_2(Struct_1(vec2<bool>(true, true), false), true), global0[_wgslsmith_index_u32(var_4, 8u)], Struct_3(global0[_wgslsmith_index_u32(var_4, 8u)], vec3<bool>(false, true, false)), Struct_1(vec2<bool>(true, false), true))).b, func_1(Struct_2(Struct_1(vec2<bool>(false, false), false), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-579f, -749f, var_2, var_2) - vec4<f32>(var_2, var_2, var_2, 387f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-572f, 1058f) * vec2<f32>(-147f, var_1)), func_1(Struct_2(global0[_wgslsmith_index_u32(107930u, 8u)], false), vec4<f32>(-1021f, -1000f, var_1, var_2), vec2<f32>(-944f, 229f), Struct_4(Struct_2(Struct_1(vec2<bool>(false, false), false), false), Struct_2(global0[_wgslsmith_index_u32(var_0, 8u)], true), Struct_1(vec2<bool>(false, true), true), Struct_3(Struct_1(vec2<bool>(false, false), true), vec3<bool>(false, true, true)), Struct_1(vec2<bool>(true, false), false)))).b, global0[_wgslsmith_index_u32(47855u, 8u)], func_1(Struct_2(global0[_wgslsmith_index_u32(37205u, 8u)], false), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(147f, -1072f, var_1, var_1))), vec2<f32>(var_2, var_2), func_1(Struct_2(Struct_1(vec2<bool>(false, true), true), false), vec4<f32>(748f, 1044f, var_2, 588f), vec2<f32>(-748f, var_2), Struct_4(Struct_2(global0[_wgslsmith_index_u32(var_4, 8u)], true), Struct_2(Struct_1(vec2<bool>(false, true), false), true), global0[_wgslsmith_index_u32(0u, 8u)], Struct_3(global0[_wgslsmith_index_u32(10893u, 8u)], vec3<bool>(true, false, true)), Struct_1(vec2<bool>(false, false), true)))).d, func_5(max(u_input.d, u_input.d), func_4(var_2, vec3<u32>(1u, 4294967295u, var_0), Struct_5(Struct_3(global0[_wgslsmith_index_u32(var_0, 8u)], vec3<bool>(true, true, false)), var_4, global0[_wgslsmith_index_u32(4001u, 8u)], vec2<i32>(u_input.d.x, u_input.b.x)), Struct_3(global0[_wgslsmith_index_u32(var_0, 8u)], vec3<bool>(false, false, false)))))).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1547f, var_1, var_2, var_1)))))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -349f), var_1)), _wgslsmith_f_op_f32(f32(-1f) * -1339f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) - _wgslsmith_f_op_f32(abs(var_2)))), func_1(Struct_2(Struct_1(vec2<bool>(true, true), false), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, _wgslsmith_f_op_f32(1801f * var_1), -496f, _wgslsmith_div_f32(var_1, var_2)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2, var_2, 392f, -834f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1251f, -250f, -1005f, -2110f), vec4<f32>(var_1, -999f, var_1, var_1)))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1085f, -1257f)))), Struct_4(func_1(Struct_2(Struct_1(vec2<bool>(false, false), true), true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(806f, var_2, 224f, -317f), vec4<f32>(var_1, var_1, -1000f, var_2), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_2)), Struct_4(Struct_2(Struct_1(vec2<bool>(false, true), false), true), Struct_2(Struct_1(vec2<bool>(true, true), true), true), global0[_wgslsmith_index_u32(4294967295u, 8u)], Struct_3(global0[_wgslsmith_index_u32(68400u, 8u)], vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(var_4, 8u)])).a, func_1(Struct_2(Struct_1(vec2<bool>(false, false), true), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -628f, 1064f, var_2)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1, -547f))), func_1(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 8u)], true), vec4<f32>(-718f, var_1, var_1, var_2), vec2<f32>(var_1, var_2), Struct_4(Struct_2(Struct_1(vec2<bool>(true, true), true), true), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 8u)], true), global0[_wgslsmith_index_u32(var_0, 8u)], Struct_3(global0[_wgslsmith_index_u32(17547u, 8u)], vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(var_0, 8u)]))).b, Struct_1(vec2<bool>(true, true), select(true, true, false)), func_1(Struct_2(Struct_1(vec2<bool>(false, true), true), false), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-104f, var_2, -430f, 444f), vec4<f32>(424f, var_1, var_2, 529f))), vec2<f32>(var_1, var_2), func_1(Struct_2(Struct_1(vec2<bool>(true, false), true), false), vec4<f32>(-758f, 1526f, var_1, var_2), vec2<f32>(-530f, -139f), Struct_4(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 8u)], true), Struct_2(global0[_wgslsmith_index_u32(0u, 8u)], false), Struct_1(vec2<bool>(false, false), true), Struct_3(Struct_1(vec2<bool>(false, false), true), vec3<bool>(false, true, false)), Struct_1(vec2<bool>(false, false), false)))).d, func_1(Struct_2(global0[_wgslsmith_index_u32(var_4, 8u)], true), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(647f, var_1, var_1, 266f), vec4<f32>(var_1, 691f, -1782f, var_1))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(var_2, -449f)), Struct_4(Struct_2(Struct_1(vec2<bool>(true, false), true), true), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 8u)], false), global0[_wgslsmith_index_u32(var_0, 8u)], Struct_3(global0[_wgslsmith_index_u32(854u, 8u)], vec3<bool>(false, false, true)), Struct_1(vec2<bool>(true, false), false))).c))).d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-u_input.b.x, ~max(u_input.a, -u_input.a), func_3().x));
}

