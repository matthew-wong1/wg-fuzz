struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
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

var<private> global0: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec3<i32> {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(abs(1u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 1u, u_input.a.x), vec4<u32>(u_input.c, 4294967295u, 1u, 55228u)), 4294967295u), countOneBits(u_input.b)), firstLeadingBit(max(~vec3<u32>(u_input.b, u_input.c, 9159u), vec3<u32>(11682u, 135491u, u_input.c)))) ^ select(~(~(~vec3<u32>(u_input.a.x, 15661u, u_input.b))), vec3<u32>(20063u, _wgslsmith_mult_u32(u_input.a.x & 40498u, ~0u), _wgslsmith_dot_vec4_u32(vec4<u32>(24427u, u_input.b, 19952u, u_input.b), vec4<u32>(11860u, 4294967295u, 51955u, u_input.b)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(12833u, u_input.a.x, u_input.a.x), vec3<u32>(10647u, 1u, u_input.a.x))), 16404u < abs(u_input.a.x & u_input.b));
    var var_1 = countOneBits(9334i);
    let var_2 = ~43015u;
    var var_3 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(select(-2147483647i, -56100i, true), 1i) ^ _wgslsmith_mod_i32(1i, min(-2147483647i, -39097i)), i32(-1i) * -(~0i), -reverseBits(1i)), arg_1, select(select(select(select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, arg_1, true), false), vec3<bool>(false, false, false), !arg_1), select(vec3<bool>(false, false, true), !vec3<bool>(true, arg_1, arg_1), select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, arg_1, true), true)), firstLeadingBit(u_input.a.x) == (u_input.b >> (894u % 32u))), select(select(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, false, true), true), !vec3<bool>(true, false, arg_1), arg_1), vec3<bool>(all(vec4<bool>(arg_1, false, arg_1, false)), arg_1, true), arg_1), select(vec3<bool>(arg_1, any(vec4<bool>(arg_1, true, arg_1, false)), true), vec3<bool>(arg_1, arg_1 & true, false), true)));
    let var_4 = select(vec4<bool>(!arg_1, false, false | var_3.b, var_0.x > (~var_0.x ^ (u_input.c | 1u))), !vec4<bool>((arg_0 < arg_0) == var_3.c.x, var_3.b, false, any(vec2<bool>(true, true))), vec4<bool>(false, all(!vec3<bool>(false, true, arg_1)), var_3.b, false));
    return select(vec3<i32>(var_3.a.x, _wgslsmith_sub_i32(select(-14223i, 2147483647i, var_3.c.x), _wgslsmith_div_i32(-2147483647i, var_3.a.x)) << (countOneBits(~0u) % 32u), -27169i), vec3<i32>(var_3.a.x, 5767i, ~var_3.a.x), -_wgslsmith_div_i32(var_3.a.x, 0i ^ var_3.a.x) > 0i);
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    let var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(func_3(arg_0.a.x, false), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 11072i, 13171i), vec3<i32>(-20780i, -2512i, -1i)), vec3<i32>(1i, 35765i, -1i)), true, !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), select(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(73605i, -2147483647i, -403i), vec3<i32>(-11320i, 60417i, -36211i)), abs(42633i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, -17491i), vec3<i32>(160i, -25740i, -2147483647i), vec3<i32>(1i, -1i, 8513i)) & vec3<i32>(1i, -2147483647i, 32457i), !all(vec3<bool>(false, false, false)))), Struct_2(Struct_1(vec3<i32>(1i, 1i, 1i), !select(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b))))), -813f, firstTrailingBit(vec3<i32>(2147483647i, -25002i, -1i)) ^ ~(-vec3<i32>(-1i, 49975i, 1i))));
    let var_1 = arg_0;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_1.a.x, var_1.a.x), var_0.b.b) + arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.a.x, -1392f), -1042f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -848f), -420f))))));
    let var_3 = Struct_1(-_wgslsmith_sub_vec3_i32(~_wgslsmith_sub_vec3_i32(var_0.b.a.a, var_0.b.a.a), _wgslsmith_mult_vec3_i32(var_0.a.a.a, var_0.a.d)), true, vec3<bool>(any(select(vec3<bool>(var_0.a.a.b, var_0.a.a.c.x, true), vec3<bool>(true, var_0.a.a.c.x, true), select(false, var_0.a.a.b, var_0.b.a.b))), all(vec4<bool>(!var_0.b.a.b, false, -12797i < var_0.b.a.a.x, false)), var_0.b.a.c.x));
    var var_4 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), arg_0.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1116f * var_0.a.b))), _wgslsmith_f_op_f32(max(var_1.b, var_1.b)));
    return var_0;
}

fn func_1() -> i32 {
    let var_0 = ~select(~vec3<u32>(0u, _wgslsmith_div_u32(u_input.c, u_input.c), u_input.b | 4294967295u), vec3<u32>((u_input.a.x & u_input.a.x) & u_input.a.x, 4294967295u, u_input.b), all(vec3<bool>(true, true, true)));
    let var_1 = false;
    let var_2 = func_2(Struct_3(vec2<f32>(375f, -2833f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -200f) - 263f)));
    global0 = 0i;
    return 33065i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<i32>(-67746i, -39271i, reverseBits(func_1())), true, select(vec3<bool>(true, func_2(Struct_3(vec2<f32>(208f, -613f), -368f)).b.a.b, select(true, true, false)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, any(vec2<bool>(false, true)), false), true), true));
    let var_1 = func_2(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1101f + -1332f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-235f + 1597f))), _wgslsmith_div_f32(-995f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(667f, 1558f)))))).a.a;
    var_0 = func_2(Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-279f, 247f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(820f, 1164f) * vec2<f32>(-391f, 709f))))), _wgslsmith_f_op_f32(ceil(-1249f)))).a.a;
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(var_0.a.x, 54595i), _wgslsmith_dot_vec2_i32(var_1.a.zy, ~func_2(Struct_3(vec2<f32>(793f, 601f), 1221f)).a.d.zy), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.a, abs(vec3<i32>(var_1.a.x, 0i, 1i))), _wgslsmith_div_vec3_i32(var_1.a << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.b) % vec3<u32>(32u)), min(var_1.a, vec3<i32>(var_1.a.x, -2147483647i, 2147483647i)))), select(~(~8356i), 45209i, var_0.b)) >> (~vec4<u32>(4294967295u, countOneBits(39656u), abs(~u_input.a.x), _wgslsmith_sub_u32(u_input.c << (4294967295u % 32u), u_input.b)) % vec4<u32>(32u));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1356f, 1619f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1112f), -276f));
    var var_4 = func_2(var_3).a;
    let var_5 = Struct_4(Struct_2(Struct_1(var_1.a, var_0.c.x, select(select(vec3<bool>(var_4.a.c.x, false, false), var_1.c, var_0.b), vec3<bool>(true, true, true), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.c - 1027f) - _wgslsmith_f_op_f32(step(392f, var_4.c)))), _wgslsmith_f_op_f32(trunc(-2429f)), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-32778i, -28813i, var_0.a.x), vec3<i32>(var_4.d.x, var_2.x, -2147483647i)), _wgslsmith_mod_vec3_i32(var_2.yzw, var_2.xyx)), var_1.a.x, firstTrailingBit(var_2.x))), Struct_2(var_1, var_3.b, 712f, vec3<i32>(-1i, var_2.x, ~26276i)));
    var var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

