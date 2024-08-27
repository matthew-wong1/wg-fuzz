struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_4;

var<private> global2: array<bool, 32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = Struct_1(select(!select(vec2<bool>(false, global0.a.c.a.x), select(arg_0.c.a, vec2<bool>(false, arg_0.e), false), vec2<bool>(global1.b.x, global2[_wgslsmith_index_u32(1u, 32u)])), !global0.b.xw, any(global0.b)), -global0.a.c.b);
    global1 = Struct_4(global0.a, vec4<bool>(!any(global1.b.xzz) | (var_0.a.x && true), true, !var_0.a.x, true));
    let var_1 = -_wgslsmith_add_i32(arg_0.c.b.x, u_input.a);
    var var_2 = vec3<bool>(global2[_wgslsmith_index_u32(global1.a.d.x, 32u)], var_0.a.x, !global1.a.e);
    let var_3 = Struct_4(Struct_3(~vec2<u32>(_wgslsmith_mult_u32(0u, 9468u), ~0u), max(~_wgslsmith_dot_vec2_u32(arg_0.a, arg_0.d), ~4294967295u), Struct_1(var_2.yx, vec2<i32>(global1.a.c.b.x, var_0.b.x << (1u % 32u))), global1.a.d, true), global0.b);
    return _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>((global0.a.a.x | u_input.b) & ~4294967295u, ~var_3.a.d.x, select(abs(11254u), global0.a.b & 0u, var_0.a.x), 4736u)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(70796u, global1.a.d.x, 4294967295u, 25966u), vec4<u32>(global0.a.a.x, 35231u, var_3.a.d.x, 3950u)) << (vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.b, u_input.b), vec2<u32>(var_3.a.d.x, 32902u)), 1u, 28485u) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec2<u32> {
    global1 = Struct_4(Struct_3(arg_2.xy, 24138u, Struct_1(vec2<bool>(all(vec2<bool>(global0.a.e, false)), all(vec3<bool>(arg_0.x, global1.b.x, false))), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(global0.a.c.b, global1.a.c.b), vec2<i32>(global1.a.c.b.x, 1i) << (arg_2.zx % vec2<u32>(32u)))), vec2<u32>(firstTrailingBit(~4294967295u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, global0.a.a.x, global1.a.d.x, 0u), vec4<u32>(0u, global0.a.d.x, arg_1.x, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(74122u, u_input.b), vec2<u32>(u_input.b, arg_2.x)))), false), !select(!vec4<bool>(global2[_wgslsmith_index_u32(3888u, 32u)], true, global1.b.x, global1.b.x), global1.b, vec4<bool>(!global1.a.c.a.x, any(global1.b.yyw), arg_0.x, all(global1.b))));
    let var_0 = Struct_3(global1.a.a, 8062u, Struct_1(vec2<bool>(arg_0.x, any(vec3<bool>(true, arg_0.x, false))), vec2<i32>(global1.a.c.b.x, global0.a.c.b.x)), arg_1.zz, arg_0.x);
    global2 = array<bool, 32>();
    let var_1 = !select(!(!select(vec4<bool>(arg_0.x, true, true, false), vec4<bool>(true, global1.b.x, global1.b.x, true), false)), vec4<bool>(global0.a.c.a.x, global1.b.x, true, global1.b.x), !select(select(vec4<bool>(global1.a.e, true, global1.a.e, true), vec4<bool>(true, global1.b.x, false, true), global0.b), vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(1u, 32u)]), global2[_wgslsmith_index_u32(58843u, 32u)] || false));
    global0 = Struct_4(Struct_3(global1.a.a << (countOneBits(global0.a.a) % vec2<u32>(32u)), global0.a.a.x, var_0.c, vec2<u32>(_wgslsmith_dot_vec3_u32(arg_1.zxx, arg_1.yzx), var_0.d.x << (0u % 32u)) >> (global1.a.d % vec2<u32>(32u)), !all(var_1.xz)), var_1);
    return _wgslsmith_sub_vec2_u32(~vec2<u32>(global0.a.d.x, 4294967295u) & _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 80214u) >> ((vec2<u32>(global0.a.a.x, arg_1.x) << (global0.a.d % vec2<u32>(32u))) % vec2<u32>(32u)), ~arg_2.xz & (vec2<u32>(global0.a.a.x, global1.a.d.x) & vec2<u32>(0u, arg_1.x))), vec2<u32>(~50447u & abs(global0.a.a.x), ~abs(~0u)));
}

