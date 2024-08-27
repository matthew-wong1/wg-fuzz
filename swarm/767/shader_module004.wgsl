struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec4<u32>(108847u, 16217u, 4294967295u, 1u), 1000f, Struct_1(42030i)), Struct_3(vec4<u32>(4294967295u, 52704u, 8429u, 28291u), -643f, Struct_1(1i)), Struct_3(vec4<u32>(8046u, 112470u, 31596u, 0u), -882f, Struct_1(-1i)), Struct_3(vec4<u32>(24426u, 6369u, 4294967295u, 4294967295u), -335f, Struct_1(-59698i)), Struct_3(vec4<u32>(48354u, 0u, 98391u, 61467u), 290f, Struct_1(i32(-2147483648))), Struct_3(vec4<u32>(61062u, 38853u, 60948u, 412u), -336f, Struct_1(39675i)), Struct_3(vec4<u32>(68468u, 0u, 139196u, 1u), -1000f, Struct_1(2147483647i)), Struct_3(vec4<u32>(30997u, 0u, 34990u, 8762u), 298f, Struct_1(-53250i)), Struct_3(vec4<u32>(17607u, 4294967295u, 0u, 1u), 568f, Struct_1(-1i)), Struct_3(vec4<u32>(0u, 3211u, 4294967295u, 4231u), -2001f, Struct_1(-1i)), Struct_3(vec4<u32>(32203u, 6137u, 42523u, 0u), -1000f, Struct_1(29551i)), Struct_3(vec4<u32>(4294967295u, 0u, 31614u, 59716u), -356f, Struct_1(0i)), Struct_3(vec4<u32>(40945u, 0u, 0u, 4294967295u), -284f, Struct_1(2147483647i)), Struct_3(vec4<u32>(4294967295u, 11793u, 1u, 17222u), -345f, Struct_1(28645i)), Struct_3(vec4<u32>(19579u, 0u, 4294967295u, 0u), 112f, Struct_1(-19689i)), Struct_3(vec4<u32>(0u, 1u, 1u, 12457u), 1000f, Struct_1(1i)), Struct_3(vec4<u32>(0u, 8930u, 4294967295u, 4294967295u), 223f, Struct_1(-1i)), Struct_3(vec4<u32>(1u, 0u, 46172u, 4294967295u), -1000f, Struct_1(14771i)), Struct_3(vec4<u32>(1u, 0u, 29535u, 4294967295u), -259f, Struct_1(-11704i)), Struct_3(vec4<u32>(0u, 0u, 56411u, 1602u), -2027f, Struct_1(-7804i)), Struct_3(vec4<u32>(11058u, 4294967295u, 8944u, 1u), 284f, Struct_1(2147483647i)));

var<private> global1: i32 = -1i;

var<private> global2: Struct_1 = Struct_1(-22041i);

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<bool>) -> vec3<f32> {
    global0 = array<Struct_3, 21>();
    var var_0 = !(!arg_3.x);
    var var_1 = 570f;
    var var_2 = min(~(~_wgslsmith_mod_vec3_i32(-vec3<i32>(global2.a, -1i, 33099i), ~vec3<i32>(1i, arg_1.a, arg_0.x))), reverseBits(-abs(vec3<i32>(global2.a, arg_0.x, global2.a))));
    global3 = 53280u;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-396f * 1905f))), -1413f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-472f + 1000f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - -1211f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(737f, 144f, 1495f), vec3<f32>(-305f, -691f, -2025f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-548f, 1180f, -1000f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(163f, -762f, -889f)))))));
}

