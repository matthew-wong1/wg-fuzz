struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<bool>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, vec4<bool>(false, false, true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4, arg_3: vec2<u32>) -> f32 {
    let var_0 = ~arg_1;
    var var_1 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(arg_2.a.x - arg_2.c.x)), _wgslsmith_f_op_f32(ceil(-542f))))));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(u_input.a.x | 3089u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-941f, 439f))), 180f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, 2011f, global0.b.x)), _wgslsmith_f_op_f32(-325f + -1000f)) * vec2<f32>(-2284f, _wgslsmith_f_op_f32(func_3(Struct_1(u_input.a.x, vec3<f32>(-1629f, 219f, -1901f), vec2<f32>(-1117f, -2283f)), u_input.c.x, Struct_4(vec4<f32>(-554f, -1000f, -138f, 138f), global0.b.zwx, vec3<f32>(-1211f, -671f, 1866f)), u_input.c.xw)))))));
    let var_1 = Struct_3(select(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b, -34374i), u_input.b) < ~abs(u_input.b), all(select(global0.b.zz, vec2<bool>(false, true), global0.b.wx)), true), select(global0.b, select(select(!vec4<bool>(true, global0.b.x, true, global0.a), global0.b, vec4<bool>(global0.b.x, global0.a, false, global0.a)), select(select(vec4<bool>(global0.a, false, false, global0.b.x), vec4<bool>(false, false, global0.a, true), false), vec4<bool>(global0.a, false, global0.b.x, global0.b.x), vec4<bool>(global0.b.x, false, global0.a, false)), all(!global0.b)), global0.a));
    global0 = Struct_3(true, var_1.b);
    var var_2 = !global0.b.zx;
    var var_3 = 50911i;
    return Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.x, -902f, _wgslsmith_f_op_f32(var_0.b.x - -453f), 1000f)))), global0.b.zzx, vec3<f32>(_wgslsmith_f_op_f32(-515f + var_0.c.x), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c.x)))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(arg_0.c.zx));
    var_0 = vec2<f32>(2986f, _wgslsmith_f_op_f32(select(-107f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-arg_0.c.x)), -u_input.b == arg_2.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -411f))) + func_2().a.ww) - _wgslsmith_f_op_vec2_f32(min(arg_0.c.yx, _wgslsmith_f_op_vec2_f32(-arg_0.c.xx))));
    var var_1 = !select(func_2().b, vec3<bool>(false && global0.a, arg_0.b.x, true && arg_1.x), arg_0.b);
    let var_2 = abs(u_input.d.x);
    return Struct_1(_wgslsmith_mod_u32(reverseBits(reverseBits(firstTrailingBit(u_input.d.x))), _wgslsmith_div_u32(abs(~23663u), var_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_0.c))), vec2<f32>(_wgslsmith_f_op_f32(var_0.x + -981f), _wgslsmith_f_op_f32(-var_0.x)));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_mult_i32(1i, 55456i);
    var var_1 = arg_1;
    global0 = Struct_3(any(arg_3), select(vec4<bool>(true, false, true, global0.b.x), select(select(!global0.b, global0.b, 978f <= arg_1.a.b.x), vec4<bool>(all(arg_3), u_input.a.x > 5551u, arg_3.x, arg_1.e.x == 1518f), vec4<bool>(arg_3.x, arg_1.c.x, true, var_1.c.x | arg_3.x)), !any(vec3<bool>(arg_1.c.x, false, arg_3.x))));
    var_1 = arg_1;
    global0 = Struct_3(!(27559u == _wgslsmith_mod_u32(u_input.c.x << (41193u % 32u), ~0u)), !(!vec4<bool>(global0.b.x, !arg_3.x, var_1.c.x, true)));
    return Struct_3(all(vec4<bool>(arg_3.x, select(!var_1.c.x, global0.a, all(vec2<bool>(var_1.c.x, arg_3.x))), !all(vec3<bool>(false, false, arg_1.c.x)), true)), !arg_3);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = 0u;
    var var_1 = func_5(~firstLeadingBit(arg_0.x), Struct_2(func_4(func_2(), !select(vec3<bool>(arg_1.x, false, false), arg_1, global0.b.zyx), ~vec4<i32>(1i, u_input.b, 19201i, -2147483647i) | ~vec4<i32>(-53463i, 5587i, -63116i, u_input.b)), _wgslsmith_mod_vec4_i32(~(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), vec4<i32>(-1i, -16702i, -10740i, u_input.b))), select(vec2<bool>(true, true), arg_1.zx, vec2<bool>(global0.a, true)), ~u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-753f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1027f), _wgslsmith_div_f32(1821f, -1699f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1112f, 341f, -284f, -820f)))), ~(-u_input.b & -u_input.b), !(!global0.b));
    let var_2 = Struct_2(func_4(func_2(), !func_2().b, _wgslsmith_mult_vec4_i32(vec4<i32>(-667i, u_input.b, select(u_input.b, u_input.b, global0.b.x), abs(u_input.b)), vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b) ^ _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 1i, 15350i, u_input.b)))), vec4<i32>(_wgslsmith_div_i32(u_input.b, ~(-72253i)), u_input.b, select(abs(u_input.b), firstTrailingBit(u_input.b), var_1.b.x & !arg_1.x), -min(-2147483647i, u_input.b | u_input.b)), !(!var_1.b.zw), _wgslsmith_mod_i32(~2147483647i, max(u_input.b, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b, -11010i, u_input.b, u_input.b), vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), false), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i), vec4<i32>(1i, u_input.b, u_input.b, u_input.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(963f, -248f, 725f, 742f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-381f, 560f, -2076f, -1050f)))))));
    var_1 = Struct_3(func_2().b.x || var_2.c.x, var_1.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(var_2.a.c)), vec2<f32>(431f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1842f, -1275f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(676f - var_2.a.b.x)))))));
    return Struct_1(var_2.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.e.x, _wgslsmith_f_op_f32(trunc(1057f)), 435f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_2.a.b)) + vec3<f32>(_wgslsmith_div_f32(-1420f, -594f), _wgslsmith_f_op_f32(-var_3.x), -1967f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.a.b.yx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e.x, -1104f) * vec2<f32>(var_3.x, var_3.x)))), vec2<f32>(1413f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-263f - -289f) * -420f)), func_5(~(~arg_0.x), var_2, var_2.d, vec4<bool>(true, all(arg_1), arg_1.x, var_2.c.x && false)).b.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(true, !vec4<bool>(all(!global0.b.yz), !(u_input.b >= u_input.b), true, false));
    let var_1 = Struct_2(func_1((~u_input.c << (~vec4<u32>(4294967295u, 0u, 89210u, 50867u) % vec4<u32>(32u))) << (abs(u_input.c) % vec4<u32>(32u)), global0.b.xwx), vec4<i32>(-(_wgslsmith_add_i32(u_input.b, 1i) >> (1u % 32u)), 1i, u_input.b, ~u_input.b), global0.b.yw, abs(_wgslsmith_dot_vec4_i32(firstTrailingBit(countOneBits(vec4<i32>(u_input.b, u_input.b, -1i, -7992i))), select(vec4<i32>(u_input.b, -1i, -28808i, 1i), vec4<i32>(2147483647i, 1i, u_input.b, u_input.b), var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -136f) - -613f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1758f, _wgslsmith_f_op_f32(1615f - -288f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-527f, -442f)), 526f, false)), -1561f));
    let var_2 = ~var_1.b.yzw;
    let var_3 = func_1(~vec4<u32>(var_1.a.a, 0u, 35601u, firstLeadingBit(~50189u)), !(!select(vec3<bool>(true, var_0.b.x, false), vec3<bool>(var_1.c.x, true, var_1.c.x), vec3<bool>(true, var_0.b.x, var_1.c.x))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_f_op_f32(1884f - var_1.e.x), var_3.b.x) * _wgslsmith_f_op_vec3_f32(ceil(var_3.b)))));
    let var_5 = -2142f;
    var var_6 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.x, _wgslsmith_f_op_f32(-var_1.e.x)) + vec2<f32>(_wgslsmith_f_op_f32(var_5 * -753f), _wgslsmith_f_op_f32(-var_3.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(15889u, ~countOneBits(firstLeadingBit(u_input.c.wyw) | ~vec3<u32>(var_3.a, 1u, 17106u)), u_input.d.zx, var_5);
}

