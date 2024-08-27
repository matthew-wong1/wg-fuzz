struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<u32>, 3>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec4<f32> {
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-443f - -1291f), _wgslsmith_f_op_f32(exp2(arg_0.b)), 1261f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1263f, -1189f, -992f) * vec4<f32>(arg_0.b, 1000f, arg_0.b, arg_1.b)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1524f, arg_0.b, 1000f, arg_1.b) * vec4<f32>(global0.x, global0.x, global0.x, global0.x)))))));
}

fn func_2(arg_0: bool, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(global0.x - global0.x);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<i32>(70987i, 1i), -752f, vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0)), Struct_2(vec2<i32>(-17382i, 53343i), var_0, vec2<bool>(arg_0, true), vec2<bool>(true, false)), Struct_1(vec4<i32>(23761i, -70481i, -11192i, 30998i), vec3<i32>(-54078i, 1i, -1i), vec2<bool>(arg_0, arg_0)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(round(global0.x)), global0.x, 1198f))));
    let var_1 = vec2<bool>(true, true);
    let var_2 = Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(1i, -2147483647i, 2147483647i, -1492i), vec4<i32>(69992i, 77538i, 2147483647i, 0i)), ~vec4<i32>(35965i, -13137i, -36820i, 1i)), firstLeadingBit(1i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-279f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, global0.x, true))))), !(!var_1), vec2<bool>(!any(!vec3<bool>(false, false, var_1.x)), arg_0));
    var var_3 = _wgslsmith_f_op_f32(-850f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1319f))))) - 327f));
    return min(var_2.a.x, -2147483647i | ~min(~var_2.a.x, reverseBits(2147483647i)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-arg_2.a, ~vec4<i32>(-43081i, -5067i, arg_2.a.x, 2147483647i)) & 12605i, arg_2.a.x) | -3930i;
    var var_1 = Struct_1(vec4<i32>(-22013i, -46332i, ~(-17823i), i32(-1i) * -1i), (vec3<i32>(arg_2.a.x, func_2(false, 16003u), 1i) & ~abs(arg_2.a.xyx)) << (vec3<u32>(0u, 1u, _wgslsmith_sub_u32(arg_0, 221u) >> (20842u % 32u)) % vec3<u32>(32u)), !vec2<bool>(all(vec4<bool>(arg_2.c.x, false, arg_2.c.x, arg_2.c.x)), all(arg_2.c)));
    let var_2 = arg_2;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-476f, -357f, -692f, global0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(321f, 448f, global0.x, 992f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<i32>(arg_2.b.x, -61607i), global0.x, var_1.c, var_2.c), Struct_2(vec2<i32>(var_2.a.x, 59199i), global0.x, arg_2.c, vec2<bool>(true, true)), Struct_1(arg_2.a, arg_2.a.zxz, vec2<bool>(true, var_1.c.x)))))));
    var var_3 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(arg_1, 54220u), 42988u, u_input.b), (reverseBits(vec3<u32>(0u, arg_1, arg_0)) >> (reverseBits(vec3<u32>(u_input.a, arg_1, 1u)) % vec3<u32>(32u))) ^ ~(vec3<u32>(0u, arg_0, 1u) >> (vec3<u32>(55442u, u_input.a, u_input.b) % vec3<u32>(32u))), min(max(vec3<u32>(24538u, 4294967295u, 9080u), select(vec3<u32>(14442u, arg_1, 2164u), vec3<u32>(6341u, 1u, arg_1), false)), ~min(vec3<u32>(1u, arg_0, 71656u), vec3<u32>(4294967295u, 0u, u_input.b)))), _wgslsmith_mod_vec3_u32(select(vec3<u32>(abs(0u), ~0u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(26775u, 0u, 4294967295u) >> (vec3<u32>(arg_1, 76785u, 57183u) % vec3<u32>(32u)), ~vec3<u32>(0u, arg_1, 38480u)), var_1.c.x), reverseBits(select(vec3<u32>(arg_1, 40890u, 1u), vec3<u32>(19347u, 1u, arg_1), arg_2.c.x) >> (select(vec3<u32>(arg_0, 0u, 34587u), vec3<u32>(9968u, u_input.b, 4294967295u), vec3<bool>(var_2.c.x, arg_2.c.x, false)) % vec3<u32>(32u)))));
    return _wgslsmith_f_op_f32(abs(1358f));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = select(!vec3<bool>(any(vec3<bool>(false, arg_0.c.x, false)), select(false, arg_0.d.x, true) & false, false | arg_0.d.x), vec3<bool>(any(!vec4<bool>(arg_0.d.x, true, true, arg_0.d.x)), any(select(select(vec3<bool>(true, arg_0.d.x, arg_0.d.x), vec3<bool>(arg_0.d.x, true, true), vec3<bool>(arg_0.c.x, true, false)), vec3<bool>(true, false, false), true)), !(all(arg_0.d) && arg_0.c.x)), all(select(vec4<bool>(any(vec3<bool>(arg_0.d.x, arg_0.c.x, arg_0.c.x)), true, all(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.c.x)), false), select(vec4<bool>(false, false, arg_0.d.x, false), vec4<bool>(arg_0.c.x, arg_0.d.x, arg_0.c.x, false), any(vec2<bool>(arg_0.c.x, arg_0.c.x))), arg_0.d.x)));
    var_0 = vec3<bool>(var_0.x, !all(!(!var_0.yy)), !(true & !(arg_2.x > arg_0.b)));
    let var_1 = -33577i;
    var var_2 = min(abs(countOneBits(~vec3<u32>(u_input.b, 1u, 4294967295u) | ~vec3<u32>(u_input.b, u_input.b, 28646u))), vec3<u32>(10088u, 1u, countOneBits(0u)));
    var var_3 = select(!select(select(!vec3<bool>(false, true, var_0.x), vec3<bool>(true, true, true), vec3<bool>(true, var_0.x, true)), !(!vec3<bool>(arg_0.c.x, true, var_0.x)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, true, arg_0.c.x)), vec3<bool>(true, true, var_0.x), 4294967295u > var_2.x)), !select(select(!vec3<bool>(var_0.x, arg_0.d.x, var_0.x), !vec3<bool>(true, arg_0.d.x, arg_0.d.x), arg_0.d.x && arg_0.c.x), vec3<bool>(arg_0.d.x, var_0.x, true), global0.x > _wgslsmith_f_op_f32(arg_2.x + -623f)), ~firstLeadingBit(_wgslsmith_div_u32(1u, 1u)) <= abs(abs(u_input.a)));
    return Struct_1(select(vec4<i32>(abs(_wgslsmith_add_i32(var_1, -17094i)), _wgslsmith_div_i32(var_1, max(arg_0.a.x, 13549i)), arg_0.a.x, ~reverseBits(arg_1.x)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-35260i, arg_0.a.x, 0i, 1i) << (vec4<u32>(6114u, 35065u, var_2.x, u_input.b) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-32780i, 2147483647i, 0i, arg_0.a.x), vec4<i32>(-42121i, arg_1.x, 9897i, -60933i)), reverseBits(vec4<i32>(-1i, -12094i, arg_0.a.x, -1i))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_1, 2147483647i, var_1, var_1), vec4<i32>(20001i, 56490i, arg_1.x, -2147483647i) | vec4<i32>(0i, arg_1.x, var_1, -2147483647i), countOneBits(vec4<i32>(-1i, arg_0.a.x, var_1, var_1))), false), false), arg_1, vec2<bool>(var_1 <= (arg_1.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, -5372i, var_1, arg_1.x), vec4<i32>(arg_0.a.x, var_1, var_1, arg_1.x))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 3>();
    var var_0 = Struct_1(vec4<i32>(17077i, ~16354i, -91774i, 13644i) << (max(~vec4<u32>(88568u, 1u, 14492u, 0u), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.b, 29215u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, 0u, 1u))) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_sub_vec3_i32(-vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_mod_i32(-18538i, -2147483647i), 26630i, -2147483647i))), vec2<bool>(true, false));
    var_0 = func_4(Struct_2(var_0.a.xw >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1907f)) + 974f), var_0.c, vec2<bool>(!(!var_0.c.x), var_0.c.x)), var_0.a.zzw, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(800f, -400f, global0.x, global0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(min(global0.x, 1030f)), _wgslsmith_f_op_f32(func_1(0u, u_input.b, Struct_1(vec4<i32>(11191i, -3909i, var_0.a.x, var_0.a.x), var_0.b, vec2<bool>(var_0.c.x, var_0.c.x)))), -175f, _wgslsmith_f_op_f32(global0.x * global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 1463f, -217f, 337f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 676f, 1545f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(183f, global0.x, 1886f, -710f)))))));
    let var_1 = !vec4<bool>(!var_0.c.x, all(vec4<bool>(true, true, true, true)), true, !all(select(vec4<bool>(true, var_0.c.x, true, true), vec4<bool>(false, true, var_0.c.x, true), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true))));
    var var_2 = vec3<u32>(countOneBits(u_input.a), ~_wgslsmith_div_u32(max(~0u, ~1965u), _wgslsmith_add_u32(_wgslsmith_mult_u32(25251u, u_input.b), 69868u)), countOneBits(94034u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(global0.zy)), _wgslsmith_f_op_vec2_f32(round(global0.yz))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.xz) * global0.yz) - vec2<f32>(_wgslsmith_f_op_f32(select(-947f, 120f, false)), 1150f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.zx) - _wgslsmith_f_op_vec2_f32(floor(global0.xw))) + _wgslsmith_f_op_vec2_f32(global0.zz - global0.zx)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(global0.yx)), global0.wz))))), ~(~firstLeadingBit(vec2<u32>(1u, var_2.x))) ^ var_2.xz, func_2(true, _wgslsmith_dot_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(var_2.x, u_input.b, u_input.b, var_2.x))), vec4<u32>(1u, select(u_input.a, u_input.a, var_0.c.x), 4810u, ~1u))));
}

