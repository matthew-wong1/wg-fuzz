struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<u32>(9625u, 5523u, 4550u, 0u), vec2<bool>(true, false)), Struct_1(vec4<u32>(63015u, 4294967295u, 99727u, 1u), vec2<bool>(false, false)), Struct_1(vec4<u32>(44038u, 57890u, 93098u, 38263u), vec2<bool>(true, false)), Struct_1(vec4<u32>(50323u, 4294967295u, 57892u, 49420u), vec2<bool>(true, true)), Struct_1(vec4<u32>(1u, 4294967295u, 61136u, 8727u), vec2<bool>(true, true)), Struct_1(vec4<u32>(26766u, 92614u, 1u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec4<u32>(4294967295u, 7606u, 1u, 32249u), vec2<bool>(true, false)), Struct_1(vec4<u32>(4294967295u, 22700u, 1u, 42630u), vec2<bool>(false, true)), Struct_1(vec4<u32>(4294967295u, 1u, 5616u, 19475u), vec2<bool>(true, true)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = !(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) > firstLeadingBit(_wgslsmith_sub_i32(-22745i, reverseBits(-7868i))));
    var var_1 = -732f;
    global2 = array<Struct_1, 9>();
    global1 = firstTrailingBit(u_input.a);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -527f);
    return !select(select(vec4<bool>(global0.x, var_0, var_0, true), vec4<bool>(global0.x, !var_0, arg_0.x > arg_0.x, 736f <= arg_0.x), select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, true, false, true), !vec4<bool>(true, true, global0.x, false))), vec4<bool>(global0.x, all(vec3<bool>(false, var_0, true)), true, !any(vec4<bool>(var_0, true, false, true))), all(vec2<bool>(true, arg_0.x > 275f)));
}

