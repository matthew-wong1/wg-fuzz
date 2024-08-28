struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<i32>(40052i, -1453i), -220f, -54745i, -826f, vec2<u32>(1u, 1848u)), Struct_1(vec2<i32>(22718i, -24852i), 606f, 2147483647i, 513f, vec2<u32>(0u, 79329u)), Struct_1(vec2<i32>(11346i, -12353i), -800f, -1i, -942f, vec2<u32>(55735u, 55109u)), Struct_1(vec2<i32>(-18278i, -5665i), 1737f, -22549i, -1481f, vec2<u32>(0u, 31119u)), Struct_1(vec2<i32>(1i, i32(-2147483648)), 1000f, -45861i, -143f, vec2<u32>(1u, 0u)), Struct_1(vec2<i32>(1i, -1i), 470f, 91886i, -234f, vec2<u32>(0u, 67186u)), Struct_1(vec2<i32>(2147483647i, -45740i), 1755f, 2147483647i, 1000f, vec2<u32>(45124u, 1776u)), Struct_1(vec2<i32>(1i, i32(-2147483648)), 152f, 1i, 1260f, vec2<u32>(14813u, 7317u)), Struct_1(vec2<i32>(-47595i, -24840i), -1094f, 43399i, -997f, vec2<u32>(7551u, 1u)), Struct_1(vec2<i32>(9944i, -24226i), -673f, 0i, -132f, vec2<u32>(4294967295u, 4319u)), Struct_1(vec2<i32>(30614i, 37118i), -1111f, 2147483647i, 981f, vec2<u32>(4410u, 4294967295u)), Struct_1(vec2<i32>(1i, 67735i), 1281f, -19899i, 413f, vec2<u32>(4294967295u, 1u)), Struct_1(vec2<i32>(-4278i, 36936i), -224f, 2147483647i, 743f, vec2<u32>(886u, 0u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 13>();
    var var_0 = select(vec3<bool>(all(vec3<bool>(true, any(vec4<bool>(false, true, false, false)), true)), select(true, false, any(vec2<bool>(true, true))), false), select(vec3<bool>(any(vec2<bool>(true, true)), true, true), vec3<bool>(true, true, true), !select(true, true, false)), true);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1734f, 458f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2204f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1702f))), u_input.b < -u_input.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-561f)) - -1939f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-507f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1181f))))))));
    let var_2 = 2147483647i;
    global0 = array<Struct_1, 13>();
    return var_1.x;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = u_input.d.x;
    var var_1 = -434f;
    global0 = array<Struct_1, 13>();
    return Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(~min(-52248i, 2147483647i), ~_wgslsmith_add_i32(arg_0, 767i)), -vec2<i32>(arg_0 >> (u_input.d.x % 32u), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-909f)))) * _wgslsmith_f_op_f32(func_3())), i32(-1i) * -38828i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-520f))))), reverseBits(vec2<u32>(u_input.d.x, abs(reverseBits(var_0)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    global0 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_mod_u32(arg_1.e.x, arg_2);
    var var_1 = vec2<i32>(1i, -_wgslsmith_dot_vec2_i32(arg_1.a | ~vec2<i32>(arg_1.c, u_input.b), arg_1.a));
    var_1 = max(arg_1.a << (vec2<u32>(~u_input.d.x, func_2(_wgslsmith_dot_vec2_i32(arg_1.a, arg_1.a)).e.x) % vec2<u32>(32u)), vec2<i32>(var_1.x, abs(reverseBits(-27061i) & _wgslsmith_mult_i32(arg_1.c, arg_1.a.x))));
    let var_2 = select(select(select(!select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), arg_0.x), arg_0.yy, vec2<bool>(all(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), any(vec3<bool>(arg_0.x, arg_0.x, true)))), arg_0.yz, !select(vec2<bool>(arg_0.x, arg_0.x), !arg_0.xy, var_1.x <= -33029i)), select(vec2<bool>(true, ~u_input.d.x != ~arg_1.e.x), vec2<bool>(arg_0.x && (arg_0.x && false), any(select(vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(true, true, arg_0.x, arg_0.x), true))), all(arg_0.xyz)), !(!vec2<bool>(arg_0.x, true && arg_0.x)));
    return Struct_2(arg_1.c, func_2(~(~select(u_input.c, 19544i, true))), arg_1.a.x);
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2, arg_3: vec3<i32>) -> bool {
    let var_0 = func_2(-arg_2.c);
    let var_1 = func_4(vec4<bool>(true, true, true || !all(vec4<bool>(false, true, true, false)), var_0.e.x <= 1u), func_4(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), true)), func_2(-23415i), arg_2.b.e.x).b, ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u >> (arg_2.b.e.x % 32u), func_4(vec4<bool>(false, false, true, false), var_0, u_input.d.x).b.e.x, 1u), ~u_input.d.x << (_wgslsmith_mult_u32(u_input.d.x, 16896u) % 32u))).b;
    var var_2 = !all(vec2<bool>(true, true));
    var_2 = true;
    var var_3 = func_4(!(!vec4<bool>(all(vec2<bool>(false, true)), true, any(vec4<bool>(false, false, false, true)), true)), var_1, 0u).b;
    return var_3.c >= -(var_1.a.x | _wgslsmith_add_i32(2147483647i, -246i));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-412f, -518f), _wgslsmith_div_f32(-1345f, arg_1.b))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.d, arg_1.b), vec2<f32>(480f, arg_1.b)))), vec2<f32>(_wgslsmith_f_op_f32(arg_1.b - 1157f), _wgslsmith_div_f32(-383f, 470f))))), _wgslsmith_f_op_f32(min(arg_1.d, _wgslsmith_f_op_f32(arg_1.d - 461f))), func_4(vec4<bool>(true, true, arg_0 | false, arg_0), func_2(arg_1.a.x), select(0u, 1u, arg_0)), abs(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(-2147483647i, -1i, 0i)), reverseBits(-vec3<i32>(arg_1.c, 0i, -49259i)))));
    global0 = array<Struct_1, 13>();
    var var_1 = Struct_1(-_wgslsmith_mod_vec2_i32(arg_1.a, ~(arg_1.a & vec2<i32>(21427i, 25947i))), arg_1.d, 23888i, arg_1.b, ~vec2<u32>(u_input.d.x, ~_wgslsmith_add_u32(arg_1.e.x, 0u)));
    global0 = array<Struct_1, 13>();
    var var_2 = all(!select(!select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, false, var_0), arg_0), select(select(vec3<bool>(var_0, var_0, false), vec3<bool>(true, true, false), vec3<bool>(var_0, false, arg_0)), vec3<bool>(var_0, true, var_0), vec3<bool>(arg_0, arg_0, false)), !arg_0));
    return vec2<i32>(0i, 36699i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, u_input.a), countOneBits(u_input.b)), Struct_1(~func_1(true, global0[_wgslsmith_index_u32(u_input.d.x, 13u)]), -2245f, -41i, 361f, u_input.d.yy), -2147483647i);
    let var_1 = var_0.b.d;
    var_0 = Struct_2(30056i, func_4(vec4<bool>(select(true, true, false), true, all(vec2<bool>(false, true)), true), Struct_1(max(~vec2<i32>(var_0.a, u_input.b), var_0.b.a), var_0.b.d, -44410i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(2090f, -763f)), _wgslsmith_f_op_f32(f32(-1f) * -161f))), vec2<u32>(_wgslsmith_sub_u32(40644u, 34908u), 20084u)), ~(~4294967295u)).b, u_input.b);
    var var_2 = 878f;
    var_0 = func_4(!select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), true), any(vec2<bool>(true, false))), var_0.b, _wgslsmith_sub_u32(~(~(80228u ^ u_input.d.x)), var_0.b.e.x));
    let var_3 = _wgslsmith_mult_vec3_i32(abs(-vec3<i32>(~(-1i), ~25908i, ~21604i)), ~vec3<i32>(u_input.c, -firstTrailingBit(var_0.a), min(-u_input.b, -2147483647i >> (u_input.d.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-783f, var_0.b.b)) * _wgslsmith_div_vec2_f32(vec2<f32>(-216f, -225f), vec2<f32>(-1286f, var_0.b.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.d, 145f) - vec2<f32>(var_0.b.d, var_0.b.b))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.d, 1067f, func_2(u_input.c).d, _wgslsmith_f_op_f32(-var_0.b.b)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.d, var_0.b.b, 702f, var_0.b.d) + vec4<f32>(var_0.b.d, 1660f, var_0.b.b, var_0.b.b))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.b, 2243f, 811f, var_0.b.d))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1066f, var_0.b.b, var_0.b.d, -1000f) + vec4<f32>(var_0.b.b, -568f, var_0.b.d, var_0.b.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(506f, 1228f, 1108f, -1514f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(131f, var_0.b.d)), _wgslsmith_f_op_f32(exp2(var_0.b.b))));
}

