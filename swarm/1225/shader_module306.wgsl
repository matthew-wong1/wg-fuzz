struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(Struct_2(vec4<i32>(-37655i, -32299i, 2147483647i, 15238i), 0u, -19912i, -1i, Struct_1(vec3<bool>(true, true, true), false, false, vec2<i32>(i32(-2147483648), 51892i)))), Struct_4(Struct_2(vec4<i32>(-33824i, 28236i, 0i, 73696i), 0u, 2147483647i, -11595i, Struct_1(vec3<bool>(false, true, false), false, false, vec2<i32>(i32(-2147483648), i32(-2147483648))))), Struct_4(Struct_2(vec4<i32>(-1733i, 1i, 0i, 2147483647i), 0u, -49641i, i32(-2147483648), Struct_1(vec3<bool>(false, false, false), false, true, vec2<i32>(0i, -26865i)))), Struct_4(Struct_2(vec4<i32>(1i, -108745i, -33866i, -30093i), 4294967295u, 50312i, -1i, Struct_1(vec3<bool>(true, false, true), false, false, vec2<i32>(-29281i, 0i)))), Struct_4(Struct_2(vec4<i32>(0i, 24717i, 16353i, -1i), 1u, 21480i, i32(-2147483648), Struct_1(vec3<bool>(true, true, true), true, true, vec2<i32>(1i, 23447i)))), Struct_4(Struct_2(vec4<i32>(-29778i, -12884i, 2147483647i, 1i), 0u, 49251i, 35112i, Struct_1(vec3<bool>(true, false, false), false, false, vec2<i32>(i32(-2147483648), 0i)))), Struct_4(Struct_2(vec4<i32>(-39760i, 2147483647i, -79145i, 2147483647i), 0u, 1i, 1i, Struct_1(vec3<bool>(false, true, false), false, false, vec2<i32>(-4087i, 1i)))), Struct_4(Struct_2(vec4<i32>(-1i, -9280i, 26679i, 80077i), 51642u, 0i, -14777i, Struct_1(vec3<bool>(false, false, true), false, true, vec2<i32>(4665i, -1i)))), Struct_4(Struct_2(vec4<i32>(7902i, 30080i, 0i, -43476i), 54108u, 2147483647i, -71833i, Struct_1(vec3<bool>(false, true, false), false, false, vec2<i32>(-44443i, i32(-2147483648))))), Struct_4(Struct_2(vec4<i32>(1i, 34220i, 2870i, 2147483647i), 76158u, -50687i, i32(-2147483648), Struct_1(vec3<bool>(true, false, false), true, false, vec2<i32>(i32(-2147483648), 1i)))), Struct_4(Struct_2(vec4<i32>(-2115i, 5595i, -4384i, -33129i), 4294967295u, 2147483647i, i32(-2147483648), Struct_1(vec3<bool>(true, false, true), false, false, vec2<i32>(29010i, i32(-2147483648))))), Struct_4(Struct_2(vec4<i32>(21813i, i32(-2147483648), 33779i, 582i), 11230u, 1i, 2147483647i, Struct_1(vec3<bool>(true, true, true), false, true, vec2<i32>(-20950i, 2837i)))), Struct_4(Struct_2(vec4<i32>(0i, -1i, 26139i, -24637i), 24876u, -50356i, 2147483647i, Struct_1(vec3<bool>(true, false, true), true, false, vec2<i32>(-19851i, 2147483647i)))), Struct_4(Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -1i), 1u, 4619i, 19891i, Struct_1(vec3<bool>(true, false, false), true, false, vec2<i32>(1i, -37257i)))), Struct_4(Struct_2(vec4<i32>(28143i, 860i, 1i, -21958i), 1u, 0i, 7330i, Struct_1(vec3<bool>(false, false, true), true, true, vec2<i32>(-40505i, 26324i)))), Struct_4(Struct_2(vec4<i32>(-22393i, i32(-2147483648), -3291i, 0i), 4294967295u, 2147483647i, -42146i, Struct_1(vec3<bool>(false, true, true), false, true, vec2<i32>(26939i, 52239i)))), Struct_4(Struct_2(vec4<i32>(25814i, 65193i, 29999i, 36095i), 1u, 1i, 13863i, Struct_1(vec3<bool>(false, true, true), true, true, vec2<i32>(1i, i32(-2147483648))))), Struct_4(Struct_2(vec4<i32>(20749i, 2147483647i, 1i, 0i), 0u, 1i, -40053i, Struct_1(vec3<bool>(true, false, true), true, false, vec2<i32>(2030i, 1i)))), Struct_4(Struct_2(vec4<i32>(1i, 0i, -1i, -7582i), 54305u, -57488i, -122i, Struct_1(vec3<bool>(false, false, false), false, true, vec2<i32>(14477i, -60896i)))), Struct_4(Struct_2(vec4<i32>(0i, 26312i, 0i, 2800i), 32919u, 24618i, 0i, Struct_1(vec3<bool>(true, false, false), false, false, vec2<i32>(47783i, i32(-2147483648))))), Struct_4(Struct_2(vec4<i32>(48119i, -1i, 0i, 18483i), 24214u, 26092i, 23685i, Struct_1(vec3<bool>(false, false, true), false, true, vec2<i32>(0i, i32(-2147483648))))), Struct_4(Struct_2(vec4<i32>(21176i, i32(-2147483648), -28015i, 9935i), 4294967295u, -46567i, 2147483647i, Struct_1(vec3<bool>(true, true, true), false, false, vec2<i32>(-1224i, 20192i)))), Struct_4(Struct_2(vec4<i32>(2147483647i, 14864i, 39025i, 0i), 4294967295u, i32(-2147483648), -76689i, Struct_1(vec3<bool>(true, true, false), true, true, vec2<i32>(1i, i32(-2147483648))))));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = vec2<bool>(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.a < 13434u)), true || any(!select(vec2<bool>(true, false), vec2<bool>(false, true), true)));
    var var_1 = Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-857f + global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), 2018f))), Struct_1(select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), true), !vec3<bool>(false, true, var_0.x), vec3<bool>(true, false, false)), any(vec3<bool>(var_0.x, false, true)), all(vec2<bool>(true, true)), select(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, -8874i)), vec2<i32>(0i, arg_0), vec2<bool>(true, var_0.x))), Struct_1(!vec3<bool>(true, var_0.x, var_0.x), false, var_0.x, _wgslsmith_clamp_vec2_i32(-vec2<i32>(arg_0, 1i), abs(vec2<i32>(-8513i, 0i)), vec2<i32>(14682i, 0i)))));
    let var_2 = var_1.a.b;
    var_1 = Struct_5(var_1.a);
    global1 = array<Struct_4, 23>();
    return select(_wgslsmith_clamp_i32(max(-17727i, _wgslsmith_sub_i32(-6974i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.d.x, 1i, arg_0), vec3<i32>(1i, 41959i, 2147483647i)))), -(_wgslsmith_mod_i32(var_2.d.x, var_1.a.c.d.x) | arg_0), ~18632i & (i32(-1i) * -arg_0)), var_2.d.x, var_0.x);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_2(~vec4<i32>(arg_0, ~(-156i), func_3(40516i), ~arg_0 & max(2147483647i, arg_0)), abs(1u), min(_wgslsmith_sub_i32(arg_0, abs(21221i)), arg_0 ^ _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_0, arg_0, -15032i, 47014i)), countOneBits(vec4<i32>(arg_0, arg_0, 44747i, -31987i)))), arg_0, Struct_1(!vec3<bool>(false, select(true, false, true), true), !any(vec2<bool>(false, true)), all(vec4<bool>(true, global0.x < 1000f, all(vec3<bool>(false, true, true)), true)), -vec2<i32>(54353i, 0i) ^ vec2<i32>(arg_0 & arg_0, arg_0)));
    var_0 = Struct_2(firstLeadingBit(select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -17533i, 1i), var_0.a.wxw), firstLeadingBit(1i), abs(arg_0), ~(-1i)), ~(~var_0.a), vec4<bool>(true, var_0.e.b, false, 22643u <= var_0.b))), firstLeadingBit(42139u), -var_0.a.x, firstTrailingBit(-_wgslsmith_mod_i32(2097i, 1i)), Struct_1(var_0.e.a, all(!vec2<bool>(var_0.e.b, var_0.e.a.x)), !(!var_0.e.b), var_0.e.d));
    var var_1 = !var_0.e.b;
    global1 = array<Struct_4, 23>();
    let var_2 = max(vec4<i32>(arg_0, -countOneBits(func_3(var_0.c)), firstLeadingBit(-var_0.a.x), ~1i), vec4<i32>(-var_0.a.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(0i, -43951i) ^ arg_0, -arg_0), ~(-33585i), 2147483647i));
    return Struct_2(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(var_2.x, var_2.x, -40025i, 20753i)), _wgslsmith_mult_vec4_i32(var_2, ~vec4<i32>(arg_0, -12285i, 0i, arg_0))) | (~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 1i, arg_0, 21431i), var_2) >> (~vec4<u32>(var_0.b, u_input.b, u_input.a, 4294967295u) % vec4<u32>(32u))), var_0.b, -2147483647i, func_3(_wgslsmith_div_i32(var_0.e.d.x, func_3(-2147483647i >> (u_input.a % 32u)))), Struct_1(vec3<bool>(var_0.e.c, any(!vec4<bool>(var_0.e.a.x, var_0.e.c, false, false)), all(select(var_0.e.a.zx, var_0.e.a.yz, true))), var_0.e.a.x, var_0.e.a.x, var_0.e.d));
}

