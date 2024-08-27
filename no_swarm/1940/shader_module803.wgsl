struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
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

var<private> global0: vec3<u32> = vec3<u32>(81609u, 4294967295u, 4294967295u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-145f + arg_1.b)))) - _wgslsmith_f_op_f32(step(816f, _wgslsmith_f_op_f32(exp2(arg_1.a.x)))))));
    let var_1 = max(vec4<i32>(-19718i >> (arg_0 % 32u), ~(~(-1i)), _wgslsmith_clamp_i32(0i, min(1i, firstTrailingBit(14246i)), 1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-16231i, -32566i), vec2<i32>(0i, 13395i) << (vec2<u32>(arg_0, 81209u) % vec2<u32>(32u)))), countOneBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-11006i, -1i, 4735i)), abs(i32(-1i) * -2147483647i), reverseBits(17114i << (arg_0 % 32u)), 25040i)));
    var var_2 = Struct_2(arg_1, arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a * vec2<f32>(-393f, arg_1.a.x)) * _wgslsmith_f_op_vec2_f32(trunc(arg_1.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.a.x, -1000f))), vec2<f32>(770f, arg_1.b)))), 1192f), select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), true), vec2<bool>(arg_1.b >= arg_1.b, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), !all(vec3<bool>(false, true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let var_3 = arg_1;
    var var_4 = arg_1;
    return ~max(-14648i, ~_wgslsmith_div_i32(~var_1.x, var_1.x));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    let var_0 = ~vec3<i32>(~_wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(-19i, 40400i, 32695i)), func_3(global0.x, Struct_1(_wgslsmith_f_op_vec2_f32(arg_0 * arg_0), -1415f)), -2147483647i ^ -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 12824i), vec2<i32>(1i, 5382i)));
    var var_1 = min((_wgslsmith_mult_u32(3400u, global0.x | 47225u) | max(u_input.a.x, global0.x)) & ~u_input.b.x, ~u_input.a.x);
    global0 = ~(select(~vec3<u32>(4294967295u, 4294967295u, global0.x), u_input.a, true) | (min(u_input.a << (u_input.a % vec3<u32>(32u)), u_input.a) & _wgslsmith_div_vec3_u32(abs(vec3<u32>(global0.x, 1u, 4294967295u)), u_input.a)));
    global0 = vec3<u32>(u_input.a.x, abs(min(reverseBits(_wgslsmith_mult_u32(u_input.a.x, 4294967295u)), min(116766u, 14400u) >> (_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) % 32u))), ~_wgslsmith_sub_u32(~4294967295u & _wgslsmith_mult_u32(global0.x, 3241u), ~52881u >> (u_input.b.x % 32u)));
    var_1 = _wgslsmith_dot_vec2_u32(~((vec2<u32>(27659u, u_input.b.x) | reverseBits(vec2<u32>(global0.x, 0u))) & ~(~vec2<u32>(u_input.b.x, 0u))), ~u_input.a.zz);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1108f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(round(-227f))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<u32>) -> vec3<u32> {
    global0 = vec3<u32>(42515u, ~arg_2.x, 10711u);
    global0 = ~select(abs((u_input.a << (u_input.a % vec3<u32>(32u))) ^ ~vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)), ~((vec3<u32>(69670u, 66988u, arg_2.x) >> (vec3<u32>(0u, global0.x, 34098u) % vec3<u32>(32u))) >> (~u_input.a % vec3<u32>(32u))), vec3<bool>(!any(vec4<bool>(false, false, true, true)), true || select(true, true, false), true));
    let var_0 = true;
    var var_1 = Struct_2(Struct_1(arg_0.xz, 1240f), _wgslsmith_sub_u32(select(1u, u_input.b.x, !var_0), _wgslsmith_add_u32(global0.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(10294u, arg_2.x), ~4294967295u))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zx * arg_0.yy))), _wgslsmith_f_op_f32(exp2(arg_0.x))), select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), !vec2<bool>(false, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), var_0)), select(vec2<bool>(true, false), select(vec2<bool>(var_0, false), vec2<bool>(true, false), false), true || var_0), var_0), select(!(!vec2<bool>(var_0, var_0)), !(!vec2<bool>(false, var_0)), all(vec4<bool>(var_0, true, true, var_0))), vec2<bool>(true, !var_0)));
    var_1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x)), 1718f), _wgslsmith_f_op_f32(-var_1.c.a.x)), ~select(1u, 44226u, select(true, any(vec2<bool>(var_1.d.x, var_0)), false)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * 1241f), _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.b, var_1.a.a.x) - _wgslsmith_f_op_vec2_f32(var_1.c.a + vec2<f32>(819f, 2053f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1336f, _wgslsmith_f_op_f32(-arg_0.x)))), var_1.d);
    return u_input.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>) -> vec4<bool> {
    global0 = func_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(591f, arg_0.x, 1000f, arg_0.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(503f)), _wgslsmith_f_op_f32(func_2(arg_0.zx))), reverseBits(~(~select(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, 23482u), false))));
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1456f))), _wgslsmith_f_op_f32(abs(-246f))), _wgslsmith_f_op_f32(-arg_0.x));
    var var_1 = select(select(vec3<i32>(_wgslsmith_div_i32(-1i, ~1i), ~2147483647i << (_wgslsmith_mod_u32(global0.x, 1u) % 32u), ~_wgslsmith_add_i32(-58742i, -1i)), vec3<i32>(select(0i, -2147483647i, any(vec2<bool>(arg_1.x, arg_1.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(76695i, 44762i)), countOneBits(vec2<i32>(-2569i, -2633i))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, -51133i), -51424i, 1i)), arg_1.x), vec3<i32>(-2147483647i, 1i, _wgslsmith_add_i32(~1i, -1i)), arg_1.zyy);
    return vec4<bool>(var_1.x > 2147483647i, !select(false, !arg_1.x, all(arg_1.wyz)), false, any(arg_1.wxz));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(firstLeadingBit(41281u), 1u, ~global0.x);
    global0 = ~abs(firstLeadingBit(vec3<u32>(select(18318u, 133129u, true), global0.x, global0.x)));
    global0 = ~vec3<u32>(65857u, 0u, reverseBits(7906u) ^ _wgslsmith_mod_u32(1u, firstTrailingBit(1u)));
    let var_0 = (u_input.a ^ ~firstTrailingBit(vec3<u32>(global0.x, 105486u, u_input.a.x))) & vec3<u32>(countOneBits(u_input.a.x) & u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), u_input.b.x), global0.x);
    var var_1 = any(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true)), func_1(vec3<f32>(-385f, 1000f, -1378f), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)), func_1(vec3<f32>(-257f, -500f, 796f), func_1(vec3<f32>(351f, 1462f, 1852f), vec4<bool>(true, false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~var_0.zy, abs(vec2<u32>(4289u, var_0.x) >> (_wgslsmith_add_vec2_u32(vec2<u32>(70252u, u_input.a.x), global0.yy) % vec2<u32>(32u)))));
}

