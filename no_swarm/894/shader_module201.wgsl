struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec3<u32>, 4>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1462f, 835f, -393f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-563f, -1517f, -703f)))))));
    let var_1 = select(vec4<bool>(false, all(!(!vec4<bool>(global0.a.c, global0.a.c, false, global0.a.c))), all(!(!vec4<bool>(global0.a.c, false, global0.a.c, true))), (global0.a.a | u_input.a.x) == ~(-28891i)), !vec4<bool>(-global0.a.a > countOneBits(10646i), !global0.a.c, all(!vec4<bool>(global0.a.c, global0.a.c, global0.a.c, false)), select(!global0.a.c, all(vec3<bool>(false, global0.a.c, true)), true)), global0.a.c);
    var var_2 = Struct_2(!global0.a.c, u_input.a.x, Struct_1(~_wgslsmith_mult_i32(~global0.a.a, i32(-1i) * -1i)), vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-111f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))));
    let var_3 = vec2<bool>(global0.a.c, abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, arg_0.x, 1u), vec4<u32>(1549u, 4294967295u, arg_0.x, arg_0.x))) <= ~(~(~0u)));
    let var_4 = countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.c.x, 18888u, 0u), vec4<u32>(1u, 1u, 42245u, u_input.b)), select(_wgslsmith_div_vec4_u32(vec4<u32>(50311u, 14581u, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 2863u, arg_0.x, 4294967295u)), vec4<u32>(arg_0.x, 3482u, u_input.d, 36499u), all(vec4<bool>(true, false, true, true)))), vec4<u32>(_wgslsmith_sub_u32(abs(0u), arg_0.x << (4294967295u % 32u)), 1u, 4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, arg_0.x, u_input.b), vec4<u32>(27894u, arg_0.x, arg_0.x, 12656u)), _wgslsmith_sub_vec4_u32(vec4<u32>(40089u, 0u, u_input.c.x, u_input.b), vec4<u32>(arg_0.x, u_input.b, 33221u, arg_0.x))))));
    return firstTrailingBit(reverseBits(~u_input.c));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    global0 = Struct_5(global0.a);
    let var_0 = !(!vec3<bool>(true != !arg_0.a, true, arg_0.a & all(vec3<bool>(false, false, false))));
    var var_1 = true;
    var var_2 = Struct_4(_wgslsmith_mod_vec2_u32(~vec2<u32>(79807u, u_input.c.x) & u_input.c, func_3(reverseBits(vec3<u32>(29366u, u_input.d, u_input.c.x)))), arg_0.c);
    return Struct_3(~var_2.b.a, _wgslsmith_dot_vec2_i32(reverseBits(~_wgslsmith_clamp_vec2_i32(arg_0.d, vec2<i32>(var_2.b.a, -50677i), vec2<i32>(arg_0.b, arg_0.b))), vec2<i32>(~1i >> (u_input.c.x % 32u), var_2.b.a)), !var_0.x);
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> f32 {
    global1 = array<vec3<u32>, 4>();
    var var_0 = vec2<i32>(u_input.a.x, -_wgslsmith_mod_i32(-29612i, firstLeadingBit(1i)));
    var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~countOneBits(_wgslsmith_add_vec2_i32(u_input.a.xy, vec2<i32>(global0.a.b, -11719i))), _wgslsmith_mod_vec2_i32(min(vec2<i32>(u_input.a.x, -14042i), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a, u_input.a.x), vec2<i32>(-1i, var_0.x))), countOneBits(-vec2<i32>(2147483647i, -1i)))), select(countOneBits(_wgslsmith_mod_vec2_i32(u_input.a.yx, vec2<i32>(-31489i, 4002i)) & ~u_input.a.yx), vec2<i32>(_wgslsmith_mult_i32(func_2(Struct_2(false, var_0.x, Struct_1(-2147483647i), vec2<i32>(var_0.x, arg_0.b), arg_1)).b, max(37169i, var_0.x)), global0.a.a), !vec2<bool>(global0.a.c, select(arg_0.c, false, arg_0.c))));
    let var_1 = Struct_5(Struct_3(arg_0.a, max(~(i32(-1i) * -2147483647i), global0.a.a), true));
    global1 = array<vec3<u32>, 4>();
    return arg_1;
}

fn func_1() -> Struct_4 {
    var var_0 = 33511u;
    let var_1 = Struct_3(2147483647i, 2147483647i, false);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_4(func_2(Struct_2(false, -4424i, Struct_1(global0.a.a), u_input.a.zz, -445f)), -670f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1072f, 570f)))), 1106f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -880f, -471f) * vec3<f32>(521f, -1966f, 1000f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(517f)), _wgslsmith_f_op_f32(min(-363f, 361f)), _wgslsmith_f_op_f32(min(-327f, 1775f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-132f, -2114f, -1187f))))));
    let var_3 = Struct_3(var_1.a | (-_wgslsmith_mult_i32(var_1.b, var_1.a) >> (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u)), 11625i, all(vec4<bool>(true, var_1.c, false, -758f <= _wgslsmith_f_op_f32(-var_2.x))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-143f * var_2.x) + var_2.x));
    return Struct_4(u_input.c, Struct_1(~1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec2<u32>(4294967295u, 29877u), Struct_1(firstTrailingBit(_wgslsmith_sub_i32(global0.a.b << (20828u % 32u), ~27796i))));
    var var_1 = u_input.a.zx;
    var var_2 = global0.a;
    let var_3 = var_0.b;
    var_0 = func_1();
    var_1 = ~vec2<i32>(29154i ^ abs(var_1.x >> (1u % 32u)), func_1().b.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, -903i, -28688i), vec4<i32>(u_input.a.x, var_1.x, -13896i, var_1.x), vec4<i32>(-1i, var_1.x, var_0.b.a, global0.a.b))), ~(-vec4<i32>(2147483647i, global0.a.a, 0i, var_0.b.a))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(max(929f, 961f)), _wgslsmith_f_op_f32(252f - -1000f), 1141f))), ~vec3<u32>(var_0.a.x, 33010u, 0u), vec4<u32>(_wgslsmith_add_u32(u_input.b, u_input.b), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 30638u, u_input.c.x), u_input.c.x | u_input.c.x), u_input.d, 23098u));
}

