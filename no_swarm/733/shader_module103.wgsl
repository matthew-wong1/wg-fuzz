struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, false), 4294967295u, 775f, vec4<u32>(76946u, 33948u, 2425u, 0u)), -460f, Struct_1(vec2<bool>(true, true), 0u, -1151f, vec4<u32>(3893u, 1u, 90241u, 107741u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1() -> vec3<bool> {
    var var_0 = false;
    var var_1 = global0.a.b;
    global0 = Struct_2(Struct_1(select(vec2<bool>(!global0.a.a.x, true), !vec2<bool>(global0.c.a.x, global0.a.a.x), -167f != _wgslsmith_f_op_f32(-270f * global0.b)), 4294967295u, _wgslsmith_f_op_f32(-global0.b), global0.c.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c) + global0.b), Struct_1(select(vec2<bool>(58195u > global0.a.b, true), !global0.c.a, global0.c.a), global0.a.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c.c))))), ~vec4<u32>(_wgslsmith_sub_u32(0u, 0u), ~global0.c.d.x, global0.a.d.x, 14688u)));
    var_1 = 1u;
    var var_2 = global0.a.d;
    return select(vec3<bool>(true, false, global0.a.a.x), vec3<bool>(true, !(1i < _wgslsmith_div_i32(u_input.a, -2147483647i)), false), any(!select(vec2<bool>(false, true), global0.a.a, false)) || !global0.c.a.x);
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>) -> i32 {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1056f - global0.c.c), 2123f, any(vec3<bool>(global0.a.a.x, false, true)))) + _wgslsmith_f_op_f32(-816f * -553f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * 501f);
    var var_2 = Struct_5(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1430f, -710f))) + _wgslsmith_f_op_f32(f32(-1f) * -226f)), -5954i);
    var var_3 = _wgslsmith_div_f32(var_2.b, var_2.b);
    var_2 = Struct_5(var_2.c & ~(u_input.a << (~1u % 32u)), 904f, -min(-1i, 0i));
    return u_input.a;
}

