struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(0u, -26096i), Struct_1(117992u, i32(-2147483648)), Struct_1(4294967295u, 0i), Struct_1(0u, -36718i), Struct_1(45100u, i32(-2147483648)), Struct_1(2317u, 27448i), Struct_1(1u, i32(-2147483648)), Struct_1(8537u, -57206i), Struct_1(21925u, -1i), Struct_1(1u, 8604i), Struct_1(12952u, 11986i), Struct_1(82306u, 27575i), Struct_1(4520u, -21522i), Struct_1(0u, -1i), Struct_1(37488u, i32(-2147483648)), Struct_1(0u, 1i), Struct_1(24297u, 0i), Struct_1(57763u, -16695i), Struct_1(4294967295u, -1i), Struct_1(0u, -55258i), Struct_1(1u, 39430i), Struct_1(4294967295u, i32(-2147483648)), Struct_1(102953u, -3559i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<bool>) -> i32 {
    var var_0 = vec4<i32>(-(reverseBits(-1i) >> (u_input.d % 32u)) ^ abs(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c)), u_input.a, arg_0.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_1.a, -arg_0.x & (arg_1.a | u_input.b)), firstTrailingBit(47214i) << (~_wgslsmith_div_u32(u_input.d, 0u) % 32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-286f, -781f, 2843f)))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(413f, 917f, 1218f), vec3<f32>(-1127f, 1774f, -747f), false))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1297f, 1025f, -342f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(626f, -445f, -972f) - vec3<f32>(-407f, 275f, -538f))))), select(arg_2.x, true, true)));
    var_0 = -max(abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a, 33659i, var_0.x) << (vec4<u32>(29060u, 25355u, 0u, u_input.d) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, -1i, arg_0.x), vec4<i32>(11029i, var_0.x, 1i, arg_1.a)))), vec4<i32>(arg_1.a, u_input.a, abs(u_input.b), ~2147483647i) << (countOneBits(vec4<u32>(u_input.d, 1u, u_input.d, u_input.d) ^ vec4<u32>(9262u, 23049u, u_input.d, u_input.d)) % vec4<u32>(32u)));
    global0 = array<Struct_1, 23>();
    let var_2 = vec3<bool>(all(select(vec3<bool>(all(arg_2.yx), any(arg_2), arg_2.x), !(!vec3<bool>(false, arg_2.x, false)), any(select(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), arg_2, false)))), !((arg_2.x == arg_2.x) && any(select(vec4<bool>(true, true, arg_2.x, false), arg_2, arg_2))), select(false, arg_2.x, all(select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), select(arg_2.www, vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(arg_2.x, false, arg_2.x)), true))));
    return _wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, 0i), arg_1.a);
}

fn func_4(arg_0: i32, arg_1: u32) -> vec3<u32> {
    let var_0 = u_input.c;
    let var_1 = ~u_input.d;
    let var_2 = -_wgslsmith_div_i32(69297i, ~firstTrailingBit(reverseBits(arg_0)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1049f, -3027f, 515f, -520f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-680f, -332f, 1206f, 1000f))))));
    global0 = array<Struct_1, 23>();
    return ~select(~(~(~vec3<u32>(0u, arg_1, 32464u))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1, var_1, var_1), ~vec3<u32>(1u, u_input.d, u_input.d)), abs(vec3<u32>(arg_1, 3088u, u_input.d) >> (vec3<u32>(u_input.d, 15866u, 11854u) % vec3<u32>(32u)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec4<bool>) -> bool {
    let var_0 = ~min(abs(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, arg_0), vec2<u32>(4294967295u, u_input.d)), 9996u, arg_2.c.a)), _wgslsmith_div_vec3_u32(func_4(func_3(vec2<i32>(arg_2.d.x, -33602i), Struct_3(arg_2.c.b), vec4<bool>(arg_3.x, arg_2.e.x, false, false)), 22468u), ~vec3<u32>(arg_0, 623u, arg_0)));
    global0 = array<Struct_1, 23>();
    var var_1 = ~u_input.c.x;
    let var_2 = arg_3.wx;
    let var_3 = arg_2.e;
    return arg_3.x;
}

fn func_5(arg_0: bool, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_1(~arg_1 >> (max(~(~arg_1), ~89279u) % 32u), 15237i);
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var_0 = global0[_wgslsmith_index_u32(20904u | _wgslsmith_clamp_u32(abs(var_0.a), var_0.a, select(~_wgslsmith_add_u32(54415u, var_0.a), ~max(var_0.a, var_0.a), arg_0)), 23u)];
    var var_1 = Struct_4(global0[_wgslsmith_index_u32(countOneBits(var_0.a) | arg_1, 23u)], -vec4<i32>(2147483647i, _wgslsmith_mod_i32(var_0.b, -2147483647i), -_wgslsmith_mult_i32(2524i, var_0.b), _wgslsmith_add_i32(abs(2147483647i), max(u_input.b, u_input.c.x))), 4294967295u, -abs(1i) & var_0.b);
    return Struct_2(_wgslsmith_add_u32(~(~77562u), 8471u), max(0i >> (~_wgslsmith_sub_u32(43989u, var_0.a) % 32u), -2147483647i), var_1.a, reverseBits(-var_1.b.wyy), !(!(!vec4<bool>(true, arg_0, true, arg_0))));
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_1, 23>();
    var var_0 = func_5(all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(func_2(0u, Struct_4(global0[_wgslsmith_index_u32(4294967295u, 23u)], vec4<i32>(-2147483647i, u_input.c.x, u_input.a, -1i), 1u, u_input.a), Struct_2(128910u, u_input.b, Struct_1(u_input.d, -1i), vec3<i32>(-20988i, 0i, u_input.a), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, false, true)), true), vec2<bool>(true, true))), abs(14876u));
    let var_1 = var_0.e.yy;
    var var_2 = Struct_3(1505i);
    global0 = array<Struct_1, 23>();
    return Struct_2(abs(firstTrailingBit(var_0.c.a)), u_input.c.x, global0[_wgslsmith_index_u32(~(~abs(~u_input.d)), 23u)], var_0.d, vec4<bool>(false, any(vec3<bool>(true, true, all(var_0.e.xzz))), all(var_0.e.xz), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<Struct_1, 23>();
    let var_1 = -235f;
    let var_2 = _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(30959u, var_0.a, var_0.c.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, u_input.d) >> (vec3<u32>(1u, u_input.d, 9948u) % vec3<u32>(32u)), vec3<u32>(u_input.d, var_0.c.a, 31557u) & vec3<u32>(83696u, var_0.a, var_0.c.a))), vec3<u32>(func_1().c.a, ~func_1().c.a, 0u));
    let var_3 = vec4<i32>(u_input.b, u_input.a, -9826i, abs(_wgslsmith_mod_i32(reverseBits(var_0.d.x), -9854i)));
    global0 = array<Struct_1, 23>();
    var var_4 = Struct_3(-(-8714i & (var_3.x >> ((var_0.a & u_input.d) % 32u))));
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(select(firstTrailingBit(var_4.a), _wgslsmith_mod_i32(18384i, u_input.c.x), true) << (53243u % 32u), _wgslsmith_mod_i32(var_3.x, _wgslsmith_mult_i32(var_3.x, var_0.c.b)), var_4.a, 639i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-238f, _wgslsmith_f_op_f32(select(var_1, 580f, var_0.e.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(-var_1))) + _wgslsmith_f_op_f32(f32(-1f) * -751f)));
}

