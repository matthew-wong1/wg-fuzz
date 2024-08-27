struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, arg_0, arg_0, global0.d)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.a.a.x, global0.a.a.a.x, arg_0, arg_0), vec4<f32>(-1262f, global0.c.a.a.x, global0.d, global0.c.a.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-215f + global0.d), _wgslsmith_f_op_f32(arg_0 * -740f), -561f, _wgslsmith_f_op_f32(max(-238f, -1726f))), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, global0.d, global0.c.a.a.x, arg_0), vec4<f32>(arg_0, arg_0, -714f, global0.c.a.a.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(254f, arg_0, -2812f, -372f))))), -118f >= _wgslsmith_f_op_f32(ceil(arg_0)));
    var var_1 = global0.a.a.a.x;
    global0 = Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1924f, arg_0, -1000f) * vec3<f32>(715f, arg_0, var_0.a.x)))), u_input.c.yx), abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, 27354i, 18402i, u_input.a), -vec4<i32>(2147483647i, -12003i, -3571i, global0.c.c))), u_input.a), 67266u, Struct_3(global0.c.a, abs(-1i) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.a.b.x, 63289u, 30619u, arg_1.x), vec4<u32>(global0.c.a.b.x, 0u, 0u, u_input.b.x)), ~global0.b) % 32u), firstLeadingBit(firstLeadingBit(-1i))), 1513f);
    global0 = Struct_4(global0.a, ~u_input.b.x, global0.c, 951f);
    let var_2 = _wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(1u, arg_1.x, global0.b))), arg_1.zxx);
    return -380f;
}

fn func_2(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -654f), arg_0.a.x, _wgslsmith_f_op_f32(select(global0.c.a.a.x, _wgslsmith_f_op_f32(753f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a.a.a.x), arg_0.a.x, true))), true)), -929f);
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-204f + var_0.x), ~vec4<u32>(11602u, global0.b, arg_0.b.x, arg_0.b.x))), _wgslsmith_f_op_f32(select(-1830f, _wgslsmith_f_op_f32(select(1542f, global0.a.a.a.x, true)), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(arg_0.a.x * 834f))), 1649f)));
    var var_1 = Struct_4(Struct_3(global0.c.a, abs(_wgslsmith_add_i32(-global0.c.b, 22814i)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(global0.c.b, u_input.a)), -2147483647i, global0.c.c, ~(-40929i)), vec4<i32>(_wgslsmith_mult_i32(-1i, global0.c.b), global0.a.c, global0.c.c, -11177i))), _wgslsmith_div_u32(select(arg_0.b.x, reverseBits(0u), false), ~47261u), global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.a.x)), 416f));
    var_1 = Struct_4(Struct_3(global0.c.a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.c >> (var_1.c.a.b.x % 32u), reverseBits(0i)), vec2<i32>(21264i, 26232i) ^ _wgslsmith_add_vec2_i32(vec2<i32>(-36005i, var_1.c.b), vec2<i32>(-1i, -63714i))), 2147483647i), 55428u, Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.a.a.a))), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.c.a.b.x, 1u), vec2<u32>(arg_0.b.x, global0.b)), arg_0.b)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-31480i, global0.c.b, 15538i, u_input.a), -vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), select(vec4<i32>(global0.a.b, global0.a.c, var_1.c.b, global0.a.c), vec4<i32>(-54037i, 66983i, 67169i, 5546i), vec4<bool>(true, true, true, false))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(41262i, var_1.a.b, 2147483647i, 2147483647i), vec4<i32>(2147483647i, global0.c.b, 12696i, 25761i)), i32(-1i) * -58644i, -2147483647i, _wgslsmith_add_i32(u_input.a, global0.a.c))), _wgslsmith_mod_i32(firstTrailingBit(max(-8932i, 1i)), ~24617i)), _wgslsmith_f_op_f32(2019f * global0.c.a.a.x));
    let var_2 = Struct_3(Struct_2(var_0.yzw, ~vec2<u32>(4294967295u, 1u)), firstTrailingBit(2147483647i), global0.a.b);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.a.a.x), _wgslsmith_f_op_f32(365f + arg_0.a.x), var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(-706f, vec4<u32>(33918u, var_1.b, global0.a.a.b.x, 21152u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.c.a.a.x, arg_0.a.x)) - _wgslsmith_f_op_f32(-var_1.a.a.a.x)), _wgslsmith_f_op_f32(max(global0.d, var_2.a.a.x))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), vec3<bool>(true, true, all(vec4<bool>(false, true, false, false))), vec3<bool>(true, true, true)))));
}

