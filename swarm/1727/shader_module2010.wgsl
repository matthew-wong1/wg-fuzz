struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: bool,
    d: vec2<bool>,
    e: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_3,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<f32>(1406f, -758f, -1185f), vec3<i32>(0i, 0i, 21042i), Struct_3(vec3<i32>(-15320i, -1i, 1i), vec3<i32>(7682i, 16117i, 0i), false, vec2<bool>(true, true), -1356f), vec3<u32>(881u, 61170u, 4294967295u));

var<private> global1: bool = false;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<f32> {
    let var_0 = !select(!vec2<bool>(true, select(global0.c.d.x, true, false)), vec2<bool>(any(vec4<bool>(true, arg_1.c.x, false, false)), false), true && arg_1.c.x);
    let var_1 = 4294967295u;
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-global0.a), _wgslsmith_mod_vec3_i32((arg_2.xxy ^ global0.b) ^ _wgslsmith_div_vec3_i32(arg_1.d, vec3<i32>(arg_2.x, global0.c.a.x, -33482i)), ~(vec3<i32>(global0.c.a.x, arg_2.x, arg_2.x) | vec3<i32>(-1i, 1i, 16725i))) ^ max(abs(max(vec3<i32>(-2147483647i, -123080i, arg_2.x), vec3<i32>(global0.c.b.x, 1i, arg_1.d.x))), vec3<i32>(global0.b.x, 1i, abs(1i))), global0.c, global0.d);
    var var_3 = var_2.d.xz;
    var var_4 = arg_1;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-611f, var_2.c.e, false)), arg_1.a))), var_2.c.e, 799f);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    var var_0 = ~min(_wgslsmith_add_u32(u_input.a, ~(~4294967295u)), min(1u, min(47119u, ~arg_0.d.x)));
    let var_1 = -1000f;
    let var_2 = 2901f;
    var_0 = global0.d.x;
    global3 = false;
    return _wgslsmith_f_op_f32(ceil(var_2));
}

