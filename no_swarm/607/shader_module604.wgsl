struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> bool {
    let var_0 = select(select(vec2<bool>(any(vec3<bool>(global1.x, global1.x, global1.x)), global1.x), vec2<bool>(_wgslsmith_mult_u32(69047u, arg_1.c.a.b.x) <= ~4294967295u, !(!global1.x)), _wgslsmith_f_op_f32(-arg_1.b.x) >= _wgslsmith_f_op_f32(trunc(-2319f))), vec2<bool>(arg_1.c.a.b.x >= (u_input.b >> (~u_input.b % 32u)), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(307f + _wgslsmith_div_f32(arg_0, -479f)), _wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(-arg_1.c.b)))) < -2073f);
    var var_1 = min(_wgslsmith_div_u32(15385u, firstTrailingBit(arg_1.c.a.b.x)), 4294967295u);
    let var_2 = vec2<i32>(u_input.d, ~arg_1.a.x & 1i);
    var var_3 = global1.x;
    var_1 = arg_1.c.a.b.x;
    return any(select(select(vec3<bool>(global1.x, arg_1.c.a.a.x, !var_0.x), !select(vec3<bool>(var_0.x, true, global1.x), vec3<bool>(false, arg_1.c.a.a.x, arg_1.c.a.a.x), true), var_0.x), vec3<bool>(false, all(select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(global1.x, var_0.x, true, var_0.x), arg_1.c.a.a.x)), !(!global1.x)), !vec3<bool>(global1.x, !arg_1.c.a.d, !arg_1.c.a.d)));
}

