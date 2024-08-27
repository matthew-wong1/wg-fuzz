struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(66719u, 0u, 124105u), false, -509f, Struct_1(53910u), vec4<f32>(-554f, 1622f, 205f, -1111f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2200f, -320f, global0.e.x)))));
    var var_1 = -_wgslsmith_clamp_vec4_i32(abs(abs(reverseBits(vec4<i32>(u_input.e.x, u_input.e.x, u_input.d, u_input.a.x)))), vec4<i32>(u_input.e.x, -(u_input.e.x | u_input.d), 1i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 31915i, u_input.b.x, -1i), vec4<i32>(u_input.a.x, u_input.d, u_input.e.x, u_input.c)), ~(-1i))), vec4<i32>(firstLeadingBit(-21353i), -705i, _wgslsmith_div_i32(72446i << (global0.d.a % 32u), _wgslsmith_mod_i32(u_input.c, 1i)), u_input.e.x & _wgslsmith_mult_i32(-18365i, 0i)));
    var_1 = abs(-vec4<i32>(2147483647i, ~1i, _wgslsmith_add_i32(u_input.e.x >> (1u % 32u), u_input.d | var_1.x), u_input.b.x));
    let var_2 = countOneBits(-select(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, u_input.e.x, u_input.e.x), vec4<i32>(var_1.x, u_input.a.x, u_input.c, -1i)), -vec4<i32>(u_input.b.x, 26847i, var_1.x, -1i), select(!vec4<bool>(true, global0.b, true, true), vec4<bool>(global0.b, global0.b, global0.b, false), !vec4<bool>(false, false, false, global0.b))));
    var var_3 = global0.d;
    return _wgslsmith_add_vec3_u32(global0.a, min(vec3<u32>(abs(firstLeadingBit(global0.a.x)), var_3.a, countOneBits(_wgslsmith_add_u32(var_3.a, 81328u))), global0.a));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: Struct_3) -> i32 {
    var var_0 = arg_3;
    let var_1 = min(_wgslsmith_mod_vec3_u32(~(~(~global0.a)), ~max(global0.a | vec3<u32>(4294967295u, global0.a.x, arg_2.x), ~vec3<u32>(global0.a.x, global0.d.a, arg_2.x))), vec3<u32>(_wgslsmith_clamp_u32(~arg_2.x, arg_2.x, 72535u ^ ~arg_2.x), _wgslsmith_dot_vec3_u32(func_3(), func_3()), ~func_3().x));
    var var_2 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, arg_2.x), var_1.xz), 0u);
    return 0i;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32) -> vec2<i32> {
    let var_0 = arg_1;
    var var_1 = abs(global0.a.x);
    var var_2 = global0.d;
    var var_3 = false;
    let var_4 = Struct_3(arg_0.x);
    return select(vec2<i32>(-1i) * -(vec2<i32>(-1i) * -arg_0.zy), vec2<i32>(-21822i, 0i) & (arg_0.zy & abs(max(arg_0.xy, vec2<i32>(-1i, var_4.a)))), global0.b);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<u32>) -> Struct_3 {
    global0 = Struct_2(~arg_1.xwy, all(vec4<bool>(true, global0.b, false, any(vec3<bool>(global0.b, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1615f)) - _wgslsmith_f_op_f32(round(-1694f))) - _wgslsmith_f_op_f32(floor(1545f))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(4294967295u, 0u, 34911u, 4294967295u)), ~global0.a.x, arg_1.x), global0.a)), global0.e);
    let var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(global0.a.x, global0.a.x), vec2<u32>(~(firstLeadingBit(global0.a.x) & global0.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(global0.d.a, 0u, global0.d.a), vec3<u32>(arg_1.x, global0.d.a, arg_1.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), global0.a))));
    global0 = Struct_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(~1u, ~arg_1.x, _wgslsmith_clamp_u32(1u, var_0.x, arg_1.x)), ~vec3<u32>(global0.d.a, abs(arg_1.x), 0u)), all(!(!select(vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(global0.b, true, true), vec3<bool>(global0.b, global0.b, true)))), _wgslsmith_f_op_f32(global0.c - global0.e.x), global0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-751f, global0.e.x, 1337f, _wgslsmith_f_op_f32(-global0.c)))));
    global0 = Struct_2(reverseBits(~(~vec3<u32>(1u, global0.d.a, 21883u))), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.e.x, _wgslsmith_f_op_f32(global0.c - global0.c)), global0.c))), global0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, 860f, -848f, 1185f))));
    global0 = Struct_2(vec3<u32>(22014u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, var_0.x, 0u, 25450u), vec4<u32>(var_0.x, 21733u, var_0.x, 1u)), ~_wgslsmith_sub_vec4_u32(arg_1, arg_1)), select(~arg_1.x, abs(~26020u), all(vec2<bool>(false, true)))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.e.x))), global0.d, _wgslsmith_f_op_vec4_f32(select(global0.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(2367f, -653f, -289f, -155f) - vec4<f32>(-818f, global0.c, global0.e.x, 1239f))))), true & !all(vec2<bool>(false, global0.b)))));
    return Struct_3(abs(~reverseBits(-10474i)));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = func_5(func_4(vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(-u_input.b.x, func_2(-25210i, arg_0.b.xxy, arg_0.a.zz, Struct_3(1i)), -17340i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, u_input.b.x, -2147483647i, 44371i), vec4<i32>(-7280i, u_input.a.x, u_input.d, -2147483647i)), -vec4<i32>(u_input.c, 2147483647i, -12337i, 2147483647i)), u_input.b.x), 1462f), vec4<u32>(_wgslsmith_clamp_u32(17802u, ~countOneBits(arg_1.x), 6838u ^ ~arg_0.a.x), 0u, 1u, _wgslsmith_clamp_u32(global0.d.a, _wgslsmith_div_u32(select(1u, 85355u, global0.b), 1u & global0.a.x), 58123u)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) - _wgslsmith_f_op_f32(378f - global0.e.x)))) + -2308f), _wgslsmith_f_op_f32(select(883f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + global0.c))))), all(vec4<bool>(global0.b, true, global0.b, all(vec4<bool>(global0.b, true, global0.b, true)))))));
    var var_2 = Struct_2(max(vec3<u32>(~_wgslsmith_add_u32(arg_1.x, arg_0.a.x), arg_2.a, ~(arg_0.a.x ^ arg_0.a.x)), vec3<u32>(59750u, _wgslsmith_clamp_u32(func_3().x, arg_1.x ^ 68359u, arg_0.a.x), min(arg_0.a.x, arg_0.a.x))), false, _wgslsmith_f_op_f32(ceil(-1248f)), Struct_1(reverseBits(~abs(1u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, 522f, 577f, -428f)))))))));
    global0 = Struct_2(~arg_0.a, !(arg_2.a != firstTrailingBit(2899u >> (global0.a.x % 32u))), var_2.e.x, Struct_1(_wgslsmith_add_u32(~var_2.a.x, firstLeadingBit(23595u)) << ((4294967295u & var_2.d.a) % 32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global0.e), _wgslsmith_f_op_vec4_f32(-global0.e))));
    var_2 = Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(~26639u, _wgslsmith_mod_u32(arg_0.a.x, 20409u) ^ select(arg_1.x, 10505u, arg_0.b.x), arg_2.a), global0.a), (1u & func_3().x) > select(arg_1.x, ~_wgslsmith_mod_u32(15015u, 1u), arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-447f, -1000f))), global0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global0.e)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_2.e))))));
    return _wgslsmith_div_u32(~countOneBits(global0.d.a), 3946u);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_4) -> Struct_1 {
    global0 = Struct_2(vec3<u32>(global0.d.a, reverseBits(global0.a.x) ^ 0u, _wgslsmith_mod_u32(arg_1.a.x, ~_wgslsmith_dot_vec2_u32(arg_1.a.zx, arg_1.a.xz))), !(any(!arg_1.b.xz) | (1i <= u_input.d)), global0.e.x, global0.d, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.e.x, -556f), arg_0.x, global0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_0 = Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(0u, ~global0.a.x), global0.d.a, 4294967295u), firstTrailingBit(~vec3<u32>(4335u, 4294967295u, global0.d.a) >> ((vec3<u32>(global0.d.a, arg_1.a.x, 1u) >> (global0.a % vec3<u32>(32u))) % vec3<u32>(32u)))), all(select(arg_1.b.xxw, vec3<bool>(global0.b, any(arg_1.b.xwx), false), true)), _wgslsmith_f_op_f32(step(global0.c, global0.e.x)), global0.d, _wgslsmith_f_op_vec4_f32(-arg_0));
    let var_1 = false | var_0.b;
    let var_2 = vec3<i32>(2147483647i, 2147483647i, -6601i) << ((var_0.a >> (var_0.a % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * var_0.c) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(569f - arg_0.x)))), 1144f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-837f)), _wgslsmith_f_op_f32(exp2(global0.e.x))), var_0.c)))));
    return Struct_1(func_3().x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.e + global0.e) + _wgslsmith_div_vec4_f32(vec4<f32>(-352f, global0.c, -117f, -1221f), global0.e)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0.e))))), Struct_4(vec3<u32>(~4294967295u, global0.a.x, func_1(Struct_4(global0.a, vec4<bool>(global0.b, global0.b, global0.b, false)), global0.a.yy, Struct_1(global0.a.x))), vec4<bool>(global0.b, global0.b, true && (false && global0.b), all(vec3<bool>(global0.b, true, false)) && global0.b)));
    var_0 = Struct_1(global0.d.a);
    var_0 = global0.d;
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(func_6(global0.e, Struct_4(vec3<u32>(78212u, var_0.a, global0.d.a), vec4<bool>(false, true, global0.b, global0.b))).a, 95746u), _wgslsmith_dot_vec2_u32(global0.a.yz, ~vec2<u32>(4294967295u, 0u)), 23838u, global0.a.x), ~select(_wgslsmith_div_vec4_u32(vec4<u32>(12125u, 1u, 48428u, 4294967295u), vec4<u32>(var_0.a, var_0.a, global0.d.a, global0.d.a)), ~vec4<u32>(51336u, global0.d.a, 0u, global0.a.x), select(false, true, global0.b))) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(88565u, var_0.a, var_0.a, global0.d.a), vec4<u32>(var_0.a, 60495u, global0.a.x, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(38805u, 49982u, var_0.a, 0u), vec4<u32>(var_0.a, global0.a.x, 16663u, var_0.a))), _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.a.x, 0u, 1u, var_0.a), abs(vec4<u32>(global0.d.a, 3503u, 4294967295u, global0.a.x)))), vec4<u32>(abs(firstLeadingBit(32471u)), ~abs(0u), reverseBits(98578u), var_0.a));
    var_1 = firstLeadingBit(vec4<u32>(max(var_0.a << (var_0.a % 32u), ~(~59384u)), _wgslsmith_mult_u32(4294967295u, var_1.x), ~_wgslsmith_mult_u32(global0.d.a, _wgslsmith_sub_u32(0u, global0.a.x)), global0.d.a & 4294967295u));
    var_0 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.e, _wgslsmith_f_op_vec4_f32(min(global0.e, global0.e)), global0.b))), Struct_4(~(~vec3<u32>(0u, 47785u, 1u)), !(!select(vec4<bool>(global0.b, false, global0.b, global0.b), vec4<bool>(false, global0.b, false, global0.b), vec4<bool>(false, true, true, global0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

