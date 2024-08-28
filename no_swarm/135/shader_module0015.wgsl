struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(~vec3<i32>(~(-1i), u_input.a.x, 0i), max(arg_0.d.yzy, _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~arg_0.b, vec3<u32>(arg_0.b.x, 20403u, arg_0.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(58931u, arg_0.d.x, 0u), vec3<u32>(arg_0.b.x, 0u, arg_0.d.x))))), arg_0.c, ~arg_0.d);
    global0 = vec2<bool>(true, false);
    let var_1 = ~vec4<u32>(4155u, var_0.b.x, arg_0.b.x, var_0.b.x);
    global0 = var_0.c.zy;
    var var_2 = Struct_1(vec3<i32>(-arg_0.a.x, 0i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~var_0.a, arg_0.a), ~(-5443i | u_input.a.x))), _wgslsmith_sub_vec3_u32(select(~(~vec3<u32>(arg_0.d.x, 82863u, arg_0.d.x)), vec3<u32>(42940u << (var_0.b.x % 32u), ~var_1.x, ~var_0.b.x), var_0.c), firstLeadingBit(arg_0.b)), vec3<bool>(false, true, true), ~(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 60312u, var_0.d.x, var_0.d.x), var_1), firstTrailingBit(vec4<u32>(23718u, 1u, var_1.x, 70326u)), global0.x)));
    return !arg_0.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: i32) -> bool {
    global0 = !arg_1.c.yy;
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1002f)) + -368f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) - _wgslsmith_f_op_f32(-1f))));
    global0 = vec2<bool>(all(vec4<bool>((arg_1.b.x << (arg_0.b.x % 32u)) > arg_0.b.x, any(select(vec4<bool>(arg_2.x, arg_2.x, false, arg_1.c.x), vec4<bool>(arg_2.x, true, global0.x, true), vec4<bool>(arg_0.c.x, false, arg_0.c.x, global0.x))), all(!arg_2), true)), true || any(vec3<bool>(true, arg_0.c.x, true)));
    global0 = vec2<bool>(!any(vec3<bool>(false, all(vec3<bool>(true, arg_1.c.x, arg_2.x)), func_3(arg_1))), !all(vec4<bool>(all(vec4<bool>(arg_2.x, global0.x, arg_1.c.x, global0.x)), true, true, all(vec4<bool>(global0.x, false, arg_2.x, true)))));
    global0 = vec2<bool>(arg_0.c.x, global0.x);
    return arg_0.c.x;
}

