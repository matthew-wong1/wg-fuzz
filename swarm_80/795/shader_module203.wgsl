struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_3 = Struct_3(vec4<u32>(42662u, 0u, 34434u, 4294967295u), vec2<i32>(-46493i, 2562i));

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = u_input.a;
    var var_1 = global1.a;
    global0 = !vec2<bool>(true, global2.a);
    var var_2 = 1u;
    var var_3 = -countOneBits(_wgslsmith_div_vec4_i32(~(-vec4<i32>(global2.b, global1.b.x, global1.b.x, 10476i)), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-45445i, -35069i, 0i, global2.b)), vec4<i32>(2147483647i, arg_0, global2.b, global2.b), ~vec4<i32>(2147483647i, -26887i, arg_0, -31727i))));
    return false;
}

fn func_2() -> Struct_3 {
    global1 = Struct_3(~global1.a, u_input.b.yz);
    global2 = Struct_2(false & func_3(~(-26055i)), global2.b, Struct_1(~global1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.c.c)) + _wgslsmith_f_op_f32(global2.d.c * -603f)), 1000f, !all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.d.b)))), global2.d);
    let var_0 = Struct_2(any(select(!(!vec3<bool>(global2.a, false, global0.x)), vec3<bool>(global0.x, false, false), select(false, true, true))), global2.b, Struct_1((u_input.a | firstLeadingBit(global1.a.x)) & u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(790f)) * _wgslsmith_f_op_f32(-global2.c.b)), 2295f), global2.c);
    var var_1 = Struct_1(0u, _wgslsmith_f_op_f32(var_0.d.c + var_0.c.c), _wgslsmith_f_op_f32(floor(global2.c.b)));
    let var_2 = global2.c;
    return Struct_3(_wgslsmith_sub_vec4_u32(global1.a ^ vec4<u32>(global2.c.a, 8327u, abs(var_1.a), ~u_input.a), global1.a), select(select(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.b, -26167i), vec2<i32>(var_0.b, var_0.b)), abs(global1.b), select(vec2<bool>(true, true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, true))), _wgslsmith_add_vec2_i32(u_input.b.xy, global1.b) << (vec2<u32>(13511u, 1u) % vec2<u32>(32u)), true) & firstLeadingBit(vec2<i32>(global1.b.x, min(global2.b, global2.b))));
}

fn func_1() -> Struct_1 {
    global1 = func_2();
    global2 = Struct_2(any(select(vec4<bool>(true, all(vec3<bool>(global0.x, global2.a, global0.x)), true, any(vec3<bool>(global2.a, global0.x, global0.x))), vec4<bool>(true, true, true, true), !vec4<bool>(true, true, global0.x, true))), ~global2.b >> (_wgslsmith_dot_vec2_u32((vec2<u32>(global2.c.a, 4294967295u) << (vec2<u32>(u_input.a, 44433u) % vec2<u32>(32u))) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a), global1.a.zx, vec2<u32>(1u, 0u)), ~vec2<u32>(11167u, global1.a.x) >> (vec2<u32>(global2.c.a, 69266u) % vec2<u32>(32u))) % 32u), Struct_1(abs(min(min(4294967295u, global1.a.x), _wgslsmith_clamp_u32(u_input.a, global1.a.x, global1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-313f, global2.d.b))) + global2.d.c), -969f), global2.d);
    global2 = Struct_2(true, abs(global1.b.x), global2.d, Struct_1(~(~(1u ^ global1.a.x)), -538f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.b, global2.d.b) * -856f))));
    global0 = select(!select(vec2<bool>(true, true), select(!vec2<bool>(global0.x, global2.a), vec2<bool>(false, global0.x), select(vec2<bool>(true, global2.a), vec2<bool>(false, global0.x), vec2<bool>(true, true))), vec2<bool>(all(vec3<bool>(false, global0.x, true)), all(vec3<bool>(global0.x, true, global0.x)))), select(!(!vec2<bool>(global2.a, global0.x)), !vec2<bool>(select(true, global0.x, true), true), any(select(vec3<bool>(global0.x, global2.a, global2.a), vec3<bool>(global2.a, false, global2.a), select(vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(global2.a, global0.x, global0.x), global0.x)))), select(select(!select(vec2<bool>(global2.a, global2.a), vec2<bool>(false, global2.a), true), !select(vec2<bool>(true, global2.a), vec2<bool>(global0.x, global2.a), false), select(!vec2<bool>(true, global0.x), !vec2<bool>(global0.x, global0.x), true)), !(!vec2<bool>(global2.a, global2.a)), vec2<bool>(!global2.a, all(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, true, true), global0.x)))));
    var var_0 = u_input.b.x;
    return Struct_1(0u, -1275f, global2.d.c);
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_3 {
    global2 = Struct_2(false, u_input.b.x, Struct_1((~4294967295u | max(global1.a.x, arg_2.a)) & 43648u, _wgslsmith_f_op_f32(-func_1().c), global2.d.c), func_1());
    var var_0 = vec3<u32>(51505u, _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(arg_3, 42197u), max(arg_3, global1.a.x), arg_3, _wgslsmith_clamp_u32(0u, u_input.a, global1.a.x)), vec4<u32>(max(firstLeadingBit(global2.d.a), arg_3 >> (43575u % 32u)), 4294967295u, arg_3 ^ (arg_3 << (14331u % 32u)), 4294967295u)), 24374u);
    var_0 = global1.a.www;
    global0 = select(vec2<bool>(all(select(vec2<bool>(global0.x, global2.a), select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global2.a), false), true)), true), vec2<bool>(global2.a, false | !select(global0.x, true, global0.x)), true);
    var var_1 = func_2();
    return func_2();
}

