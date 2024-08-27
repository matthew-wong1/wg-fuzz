struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

var<private> global2: i32 = 0i;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = reverseBits(_wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(arg_0.d, -55996i)));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)));
    let var_3 = 17844i;
    global1 = 37363u > _wgslsmith_div_u32(arg_2.x, arg_2.x);
    return -vec4<i32>(max(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -8087i, -5025i, -2147483647i), vec4<i32>(0i, var_0.x, u_input.c.x, -8728i)), -vec4<i32>(-41342i, -32904i, 39186i, 1i)), ~(~var_3)), arg_0.d, firstLeadingBit(firstLeadingBit(-34108i)), 1i << (_wgslsmith_mod_u32(arg_2.x, _wgslsmith_clamp_u32(arg_2.x, arg_2.x, arg_2.x)) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    let var_0 = abs(select(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 50067u, 34320u), vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(4294967295u, 10542u, 4294967295u, 31840u)), ~(~vec4<u32>(0u, 559u, 24522u, 56739u))), ~reverseBits(vec4<u32>(1u, 19082u, 1u, 4294967295u)), !select(vec4<bool>(true, arg_0.c.x, false, false), select(vec4<bool>(arg_2.c.x, arg_2.c.x, false, false), vec4<bool>(arg_2.c.x, false, false, arg_2.c.x), vec4<bool>(true, true, arg_2.c.x, true)), arg_2.c.x | true)));
    global1 = all(select(select(arg_2.c, select(arg_2.c, vec3<bool>(true, false, true), vec3<bool>(arg_2.c.x, arg_2.c.x, false)), select(!arg_0.c, select(arg_2.c, vec3<bool>(true, arg_2.c.x, arg_0.c.x), false), vec3<bool>(arg_2.c.x, arg_0.c.x, arg_0.c.x))), select(arg_2.c, select(select(vec3<bool>(false, arg_0.c.x, arg_0.c.x), arg_2.c, arg_0.c), select(arg_2.c, arg_0.c, vec3<bool>(arg_2.c.x, true, arg_0.c.x)), arg_0.c.x), arg_0.c), !(var_0.x > var_0.x)));
    global2 = 2147483647i;
    let var_1 = ~var_0.x;
    return ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(select(var_0, var_0, select(vec4<bool>(true, false, arg_2.c.x, true), vec4<bool>(true, true, arg_2.c.x, false), arg_0.c.x)), select(vec4<u32>(var_0.x, var_0.x, 0u, 84354u) & vec4<u32>(var_1, 25517u, var_1, 33021u), abs(var_0), true)), var_0.x);
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = ~countOneBits(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 4294967295u, 11590u, 44784u), ~vec4<u32>(4294967295u, arg_0, 10579u, arg_0))));
    global1 = true & any(!select(vec3<bool>(arg_1.c.x, arg_1.c.x, false), arg_1.c, !arg_1.c));
    let var_0 = 1944f;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(arg_1.a + 1987f), u_input.c.x ^ ~9034i, !(!select(arg_1.c, arg_1.c, false)), abs(~max(-41141i, u_input.a)) >> (~func_4(arg_1, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a, var_0, arg_1.a), vec3<f32>(393f, -816f, -823f), arg_1.c)), arg_1, func_3(Struct_1(var_0, arg_1.b, vec3<bool>(true, arg_1.c.x, false), arg_1.d), arg_1.c.x, vec3<u32>(0u, 0u, arg_0))) % 32u));
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1074f + var_1.a) - _wgslsmith_f_op_f32(arg_1.a + arg_1.a)))), -1412f), ~_wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.b.x, var_1.b, var_1.d), vec3<i32>(1i, arg_1.b, 1i)), u_input.b), -2147483647i), select(arg_1.c, var_1.c, arg_1.c), -(~97637i));
    return arg_1;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<bool> {
    var var_0 = func_2(arg_3.x, arg_2);
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, arg_1.b, -1i), select(u_input.b, select(vec3<i32>(_wgslsmith_mod_i32(-1i, 34948i), arg_2.d, var_0.b), vec3<i32>(var_0.d, 14906i << (arg_3.x % 32u), -29790i >> (arg_3.x % 32u)), all(vec3<bool>(var_0.c.x, arg_2.c.x, arg_2.c.x))), !vec3<bool>(true, arg_3.x == 1u, true)));
    let var_2 = func_2(_wgslsmith_sub_u32(func_4(Struct_1(-666f, 1i, arg_2.c, func_3(Struct_1(arg_1.a, -33643i, var_0.c, u_input.c.x), var_0.c.x, vec3<u32>(15409u, 0u, 78693u)).x), arg_0.zwy, func_2(~arg_3.x, func_2(70332u, arg_2)), min(vec4<i32>(u_input.b.x, -28328i, 16965i, -8073i), vec4<i32>(-2147483647i, 0i, arg_1.b, var_0.d))), ~(~(~1u))), func_2(arg_3.x, Struct_1(-152f, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, -1i), -u_input.c), arg_1.c, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.b.x, 2147483647i, var_0.d)), u_input.b))));
    let var_3 = arg_1;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.xyx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(200f, -164f, 1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -698f)))));
    return !select(vec4<bool>(true, all(vec3<bool>(var_3.c.x, false, arg_1.c.x)), any(vec2<bool>(var_0.c.x, var_2.c.x)), false), vec4<bool>(var_0.c.x, false, any(func_2(0u, Struct_1(var_2.a, var_0.b, vec3<bool>(false, arg_1.c.x, true), -5248i)).c.yx), -19758i > arg_2.b), var_2.c.x);
}

