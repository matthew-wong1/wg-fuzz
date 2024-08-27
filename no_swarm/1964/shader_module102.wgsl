struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<bool>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec2<bool> {
    let var_0 = Struct_2(1i, select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), all(vec3<bool>(true, false, true))), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, false), vec3<bool>(true, any(vec4<bool>(false, true, false, true)), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    global0 = ~var_0.a;
    var var_1 = var_0;
    global0 = -1i;
    global0 = abs(var_1.a);
    return !var_0.b.yy;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(select(abs(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(23507u, arg_1), vec2<u32>(12785u, 0u)), ~vec2<u32>(arg_1, 4294967295u))), vec2<u32>(~1u, reverseBits(1u)), any(vec4<bool>(true | arg_0.b.x, any(vec2<bool>(arg_0.b.x, arg_0.b.x)), arg_0.b.x, all(arg_0.b.zz)))), abs(~(~u_input.a.x)), select(!func_3(-2147483647i, _wgslsmith_f_op_f32(abs(1000f))), !func_3(-1i, _wgslsmith_div_f32(-540f, -937f)), vec2<bool>(true, ~arg_1 >= arg_1)), _wgslsmith_div_vec2_u32(~vec2<u32>(arg_1, 35251u) >> (~(~vec2<u32>(arg_1, 23390u)) % vec2<u32>(32u)), ~vec2<u32>(arg_1 & 0u, ~arg_1)), select(select(vec4<bool>(all(arg_0.b), true, arg_1 == arg_1, all(vec2<bool>(true, arg_0.b.x))), !(!vec4<bool>(false, false, arg_0.b.x, arg_0.b.x)), arg_0.b.x || true), !(!select(vec4<bool>(arg_0.b.x, true, true, false), vec4<bool>(false, true, arg_0.b.x, arg_0.b.x), arg_0.b.x)), any(vec3<bool>(true, true, arg_0.b.x))));
    var var_1 = Struct_3(Struct_1(vec2<u32>(~(~0u), arg_1), ~arg_0.a, vec2<bool>(select(var_0.e.x, any(var_0.e.xzy), true || arg_0.b.x), arg_0.b.x), vec2<u32>(var_0.d.x, max(arg_1, _wgslsmith_add_u32(0u, 5684u))), !select(var_0.e, var_0.e, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1102f) + _wgslsmith_f_op_f32(f32(-1f) * -575f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -689f)), -1000f)));
    global0 = countOneBits(abs(-2147483647i));
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-439f, var_1.b.x, var_1.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1953f, -1575f, var_1.b.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x) - vec3<f32>(var_1.b.x, 173f, 772f))))));
    let var_2 = 7683u;
    return Struct_1(_wgslsmith_add_vec2_u32(~max(_wgslsmith_clamp_vec2_u32(var_0.a, var_1.a.d, var_1.a.a), ~vec2<u32>(var_1.a.a.x, 0u)), var_1.a.a), -4191i, vec2<bool>(~_wgslsmith_sub_u32(1u, var_1.a.a.x) < (0u | abs(var_0.d.x)), !any(!var_1.a.e.zxx)), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a.d.x, 4294967295u), var_1.a.d), _wgslsmith_div_vec2_u32(var_0.a, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), var_1.a.d))), min(var_1.a.d, abs(_wgslsmith_div_vec2_u32(var_0.d, var_0.d)))), var_0.e);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    let var_0 = firstTrailingBit(~vec4<u32>(4294967295u, arg_1.d.x, 7847u, ~arg_1.a.x >> (1u % 32u)));
    global0 = ~(~2147483647i);
    global0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(i32(-1i) * -1i), -28404i), u_input.a.x);
    global0 = ~_wgslsmith_add_i32(arg_1.b, _wgslsmith_mult_i32(~1i, u_input.a.x));
    global0 = -_wgslsmith_div_i32(~arg_1.b, -2147483647i);
    return func_2(Struct_2(2147483647i, arg_1.e.xwy), reverseBits(~max(~arg_1.a.x, func_2(Struct_2(0i, arg_1.e.yzx), 1u).a.x))).e.x;
}