fn func_2() -> Struct_2 {
    var var_0 = ~_wgslsmith_add_i32(i32(-1i) * -1i, i32(-1i) * -(~global2.a));
    let var_1 = ~(~_wgslsmith_mult_u32(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~1u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1239f, 1000f, -763f))))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2260f, -492f, -1355f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-298f, 346f, -560f), vec3<f32>(-1239f, 1844f, -1749f)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1323f, -1965f, -748f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(13946i, global2.a), Struct_1(global2.a), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1374f, 182f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1821f), _wgslsmith_f_op_f32(f32(-1f) * -486f), _wgslsmith_f_op_f32(-462f - -271f)))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-876f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -1321f))) + var_2.zy), Struct_1(-1i), Struct_3(firstTrailingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, u_input.a.x), ~vec4<u32>(var_1, 4294967295u, 7454u, u_input.a.x))), _wgslsmith_f_op_f32(abs(var_2.x)), Struct_1(0i)));
    var var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_3.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(842f, -730f)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_2.zx)))))), var_3.b, var_3.c);
    return Struct_2(vec3<f32>(var_2.x, 3130f, -1141f));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> vec2<u32> {
    var var_0 = global2.a ^ -(-arg_3 | ~_wgslsmith_mod_i32(1i, 27183i));
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x + -845f) + _wgslsmith_f_op_f32(-1120f - arg_1))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-563f, arg_1))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-823f, arg_1)), _wgslsmith_f_op_vec2_f32(arg_2.a.zx - vec2<f32>(arg_1, -357f)), arg_0)))), Struct_1(-arg_3), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a.x, 0u), ~min(_wgslsmith_clamp_u32(u_input.a.x, 53096u, 0u), _wgslsmith_sub_u32(4294967295u, 1u)), ~(u_input.a.x & u_input.a.x)), 21u)]);
    global1 = var_1.c.c.a;
    var_0 = 39600i;
    var var_2 = select(select(select(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, false), vec2<bool>(true, true)), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true)), vec2<bool>(true, false), !vec2<bool>(arg_0, arg_0)), true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec4<bool>(true, false, true, false))), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0)), select(vec2<bool>(false, true), vec2<bool>(arg_0, true), vec2<bool>(arg_0, false)), arg_0), !arg_0 | any(vec3<bool>(false, arg_0, arg_0))), !select(!vec2<bool>(arg_0, true), select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0)), any(vec4<bool>(arg_0, arg_0, true, arg_0)))), vec2<bool>(arg_0, !select(-1175f > arg_1, arg_1 < arg_1, false)), vec2<bool>(arg_0, any(vec2<bool>(true, true)) & arg_0));
    return u_input.a >> (_wgslsmith_div_vec2_u32(~vec2<u32>(var_1.c.a.x, _wgslsmith_mod_u32(var_1.c.a.x, var_1.c.a.x)), u_input.a) % vec2<u32>(32u));
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global0 = array<Struct_3, 21>();
    let var_0 = global2.a;
    global3 = _wgslsmith_sub_u32(~_wgslsmith_div_u32(select(13285u, reverseBits(30542u), any(vec2<bool>(true, true))), arg_0.x), abs(_wgslsmith_add_u32(0u, _wgslsmith_div_u32(arg_1, 0u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.a.x)))), arg_2.a.x)));
    global1 = ~(-select(firstLeadingBit(21411i), global2.a, true));
    return arg_2;
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_2();
    global0 = array<Struct_3, 21>();
    let var_1 = Struct_1(global2.a);
    var var_2 = var_1;
    var var_3 = (all(vec4<bool>(u_input.a.x < 0u, true, true, all(vec2<bool>(true, true)))) || any(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false))) && false;
    return Struct_1(global2.a);
}

fn func_1() -> StorageBuffer {
    global2 = func_6(global2.a, func_5(_wgslsmith_mult_vec2_u32(func_4(false, _wgslsmith_f_op_f32(floor(498f)), func_2(), -global2.a), vec2<u32>(max(u_input.a.x, 4294967295u), u_input.a.x)), _wgslsmith_div_u32(1u, ~(~u_input.a.x)), func_2(), Struct_1(abs(global2.a))));
    global3 = ~func_4(select(false, true, (u_input.a.x >= u_input.a.x) | true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(769f, -327f))))), func_2(), global2.a).x;
    global1 = firstLeadingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(30568i, global2.a, -1i), -min(vec3<i32>(4548i, global2.a, global2.a), vec3<i32>(global2.a, 22559i, -15763i) >> (vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))));
    let var_0 = _wgslsmith_mult_i32(abs(_wgslsmith_mult_i32(~global2.a, -(global2.a & 26127i))), ~global2.a);
    let var_1 = true;
    return StorageBuffer(max(global2.a, global2.a) | _wgslsmith_add_i32(-1i, global2.a), ~vec4<u32>(~u_input.a.x, 0u, u_input.a.x, u_input.a.x) & _wgslsmith_clamp_vec4_u32(countOneBits(min(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 19714u), vec4<u32>(u_input.a.x, u_input.a.x, 83717u, u_input.a.x))), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 1u)), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), ~0u, ~67566u), vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), min(u_input.a.x, 53764u), 71346u, u_input.a.x | u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(503f - -881f), _wgslsmith_div_f32(-136f, -623f), _wgslsmith_f_op_f32(410f - 1000f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(501f, -447f, 573f)))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.a.x);
    var var_2 = -abs(select(vec3<i32>(global2.a, global2.a, global2.a), vec3<i32>(global2.a, -49779i, 2147483647i), vec3<bool>(true, true, true)) ^ (max(vec3<i32>(global2.a, 1i, global2.a), vec3<i32>(global2.a, 1i, global2.a)) ^ ~vec3<i32>(global2.a, 65609i, 0i)));
    let x = u_input.a;
    s_output = func_1();
}

