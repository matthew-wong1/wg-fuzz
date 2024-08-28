struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    global0 = u_input.a;
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 2147483647i, 40255i, u_input.c), vec4<i32>(1i, 17476i, u_input.c, 2147483647i)), reverseBits(~vec4<i32>(0i, u_input.c, 33945i, -1i))), firstTrailingBit(~select(vec4<i32>(1i, -1i, 33148i, -1i), vec4<i32>(377i, 31880i, u_input.c, u_input.c), arg_1)), -vec4<i32>(0i, u_input.c | 14257i, _wgslsmith_mod_i32(u_input.c, u_input.c), u_input.c)), -max(vec4<i32>(_wgslsmith_div_i32(-2147483647i, u_input.c), -2147483647i, u_input.c, u_input.c), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, -15891i, 1i, u_input.c), vec4<i32>(12976i, u_input.c, 1i, -2147483647i)))));
    var var_1 = arg_0;
    var var_2 = !select(!(!(!vec3<bool>(true, arg_1, true))), !vec3<bool>(true | arg_1, false, true), !(!(!vec3<bool>(arg_1, true, true))));
    var_2 = vec3<bool>(var_2.x, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(123f - -828f) - -1029f) != _wgslsmith_f_op_f32(-171f + arg_0.a)), var_1.c.x < (_wgslsmith_clamp_u32(arg_0.c.x, u_input.b, countOneBits(0u)) << (var_1.c.x % 32u)));
    return firstLeadingBit(_wgslsmith_dot_vec4_u32(select(countOneBits(countOneBits(vec4<u32>(arg_0.c.x, 9934u, arg_0.c.x, 1u))), vec4<u32>(global0.x, arg_0.c.x, 1u, arg_0.c.x) >> (vec4<u32>(1u, 64525u, global0.x, 86180u) % vec4<u32>(32u)), !(u_input.c < 2147483647i)), vec4<u32>(~abs(var_1.c.x), _wgslsmith_mod_u32(~arg_0.c.x, 6508u), 66339u >> (1u % 32u), global0.x)));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    global0 = ~(~firstTrailingBit(vec3<u32>(1u, arg_0.x, global0.x)) >> (vec3<u32>(u_input.a.x, arg_0.x, 13085u) % vec3<u32>(32u)));
    global0 = _wgslsmith_mod_vec3_u32(~vec3<u32>(func_3(Struct_1(-577f, vec2<f32>(-332f, -729f), global0.yz, 283f), true), 4294967295u, 993u), min(u_input.a, ~(~vec3<u32>(0u, 31865u, 1u)) & _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, u_input.a.x, 4294967295u) & u_input.a, reverseBits(u_input.a))));
    var var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-10011i, u_input.c), ~(i32(-1i) * -u_input.c), 30814i), vec3<i32>(u_input.c | _wgslsmith_mod_i32(-23580i, select(u_input.c, -2147483647i, true)), -_wgslsmith_mod_i32(reverseBits(u_input.c), _wgslsmith_clamp_i32(-2147483647i, 21889i, 40048i)), u_input.c), vec3<i32>(u_input.c, 1i, countOneBits(-32338i)));
    var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, var_0.x, -4321i), vec3<i32>(27231i, u_input.c, var_0.x), ~vec3<i32>(44237i, var_0.x, -19450i)), select(reverseBits(~vec3<i32>(u_input.c, var_0.x, 2147483647i)), select(vec3<i32>(var_0.x, -30040i, var_0.x), vec3<i32>(var_0.x, u_input.c, var_0.x), true), vec3<bool>(all(vec2<bool>(false, true)), true, false))), ~vec3<i32>(u_input.c ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, -24218i), vec3<i32>(u_input.c, -1465i, var_0.x)), var_0.x, var_0.x | -24481i));
    var var_1 = vec4<bool>(false, any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), true), vec3<bool>(true, u_input.c <= var_0.x, true), any(vec4<bool>(true, true, false, false)))), false, true);
    return arg_0.x & (_wgslsmith_mod_u32(min(~global0.x, 31845u), 1u) >> (~_wgslsmith_sub_u32(u_input.b, 4294967295u) % 32u));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<u32>(~0u, global0.x, _wgslsmith_sub_u32(57482u, firstTrailingBit(_wgslsmith_add_u32(func_2(u_input.a.yz), u_input.b & global0.x))), ~global0.x);
    var var_1 = u_input.a.zy;
    var var_2 = Struct_1(189f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1042f + -403f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1258f) + -1754f)), 828f), u_input.a.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-516f, 585f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1144f - -477f))), true))));
    var_1 = u_input.a.xy;
    var_1 = countOneBits(firstLeadingBit(~select(abs(u_input.a.zz), _wgslsmith_sub_vec2_u32(var_2.c, var_2.c), any(vec4<bool>(true, false, false, false)))));
    return Struct_1(var_2.d, var_2.b, vec2<u32>(abs(0u), var_1.x), -621f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(771f))));
    var var_2 = var_0.c;
    var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -324f), -525f), vec2<f32>(_wgslsmith_f_op_f32(-var_0.d), var_1.x)));
    var var_3 = u_input.c;
    var var_4 = 0u;
    var var_5 = func_1();
    var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(~var_0.c.x, ~22694u), var_2.x), ~(~firstLeadingBit(~vec3<u32>(global0.x, 4294967295u, var_2.x))), ~select(select(-15151i | u_input.c, 1i, any(vec3<bool>(false, false, true))), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-15311i, u_input.c), vec2<i32>(4932i, u_input.c))), false));
}

