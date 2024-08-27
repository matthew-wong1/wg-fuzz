struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(2147483647i, 1i, -52652i, i32(-2147483648)), false);

var<private> global1: vec3<i32>;

var<private> global2: f32 = -337f;

var<private> global3: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(~arg_0.a >> (max(select(max(vec4<u32>(6740u, u_input.c, 39838u, u_input.b), vec4<u32>(u_input.c, u_input.c, 6212u, u_input.b)), vec4<u32>(u_input.c, 4294967295u, u_input.c, 0u), false), vec4<u32>(1u, ~0u, 4294967295u, ~u_input.c)) % vec4<u32>(32u)), !global0.b);
    var var_1 = all(!select(vec2<bool>(false, false), vec2<bool>(arg_0.b, true), vec2<bool>(arg_0.b, any(vec2<bool>(true, global0.b)))));
    var var_2 = firstLeadingBit(var_0.a);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1163f + 199f), _wgslsmith_f_op_f32(541f + 1101f))) - _wgslsmith_f_op_f32(min(-1064f, _wgslsmith_f_op_f32(f32(-1f) * -208f)))))));
    var var_4 = Struct_2(arg_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -725f));
}

fn func_4(arg_0: f32) -> bool {
    let var_0 = any(!(!select(vec3<bool>(false, true, false), vec3<bool>(global0.b, false, global0.b), select(vec3<bool>(false, true, false), vec3<bool>(true, true, global0.b), vec3<bool>(true, false, global0.b)))));
    global2 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - 1813f), _wgslsmith_f_op_f32(arg_0 * arg_0)), 195f))));
    var var_1 = arg_0;
    let var_2 = Struct_3(select(vec3<bool>(!var_0, !(!global0.b), true), !select(!vec3<bool>(var_0, global0.b, false), vec3<bool>(true, global0.b, true), vec3<bool>(global0.b, true, global0.b)), global0.b));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0, arg_0)), _wgslsmith_f_op_f32(max(710f, _wgslsmith_f_op_f32(min(-477f, -1349f))))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(874f * arg_0), _wgslsmith_f_op_f32(-arg_0)))))));
    return (false && var_0) || all(var_2.a);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = !func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a, false))) * _wgslsmith_f_op_f32(min(1000f, -2305f))));
    var var_1 = countOneBits(vec4<u32>(41896u, firstTrailingBit(1u >> (1u % 32u)), abs(u_input.c), abs(firstLeadingBit(_wgslsmith_mod_u32(21095u, u_input.c)))));
    var var_2 = _wgslsmith_f_op_f32(455f - _wgslsmith_f_op_f32(451f * _wgslsmith_f_op_f32(func_3(Struct_1(u_input.a, arg_1.x > global0.a.x)))));
    global2 = _wgslsmith_div_f32(_wgslsmith_div_f32(907f, 993f), _wgslsmith_f_op_f32(ceil(1273f)));
    let var_3 = Struct_4(var_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(646f, -1259f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1515f, 265f))), vec2<bool>(false, arg_0.x)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-810f, -525f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(243f, -586f))))))), Struct_1(~global0.a ^ vec4<i32>(-60116i, -40458i, 2147483647i, _wgslsmith_div_i32(1i, global1.x)), arg_0.x), global0.b);
    return Struct_3(vec3<bool>(any(vec2<bool>(arg_0.x && var_3.c.b, all(arg_0.zyz))), all(vec4<bool>(any(vec2<bool>(arg_0.x, var_3.c.b)), !arg_0.x, true, true)), (102109i ^ arg_1.x) > -2147483647i));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_mult_i32(arg_2.a.a.x, ~((_wgslsmith_sub_i32(u_input.d, u_input.a.x) >> (78891u % 32u)) << ((_wgslsmith_mult_u32(u_input.b, 4294967295u) & ~26006u) % 32u)));
    var var_1 = 28251i;
    let var_2 = ~104388u;
    global3 = _wgslsmith_sub_u32(select(reverseBits(var_2), var_2, global0.b), 0u);
    global1 = -select(select(reverseBits(_wgslsmith_mult_vec3_i32(arg_2.a.a.zxw, vec3<i32>(global1.x, var_0, 25364i))), vec3<i32>(_wgslsmith_add_i32(u_input.a.x, -15104i), min(31552i, arg_2.a.a.x), min(-21613i, -43950i)), _wgslsmith_f_op_f32(-arg_3.x) == _wgslsmith_f_op_f32(f32(-1f) * -754f)), abs(firstTrailingBit(max(global0.a.yzx, global0.a.wyx))), !func_2(vec4<bool>(arg_1.a.x, arg_2.a.b, false, false), vec4<i32>(arg_2.a.a.x, 0i, 43233i, 1i)).a);
    return -_wgslsmith_div_vec3_i32(arg_2.a.a.wxz, -min(global0.a.xwy, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 0i, u_input.d), vec3<i32>(32323i, var_0, 40201i), global0.a.xww)));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> vec2<f32> {
    global1 = vec3<i32>(_wgslsmith_mod_i32(global0.a.x, _wgslsmith_clamp_i32(firstLeadingBit(global0.a.x), -2147483647i, countOneBits(abs(global0.a.x)))), 1i, countOneBits(global1.x >> ((u_input.c & 0u) % 32u)));
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-650f, arg_1.x, arg_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(711f, 679f, arg_1.x) * vec3<f32>(arg_1.x, -811f, arg_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(step(arg_1.x, -828f)), 777f, _wgslsmith_f_op_f32(arg_1.x + 126f)))), vec3<f32>(arg_1.x, -856f, -315f), select(vec3<bool>(false && arg_0, global0.b, true), !vec3<bool>(arg_0, false, arg_0), !global0.b)))));
    global3 = u_input.b;
    global1 = _wgslsmith_sub_vec3_i32(func_5(true, func_2(!(!vec4<bool>(arg_0, global0.b, global0.b, true)), -u_input.a), Struct_2(Struct_1(vec4<i32>(u_input.d, 0i, global1.x, -2147483647i), select(arg_0, arg_0, arg_0))), arg_1.wyx), vec3<i32>(-24049i, global1.x, global1.x | u_input.d));
    global0 = Struct_1(-u_input.a, arg_0);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yy) + arg_1.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-229f, -2071f, 233f, 1352f))))), Struct_1(u_input.a, true), false);
    global1 = -_wgslsmith_add_vec3_i32(u_input.a.yxw, u_input.a.yyw);
    var_0 = Struct_4(~85253u, vec2<f32>(var_0.b.x, -730f), Struct_1(global0.a, true), !var_0.d);
    var var_1 = Struct_2(Struct_1(u_input.a, global0.b));
    let var_2 = _wgslsmith_mod_vec3_i32(select(vec3<i32>(~var_0.c.a.x, func_5(true, Struct_3(vec3<bool>(var_0.c.b, false, global0.b)), Struct_2(var_0.c), vec3<f32>(var_0.b.x, var_0.b.x, 280f)).x, u_input.a.x), ~var_1.a.a.yxw, func_2(select(vec4<bool>(global0.b, global0.b, var_1.a.b, false), vec4<bool>(var_0.c.b, var_0.c.b, true, false), false), select(var_0.c.a, vec4<i32>(var_1.a.a.x, 2147483647i, global1.x, global1.x), vec4<bool>(false, true, var_0.c.b, true))).a) >> (~(~(~vec3<u32>(57675u, 4294967295u, 19010u))) % vec3<u32>(32u)), global0.a.xyy);
    global3 = min(~u_input.c, u_input.c << (0u % 32u));
    var var_3 = reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(var_2, -global0.a.wxz), ~(-18179i), var_2.x, u_input.d), firstTrailingBit(~var_0.c.a)));
    let var_4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.b.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -989f)), -2310f, -330f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1097f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x * 469f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(761f, -612f, -148f)))))), !vec3<bool>(false, var_0.d, var_0.d)));
    global2 = 1454f;
    let x = u_input.a;
    s_output = StorageBuffer(69814u, 597f, reverseBits(~u_input.b), global1.zy, min(u_input.b, 1u));
}