fn func_5(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(~global1.a.yy, min(arg_0.a.xy, select(arg_0.a.xw, vec2<u32>(1u, arg_0.a.x), global0.x))) >= ~arg_0.a.x, global2.b, func_1(), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.a), _wgslsmith_add_u32(0u, 4294967295u)), abs(global1.a.zx)), _wgslsmith_f_op_f32(abs(1227f)), global2.c.c));
    global2 = Struct_2(all(!(!vec4<bool>(global2.a, global0.x, global2.a, false))), reverseBits(firstTrailingBit(global1.b.x)), global2.c, Struct_1(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -362f), global2.c.c));
    global2 = Struct_2(global0.x, _wgslsmith_sub_i32(-1i, var_0.b), Struct_1(abs(4294967295u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-179f)), _wgslsmith_f_op_f32(-1035f + _wgslsmith_div_f32(-574f, -999f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(361f)))), func_1());
    let var_1 = arg_0.b;
    global0 = !vec2<bool>(!any(vec3<bool>(global0.x, var_0.a, false)) || global2.a, (u_input.b.x ^ (u_input.b.x | var_0.b)) > max(~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), var_1)));
    return var_0.c.c;
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = firstLeadingBit(_wgslsmith_add_u32(~arg_2.x, 0u));
    global0 = select(!(!vec2<bool>(true, all(vec3<bool>(true, global0.x, false)))), !vec2<bool>(false, global2.a), select(select(select(!vec2<bool>(global2.a, global2.a), vec2<bool>(false, global0.x), !vec2<bool>(global0.x, global0.x)), select(!vec2<bool>(global2.a, global2.a), select(vec2<bool>(true, global0.x), vec2<bool>(global2.a, global0.x), global2.a), select(false, global0.x, false)), select(select(vec2<bool>(global0.x, true), vec2<bool>(true, global2.a), vec2<bool>(true, true)), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(global0.x, false), global2.a))), vec2<bool>(global0.x, !(u_input.b.x == u_input.b.x)), vec2<bool>(true, true)));
    let var_1 = Struct_2(global2.a, u_input.b.x, global2.d, Struct_1(max(reverseBits(arg_0), ~func_2().a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-207f, _wgslsmith_f_op_f32(global2.d.b + global2.d.c)) - global2.d.c), global2.d.b));
    var_0 = firstLeadingBit(~(~(~var_1.c.a))) >> (arg_0 % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(exp2(global2.c.b)), _wgslsmith_f_op_f32(func_5(Struct_3(vec4<u32>(u_input.a, 13515u, 4294967295u, u_input.a), vec2<i32>(55324i, var_1.b)))), _wgslsmith_f_op_f32(floor(1547f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.b, global2.d.c, -2081f, global2.c.b)), vec4<f32>(global2.d.c, global2.c.b, 336f, global2.d.c), !vec4<bool>(global2.a, global0.x, global2.a, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1057f, var_1.d.b, 725f, 482f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -3051f, global2.d.b, global2.d.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.c, var_1.c.c, var_1.c.b, 349f), vec4<f32>(var_1.c.c, arg_1, global2.c.b, var_1.c.b))))), true));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!global0.x, max(global1.b.x, global1.b.x), global2.c, func_6(~1u, _wgslsmith_f_op_f32(func_5(func_4(u_input.b.yy >> (global1.a.wx % vec2<u32>(32u)), global2.c.c, func_1(), countOneBits(global1.a.x)))), func_4(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(global2.b, u_input.b.x)) | u_input.b.xz, global2.d.b, func_1(), countOneBits(global1.a.x & global2.d.a)).a));
    var var_1 = vec3<i32>(~_wgslsmith_mod_i32(u_input.b.x, ~(-15407i)), _wgslsmith_mult_i32(abs(countOneBits(var_0.b)), func_2().b.x), _wgslsmith_dot_vec2_i32(countOneBits(u_input.b.xz), vec2<i32>(_wgslsmith_clamp_i32(15984i, 0i, global2.b), var_0.b >> (global2.d.a % 32u)))) << (_wgslsmith_mod_vec3_u32(global1.a.xww, func_2().a.yzx) % vec3<u32>(32u));
    let var_2 = _wgslsmith_dot_vec4_u32(global1.a, ~select(_wgslsmith_clamp_vec4_u32(global1.a, _wgslsmith_add_vec4_u32(global1.a, vec4<u32>(3175u, global1.a.x, 4294967295u, 1u)), ~vec4<u32>(1624u, 4294967295u, 21923u, 0u)), func_4(global1.b, _wgslsmith_f_op_f32(-global2.d.b), global2.d, global2.d.a).a, vec4<bool>(true, var_0.a | var_0.a, var_0.a, false)));
    var var_3 = global1.a.yx;
    global2 = var_0;
    var var_4 = !var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.c.c, var_0.c.b), vec2<f32>(global2.d.c, 566f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-525f, global2.c.c) * vec2<f32>(-262f, 423f)))), vec2<f32>(-1083f, var_0.c.c)), -vec4<i32>(global2.b, ~global2.b, global1.b.x, 2147483647i), 1552f, select(-vec2<i32>(global1.b.x, global1.b.x), abs(u_input.b.zz), true) & _wgslsmith_div_vec2_i32(-var_1.xz >> (select(vec2<u32>(global1.a.x, var_2), vec2<u32>(73293u, 4294967295u), vec2<bool>(true, false)) % vec2<u32>(32u)), vec2<i32>(-19428i, global1.b.x) ^ abs(vec2<i32>(u_input.b.x, u_input.b.x))), ~firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(1u, 0u, var_3.x), ~0u, u_input.a, ~22945u)));
}

