struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22>;

var<private> global1: Struct_4;

var<private> global2: Struct_2;

var<private> global3: Struct_4;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(global3.b.a, vec3<f32>(_wgslsmith_f_op_f32(trunc(1350f)), 314f, arg_1)));
    global1 = Struct_4(select(-4234i, _wgslsmith_dot_vec3_i32(reverseBits(select(vec3<i32>(arg_2.c, arg_2.a, global1.c), vec3<i32>(1i, -1i, global2.b.c), vec3<bool>(true, arg_0, global2.b.b))), max(-global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(global2.b.d, 22u)] << (global2.a.ywy % vec3<u32>(32u)))), true), Struct_3(global3.b.a), global2.b.c);
    let var_1 = ~(~vec3<i32>(2147483647i, ~global1.a & global2.b.c, 1i));
    global2 = Struct_2(global2.a, global2.b, ~4294967295u, global3.b.a.x);
    global3 = arg_2;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_4) -> i32 {
    let var_0 = true;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(all(!vec4<bool>(var_0, false, false, true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global3.b.a.x)))), Struct_4(global1.a, global1.b, _wgslsmith_sub_i32(global2.b.c, arg_2.a)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global3.b.a.x, _wgslsmith_f_op_f32(min(-2582f, arg_2.b.a.x)), false))))), arg_1.b.a.x);
    global0 = array<vec3<i32>, 22>();
    var var_2 = -947f;
    var var_3 = arg_0.x;
    return ~min(-1i >> (global2.a.x % 32u), ~(-2147483647i));
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    global2 = Struct_2(~min(~vec4<u32>(4294967295u, global2.a.x, 4294967295u, 18167u), ~select(vec4<u32>(global2.b.d, u_input.a.x, 1u, 35910u), vec4<u32>(34577u, global2.c, u_input.a.x, global2.c), global2.b.b)), Struct_1(840f, all(vec2<bool>(global2.b.b, all(vec3<bool>(false, false, false)))), ~_wgslsmith_sub_i32(-17109i | global3.a, global3.c | global3.a), countOneBits(countOneBits(_wgslsmith_div_u32(4294967295u, u_input.b)))), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, _wgslsmith_f_op_f32(max(arg_0.b.a.x, 575f)), arg_0))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f), _wgslsmith_f_op_f32(f32(-1f) * -506f)), -432f))));
    global2 = Struct_2(_wgslsmith_mod_vec4_u32(global2.a, min(_wgslsmith_mult_vec4_u32(global2.a, vec4<u32>(1037u, 0u, 18106u, global2.a.x)), global2.a) & global2.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.a.x - -2131f) * 521f)), false, -20889i, (~4294967295u ^ ~u_input.a.x) << (u_input.b % 32u)), ~abs(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global1.b.a.x)))))));
    let var_0 = vec3<bool>(any(!select(vec4<bool>(false, global2.b.b, global2.b.b, global2.b.b), !vec4<bool>(global2.b.b, true, global2.b.b, global2.b.b), false)), global2.b.b, false);
    global3 = Struct_4(-2147483647i, global1.b, global2.b.c << (global2.a.x % 32u));
    let var_1 = Struct_4(arg_0.a, Struct_3(vec3<f32>(330f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(294f, global3.b.a.x)), _wgslsmith_f_op_f32(step(arg_0.b.a.x, 1f)))), global2.b.c);
    return var_1;
}

fn func_5(arg_0: Struct_4, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -1283f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(false, global3.b.a.x, arg_0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -824f))) * vec4<f32>(-534f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1334f + 1032f) * _wgslsmith_f_op_f32(select(arg_0.b.a.x, -1470f, global2.b.b))) - _wgslsmith_f_op_f32(max(func_4(Struct_4(global3.a, Struct_3(global1.b.a), global3.a)).b.a.x, _wgslsmith_f_op_f32(-arg_0.b.a.x)))), global3.b.a.x, _wgslsmith_f_op_f32(func_3(false, global2.b.a, Struct_4(23598i, Struct_3(vec3<f32>(726f, global3.b.a.x, global3.b.a.x)), abs(global1.c))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.a.x, 150f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(590f, -596f, -1081f, global1.b.a.x), vec4<f32>(global1.b.a.x, 1103f, global2.b.a, global3.b.a.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1236f, var_1.x, -1207f, arg_0.b.a.x))), all(vec4<bool>(false, false, global2.b.b, false)))))));
    var var_2 = arg_0;
    var var_3 = ~max(global2.a, _wgslsmith_add_vec4_u32(~abs(global2.a), ~(~global2.a)));
    return Struct_1(_wgslsmith_f_op_f32(313f * 298f), true, countOneBits(-2759i), ~select(_wgslsmith_mult_u32(27730u, var_3.x), var_3.x, select(any(vec2<bool>(true, false)), false, any(vec3<bool>(global2.b.b, false, true)))));
}