fn func_2() -> f32 {
    global2 = array<bool, 32>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global1.a.d.x >> (u_input.b % 32u)), 32u)];
    var var_1 = ~func_4(global1.b.wy, func_3(global0.a), vec3<u32>(1u, ~4294967295u, 4294967295u)) ^ ~vec2<u32>(~(~3699u), u_input.b);
    let var_2 = global0.a.c.b.x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1124f - _wgslsmith_f_op_f32(-443f + 1290f)), 1322f, 586f)), _wgslsmith_sub_vec3_u32(func_3(Struct_3(~global0.a.a, 30597u, global1.a.c, global1.a.a, all(global1.b.wyx))).ywz, ~(reverseBits(vec3<u32>(var_1.x, global1.a.b, 2745u)) & vec3<u32>(global0.a.b, var_1.x, 2723u))), global0.a.c, firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, -28295i, -29350i, global0.a.c.b.x), -vec4<i32>(-33850i, global0.a.c.b.x, global0.a.c.b.x, 0i)) >> (~(~u_input.b) % 32u)));
    return var_3.a.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: bool) -> vec4<i32> {
    let var_0 = select(!all(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 32u)], true)), !all(vec4<bool>(arg_1, global1.b.x, false, true)) || true, true);
    let var_1 = _wgslsmith_div_f32(741f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(sign(374f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1487f, 108f) * arg_0.x)))));
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), -1454f, _wgslsmith_f_op_f32(785f - 1960f), arg_0.x)));
    let var_4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-664f)) - _wgslsmith_f_op_f32(select(465f, -1047f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(502f - _wgslsmith_f_op_f32(-1391f - 1012f)))), ~(~vec3<u32>(max(64302u, global1.a.a.x), ~1u, 0u)), Struct_1(global0.a.c.a, max(abs(global0.a.c.b), ~(global0.a.c.b & global0.a.c.b))), 1i);
    return abs(vec4<i32>(~(~4219i) >> (1u % 32u), _wgslsmith_mod_i32((75338i & global0.a.c.b.x) << (global0.a.d.x % 32u), 2147483647i), -1i, select(~0i, var_4.d, true) >> (global1.a.d.x % 32u)));
}

fn func_1() -> Struct_5 {
    var var_0 = func_5(vec3<f32>(_wgslsmith_div_f32(1894f, -546f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2281f)), _wgslsmith_f_op_f32(f32(-1f) * -1260f)), (-2352f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(trunc(-1008f)))) || global2[_wgslsmith_index_u32(0u, 32u)]);
    var var_1 = abs(var_0.x);
    var var_2 = -global1.a.c.b.x < countOneBits(-_wgslsmith_sub_i32(-global0.a.c.b.x, ~var_0.x));
    let var_3 = _wgslsmith_sub_i32(var_0.x, 2147483647i);
    let var_4 = Struct_5(global1.a.c);
    return Struct_5(Struct_1(global0.b.zx, vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 25189i), var_0.zyx)) << (select(abs(vec2<u32>(1u, 29834u)), global0.a.a, global0.a.c.a.x) % vec2<u32>(32u))));
}

fn func_6(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) - arg_1.x) * -1005f)));
    let var_1 = Struct_4(global0.a, vec4<bool>(all(global1.b.xw), arg_0.a.a.x, !select(select(arg_2.x, true, arg_0.a.a.x), global0.b.x, all(vec4<bool>(global2[_wgslsmith_index_u32(0u, 32u)], true, global0.a.c.a.x, arg_2.x))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~12910u), (vec2<u32>(0u, 9218u) & vec2<u32>(18623u, u_input.b)) >> (global0.a.d % vec2<u32>(32u))), 32u)]));
    global2 = array<bool, 32>();
    let var_2 = _wgslsmith_mod_u32(~(~(~(~1u))), 1u);
    var var_3 = any(!vec3<bool>(true, arg_1.x > _wgslsmith_f_op_f32(abs(-1937f)), !any(global0.b)));
    return global1.a;
}

fn func_7(arg_0: u32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: u32) -> Struct_3 {
    global0 = Struct_4(Struct_3(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(0u, global0.a.d.x, 0u), ~0u), _wgslsmith_add_vec2_u32(min(global0.a.a, global1.a.a), arg_1.a)), ~37142u, func_6(Struct_5(arg_1.c), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-715f, 727f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1400f, -487f)))), !global1.b).c, _wgslsmith_clamp_vec2_u32(select(vec2<u32>(0u, arg_1.b), vec2<u32>(4294967295u, 67139u), global1.a.c.a.x) >> (reverseBits(vec2<u32>(arg_0, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(select(0u, global1.a.d.x, false), firstLeadingBit(arg_3)), _wgslsmith_mult_vec2_u32(func_3(global0.a).yx, _wgslsmith_clamp_vec2_u32(global0.a.a, global1.a.a, vec2<u32>(4294967295u, u_input.b)))), global2[_wgslsmith_index_u32(~firstTrailingBit(1u) ^ ~36190u, 32u)]), global0.b);
    global1 = Struct_4(global1.a, global0.b);
    let var_0 = vec2<i32>(-(arg_2.x >> (_wgslsmith_add_u32(arg_1.d.x, 1u) % 32u)), ~_wgslsmith_dot_vec4_i32(arg_2, arg_2));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global0.a.c.b.x;
    let var_1 = global1.a.c.b;
    var var_2 = func_7(0u, func_6(func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(618f, 1444f), vec2<f32>(-1106f, -1000f), global2[_wgslsmith_index_u32(global0.a.a.x, 32u)])))), select(select(global1.b, vec4<bool>(global1.a.c.a.x, true, global1.a.e, global0.b.x), !global1.b), !global0.b, !vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 32u)], false, false, global0.b.x))), -vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(73795i, 2147483647i, global1.a.c.b.x), vec3<i32>(25572i, var_1.x, 1682i)), u_input.a), 1i, i32(-1i) * -u_input.a, u_input.a), max(global0.a.d.x, 0u));
    let var_3 = global1.b.x;
    let var_4 = _wgslsmith_f_op_f32(-2189f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(556f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1169f))))));
    let var_5 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1006f, -754f, 1937f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-709f, -875f, var_4)))), vec3<bool>(global0.b.x, func_6(Struct_5(var_2.c), vec2<f32>(var_4, 969f), vec4<bool>(global0.a.e, false, true, global2[_wgslsmith_index_u32(25070u, 32u)])).e, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(-4873i, _wgslsmith_mult_i32(-66753i, func_6(Struct_5(global1.a.c), var_5.zx, global0.b).c.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_5)));
}

