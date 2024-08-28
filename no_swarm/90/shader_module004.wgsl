struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-49235i, 22301i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(1i, 2147483647i, 9381i), vec3<i32>(1i, -1i, -10878i), vec3<i32>(-1i, 2147483647i, -31506i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(11805i, -51542i, 1173i), vec3<i32>(i32(-2147483648), 13283i, -18011i), vec3<i32>(2147483647i, -47365i, 56478i), vec3<i32>(-7130i, -19400i, 0i), vec3<i32>(27800i, -32251i, 1685i), vec3<i32>(70268i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-53098i, -1i, -13336i), vec3<i32>(1i, -14769i, i32(-2147483648)), vec3<i32>(2147483647i, 24571i, 1i), vec3<i32>(1i, -24105i, -1i), vec3<i32>(-15953i, -32906i, 2147483647i), vec3<i32>(-1i, -5565i, 0i), vec3<i32>(-32864i, 4987i, 27218i), vec3<i32>(-1i, 20611i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, -21402i), vec3<i32>(2147483647i, -4925i, 14441i), vec3<i32>(-26360i, 0i, 0i), vec3<i32>(-1i, -1i, 52072i), vec3<i32>(0i, 2147483647i, 1223i), vec3<i32>(63175i, 58660i, -52111i), vec3<i32>(1i, -14596i, -43961i), vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(1i, 44184i, 19005i), vec3<i32>(-24732i, 1i, 0i), vec3<i32>(2147483647i, i32(-2147483648), 11685i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> bool {
    return !all(vec4<bool>(true, false, false, true));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = 94224i;
    var_0 = _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x >> (abs(17006u) % 32u), 19597u), 31u)], global0[_wgslsmith_index_u32(reverseBits(~4294967295u), 31u)]);
    let var_1 = Struct_2(~vec3<u32>(0u, _wgslsmith_dot_vec4_u32(~u_input.c, u_input.c), u_input.d), Struct_1(min(_wgslsmith_sub_u32(~38158u, 22915u), ~min(0u, 4455u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_div_f32(-746f, 1490f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(442f - -1040f), 381f)), ~vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.c.x), ~17667u), !(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), vec2<i32>(2147483647i, 1i)), Struct_1(75077u, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1595f, 1554f)), -1582f))), ~(~u_input.c.xx) & vec2<u32>(u_input.d, 7226u), vec4<bool>(func_3(u_input.c.x), !any(arg_0.yz), true, false), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1, ~1i), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1, 32680i), vec2<i32>(arg_1, arg_1)) << (u_input.c.wy % vec2<u32>(32u)))));
    global0 = array<vec3<i32>, 31>();
    let var_2 = _wgslsmith_sub_vec4_u32(u_input.c, ~vec4<u32>(u_input.d, max(var_1.b.c.x, 0u) << (_wgslsmith_mult_u32(var_1.c.a, u_input.d) % 32u), max(0u, var_1.b.c.x) & 0u, ~_wgslsmith_add_u32(4294967295u, u_input.b)));
    return var_1.c;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<u32> {
    global0 = array<vec3<i32>, 31>();
    global0 = array<vec3<i32>, 31>();
    var var_0 = arg_0;
    let var_1 = func_2(vec3<bool>(arg_1.d.x, true, any(var_0.c.d.yxz)), ~arg_2.x);
    global0 = array<vec3<i32>, 31>();
    return arg_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: vec3<i32>) -> Struct_1 {
    global0 = array<vec3<i32>, 31>();
    var var_0 = arg_0;
    global0 = array<vec3<i32>, 31>();
    var_0 = Struct_2(~(vec3<u32>(max(var_0.a.x, 0u), 81073u, _wgslsmith_clamp_u32(12209u, arg_0.a.x, u_input.c.x)) << ((_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.x, 41284u, arg_0.b.c.x), u_input.a, vec3<u32>(14496u, 4294967295u, 5993u)) ^ _wgslsmith_mod_vec3_u32(arg_0.a, vec3<u32>(33115u, 37714u, 0u))) % vec3<u32>(32u))), var_0.b, func_2(!arg_0.b.d.xyy, i32(-1i) * -8336i));
    var var_1 = !(true && (_wgslsmith_f_op_f32(func_2(vec3<bool>(true, var_0.b.d.x, false), 1i).b * arg_2) < _wgslsmith_f_op_f32(-1148f + _wgslsmith_f_op_f32(-arg_0.b.b))));
    return func_2(!(!var_0.c.d.xzx), arg_3.x);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> vec3<i32> {
    let var_0 = 8046u;
    global0 = array<vec3<i32>, 31>();
    var var_1 = Struct_2(func_1(Struct_2(arg_0.a, func_4(Struct_2(vec3<u32>(u_input.d, u_input.b, arg_0.c.a), arg_0.b, arg_0.b), 1u, _wgslsmith_f_op_f32(arg_0.c.b - -298f), ~vec3<i32>(2147483647i, 13120i, arg_0.b.e.x)), func_2(arg_0.c.d.wyx, -arg_0.b.e.x)), Struct_1(~reverseBits(4294967295u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c.b), -1667f)), ~u_input.c.yy, arg_0.c.d, arg_0.c.e), vec2<i32>(arg_0.c.e.x, ~(~arg_0.b.e.x))), arg_0.c, Struct_1(0u << (((var_0 << (0u % 32u)) << (arg_0.c.a % 32u)) % 32u), -160f, vec2<u32>(_wgslsmith_add_u32(~0u, func_2(arg_0.c.d.yxz, arg_0.c.e.x).a), ~func_4(arg_0, 1u, arg_0.b.b, vec3<i32>(-2147483647i, arg_0.b.e.x, arg_0.b.e.x)).c.x), vec4<bool>(!any(vec2<bool>(false, arg_2)), arg_1, !arg_2 | true, arg_2), vec2<i32>(-2147483647i, abs(arg_0.b.e.x)) | vec2<i32>(arg_0.b.e.x, _wgslsmith_sub_i32(-6177i, -2147483647i))));
    let var_2 = -vec4<i32>(arg_0.b.e.x, 11443i, -1i ^ firstTrailingBit(var_1.c.e.x), _wgslsmith_clamp_i32(func_4(arg_0, var_1.a.x, var_1.b.b, global0[_wgslsmith_index_u32(6775u, 31u)]).e.x, var_1.c.e.x, -44202i) << (4294967295u % 32u));
    var_1 = arg_0;
    return ~_wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_1(Struct_2(vec3<u32>(u_input.a.x, var_1.b.c.x, var_0), Struct_1(arg_0.b.c.x, 1013f, vec2<u32>(arg_0.a.x, 91288u), vec4<bool>(var_1.c.d.x, var_1.c.d.x, false, arg_0.c.d.x), vec2<i32>(-3986i, -12930i)), Struct_1(var_0, 776f, vec2<u32>(1u, 74290u), vec4<bool>(true, arg_1, true, arg_2), vec2<i32>(arg_0.c.e.x, -71031i))), func_2(arg_0.b.d.xyw, arg_0.b.e.x), vec2<i32>(arg_0.b.e.x, arg_0.c.e.x) | var_1.c.e).x, 4294967295u), 31u)], ~(global0[_wgslsmith_index_u32(var_1.a.x, 31u)] ^ global0[_wgslsmith_index_u32(u_input.a.x, 31u)]) | max(var_2.zyx, max(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(u_input.d, 31u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 31>();
    var var_0 = _wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], vec3<i32>(abs(i32(-1i) * -2147483647i), ~(~14015i), _wgslsmith_mult_i32(reverseBits(-1i), 1i)) ^ vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-346i, -1i), vec2<i32>(0i, -25i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-2001i, 2147483647i), vec2<i32>(2147483647i, -42716i))), -5915i, firstTrailingBit(-23793i)));
    var_0 = ~(~(~countOneBits(global0[_wgslsmith_index_u32(u_input.c.x, 31u)])) >> (firstLeadingBit(vec3<u32>(~1u, _wgslsmith_mult_u32(21618u, u_input.b), u_input.a.x)) % vec3<u32>(32u)));
    let var_1 = Struct_2(vec3<u32>(min(~u_input.b & _wgslsmith_mult_u32(73499u, 17550u), select(u_input.b, _wgslsmith_mod_u32(87321u, u_input.c.x), select(true, false, false))), u_input.b, 1u), Struct_1(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d << (u_input.c.x % 32u), u_input.c.x), ~u_input.b), -557f, abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.d), min(vec2<u32>(u_input.a.x, u_input.c.x), vec2<u32>(4294967295u, 1u)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_mult_vec2_i32(min(var_0.yx, vec2<i32>(-16835i, 23736i)), var_0.yz)), Struct_1(~_wgslsmith_div_u32(~u_input.b, 62082u), -1170f, _wgslsmith_add_vec2_u32(~u_input.c.zx | vec2<u32>(0u, 1u), u_input.c.xz), !vec4<bool>(any(vec3<bool>(false, true, true)), false, true, all(vec4<bool>(false, true, false, true))), ~(-vec2<i32>(-1i, var_0.x))));
    global0 = array<vec3<i32>, 31>();
    var_0 = func_5(Struct_2(vec3<u32>(reverseBits(~1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 17216u), vec2<u32>(4294967295u, u_input.c.x)), _wgslsmith_clamp_u32(u_input.c.x, 55889u, u_input.a.x) >> (_wgslsmith_mult_u32(5040u, var_1.b.a) % 32u)), func_4(Struct_2(func_1(var_1, Struct_1(41124u, -853f, var_1.a.zx, var_1.c.d, vec2<i32>(var_0.x, 15949i)), vec2<i32>(var_0.x, var_0.x)), var_1.b, Struct_1(1u, 1129f, u_input.c.wx, var_1.c.d, vec2<i32>(-2147483647i, var_0.x))), abs(0u), _wgslsmith_f_op_f32(exp2(var_1.c.b)), select(_wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], vec3<i32>(6083i, 38286i, var_1.c.e.x)), vec3<i32>(var_0.x, -2147483647i, var_0.x), select(vec3<bool>(var_1.b.d.x, true, var_1.c.d.x), vec3<bool>(var_1.c.d.x, true, var_1.b.d.x), var_1.b.d.x))), func_4(var_1, ~max(var_1.c.c.x, u_input.a.x), -1685f, vec3<i32>(9744i, func_2(var_1.c.d.yzz, -80037i).e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.e.x, -11065i, -43552i, var_0.x), vec4<i32>(var_1.b.e.x, -2147483647i, 45982i, var_1.c.e.x))))), true, false);
    var_0 = global0[_wgslsmith_index_u32(abs(min(u_input.d, var_1.a.x)), 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(1457f)), reverseBits(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_0.x, -33051i, 2147483647i, 19445i)), ~vec4<i32>(2147483647i, var_1.b.e.x, var_1.b.e.x, 2147483647i), ~vec4<i32>(-2147483647i, var_0.x, 15985i, var_1.c.e.x))) & vec4<i32>(var_1.c.e.x, func_5(Struct_2(vec3<u32>(u_input.b, 4337u, 8460u), Struct_1(62471u, var_1.c.b, vec2<u32>(u_input.d, var_1.a.x), vec4<bool>(false, var_1.c.d.x, var_1.c.d.x, var_1.b.d.x), var_1.b.e), Struct_1(0u, -1086f, vec2<u32>(8415u, 46526u), vec4<bool>(false, var_1.b.d.x, var_1.b.d.x, false), var_1.b.e)), true, true).x, var_1.c.e.x, ~(~var_1.b.e.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.c.x & u_input.d, 0u), u_input.c.yx) >> (firstTrailingBit(~var_1.a.x) % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(339f, _wgslsmith_f_op_f32(2618f + _wgslsmith_f_op_f32(step(var_1.b.b, var_1.c.b))))), _wgslsmith_dot_vec2_i32(vec2<i32>(-7567i, _wgslsmith_add_i32(firstLeadingBit(var_0.x), var_1.c.e.x)), _wgslsmith_sub_vec2_i32(var_0.yz, abs(vec2<i32>(var_0.x, 0i))) & (max(var_1.b.e, vec2<i32>(-1i, 3327i)) >> (~vec2<u32>(1u, var_1.a.x) % vec2<u32>(32u)))));
}