fn func_1(arg_0: bool, arg_1: f32) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(func_2(global0.a.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(72795u, 25872u, 51216u), u_input.b), global0.b), u_input.c.zy, _wgslsmith_div_vec2_u32(vec2<u32>(~1u, 0u), ~abs(u_input.c.xz))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-690f, _wgslsmith_f_op_f32(step(arg_1, -837f)))) - 377f) + _wgslsmith_div_f32(global0.a.a.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(169f + -839f), 1170f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a.a.a.x)) - -667f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1835f)))), -802f, -528f);
    var var_2 = arg_0 & arg_0;
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_1, _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(2411u, 7936u, u_input.c.x, u_input.b.x), vec4<u32>(u_input.c.x, 46461u, 1u, global0.c.a.b.x)), ~vec4<u32>(global0.c.a.b.x, 93381u, 4294967295u, 0u)) ^ (min(vec4<u32>(1u, u_input.b.x, 52466u, global0.a.a.b.x), vec4<u32>(u_input.b.x, 4294967295u, 67845u, 49939u)) & ~vec4<u32>(u_input.c.x, var_0.b.x, 1u, u_input.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -105f, -401f) + vec3<f32>(-246f, arg_1, 341f)), max(u_input.c.yz, vec2<u32>(global0.c.a.b.x, 0u))))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(global0.c.a)).x), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -150f)), _wgslsmith_f_op_f32(176f + _wgslsmith_f_op_f32(-120f * 438f)))));
    global0 = Struct_4(global0.c, ~_wgslsmith_clamp_u32(0u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 25398u, var_0.b.x, 39129u), vec4<u32>(0u, u_input.c.x, global0.c.a.b.x, var_0.b.x)), u_input.c.x, 0u), 1u), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1211f)) * -205f) - arg_1));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(366f, -110f, 171f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(global0.a, global0.c.a.b.x, Struct_3(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(true, global0.d)), _wgslsmith_f_op_vec3_f32(func_2(global0.c.a))), _wgslsmith_add_vec2_u32(global0.c.a.b, min(u_input.b.xy, vec2<u32>(u_input.c.x, u_input.c.x)))), u_input.a, _wgslsmith_mult_i32(u_input.a, ~global0.a.b)), global0.d);
    global0 = Struct_4(global0.a, _wgslsmith_mod_u32(~(global0.a.a.b.x << ((u_input.b.x & global0.c.a.b.x) % 32u)), ~_wgslsmith_add_u32(abs(1u), global0.c.a.b.x >> (4294967295u % 32u))), Struct_3(global0.c.a, ~u_input.a, _wgslsmith_sub_i32(-34154i, global0.c.c) & u_input.a), 749f);
    let var_0 = all(vec2<bool>(true, !any(vec3<bool>(false, false, false)))) & all(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), false));
    global0 = Struct_4(global0.a, ~(~(~u_input.b.x)), Struct_3(global0.a.a, abs(~abs(1i)), abs(max(~global0.a.c, _wgslsmith_add_i32(16074i, -2147483647i)))), _wgslsmith_f_op_f32(1f - 1000f));
    global0 = Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.a.a + global0.a.a.a)), vec2<u32>(u_input.b.x, u_input.c.x) & u_input.c.xz), _wgslsmith_div_i32(~(-2147483647i), -2147483647i), ~global0.c.c), ~abs(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x)), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f - _wgslsmith_f_op_f32(f32(-1f) * -2386f))) + _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(f32(-1f) * -125f))));
    var var_1 = -(i32(-1i) * -13430i);
    var_1 = countOneBits(1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global0.a.b, firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, -2147483647i), -28711i))));
}

