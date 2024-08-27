struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: vec2<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = vec4<i32>(-13439i, 37612i, reverseBits(~(-20042i)), _wgslsmith_sub_i32(132i, -1581i));
    let var_1 = Struct_1(firstLeadingBit(-var_0.x) & arg_1.a, 637f);
    var var_2 = ~(-11614i);
    let var_3 = var_1.a;
    let var_4 = 18437u;
    return arg_0;
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> f32 {
    let var_0 = vec2<bool>(true, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1447f, 155f)) + arg_1) < global1.x));
    let var_1 = _wgslsmith_mod_i32(-arg_0.d.a, ~_wgslsmith_mod_i32(-5543i, -14887i));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -295f, -1366f, arg_1))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(592f, 676f, -468f, -692f) * vec4<f32>(309f, arg_0.a.b, global1.x, -122f))))), arg_0.d);
    global0 = array<bool, 25>();
    let var_3 = var_2.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.d.b, arg_1)) * arg_1)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<bool>) -> bool {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-986f, 265f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)) * _wgslsmith_f_op_f32(step(global1.x, arg_2.x)))), _wgslsmith_div_f32(arg_0, arg_2.x), _wgslsmith_f_op_f32(func_3(Struct_3(func_1(Struct_3(Struct_1(u_input.b.x, arg_0), Struct_1(u_input.b.x, 1000f), arg_3.yz, Struct_1(u_input.b.x, 289f)), Struct_1(u_input.b.x, global1.x), arg_2).d, Struct_1(arg_1, arg_0), select(arg_3.xw, vec2<bool>(arg_3.x, arg_3.x), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 25u)])), func_1(Struct_3(Struct_1(u_input.b.x, arg_2.x), Struct_1(u_input.b.x, 2264f), arg_3.zx, Struct_1(1i, -549f)), Struct_1(0i, 353f), vec2<f32>(arg_2.x, 533f)).b), -496f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1292f - _wgslsmith_f_op_f32(step(180f, 1000f))), global1.x)), func_1(Struct_3(func_1(Struct_3(Struct_1(36157i, arg_0), Struct_1(u_input.b.x, arg_2.x), arg_3.wy, Struct_1(u_input.b.x, -352f)), func_1(Struct_3(Struct_1(arg_1, 191f), Struct_1(u_input.b.x, 1000f), arg_3.ww, Struct_1(u_input.b.x, global1.x)), Struct_1(5689i, global1.x), arg_2).a, _wgslsmith_f_op_vec2_f32(vec2<f32>(1012f, global1.x) * arg_2)).b, func_1(Struct_3(Struct_1(-2147483647i, global1.x), Struct_1(16525i, global1.x), arg_3.zw, Struct_1(u_input.b.x, arg_0)), Struct_1(arg_1, arg_2.x), _wgslsmith_div_vec2_f32(arg_2, arg_2)).a, arg_3.xx, Struct_1(~(-81256i), _wgslsmith_f_op_f32(f32(-1f) * -2341f))), Struct_1(_wgslsmith_mult_i32(-1i, arg_1), arg_0), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))), 313f)).a);
    var var_1 = u_input.e.zx;
    var var_2 = -(~vec3<i32>(select(arg_1, -1i, true), reverseBits(arg_1 >> (1u % 32u)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 2147483647i, -2147483647i), vec3<i32>(-20874i, u_input.b.x, arg_1))));
    return any(vec3<bool>(true, true, true));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_0.d.b, -180f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.b, -1732f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1633f, arg_2)) - arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.b))))), func_1(Struct_3(Struct_1(arg_0.a.a, -1089f), func_1(func_1(Struct_3(Struct_1(-2147483647i, -1763f), arg_0.d, arg_0.c, arg_0.a), Struct_1(arg_0.a.a, -177f), vec2<f32>(arg_2, 439f)), arg_0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1745f, 134f) - vec2<f32>(arg_0.d.b, -339f))).b, vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), Struct_1(-2147483647i, _wgslsmith_f_op_f32(-546f + arg_0.b.b))), Struct_1(-18327i | -arg_0.d.a, _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.b, 856f))), vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.d.b, -385f)), 702f)))).d);
    let var_1 = firstTrailingBit(~4219u);
    let var_2 = all(!select(select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(37709u, 25u)], true), vec3<bool>(true, arg_1, false), vec3<bool>(global0[_wgslsmith_index_u32(21556u, 25u)], false, false)), vec3<bool>(true, true, true), !vec3<bool>(arg_0.c.x, false, false)), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], all(arg_0.c), global1.x < arg_0.a.b), !vec3<bool>(arg_1, arg_0.c.x, arg_1)));
    var var_3 = vec4<bool>(arg_0.c.x, var_2, !(arg_0.c.x || true), arg_1);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1039f, arg_2), _wgslsmith_f_op_f32(f32(-1f) * -1336f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -614f) + 1485f)))));
    return !((((-36170i > arg_0.a.a) & arg_0.c.x) | true) || arg_1);
}

