struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 17147u;

var<private> global1: array<Struct_3, 14>;

var<private> global2: array<f32, 9>;

var<private> global3: Struct_2 = Struct_2(26743u);

var<private> global4: array<vec3<bool>, 25>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global3 = arg_1;
    global3 = arg_1;
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(~vec4<u32>(countOneBits(4294967295u), u_input.b << (0u % 32u), 0u, ~arg_3.b), u_input.d | _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a, 49707u, 5895u, arg_3.b), ~vec4<u32>(arg_3.a.x, 18855u, 0u, arg_3.a.x))), 0u, 166f, true, select(!vec2<bool>(true, !arg_2.d), vec2<bool>(select(all(vec2<bool>(false, arg_3.d)), true, -1i < u_input.c), !(!arg_3.d)), true));
    var var_1 = vec3<i32>(-1i, u_input.c, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~(-56994i), -6941i), u_input.e.x, _wgslsmith_sub_i32(u_input.c, -(i32(-1i) * -7304i))));
    let var_2 = !any(select(vec3<bool>(arg_0.d, false, var_0.d), vec3<bool>(false, false, false), true)) && false;
    return arg_0.c;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(!all(vec4<bool>(true, true, true, true)), Struct_2(30432u), vec3<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(0u, 4655u, global3.a, u_input.d.x), 0u, global2[_wgslsmith_index_u32(4294967295u, 9u)], true, vec2<bool>(true, true)), Struct_2(global3.a), Struct_1(vec4<u32>(u_input.b, u_input.a, 4294967295u, u_input.b), 16123u, global2[_wgslsmith_index_u32(u_input.b, 9u)], false, vec2<bool>(false, true)), Struct_1(u_input.d, u_input.b, global2[_wgslsmith_index_u32(1u, 9u)], true, vec2<bool>(true, false))))) == global2[_wgslsmith_index_u32(~firstTrailingBit(u_input.d.x), 9u)]));
    var var_1 = var_0.b.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1860f, 845f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(2053f, -360f) * vec2<f32>(global2[_wgslsmith_index_u32(var_0.b.a, 9u)], -1003f))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2[_wgslsmith_index_u32(global3.a, 9u)], -287f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2[_wgslsmith_index_u32(var_0.b.a, 9u)], global2[_wgslsmith_index_u32(1u, 9u)]))))))));
    global3 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.a, var_0.b.a, global3.a, u_input.b), countOneBits(u_input.d)) >> (~1u % 32u), abs(~u_input.b)));
    var var_3 = Struct_3(var_0.c.x || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.x, 2027f)) + _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.a, 9u)]))) < 163f), Struct_2(~global3.a), select(!var_0.c, select(!vec3<bool>(false, var_0.c.x, true), select(select(vec3<bool>(var_0.c.x, false, var_0.a), var_0.c, var_0.c), vec3<bool>(true, true, var_0.a), select(vec3<bool>(true, false, var_0.a), global4[_wgslsmith_index_u32(0u, 25u)], global4[_wgslsmith_index_u32(0u, 25u)])), vec3<bool>(!var_0.a, any(vec4<bool>(var_0.a, var_0.c.x, false, true)), var_0.c.x)), var_0.a));
    return Struct_3(!all(vec4<bool>(true, any(vec3<bool>(var_3.a, var_3.c.x, var_3.a)), all(var_3.c), true)), Struct_2(1u), var_3.c);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    global4 = array<vec3<bool>, 25>();
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.d.zxw, vec3<u32>(4294967295u, u_input.b, 13960u)), vec3<u32>(0u, 0u, u_input.b))), func_2().b.a, var_0.b.a, 1u), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(70323u, 9u)] - _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(global3.a, 9u)]))))), var_0.c.x, !var_0.c.yx);
    var var_2 = Struct_2(~u_input.a);
    let var_3 = func_2();
    return Struct_1(u_input.d, firstTrailingBit(~var_0.b.a), -851f, all(vec3<bool>(false, var_1.e.x, var_3.c.x)), select(!select(!vec2<bool>(true, var_0.a), var_0.c.xx, var_0.c.zx), vec2<bool>((var_1.c == -722f) || all(vec3<bool>(var_1.d, var_3.a, var_1.d)), var_1.e.x), vec2<bool>(false, (var_1.d | var_1.d) == any(var_0.c))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2().b;
    let var_1 = func_1();
    global3 = Struct_2(~_wgslsmith_clamp_u32(39150u, 37311u, _wgslsmith_sub_u32(abs(arg_0.a.x), _wgslsmith_clamp_u32(4294967295u, u_input.a, 0u))));
    let var_2 = min(abs(vec3<i32>(20867i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, 0i, 1i, u_input.e.x), u_input.e), _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(-80302i, 1i, u_input.e.x, u_input.c)))), _wgslsmith_sub_vec3_i32(-max(u_input.e.xyx, vec3<i32>(u_input.e.x, u_input.e.x, -2147483647i)), vec3<i32>(u_input.e.x, 2147483647i, _wgslsmith_add_i32(u_input.c, -7957i))) << (func_1().a.zxx % vec3<u32>(32u)));
    var var_3 = Struct_2(countOneBits(_wgslsmith_dot_vec2_u32(u_input.d.xw, reverseBits(vec2<u32>(46594u, 4294967295u)))));
    return func_1();
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c, _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(global3.a, 9u)])), _wgslsmith_f_op_f32(f32(-1f) * -706f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_2.c, 594f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(27885u, 9u)], arg_2.c, arg_2.c, global2[_wgslsmith_index_u32(global3.a, 9u)]))))));
    let var_1 = var_0.xz;
    return Struct_2(1u);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<u32>) -> vec4<f32> {
    var var_0 = vec4<i32>(select(-55013i, 0i, ~(~46083u) <= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 40754u, arg_2.x) ^ u_input.d.xzw, min(arg_2, vec3<u32>(0u, 8076u, 1u)))), _wgslsmith_mod_i32(~(40983i | u_input.e.x), abs(_wgslsmith_mod_i32(3046i, u_input.e.x))) >> (_wgslsmith_mult_u32(func_1().a.x, 5183u) % 32u), firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.c, u_input.c), -1i ^ (25917i & u_input.c))), _wgslsmith_div_i32(_wgslsmith_div_i32(1i, u_input.c), u_input.e.x) & ((~2147483647i << (0u % 32u)) << (~(~u_input.a) % 32u)));
    global1 = array<Struct_3, 14>();
    var var_1 = !func_1().e;
    let var_2 = Struct_3((select(true, !var_1.x, var_1.x) && !func_1().e.x) && var_1.x, arg_0, !vec3<bool>(var_1.x, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(21210u, 9u)])) < -697f, true));
    let var_3 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_2.b.a, ~arg_0.a), arg_0.a), global3.a);
    return vec4<f32>(_wgslsmith_f_op_f32(sign(920f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1467f)) * _wgslsmith_f_op_f32(-163f + global2[_wgslsmith_index_u32(605u, 9u)])))))), _wgslsmith_f_op_f32(step(1621f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(689f)), 1575f))))), global2[_wgslsmith_index_u32(~(8108u << (~arg_1.x % 32u)), 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_6(func_5(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), any(vec4<bool>(true, false, true, false))), vec2<bool>(true, true), true), 370f, func_4(func_1()), 51525i), ~vec3<u32>(global3.a, 1u, u_input.b), ~vec3<u32>(_wgslsmith_div_u32(global3.a, global3.a) << (u_input.a % 32u), u_input.b, _wgslsmith_mult_u32(func_5(vec2<bool>(true, true), global2[_wgslsmith_index_u32(0u, 9u)], Struct_1(vec4<u32>(u_input.a, 27627u, 4294967295u, u_input.d.x), 0u, 714f, false, vec2<bool>(false, true)), 38238i).a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global3.a), u_input.d.xw)))));
    global0 = global3.a << (global3.a % 32u);
    let var_1 = true;
    let var_2 = vec4<u32>(~global3.a, u_input.d.x, func_1().a.x, min(25973u, abs(global3.a))) & select(~(func_4(Struct_1(vec4<u32>(global3.a, global3.a, u_input.a, u_input.a), 1u, -352f, true, vec2<bool>(true, true))).a << (vec4<u32>(u_input.a, 4294967295u, 3575u, global3.a) % vec4<u32>(32u))), max(~firstTrailingBit(vec4<u32>(global3.a, 1u, u_input.d.x, u_input.b)), abs(u_input.d)), true);
    let var_3 = _wgslsmith_clamp_vec3_u32(var_2.ywx, var_2.xwy, abs(vec3<u32>(4294967295u, _wgslsmith_mod_u32(u_input.a, global3.a), ~6695u))) ^ vec3<u32>(6223u, ~1u, ~28417u);
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2147483647i, countOneBits(max(~191i, _wgslsmith_div_i32(u_input.c, 9691i))), u_input.c, _wgslsmith_mult_i32(-24602i, -33013i)));
}