fn func_3() -> i32 {
    global0 = Struct_2(Struct_1(select(!(!global0.a.a), func_1().yx, global0.c.a), ~_wgslsmith_sub_u32(_wgslsmith_add_u32(50720u, global0.c.b), global0.c.d.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -530f)), abs(firstTrailingBit(vec4<u32>(global0.c.d.x, global0.a.d.x, 5155u, global0.c.d.x))) >> (vec4<u32>(abs(global0.c.d.x), 0u, global0.a.d.x << (4294967295u % 32u), 63556u) % vec4<u32>(32u))), -1267f, Struct_1(select(!vec2<bool>(false, global0.a.a.x), global0.a.a, global0.c.a.x), select(global0.a.b, global0.c.b, true), global0.a.c, vec4<u32>(72586u, ~56923u, abs(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), global0.a.d.wy))));
    let var_0 = true;
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c)), global0.c);
    var var_1 = Struct_4(vec2<i32>(-1i, firstTrailingBit(~abs(0i))), ~(-vec3<i32>(0i, min(u_input.a, 5149i), _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a))), -u_input.a, Struct_2(Struct_1(!(!global0.a.a), global0.c.b, _wgslsmith_f_op_f32(-global0.a.c), _wgslsmith_clamp_vec4_u32(~vec4<u32>(12362u, global0.a.d.x, global0.c.b, global0.c.b), vec4<u32>(4294967295u, 107828u, global0.a.b, global0.c.b), vec4<u32>(104762u, 24182u, 4294967295u, 35996u))), global0.c.c, global0.a), Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2062f - 663f), global0.b))), global0.c));
    let var_2 = Struct_3(_wgslsmith_add_vec3_u32(~var_1.e.c.d.xwy, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(17560u, 25839u, var_1.e.a.b), vec3<u32>(global0.c.d.x, 8355u, global0.c.d.x) << (vec3<u32>(4294967295u, global0.c.b, global0.c.b) % vec3<u32>(32u))), global0.c.d.zxy)));
    return ~(-1i) >> (global0.a.b % 32u);
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<bool>, arg_3: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(273f + 511f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global0.a.c)), _wgslsmith_f_op_f32(-global0.a.c)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1327f - global0.b) * _wgslsmith_f_op_f32(global0.c.c + global0.b)), arg_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1630f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(976f - arg_1)))), arg_2.x));
    let var_1 = Struct_1(!func_1().yx, global0.a.d.x << (4930u % 32u), global0.a.c, global0.a.d);
    let var_2 = Struct_5(_wgslsmith_clamp_i32(-(~arg_3.x), 1i, firstTrailingBit(u_input.a >> (0u % 32u)) << (_wgslsmith_mod_u32(global0.a.d.x, 33085u) % 32u)), var_0.x, u_input.a);
    let var_3 = vec3<bool>(any(var_1.a), true, global0.a.a.x);
    let var_4 = !(func_3() > _wgslsmith_add_i32(u_input.a >> (select(global0.a.d.x, global0.a.b, var_1.a.x) % 32u), u_input.a));
    return _wgslsmith_mult_i32(-(~2147483647i), (max(1i, u_input.a) ^ (firstLeadingBit(-1i) & var_2.a)) ^ ~var_2.c);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_4 {
    var var_0 = Struct_5(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1023f + _wgslsmith_f_op_f32(select(global0.a.c, global0.a.c, false))))), arg_1.x);
    let var_1 = ~(-vec3<i32>(func_3(), ~var_0.c, -2147483647i));
    var_0 = Struct_5(arg_0.c, -1136f, var_1.x);
    var_0 = Struct_5(1i & arg_1.x, var_0.b, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 17864i, 0i, -8359i) << (vec4<u32>(global0.c.d.x, arg_0.d.a.b, 4294967295u, 29630u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, var_1.x, 54645i), vec4<i32>(2147483647i, arg_0.b.x, arg_1.x, var_0.a))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(22502i, var_1.x, -1i, 65841i), vec4<i32>(u_input.a, 2147483647i, -1i, 6697i))), vec4<i32>(func_2(Struct_3(global0.c.d.zxz), vec4<u32>(arg_0.e.c.d.x, global0.a.b, global0.a.d.x, global0.a.b)), -80497i, 1i, 0i) << (_wgslsmith_mod_vec4_u32(vec4<u32>(53261u, arg_0.e.a.d.x, arg_2.a.x, arg_0.d.a.b), vec4<u32>(global0.c.b, global0.a.d.x, 20635u, arg_0.e.c.b)) % vec4<u32>(32u))));
    var var_2 = global0.a.c;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(-min(_wgslsmith_mod_vec2_i32(vec2<i32>(40839i, -2147483647i), vec2<i32>(1375i, u_input.a)), -vec2<i32>(1i, u_input.a)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(0i, u_input.a), 61517i), u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)), func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-459f, -125f, global0.b), vec3<f32>(-1418f, -1022f, global0.b))), vec3<f32>(global0.b, 1415f, global0.c.c))), _wgslsmith_f_op_f32(421f * _wgslsmith_f_op_f32(-599f - global0.b)), !func_1(), vec4<i32>(func_2(Struct_3(global0.a.d.wyw), vec4<u32>(38657u, global0.c.d.x, 11687u, 0u)), -1i ^ u_input.a, ~u_input.a, func_3())), Struct_2(Struct_1(!global0.c.a, global0.c.d.x, 1f, ~vec4<u32>(global0.a.b, global0.c.b, global0.c.b, global0.a.b)), -1966f, Struct_1(select(vec2<bool>(false, global0.a.a.x), vec2<bool>(false, false), false), 11841u ^ global0.c.d.x, -1000f, global0.a.d)), Struct_2(global0.a, _wgslsmith_f_op_f32(1382f + -873f), Struct_1(select(vec2<bool>(false, global0.c.a.x), vec2<bool>(true, global0.a.a.x), global0.c.a.x), reverseBits(global0.a.d.x), -934f, _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.b, 0u, global0.c.b, 0u), global0.a.d)))), _wgslsmith_add_vec3_i32(vec3<i32>(~(-1i), _wgslsmith_mult_i32(u_input.a, 22407i), -u_input.a) | vec3<i32>(u_input.a & 2147483647i, u_input.a << (0u % 32u), countOneBits(12696i)), ~firstTrailingBit(vec3<i32>(-1i, u_input.a, 0i))), Struct_3(_wgslsmith_div_vec3_u32(global0.c.d.wwy, ~vec3<u32>(global0.c.d.x, global0.c.d.x, global0.c.d.x))));
    var_0 = func_5(Struct_4(select(~(-var_0.b.xy), var_0.b.zy, !all(vec4<bool>(var_0.d.c.a.x, true, var_0.d.a.a.x, true))), countOneBits(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.b, vec3<i32>(var_0.a.x, 16960i, -56747i)), var_0.b)), func_2(Struct_3(countOneBits(vec3<u32>(4294967295u, 4294967295u, 98745u))), vec4<u32>(~global0.c.d.x, _wgslsmith_mult_u32(global0.a.d.x, 4294967295u), ~global0.c.b, reverseBits(var_0.d.a.b))), Struct_2(Struct_1(global0.a.a, var_0.e.a.b, var_0.e.a.c, vec4<u32>(4294967295u, 4294967295u, var_0.e.c.d.x, var_0.e.a.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.c - global0.a.c)), global0.c), func_5(Struct_4(var_0.b.zy << (vec2<u32>(16489u, 1u) % vec2<u32>(32u)), ~vec3<i32>(var_0.b.x, 28778i, var_0.c), 2147483647i, func_5(Struct_4(var_0.a, vec3<i32>(var_0.a.x, 65711i, 2147483647i), 2147483647i, var_0.e, Struct_2(global0.a, global0.c.c, Struct_1(var_0.d.c.a, 79312u, -676f, vec4<u32>(var_0.e.a.b, var_0.e.c.b, var_0.d.c.d.x, 0u)))), var_0.b, Struct_3(var_0.e.c.d.xzz)).e, Struct_2(Struct_1(var_0.d.c.a, 4294967295u, global0.a.c, var_0.d.c.d), var_0.e.c.c, Struct_1(global0.c.a, 4294967295u, -966f, vec4<u32>(0u, var_0.e.a.b, 16766u, 78633u)))), var_0.b >> (vec3<u32>(global0.a.d.x, global0.a.b, global0.a.b) % vec3<u32>(32u)), Struct_3(~var_0.e.c.d.yzw)).d), var_0.b, Struct_3(func_5(func_5(func_5(Struct_4(var_0.a, var_0.b, var_0.c, Struct_2(var_0.d.c, 2148f, Struct_1(var_0.e.a.a, 48233u, -1015f, vec4<u32>(1848u, var_0.e.a.b, 32157u, 1748u))), Struct_2(global0.a, var_0.e.b, Struct_1(var_0.e.a.a, global0.a.b, -568f, vec4<u32>(var_0.d.c.b, 1u, var_0.d.c.d.x, 66050u)))), var_0.b, Struct_3(vec3<u32>(4294967295u, var_0.e.c.d.x, 55666u))), ~vec3<i32>(-2147483647i, 39712i, var_0.c), Struct_3(var_0.d.c.d.ywz)), -var_0.b, Struct_3(var_0.d.c.d.zyx)).d.a.d.xxw));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(677f, var_0.d.b, global0.a.c) + vec3<f32>(178f, var_0.e.a.c, var_0.e.b))) * vec3<f32>(1250f, 2476f, _wgslsmith_f_op_f32(global0.b * var_0.e.a.c)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), -557f, global0.b))));
    let var_2 = vec3<u32>(4294967295u, 1u, ~_wgslsmith_dot_vec3_u32(var_0.e.a.d.zyw, vec3<u32>(var_0.d.a.d.x << (global0.c.b % 32u), ~global0.a.d.x, ~global0.c.d.x)));
    var var_3 = select(vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(-35752i, max(u_input.a, -31577i)), ~(-2147483647i), 1i) >> (~global0.a.d % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(-select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, -1i, 1i, u_input.a), vec4<i32>(-9429i, var_0.c, -2147483647i, u_input.a)), ~vec4<i32>(var_0.c, 0i, 47472i, 1i), false), ~(~min(vec4<i32>(u_input.a, var_0.b.x, -461i, u_input.a), vec4<i32>(u_input.a, u_input.a, var_0.a.x, 2147483647i)))), true);
    var var_4 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.d.x, ~_wgslsmith_clamp_i32(u_input.a, -firstLeadingBit(var_0.c), reverseBits(var_0.b.x)), ~var_2.x, _wgslsmith_div_vec3_u32(vec3<u32>(var_0.d.c.d.x ^ 1u, reverseBits(var_4.a.d.x), ~var_4.a.b), ~vec3<u32>(1u, 4824u, var_0.d.a.b)) & vec3<u32>(_wgslsmith_dot_vec3_u32(~var_4.c.d.zxw, _wgslsmith_div_vec3_u32(var_2, vec3<u32>(global0.a.b, 29095u, global0.c.b))), 54729u | _wgslsmith_clamp_u32(var_2.x, var_4.a.d.x, 105178u), _wgslsmith_div_u32(~4294967295u, _wgslsmith_mod_u32(4294967295u, global0.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2051f + var_1.x)));
}