fn func_2(arg_0: vec2<i32>) -> vec4<u32> {
    global0 = vec2<bool>(!(!global0.x), global0.x);
    var var_0 = Struct_1(u_input.a, ~(~reverseBits(vec3<u32>(1u, 1u, 1u))), vec3<bool>(true, func_4(Struct_1(u_input.a, abs(vec3<u32>(1u, 4294967295u, 20270u)), vec3<bool>(global0.x, global0.x, false), vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(vec3<i32>(arg_0.x, -1i, u_input.a.x) & u_input.a, ~vec3<u32>(1u, 58639u, 57469u), !vec3<bool>(true, global0.x, true), ~vec4<u32>(4294967295u, 29913u, 20851u, 27464u)), vec2<bool>(func_3(Struct_1(vec3<i32>(0i, -2147483647i, 2147483647i), vec3<u32>(0u, 1u, 106656u), vec3<bool>(true, true, global0.x), vec4<u32>(1u, 4294967295u, 4294967295u, 0u))), any(vec4<bool>(false, false, global0.x, global0.x))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(arg_0.x, -25241i, u_input.a.x)), -1i)), true), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 77004u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(2111u, 0u, 41394u, 0u)) & vec4<u32>(0u, 4294967295u, 1u, 1u)) << (~select(~vec4<u32>(23821u, 75147u, 22637u, 1u), max(vec4<u32>(0u, 31118u, 110644u, 24178u), vec4<u32>(1u, 0u, 0u, 4294967295u)), !vec4<bool>(true, true, global0.x, global0.x)) % vec4<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(var_0.a, vec3<i32>(reverseBits(-1i), min(26213i, var_0.a.x), var_0.a.x)), -firstTrailingBit(-vec3<i32>(arg_0.x, 44205i, -17618i))), firstLeadingBit(_wgslsmith_sub_vec3_u32(var_0.b, ~var_0.b)) << (var_0.d.zyx % vec3<u32>(32u)), vec3<bool>(false, (false || select(false, true, false)) | false, var_0.c.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(81221u), _wgslsmith_div_u32(var_0.b.x, var_0.d.x), var_0.d.x, var_0.d.x), ~vec4<u32>(var_0.d.x, var_0.b.x, var_0.b.x, 63760u)));
    var var_2 = var_1;
    let var_3 = -1000f;
    return var_1.d;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec3<u32> {
    let var_0 = Struct_1(~(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.x, arg_1, arg_0.a.x) ^ vec3<i32>(2147483647i, u_input.a.x, -22357i), arg_0.a)), arg_0.b, select(select(select(!arg_0.c, arg_0.c, all(vec4<bool>(arg_2, global0.x, arg_0.c.x, arg_0.c.x))), vec3<bool>(any(arg_0.c), true, true), false), arg_0.c, true), ~vec4<u32>(~arg_0.d.x, ~(~1u), _wgslsmith_dot_vec3_u32(arg_0.d.yzx, ~arg_0.d.yxy), arg_0.d.x));
    var var_1 = !arg_0.c.xy;
    var_1 = select(arg_0.c.yz, select(var_0.c.yz, !arg_0.c.yx, !vec2<bool>(var_0.d.x >= arg_0.d.x, true)), arg_0.c.yx);
    var var_2 = !(!var_0.c.x);
    var_2 = var_0.c.x;
    return var_0.d.wzx;
}