fn func_2() -> vec2<f32> {
    global1 = select(select(vec3<bool>(func_3(_wgslsmith_f_op_f32(trunc(1000f)), Struct_3(vec2<i32>(u_input.c.x, u_input.c.x), vec4<f32>(-545f, 1779f, 1228f, -1455f), Struct_2(Struct_1(vec2<bool>(global1.x, global1.x), vec4<u32>(4294967295u, u_input.b, 70594u, 98410u), -726f, true), -1316f))), global1.x, false), select(select(vec3<bool>(true, false, false), vec3<bool>(true, global1.x, false), u_input.c.x < -1i), vec3<bool>(true, global1.x, global1.x), select(vec3<bool>(global1.x, true, false), select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true), global1.x), select(vec3<bool>(true, true, true), vec3<bool>(true, global1.x, global1.x), global1.x))), any(!vec2<bool>(global1.x, global1.x))), vec3<bool>(true, select(true, any(vec2<bool>(false, global1.x)), global1.x), !(!(!global1.x))), true);
    let var_0 = ~(~(~firstLeadingBit(max(u_input.c.wwz, u_input.c.yyw))));
    global1 = vec3<bool>(global1.x, func_3(1281f, Struct_3(vec2<i32>(~u_input.d, u_input.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-194f, -518f, -246f, 1259f) - vec4<f32>(264f, -1736f, -1363f, 577f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 217f, 1000f, 1229f))), Struct_2(Struct_1(vec2<bool>(false, global1.x), vec4<u32>(1u, 0u, global0.x, global0.x), 854f, global1.x), _wgslsmith_f_op_f32(ceil(1231f))))), true);
    let var_1 = Struct_3(var_0.yy, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-797f, -1590f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -445f) * 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1576f, 562f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1642f)))), 697f), Struct_2(Struct_1(global1.zx, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(12710u, 0u, 62035u, u_input.b), vec4<u32>(1u, u_input.b, global0.x, 1u), vec4<u32>(u_input.b, global0.x, 0u, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-636f, -295f)) - 286f), global1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(162f * -150f) - -2503f)))));
    var var_2 = _wgslsmith_dot_vec3_i32(select(~(-(~var_0)), var_0, false), var_0);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b.x, var_1.c.b)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(max(187f, var_1.b.x)), true))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = arg_1.a.x;
    var var_2 = Struct_1(select(select(select(vec2<bool>(true, false), var_0.a, global1.xx), select(vec2<bool>(false, false), select(vec2<bool>(var_0.d, global1.x), vec2<bool>(global1.x, arg_1.d), global1.x), false), select(vec2<bool>(arg_2, arg_2), vec2<bool>(global1.x, arg_2), select(var_0.a, vec2<bool>(arg_2, false), vec2<bool>(global1.x, arg_2)))), !vec2<bool>(arg_1.c != var_0.c, true), select(!select(vec2<bool>(true, false), arg_1.a, arg_2), !var_0.a, vec2<bool>(arg_1.a.x, var_0.a.x))), ~var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_vec2_f32(func_2()).x)), !(all(!vec4<bool>(arg_1.a.x, var_0.a.x, arg_1.a.x, true)) && (84550u >= var_0.b.x)));
    let var_3 = Struct_2(Struct_1(var_2.a, _wgslsmith_mult_vec4_u32(firstLeadingBit(~var_2.b), vec4<u32>(arg_1.b.x >> (82010u % 32u), 1u, ~u_input.b, ~33999u)), var_0.c, global1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.c, var_0.c), arg_0.x))));
    let var_4 = 1u;
    return var_3;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = ~40052u;
    global1 = vec3<bool>(any(!select(vec4<bool>(false, true, false, global1.x), vec4<bool>(false, true, false, true), func_4(vec2<f32>(-758f, -1110f), Struct_1(arg_2.a.a, vec4<u32>(28421u, 47694u, 1714u, 79404u), 973f, arg_2.a.d), true).a.d)), select(arg_0.a.d, arg_2.b != arg_0.a.c, arg_2.a.a.x), -2147483647i < _wgslsmith_clamp_i32(-19828i, -u_input.a | (arg_1 ^ -25919i), arg_3.x));
    var var_1 = select(arg_0.a.b.xwz, _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global0.x, u_input.b), ~arg_2.a.b.xyz), arg_2.a.b.zwy) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(abs(arg_0.a.b.x), ~global0.x, ~arg_0.a.b.x), _wgslsmith_sub_vec3_u32(abs(arg_2.a.b.zyz), arg_0.a.b.zzy)), !arg_0.a.d);
    var_1 = ~(~abs(~(arg_2.a.b.wyz ^ vec3<u32>(u_input.b, 1999u, 0u))));
    let var_2 = u_input.c.xyy;
    return Struct_1(arg_2.a.a, arg_2.a.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1134f * 1444f)))), arg_2.b, true)), !any(select(vec3<bool>(global1.x, true, false), vec3<bool>(true, true, false), select(vec3<bool>(arg_2.a.d, true, false), vec3<bool>(true, arg_0.a.d, true), vec3<bool>(arg_0.a.d, true, arg_0.a.d)))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    global0 = countOneBits(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.b, 101749u)), vec2<u32>(1u, 1u) >> (~select(vec2<u32>(4294967295u, global0.x), vec2<u32>(0u, global0.x), true) % vec2<u32>(32u))));
    global1 = vec3<bool>(true, true, global1.x);
    let var_0 = ~(~0u);
    var var_1 = -10005i;
    global1 = select(!vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, !global1.x, global1.x), true);
    return Struct_2(func_5(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1340f, arg_1.x)))), Struct_1(select(global1.xx, global1.zx, false), reverseBits(vec4<u32>(4294967295u, global0.x, 44760u, 4294967295u)), _wgslsmith_f_op_f32(-754f + arg_1.x), all(vec3<bool>(global1.x, true, global1.x))), (arg_1.x <= 508f) | (var_0 == global0.x)), arg_0, func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.yy, vec2<f32>(arg_1.x, arg_1.x), false)), _wgslsmith_f_op_vec2_f32(-arg_1.xx)), Struct_1(global1.zy, vec4<u32>(6007u, 4294967295u, 48843u, 40268u), -1166f, global1.x), global1.x), u_input.c), _wgslsmith_f_op_f32(-arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(39514i, vec3<f32>(-843f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(191f))), _wgslsmith_f_op_f32(f32(-1f) * -1298f)));
    let var_1 = func_1(_wgslsmith_div_i32(-u_input.d, firstTrailingBit(reverseBits(1i))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1674f, var_0.b, 1000f))))), vec3<f32>(_wgslsmith_div_f32(-1325f, var_0.b), _wgslsmith_f_op_f32(-var_0.b), 1000f), abs(_wgslsmith_sub_u32(global0.x, var_0.a.b.x)) < var_0.a.b.x)));
    var_0 = func_1(u_input.c.x, vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(var_1.a.c))), var_1.a.c, 1433f));
    let var_2 = vec3<i32>(firstTrailingBit(-1i), -3727i << (abs(global0.x) % 32u), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(13698i, u_input.a)))) << (vec3<u32>(1u, var_0.a.b.x, ~var_0.a.b.x) % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -207f), _wgslsmith_f_op_f32(f32(-1f) * -822f)), var_1.a, true).a.c, _wgslsmith_f_op_vec2_f32(func_2()).x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a.c + var_1.a.c), _wgslsmith_f_op_f32(f32(-1f) * -1946f)))));
    global0 = ~vec2<u32>(abs(36330u), ~156125u);
    global1 = vec3<bool>(func_4(_wgslsmith_f_op_vec2_f32(var_3 * _wgslsmith_f_op_vec2_f32(var_3 + var_3)), var_1.a, false).a.d, !func_5(Struct_2(var_0.a, -394f), min(36819i, -1i), Struct_2(Struct_1(vec2<bool>(global1.x, var_0.a.d), var_0.a.b, -1012f, true), _wgslsmith_f_op_f32(f32(-1f) * -140f)), u_input.c).a.x, all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(var_1.a.d, false, true, var_0.a.d), global1.x), !vec4<bool>(var_0.a.a.x, true, var_0.a.d, var_0.a.d), vec4<bool>(false, global1.x, var_0.a.a.x, false))) != all(vec4<bool>(any(vec2<bool>(var_0.a.a.x, true)), var_1.a.b.x > global0.x, any(vec4<bool>(global1.x, var_0.a.d, true, true)), !var_1.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, u_input.c.x, var_2.x), max(select(vec4<i32>(34188i, -8388i, _wgslsmith_add_i32(1i, 1i), -u_input.c.x), min(u_input.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, var_2.x, u_input.d), vec4<i32>(u_input.d, -1i, 63601i, 0i), vec4<i32>(var_2.x, 0i, var_2.x, var_2.x))), true), vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, u_input.d, 2147483647i), u_input.c.yyz), var_2.x, _wgslsmith_div_i32(u_input.a, u_input.d), reverseBits(-var_2.x))), u_input.c.x);
}

