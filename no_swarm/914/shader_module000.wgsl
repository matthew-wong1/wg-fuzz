struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: vec3<bool>;

var<private> global2: i32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(196f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1068f * 384f), _wgslsmith_f_op_f32(f32(-1f) * -1296f))))));
    let var_1 = vec3<bool>(_wgslsmith_div_u32(~_wgslsmith_add_u32(16580u, u_input.a.x), ~(u_input.a.x >> (u_input.a.x % 32u))) >= u_input.a.x, true, true);
    let var_2 = _wgslsmith_f_op_f32(abs(978f));
    let var_3 = var_2;
    global0 = array<Struct_4, 31>();
    return -400f;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: vec3<i32>) -> vec4<bool> {
    var var_0 = !select(!(!(!vec4<bool>(true, arg_1, true, arg_1))), select(!select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(false, false, arg_1, global1.x), vec4<bool>(global1.x, false, arg_1, false)), select(!vec4<bool>(arg_1, false, true, true), !vec4<bool>(true, global1.x, global1.x, global1.x), any(global1.yx)), false), (any(vec4<bool>(false, arg_1, arg_1, arg_1)) & true) || (arg_1 | any(vec4<bool>(global1.x, arg_1, false, false))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(279f, _wgslsmith_f_op_f32(func_3()), -226f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_2.x)))));
    var_0 = !select(select(vec4<bool>(true, var_0.x, any(global1.zz), global1.x), !select(vec4<bool>(var_0.x, var_0.x, global1.x, global1.x), vec4<bool>(var_0.x, global1.x, global1.x, true), var_0.x), any(vec3<bool>(true, true, arg_1))), vec4<bool>(!(global1.x && false), abs(4294967295u) == u_input.a.x, select(true, false, true), false), true);
    let var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(step(-1170f, _wgslsmith_f_op_f32(floor(-782f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1361f * var_1.a.x), arg_0.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1549f - 622f))))));
    global2 = _wgslsmith_clamp_i32(29569i, ~(~(arg_3.x << (_wgslsmith_clamp_u32(0u, u_input.a.x, 4294967295u) % 32u))), ~(~(-49254i)));
    return !select(vec4<bool>(13698u <= u_input.a.x, !var_0.x, all(!vec4<bool>(arg_1, true, true, true)), !arg_1 && false), select(select(select(vec4<bool>(true, arg_1, var_0.x, false), vec4<bool>(var_0.x, true, true, global1.x), true), vec4<bool>(false, var_0.x, var_0.x, false), select(vec4<bool>(false, false, arg_1, false), vec4<bool>(false, true, global1.x, arg_1), vec4<bool>(global1.x, global1.x, global1.x, global1.x))), !select(vec4<bool>(false, true, arg_1, false), vec4<bool>(false, arg_1, arg_1, true), global1.x), (false || global1.x) != arg_1), !vec4<bool>(u_input.a.x >= u_input.a.x, 8104u != u_input.a.x, false, !global1.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    global1 = vec3<bool>(_wgslsmith_f_op_f32(-arg_1.b.x) == arg_1.b.x, arg_0.x, !global1.x);
    var var_0 = arg_1.c;
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, -266f, -1000f, arg_1.b.x) * _wgslsmith_div_vec4_f32(vec4<f32>(-568f, arg_1.b.x, -335f, -157f), vec4<f32>(arg_1.b.x, -512f, -365f, arg_1.b.x))))), Struct_3(!arg_0.x | true, _wgslsmith_clamp_i32(firstTrailingBit(var_0.x), reverseBits(abs(arg_1.a)), arg_1.c.x), ~(~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_sub_u32(u_input.a.x & u_input.a.x, 5185u)), i32(-1i) * -_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_1.c, arg_1.c), arg_1.c & arg_1.c), Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(877f, arg_1.b.x, -1000f, arg_1.b.x), vec4<f32>(1020f, -956f, arg_1.b.x, -1091f), arg_0)))), _wgslsmith_div_vec4_f32(vec4<f32>(-1195f, arg_1.b.x, arg_1.b.x, 453f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, -1346f))), arg_0))), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, -2129f, _wgslsmith_f_op_f32(arg_1.b.x + -122f), _wgslsmith_f_op_f32(ceil(601f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b.x, arg_1.b.x, 211f, arg_1.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, -1306f, -614f, -487f)))))));
    var var_2 = vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(sign(var_1.e.a.x)), _wgslsmith_div_f32(var_1.e.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-220f + _wgslsmith_f_op_f32(floor(-605f))))), _wgslsmith_div_f32(-1420f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a.x) * _wgslsmith_f_op_f32(ceil(var_1.d.a.x)))))));
    var_1 = Struct_4(Struct_2(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_div_f32(var_1.e.a.x, _wgslsmith_div_f32(var_2.x, 275f)), _wgslsmith_f_op_f32(-708f - -319f))), Struct_3(!(1000f > _wgslsmith_div_f32(-1248f, var_1.d.a.x)), _wgslsmith_add_i32(abs(abs(arg_1.a)), var_0.x), _wgslsmith_div_vec4_u32(firstLeadingBit(var_1.b.c), vec4<u32>(~13567u, var_1.b.c.x, ~u_input.a.x, u_input.a.x)), ~25559u), -firstTrailingBit(34285i), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a.a)) - _wgslsmith_f_op_vec4_f32(exp2(var_1.a.a)))), var_1.e);
    return -17343i;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> i32 {
    global2 = arg_1.x;
    global2 = -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, _wgslsmith_mult_i32(2147483647i, arg_1.x), arg_1.x & -2147483647i, ~(-45479i)), -(vec4<i32>(arg_1.x, arg_1.x, 42926i, 20080i) | vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 0i))), vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, -1i, 17808i, arg_1.x), vec4<i32>(arg_1.x, 0i, -70417i, arg_1.x))), arg_1.x, func_4(func_2(Struct_1(arg_1.x, arg_0.a.zww, vec3<i32>(arg_1.x, 47499i, arg_1.x)), false, vec3<f32>(167f, arg_0.a.x, arg_0.a.x), arg_1), Struct_1(1i, arg_0.a.yww, vec3<i32>(48977i, arg_1.x, -1i))), arg_1.x));
    var var_0 = -_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, arg_1.x), _wgslsmith_mult_vec2_i32(~vec2<i32>(37162i, 0i), -vec2<i32>(arg_1.x, arg_1.x))), select(select(arg_1.xz, vec2<i32>(arg_1.x, arg_1.x), global1.zy), arg_1.yy, false) << (vec2<u32>(u_input.a.x ^ u_input.a.x, 0u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.x, arg_1.x) & vec2<i32>(arg_1.x, arg_1.x), arg_1.yx) >> (abs(u_input.a.zx) % vec2<u32>(32u)));
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_mod_u32(~(~var_1), 1u);
    return _wgslsmith_div_i32(var_0.x, -firstLeadingBit(-53431i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 31>();
    global2 = _wgslsmith_mod_i32(~_wgslsmith_mod_i32(-1i, -2147483647i), func_1(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1021f, 1000f, -167f, -117f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(333f, 1000f, -1032f, 283f)))), vec3<i32>(-8321i, _wgslsmith_mod_i32(2147483647i >> (1u % 32u), 0i << (u_input.a.x % 32u)), _wgslsmith_div_i32(-2147483647i, max(-2147483647i, 41295i)))));
    let var_0 = !any(vec4<bool>(true, global1.x, !(!global1.x), global1.x || global1.x));
    var var_1 = Struct_5(global1.x, u_input.a.yyy, Struct_3(var_0, 1i, u_input.a | u_input.a, ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)) >> ((u_input.a.x & ~31248u) % 32u)), ~(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 15923i, -2147483647i), vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(-9361i, -12009i, -21178i))) >> (vec3<u32>(~u_input.a.x, u_input.a.x >> (92987u % 32u), min(u_input.a.x, u_input.a.x)) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-989f + -192f), _wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(ceil(-3253f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(590f, -1023f, 540f) * vec3<f32>(613f, -679f, -1244f)))), vec3<f32>(-503f, _wgslsmith_f_op_f32(floor(631f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(488f + 569f), _wgslsmith_f_op_f32(min(-860f, 1000f)))))));
    var var_3 = _wgslsmith_f_op_f32(step(-1333f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x)))));
    var var_4 = 334f;
    let var_5 = abs(_wgslsmith_add_i32(-1i, ~(~(-7105i))));
    let var_6 = -347f;
    let x = u_input.a;
    s_output = StorageBuffer(-select(var_1.c.b >> (u_input.a.x % 32u), -2147483647i, false) ^ -2910i);
}

