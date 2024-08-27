struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-17348i, vec2<i32>(i32(-2147483648), 2147483647i), vec3<i32>(12200i, i32(-2147483648), 0i), 7525u, 1i);

var<private> global1: vec4<u32> = vec4<u32>(1u, 1u, 1u, 1u);

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(i32(-2147483648), vec2<i32>(-1i, 1i), vec3<i32>(2147483647i, 26867i, 0i), 41297u, 1i), Struct_1(0i, vec2<i32>(-26062i, -1i), vec3<i32>(41091i, 6930i, 1i), 20324u, 2147483647i), Struct_1(-1i, vec2<i32>(-27438i, -6813i), vec3<i32>(-43330i, -1i, -75319i), 26259u, -52388i), Struct_1(-1i, vec2<i32>(18616i, -1i), vec3<i32>(0i, 12791i, 57515i), 4294967295u, -1i), Struct_1(2147483647i, vec2<i32>(32246i, -41784i), vec3<i32>(0i, -1i, 2710i), 4294967295u, -1i), Struct_1(-51563i, vec2<i32>(-4591i, -22817i), vec3<i32>(1i, -2072i, -15306i), 4294967295u, 1i), Struct_1(i32(-2147483648), vec2<i32>(5143i, 18559i), vec3<i32>(-1i, 0i, 0i), 16588u, 1i), Struct_1(i32(-2147483648), vec2<i32>(-19773i, 1i), vec3<i32>(39834i, 41344i, 0i), 9967u, 0i), Struct_1(2646i, vec2<i32>(i32(-2147483648), 3080i), vec3<i32>(-24067i, -1i, 1i), 0u, 0i), Struct_1(27802i, vec2<i32>(-54355i, 0i), vec3<i32>(1i, -30113i, 2147483647i), 1u, 11110i), Struct_1(-12332i, vec2<i32>(-22396i, -19616i), vec3<i32>(36570i, i32(-2147483648), 8303i), 4294967295u, -1i), Struct_1(-1i, vec2<i32>(27795i, 2147483647i), vec3<i32>(-14019i, -1i, i32(-2147483648)), 1u, 2147483647i), Struct_1(-17492i, vec2<i32>(-1i, 0i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), 4294967295u, 1i), Struct_1(-32286i, vec2<i32>(1i, i32(-2147483648)), vec3<i32>(-51284i, -2883i, i32(-2147483648)), 1u, -1i), Struct_1(-1i, vec2<i32>(7210i, -32605i), vec3<i32>(i32(-2147483648), 2147483647i, 0i), 20325u, -1i), Struct_1(i32(-2147483648), vec2<i32>(-35166i, i32(-2147483648)), vec3<i32>(1i, -20525i, 2147483647i), 28080u, -43629i), Struct_1(0i, vec2<i32>(50692i, i32(-2147483648)), vec3<i32>(4338i, 855i, -32521i), 45946u, 5467i), Struct_1(i32(-2147483648), vec2<i32>(i32(-2147483648), -55556i), vec3<i32>(8192i, -11684i, -38797i), 20811u, 2147483647i), Struct_1(-1419i, vec2<i32>(0i, 1i), vec3<i32>(2147483647i, 1i, -248i), 10948u, i32(-2147483648)), Struct_1(-26830i, vec2<i32>(-7227i, i32(-2147483648)), vec3<i32>(-1i, 0i, 0i), 54440u, 15670i), Struct_1(-26262i, vec2<i32>(2147483647i, 2147483647i), vec3<i32>(-16081i, i32(-2147483648), 4170i), 138581u, -11290i), Struct_1(1i, vec2<i32>(2147483647i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), 13123u, -1i), Struct_1(2147483647i, vec2<i32>(49794i, -12639i), vec3<i32>(i32(-2147483648), 10080i, 41982i), 43560u, i32(-2147483648)), Struct_1(-38830i, vec2<i32>(i32(-2147483648), -1i), vec3<i32>(18057i, 0i, 16515i), 36000u, -40486i), Struct_1(27694i, vec2<i32>(-1i, 1i), vec3<i32>(-34355i, 8839i, 0i), 1u, i32(-2147483648)), Struct_1(4484i, vec2<i32>(17014i, 41096i), vec3<i32>(44682i, 8342i, 486i), 10778u, 24788i), Struct_1(0i, vec2<i32>(1i, -1i), vec3<i32>(2147483647i, 10104i, 72847i), 35384u, i32(-2147483648)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<f32> {
    global0 = arg_1;
    global2 = array<Struct_1, 27>();
    let var_0 = arg_1;
    var var_1 = arg_0.x;
    let var_2 = arg_2;
    return arg_2.zyw;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = vec4<i32>(~u_input.c.x, -31856i, ~(u_input.d.x >> (0u % 32u)) >> (_wgslsmith_mult_u32(1u, 1u) % 32u), global0.a);
    let var_1 = global2[_wgslsmith_index_u32(~(~33101u), 27u)];
    var var_2 = !(!all(vec3<bool>(true, true, true)));
    global2 = array<Struct_1, 27>();
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-487f, 435f, -2046f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(247f, -555f, -1015f), vec3<f32>(-1470f, -1000f, 563f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1409f, -607f, 763f))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(false, true, false, true), Struct_1(1i, vec2<i32>(var_1.c.x, 2147483647i), vec3<i32>(-50061i, var_0.x, 4354i), arg_0, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 685f, 434f, 658f) + vec4<f32>(1105f, -1000f, 1000f, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2607f, 497f, -174f) * vec3<f32>(266f, 1212f, 603f)))))) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2803f))), _wgslsmith_div_f32(1430f, _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(false, true, false, true), global2[_wgslsmith_index_u32(79447u, 27u)], vec4<f32>(2108f, 2078f, 732f, 375f))).x, 994f)), _wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(arg_0, 27u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-184f, 380f, -684f, -415f)))))).x));
    return global2[_wgslsmith_index_u32(~var_1.d, 27u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    global2 = array<Struct_1, 27>();
    global2 = array<Struct_1, 27>();
    return Struct_1(_wgslsmith_dot_vec2_i32(func_2(~func_2(1u).d).b, vec2<i32>(~(i32(-1i) * -2147483647i), global0.a & _wgslsmith_clamp_i32(0i, global0.a, arg_0.a))), func_2(_wgslsmith_add_u32(~1u, global1.x)).c.yx, vec3<i32>(u_input.b.x, arg_0.a, 12418i), ~1u, _wgslsmith_sub_i32(u_input.a.x, 247i));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>) -> Struct_1 {
    global2 = array<Struct_1, 27>();
    var var_0 = func_4(func_2(global0.d >> (~(~112274u) % 32u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2249f, 131f, 243f) + vec3<f32>(-1103f, -769f, 1000f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1068f, -241f, 182f), vec3<f32>(1000f, -1113f, -319f))))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-916f, 1425f, 411f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1169f + 1000f)), 1432f, 414f)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -743f), _wgslsmith_div_f32(467f, -749f), 6922u >= arg_0.x)), -924f, _wgslsmith_f_op_f32(-1393f - -2006f)))));
    global0 = Struct_1(var_0.c.x, min(reverseBits(vec2<i32>(_wgslsmith_sub_i32(2147483647i, global0.a), ~(-6003i))), ~(u_input.b.yz | firstTrailingBit(var_0.b))), vec3<i32>(-(global0.b.x >> (69346u % 32u)), u_input.a.x, global0.a) ^ vec3<i32>(-_wgslsmith_mod_i32(2147483647i, -57240i), 1i, global0.b.x), _wgslsmith_mult_u32(~0u, var_0.d), _wgslsmith_mod_i32(-1i, ~2147483647i) & (firstLeadingBit(var_0.c.x) & (_wgslsmith_mod_i32(2147483647i, u_input.a.x) | _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(u_input.a.x, 11999i)))));
    global2 = array<Struct_1, 27>();
    return func_2(27889u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-2147483647i, -global0.b, _wgslsmith_div_vec3_i32(u_input.a.xzw, global0.c) & u_input.c, ~_wgslsmith_div_u32(4294967295u, max(34630u, ~30212u)), u_input.a.x);
    global0 = global2[_wgslsmith_index_u32(~(~abs(global1.x)), 27u)];
    global2 = array<Struct_1, 27>();
    global1 = ~(~vec4<u32>(~global0.d, 21057u, 16261u, _wgslsmith_div_u32(global0.d, ~25450u)));
    var var_1 = func_1(global1.yzz, !vec2<bool>(-1631f != _wgslsmith_f_op_f32(round(-2303f)), true));
    let var_2 = any(select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, true, true))), true));
    var var_3 = global1.xxy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(var_2, var_2, var_2, true), global2[_wgslsmith_index_u32(global0.d, 27u)], vec4<f32>(1007f, -461f, -2235f, -1334f))).x, _wgslsmith_f_op_f32(trunc(-245f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1095f, 1504f)))), global1.xx, -311f);
}

