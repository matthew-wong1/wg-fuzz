struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<f32> {
    var var_0 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(5215u, _wgslsmith_dot_vec4_u32(vec4<u32>(63191u, 0u, 38074u, 1u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.d.x, u_input.d.x)), 1u, u_input.c.x), ~(~(vec4<u32>(u_input.c.x, 35970u, u_input.d.x, 2728u) | vec4<u32>(u_input.c.x, 37788u, u_input.d.x, u_input.c.x))));
    var_0 = vec4<u32>(~var_0.x, u_input.c.x, var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(var_0.x) | u_input.c.x, (var_0.x ^ var_0.x) << (var_0.x % 32u), 60639u, var_0.x), ~(~vec4<u32>(53247u, 61120u, var_0.x, var_0.x))));
    let var_1 = all(!vec4<bool>(false, true, all(vec3<bool>(true, true, true)), true));
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(37274u, var_0.x, abs(5064u)), u_input.c ^ _wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(u_input.d.x), select(25988u, u_input.d.x, var_1), abs(9717u)), ~var_0.wwy));
    var_2 = vec3<u32>(0u, _wgslsmith_sub_u32(4294967295u ^ abs(var_0.x << (0u % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 59495u, u_input.d.x, var_2.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 9531u, var_2.x, 1u), vec4<u32>(1u, var_0.x, var_0.x, 4294967295u))), ~max(vec4<u32>(u_input.d.x, var_2.x, var_0.x, u_input.c.x), vec4<u32>(21581u, u_input.c.x, 105019u, var_2.x)))), 57529u);
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(891f * -1570f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -552f)))), 120f);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = !all(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_2.a, true, true, arg_2.a), arg_2.a), !vec4<bool>(false, arg_2.a, true, true), vec4<bool>(false, true, false, arg_2.a)));
    var var_1 = !vec4<bool>(true && (false || any(vec4<bool>(arg_2.b, true, arg_2.a, arg_2.b))), arg_2.a, arg_2.b, true);
    var_0 = any(!select(vec4<bool>(all(var_1.yzy), select(arg_2.a, var_1.x, var_1.x), any(vec4<bool>(true, false, var_1.x, arg_2.b)), true), !(!vec4<bool>(arg_2.b, false, true, false)), select(select(vec4<bool>(false, true, true, arg_2.b), vec4<bool>(false, true, var_1.x, var_1.x), false), !vec4<bool>(false, true, false, var_1.x), vec4<bool>(false, true, var_1.x, true))));
    var_1 = select(!select(vec4<bool>(!var_1.x, var_1.x && false, var_1.x && arg_2.a, var_1.x), !select(vec4<bool>(true, arg_2.b, false, true), vec4<bool>(var_1.x, true, arg_2.a, false), vec4<bool>(true, arg_2.b, arg_2.a, arg_2.a)), select(!vec4<bool>(var_1.x, false, var_1.x, arg_2.a), vec4<bool>(true, arg_2.b, var_1.x, false), false)), select(!select(!vec4<bool>(arg_2.a, var_1.x, arg_2.a, arg_2.a), !vec4<bool>(false, false, true, var_1.x), any(vec2<bool>(var_1.x, var_1.x))), vec4<bool>(select(arg_2.a & arg_2.a, !var_1.x, u_input.c.x != arg_0.x), arg_1.x == 883f, var_1.x, true), ~arg_2.c.x >= countOneBits(-u_input.b.x)), select(select(select(!vec4<bool>(var_1.x, arg_2.b, true, true), vec4<bool>(arg_2.a, true, true, true), select(vec4<bool>(arg_2.b, arg_2.a, var_1.x, true), vec4<bool>(arg_2.a, false, false, var_1.x), false)), vec4<bool>(var_1.x, !var_1.x, false & arg_2.a, any(vec3<bool>(false, var_1.x, var_1.x))), !vec4<bool>(true, var_1.x, true, true)), select(!vec4<bool>(false, var_1.x, true, var_1.x), select(!vec4<bool>(var_1.x, false, true, arg_2.a), vec4<bool>(false, var_1.x, var_1.x, true), 45952u > arg_0.x), true), vec4<bool>(true, false, arg_0.x == ~arg_0.x, select(true, var_1.x, arg_2.a))));
    let var_2 = 29848u;
    return select(vec4<bool>(false, false, false, any(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, arg_2.a), vec4<bool>(true, false, true, true), vec4<bool>(var_1.x, false, true, arg_2.a)))), !select(vec4<bool>(false, true, any(vec4<bool>(false, var_1.x, var_1.x, arg_2.a)), any(var_1.wx)), select(vec4<bool>(false, false, var_1.x, false), select(vec4<bool>(arg_2.a, var_1.x, var_1.x, false), vec4<bool>(false, false, false, var_1.x), vec4<bool>(true, true, false, false)), any(vec2<bool>(var_1.x, var_1.x))), true), select(!(!select(vec4<bool>(arg_2.b, var_1.x, false, true), vec4<bool>(false, true, true, true), true)), select(select(vec4<bool>(true, arg_2.b, var_1.x, true), select(vec4<bool>(true, arg_2.b, false, true), vec4<bool>(arg_2.b, true, false, arg_2.b), true), select(vec4<bool>(arg_2.b, true, true, var_1.x), vec4<bool>(true, var_1.x, arg_2.b, false), var_1.x)), select(!vec4<bool>(arg_2.a, false, arg_2.b, arg_2.b), vec4<bool>(true, var_1.x, arg_2.b, var_1.x), !arg_2.a), true), -29654i <= _wgslsmith_add_i32(1i, _wgslsmith_add_i32(arg_2.c.x, 39729i))));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(any(func_4(u_input.c, _wgslsmith_f_op_vec2_f32(func_3()), arg_0)), false, vec2<i32>(-1i) * -(~(u_input.b.yy ^ vec2<i32>(31265i, 37215i))), arg_0.e, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e.x, 195f, arg_0.d.x) - _wgslsmith_div_vec3_f32(arg_0.d, arg_0.d))), _wgslsmith_f_op_vec3_f32(arg_0.d * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, arg_0.e.x, 837f)))));
    let var_1 = var_0.c.x;
    let var_2 = ~countOneBits(u_input.d.x | 0u);
    let var_3 = Struct_1(arg_0.b, select(var_0.b, true, false), u_input.a.xx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(785f, var_0.d.x, -448f)), _wgslsmith_f_op_vec3_f32(-var_0.e))) - _wgslsmith_f_op_vec3_f32(-var_0.d)) * arg_0.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.e - _wgslsmith_f_op_vec3_f32(-arg_0.e))));
    var var_4 = u_input.d;
    return vec4<bool>(false, !(!arg_0.b), var_3.b, all(func_4(~_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(3082u, 2320u, var_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.d.yy)), Struct_1(true, func_4(u_input.c, vec2<f32>(var_3.d.x, -2284f), Struct_1(true, var_0.b, vec2<i32>(-2147483647i, 0i), var_3.d, vec3<f32>(var_3.e.x, -1064f, arg_0.e.x))).x, abs(arg_0.c), _wgslsmith_f_op_vec3_f32(var_3.d * vec3<f32>(503f, 275f, var_3.e.x)), _wgslsmith_f_op_vec3_f32(-arg_0.d))).wxy));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-230f, -457f, 468f)), vec3<f32>(829f, -643f, _wgslsmith_f_op_f32(-612f - 1918f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-765f, 1073f, -1525f) * vec3<f32>(975f, 1000f, -770f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-321f, 385f, -872f)))))))));
    let var_1 = all(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, true, all(vec2<bool>(false, true)), true)), vec4<bool>(!any(vec4<bool>(false, true, true, false)), (-3893i > u_input.a.x) | (45059u > u_input.c.x), all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), !func_2(Struct_1(false, false, vec2<i32>(-1i, -53331i), var_0, var_0)))));
    let var_2 = Struct_1(347f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1062f - var_0.x) - 582f)), !var_1, max(u_input.a.wx | vec2<i32>(countOneBits(u_input.b.x), min(u_input.b.x, 24468i)), _wgslsmith_mod_vec2_i32(u_input.a.zx, min(vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_mod_vec2_i32(u_input.b.zz, vec2<i32>(u_input.a.x, -1i))))), _wgslsmith_f_op_vec3_f32(var_0 - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1116f)), var_0.x, 1439f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0)));
    var var_3 = u_input.a.x;
    var_3 = -22284i | -countOneBits(-(var_2.c.x >> (u_input.c.x % 32u)));
    return var_2;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec3<bool>(true, arg_1.a, false);
    let var_1 = firstLeadingBit(countOneBits(vec4<i32>(u_input.a.x, arg_1.c.x & _wgslsmith_add_i32(-56399i, arg_1.c.x), countOneBits(countOneBits(-1i)), u_input.b.x)));
    let var_2 = Struct_1(~(-2147483647i) == var_1.x, !(reverseBits(u_input.d.x) == u_input.c.x), var_1.ww, _wgslsmith_f_op_vec3_f32(arg_1.d + _wgslsmith_f_op_vec3_f32(exp2(arg_1.d))), _wgslsmith_f_op_vec3_f32(trunc(arg_1.e)));
    var var_3 = countOneBits(vec4<u32>(_wgslsmith_add_u32(3276u, 1u), 0u, u_input.d.x, ~(~(~47533u))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.c ^ ~reverseBits(u_input.c), func_1());
    var_0 = func_1();
    let var_1 = vec4<i32>(func_5(~vec3<u32>(u_input.d.x, 49090u, u_input.d.x), func_1()).c.x, var_0.c.x, -2147483647i, min(~(-13951i), -(~var_0.c.x))) << (vec4<u32>(12209u, u_input.c.x, _wgslsmith_div_u32(323u, ~u_input.c.x), u_input.d.x) % vec4<u32>(32u));
    var_0 = Struct_1(all(select(vec4<bool>(any(vec2<bool>(var_0.b, var_0.b)), any(vec3<bool>(var_0.a, var_0.b, false)), true, var_0.a), func_2(func_1()), func_4(vec3<u32>(1u, u_input.c.x, u_input.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(346f, var_0.d.x) * vec2<f32>(var_0.e.x, var_0.d.x)), func_1()))), func_1().b, abs(u_input.a.xz), var_0.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(-125f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_0.e.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(615f + -1498f)))) - _wgslsmith_f_op_vec3_f32(max(var_0.e, vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(152f - -1316f), var_0.d.x)))));
    var var_2 = Struct_1(true, all(func_2(Struct_1(true, var_0.b, -u_input.a.ww, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.d.x, -1904f, var_0.e.x), var_0.e)), _wgslsmith_div_vec3_f32(vec3<f32>(-234f, var_0.d.x, var_0.e.x), var_0.e)))), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.zz ^ var_1.xy, var_0.c), ~vec2<i32>(var_1.x, ~2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_f_op_f32(sign(var_0.e.x)))), _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-840f + var_0.d.x) + _wgslsmith_f_op_f32(var_0.d.x * var_0.d.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) + 550f)))), var_0.d);
    var var_3 = !var_2.a & func_2(Struct_1(any(vec3<bool>(var_2.b, true, var_0.b)) & any(vec3<bool>(true, false, true)), true && !var_2.b, u_input.a.zx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.e), var_0.e), vec3<f32>(-705f, _wgslsmith_f_op_f32(-487f + var_0.e.x), 1679f))).x;
    var_0 = Struct_1(var_0.b, var_0.a, _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(var_0.c.x, -2147483647i), ~u_input.a.ww, var_1.xx), vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-49628i, -8505i), var_1.yz)), max(var_2.c, vec2<i32>(7909i, 21846i))) | var_1.yz, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-630f + -2375f)) - -2543f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.e.x)) - func_5(vec3<u32>(1u, 98895u, u_input.c.x) << (vec3<u32>(u_input.c.x, u_input.c.x, u_input.d.x) % vec3<u32>(32u)), func_1()).e.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.e.x)))), var_0.e);
    var var_4 = vec3<bool>(true, var_2.b, true);
    let var_5 = func_5(vec3<u32>(~4294967295u, ~min(u_input.c.x, 1u), select(6644u, 59949u, _wgslsmith_f_op_f32(368f - var_2.e.x) != 1371f)), Struct_1(!(!all(vec2<bool>(var_0.b, var_2.b))), var_2.b, u_input.a.xw, vec3<f32>(_wgslsmith_f_op_f32(step(var_0.d.x, var_2.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.d.x, var_0.d.x)), _wgslsmith_f_op_f32(1894f + 881f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 979f, var_0.e.x), vec3<f32>(-286f, var_2.d.x, 591f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(1683f, -1133f, _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(firstTrailingBit(5360i), func_1().c.x, firstTrailingBit(_wgslsmith_clamp_i32(var_1.x, -2147483647i, -1i)), 68952i)), ~_wgslsmith_sub_u32(52432u, ~u_input.d.x) >> (~_wgslsmith_dot_vec3_u32(u_input.c, max(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(29621u, u_input.c.x, u_input.d.x))) % 32u));
}

