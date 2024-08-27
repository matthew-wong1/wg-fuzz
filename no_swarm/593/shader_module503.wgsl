struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-1988f, -382f, 307f), 1000f, vec4<bool>(false, true, false, false), vec4<i32>(-1i, i32(-2147483648), 21316i, -14289i), vec4<i32>(2147483647i, 210i, -3865i, -82248i));

var<private> global1: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(0u, 20446u), vec2<u32>(22333u, 1u), vec2<u32>(4294967295u, 17025u), vec2<u32>(4394u, 0u), vec2<u32>(83436u, 1u), vec2<u32>(1u, 19580u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(93824u, 1u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 87054u), vec2<u32>(4294967295u, 1u), vec2<u32>(61024u, 9026u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 50562u), vec2<u32>(78986u, 1u), vec2<u32>(91822u, 16306u), vec2<u32>(4294967295u, 1u), vec2<u32>(88638u, 131065u), vec2<u32>(19392u, 0u), vec2<u32>(0u, 1u), vec2<u32>(41747u, 0u), vec2<u32>(4294967295u, 4954u), vec2<u32>(1u, 4033u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec2<i32>) -> i32 {
    var var_0 = u_input.a.yy;
    let var_1 = vec2<i32>(global0.e.x, -abs(_wgslsmith_add_i32(~(-18356i), _wgslsmith_sub_i32(arg_2.x, u_input.b))));
    global0 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -219f), -476f), _wgslsmith_f_op_f32(-1185f - global0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-1251f - 242f)), global0.b)), 1809f, select(select(global0.c, global0.c, arg_1.x | !arg_1.x), !(!(!vec4<bool>(global0.c.x, true, arg_1.x, arg_1.x))), !select(!global0.c, !vec4<bool>(global0.c.x, arg_1.x, true, false), global0.c)), ~vec4<i32>(_wgslsmith_sub_i32(reverseBits(u_input.b), 1i), firstTrailingBit(-1i), _wgslsmith_sub_i32(var_1.x >> (76886u % 32u), 2147483647i), _wgslsmith_mod_i32(1i, -1i)), -reverseBits(~abs(vec4<i32>(arg_2.x, -1i, -14089i, arg_0.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, 373f, global0.b) * global0.a)))) * vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-497f * 697f), 1000f)), global0.b)), 2418f, !select(!select(global0.c, global0.c, vec4<bool>(true, false, true, global0.c.x)), select(global0.c, !vec4<bool>(global0.c.x, global0.c.x, global0.c.x, true), global0.c), all(select(vec2<bool>(true, false), arg_1, global0.c.xy))), global0.e, vec4<i32>(reverseBits(arg_0.x), 1i, _wgslsmith_add_i32(-2147483647i, firstTrailingBit(countOneBits(var_1.x))), abs(2147483647i)));
    global1 = array<vec2<u32>, 25>();
    return _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, global0.e.x, ~_wgslsmith_clamp_i32(83806i, -1i, u_input.b)), global0.e.www) & -13382i;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = firstLeadingBit(vec4<u32>(u_input.a.x, 24621u & (u_input.d.x ^ ~u_input.a.x), ~u_input.a.x, 0u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-458f))));
    let var_2 = arg_3.e.x << (28236u % 32u);
    var var_3 = var_1;
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.x, 1623f, var_1) + _wgslsmith_f_op_vec3_f32(abs(arg_3.a))), _wgslsmith_div_f32(3194f, 242f), arg_3.c, arg_3.e, vec4<i32>(-_wgslsmith_div_i32(-15028i, func_3(arg_2.d.yz, vec2<bool>(true, true), vec2<i32>(global0.d.x, 32953i))), reverseBits(~arg_3.e.x) ^ -4152i, ~(-countOneBits(global0.e.x)), i32(-1i) * -reverseBits(u_input.c)));
    return vec3<i32>(28645i, arg_2.e.x, -2147483647i ^ -(var_4.d.x ^ max(1i, u_input.c)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = ~(-select(arg_3, min(arg_2.d.zxw, abs(arg_3)), all(select(vec3<bool>(arg_2.c.x, true, global0.c.x), arg_2.c.yxz, vec3<bool>(global0.c.x, true, arg_0)))));
    let var_1 = arg_2.b;
    var var_2 = _wgslsmith_div_vec2_i32(~countOneBits(vec2<i32>(~1i, u_input.b)), vec2<i32>(_wgslsmith_mod_i32(-var_0.x, -abs(arg_2.d.x)), -min(firstTrailingBit(-11113i), 2147483647i)));
    var var_3 = arg_2.c;
    let var_4 = var_3.wzz;
    return arg_2;
}

fn func_1() -> u32 {
    global0 = func_4(true, _wgslsmith_dot_vec3_i32(func_2(select(vec4<bool>(global0.c.x, false, false, true), global0.c, global0.c.x), !vec4<bool>(global0.c.x, false, true, true), Struct_1(vec3<f32>(global0.b, 110f, global0.b), global0.b, global0.c, global0.d, vec4<i32>(-12755i, global0.d.x, 73125i, global0.e.x)), Struct_1(vec3<f32>(1673f, global0.a.x, global0.a.x), global0.b, vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.c.x), global0.d, vec4<i32>(2147483647i, -1i, 48290i, -7544i))), global0.d.zzx) >> ((~_wgslsmith_add_u32(u_input.a.x, 1u) & _wgslsmith_mult_u32(u_input.a.x << (2097u % 32u), 1u)) % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b), global0.b)), vec4<bool>(!(!global0.c.x), global0.c.x, all(select(vec3<bool>(global0.c.x, false, global0.c.x), vec3<bool>(false, global0.c.x, true), global0.c.x)), !any(global0.c.zz)), min(global0.e, min(min(global0.d, global0.e), global0.e)), ~global0.e), vec3<i32>(-1i) * -abs(_wgslsmith_div_vec3_i32(vec3<i32>(1i, -34198i, global0.e.x), global0.d.wxz)));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 578f, global0.b) + global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1990f * _wgslsmith_f_op_f32(max(-1000f, 426f)))) + -872f), global0.c, global0.e, reverseBits(global0.e));
    global1 = array<vec2<u32>, 25>();
    let var_1 = -2147483647i;
    global1 = array<vec2<u32>, 25>();
    return max(_wgslsmith_mult_u32(1u, 47773u & select(~u_input.d.x, _wgslsmith_mod_u32(12008u, 23773u), all(vec2<bool>(var_0.c.x, false)))), 45058u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 25>();
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(global0.e.xxz, global0.e.wwy), _wgslsmith_mult_vec3_i32(-vec3<i32>(-26550i, 17016i, 10490i), global0.e.xyw)), u_input.b, ~(~(~global0.d.x))) << (countOneBits(vec3<u32>(34020u, _wgslsmith_clamp_u32(firstLeadingBit(u_input.d.x), 1u | u_input.a.x, 28472u), u_input.d.x)) % vec3<u32>(32u));
    global1 = array<vec2<u32>, 25>();
    global1 = array<vec2<u32>, 25>();
    var var_1 = global0.e.wyz;
    let var_2 = global0.c.x;
    let var_3 = abs(vec2<u32>(~69106u, func_1()));
    var_1 = _wgslsmith_sub_vec3_i32(~global0.e.wzz, func_4(select(!global0.c.x, global0.c.x, true), _wgslsmith_dot_vec2_i32(func_4(global0.a.x > -765f, var_0.x, Struct_1(global0.a, -136f, vec4<bool>(true, false, false, global0.c.x), global0.e, global0.d), vec3<i32>(2147483647i, -20846i, 0i) >> (vec3<u32>(var_3.x, 66920u, 4294967295u) % vec3<u32>(32u))).d.yz, vec2<i32>(~19269i, func_3(vec2<i32>(u_input.b, -1i), vec2<bool>(global0.c.x, false), var_0.yz))), func_4(!(1802f > global0.b), global0.e.x, Struct_1(vec3<f32>(global0.a.x, global0.a.x, -553f), _wgslsmith_f_op_f32(sign(global0.b)), select(vec4<bool>(true, true, false, global0.c.x), global0.c, vec4<bool>(true, global0.c.x, false, true)), vec4<i32>(u_input.c, 38489i, u_input.b, 2147483647i), global0.e), global0.d.zxy), ~(~func_2(global0.c, vec4<bool>(global0.c.x, global0.c.x, global0.c.x, false), Struct_1(vec3<f32>(global0.b, -1067f, global0.a.x), global0.b, global0.c, global0.d, global0.e), Struct_1(global0.a, global0.b, vec4<bool>(true, global0.c.x, global0.c.x, false), vec4<i32>(-2147483647i, -12559i, 1i, var_1.x), global0.d)))).e.xxy);
    let var_4 = ~min(vec2<i32>(-2147483647i, countOneBits(-25843i)), abs(-vec2<i32>(u_input.b, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, countOneBits((var_3 ^ ~u_input.d.xy) << (~reverseBits(vec2<u32>(var_3.x, 4072u)) % vec2<u32>(32u))), abs(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.d.x, 26076u, var_3.x, u_input.d.x)), select(~vec4<u32>(4294967295u, u_input.a.x, 1u, var_3.x), abs(vec4<u32>(var_3.x, 0u, u_input.d.x, 31868u)), select(global0.c, vec4<bool>(true, false, true, false), true)), ~(vec4<u32>(u_input.a.x, 0u, u_input.d.x, var_3.x) << (vec4<u32>(16149u, u_input.a.x, 1u, 58737u) % vec4<u32>(32u))))), 22526u);
}