fn func_1() -> f32 {
    var var_0 = ~(~(~u_input.a));
    let var_1 = 311f;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.wx) + vec2<f32>(420f, global0.x)), _wgslsmith_f_op_vec2_f32(-global0.zx));
    var var_3 = func_2(abs(-2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-299f, -574f, 540f, var_1) + vec4<f32>(982f, -835f, 385f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-446f, var_2.x, -384f, var_1))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, var_1, global0.x, var_1), vec4<f32>(445f, 1455f, global0.x, global0.x))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.xyw, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x - var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(294f, var_2.x)) * -979f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, 370f, false))))));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -abs(vec3<i32>(abs(~39655i), firstLeadingBit(1i), 26267i));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    global1 = array<Struct_4, 23>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -1000f))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x + global0.x))), 433f)));
    let var_2 = Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1947f, 985f, -1207f, 1485f))), vec4<f32>(262f, -325f, 1000f, var_1.x), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false)))), Struct_1(vec3<bool>(true, all(vec3<bool>(true, false, false)), true), true, _wgslsmith_f_op_f32(select(var_1.x, global0.x, false)) < -337f, ~vec2<i32>(-30589i, var_0.x)), Struct_1(vec3<bool>(true, true, true), true, true, -vec2<i32>(var_0.x, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(~u_input.a, 3312u, min(u_input.b, 71908u), 1u & u_input.b)), vec4<u32>(1u, 78140u, 70333u, 14964u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a.a.x, 942f, var_1.x, 323f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-899f, -1274f, var_1.x, 912f) - _wgslsmith_f_op_vec4_f32(sign(var_2.a.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a.x)));
}

