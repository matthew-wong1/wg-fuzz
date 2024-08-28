struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    var var_0 = arg_2;
    var var_1 = u_input.d;
    let var_2 = ~(~vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(29461u, 1u, u_input.d, u_input.d), vec4<u32>(35112u, 36144u, 75773u, arg_2.d.x), vec4<bool>(arg_0, arg_0, arg_1.x, arg_1.x)), vec4<u32>(0u, 54313u, 0u, 15666u)), reverseBits(abs(77366u))));
    let var_3 = arg_2;
    return max(arg_3.x, ~(~var_0.d.x));
}

fn func_4(arg_0: u32, arg_1: u32) -> i32 {
    let var_0 = u_input.e.x;
    let var_1 = select(!vec4<bool>(all(vec4<bool>(true, true, true, true)), !any(vec2<bool>(false, true)), all(vec3<bool>(true, true, true)), select(true, false, true)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, true), true), select(vec4<bool>(firstLeadingBit(1u) < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.d, arg_0), vec4<u32>(arg_0, 6010u, 0u, arg_1)), true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), (arg_1 == u_input.a.x) || false), !(true == any(vec4<bool>(true, true, true, true)))));
    var var_2 = select(vec4<i32>(u_input.b.x, u_input.e.x, abs(min(var_0, 2147483647i)), abs(-2147483647i)) | vec4<i32>(1i, abs(2147483647i) & _wgslsmith_div_i32(5623i, u_input.e.x), select(~var_0, ~u_input.c, all(var_1)), 34845i), reverseBits(reverseBits(-firstTrailingBit(vec4<i32>(var_0, -8489i, -3155i, u_input.b.x)))), !vec4<bool>(all(var_1.wz) | true, !var_1.x, false, !(false && var_1.x)));
    var var_3 = any(!var_1);
    let var_4 = false;
    return -abs(firstLeadingBit(abs(-var_2.x)));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<f32>, arg_3: vec2<u32>) -> vec4<i32> {
    let var_0 = Struct_1(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x), arg_2.x, arg_2.x), vec4<i32>(select(_wgslsmith_clamp_i32(0i, 22941i, 0i), -1i, any(vec4<bool>(true, true, false, false))), u_input.e.x, _wgslsmith_add_i32(u_input.b.x, func_4(func_3(true, vec2<bool>(true, true), Struct_1(vec4<f32>(1063f, 329f, -271f, 144f), vec4<i32>(u_input.b.x, u_input.b.x, 1i, -73944i), arg_2, arg_3), vec2<u32>(53370u, 1u)), countOneBits(arg_0.x))), -29021i), arg_2, firstLeadingBit(vec2<u32>(3919u, ~arg_1)));
    var var_1 = var_0.a;
    var_1 = _wgslsmith_f_op_vec4_f32(abs(var_0.a));
    var_1 = _wgslsmith_f_op_vec4_f32(-var_0.a);
    var_1 = var_0.a;
    return vec4<i32>(~_wgslsmith_mod_i32(var_0.b.x >> (u_input.d % 32u), _wgslsmith_dot_vec3_i32(var_0.b.yww, vec3<i32>(u_input.e.x, u_input.e.x, u_input.b.x))), ((-u_input.b.x << (0u % 32u)) & -_wgslsmith_add_i32(u_input.e.x, u_input.b.x)) & (1i ^ countOneBits(_wgslsmith_mult_i32(2147483647i, u_input.e.x))), u_input.c ^ _wgslsmith_clamp_i32(~u_input.b.x & _wgslsmith_mod_i32(u_input.b.x, -34061i), max(_wgslsmith_add_i32(-2147483647i, u_input.e.x), func_4(arg_0.x, arg_1)), _wgslsmith_dot_vec2_i32(var_0.b.zy, var_0.b.xw)), u_input.b.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1449f, 930f, 2012f, arg_0.x) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, arg_0.x, 1498f, arg_0.x), vec4<f32>(114f, -738f, arg_0.x, arg_0.x)))))), ~select(func_2(u_input.a, 63499u, arg_0, vec2<u32>(u_input.a.x, u_input.d)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, 0i, -2147483647i, 1i), vec4<i32>(2147483647i, 1i, arg_1, -9663i)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(43809i, u_input.e.x)), 1i, ~34215i, -48385i), false), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, arg_0.x, 732f), vec3<f32>(arg_0.x, 1302f, 327f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -930f, arg_0.x) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, -1181f, -193f)))))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1564f)))), _wgslsmith_f_op_f32(f32(-1f) * -749f), 562f)), vec2<u32>(u_input.d, func_3(true, select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(vec4<f32>(-361f, -1312f, 336f, -895f), select(vec4<i32>(-5530i, u_input.b.x, 25380i, 1i), vec4<i32>(8765i, u_input.e.x, 0i, u_input.b.x), vec4<bool>(false, false, false, false)), _wgslsmith_f_op_vec3_f32(-arg_0), u_input.a), vec2<u32>(32818u, 6474u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(var_0.a)), -_wgslsmith_mult_vec4_i32(~(-vec4<i32>(var_0.b.x, var_0.b.x, 1i, u_input.b.x)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_0.b.x, 0i, 11150i), vec4<i32>(2147483647i, arg_1, var_0.b.x, u_input.b.x), vec4<i32>(-1i, 8003i, u_input.c, 0i))), arg_0, ~(reverseBits(u_input.a) & ~(~var_0.d)));
    let var_2 = arg_1 >= _wgslsmith_dot_vec4_i32(var_1.b, -_wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.x, 2279i, u_input.e.x, arg_1), var_0.b) ^ (min(vec4<i32>(arg_1, -1i, var_0.b.x, var_0.b.x), vec4<i32>(var_1.b.x, var_1.b.x, arg_1, 2147483647i)) & vec4<i32>(-9861i, -11362i, var_0.b.x, 17143i)));
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(102f)))) - 1255f), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(ceil(-694f))), _wgslsmith_sub_vec4_i32(-var_1.b, vec4<i32>(1i, ~72539i, -2147483647i, u_input.b.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1022f) * 372f), _wgslsmith_div_f32(1257f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x + arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -2656f)))), vec2<u32>(var_0.d.x, ~35371u));
    var var_4 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1161f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1618f)), 1438f, all(select(vec2<bool>(var_2, true), vec2<bool>(true, true), vec2<bool>(var_2, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -907f))) * _wgslsmith_f_op_f32(var_1.a.x + -1000f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-1564f, 121f, var_0.a.x), var_1.a.zyy))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.c))))))));
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(countOneBits(select(~(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, -26249i) >> (vec4<u32>(16179u, u_input.d, 42389u, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, u_input.c)), func_1(vec3<f32>(-261f, 927f, 382f), 2147483647i)), (u_input.b.x < 59401i) && true)), _wgslsmith_add_vec4_i32(-func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(3675u, 0u), u_input.a), u_input.d, vec3<f32>(1000f, 1637f, -888f), vec2<u32>(42553u, u_input.a.x)), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 73145i, -6563i, u_input.c), -vec4<i32>(u_input.c, -612i, u_input.e.x, 49584i)))), all(!vec3<bool>(any(vec4<bool>(true, false, true, true)), false, true)));
    var var_1 = vec4<bool>(true, !all(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), true, false);
    var_0 = vec4<i32>(-44925i, ~(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.x, u_input.c), ~1i) | abs(func_1(vec3<f32>(1164f, -1078f, -1439f), -2147483647i).x)), var_0.x, _wgslsmith_div_i32(-u_input.c, -2147483647i));
    var_0 = vec4<i32>(countOneBits(var_0.x), u_input.e.x, ~(-11486i), -30252i) ^ -select(select(~vec4<i32>(0i, 5111i, var_0.x, -14799i), _wgslsmith_div_vec4_i32(vec4<i32>(-50492i, 0i, -1i, -40084i), vec4<i32>(1i, u_input.c, -1i, var_0.x)), vec4<bool>(var_1.x, false, var_1.x, var_1.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.zw, u_input.b.xx), _wgslsmith_sub_i32(var_0.x, var_0.x), abs(-41992i), -u_input.b.x), vec4<bool>(all(vec4<bool>(var_1.x, var_1.x, var_1.x, true)), true, all(vec4<bool>(false, true, var_1.x, var_1.x)), true));
    var_1 = vec4<bool>(false, true, false, true);
    var_0 = vec4<i32>(7448i, func_2(~min(u_input.a, u_input.a), u_input.d, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-759f, 322f, 883f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-724f, -330f, 609f)))), u_input.a).x ^ _wgslsmith_div_i32(1i, var_0.x), min(_wgslsmith_sub_i32(~u_input.b.x, 1i), u_input.c), abs(-404i));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1668f, -402f, _wgslsmith_f_op_f32(f32(-1f) * -476f), 1700f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-130f, -940f)) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1f, 1f), -753f, true))), -max(u_input.c, _wgslsmith_add_i32(var_0.x, u_input.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1015f, -338f, 1003f, 2045f), vec4<f32>(1f, 1f, 1f, 1f))))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2109f, _wgslsmith_f_op_f32(402f + 1335f), _wgslsmith_f_op_f32(sign(535f)), _wgslsmith_f_op_f32(f32(-1f) * -363f))))));
}

