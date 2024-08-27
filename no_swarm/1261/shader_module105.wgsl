struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -659f), 2102f) * _wgslsmith_f_op_f32(-354f * -1212f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(382f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(255f)), -2258f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-733f + _wgslsmith_div_f32(413f, -262f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1023f)))));
    var var_1 = all(!vec2<bool>(any(!vec2<bool>(arg_1.x, false)), all(arg_1.xx)));
    global0 = !(!arg_1);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-384f, 443f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(var_0.x, 426f)))))));
    var var_2 = 1u;
    return arg_0;
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.b.xx;
    global0 = vec4<bool>(all(select(!vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, true, true, true), global0.x)), true, !func_3(global0.x, select(!vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, true, false), vec4<bool>(global0.x, true, true, true))), global0.x == true);
    var var_1 = 25751u;
    global0 = vec4<bool>(748f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-371f - -1852f), -1000f, any(global0.zwx)))), true, func_3(global0.x, !vec4<bool>(any(vec3<bool>(true, false, global0.x)), true, func_3(false, vec4<bool>(global0.x, global0.x, global0.x, global0.x)), all(vec4<bool>(global0.x, true, false, true)))), true);
    global0 = select(vec4<bool>(!(global0.x && global0.x), select(true, !global0.x, global0.x & global0.x) && all(vec4<bool>(global0.x, global0.x, global0.x, false)), true, !(!any(vec4<bool>(true, global0.x, true, global0.x)))), !select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), !(!vec4<bool>(false, global0.x, global0.x, global0.x)), vec4<bool>(true, 18953i == var_0.x, false, global0.x)), any(vec3<bool>(any(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(true, true, global0.x, global0.x))), false, min(-7710i, 1i) <= firstTrailingBit(u_input.b.x))));
    return Struct_2(Struct_1(-2012i, -_wgslsmith_add_i32(var_0.x, 16267i), all(select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, false, true), global0.zyx), !global0.yzz, vec3<bool>(global0.x, true, global0.x)))), u_input.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = !all(!vec4<bool>(true, arg_0.a.c, any(global0.wyx), !global0.x));
    let var_1 = vec3<u32>(22646u, 1u, 19963u);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(236f, _wgslsmith_f_op_f32(489f - arg_1.x), _wgslsmith_f_op_f32(exp2(arg_1.x)), arg_1.x))));
    let var_3 = arg_0.a;
    return func_2().a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = Struct_3(arg_1.a, global0.xw, Struct_1(~(-35181i), -1i, true), firstLeadingBit(arg_0.a), func_2().a);
    var var_1 = vec3<i32>(abs(-_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a), vec3<i32>(var_0.c.b, var_0.d, u_input.c) << (vec3<u32>(1u, 88523u, 16030u) % vec3<u32>(32u)))), (_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 43687i, arg_0.b), min(vec3<i32>(u_input.a.x, 5689i, -1i), vec3<i32>(-2147483647i, -1i, var_0.e.a))) | 1i) ^ _wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.c, 0i), _wgslsmith_mult_i32(arg_1.b.d, 7308i), ~75277i)), arg_0.b);
    global0 = !vec4<bool>(true, true, arg_1.b.b.x, !any(!vec4<bool>(var_0.c.c, arg_1.c.c.c, false, global0.x)));
    return !(!vec4<bool>(false, true || !arg_0.c, false, arg_0.c));
}