fn func_2() -> Struct_3 {
    global0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.e, 530f) - _wgslsmith_f_op_f32(-global0.a.x)), 432f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(930f)) * _wgslsmith_div_f32(1564f, 1462f)) - _wgslsmith_f_op_f32(global0.a.x - global0.c.e)), 1874f), _wgslsmith_add_vec3_i32(global0.c.b, abs(global0.c.a | vec3<i32>(-38957i, 17834i, 34209i)) << (~vec3<u32>(9740u, 4294967295u, 0u) % vec3<u32>(32u))), Struct_3(vec3<i32>(global0.b.x, global0.b.x, ~firstLeadingBit(0i)), ((vec3<i32>(48264i, global0.c.a.x, 30235i) ^ vec3<i32>(global0.b.x, -32581i, global0.c.a.x)) >> ((vec3<u32>(1u, 6359u, u_input.a) & vec3<u32>(4294967295u, global0.d.x, u_input.a)) % vec3<u32>(32u))) ^ global0.b, true, !global0.c.d, _wgslsmith_f_op_f32(func_4(Struct_4(_wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(true, global2.x, false), Struct_1(1415f, 656f, vec2<bool>(global0.c.d.x, false), vec3<i32>(global0.b.x, -15669i, global0.c.b.x)), vec4<i32>(23919i, 49663i, 40033i, 41352i))), vec3<i32>(global0.c.b.x, global0.c.a.x, 5779i), Struct_3(vec3<i32>(global0.b.x, global0.b.x, 1i), vec3<i32>(64402i, global0.b.x, global0.b.x), global0.c.d.x, global0.c.d, -189f), vec3<u32>(72512u, global0.d.x, u_input.a) << (global0.d % vec3<u32>(32u))), Struct_2(vec3<f32>(845f, 168f, global0.a.x), Struct_1(global0.c.e, global0.a.x, vec2<bool>(true, true), global0.c.a))))), global0.d);
    global1 = any(vec3<bool>(any(vec4<bool>(global2.x, true, global0.c.d.x, false)), global0.c.c, all(global0.c.d))) | global0.c.d.x;
    global0 = Struct_4(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -469f))), _wgslsmith_f_op_f32(-global0.c.e)), ~global0.b, Struct_3(global0.c.b, select(~vec3<i32>(499i, 0i, global0.c.b.x), global0.c.a, true), true, !global0.c.d, 1000f), ~global0.d);
    global2 = global0.c.d;
    let var_0 = -vec2<i32>(25048i >> (_wgslsmith_mult_u32(26612u, global0.d.x) % 32u), -global0.b.x);
    return global0.c;
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: vec4<u32>) -> i32 {
    global1 = func_2().d.x;
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(arg_1.xwx)), arg_1.yxw)), arg_2.b | countOneBits(global0.b), func_2(), arg_2.d);
    let var_0 = Struct_5(arg_2, Struct_1(150f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -117f))) * arg_2.a.x), arg_2.c.d, reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 0i, 22167i), global0.c.a), _wgslsmith_add_vec3_i32(arg_2.b, vec3<i32>(global0.b.x, -1i, arg_2.b.x))))), arg_2);
    var var_1 = false;
    var var_2 = Struct_3(arg_2.b ^ var_0.b.d, select(~(~global0.b), ~arg_2.c.b, select(select(vec3<bool>(var_0.a.c.d.x, false, arg_2.c.c), vec3<bool>(arg_2.c.c, false, false), select(vec3<bool>(global2.x, true, false), vec3<bool>(var_0.b.c.x, arg_2.c.c, global2.x), vec3<bool>(arg_2.c.c, arg_2.c.d.x, global2.x))), !select(vec3<bool>(global0.c.d.x, arg_2.c.d.x, false), vec3<bool>(arg_2.c.d.x, var_0.b.c.x, global0.c.c), vec3<bool>(true, var_0.c.c.c, var_0.c.c.c)), var_0.a.c.d.x)), -_wgslsmith_add_i32(-33353i, 1i) >= _wgslsmith_clamp_i32(arg_0, ~var_0.c.b.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.d.x, u_input.a), vec2<u32>(6371u, u_input.a)) % 32u), -1i), vec2<bool>(var_0.a.d.x == _wgslsmith_mult_u32(global0.d.x, countOneBits(global0.d.x)), false), _wgslsmith_f_op_f32(267f - global0.a.x));
    return ~(arg_0 & 24872i);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec4<u32>) -> u32 {
    global3 = global0.c.a.x == 4461i;
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(func_5(select(-30072i, _wgslsmith_clamp_i32(global0.b.x, 0i, global0.b.x), true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.e, global0.c.e, 257f, global0.c.e) - vec4<f32>(global0.a.x, global0.c.e, -374f, 921f)))), Struct_4(global0.a, -vec3<i32>(global0.c.b.x, -2147483647i, 1i), func_2(), vec3<u32>(global0.d.x, 4294967295u, u_input.a)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 44900u, global0.d.x), arg_2), vec4<u32>(global0.d.x, global0.d.x, global0.d.x, u_input.a))), _wgslsmith_sub_i32(~global0.b.x, (12642i & global0.b.x) & firstTrailingBit(2147483647i)), 59494i), global0.c.b.x, ~global0.b.x);
    global2 = select(select(arg_0.xz, arg_1.zy, global0.c.d.x || !global0.c.d.x), vec2<bool>(false, true), arg_0.x);
    var var_1 = vec3<i32>(_wgslsmith_div_i32(var_0.x, var_0.x), var_0.x, _wgslsmith_add_i32(var_0.x, _wgslsmith_mult_i32(84637i, var_0.x)));
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(global0.c.a.x, 1i) << (_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 1u), firstTrailingBit(global0.d.zx)) % vec2<u32>(32u)), ~vec2<i32>(10448i >> (arg_2.x % 32u), var_1.x)), _wgslsmith_mult_vec2_i32(var_1.xz, -vec2<i32>(var_1.x, 3337i)));
    return 19384u ^ ~_wgslsmith_add_u32(select(reverseBits(u_input.a), 4294967295u, true), ~min(3498u, 1u));
}

