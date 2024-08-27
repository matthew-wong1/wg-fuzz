struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> vec3<f32> {
    var var_0 = Struct_2(arg_0.b.x, !arg_0.c, vec2<bool>(select(false, arg_0.c, true), true != !(!arg_2)), select(select(select(!vec4<bool>(arg_0.c, true, arg_2, true), vec4<bool>(arg_2, true, true, arg_2), vec4<bool>(arg_0.c, false, false, arg_0.c)), select(select(vec4<bool>(arg_0.c, false, false, false), vec4<bool>(false, true, false, arg_2), vec4<bool>(arg_0.c, false, true, true)), !vec4<bool>(arg_2, arg_0.c, true, false), vec4<bool>(false, arg_0.c, arg_0.c, arg_2)), false), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(arg_0.c, false, arg_0.c, false), true), vec4<bool>(arg_2, false, arg_0.c, true), false), select(select(vec4<bool>(true, arg_2, true, true), vec4<bool>(false, false, false, false), arg_2), select(vec4<bool>(true, false, false, arg_0.c), vec4<bool>(true, true, false, true), vec4<bool>(arg_2, true, arg_0.c, arg_0.c)), vec4<bool>(true, arg_2, true, true)), !arg_0.c != (arg_2 | arg_0.c)), arg_0.c));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(u_input.a.x) ^ firstLeadingBit(min(u_input.a.x, u_input.a.x)), 58085u << (~_wgslsmith_mult_u32(u_input.a.x, 106825u) % 32u), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), 1u), ~(~((vec4<u32>(u_input.a.x, 44854u, u_input.a.x, u_input.a.x) | vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)) ^ vec4<u32>(41780u, 0u, u_input.a.x, 32603u))));
    var var_2 = 4130u;
    var_2 = abs(var_1.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-arg_0.b);
    return vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), arg_0.b.x, 1000f);
}

fn func_4(arg_0: vec3<f32>) -> i32 {
    let var_0 = Struct_1(-1i, -1849f, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(269f + _wgslsmith_f_op_f32(sign(arg_0.x))))), arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1107f)));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(select(-270f, _wgslsmith_div_f32(667f, _wgslsmith_div_f32(-1187f, 1607f)), _wgslsmith_f_op_f32(arg_0.x * 466f) <= _wgslsmith_div_f32(var_0.c.x, arg_0.x)))))));
    var var_3 = u_input.a.x;
    let var_4 = (vec2<i32>(-1i) * -max(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a, var_0.a), vec2<i32>(var_0.a, var_0.a)), -vec2<i32>(var_0.a, var_0.a))) << (~select(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), countOneBits(u_input.a)), u_input.a, true) % vec2<u32>(32u));
    return abs(firstTrailingBit(var_4.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * var_0.b), var_0.c.x, -466f));
    var var_2 = _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0.a, abs(~var_0.a), max(_wgslsmith_sub_i32(13963i, arg_0.a), select(-2147483647i, -94205i, true)), arg_0.a)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, -1i, ~_wgslsmith_div_i32(19371i, var_0.a), var_0.a), firstLeadingBit(vec4<i32>(-21502i, var_0.a, arg_0.a, arg_0.a)) & _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, var_0.a, 1i), ~vec4<i32>(arg_0.a, arg_0.a, 12297i, 13068i))));
    var_0 = arg_0;
    var var_3 = firstTrailingBit(var_0.a) ^ (abs(-(-1i >> (arg_1.x % 32u))) | -(0i & var_0.a));
    return arg_0.a;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    return func_5(Struct_1(func_4(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(vec2<i32>(-2147483647i, -2147483647i), arg_0, true), 1i, true))), -1105f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(249f, -147f), _wgslsmith_f_op_f32(f32(-1f) * -1288f), _wgslsmith_f_op_f32(trunc(arg_0.x))))), vec4<u32>(~_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(17821u, u_input.a.x)), countOneBits(u_input.a.x), 19941u, abs(111716u) >> (max(~29956u, u_input.a.x) % 32u)));
}