fn func_1(arg_0: u32) -> Struct_3 {
    global0 = func_5(func_4(func_2(), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2090f, 164f, 1000f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-689f, -184f, 466f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -496f), 899f, -543f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(339f)) + _wgslsmith_f_op_f32(f32(-1f) * -394f)))), Struct_4(-673f, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1378f, -687f) - _wgslsmith_f_op_f32(f32(-1f) * -1054f)), !(!global0.yz), Struct_1(u_input.d.x, -u_input.a.x, global0.x & true), ~_wgslsmith_dot_vec2_i32(u_input.b.zw, vec2<i32>(1i, u_input.a.x)), Struct_1(u_input.d.x, -u_input.b.x, true || global0.x)), Struct_3(1f, !select(global0.yy, global0.xz, vec2<bool>(false, global0.x)), Struct_1(select(-1i, u_input.b.x, global0.x), _wgslsmith_div_i32(u_input.b.x, 0i), !global0.x), -_wgslsmith_mult_i32(-1i, u_input.c), func_4(Struct_2(Struct_1(u_input.c, u_input.b.x, false), vec4<i32>(-38270i, u_input.a.x, 0i, 52988i)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-869f, -571f, -1068f), vec3<f32>(-1784f, -1000f, 350f), false)), vec4<f32>(1962f, -1507f, 969f, 909f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-379f)) - _wgslsmith_f_op_f32(abs(-929f))))));
    var var_0 = vec2<i32>(u_input.e.x, _wgslsmith_sub_i32(u_input.c | -1i, min(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.d, vec4<i32>(-18528i, -38494i, u_input.d.x, 1i)), abs(vec4<i32>(8188i, u_input.b.x, -1i, -1i))), reverseBits(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x)))));
    var var_1 = arg_0;
    let var_2 = Struct_4(835f, Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -756f)))), select(!func_5(Struct_1(var_0.x, var_0.x, false), Struct_4(-1760f, Struct_3(-426f, global0.zw, Struct_1(var_0.x, 0i, global0.x), 6807i, Struct_1(2147483647i, var_0.x, false)), Struct_3(1000f, global0.yw, Struct_1(u_input.a.x, u_input.d.x, true), 26076i, Struct_1(49444i, u_input.d.x, global0.x)), -532f)).wz, vec2<bool>(true, any(vec4<bool>(true, global0.x, false, global0.x))), func_2().a.c), Struct_1(u_input.c, abs(u_input.d.x), !(!global0.x)), select(_wgslsmith_add_i32(-u_input.a.x, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 1i, u_input.b.x), ~u_input.a), global0.x), Struct_1(_wgslsmith_mod_i32(i32(-1i) * -15621i, _wgslsmith_mult_i32(-1i, -2147483647i)), ~(~(-2147483647i)), any(func_5(Struct_1(29638i, var_0.x, true), Struct_4(531f, Struct_3(249f, global0.yx, Struct_1(3656i, u_input.b.x, global0.x), 2887i, Struct_1(1i, 0i, global0.x)), Struct_3(1000f, vec2<bool>(true, global0.x), Struct_1(7592i, -1i, global0.x), var_0.x, Struct_1(-2147483647i, -1i, true)), -1006f))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1737f)), vec2<bool>(global0.x, global0.x), Struct_1(-(~u_input.c), -(~0i), false), var_0.x, Struct_1(-u_input.d.x, reverseBits(-12977i), false)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(2589f, 1f))));
    var var_3 = ~min(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_sub_i32(var_0.x, 12602i), u_input.c, firstLeadingBit(var_0.x))), -vec3<i32>(330i, 9653i, u_input.e.x));
    return var_2.b;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_3 {
    global0 = vec4<bool>(arg_1.e.c, any(func_5(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d, -1i, -8921i, 0i), u_input.d), func_4(Struct_2(arg_1.e, vec4<i32>(u_input.b.x, u_input.b.x, -1i, arg_0.x)), vec3<f32>(arg_1.a, arg_1.a, 137f), vec4<f32>(1000f, -2055f, arg_1.a, 1520f)).b, arg_1.c.c), Struct_4(_wgslsmith_f_op_f32(floor(arg_1.a)), Struct_3(arg_1.a, vec2<bool>(global0.x, false), Struct_1(u_input.b.x, u_input.c, false), u_input.b.x, arg_1.c), func_1(22179u), -645f))), true, all(global0.ywx));
    global0 = !(!select(!select(vec4<bool>(arg_1.c.c, global0.x, true, global0.x), vec4<bool>(true, true, arg_1.e.c, true), vec4<bool>(global0.x, false, true, arg_1.b.x)), vec4<bool>(true, false, true, arg_1.e.c), all(vec3<bool>(true, false, true))));
    var var_0 = ~(~(~firstTrailingBit(1u)));
    var var_1 = u_input.a;
    let var_2 = any(vec3<bool>(false, false, true));
    return Struct_3(_wgslsmith_f_op_f32(trunc(598f)), !func_1(~max(1u, 20513u)).b, arg_1.e, ~_wgslsmith_dot_vec2_i32(~abs(vec2<i32>(var_1.x, arg_1.e.a)), u_input.d.xx), Struct_1(-1i, -30396i, false));
}

