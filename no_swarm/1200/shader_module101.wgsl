struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: vec3<bool>,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 1u, 1u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(abs(-1i), -19810i, firstLeadingBit(-43120i), 1i), vec4<i32>(reverseBits(0i), 0i << (u_input.d.x % 32u), countOneBits(-12371i), 1i)), vec2<i32>(firstTrailingBit(63487i) ^ 43973i, -1526i >> (_wgslsmith_clamp_u32(0u, u_input.b, u_input.d.x) % 32u))), countOneBits(~(~vec3<u32>(1u, 57099u, global0.x))), select(_wgslsmith_clamp_u32(12744u, global0.x, u_input.c.x), ~u_input.c.x, true) < ~47958u, firstTrailingBit(~(2147483647i >> (global0.x % 32u))) ^ 1i);
    var var_1 = vec4<f32>(-1153f, -590f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(993f + 1864f) - _wgslsmith_f_op_f32(459f - 1487f)))), 543f);
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -478f, 732f, var_1.x) + vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 384f, -1243f, 126f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, 1479f, var_1.x, 903f), vec4<f32>(var_1.x, var_1.x, -299f, -628f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1143f, 465f, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), false)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1012f + var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -393f), 1020f))), vec4<bool>(all(vec2<bool>(true, true)), true, var_0.c, any(!(!vec4<bool>(var_0.c, var_0.c, false, var_0.c))))));
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, -320f, var_1.x, var_1.x))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(697f, -765f, 648f, 932f))))))));
    let var_2 = Struct_3(~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), var_0.b.xy) ^ ~1u)), var_0, var_0.d);
    return 1u;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4) -> i32 {
    var var_0 = vec4<bool>(!all(!select(vec3<bool>(true, arg_1.a.x, arg_1.a.x), vec3<bool>(false, false, true), vec3<bool>(true, arg_1.a.x, arg_1.a.x))), false, _wgslsmith_mod_u32(u_input.b, global0.x) > (min(func_3(), ~global0.x) >> (~abs(global0.x) % 32u)), arg_1.a.x || arg_1.a.x);
    var_0 = vec4<bool>(select(false, true, arg_1.a.x), select(true, var_0.x, true), true, false);
    var var_1 = Struct_4(!vec2<bool>(arg_1.a.x, true));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -657f)), _wgslsmith_f_op_f32(floor(499f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(612f))))), _wgslsmith_f_op_f32(f32(-1f) * -1230f));
    var var_3 = var_2.x;
    return arg_0.x >> (~(~u_input.d.x) % 32u);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    let var_0 = -arg_1.a.a.wz;
    let var_1 = max(vec3<i32>(-1i) * -abs(select(arg_1.a.a.wwy, vec3<i32>(-63589i, 20389i, -1i), arg_0)), select(arg_1.a.a.yzx, arg_1.a.a.xxx, !(!vec3<bool>(arg_1.c, arg_0, arg_0))));
    let var_2 = vec3<u32>(func_3(), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.d.x), arg_1.b.xy), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.b.x, 43501u) >> (arg_1.b.zz % vec2<u32>(32u)), select(arg_1.b.yz, vec2<u32>(u_input.e, arg_1.b.x), vec2<bool>(true, true)), vec2<u32>(1u, 10692u) & arg_1.b.xx)), ~firstTrailingBit(select(u_input.d.x, 1u, true)));
    var var_3 = ~_wgslsmith_dot_vec2_i32(-vec2<i32>(select(-37358i, 0i, true), _wgslsmith_dot_vec2_i32(var_1.yx, vec2<i32>(-31414i, -1i))), vec2<i32>(-var_0.x, ~(var_0.x & var_1.x)));
    var_3 = _wgslsmith_mod_i32(var_0.x, var_1.x);
    return Struct_3(firstLeadingBit(~8909u), arg_1, firstLeadingBit(countOneBits(_wgslsmith_add_i32(arg_1.d, _wgslsmith_mod_i32(17879i, arg_1.a.b.x)))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> vec3<f32> {
    let var_0 = func_4(true, Struct_2(Struct_1(vec4<i32>(func_2(vec4<i32>(0i, -29586i, -35110i, 2147483647i), Struct_4(vec2<bool>(arg_0, arg_0))), _wgslsmith_mod_i32(2147483647i, -15005i), 9145i, -2147483647i), vec2<i32>(firstLeadingBit(27695i), -2481i)), u_input.d, true, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(32485i, -60290i), _wgslsmith_div_i32(-24091i, -40463i), _wgslsmith_dot_vec4_i32(vec4<i32>(-30896i, 1i, -25264i, -11380i), vec4<i32>(-1i, 2147483647i, 4338i, -69673i)), _wgslsmith_div_i32(-2147483647i, 12469i)), vec4<i32>(select(-25169i, -17195i, arg_0), firstLeadingBit(-46026i), 1i, i32(-1i) * -9620i))));
    var var_1 = Struct_5(_wgslsmith_clamp_u32(global0.x, ~(~var_0.a), _wgslsmith_clamp_u32(~0u, ~var_0.b.b.x, u_input.b)), Struct_4(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, arg_0)))), select(vec3<bool>(true, all(select(vec2<bool>(var_0.b.c, arg_0), vec2<bool>(false, false), var_0.b.c)), var_0.b.c), select(select(!vec3<bool>(var_0.b.c, false, true), select(vec3<bool>(var_0.b.c, arg_0, false), vec3<bool>(true, var_0.b.c, arg_0), vec3<bool>(true, true, true)), select(vec3<bool>(false, var_0.b.c, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, false, arg_0))), vec3<bool>(true, var_0.b.c, 42776i == var_0.c), var_0.b.c), arg_0 || !any(vec2<bool>(true, arg_0))), Struct_2(func_4(arg_0, var_0.b).b.a, var_0.b.b, !(!(var_0.c <= -2147483647i)), _wgslsmith_add_i32(-8774i << (~u_input.c.x % 32u), 0i)), vec4<bool>(all(vec4<bool>(var_0.b.c, true, func_4(false, var_0.b).b.c, arg_0)), any(!vec2<bool>(arg_0, false)), true, false));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-983f, -841f, -1175f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-834f)), 610f, -1520f)))));
    var var_3 = 1u;
    var var_4 = ~countOneBits(_wgslsmith_add_vec2_u32(var_0.b.b.xx, ~(~var_0.b.b.zx)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), var_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1292f))), -183f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_1(false, abs(u_input.c))), u_input.d, firstLeadingBit(~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -21721i), vec2<i32>(1i, -11807i), vec2<i32>(12227i, -2147483647i)))), 1i);
}

