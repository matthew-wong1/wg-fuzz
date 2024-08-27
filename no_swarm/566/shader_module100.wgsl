struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-1063f, -360f, -462f), vec3<f32>(-381f, 1042f, 465f), vec3<f32>(481f, 565f, 503f), vec3<f32>(180f, -556f, 221f), vec3<f32>(-597f, -881f, -476f), vec3<f32>(-561f, 758f, 709f), vec3<f32>(1891f, -1000f, -191f), vec3<f32>(818f, -1000f, 146f), vec3<f32>(559f, 143f, -946f), vec3<f32>(-2272f, 1295f, -825f), vec3<f32>(407f, -1244f, 1649f), vec3<f32>(-542f, 835f, 1000f), vec3<f32>(1261f, 662f, -1172f), vec3<f32>(-123f, -595f, 763f), vec3<f32>(-403f, 385f, 437f), vec3<f32>(-558f, 285f, -346f));

var<private> global1: vec4<i32>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_3, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: i32) -> u32 {
    var var_0 = abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -u_input.a, min(arg_2, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, arg_2.x, global1.x, -4918i), vec4<i32>(2147483647i, global1.x, -1i, global1.x)))) ^ select(-(vec4<i32>(-2147483647i, arg_3, arg_3, arg_2.x) & u_input.a), u_input.a, arg_1.b.b.x));
    var var_1 = 294f;
    var_0 = firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(~(-6051i), -1i, abs(global1.x) & 0i, -arg_2.x), vec4<i32>(-1i) * -u_input.a));
    global1 = arg_2;
    let var_2 = abs(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(16285u, 1u, 23393u, 13253u), vec4<u32>(1u, 7538u, 14017u, 21327u)) | 42490u));
    return ~_wgslsmith_mod_u32(0u, ~min(0u, 4294967295u)) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, var_2, 16585u), vec3<u32>(1u, 4294967295u, 53837u)), abs(var_2), 4294967295u), vec3<u32>(_wgslsmith_clamp_u32(var_2, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2), vec2<u32>(0u, 1u)), abs(7699u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(19428u, var_2)), var_2)) % 32u);
}

fn func_2() -> Struct_1 {
    var var_0 = global2.a.x;
    let var_1 = Struct_2(!vec2<bool>(any(global2.a), global2.b.b.x && (true || global2.b.b.x)), Struct_1(false, global2.b.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.b.c)) * global2.b.c))));
    var var_2 = vec3<u32>(0u, firstTrailingBit(_wgslsmith_div_u32(1u, 60428u)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 94443u, 0u), ~vec3<u32>(76285u, 76593u, 0u)), 0u, 0u), min(vec3<u32>(~67720u, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 14468u, 3537u), vec4<u32>(4294967295u, 24211u, 4294967295u, 4294967295u))), _wgslsmith_mod_vec3_u32(vec3<u32>(45830u, 0u, 4294967295u), vec3<u32>(1u, 1u, 1u)))));
    let var_3 = vec4<u32>(var_2.x, 1u, func_3(_wgslsmith_f_op_f32(-global2.b.c), var_1, _wgslsmith_add_vec4_i32(~vec4<i32>(70991i, 2147483647i, u_input.a.x, -8962i), _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x))), _wgslsmith_sub_i32(_wgslsmith_div_i32(73238i & global1.x, u_input.a.x), (u_input.a.x | -1752i) & (u_input.a.x >> (var_2.x % 32u)))), var_2.x);
    var var_4 = global2.b;
    return Struct_1(false, vec4<bool>(all(vec4<bool>(global2.a.x, true, var_1.a.x, false)), global2.a.x, !all(select(vec4<bool>(false, var_1.a.x, false, var_1.b.b.x), vec4<bool>(var_1.b.b.x, true, false, true), false)), global1.x < _wgslsmith_dot_vec3_i32(global1.www & vec3<i32>(global1.x, global1.x, 0i), global1.zwy)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f + 1000f), 157f)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global3 = array<Struct_3, 28>();
    let var_0 = all(arg_0.b.yx) == false;
    global0 = array<vec3<f32>, 16>();
    let var_1 = -48730i;
    let var_2 = global2.b;
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_2());
    var_0 = func_4(func_4(global2.b));
    var_0 = func_4(Struct_1(global2.a.x, vec4<bool>(global2.a.x & !var_0.a, any(var_0.b), all(!var_0.b.xww), true), _wgslsmith_div_f32(_wgslsmith_div_f32(global2.b.c, _wgslsmith_f_op_f32(round(var_0.c))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1639f, -337f) * _wgslsmith_f_op_f32(global2.b.c - var_0.c)))));
    var var_1 = Struct_2(select(var_0.b.yz, func_2().b.xx, vec2<bool>(false, any(func_4(Struct_1(false, vec4<bool>(global2.b.b.x, true, false, global2.a.x), 709f)).b))), Struct_1(!any(func_2().b.zz), vec4<bool>(all(func_4(global2.b).b.yzz), var_0.b.x, all(select(var_0.b.zy, vec2<bool>(false, false), false)), global2.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -967f) * -837f)));
    var var_2 = Struct_2(func_4(Struct_1(func_2().b.x, var_0.b, var_0.c)).b.zz, func_2());
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!select(!global2.a, select(global2.b.b.zz, global2.a, select(false, global2.a.x, true)), true), func_1());
    global3 = array<Struct_3, 28>();
    let var_1 = !(!(u_input.a.x == (countOneBits(global1.x) & firstLeadingBit(global1.x))));
    global1 = _wgslsmith_add_vec4_i32(~(~reverseBits(~vec4<i32>(u_input.a.x, -10691i, -37436i, 0i))), vec4<i32>(abs(u_input.a.x << (32639u % 32u)), -1i, ~2147483647i ^ _wgslsmith_dot_vec3_i32(u_input.a.zwx, vec3<i32>(0i, u_input.a.x, u_input.a.x)), _wgslsmith_mult_i32(global1.x, 2147483647i)) << (abs(~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
    global2 = Struct_2(!var_0.b.b.wz, func_2());
    var var_2 = select(~vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 26525u, 13389u), global2.b.a);
    var var_3 = var_0.b;
    let var_4 = ~firstLeadingBit(vec4<u32>(0u, var_2.x, 79635u, 1u) & (vec4<u32>(var_2.x, 0u, var_2.x, 5148u) ^ vec4<u32>(var_2.x, 0u, 1u, 17190u))) | vec4<u32>(countOneBits(~_wgslsmith_mult_u32(4294967295u, var_2.x)), var_2.x, ~abs(select(4294967295u, var_2.x, var_0.a.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, var_2.x, var_2.x, 26997u), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, 4294967295u, var_2.x, var_2.x), vec4<u32>(var_2.x, var_2.x, 2627u, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-(_wgslsmith_dot_vec3_i32(u_input.a.wxy, vec3<i32>(2147483647i, 2147483647i, u_input.a.x)) | 1i)), ~var_4.zw, 20945u, abs(-firstTrailingBit(min(1i, -13350i))));
}