fn func_2() -> u32 {
    global2 = array<Struct_1, 9>();
    var var_0 = i32(-1i) * -2147483647i;
    var_0 = reverseBits(global1.x);
    global0 = select(select(select(vec4<bool>(true | global0.x, all(vec4<bool>(global0.x, true, global0.x, global0.x)), true, !global0.x), select(select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, false, global0.x)), func_3(vec3<f32>(277f, 467f, 528f)), vec4<bool>(false, global0.x, false, false)), vec4<bool>(global0.x, global0.x, any(vec4<bool>(global0.x, false, false, global0.x)), true)), vec4<bool>(~u_input.d.x > ~u_input.b.x, true, all(global0.yy), global0.x && global0.x), select(!(!vec4<bool>(true, true, true, global0.x)), vec4<bool>(true, any(vec4<bool>(true, true, false, true)), global0.x, global0.x), func_3(vec3<f32>(931f, -1247f, 1448f)))), vec4<bool>(true, true, true, !(true || any(vec3<bool>(true, false, global0.x)))), vec4<bool>(true, select(!(!global0.x), global0.x, false), true, !any(vec3<bool>(true, true, true)) & true));
    let var_1 = 732f;
    return 1u;
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    global0 = vec4<bool>(func_2() != _wgslsmith_mod_u32(u_input.b.x, 21926u), all(vec4<bool>(false, global0.x, false, true && (u_input.d.x >= 0u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-3029f, -1794f))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(617f + -346f))) * 434f), global0.x);
    let var_0 = firstTrailingBit(~abs(vec3<i32>(_wgslsmith_div_i32(arg_0.x, global1.x), -u_input.c, firstLeadingBit(34932i))));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(521f, -1298f, 338f))) - vec3<f32>(275f, -1145f, -1212f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -828f), _wgslsmith_f_op_f32(abs(130f))) - vec3<f32>(703f, _wgslsmith_f_op_f32(min(374f, -126f)), _wgslsmith_f_op_f32(ceil(631f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(144f, 2149f, -862f)) - vec3<f32>(_wgslsmith_f_op_f32(trunc(667f)), _wgslsmith_div_f32(1378f, -2779f), -1215f))))));
    let var_3 = Struct_2(var_0.x, Struct_1(max(firstTrailingBit(~vec4<u32>(1u, u_input.d.x, 4294967295u, u_input.d.x)), select(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 3252u), vec4<u32>(u_input.d.x, u_input.b.x, 0u, u_input.d.x), var_1) ^ u_input.b), global0.zw), vec3<bool>(false, !var_1 & false, var_1), Struct_1(u_input.b, !func_3(vec3<f32>(var_2.x, -131f, var_2.x)).yw));
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-822f, var_2.x)))))), 1552f, ~abs(u_input.d), var_3.b, Struct_2(_wgslsmith_clamp_i32(arg_0.x, global1.x, var_3.a), Struct_1(var_3.b.a, !global0.ww), var_3.c, Struct_1(~max(vec4<u32>(0u, 1u, u_input.b.x, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 48974u)), !vec2<bool>(var_3.c.x, false))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<i32>, arg_3: bool) -> Struct_2 {
    var var_0 = 1539f;
    return Struct_2(_wgslsmith_sub_i32(global1.x, arg_0.e.a), Struct_1(vec4<u32>(~arg_0.c.x, u_input.d.x ^ 4294967295u, u_input.d.x, 4294967295u) ^ abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.c.x, arg_0.d.a.x, arg_0.e.b.a.x, 24917u), vec4<u32>(14282u, arg_0.d.a.x, 4564u, u_input.b.x))), func_1(arg_2.zyx).d.b), global0.xzx, arg_0.e.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(-vec3<i32>(1i, _wgslsmith_clamp_i32(-2359i, global1.x, 0i), global1.x)), max(min(u_input.c, i32(-1i) * -2147483647i) | abs(countOneBits(u_input.a.x)), -6880i), firstTrailingBit(vec4<i32>(29909i, _wgslsmith_add_i32(~u_input.a.x, _wgslsmith_mod_i32(global1.x, global1.x)), select(u_input.a.x, 0i, global0.x), -_wgslsmith_clamp_i32(-1i, global1.x, global1.x))), true);
    var var_1 = Struct_5(Struct_2(select(countOneBits(func_1(vec3<i32>(global1.x, global1.x, u_input.c)).e.a), select(reverseBits(var_0.a), _wgslsmith_mod_i32(u_input.a.x, 0i), global1.x == u_input.a.x), var_0.d.b.x), Struct_1(~_wgslsmith_mult_vec4_u32(u_input.d, var_0.d.a), func_4(func_1(vec3<i32>(u_input.c, 2147483647i, u_input.a.x)), _wgslsmith_div_i32(global1.x, global1.x), ~vec4<i32>(31362i, u_input.a.x, u_input.c, var_0.a), !global0.x).d.b), !(!select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, true, false), vec3<bool>(var_0.d.b.x, var_0.c.x, var_0.c.x))), func_4(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-889f, -1484f, -978f)), 242f, _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d.a.x, 112601u, u_input.d.x, var_0.b.a.x), vec4<u32>(57241u, 1u, u_input.d.x, u_input.b.x)), var_0.b, var_0), global1.x, _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, -63190i, 0i, var_0.a), _wgslsmith_add_vec4_i32(vec4<i32>(global1.x, u_input.c, u_input.a.x, var_0.a), vec4<i32>(u_input.a.x, var_0.a, -3467i, -30942i))), func_4(func_1(vec3<i32>(var_0.a, global1.x, u_input.a.x)), var_0.a, vec4<i32>(global1.x, u_input.a.x, global1.x, var_0.a), global1.x >= u_input.a.x).c.x).b), !vec3<bool>(true, all(!vec3<bool>(var_0.b.b.x, var_0.c.x, false)), true), global0.yw, !global0.x);
    let var_2 = true;
    global2 = array<Struct_1, 9>();
    global2 = array<Struct_1, 9>();
    var var_3 = Struct_2(-1i, Struct_1(min(var_1.a.b.a, ~vec4<u32>(4294967295u, 0u, 23272u, 1u)), !global0.zw), global0.wxx, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1709f))), 1u, -vec2<i32>(i32(-1i) * -3858i, var_3.a << (8542u % 32u)));
}