fn func_1() -> i32 {
    var var_0 = all(!(!func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(503f, 1000f, -1000f, 124f)), Struct_1(1000f, u_input.c.x, vec3<bool>(true, false, true), -1i), func_2(32305u, Struct_1(-1301f, -1i, vec3<bool>(false, false, true), u_input.b.x)), ~vec2<u32>(0u, 0u))));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(~abs(65602u) & _wgslsmith_dot_vec4_u32(abs(vec4<u32>(36659u, 4294967295u, 45475u, 5852u)), vec4<u32>(47156u, 4294967295u, 1u, 1u)), firstLeadingBit(~_wgslsmith_div_u32(14083u, 128978u))), 1240u);
    var var_2 = 0u;
    var var_3 = u_input.b.x & max(-34624i, 1i);
    var_0 = true || (all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false)) & !select(true, true, true));
    return firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_div_vec3_i32(~(~u_input.b), u_input.b)));
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    var var_0 = vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(max(arg_0, -1566f)), _wgslsmith_f_op_f32(538f * arg_0));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1381f))))), -1131f, arg_1.c.x)), u_input.b.x, select(select(vec3<bool>(arg_1.c.x, !arg_1.c.x, true), func_2(123183u << (arg_2.x % 32u), Struct_1(var_0.x, u_input.a, vec3<bool>(arg_1.c.x, false, false), u_input.c.x)).c, select(vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x), !vec3<bool>(false, arg_1.c.x, arg_1.c.x), true)), arg_1.c, func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1298f, 641f, 1322f)), arg_1, func_2(1u, Struct_1(arg_1.a, -2147483647i, arg_1.c, u_input.c.x)), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(47568u, 1u)))).wxx), arg_3);
    global1 = func_2(~8732u, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), 618f, !arg_1.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-124f * -509f), -155f)))), ~(-_wgslsmith_sub_i32(2147483647i, arg_3)), vec3<bool>(var_1.c.x, false, func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(206f, 1176f, arg_1.a, 406f) - vec4<f32>(arg_0, -513f, 353f, var_0.x)), Struct_1(var_0.x, u_input.c.x, var_1.c, 3822i), arg_1, arg_2.yw | arg_2.xz).x), countOneBits(_wgslsmith_sub_i32(~1i, _wgslsmith_mult_i32(u_input.c.x, var_1.b))))).c.x;
    global2 = _wgslsmith_mult_i32(u_input.b.x, u_input.a);
    let var_2 = vec2<bool>(true, true);
    return 34226u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec3<bool>(any(vec2<bool>(false, false)), false, false));
    var var_1 = func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(321f - 1900f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2517f))), 2004f))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1414f, 785f))))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.c.x, 2147483647i, u_input.b.x), func_1()), !vec3<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)), true), 1i), ~countOneBits(vec4<u32>(9271u, _wgslsmith_mult_u32(43748u, 1u), 1u, 1u)), func_2(4294967295u & (select(62841u, 11042u, false) << (countOneBits(1u) % 32u)), func_2(~1u, Struct_1(-1000f, _wgslsmith_clamp_i32(u_input.c.x, u_input.a, -1i), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), 15034i))).d);
    var var_2 = vec4<bool>(true, u_input.a < 1i, select(true, firstTrailingBit(0u) > _wgslsmith_sub_u32(4294967295u, 0u), !any(vec2<bool>(true, true))), select(true, true != all(vec3<bool>(true, true, true)), true) && (false || all(vec4<bool>(true, true, true, true))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-217f, -1045f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-815f)) * _wgslsmith_f_op_f32(-474f * -1310f)) * _wgslsmith_f_op_f32(796f - 2486f))));
    var_3 = _wgslsmith_f_op_f32(-func_2(~reverseBits(countOneBits(1u)), Struct_1(-2599f, reverseBits(select(u_input.b.x, u_input.c.x, true)), !select(var_2.yzz, var_2.yxx, var_2.zwz), 16124i)).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(282f, 731f, 352f, -517f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1277f), _wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.c.x, -22107i, 2147483647i, -1146i) >> (vec4<u32>(0u, 59496u, 15621u, 1031u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -1i, 0i, u_input.b.x), vec4<i32>(u_input.c.x, 0i, -20932i, 1i)) >> (min(vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(25076u, 4294967295u, 4294967295u, 0u)) % vec4<u32>(32u)), false), vec4<i32>(1i, _wgslsmith_div_i32(-6866i, u_input.a), -u_input.a, ~u_input.c.x)));
}