fn func_6(arg_0: u32, arg_1: vec3<u32>, arg_2: f32) -> Struct_3 {
    let var_0 = global0.c.b.x;
    var var_1 = ~(-26682i);
    var var_2 = 2147483647i;
    let var_3 = Struct_4(vec3<f32>(-1000f, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + -2345f))), ~(~firstTrailingBit(-vec3<i32>(global0.c.a.x, -31640i, global0.b.x))), func_2(), select(vec3<u32>(min(~arg_1.x, _wgslsmith_mult_u32(global0.d.x, 149194u)), arg_0, _wgslsmith_dot_vec2_u32(~vec2<u32>(35259u, 4294967295u), global0.d.xy)), vec3<u32>(~4294967295u, u_input.a, ~max(global0.d.x, 55254u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(-367f * -237f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))));
    var var_4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -650f), var_3.a.x, _wgslsmith_f_op_f32(-global0.a.x)), Struct_1(_wgslsmith_f_op_f32(func_4(var_3, Struct_2(global0.a, Struct_1(1687f, 209f, vec2<bool>(true, false), vec3<i32>(1i, -21574i, var_3.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 * var_3.a.x)))), !var_3.c.d, var_3.b));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-146f, _wgslsmith_f_op_f32(sign(-922f)), 1064f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.x * 1342f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1142f, 846f, -1000f, -1651f) - vec4<f32>(-1409f, -618f, 1499f, global0.c.e)) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.c.e, global0.a.x, -774f, -818f), vec4<f32>(global0.a.x, 1273f, 1312f, 643f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.e, 919f, global0.a.x, 237f))))))));
    var var_1 = select(vec3<i32>(4209i | global0.c.a.x, global0.b.x, global0.c.b.x), vec3<i32>(global0.b.x, 0i, _wgslsmith_dot_vec2_i32(global0.b.yy, vec2<i32>(abs(-62202i), -1i))), vec3<bool>(global2.x, true, global0.c.c));
    global0 = Struct_4(vec3<f32>(global0.c.e, var_0.x, var_0.x), -select(global0.c.a, vec3<i32>(global0.b.x, 0i, global0.c.b.x), !vec3<bool>(global0.c.c, true, global0.c.d.x)), func_6(u_input.a >> (0u % 32u), _wgslsmith_mult_vec3_u32(abs(global0.d ^ global0.d), vec3<u32>(1u, func_1(vec4<bool>(false, true, false, global2.x), vec4<bool>(true, global2.x, global0.c.d.x, global2.x), vec4<u32>(global0.d.x, u_input.a, 35049u, 33143u)), abs(0u))), func_2().e), ~(~_wgslsmith_mod_vec3_u32(global0.d, global0.d) << (~vec3<u32>(88382u, 4294967295u, 0u) % vec3<u32>(32u))));
    var_1 = vec3<i32>(0i, ~(-abs(var_1.x)), ~(~global0.b.x ^ var_1.x));
    var var_2 = 49913u;
    let var_3 = Struct_2(global0.a, Struct_1(360f, _wgslsmith_f_op_f32(select(global0.c.e, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-646f - global0.a.x)), global0.c.d.x)), !global0.c.d, firstTrailingBit(_wgslsmith_div_vec3_i32(abs(global0.b), global0.c.b))));
    global1 = true;
    var var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec4<u32>(36841u >> (1u % 32u), 1u, min(u_input.a, 24309u), u_input.a)), global0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.a, 321f, global0.c.e, -609f))))))));
}

