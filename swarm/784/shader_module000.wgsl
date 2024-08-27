struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_3,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30>;

var<private> global1: vec4<i32>;

var<private> global2: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-1041f, -1111f, 846f), vec3<f32>(1000f, 1208f, 1783f), vec3<f32>(-210f, 116f, 957f), vec3<f32>(268f, -261f, -801f), vec3<f32>(1003f, 260f, -354f), vec3<f32>(-240f, 1330f, -1000f), vec3<f32>(1215f, 228f, 331f), vec3<f32>(269f, -1488f, 1065f), vec3<f32>(1000f, 507f, -944f), vec3<f32>(1587f, -856f, -593f), vec3<f32>(238f, 496f, 310f), vec3<f32>(-1633f, -1312f, 130f), vec3<f32>(-186f, 1453f, -1000f), vec3<f32>(1000f, -361f, -712f), vec3<f32>(687f, 2211f, 193f), vec3<f32>(-803f, -449f, 1000f), vec3<f32>(1451f, -932f, 311f), vec3<f32>(-1045f, 799f, -1515f), vec3<f32>(950f, -130f, 1243f), vec3<f32>(-1105f, 196f, 1125f), vec3<f32>(-921f, -1000f, 205f), vec3<f32>(-269f, 921f, 733f), vec3<f32>(-743f, 1391f, -1295f), vec3<f32>(1748f, 1973f, -1748f), vec3<f32>(-2410f, -134f, 2112f), vec3<f32>(-1012f, -940f, -1000f), vec3<f32>(-580f, 753f, -364f), vec3<f32>(1218f, 557f, 1000f), vec3<f32>(1253f, 577f, 407f), vec3<f32>(-1865f, 196f, 1333f), vec3<f32>(193f, -216f, -556f));