fn func_1() -> vec4<bool> {
    let var_0 = ~select(vec3<u32>(1u, 1u, 1u), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(20276u, 66118u, 27285u, 2785u), vec4<u32>(1u, 1u, 0u, 134206u)), 1u >> (_wgslsmith_add_u32(0u, 0u) % 32u), 1u), vec3<bool>(true, func_4(vec2<bool>(false, false), func_2(Struct_2(-6017i, vec3<bool>(true, false, false)), 0u)), true));
    global0 = ~u_input.a.x;
    let var_1 = vec3<u32>(var_0.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_0.x, var_0.x), ~vec3<u32>(var_0.x, var_0.x, 37170u)) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(27896u, var_0.x, 57944u), var_0, var_0 << (vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u))) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(abs(var_0.x), 1u, countOneBits(59766u)))), ~(~var_0.x >> (~var_0.x % 32u)));
    global0 = _wgslsmith_clamp_i32(0i, -2482i, _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, -(-2099i | u_input.a.x)), func_2(Struct_2(2147483647i, vec3<bool>(true, true, true)), 13691u ^ var_1.x).b));
    global0 = 1i;
    return !select(select(vec4<bool>(83199u < var_0.x, any(vec3<bool>(true, false, false)), true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), false), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_1(), vec4<bool>(true, !func_4(select(vec2<bool>(true, true), vec2<bool>(false, true), true), func_2(Struct_2(u_input.a.x, vec3<bool>(false, true, false)), 32135u)), func_1().x, !any(vec2<bool>(false, false))), vec4<bool>(func_2(Struct_2(~(-1i), vec3<bool>(true, true, true)), 1u).e.x, true, true, all(vec4<bool>(true, true, true, true))));
    global0 = u_input.a.x;
    let var_1 = var_0.x;
    var var_2 = Struct_3(func_2(Struct_2(u_input.a.x, vec3<bool>(true, all(var_0.xxx), var_1)), ~firstLeadingBit(11389u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - 1851f)))), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-282f - -1786f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-277f))))))));
    var var_3 = var_2.b.xz;
    var var_4 = reverseBits(vec4<u32>(26802u, var_2.a.a.x & _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_2.a.d.x, 73407u), 0u, firstLeadingBit(1u)), 19055u, var_2.a.d.x));
    var var_5 = var_0;
    let var_6 = Struct_3(Struct_1(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_2.a.a.x) | vec2<u32>(39180u, var_4.x), _wgslsmith_add_vec2_u32(vec2<u32>(56500u, var_4.x), var_4.yx))), -countOneBits(-22525i | u_input.a.x), select(var_5.wy, func_1().yw, vec2<bool>(func_1().x, var_0.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_4.x, var_2.a.a.x) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), select(var_2.a.a, vec2<u32>(60648u, 4294967295u), var_2.a.e.x == false)), select(!var_0, !var_2.a.e, all(vec4<bool>(false, var_1, var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1023f, _wgslsmith_f_op_f32(exp2(var_3.x)), var_2.b.x), var_2.b, func_2(Struct_2(u_input.a.x, vec3<bool>(var_1, var_1, true)), func_2(Struct_2(u_input.a.x, var_0.xxx), 71249u).d.x).e.xzz))));
    let var_7 = Struct_2(abs(abs(var_6.a.b)), !var_6.a.e.xyz);
    let x = u_input.a;
    s_output = StorageBuffer(var_7.a, ~u_input.a.xyz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_6.b.x, var_6.b.x, var_3.x, -518f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(972f, var_2.b.x, 1014f, -715f))), func_3(var_2.a.b, -1308f).x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(func_2(Struct_2(2147483647i, vec3<bool>(true, var_7.b.x, var_1)), select(25481u, 52916u, true)).b, _wgslsmith_div_i32(-20611i, -2147483647i), u_input.a.x), abs(u_input.a.zxw), u_input.a.zzy), _wgslsmith_clamp_vec2_i32((u_input.a.zw << (var_2.a.a % vec2<u32>(32u))) << (vec2<u32>(var_6.a.a.x, 40503u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(-u_input.a.yy, u_input.a.yy), vec2<i32>(1i, _wgslsmith_sub_i32(var_7.a, var_2.a.b))) >> ((var_4.xz ^ ~abs(vec2<u32>(0u, 6216u))) % vec2<u32>(32u)));
}