fn func_1() -> vec4<bool> {
    var var_0 = !vec2<bool>(all(vec2<bool>(!global2.b.b, global2.b.b | true)), true);
    let var_1 = Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, min(global2.b.d, u_input.b), u_input.a.x, 4294967295u), global2.a | min(firstTrailingBit(vec4<u32>(5469u, global2.a.x, 1u, global2.a.x)), global2.a)), func_5(func_4(Struct_4(_wgslsmith_clamp_i32(-2147483647i, global3.a, 1i), Struct_3(vec3<f32>(global1.b.a.x, -478f, global1.b.a.x)), func_2(vec2<i32>(41001i, global1.c), Struct_4(global3.a, Struct_3(global1.b.a), global1.c), Struct_4(2147483647i, Struct_3(global3.b.a), -32442i)))), global1.b.a.zx), _wgslsmith_mod_u32(20286u, ~_wgslsmith_sub_u32(u_input.b, 0u)), -1759f);
    global0 = array<vec3<i32>, 22>();
    let var_2 = var_1;
    return !select(vec4<bool>(!(var_1.b.d > 1116u), any(!vec2<bool>(true, global2.b.b)), true, var_1.b.b), select(vec4<bool>(!global2.b.b, !var_0.x, var_2.b.b && var_0.x, var_1.b.b), !(!vec4<bool>(true, var_0.x, true, var_0.x)), var_2.b.b), select(vec4<bool>(true, true, true, true), vec4<bool>(!global2.b.b, all(vec2<bool>(var_0.x, true)), var_0.x, !var_0.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1();
    let var_1 = firstLeadingBit(global1.c);
    global3 = Struct_4(-1i, func_4(Struct_4(1i, func_4(func_4(Struct_4(0i, Struct_3(vec3<f32>(global1.b.a.x, -711f, -2231f)), -49865i))).b, firstTrailingBit(var_1 << (17838u % 32u)))).b, ~35305i);
    global3 = Struct_4(-39186i, Struct_3(_wgslsmith_f_op_vec3_f32(min(global1.b.a, vec3<f32>(1168f, -840f, _wgslsmith_f_op_f32(global1.b.a.x * -142f))))), _wgslsmith_mod_i32(_wgslsmith_add_i32(~func_2(vec2<i32>(-28648i, var_1), Struct_4(1i, global3.b, global1.a), Struct_4(global1.c, Struct_3(global1.b.a), global1.c)), 13927i), _wgslsmith_dot_vec2_i32(vec2<i32>(func_4(Struct_4(0i, global1.b, -15458i)).c, -54370i), select(vec2<i32>(18372i, var_1), ~vec2<i32>(2147483647i, var_1), true))));
    global0 = array<vec3<i32>, 22>();
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global3.b.a, vec3<f32>(-2202f, global3.b.a.x, 2239f), false)), _wgslsmith_div_vec3_f32(vec3<f32>(108f, 189f, -1083f), vec3<f32>(362f, global2.b.a, -143f))) + _wgslsmith_f_op_vec3_f32(trunc(global1.b.a))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.a.x * -1689f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(839f))), _wgslsmith_f_op_f32(901f - _wgslsmith_f_op_f32(-global3.b.a.x)))), min(_wgslsmith_dot_vec2_i32(vec2<i32>(-16624i, -2147483647i), vec2<i32>(global1.a, global1.a) >> (max(global2.a.wy, u_input.a) % vec2<u32>(32u))), _wgslsmith_add_i32(_wgslsmith_sub_i32(func_4(Struct_4(global2.b.c, global3.b, -1i)).c, global2.b.c), min(global2.b.c, 1i))));
    let var_3 = select(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(var_1, -25109i, global3.a) ^ vec3<i32>(var_2.b, var_1, global3.a)) << (_wgslsmith_add_vec3_u32(global2.a.yzy, abs(vec3<u32>(u_input.a.x, u_input.b, u_input.b))) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(-14485i, var_1), var_2.b >> (u_input.b % 32u), 24771i) | ((vec3<i32>(global3.a, global1.c, 36584i) ^ vec3<i32>(global3.c, var_1, 2147483647i)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(8760i, -81746i, 12210i), vec3<i32>(26014i, global1.c, 37011i)))), _wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, u_input.b, u_input.a.x | ~24102u), 22u)], vec3<i32>(func_2(vec2<i32>(var_1, var_2.b), Struct_4(var_2.b, global1.b, var_1), Struct_4(0i, Struct_3(global1.b.a), 78369i)), 54923i & var_2.b, var_1) << (global2.a.zwx % vec3<u32>(32u))), !var_0.xzy);
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.a.x);
}

