struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = u_input.c;
    var var_1 = vec3<bool>(abs(14310u) >= abs(~u_input.c), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2032f - 476f))) + -1960f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-354f)))));
    let var_2 = Struct_1(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1445f), _wgslsmith_f_op_f32(exp2(arg_0))), arg_0, ~0i, false);
    var var_3 = firstLeadingBit(-1i);
    var_3 = u_input.a.x;
    return ~(~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 17321u, u_input.b), vec3<u32>(1u, 0u, var_0)), abs(19436u), ~4294967295u, 49671u)));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_4(_wgslsmith_div_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<i32>(0i, u_input.a.x, u_input.a.x), abs(vec3<i32>(0i, 27008i, -1378i))) << (vec3<u32>(u_input.c, 1u, 0u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-1000f + -1447f));
    var_0 = Struct_4(_wgslsmith_add_vec3_i32(vec3<i32>(8495i, _wgslsmith_sub_i32(var_0.a.x, var_0.a.x), 1i), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, min(vec3<i32>(var_0.a.x, -17245i, u_input.a.x), var_0.a)), -var_0.a)), 495f);
    let var_1 = abs(~(~(vec4<u32>(u_input.b, 72692u, u_input.b, u_input.b) & func_3(-602f))));
    var var_2 = select(select(vec3<bool>(true, select(any(vec4<bool>(false, true, true, true)), var_0.a.x < 2147483647i, all(vec4<bool>(false, true, false, true))), any(vec4<bool>(true, false, true, true))), vec3<bool>(true, true, true), true), select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)), vec3<bool>(all(vec4<bool>(true, false, false, true)), true, true), (0u >= var_1.x) | (var_0.a.x < -17669i)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), true);
    let var_3 = true;
    return select(!vec3<bool>(var_3, true, any(!vec4<bool>(false, var_2.x, var_3, var_3))), select(select(!(!vec3<bool>(var_3, var_3, var_3)), vec3<bool>(false, !var_3, true), select(!vec3<bool>(false, true, var_2.x), !vec3<bool>(var_2.x, false, false), vec3<bool>(var_2.x, false, var_2.x))), vec3<bool>(true, var_3, any(vec3<bool>(var_3, var_3, var_2.x))), !vec3<bool>(var_2.x, true, !var_3)), select(select(select(select(vec3<bool>(true, var_3, var_3), vec3<bool>(false, true, true), true), !vec3<bool>(var_3, false, false), select(vec3<bool>(var_3, false, var_2.x), vec3<bool>(false, false, var_2.x), vec3<bool>(true, var_3, false))), select(select(vec3<bool>(var_3, false, var_3), vec3<bool>(var_2.x, var_3, var_3), vec3<bool>(var_3, true, var_2.x)), select(vec3<bool>(true, true, var_2.x), vec3<bool>(false, false, false), true), select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(true, var_2.x, false), vec3<bool>(true, var_3, false))), vec3<bool>(!var_2.x, false, any(vec4<bool>(true, var_2.x, var_2.x, false)))), select(select(!vec3<bool>(true, var_2.x, var_2.x), select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(false, true, false)), vec3<bool>(var_3, true, true)), select(!vec3<bool>(true, var_3, false), vec3<bool>(var_3, false, true), true), vec3<bool>(any(vec4<bool>(var_3, true, var_2.x, false)), true, !var_3)), !var_3));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32) -> vec2<bool> {
    var var_0 = Struct_3(vec3<bool>(u_input.d.x != 1u, !arg_1.a.a, all(!func_2())), _wgslsmith_add_vec4_u32(func_3(_wgslsmith_f_op_f32(ceil(794f))), vec4<u32>(~u_input.d.x, abs(0u) ^ abs(arg_1.d.x), 3934u, arg_1.d.x)), Struct_1(arg_1.a.a, _wgslsmith_f_op_f32(f32(-1f) * -509f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_1.c.c))))), _wgslsmith_mult_i32(max(u_input.a.x, -1i), u_input.a.x), any(!select(vec2<bool>(false, true), vec2<bool>(arg_1.a.a, false), vec2<bool>(arg_1.b, arg_1.a.a)))), arg_1, Struct_1(any(vec4<bool>(true, -1087f > arg_1.a.c, false, arg_1.b)), arg_1.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.c.c * -973f), _wgslsmith_f_op_f32(-arg_1.a.b))) * _wgslsmith_div_f32(arg_0.x, 1080f)), u_input.a.x, select(all(vec3<bool>(false, arg_1.a.e, arg_1.c.e)) || select(true, false, arg_1.b), arg_1.b, true)));
    var_0 = Struct_3(vec3<bool>(~(arg_1.d.x ^ arg_1.d.x) < max(1u, min(u_input.d.x, var_0.b.x)), !(!(var_0.d.a.d > arg_1.a.d)), var_0.a.x), vec4<u32>(_wgslsmith_clamp_u32(arg_1.d.x, 23105u, 4608u), 0u, ~_wgslsmith_add_u32(abs(var_0.b.x), _wgslsmith_div_u32(33258u, arg_1.d.x)), ~0u), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(abs(arg_2))) * arg_1.a.c), arg_0.x, arg_1.a.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.c), -573f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1953f, var_0.d.c.b, false)))), var_0.d, Struct_1(any(select(!var_0.a, !var_0.a, select(false, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-593f + var_0.d.a.c))), _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_sub_vec2_i32(u_input.a.xz, u_input.a.zy)), u_input.a.yz), (~u_input.b < ~3768u) && arg_1.a.a));
    let var_1 = Struct_4(_wgslsmith_clamp_vec3_i32(max(abs(-u_input.a), vec3<i32>(~1i, -35074i, _wgslsmith_clamp_i32(arg_1.c.d, 1i, 24428i))), u_input.a, ~vec3<i32>(-2147483647i, -29952i << (var_0.d.d.x % 32u), i32(-1i) * -1i)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - var_0.c.c)));
    var_0 = Struct_3(var_0.a, ~(~(~vec4<u32>(0u, arg_1.d.x, 19841u, 14575u) ^ ~var_0.b)), var_0.e, arg_1, Struct_1(all(var_0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -289f)))), var_1.b, -5905i, !var_0.d.c.e));
    var_0 = Struct_3(var_0.a, ~_wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(111514u, var_0.b.x, 4294967295u, 4294967295u)), abs(var_0.b)), arg_1.a, arg_1, Struct_1(arg_1.c.a, arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d.c.b))))), var_0.d.a.d, false));
    return var_0.a.yy;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = arg_2.c;
    var var_1 = arg_2.a;
    var var_2 = !func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.b, 323f) + vec2<f32>(arg_2.a.c, arg_2.a.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1324f, arg_2.c.b), vec2<f32>(var_0.c, arg_2.a.c)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(808f, -1161f)))), arg_2, 1000f).x;
    var var_3 = Struct_2(arg_2.a, false, arg_2.c, arg_1.zzy);
    var_2 = !(!(true && (-2147483647i == _wgslsmith_mod_i32(-20037i, u_input.a.x))));
    return StorageBuffer(var_3.c.b, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), min(-(u_input.a ^ vec3<i32>(var_3.c.d, -3127i, var_3.a.d)), vec3<i32>(~(1i & var_1.d), ~var_3.c.d | -var_0.d, firstTrailingBit(2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(243f, -1868f, 1062f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, -171f, arg_2.a.b) - vec3<f32>(var_1.b, 1015f, var_1.c))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.c, 2063f, 1089f) - vec3<f32>(var_0.c, var_0.b, 471f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2265f, 913f, arg_2.a.b) - vec3<f32>(1143f, var_1.b, 408f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = vec3<i32>(min(11953i, 1i), _wgslsmith_add_i32(u_input.a.x, firstTrailingBit(u_input.a.x)), -22773i);
    var_0 = false;
    var_0 = true;
    let var_2 = u_input.d.x;
    let x = u_input.a;
    s_output = func_4(!all(func_1(vec2<f32>(-1442f, 1000f), Struct_2(Struct_1(true, -498f, -699f, u_input.a.x, true), true, Struct_1(false, 521f, -1000f, -3554i, false), vec3<u32>(108974u, 0u, u_input.c)), 551f)) == true, ~func_3(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1035f, 926f), 1216f))), Struct_2(Struct_1(true, -1196f, -877f, ~0i, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))), true, Struct_1(any(vec2<bool>(false, false)), 582f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(626f, -1186f, false)))), u_input.a.x, true), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(61449u, 4294967295u, var_2, 1u), vec4<u32>(4294967295u, var_2, var_2, 20223u) | vec4<u32>(u_input.c, u_input.c, u_input.b, 0u)), countOneBits(4294967295u), 1u)));
}