fn func_1() -> vec2<bool> {
    global0 = select(!vec2<bool>(true, global0.x), select(select(vec2<bool>(any(vec4<bool>(false, global0.x, global0.x, true)), true), select(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), global0.x), vec2<bool>(true, true), vec2<bool>(global0.x, true)), !all(vec4<bool>(global0.x, global0.x, global0.x, true))), vec2<bool>(global0.x && global0.x, true), true), global0.x);
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), func_5(Struct_1(vec3<i32>(u_input.a.x, 33121i, u_input.a.x), vec3<u32>(1u, 1u, 1u), !vec3<bool>(false, false, global0.x), func_2(vec2<i32>(u_input.a.x, -47034i))), i32(-1i) * -12057i, true)) >> (~_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_div_u32(31832u, 67288u)), 4294967295u) % 32u);
    var var_1 = Struct_1(-u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_0 | 88618u, 4294967295u), ~(var_0 ^ var_0), func_2(_wgslsmith_sub_vec2_i32(u_input.a.zy, vec2<i32>(u_input.a.x, u_input.a.x))).x), ~(~vec3<u32>(1u, 1u, 23134u))), !select(vec3<bool>(any(vec3<bool>(global0.x, false, global0.x)), true, global0.x), select(vec3<bool>(false, global0.x, global0.x), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, true, global0.x), vec3<bool>(false, false, global0.x)), !vec3<bool>(global0.x, global0.x, false)), vec3<bool>(false, all(vec2<bool>(false, global0.x)), 12928u < var_0)), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(var_0, 7572u), vec2<u32>(var_0, 74925u)), func_5(Struct_1(u_input.a, vec3<u32>(var_0, 2745u, var_0), vec3<bool>(global0.x, true, false), vec4<u32>(var_0, var_0, 4294967295u, 4294967295u)), _wgslsmith_clamp_i32(u_input.a.x, 0i, 2147483647i), var_0 <= 0u).yz), max(~(~var_0), var_0), 17284u, ~0u));
    var_1 = Struct_1(vec3<i32>(~(-2147483647i), var_1.a.x, _wgslsmith_div_i32(var_1.a.x, -27347i)), var_1.b, !select(select(!var_1.c, vec3<bool>(var_1.c.x, true, var_1.c.x), vec3<bool>(true, var_1.c.x, true)), vec3<bool>(true, global0.x, func_4(Struct_1(var_1.a, var_1.d.wwy, var_1.c, vec4<u32>(var_0, var_0, 1u, var_1.b.x)), Struct_1(u_input.a, var_1.d.xzz, var_1.c, vec4<u32>(var_1.d.x, 13777u, 45856u, 31896u)), vec2<bool>(global0.x, var_1.c.x), u_input.a.x)), vec3<bool>(false, global0.x, true)), var_1.d);
    var_1 = Struct_1(_wgslsmith_mult_vec3_i32(u_input.a, abs(-var_1.a)), var_1.d.wxy, !vec3<bool>(var_1.c.x, var_1.c.x, false), ~countOneBits(var_1.d));
    return !var_1.c.yz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(select(select(vec2<bool>(true, false & global0.x), vec2<bool>(true, true), global0.x), select(!(!vec2<bool>(global0.x, global0.x)), func_1(), func_3(Struct_1(u_input.a, vec3<u32>(41144u, 0u, 106989u), vec3<bool>(false, false, global0.x), vec4<u32>(21943u, 96823u, 10176u, 1u)))), !select(vec2<bool>(false, global0.x), vec2<bool>(false, true), func_1())), select(select(select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), !global0.x), vec2<bool>(true, false), !(!vec2<bool>(global0.x, global0.x))), vec2<bool>(select(true, true | global0.x, global0.x), true), func_4(Struct_1(firstTrailingBit(u_input.a), ~vec3<u32>(0u, 1u, 0u), vec3<bool>(global0.x, false, global0.x), select(vec4<u32>(0u, 43793u, 1u, 46727u), vec4<u32>(64162u, 4108u, 4294967295u, 11827u), vec4<bool>(global0.x, global0.x, false, false))), Struct_1(~vec3<i32>(37599i, 11387i, 31254i), min(vec3<u32>(4802u, 38044u, 504u), vec3<u32>(4294967295u, 0u, 0u)), vec3<bool>(global0.x, global0.x, global0.x), reverseBits(vec4<u32>(4294967295u, 52247u, 4294967295u, 12379u))), vec2<bool>(global0.x, true), ~_wgslsmith_clamp_i32(-1i, 2147483647i, -28599i))), vec2<bool>(false, !select(true, global0.x, global0.x)));
    let var_0 = func_2(~u_input.a.xy).x;
    let var_1 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(select(1i, -2147483647i, global0.x), 1i), -29813i, _wgslsmith_mult_i32(30600i, u_input.a.x)), vec3<i32>(u_input.a.x ^ (i32(-1i) * -1i), ~1i, countOneBits(_wgslsmith_mult_i32(u_input.a.x, 1i)))), vec3<u32>(var_0, func_2(-vec2<i32>(-13287i, -23568i)).x, 4294967295u) >> (func_2(_wgslsmith_sub_vec2_i32(u_input.a.yz, abs(vec2<i32>(u_input.a.x, -28063i)))).wyx % vec3<u32>(32u)), vec3<bool>(true, all(select(vec3<bool>(false, global0.x, false), vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, true, global0.x))) != func_1().x, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0, 94746u), ~vec2<u32>(var_0, 1u)) != _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, 15912u, var_0), ~vec4<u32>(4294967295u, var_0, var_0, 41616u))), vec4<u32>(43364u, firstTrailingBit(var_0), min(var_0, 1u), var_0 >> (40650u % 32u)));
    let var_2 = Struct_1(var_1.a, vec3<u32>(var_0, 36972u, var_0), select(!vec3<bool>(var_1.c.x, global0.x, false), !var_1.c, ((var_1.a.x & var_1.a.x) | -1i) < 0i), var_1.d);
    global0 = var_1.c.zz;
    var var_3 = -667f;
    let var_4 = Struct_1(abs(var_2.a), var_1.b, var_1.c, countOneBits(min(_wgslsmith_clamp_vec4_u32(var_2.d, var_1.d, _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.d.x, var_1.d.x, var_2.d.x, 6245u), var_1.d)), var_1.d)));
    var var_5 = select(0u, ~var_2.d.x, false);
    var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(841f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_2.d.x, _wgslsmith_clamp_i32(var_1.a.x, max(1i, var_4.a.x), min(-30656i, 1i)), 0u);
}

