struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    let var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_div_f32(-576f, var_0.a)), 2147483647i, u_input.c.zz);
    var var_2 = 3335f;
    var_2 = var_1.a;
    global0 = arg_2;
    return ~max(arg_1.c.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_1.c.x | var_0.c.x, ~0u), 4294967295u));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_1(1461f, select(0i, 14090i, arg_1 & !arg_1), select(vec2<u32>(u_input.b, _wgslsmith_mod_u32(~u_input.b, 47897u)), vec2<u32>(countOneBits(0u), 57373u) << ((~arg_2.c & ~arg_2.c) % vec2<u32>(32u)), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), !global0.xw), any(select(vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(false, arg_1, global0.x, global0.x), arg_1)))));
    global0 = vec4<bool>(!any(vec2<bool>(global0.x, true)), !(arg_2.c.x == _wgslsmith_clamp_u32(4294967295u, 0u, u_input.a)), false, !(_wgslsmith_f_op_f32(exp2(arg_2.a)) >= 245f));
    let var_1 = u_input.c;
    let var_2 = Struct_1(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-808f - var_0.a)))), arg_2.b, _wgslsmith_div_vec2_u32(~vec2<u32>(38756u, 28238u), ~vec2<u32>(91461u, var_1.x)) >> (~_wgslsmith_mod_vec2_u32(var_0.c, vec2<u32>(u_input.c.x, 22987u)) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_mod_u32(~78366u, var_1.x);
    return var_2.b << (~firstTrailingBit(var_2.c.x) % 32u);
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: i32) -> vec4<f32> {
    var var_0 = func_4(-37003i, global0.x, Struct_1(-2010f, -2147483647i, ~firstTrailingBit(vec2<u32>(28951u, u_input.a)) >> (vec2<u32>(func_3(vec3<i32>(-10733i, arg_0.x, 2147483647i), Struct_1(365f, arg_2, u_input.c.zz), vec4<bool>(global0.x, false, true, true)), u_input.a) % vec2<u32>(32u))));
    var var_1 = 53559u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1806f), _wgslsmith_f_op_f32(sign(-961f)), global0.x))))), _wgslsmith_mod_i32(arg_0.x, _wgslsmith_div_i32(abs(arg_2 >> (u_input.a % 32u)), arg_2 >> (countOneBits(42503u) % 32u))), firstLeadingBit(reverseBits(vec2<u32>(~31258u, 0u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1444f, var_2.a, 138f, var_2.a) * vec4<f32>(1000f, var_2.a, 714f, var_2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(759f, var_2.a, -1313f, 644f)), !global0.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1504f, -1188f, -1428f, var_2.a) + vec4<f32>(-1089f, var_2.a, 1000f, var_2.a)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a, 840f, 271f, 1087f), vec4<f32>(var_2.a, var_2.a, -689f, 1369f), false))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -879f) + _wgslsmith_f_op_f32(-1000f - -492f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-756f)), var_2.a), var_2.a, var_2.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), var_2.a, _wgslsmith_f_op_f32(245f - -511f), var_2.a))));
    var var_4 = 1u;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-638f, var_3.x, var_2.a, var_2.a) * vec4<f32>(var_2.a, var_2.a, 521f, 974f)))))), _wgslsmith_f_op_vec4_f32(-var_3), !vec4<bool>(-726f <= var_2.a, 63387u <= arg_1, true, true))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a * 589f) * var_2.a), var_3.x, var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1110f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(993f, var_3.x, 832f, 1000f), vec4<f32>(var_2.a, var_3.x, var_3.x, 840f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -1737f, var_3.x, -806f)))));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-924f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(487f))), _wgslsmith_f_op_f32(f32(-1f) * -918f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(641f - _wgslsmith_f_op_f32(1000f + 1455f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(1i, 2147483647i), u_input.c.x, 0i)))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-275f, -1007f, -398f, -1177f))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(select(_wgslsmith_mult_i32(~0i, -1i), countOneBits(0i), _wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(-var_0.x)), ~firstLeadingBit(_wgslsmith_sub_i32(7450i, 2147483647i))), ~(~_wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(u_input.c.x, 4294967295u))), countOneBits(select(select(2147483647i, _wgslsmith_mod_i32(1i, 1i), all(global0.yzw)), max(_wgslsmith_dot_vec2_i32(vec2<i32>(22576i, 0i), vec2<i32>(-2147483647i, 0i)), ~(-2147483647i)), global0.x)))).x;
    global0 = select(!select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(global0.x, true, false, false), vec4<bool>(false, global0.x, global0.x, global0.x)), vec4<bool>(global0.x, global0.x, true, true), global0.x), select(!vec4<bool>(false, global0.x, false, false), !vec4<bool>(false, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, false, global0.x, global0.x))), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, true), !vec4<bool>(global0.x, true, false, global0.x))), !vec4<bool>(select(true, false, select(global0.x, global0.x, global0.x)), global0.x, any(select(vec3<bool>(global0.x, true, global0.x), global0.wwz, global0.wxw)), global0.x), all(vec3<bool>(all(!vec4<bool>(global0.x, true, true, true)), true, global0.x)));
    global0 = !(!vec4<bool>(global0.x, !all(vec4<bool>(global0.x, true, global0.x, global0.x)), (global0.x | global0.x) & false, any(global0.yw) & all(vec4<bool>(true, global0.x, global0.x, false))));
    global0 = vec4<bool>(global0.x, global0.x, false, true);
    return -1i;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> vec2<bool> {
    return !vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(433f)) - arg_2.a) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_1, 555f)), _wgslsmith_f_op_f32(-arg_2.a))), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~abs(abs(vec4<u32>(u_input.a, 2669u, 29284u, 4294967295u))));
    let var_1 = vec4<bool>(any(select(global0.yy, global0.wy, func_5(func_1(), _wgslsmith_f_op_f32(-2030f * 782f), Struct_1(1898f, 30753i, var_0.xx)))), all(!vec3<bool>(!global0.x, all(vec4<bool>(false, global0.x, false, false)), global0.x)), true, false);
    let var_2 = Struct_1(-1867f, 1i ^ -(_wgslsmith_dot_vec3_i32(vec3<i32>(-7901i, -18909i, -17734i), vec3<i32>(-1i, -1i, -1i)) << (1u % 32u)), firstLeadingBit(~(~vec2<u32>(20969u, 19145u) & vec2<u32>(4294967295u, var_0.x))));
    var var_3 = Struct_1(1164f, var_2.b, var_2.c);
    var_3 = var_2;
    global0 = !var_1;
    global0 = vec4<bool>(any(!var_1), global0.x, any(func_5(abs(~18290i), _wgslsmith_f_op_f32(-var_2.a), var_2)), !(!(!(var_3.b < var_3.b))));
    var var_4 = vec2<bool>(func_5(_wgslsmith_mult_i32(1i, 1i) & (i32(-1i) * -var_2.b), var_3.a, var_2).x, global0.x);
    global0 = select(select(vec4<bool>(var_4.x, all(var_1.xw), var_4.x, !global0.x), !vec4<bool>(false, !global0.x, all(vec3<bool>(var_1.x, true, global0.x)), true), var_4.x), var_1, vec4<bool>(var_1.x, any(select(select(vec4<bool>(false, var_1.x, false, global0.x), var_1, global0.x), vec4<bool>(false, false, true, var_1.x), select(var_1, vec4<bool>(global0.x, true, var_4.x, false), true))), true, any(vec4<bool>(true, false, true, var_4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-792f, -819f, var_3.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 835f, 253f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-457f, 2924f, var_3.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-826f, 1099f, var_2.a) + vec3<f32>(776f, 1000f, var_3.a)))))), vec3<i32>(var_2.b, ~(~var_2.b), min(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-15176i, 2147483647i, 0i, var_2.b), vec4<i32>(2147483647i, var_2.b, 1i, 0i)), -vec4<i32>(var_3.b, var_3.b, 60525i, -79060i)), var_2.b)));
}

