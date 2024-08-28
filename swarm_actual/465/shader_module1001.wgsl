struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 845f;

var<private> global1: vec3<u32> = vec3<u32>(1u, 4294967295u, 1u);

var<private> global2: Struct_4;

var<private> global3: array<bool, 4> = array<bool, 4>(true, true, false, false);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    global0 = _wgslsmith_f_op_f32(126f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-881f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global2.a.b, -1406f, true))))), -1683f, true)));
    var var_0 = global2.d;
    global2 = Struct_4(global2.a, ~global2.b, ~(~global2.a.d.a.yxy), global2.d);
    var var_1 = Struct_3(max(~(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_3.e.x, arg_3.c, arg_3.e.x, arg_3.e.x), vec4<i32>(arg_2, global2.a.c, arg_2, 0i))), _wgslsmith_clamp_vec4_i32(arg_1 ^ u_input.e, global2.a.a | vec4<i32>(arg_1.x, arg_1.x, u_input.e.x, -207i), global2.a.a) | -vec4<i32>(arg_2, u_input.d.x, arg_1.x, arg_3.e.x)), global2.d, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-10587i, 49669i, global2.a.a.x), select(arg_1.yyw, vec3<i32>(0i, -2147483647i, -21901i), arg_3.b.x)) ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(51633i, arg_2, -1i), min(u_input.e.yww, vec3<i32>(24417i, 2147483647i, arg_3.e.x))), -(_wgslsmith_div_i32(global2.b.x, -30192i) << (global2.a.d.d % 32u))), arg_3);
    var var_2 = select(vec2<bool>(!(!(true && global2.a.d.b.x)), global2.a.d.b.x), !select(arg_3.b.yw, vec2<bool>(any(var_1.d.b), !global3[_wgslsmith_index_u32(4294967295u, 4u)]), any(vec2<bool>(arg_0, var_1.d.b.x))), !global2.a.d.b.x);
    return global2.a.a;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: bool) -> f32 {
    global2 = Struct_4(Struct_3(func_3(false, -u_input.e, i32(-1i) * -11656i, Struct_1(vec4<u32>(global1.x, 1u, global2.c.x, 0u), !vec4<bool>(global2.a.d.b.x, true, true, false), ~global2.b.x, 5249u, ~arg_1.xx)), arg_0, u_input.d.x, Struct_1(u_input.c, !global2.a.d.b, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-14085i, global2.b.x, -36804i), vec3<i32>(arg_1.x, 6379i, global2.a.d.e.x))), 62029u, abs(arg_1.wz))), vec3<i32>(arg_1.x, select(~_wgslsmith_dot_vec3_i32(global2.a.a.xzw, vec3<i32>(-1i, global2.b.x, 17291i)), arg_2.x, true), 0i), select(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c.ywz, global2.c, global2.c) & u_input.c.yxw, u_input.c.xzx), vec3<u32>(global1.x, global2.a.d.a.x, 44985u), arg_3), _wgslsmith_f_op_f32(trunc(-1122f)));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-991f)), arg_0, -2070f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1018f)));
    global2 = Struct_4(Struct_3(vec4<i32>(-(global2.b.x & 1i), select(i32(-1i) * -2147483647i, -arg_1.x, select(global3[_wgslsmith_index_u32(u_input.c.x, 4u)], false, global3[_wgslsmith_index_u32(global2.c.x, 4u)])), -48828i, -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.b + 1743f))), -19371i, Struct_1(countOneBits(~vec4<u32>(u_input.c.x, 0u, global1.x, global1.x)), vec4<bool>(true, arg_3, !global3[_wgslsmith_index_u32(global1.x, 4u)], false && global2.a.d.b.x), min(~0i, u_input.d.x), ~(~global2.a.d.d), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-11769i, arg_2.x), arg_2.yx), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -5679i), vec2<i32>(global2.a.d.e.x, arg_2.x))))), arg_2.ywy | arg_1.ywx, ~(((u_input.c.wyz & global2.a.d.a.xyw) & vec3<u32>(global1.x, 0u, global2.a.d.a.x)) ^ u_input.c.xxw), _wgslsmith_f_op_f32(f32(-1f) * -991f));
    global3 = array<bool, 4>();
    var var_1 = var_0.x;
    return _wgslsmith_f_op_f32(floor(949f));
}

