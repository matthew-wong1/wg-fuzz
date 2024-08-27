struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<u32, 9> = array<u32, 9>(0u, 0u, 2811u, 4294967295u, 1u, 70311u, 42410u, 6303u, 0u);

var<private> global2: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global3: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_1(-43999i, 1682f, vec3<u32>(0u, 0u, 1u)), vec2<bool>(true, false), Struct_1(1i, 447f, vec3<u32>(97794u, 0u, 38938u))), Struct_3(Struct_1(5940i, 827f, vec3<u32>(1u, 37291u, 63233u)), vec2<bool>(false, true), Struct_1(14664i, 619f, vec3<u32>(0u, 0u, 40291u))), Struct_3(Struct_1(-32969i, -188f, vec3<u32>(46101u, 54420u, 17904u)), vec2<bool>(true, true), Struct_1(12268i, -722f, vec3<u32>(1u, 19199u, 6516u))), Struct_3(Struct_1(-1i, -438f, vec3<u32>(15139u, 1u, 78898u)), vec2<bool>(false, false), Struct_1(-1i, 1304f, vec3<u32>(8765u, 4294967295u, 38127u))), Struct_3(Struct_1(15463i, 1053f, vec3<u32>(43628u, 4294967295u, 5759u)), vec2<bool>(true, true), Struct_1(-21177i, 161f, vec3<u32>(0u, 1u, 4294967295u))), Struct_3(Struct_1(i32(-2147483648), -877f, vec3<u32>(23811u, 0u, 20014u)), vec2<bool>(false, false), Struct_1(-1i, 684f, vec3<u32>(54337u, 1231u, 71846u))), Struct_3(Struct_1(2147483647i, -1000f, vec3<u32>(86884u, 83724u, 27570u)), vec2<bool>(false, false), Struct_1(669i, 474f, vec3<u32>(1u, 1u, 1u))), Struct_3(Struct_1(1i, 1039f, vec3<u32>(1u, 16967u, 15210u)), vec2<bool>(false, false), Struct_1(-1i, -588f, vec3<u32>(2452u, 1u, 1u))), Struct_3(Struct_1(1i, 477f, vec3<u32>(14362u, 4294967295u, 0u)), vec2<bool>(true, true), Struct_1(2147483647i, -1311f, vec3<u32>(9757u, 1u, 4294967295u))), Struct_3(Struct_1(0i, -1900f, vec3<u32>(61613u, 1u, 51177u)), vec2<bool>(false, false), Struct_1(1i, -1000f, vec3<u32>(4294967295u, 40442u, 61u))), Struct_3(Struct_1(i32(-2147483648), -1069f, vec3<u32>(5665u, 1u, 45404u)), vec2<bool>(true, false), Struct_1(1i, -587f, vec3<u32>(58080u, 0u, 0u))), Struct_3(Struct_1(1i, 2496f, vec3<u32>(26661u, 60010u, 1u)), vec2<bool>(false, true), Struct_1(2147483647i, 844f, vec3<u32>(17857u, 57429u, 68154u))));

var<private> global4: bool = true;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    global1 = array<u32, 9>();
    let var_0 = Struct_1(~_wgslsmith_add_i32(u_input.a, firstTrailingBit(_wgslsmith_div_i32(42347i, -5528i))), -1557f, (_wgslsmith_clamp_vec3_u32(max(vec3<u32>(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], 1u), vec3<u32>(global1[_wgslsmith_index_u32(18397u, 9u)], 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 9u)])), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(14479u, 9u)]), ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66796u, 9u)], 9u)], 9u)], global1[_wgslsmith_index_u32(26111u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)])) ^ ((vec3<u32>(4294967295u, 45161u, 13978u) << (vec3<u32>(87018u, global1[_wgslsmith_index_u32(21000u, 9u)], 4294967295u) % vec3<u32>(32u))) >> (~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 54968u, 16404u) % vec3<u32>(32u)))) & _wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~4294967295u, 9u)], 9u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53394u, 9u)], 9u)], global1[_wgslsmith_index_u32(1u, 9u)]), ~(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], 9u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)])), (vec3<u32>(1u, 0u, 4294967295u) | vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 48161u, 1u)) << (vec3<u32>(14186u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(174u, 9u)], 9u)], global1[_wgslsmith_index_u32(1u, 9u)]) % vec3<u32>(32u))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), var_1.b);
    return -36895i;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(abs(4294967295u), 12u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(973f, -534f), _wgslsmith_f_op_f32(-943f + 1000f))))));
    let var_2 = abs(vec3<i32>(func_3(), _wgslsmith_mod_i32(1i, ~(arg_1.x ^ arg_2)), -var_0.a.a));
    let var_3 = Struct_4(var_1.zy, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~var_0.c.c.x), var_0.a.c.x), 12u)], Struct_3(var_0.c, vec2<bool>(select(true, var_0.b.x && var_0.b.x, true), !(false && var_0.b.x)), Struct_1(var_0.a.a ^ ~u_input.a, var_0.a.b, var_0.a.c)), global0.x);
    let var_4 = Struct_2(any(var_0.b), all(!(!select(vec3<bool>(var_3.b.b.x, var_0.b.x, false), vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(var_0.b.x, true, true)))), var_3.c.c, Struct_1(-(~12439i), 1f, var_3.c.a.c));
    return var_0.c;
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(arg_0.c.x, 9u)], 2535u), ~22656u, global1[_wgslsmith_index_u32(~arg_0.c.x, 9u)] | _wgslsmith_mult_u32(4294967295u, arg_0.c.x), 44622u), reverseBits(~vec4<u32>(15665u, 16650u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)], arg_0.c.x)), reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(1u, 9u)], arg_0.c.x, countOneBits(11381u), arg_0.c.x))));
    let var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(ceil(arg_0.b)), var_0.xwx);
    var var_2 = -min(vec3<i32>(var_1.a, var_1.a, -14998i), vec3<i32>(~u_input.a, 48091i, 28498i));
    global1 = array<u32, 9>();
    global1 = array<u32, 9>();
    return vec4<i32>(_wgslsmith_sub_i32(1i, reverseBits(_wgslsmith_sub_i32(~6843i, ~(-1i)))), _wgslsmith_mult_i32(var_2.x, _wgslsmith_add_i32(var_1.a, u_input.a)), ~var_1.a ^ u_input.a, firstLeadingBit(((var_2.x ^ var_1.a) | -17701i) << (abs(1u) % 32u)));
}