var<private> global3: array<f32, 20>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = 4294967295u;
    global3 = array<f32, 20>();
    var var_1 = !any(vec2<bool>(false, true));
    let var_2 = Struct_2(vec4<bool>(select(true, all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), true), !((4343i < u_input.a) & select(true, false, false)), 1u != abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 10584u, u_input.c.x), global0[_wgslsmith_index_u32(1u, 30u)])), true || !any(vec3<bool>(false, true, true))), Struct_1(vec2<u32>(abs(4294967295u), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(1106f - 1746f))) - 1404f), vec2<bool>(!(u_input.c.x == 6385u), true), select(1u, ~reverseBits(u_input.c.x), true)), _wgslsmith_mod_vec2_u32(abs(_wgslsmith_div_vec2_u32(select(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x), false), ~vec2<u32>(46226u, 4294967295u))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, countOneBits(u_input.c.x)), vec2<u32>(u_input.c.x & u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x, 0u, 1u)))), ~vec2<u32>(~u_input.c.x, ~reverseBits(u_input.c.x)));
    global3 = array<f32, 20>();
    return var_2.b.c.x;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5) -> vec3<f32> {
    global1 = vec4<i32>(~_wgslsmith_div_i32(min(0i, -1i), ~510i), arg_1.c.x, i32(-1i) * -_wgslsmith_add_i32(arg_1.c.x, u_input.a), _wgslsmith_dot_vec2_i32(~global1.xz | vec2<i32>(0i, 0i), ~abs(vec2<i32>(arg_0.e.x, arg_1.c.x)))) >> (abs(_wgslsmith_div_vec4_u32(min(vec4<u32>(arg_1.b.d.x, arg_0.c.c, 0u, 98855u), vec4<u32>(6921u, arg_1.a.c.x, u_input.c.x, arg_0.d.d)) >> (firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 38761u)) % vec4<u32>(32u)), vec4<u32>(79496u, ~u_input.c.x, _wgslsmith_div_u32(u_input.c.x, arg_0.c.b), min(24831u, arg_1.b.b.d)))) % vec4<u32>(32u));
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(arg_0.d.d, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(867u, 1u, u_input.c.x, 73121u), vec4<u32>(arg_0.c.c, 4294967295u, 0u, 64001u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 46832u, 8819u, 60857u), vec4<u32>(4294967295u, arg_0.d.d, u_input.c.x, 2434u), vec4<u32>(1u, 79742u, arg_1.a.d.x, arg_0.c.b))), arg_1.a.b.d << (u_input.c.x % 32u)), ~reverseBits(_wgslsmith_mult_u32(14296u, u_input.c.x)), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(arg_1.a.b.d, arg_0.c.c), arg_1.b.d.x)), vec3<u32>(min(min(~0u, arg_1.a.b.a.x), ~(~1u)), _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_div_u32(arg_1.a.d.x, 0u) | 42836u), ~(~arg_0.c.c)));
    var_0 = ~arg_0.c.c;
    let var_1 = Struct_2(vec4<bool>(arg_0.b, true, arg_0.d.d > _wgslsmith_mod_u32(4294967295u, 1u), !arg_0.d.c.x), arg_0.d, arg_1.a.c, vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 2340u, 1u) << ((global0[_wgslsmith_index_u32(15378u, 30u)] ^ global0[_wgslsmith_index_u32(u_input.c.x, 30u)]) % vec3<u32>(32u)), ~select(vec3<u32>(arg_1.a.b.a.x, u_input.c.x, arg_1.b.c.x), vec3<u32>(44040u, 69105u, 0u), vec3<bool>(arg_1.a.b.c.x, arg_0.b, false))), arg_1.a.d.x));
    let var_2 = vec3<u32>(~reverseBits(arg_1.b.b.a.x), ~countOneBits(14793u), _wgslsmith_mod_u32(1u, countOneBits(0u & var_1.b.a.x))) ^ ~vec3<u32>(1u, 0u, abs(arg_0.c.b & u_input.c.x));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(1985f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0.d.b))))), var_1.b.b) * _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(var_2), ~global0[_wgslsmith_index_u32(firstTrailingBit(arg_0.c.c), 30u)]), 31u)] - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(17685u, 31u)]))) - vec3<f32>(-228f, var_1.b.b, -1178f))));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: u32) -> vec2<bool> {
    global2 = array<vec3<f32>, 31>();
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_4(1i, !(_wgslsmith_f_op_f32(arg_2 + global3[_wgslsmith_index_u32(4294967295u, 20u)]) <= -193f), Struct_3(vec3<i32>(global1.x, -33571i, global1.x), max(u_input.c.x, ~17700u), ~_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_mult_i32(-2147483647i, global1.x | global1.x)), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_3, 84958u), vec2<u32>(1u, arg_0)), arg_2, vec2<bool>(!arg_1.x, func_3(754f)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(arg_0, 30u)], vec3<u32>(arg_3, 1u, 18293u)), 1u)), _wgslsmith_sub_vec3_i32(u_input.b.yzy >> (vec3<u32>(u_input.c.x, arg_3, arg_3) % vec3<u32>(32u)), reverseBits(vec3<i32>(u_input.b.x, 2147483647i, 2147483647i)) ^ firstTrailingBit(global1.yzz))), Struct_5(Struct_2(!vec4<bool>(false, arg_1.x, true, arg_1.x), Struct_1(vec2<u32>(arg_3, 16211u), global3[_wgslsmith_index_u32(0u << (0u % 32u), 20u)], !arg_1.yx, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_3, 1u), global0[_wgslsmith_index_u32(41227u, 30u)])), firstLeadingBit(vec2<u32>(arg_0, 1u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_3, 4294967295u), u_input.c)), Struct_2(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), all(vec4<bool>(true, arg_1.x, arg_1.x, true))), Struct_1(~vec2<u32>(4294967295u, 4294967295u), 1000f, vec2<bool>(true, arg_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 41u, u_input.c.x), global0[_wgslsmith_index_u32(0u, 30u)])), ~u_input.c, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, arg_0), reverseBits(vec2<u32>(0u, 1u)))), vec2<i32>(-37755i >> (~arg_3 % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.a), global1.wwy, vec3<i32>(global1.x, u_input.a, u_input.b.x)), ~global1.xwy)))));
    var_0 = global2[_wgslsmith_index_u32(arg_0, 31u)];
    var var_1 = 39299i;
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(u_input.c.x, 31u)], vec3<f32>(arg_2, -569f, 222f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, 238f, arg_2))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-181f, _wgslsmith_f_op_f32(-179f + -160f), _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(107821u, 20u)], var_0.x, arg_1.x)))))));
    return select(vec2<bool>(any(select(!arg_1.xx, arg_1.zz, arg_1.yz)), !arg_1.x), !vec2<bool>(arg_1.x, any(!vec3<bool>(arg_1.x, true, arg_1.x))), select(select(select(arg_1.xz, arg_1.yx, !vec2<bool>(arg_1.x, arg_1.x)), select(arg_1.xx, vec2<bool>(arg_1.x, false), vec2<bool>(false, arg_1.x)), vec2<bool>(arg_1.x, any(arg_1.xx))), arg_1.zz, arg_1.zx));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_2.a.x | u_input.c.x, 20u)] + _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(7451u, 20u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_2.b))) - 599f) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), arg_2.b, false));
    let var_1 = Struct_2(vec4<bool>(true, arg_2.b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), true, true), arg_2, vec2<u32>(firstTrailingBit(~4294967295u), 1u), vec2<u32>(~u_input.c.x, _wgslsmith_div_u32(~0u & arg_2.d, arg_2.a.x)));
    return func_2(reverseBits(~(~(var_1.c.x << (var_1.d.x % 32u)))), select(var_1.a.zxw, select(vec3<bool>(true, all(vec2<bool>(true, arg_2.c.x)), true), !(!var_1.a.zwx), var_1.b.c.x & true), any(select(!var_1.a, vec4<bool>(true, true, var_1.b.c.x, arg_2.c.x), var_1.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1313f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1235f - -1010f))), _wgslsmith_f_op_f32(floor(arg_1))), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(!func_1(vec3<i32>(0i, -8078i, u_input.a), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 20u)]), Struct_1(u_input.c, global3[_wgslsmith_index_u32(u_input.c.x, 20u)], vec2<bool>(false, false), u_input.c.x)), vec2<bool>(global1.x == abs(2147483647i), false), (func_1(vec3<i32>(-18608i, u_input.b.x, -5532i), 792f, Struct_1(vec2<u32>(52672u, u_input.c.x), 1000f, vec2<bool>(false, true), u_input.c.x)).x & (global1.x <= -40100i)) || true));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -610f);
    var var_2 = select((~vec4<u32>(1u, 21757u, 4294967295u, u_input.c.x) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, 1u) >> (vec4<u32>(1u, 0u, u_input.c.x, 43348u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x))) % vec4<u32>(32u))) & ~(reverseBits(vec4<u32>(4294967295u, 4294967295u, 34978u, u_input.c.x)) | ~vec4<u32>(0u, 1u, u_input.c.x, u_input.c.x)), _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(4244u, 12870u, u_input.c.x, u_input.c.x) | vec4<u32>(u_input.c.x, 0u, 1u, 1u), vec4<u32>(u_input.c.x, 1u, u_input.c.x, 54664u), !var_0), ~countOneBits(countOneBits(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x))), ~vec4<u32>(max(u_input.c.x, u_input.c.x), _wgslsmith_mult_u32(1u, 65433u), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), _wgslsmith_mod_u32(u_input.c.x, 0u))), !(!(!(!vec4<bool>(var_0, var_0, false, var_0)))));
    let var_3 = Struct_3(vec3<i32>(_wgslsmith_add_i32(-21383i, u_input.a), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(14085i, 64329i, global1.x), ~(-22837i)), u_input.b.yx)), var_2.x, _wgslsmith_sub_u32(~max(u_input.c.x, ~u_input.c.x), max(~(var_2.x >> (var_2.x % 32u)), ~_wgslsmith_add_u32(1u, u_input.c.x))), 0i);
    var var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -444f, -1571f, global3[_wgslsmith_index_u32(33150u, 20u)]) * vec4<f32>(346f, var_1, var_1, var_1))))))));
    let var_5 = ~abs(var_2.yzz);
    let var_6 = Struct_5(Struct_2(vec4<bool>(true, !(var_4.x > 190f), false, var_0), Struct_1(~var_5.zx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_3.c, 20u)])), vec2<bool>(!var_0, all(vec3<bool>(true, var_0, var_0))), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_5.x, u_input.c.x, var_2.x, var_2.x), vec4<u32>(var_5.x, var_3.c, u_input.c.x, 27166u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(~var_2.x, 1u | var_5.x), max(var_5.xz, _wgslsmith_div_vec2_u32(var_5.yy, vec2<u32>(0u, u_input.c.x))), var_5.yx), ~var_2.wx), Struct_2(!select(!vec4<bool>(false, var_0, false, var_0), select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, true, var_0, var_0), false), select(vec4<bool>(false, true, var_0, false), vec4<bool>(true, true, false, var_0), var_0)), Struct_1(vec2<u32>(4294967295u, 1u) << (_wgslsmith_sub_vec2_u32(var_5.zz, vec2<u32>(var_3.c, 9187u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_5.x, 20u)])), vec2<bool>(!var_0, false == var_0), u_input.c.x), vec2<u32>(~_wgslsmith_mult_u32(var_5.x, var_3.b), 4294967295u), ~(~(~vec2<u32>(var_2.x, 12940u)))), vec2<i32>((_wgslsmith_clamp_i32(var_3.a.x, global1.x, 1i) | global1.x) >> (72509u % 32u), firstLeadingBit(0i)));
    var var_7 = Struct_2(!vec4<bool>(all(var_6.a.b.c) == all(vec4<bool>(false, var_6.b.b.c.x, false, true)), true, true, true), var_6.a.b, ~var_5.yy, firstTrailingBit(reverseBits(_wgslsmith_div_vec2_u32(~var_2.yw, ~vec2<u32>(4294967295u, var_5.x)))));
    var var_8 = -4989i;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-u_input.b ^ vec4<i32>(var_6.c.x, 1i, -1i, u_input.b.x)), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(var_6.b.d.x, 20u)], -1048f));
}