fn func_1() -> Struct_4 {
    let var_0 = global2.a.d;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1482f, global3[_wgslsmith_index_u32(110616u, 4u)]))), global2.d))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1597f - _wgslsmith_f_op_f32(-1424f * global2.a.b)) + 1000f) - _wgslsmith_f_op_f32(-global2.d)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global2.d, _wgslsmith_sub_vec4_i32(abs(max(vec4<i32>(1i, u_input.b, global2.b.x, u_input.a), u_input.e)), _wgslsmith_div_vec4_i32(-global2.a.a, vec4<i32>(1i, var_0.e.x, -37155i, -2147483647i) | u_input.e)), u_input.e, false | var_0.b.x)));
    var var_2 = vec2<i32>(u_input.e.x, 26931i);
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global2.a.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-777f))))), 271f, -1817f)));
    return Struct_4(Struct_3(vec4<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.e), u_input.e), -1i, abs(u_input.a), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 19463i, 2147483647i, global2.b.x), vec4<i32>(u_input.b, -14948i, var_2.x, global2.a.c)))), -1415f, var_0.e.x, global2.a.d), _wgslsmith_div_vec3_i32(global2.a.a.yxy | vec3<i32>(1i, u_input.a, global2.b.x), reverseBits(global2.b)), reverseBits(select(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.c.x, global1.x), vec3<u32>(4294967295u, var_0.a.x, 0u)), vec3<u32>(~0u, global2.c.x << (var_0.d % 32u), 1u), any(vec3<bool>(global2.a.d.b.x, false, global3[_wgslsmith_index_u32(4294967295u, 4u)])))), global2.d);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -946f)) <= _wgslsmith_f_op_f32(-1337f * _wgslsmith_f_op_f32(-arg_1.d));
    var var_1 = arg_0.a.d.b.yzy;
    var var_2 = Struct_1(countOneBits(~u_input.c << (_wgslsmith_add_vec4_u32(u_input.c, global2.a.d.a & vec4<u32>(4294967295u, u_input.c.x, arg_0.a.d.a.x, 83582u)) % vec4<u32>(32u))), vec4<bool>(all(!vec2<bool>(var_0, false)), _wgslsmith_add_u32(8317u >> (1u % 32u), arg_1.c.x) == 0u, true, !(all(global2.a.d.b.wxz) & true)), arg_0.a.c, 1u, vec2<i32>(arg_0.a.d.e.x, -1i));
    global1 = global2.c;
    let var_3 = Struct_2((4158i & -arg_0.a.d.c) >> (global2.c.x % 32u), arg_1.a.d, var_2.c, ~13313u);
    return var_3;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_4) -> u32 {
    var var_0 = func_1();
    global1 = _wgslsmith_div_vec3_u32(u_input.c.wxz, func_4(arg_2, func_1()).b.a.yzz | vec3<u32>(var_0.a.d.a.x, abs(global1.x), global1.x)) >> (func_1().a.d.a.wxz % vec3<u32>(32u));
    global0 = _wgslsmith_f_op_f32(-316f + _wgslsmith_f_op_f32(var_0.d * arg_1.x));
    var var_1 = func_4(func_1(), func_1()).b.b.x;
    let var_2 = vec4<f32>(1000f, global2.a.b, var_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(824f, _wgslsmith_f_op_f32(global2.d + 227f)) - arg_2.d) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(887f * _wgslsmith_f_op_f32(sign(arg_2.a.b))))));
    return arg_0.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(func_5(func_4(Struct_4(Struct_3(u_input.e, 260f, -26762i, global2.a.d), global2.b, global2.a.d.a.xzw, global2.a.b), func_1()), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-314f, global2.a.b, -738f, -729f) * vec4<f32>(global2.d, global2.a.b, global2.d, global2.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.b, global2.d, 1411f, -1020f) * vec4<f32>(global2.d, 1000f, -931f, -2245f)))))), func_1()), 4294967295u);
    global3 = array<bool, 4>();
    var var_1 = func_4(func_1(), Struct_4(global2.a, vec3<i32>(1i, ~max(-17742i, u_input.d.x), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global2.b.x, -30101i, 33364i), u_input.e))), u_input.c.xyx, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -835f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.d - 1398f), global2.d))))).b;
    var var_2 = func_1().a;
    let var_3 = Struct_2(-1i >> (var_1.a.x % 32u), Struct_1(var_2.d.a, global2.a.d.b, -67185i, _wgslsmith_sub_u32(global1.x, 0u), var_1.e), -2147483647i << (global2.c.x % 32u), ~28956u);
    global0 = var_2.b;
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, ~_wgslsmith_sub_u32(4294967295u, ~var_1.a.x), var_1.a.x, abs(83729u)), (u_input.c.x & abs(1u)) << (_wgslsmith_mod_u32(_wgslsmith_div_u32(max(1u, var_2.d.a.x), _wgslsmith_mult_u32(var_0, 0u)), abs(_wgslsmith_mod_u32(var_1.d, 47970u))) % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.b), 1669f, global2.d)), vec2<i32>(global2.b.x, var_3.c));
}

