struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> vec2<i32> {
    let var_0 = _wgslsmith_clamp_u32(0u, arg_1.a, max(firstTrailingBit(_wgslsmith_div_u32(45027u, arg_0)), arg_1.a)) << (u_input.a.x % 32u);
    let var_1 = Struct_2(arg_0, arg_1, arg_1, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-318f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(459f * 1197f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(623f + 188f)))), 863f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + _wgslsmith_f_op_f32(trunc(var_1.d.x)))) * var_1.d.x) * _wgslsmith_f_op_f32(-var_1.d.x));
    let var_3 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(step(246f, var_1.d.x)), var_2), _wgslsmith_f_op_f32(-1000f * 520f), -abs(_wgslsmith_add_vec3_i32(arg_1.b.wwz, arg_1.b.zzw)));
    global0 = array<vec3<u32>, 9>();
    return var_3.c.xz;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec3<bool>) -> u32 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c.x, _wgslsmith_mod_i32(abs(arg_2.c.x), _wgslsmith_mult_i32(u_input.c, 20331i)), ~(-1i)), vec3<i32>(select(-15382i, _wgslsmith_add_i32(u_input.c, 1i), select(true, arg_3.x, true)), 61733i, arg_2.c.x)), ~_wgslsmith_sub_i32(~(~arg_1.d.x), u_input.c << (u_input.b.x % 32u)), _wgslsmith_clamp_i32(func_3(u_input.a.x << (_wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, u_input.a.x) % 32u), Struct_1(countOneBits(0u), firstLeadingBit(vec4<i32>(arg_1.b, -1i, -1i, -13960i))), 86378u >> (0u % 32u)).x, 4051i, ~(~arg_2.c.x >> (_wgslsmith_div_u32(68737u, u_input.a.x) % 32u))), arg_2.c.x);
    let var_1 = 0i;
    var_0 = ~abs(~vec4<i32>(firstTrailingBit(var_0.x), _wgslsmith_mod_i32(u_input.c, arg_2.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, 2147483647i, 2147483647i, -1i), vec4<i32>(1i, -764i, arg_2.c.x, arg_1.d.x)), _wgslsmith_add_i32(var_1, 42405i)));
    global0 = array<vec3<u32>, 9>();
    global0 = array<vec3<u32>, 9>();
    return 0u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec3<u32>) -> f32 {
    var var_0 = -max(min(~vec4<i32>(u_input.c, u_input.c, -6562i, -1i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_2.x, u_input.b.x, 1u), u_input.b) % vec4<u32>(32u)), ~vec4<i32>(13984i, arg_0.x, u_input.c, arg_0.x)), _wgslsmith_mult_vec4_i32(-vec4<i32>(20859i, -25190i, -2147483647i, 8095i), _wgslsmith_mod_vec4_i32(~vec4<i32>(arg_0.x, u_input.c, arg_0.x, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, arg_0.x, -1i, 17628i), vec4<i32>(-39813i, 17516i, arg_0.x, arg_0.x)))));
    var_0 = ~vec4<i32>(1i, 2147483647i, ~1i, u_input.c);
    let var_1 = Struct_2(arg_2.x, Struct_1(u_input.b.x, vec4<i32>(~28i, -1i, ~arg_0.x, _wgslsmith_dot_vec3_i32(min(var_0.www, vec3<i32>(var_0.x, u_input.c, u_input.c)), ~var_0.wzw))), Struct_1(func_4(vec3<bool>(true, arg_1.x || arg_1.x, false), Struct_3(!arg_1, ~(-1i), func_3(0u, Struct_1(14804u, vec4<i32>(-2147483647i, var_0.x, u_input.c, -2147483647i)), 17187u), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, var_0.x), arg_0)), Struct_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 598f))), -124f, -var_0.yxw), vec3<bool>(true, true, false)), reverseBits(~vec4<i32>(0i, var_0.x, -1i, var_0.x)) << (u_input.b % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 1000f, 343f)))), vec3<f32>(-127f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-369f)) * _wgslsmith_div_f32(573f, 1318f)), 1f))));
    var_0 = vec4<i32>(-18546i, var_1.b.b.x, arg_0.x, countOneBits(-2147483647i));
    global0 = array<vec3<u32>, 9>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -339f));
}

fn func_1() -> u32 {
    var var_0 = reverseBits(vec4<i32>(u_input.c, u_input.c, -u_input.c, abs(u_input.c)));
    let var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<i32>(var_0.x, var_0.x), vec4<bool>(false, true, true, false), vec3<u32>(1u, 0u, u_input.a.x))) * _wgslsmith_div_f32(2089f, -264f))), -539f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1108f)) * 991f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-2290f)), _wgslsmith_f_op_f32(-1323f - 363f)))), var_0.wzx);
    var var_2 = ~_wgslsmith_sub_u32(~firstLeadingBit(54885u), u_input.b.x);
    let var_3 = _wgslsmith_f_op_f32(abs(var_1.b));
    var_2 = u_input.b.x & (1u | u_input.a.x);
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec3<u32>(abs(~(u_input.a.x | u_input.b.x)), u_input.a.x, u_input.a.x));
    var var_1 = func_1();
    var_1 = u_input.a.x;
    let var_2 = _wgslsmith_add_u32(abs((_wgslsmith_div_u32(1u, 1u) | ~u_input.a.x) ^ max(_wgslsmith_mod_u32(4294967295u, 89501u), ~var_0.x)), 4294967295u);
    var var_3 = Struct_1(~(~(~1u)), vec4<i32>(abs(u_input.c), -49263i, _wgslsmith_sub_i32(abs(15250i), -countOneBits(u_input.c)), u_input.c));
    let var_4 = u_input.b;
    var var_5 = 2147483647i;
    let var_6 = Struct_3(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true)), vec4<bool>(any(vec3<bool>(true, false, true)), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true)), u_input.c, _wgslsmith_div_vec2_i32(var_3.b.wz, vec2<i32>(var_3.b.x, ~(-1i))), var_3.b.wy);
    var_3 = Struct_1(_wgslsmith_mod_u32(max(func_4(vec3<bool>(var_6.a.x, var_6.a.x, var_6.a.x), var_6, Struct_4(vec2<f32>(-766f, -537f), 1200f, vec3<i32>(-375i, 29517i, 2147483647i)), select(vec3<bool>(false, var_6.a.x, var_6.a.x), vec3<bool>(false, var_6.a.x, true), var_6.a.x)), var_3.a), u_input.a.x ^ ~select(88715u, 4294967295u, var_6.a.x)), reverseBits(vec4<i32>(countOneBits(var_3.b.x) << (0u % 32u), var_3.b.x, -12328i, _wgslsmith_mult_i32(~0i, var_6.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1601f, 1777f) - vec2<f32>(186f, 227f))))))), _wgslsmith_f_op_f32(func_2(firstLeadingBit(~(vec2<i32>(var_6.b, 0i) ^ var_6.c)), vec4<bool>(!(!var_6.a.x), select(true, true, false), var_6.a.x, !var_6.a.x), global0[_wgslsmith_index_u32(1u, 9u)])));
}

