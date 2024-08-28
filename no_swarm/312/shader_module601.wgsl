struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(78590i, 1i, 2147483647i, i32(-2147483648), 15833i, 54404i, 29196i, 43657i, 54125i, -18014i, 1i, 25519i, 2147483647i, 26590i, 35412i, 30257i, 0i, 0i, -20616i, 84927i, 1i, 753i, -1i, 12623i, 1i, 0i, 1i, 2147483647i);

var<private> global1: bool = false;

var<private> global2: array<i32, 4> = array<i32, 4>(i32(-2147483648), 2147483647i, -28871i, 2539i);

var<private> global3: array<i32, 30> = array<i32, 30>(-36591i, 2895i, 2147483647i, 1i, -1i, 1i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 1i, -5361i, 25181i, -1i, 871i, -54129i, 1i, 2147483647i, -19665i, -1i, 0i, 9419i, 0i, -1i, -19172i, -31993i, 2147483647i, 1i, 0i, 18697i, -76529i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = true;
    global2 = array<i32, 4>();
    let var_1 = 1i;
    global3 = array<i32, 30>();
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(651f, -1411f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 400f) * _wgslsmith_div_vec2_f32(vec2<f32>(-292f, -825f), vec2<f32>(-541f, 1388f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-928f, -1519f), vec2<f32>(-200f, 928f)))))));
    return true;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(343f * _wgslsmith_f_op_f32(round(1794f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1002f))));
    var var_1 = select(!select(vec2<bool>(arg_0 & arg_0, func_3()), !(!vec2<bool>(arg_0, arg_0)), !arg_0), vec2<bool>(any(select(!vec4<bool>(arg_0, true, true, arg_0), !vec4<bool>(arg_0, arg_0, arg_0, true), arg_0)), false), !(!select(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), arg_0), vec2<bool>(true, true), !arg_0)));
    global3 = array<i32, 30>();
    var_1 = vec2<bool>(select(var_1.x, !(!(true | arg_0)), true), !select(any(select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(true, var_1.x, true, true), vec4<bool>(true, var_1.x, arg_0, var_1.x))), var_1.x, arg_0));
    let var_2 = !any(select(!select(vec2<bool>(false, var_1.x), vec2<bool>(true, arg_0), vec2<bool>(var_1.x, var_1.x)), vec2<bool>(select(false, true, var_1.x), true), !vec2<bool>(false, var_1.x)));
    return Struct_1(select(vec3<u32>(11646u, _wgslsmith_clamp_u32(abs(28381u), 11751u, arg_1.x), ~4294967295u), ~(~arg_1.ywy), vec3<bool>(true, select(false, true, true), var_1.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 28u)], abs(min(-1i, 1939i))), (vec2<i32>(u_input.a.x, -31673i) | ~u_input.a.zx) ^ u_input.a.yz), arg_1.zyw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(max(var_0.x, -649f)), _wgslsmith_f_op_f32(f32(-1f) * -358f))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = arg_1.b.xy;
    global0 = array<i32, 28>();
    let var_1 = arg_2.d.zx;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(sign(-441f)), !select(vec3<bool>(any(arg_1.b), !var_0.x, !var_0.x), arg_1.b, any(arg_0.zx)), _wgslsmith_div_i32(-6884i, ~arg_2.b.x >> (78973u % 32u)));
    let var_3 = false;
    return arg_2.c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<u32> {
    global0 = array<i32, 28>();
    global3 = array<i32, 30>();
    var var_0 = arg_3.yy;
    let var_1 = Struct_1(~(~(~arg_0.c)), u_input.a.zz, max(~abs(vec3<u32>(35659u, 1u, arg_0.a.x)) & vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, u_input.b, 35916u), vec3<u32>(75098u, 23426u, arg_2.c.x)), arg_1.c.x, arg_0.a.x), abs(~arg_2.a)), _wgslsmith_f_op_vec3_f32(round(arg_0.d)));
    var var_2 = Struct_2(_wgslsmith_div_f32(-317f, _wgslsmith_f_op_f32(floor(-1000f))), !(!(!(!arg_3.wxx))), 18582i);
    return _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.a.x, reverseBits(_wgslsmith_sub_u32(arg_0.c.x, 23330u)), min(79191u, arg_0.a.x), func_2(var_2.b.x, select(vec4<u32>(u_input.b, 13836u, arg_1.a.x, 0u), vec4<u32>(arg_0.c.x, 56725u, arg_2.c.x, 4294967295u), vec4<bool>(true, var_2.b.x, arg_3.x, true))).a.x), ~firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(u_input.b, 4294967295u), arg_1.a.x, arg_0.a.x & u_input.b, _wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(u_input.b, arg_0.a.x, 26983u)))), ~vec4<u32>(1u | arg_0.c.x, _wgslsmith_div_u32(u_input.b, _wgslsmith_mod_u32(arg_0.c.x, 26750u)), func_4(vec3<bool>(true, true, true), Struct_2(-135f, arg_3.wxy, -1i), arg_1).x, 4294967295u));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    global2 = array<i32, 4>();
    global1 = all(vec2<bool>(all(vec2<bool>(true, false)), arg_2));
    let var_0 = Struct_1(~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~arg_0.xyx, vec3<u32>(49575u, arg_1.x, arg_1.x)), _wgslsmith_sub_vec3_u32(max(arg_0.zzx, vec3<u32>(133463u, 1u, arg_1.x)), vec3<u32>(0u, 4294967295u, arg_1.x))), select(vec2<i32>(1i << ((arg_0.x >> (27537u % 32u)) % 32u), -81100i), arg_3, false), max(vec3<u32>(16573u, ~41158u, 27465u), _wgslsmith_mod_vec3_u32(min(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, arg_0.x), arg_0.wzx), ~vec3<u32>(30398u, 12132u, u_input.b)), arg_0.www)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-528f + 125f), _wgslsmith_f_op_f32(-332f - 135f), 175f))))));
    let var_1 = -1416f;
    var var_2 = func_2(arg_2 & !arg_2, arg_0);
    return var_0;
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = func_6(func_5(Struct_1(func_4(!vec3<bool>(true, false, arg_0.b.x), arg_0, func_2(arg_0.b.x, vec4<u32>(8065u, u_input.b, u_input.b, u_input.b))), select(vec2<i32>(-42003i, -60165i), -vec2<i32>(8713i, global0[_wgslsmith_index_u32(u_input.b, 28u)]), select(arg_0.b.yy, arg_0.b.xy, vec2<bool>(false, arg_0.b.x))), max(vec3<u32>(1u, 5169u, 32458u), abs(vec3<u32>(u_input.b, 4294967295u, 70990u))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -887f), _wgslsmith_f_op_f32(f32(-1f) * -298f), _wgslsmith_f_op_f32(-420f + arg_0.a))), Struct_1(vec3<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 21161u, u_input.b, u_input.b), vec4<u32>(594u, 4294967295u, u_input.b, u_input.b)), 42989u >> (1u % 32u)), vec2<i32>(2147483647i, -31377i << (0u % 32u)), vec3<u32>(~59861u, 0u, ~u_input.b), vec3<f32>(arg_0.a, 366f, _wgslsmith_f_op_f32(floor(-465f)))), Struct_1(~vec3<u32>(33487u, u_input.b, 24597u), vec2<i32>(-1i) * -vec2<i32>(15241i, -1i), vec3<u32>(u_input.b & u_input.b, _wgslsmith_add_u32(0u, u_input.b), u_input.b), vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(round(-359f)), arg_0.a)), !(!vec4<bool>(arg_0.b.x, false, true, arg_0.b.x))), ~(~(~vec3<u32>(0u, 51802u, 66360u))), arg_0.b.x & ((arg_0.b.x | func_3()) || (_wgslsmith_sub_u32(u_input.b, u_input.b) <= ~1u)), -vec2<i32>(~(i32(-1i) * -29261i), ~countOneBits(global0[_wgslsmith_index_u32(42574u, 28u)])));
    global1 = arg_0.b.x;
    let var_1 = true;
    var var_2 = arg_0.b.yx;
    let var_3 = countOneBits(_wgslsmith_add_u32(1u, var_0.c.x));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(55996u);
    var var_1 = vec2<u32>(~_wgslsmith_mod_u32(min(_wgslsmith_mult_u32(59569u, u_input.b), u_input.b), 1u), abs(u_input.b));
    let var_2 = !(!(-func_1(Struct_2(-1354f, vec3<bool>(true, false, true), u_input.a.x)) >= firstLeadingBit(1i >> (u_input.b % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-30123i, reverseBits(vec4<i32>(func_2(true, _wgslsmith_mult_vec4_u32(vec4<u32>(16312u, var_1.x, 4294967295u, u_input.b), vec4<u32>(65528u, 27940u, 68296u, 0u))).b.x, i32(-1i) * -u_input.a.x, (global3[_wgslsmith_index_u32(1u, 30u)] ^ 18916i) >> (firstLeadingBit(0u) % 32u), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(16157u, 28u)], -2147483647i, u_input.a.x, -2147483647i), vec4<i32>(29811i, 26486i, global2[_wgslsmith_index_u32(53107u, 4u)], global0[_wgslsmith_index_u32(u_input.b, 28u)]))))), 6746i);
}

