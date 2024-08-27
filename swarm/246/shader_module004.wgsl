struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_4,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-17257i, -52141i, 0i, 8354i);

var<private> global1: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    global1 = _wgslsmith_add_u32(((_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(34027u, u_input.a, 30534u)) << (1u % 32u)) >> (u_input.a % 32u)) << (u_input.a % 32u), countOneBits(u_input.a));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-584f, 152f, -1524f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1066f, -293f, 155f)))))))));
    let var_1 = select(select(!select(!vec4<bool>(arg_0, true, true, true), !vec4<bool>(arg_0, true, true, arg_0), true), !select(vec4<bool>(false, arg_0, false, false), select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, arg_0, false, arg_0)), 1339f > var_0.x), true), vec4<bool>(true, any(vec3<bool>(false, arg_0, arg_0)) | any(vec3<bool>(false, false, true)), arg_0, !(!all(vec3<bool>(arg_0, false, arg_0)))), vec4<bool>(((70678u ^ u_input.a) & 4294967295u) < _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 7768u)), !any(select(vec3<bool>(false, false, arg_0), vec3<bool>(true, false, true), vec3<bool>(true, arg_0, true))), !(!any(vec4<bool>(false, arg_0, false, arg_0))), any(!(!vec3<bool>(true, arg_0, arg_0)))));
    global0 = ~abs(-(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, -1i, 15114i, -27976i), vec4<i32>(4939i, 0i, global0.x, global0.x)) & (vec4<i32>(1i, -435i, -2147483647i, global0.x) | vec4<i32>(global0.x, global0.x, -2147483647i, -2147483647i))));
    let var_2 = Struct_5(~(~(_wgslsmith_div_vec4_u32(vec4<u32>(79498u, u_input.a, u_input.a, u_input.a), vec4<u32>(32968u, u_input.a, u_input.a, u_input.a)) & vec4<u32>(33267u, 7857u, 4294967295u, 0u))), Struct_1(var_1.x), Struct_4(vec4<u32>(select(_wgslsmith_clamp_u32(1133u, u_input.a, 21736u), min(u_input.a, 76282u), all(var_1)), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(7289u, u_input.a), vec2<u32>(u_input.a, 53965u)) & ~0u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u)))), global0.x << (u_input.a % 32u)), -2147483647i, false);
    return var_1.ww;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1894f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(108f, 2162f)), func_3(true))));
    global1 = arg_1.a.x;
    let var_1 = u_input.a;
    return Struct_1(arg_2.x || arg_2.x);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_5, arg_3: Struct_4) -> Struct_1 {
    global0 = vec4<i32>(select(arg_2.c.b, firstTrailingBit(4699i), arg_2.b.a), _wgslsmith_dot_vec3_i32(global0.wzz, global0.yxy | global0.xzz) ^ reverseBits(1i), 1i, -arg_3.b);
    global1 = abs(149u);
    var var_0 = !select(select(select(vec3<bool>(arg_2.e, arg_2.b.a, true), select(vec3<bool>(arg_2.e, true, arg_2.b.a), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), !vec3<bool>(arg_2.e, true, arg_2.b.a)), !vec3<bool>(arg_2.b.a, false, arg_2.b.a), true), select(select(!vec3<bool>(arg_2.b.a, arg_2.e, true), !vec3<bool>(true, arg_2.e, arg_2.b.a), !vec3<bool>(arg_2.e, false, arg_2.b.a)), !(!vec3<bool>(false, arg_2.b.a, true)), !arg_2.b.a && any(vec3<bool>(arg_2.e, arg_2.b.a, arg_2.b.a))), select(vec3<bool>(all(vec4<bool>(false, true, arg_2.e, arg_2.b.a)), global0.x != arg_2.d, true), select(vec3<bool>(false, arg_2.b.a, true), vec3<bool>(arg_2.e, false, false), !vec3<bool>(arg_2.b.a, false, false)), vec3<bool>(true, true, true)));
    let var_1 = arg_3;
    global0 = ~firstLeadingBit(vec4<i32>(~(i32(-1i) * -46787i), -arg_3.b & _wgslsmith_add_i32(1946i, 20565i), 1825i, var_1.b));
    return Struct_1(true);
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_5(vec4<u32>(reverseBits(~(~5478u)), u_input.a, 12138u, 20305u), func_4(global0.x, _wgslsmith_mod_vec3_u32(vec3<u32>(max(u_input.a, u_input.a), u_input.a, 22416u), max(firstTrailingBit(vec3<u32>(u_input.a, 2267u, 83652u)), firstLeadingBit(vec3<u32>(0u, 0u, 4294967295u)))), Struct_5(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 9444u), vec4<u32>(u_input.a, u_input.a, u_input.a, 31970u), vec4<u32>(0u, u_input.a, u_input.a, 4294967295u)), select(vec4<u32>(75282u, u_input.a, u_input.a, 0u), vec4<u32>(0u, u_input.a, u_input.a, 0u), true)), func_2(vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_5(vec4<u32>(4294967295u, 0u, u_input.a, 2807u), Struct_1(true), Struct_4(vec4<u32>(62966u, u_input.a, u_input.a, 1u), 0i), global0.x, true), vec4<bool>(true, true, true, false)), Struct_4(firstLeadingBit(vec4<u32>(u_input.a, 54569u, 88056u, u_input.a)), global0.x), -67281i, true), Struct_4(max(~vec4<u32>(1u, u_input.a, 72703u, u_input.a), select(vec4<u32>(31787u, 4294967295u, 86346u, 1u), vec4<u32>(u_input.a, u_input.a, 1u, 23774u), false)), 1i)), Struct_4(select(~(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), countOneBits(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), false), _wgslsmith_dot_vec3_i32(abs(global0.wyy), _wgslsmith_div_vec3_i32(vec3<i32>(1144i, global0.x, 0i), vec3<i32>(-2147483647i, global0.x, 39183i))) & -global0.x), ~(~(global0.x & global0.x)) ^ global0.x, all(vec4<bool>(false, any(vec3<bool>(true, true, true)), func_3(true).x, false)));
    global1 = ~_wgslsmith_mod_u32(var_0.a.x, var_0.c.a.x & ~(~var_0.a.x));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1224f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1556f)), _wgslsmith_f_op_f32(trunc(189f)))))), -1590f);
    let var_2 = false;
    global1 = select(_wgslsmith_add_u32(0u, ~(~(~var_0.c.a.x))), u_input.a, var_2 || !(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d, -62566i, global0.x, global0.x), vec4<i32>(-2147483647i, var_0.c.b, 17973i, -2147483647i)) == select(var_0.d, var_0.c.b, false)));
    return vec3<bool>(var_2, func_2(~vec3<u32>(33405u, var_0.a.x, 104883u), var_0, select(!vec4<bool>(var_2, var_0.b.a, false, false), !vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(var_0.b.a, var_2, var_2, var_0.e))).a == true, any(!select(vec4<bool>(var_2, false, true, false), vec4<bool>(var_2, true, true, var_0.b.a), any(vec3<bool>(var_2, true, var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global0.wxz;
    var var_1 = !vec3<bool>(true, false, any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), all(vec3<bool>(true, false, true)))));
    var_1 = select(func_1(), select(!vec3<bool>(false, !var_1.x, all(vec2<bool>(true, true))), select(!(!vec3<bool>(var_1.x, false, false)), !(!vec3<bool>(var_1.x, true, true)), var_1.x), vec3<bool>(any(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), true, true)), !select(var_1.x, _wgslsmith_add_u32(23895u, u_input.a) >= select(54607u, 104587u, true), any(select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), true))));
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_div_i32(max(_wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.x, var_0.x), global0.x), reverseBits(reverseBits(-1i))), 0i), var_0.x);
    var var_3 = Struct_1(all(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(0i), 562f, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(616f, 2175f, -934f)), vec3<f32>(_wgslsmith_f_op_f32(select(-1101f, 1000f, var_1.x)), _wgslsmith_f_op_f32(sign(211f)), _wgslsmith_div_f32(-657f, -1963f))))), 1u);
}