fn func_1(arg_0: vec3<f32>) -> vec2<u32> {
    let var_0 = func_4(func_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstLeadingBit(921u), 9u)], 9u)], select(select(vec4<i32>(u_input.a, u_input.a, u_input.a, -60314i), vec4<i32>(31221i, u_input.a, 2147483647i, 1i) & vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<bool>(true, true, true, true)), firstLeadingBit(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a) | vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)), vec4<bool>(true, true, true, true)), ~(-1i)));
    let var_1 = var_0 & countOneBits(_wgslsmith_mod_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, -2147483647i), vec4<i32>(61621i, 1i, 1i, -2147483647i), vec4<i32>(5603i, var_0.x, var_0.x, -9650i))), var_0));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_0)))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0.x)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x)))))), global0.x, _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], 9u)], 9u)]), 9u)] << (func_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], var_0, var_0.x).c.x % 32u), 9u)], abs(vec4<i32>(u_input.a, 61467i, u_input.a, -2147483647i)), abs(var_0.x)).b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-108f * _wgslsmith_f_op_f32(ceil(global0.x))) - _wgslsmith_f_op_f32(min(-348f, arg_0.x)))));
    global3 = array<Struct_3, 12>();
    return func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(abs(23286u), 9u)] >> (0u % 32u), ~_wgslsmith_mod_u32(~4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20896u, 9u)], 9u)] & global1[_wgslsmith_index_u32(1u, 9u)])), 9u)], -(~var_0 | vec4<i32>(u_input.a, 45567i, var_0.x, var_0.x)) << (~vec4<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], _wgslsmith_mod_u32(30691u, global1[_wgslsmith_index_u32(64377u, 9u)]), global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(83753u, 9u)], 58859u), 9u)], ~48072u) % vec4<u32>(32u)), 0i).c.zz;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: vec2<f32>) -> bool {
    global3 = array<Struct_3, 12>();
    global2 = array<vec2<bool>, 6>();
    let var_0 = Struct_1(2147483647i, arg_2.x, vec3<u32>(~20812u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_1.yx, ~vec2<u32>(0u, 45047u)), arg_1.x), ~arg_0.x));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_3.x, -429f), -839f, arg_3.x))));
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_2)))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), var_0.b, _wgslsmith_f_op_f32(floor(-455f))))).x;
    return any(!select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, true, true)), false, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!func_5(func_1(vec3<f32>(1000f, global0.x, global0.x)) & (vec2<u32>(18696u, 0u) >> (vec2<u32>(49678u, global1[_wgslsmith_index_u32(52778u, 9u)]) % vec2<u32>(32u))), countOneBits(vec3<u32>(4294967295u, 2231u, 0u)), vec3<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), global0.x, global0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x))) + _wgslsmith_f_op_vec2_f32(-global0.xy))), true, func_2(1u, -_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 9718i, u_input.a, 1i), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), (_wgslsmith_mult_i32(u_input.a, u_input.a) | -u_input.a) >> (max(1u, global1[_wgslsmith_index_u32(max(85627u, 1u), 9u)]) % 32u)), Struct_1(~1i, _wgslsmith_f_op_f32(-global0.x), select(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(global1[_wgslsmith_index_u32(6073u, 9u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10611u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 4888u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 35568u, 1u), vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42002u, 9u)], 9u)], global1[_wgslsmith_index_u32(44386u, 9u)]))), vec3<u32>(30725u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)]), 4294967295u), true)));
    let var_1 = _wgslsmith_mod_i32(var_0.d.a, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), max(u_input.a, ~(~u_input.a))));
    var var_2 = func_3();
    var var_3 = var_0.d.a;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-var_0.d.b), _wgslsmith_f_op_f32(884f * 1017f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1761f, 531f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-219f, 737f, global0.x), vec3<f32>(1000f, global0.x, -261f))) - vec3<f32>(var_0.d.b, 735f, global0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(sign(-410f)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global0.x)))) * _wgslsmith_f_op_f32(var_0.c.b * _wgslsmith_f_op_f32(-1125f * global0.x)))));
    global3 = array<Struct_3, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(12343u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_4.xx - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1397f, -156f))))))), 29343u);
}