fn func_5(arg_0: bool, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = max(u_input.b.x, -(((u_input.b.x ^ u_input.b.x) >> (5186u % 32u)) ^ 23117i));
    let var_1 = _wgslsmith_mod_u32(22516u, arg_1.x);
    let var_2 = 102f;
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-567f, var_2), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(8123i, -483f), Struct_1(43732i, var_2), vec2<bool>(arg_0, arg_0), Struct_1(u_input.b.x, 615f)), 1643f)), _wgslsmith_f_op_f32(-var_2)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1582f), global1.x), true == all(vec2<bool>(arg_0, true))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2 + var_2), _wgslsmith_f_op_f32(f32(-1f) * -723f))) - vec2<f32>(var_2, 888f)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, var_3.x, -449f, var_2)) * vec4<f32>(-1000f, var_2, var_2, var_2))))), func_1(Struct_3(func_1(func_1(Struct_3(Struct_1(var_0, -258f), Struct_1(0i, var_3.x), vec2<bool>(arg_0, true), Struct_1(var_0, -1169f)), Struct_1(4692i, var_2), vec2<f32>(var_2, var_3.x)), Struct_1(var_0, global1.x), _wgslsmith_f_op_vec2_f32(var_3 * vec2<f32>(-966f, -1058f))).a, Struct_1(var_0, _wgslsmith_div_f32(749f, var_2)), select(vec2<bool>(true, true), vec2<bool>(false, true), !vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 25u)], arg_0)), Struct_1(_wgslsmith_mod_i32(2147483647i, u_input.b.x), -681f)), Struct_1(max(var_0, -2147483647i) >> (_wgslsmith_mult_u32(var_1, 0u) % 32u), -2003f), var_3).d);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-602f + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(select(global1.x, global1.x, !(_wgslsmith_f_op_f32(-1584f + global1.x) <= _wgslsmith_f_op_f32(global1.x - -440f)))), -243f);
    let var_1 = vec4<i32>(-1i) * -vec4<i32>(arg_0.b.a, 25561i, arg_2.b.a, 0i);
    var var_2 = func_1(Struct_3(func_5(-arg_1.b.a > firstTrailingBit(var_1.x), vec4<u32>(u_input.c.x, 25463u, u_input.a, 4294967295u >> (u_input.e.x % 32u))).b, arg_1.a, arg_1.c, func_1(Struct_3(Struct_1(u_input.b.x, 1000f), arg_1.a, arg_1.c, arg_0.b), Struct_1(-20136i, _wgslsmith_f_op_f32(210f + -2613f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.zy - arg_2.a.wz) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.b.b, -1867f), var_0.yz)))).d), func_5(!(!func_4(arg_1, arg_1.c.x, global1.x)), ~_wgslsmith_add_vec4_u32(select(u_input.c, u_input.c, vec4<bool>(arg_1.c.x, global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], false)), u_input.c)).b, func_5(false, firstLeadingBit(vec4<u32>(~7407u, ~u_input.e.x, u_input.d, ~15099u))).a.xy);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d.b), -1140f, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var var_4 = !vec3<bool>(var_2.c.x, !global0[_wgslsmith_index_u32(abs(u_input.c.x), 25u)], (var_0.x <= _wgslsmith_f_op_f32(-886f * arg_1.a.b)) & true);
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(-512f * -268f), -732f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -978f, global1.x, global1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x))))), func_6(func_5(func_4(func_1(Struct_3(Struct_1(0i, -1621f), Struct_1(u_input.b.x, global1.x), vec2<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 25u)], false), Struct_1(138i, 679f)), Struct_1(u_input.b.x, 1483f), vec2<f32>(783f, global1.x)), func_2(global1.x, -1i, vec2<f32>(global1.x, 100f), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(9990u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)])), global1.x), u_input.c << (abs(vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.e.x)) % vec4<u32>(32u))), func_1(Struct_3(Struct_1(u_input.b.x, global1.x), func_5(false, u_input.c).b, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(u_input.e.x, 25u)]), func_5(global0[_wgslsmith_index_u32(u_input.a, 25u)], u_input.c).b), Struct_1(0i, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, global1.x), vec2<f32>(global1.x, global1.x))) - vec2<f32>(global1.x, 674f))), Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, -133f, 1000f, global1.x), vec4<f32>(global1.x, -719f, global1.x, -257f))))), func_1(func_1(Struct_3(Struct_1(u_input.b.x, global1.x), Struct_1(u_input.b.x, global1.x), vec2<bool>(true, true), Struct_1(u_input.b.x, global1.x)), Struct_1(-5804i, -362f), vec2<f32>(-1646f, global1.x)), func_5(false, u_input.c).b, vec2<f32>(-2412f, 428f)).a)));
    global0 = array<bool, 25>();
    var var_1 = var_0.b;
    global1 = var_0.a.zz;
    var var_2 = -807f;
    let var_3 = max(~abs(u_input.c.wzw), u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(99608u);
}

