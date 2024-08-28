struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> vec4<u32> {
    let var_0 = Struct_1(!(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), true)), -arg_0, _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(-arg_0, vec4<i32>(2147483647i, arg_1, -1i, 41141i) & arg_0), abs(arg_0) ^ ~(-arg_0)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1028f * 1000f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1339f, -421f))))));
    var var_2 = Struct_1(select(var_0.a, select(select(select(var_0.a, vec4<bool>(false, var_0.a.x, true, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true)), var_0.a, all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false))), !var_0.a, var_0.a.x), vec4<bool>(true, var_1 != _wgslsmith_f_op_f32(min(var_1, 1526f)), u_input.b.x != ~1u, var_0.a.x)), -vec4<i32>(~(~(-2830i)), var_0.c, arg_1 ^ arg_1, -11306i), 0i);
    var var_3 = Struct_1(!var_2.a, select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.x, abs(38622i), -arg_0.x, ~arg_1), ~reverseBits(var_0.b)), var_2.b, vec4<bool>(all(!var_0.a.ww), true && var_0.a.x, !(!var_2.a.x), !(11934i > arg_1))), _wgslsmith_clamp_i32(countOneBits(-2147483647i), 2147483647i, -var_0.b.x));
    let var_4 = var_0;
    return abs(~(~u_input.b));
}

fn func_4(arg_0: vec4<u32>) -> bool {
    let var_0 = Struct_1(!vec4<bool>(true, false, true, !all(vec2<bool>(false, true))), vec4<i32>(38786i, select(i32(-1i) * -u_input.a, -2147483647i, any(vec2<bool>(false, false)) && true), min(_wgslsmith_div_i32(u_input.a, 1i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(u_input.a, u_input.a, 19711i), vec3<bool>(false, true, true)), vec3<i32>(-1i, -22544i, u_input.a) & vec3<i32>(0i, u_input.a, u_input.a))), -u_input.a), 0i | (-_wgslsmith_add_i32(u_input.a, 2147483647i) ^ 13091i));
    var var_1 = Struct_1(vec4<bool>(true, u_input.a >= ~countOneBits(1i), !(!(!var_0.a.x)), false), var_0.b, 0i);
    var_1 = var_0;
    var_1 = Struct_1(!var_0.a, vec4<i32>(-1i) * -var_0.b, -1i);
    return !(!(!(!var_0.a.x | true)));
}

fn func_2(arg_0: i32, arg_1: bool) -> i32 {
    let var_0 = Struct_1(vec4<bool>(arg_1, true, false, select(arg_1, func_4(func_3(vec4<i32>(-9475i, -1i, -4096i, -15448i), u_input.a)), u_input.c.x == 1u)), vec4<i32>(27099i, 584i, abs(2147483647i), u_input.a), 1i);
    return -2147483647i & -(~2147483647i ^ -u_input.a);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<i32>) -> vec2<u32> {
    let var_0 = firstLeadingBit(arg_3);
    let var_1 = 1060f;
    let var_2 = _wgslsmith_div_vec2_u32(u_input.c, u_input.b.xy);
    let var_3 = func_2(2688i, true);
    var var_4 = Struct_1(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, all(vec3<bool>(true, false, true)), true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, false, false), u_input.c.x >= 1u)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true))), _wgslsmith_mult_vec4_i32(abs(abs(arg_3)), var_0) & arg_3, ~max(-2147483647i, -2147483647i) >> (0u % 32u));
    return vec2<u32>(countOneBits(var_2.x) >> (1u % 32u), ~_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(u_input.c.x, u_input.b.x, 3660u))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = 0i;
    var var_1 = vec4<u32>(~countOneBits(1u), ~func_3(~(~vec4<i32>(1i, u_input.a, 18522i, u_input.a)), u_input.a).x, ~(~_wgslsmith_clamp_u32(max(78502u, u_input.c.x), _wgslsmith_mod_u32(arg_0.x, 4294967295u), 4294967295u)), arg_0.x);
    let var_2 = Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(u_input.a, reverseBits(u_input.a) >> (~func_1(1000f, vec4<f32>(1508f, 897f, -288f, 620f), -1526f, vec4<i32>(arg_1.x, u_input.a, arg_1.x, u_input.a)).x % 32u), -(i32(-1i) * -19616i), reverseBits(2147483647i)), arg_1.x);
    var var_3 = var_2;
    var var_4 = -19221i;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), any(vec2<bool>(true, true)), select(true, true, true) || (u_input.a <= u_input.a), any(vec3<bool>(true, true, true))), _wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a)), ~_wgslsmith_div_vec4_i32(~vec4<i32>(2147483647i, u_input.a, u_input.a, -22201i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -23463i, 1i, -2147483647i), vec4<i32>(-3708i, u_input.a, 0i, -34382i)))), u_input.a);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -673f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(781f - 282f) + -1043f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1126f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1154f - 485f), _wgslsmith_f_op_f32(min(765f, -403f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(449f, 1246f) * 651f) - 654f)), 735f);
    let var_2 = func_5(~(~abs(func_1(var_1.x, vec4<f32>(var_1.x, var_1.x, -2030f, 144f), -161f, vec4<i32>(var_0.b.x, -42157i, 0i, var_0.b.x)))), var_0.b.zy);
    var var_3 = vec4<bool>(func_4(u_input.b), var_2.a.x, any(select(vec4<bool>(any(vec2<bool>(false, var_0.a.x)), false & var_2.a.x, !var_0.a.x, false), var_2.a, var_0.a)), true);
    let var_4 = Struct_1(vec4<bool>(func_5(vec2<u32>(51830u, u_input.b.x), _wgslsmith_sub_vec2_i32(var_0.b.zw, var_2.b.wx)).a.x & true, true, !(false & (u_input.a == var_2.c)), !select(true, all(vec2<bool>(true, var_2.a.x)), var_2.a.x)), (-(~vec4<i32>(var_2.b.x, var_0.c, 50532i, u_input.a)) << (min(min(vec4<u32>(764u, 39643u, 73224u, u_input.c.x), u_input.b), _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))) ^ var_0.b, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-var_0.b.x, ~2147483647i), 21303i));
    let var_5 = _wgslsmith_add_u32(_wgslsmith_add_u32(0u, 6158u), u_input.b.x);
    var_3 = vec4<bool>(var_4.a.x, false, true, all(!vec3<bool>(var_1.x >= -498f, true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))));
}