fn func_1() -> u32 {
    var var_0 = Struct_3(vec2<i32>(~(func_2(vec2<f32>(-1076f, -947f)) & _wgslsmith_div_i32(-38183i, -18696i)), 13589i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(729f, -1464f)))), all(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), any(vec4<bool>(false, true, false, true))), vec2<bool>(true, true))));
    var_0 = Struct_3(min(-vec2<i32>(-3399i, ~var_0.a.x), var_0.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-469f)) - _wgslsmith_f_op_f32(-var_0.b.x))), 216f), !(!var_0.c));
    let var_1 = !(!((var_0.c & true) && !(!var_0.c)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(true || (func_1() < u_input.a.x), false);
    var_0 = select(select(select(vec2<bool>(var_0.x, any(vec3<bool>(var_0.x, var_0.x, true))), vec2<bool>(true, true), !vec2<bool>(false, var_0.x)), select(vec2<bool>(u_input.a.x > 1u, true), vec2<bool>(var_0.x, true), true | !var_0.x), any(!vec3<bool>(true, var_0.x, true)) || false), !(!(!(!vec2<bool>(var_0.x, var_0.x)))), any(select(vec4<bool>(var_0.x, any(vec4<bool>(false, true, false, false)), select(var_0.x, var_0.x, var_0.x), true), !(!vec4<bool>(var_0.x, true, true, false)), true)));
    var_0 = vec2<bool>(!select(any(select(vec2<bool>(false, var_0.x), vec2<bool>(false, true), vec2<bool>(true, false))), var_0.x | var_0.x, true), true);
    var_0 = !(!select(select(vec2<bool>(false, true), select(vec2<bool>(var_0.x, true), vec2<bool>(false, true), var_0.x), !var_0.x), vec2<bool>(var_0.x || true, !var_0.x), var_0.x));
    var_0 = select(select(select(select(!vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), !var_0.x), vec2<bool>(false, true), vec2<bool>(all(vec4<bool>(false, false, false, var_0.x)), true)), !(!select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), var_0.x)), vec2<bool>(true, var_0.x)), select(select(vec2<bool>(25470u >= u_input.a.x, any(vec3<bool>(true, var_0.x, true))), select(!vec2<bool>(false, var_0.x), select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true), vec2<bool>(true, false)), !vec2<bool>(var_0.x, var_0.x)), !vec2<bool>(false, var_0.x)), !(!select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), true)), !(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -15551i, -2147483647i, -48401i), vec4<i32>(70851i, 1i, 49767i, -1i)) <= -1i)), true);
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(27078i << (u_input.a.x % 32u), 1i, 0i << (u_input.a.x % 32u), 1i)), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-530f, 1f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1377f, -1000f) + 438f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(335f, _wgslsmith_f_op_f32(-595f * -623f), -2485f), vec3<f32>(_wgslsmith_f_op_f32(1206f + -1516f), _wgslsmith_f_op_f32(-452f + 1914f), _wgslsmith_f_op_f32(max(1407f, 1276f))), var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-337f))), _wgslsmith_f_op_f32(min(1621f, -1171f)), _wgslsmith_f_op_f32(f32(-1f) * -115f))));
    var_0 = select(vec2<bool>(true, any(vec3<bool>(select(var_0.x, true, true), true, false))), !select(vec2<bool>(true, true), !vec2<bool>(var_0.x, true), ~4294967295u == u_input.a.x), select(select(!select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false)), vec2<bool>(all(vec3<bool>(var_0.x, var_0.x, false)), 0u > u_input.a.x), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), true), vec2<bool>(var_0.x, true), var_0.x)), vec2<bool>(true, _wgslsmith_f_op_f32(var_1.c.x + -388f) < var_1.c.x), !all(vec2<bool>(var_0.x, true))));
    var_0 = vec2<bool>(all(select(vec2<bool>(-1317f <= var_1.c.x, select(true, var_0.x, var_0.x)), select(!vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, var_0.x), var_0.x & false), !(!vec2<bool>(var_0.x, true)))), !var_0.x);
    var_0 = vec2<bool>((true | var_0.x) != true, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, select(vec2<u32>(firstLeadingBit(u_input.a.x), 1u), u_input.a, all(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)))) >> (u_input.a % vec2<u32>(32u)), var_1.a);
}