fn func_7(arg_0: bool, arg_1: Struct_4, arg_2: vec4<f32>) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(-func_4(Struct_2(arg_1.c.e, u_input.b), arg_2.xwy, vec4<f32>(arg_1.c.a, arg_1.d, 611f, 1910f)).a, ~arg_1.c.d << (4294967295u % 32u), func_2().a.c), vec4<i32>(arg_1.c.c.b, func_4(func_2(), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-564f, arg_1.a, arg_2.x))), arg_2).a, func_1(~33595u).c.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.c.b, -8784i), -vec2<i32>(32180i, 2147483647i))));
    let var_1 = min(1i, ~func_6(~_wgslsmith_add_vec2_i32(vec2<i32>(var_0.b.x, arg_1.b.e.a), vec2<i32>(var_0.b.x, arg_1.c.d)), Struct_3(arg_2.x, arg_1.c.b, var_0.a, 2147483647i, var_0.a)).c.a);
    global0 = !vec4<bool>(!(!func_5(Struct_1(-2147483647i, -1i, true), arg_1).x), !global0.x, true, any(!(!vec4<bool>(arg_0, true, true, false))));
    var_0 = func_2();
    var_0 = Struct_2(var_0.a, countOneBits(_wgslsmith_mult_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b.c.b, var_1, 0i, 3173i), var_0.b), var_0.b)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(global0.x, Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-444f))), func_6(-u_input.b.yz, func_1(~17711u)), func_6(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e.x, 31130i) >> (vec2<u32>(0u, 113541u) % vec2<u32>(32u)), ~vec2<i32>(u_input.d.x, u_input.a.x), u_input.e | u_input.d.yy), Struct_3(_wgslsmith_f_op_f32(step(-1597f, -851f)), func_6(vec2<i32>(u_input.d.x, u_input.a.x), Struct_3(846f, global0.xw, Struct_1(u_input.e.x, u_input.e.x, global0.x), 20101i, Struct_1(1i, u_input.c, global0.x))).b, Struct_1(u_input.b.x, 2507i, global0.x), u_input.b.x, func_6(vec2<i32>(0i, u_input.d.x), Struct_3(691f, vec2<bool>(global0.x, global0.x), Struct_1(u_input.c, u_input.c, global0.x), 1i, Struct_1(1i, u_input.d.x, false))).e)), -364f), vec4<f32>(-409f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1019f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1012f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(252f)))) + _wgslsmith_f_op_f32(-236f + -1834f)), _wgslsmith_f_op_f32(trunc(-1000f))));
    global0 = select(vec4<bool>(var_0.c.c.c, !func_2().a.c, -_wgslsmith_mod_i32(var_0.c.c.a, 1i) == _wgslsmith_dot_vec3_i32(u_input.d.wxx, ~vec3<i32>(46068i, 0i, -40845i)), true), !(!vec4<bool>(func_3(false, vec4<bool>(true, true, true, false)), true, var_0.b.c.c, global0.x || false)), var_0.c.a == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b.a, var_0.a, false)) * -1510f) + _wgslsmith_f_op_f32(f32(-1f) * -361f)));
    var var_1 = var_0.c.b;
    var var_2 = ~min(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(21429u, 4294967295u), vec2<u32>(18640u, 1u)), _wgslsmith_add_u32(151783u, 14526u)), min(~vec2<u32>(0u, 39659u), vec2<u32>(4294967295u, 108891u))), firstTrailingBit(vec2<u32>(1u, 1u) >> ((vec2<u32>(1u, 1u) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var_1 = vec2<bool>(false, true);
    var_2 = select(vec2<u32>(var_2.x, ~0u), vec2<u32>(0u & var_2.x, ~(~var_2.x)) ^ ~_wgslsmith_mult_vec2_u32(~vec2<u32>(var_2.x, var_2.x), abs(vec2<u32>(46326u, 4294967295u))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2254f, 1163f), vec2<f32>(var_0.d, -342f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(519f, 746f) * vec2<f32>(-988f, 1144f))))), min(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.x, 0u), vec2<u32>(4294967295u, var_2.x) | vec2<u32>(33846u, 12940u)), var_2.x) | 1u);
}

