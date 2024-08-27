struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<i32>, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1166f, 737f, -802f, -369f), vec4<f32>(248f, 437f, -1843f, -585f), vec4<bool>(false, true, false, false))))))));
    var var_1 = Struct_4(_wgslsmith_clamp_i32(u_input.c, u_input.d, abs(abs(2147483647i))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.x), var_0.x))))));
    var var_2 = _wgslsmith_div_vec2_u32(u_input.b ^ u_input.b, countOneBits(min(select(u_input.b, u_input.b, vec2<bool>(false, false)), vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)))) & abs(u_input.b));
    global0 = u_input.a << (~_wgslsmith_dot_vec3_u32(reverseBits(firstLeadingBit(vec3<u32>(var_2.x, u_input.b.x, var_2.x))), vec3<u32>(u_input.b.x, 0u, 16905u)) % 32u);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(f32(-1f) * -191f)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-387f, var_1.b.x)) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * var_1.b.x))));
    return _wgslsmith_f_op_f32(230f + var_3.x);
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(func_3())))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-138f, -139f, 1000f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-120f, -129f, -1000f))))) + vec3<f32>(var_0, _wgslsmith_f_op_f32(-681f * _wgslsmith_f_op_f32(f32(-1f) * -2110f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -414f), _wgslsmith_div_f32(var_0, var_0))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-338f, -1000f, var_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1291f, 550f, -549f) - vec3<f32>(-856f, var_0, 1579f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(604f, var_0, var_0))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -386f, -1297f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, var_0), vec3<f32>(-1000f, var_0, var_0), true)) + vec3<f32>(-930f, -768f, var_0))))));
    global1 = array<vec2<i32>, 2>();
    global1 = array<vec2<i32>, 2>();
    let var_2 = u_input.a;
    return Struct_2(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-263f, var_1.a.x, var_1.a.x, var_1.b.x), vec4<f32>(var_1.b.x, var_1.a.x, var_1.b.x, var_0))))), vec3<bool>(!select(true, true, u_input.a < u_input.b.x), true, false));
}

fn func_4(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_mult_vec4_u32(firstTrailingBit(abs((vec4<u32>(1u, u_input.b.x, u_input.b.x, 66949u) | vec4<u32>(u_input.b.x, u_input.a, 1u, 84005u)) >> (vec4<u32>(0u, u_input.b.x, u_input.a, u_input.b.x) % vec4<u32>(32u)))), select(~vec4<u32>(4294967295u, 0u, 0u, u_input.a) >> (select(vec4<u32>(4294967295u, 4294967295u, 69275u, 1u), vec4<u32>(u_input.a, 38447u, u_input.b.x, 0u), select(vec4<bool>(arg_0.a, true, arg_0.c.x, arg_0.c.x), vec4<bool>(false, arg_0.c.x, arg_0.a, false), vec4<bool>(true, arg_0.a, true, true))) % vec4<u32>(32u)), firstLeadingBit(countOneBits(~vec4<u32>(4294967295u, 56406u, 69737u, u_input.b.x))), vec4<bool>(true, !func_2(46856i).a, true, arg_0.c.x)));
    var var_1 = var_0.xyx;
    let var_2 = select(arg_0.c.yy, func_2(~abs(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(4294967295u, 2u)], vec2<i32>(u_input.c, 6758i)))).c.xx, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.c, u_input.c, u_input.d) & vec3<i32>(-2147483647i, 0i, u_input.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(u_input.d, u_input.d, u_input.c), vec3<i32>(u_input.d, 0i, 59752i)), arg_0.a), vec3<i32>(u_input.d, -15649i, 2147483647i) << (~var_0.wyw % vec3<u32>(32u))) > min(-2147483647i, ~_wgslsmith_clamp_i32(2147483647i, 0i, 3791i)));
    var var_3 = func_2(-select(-31385i, _wgslsmith_add_i32(firstTrailingBit(u_input.c), u_input.d), var_2.x));
    let var_4 = var_0.x;
    return ~_wgslsmith_add_u32(~1u >> (countOneBits(1u) % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~var_0, var_0), ~(u_input.a << (6187u % 32u))));
}

fn func_1() -> Struct_2 {
    var var_0 = vec4<u32>(func_4(func_2(u_input.c)), u_input.a, firstLeadingBit(countOneBits(u_input.a)), 1u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(375f, 177f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1147f, 1410f), vec2<f32>(-525f, 408f)))))))));
    global1 = array<vec2<i32>, 2>();
    global1 = array<vec2<i32>, 2>();
    var_1 = vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(824f)) + _wgslsmith_f_op_f32(409f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1040f))))));
    return Struct_2(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-886f, 813f, -741f, -920f), vec4<f32>(var_1.x, 591f, 737f, var_1.x)), vec4<f32>(1000f, var_1.x, -289f, 858f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 272f, var_1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-549f, var_1.x, var_1.x, -329f) + vec4<f32>(var_1.x, var_1.x, var_1.x, 302f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-407f, var_1.x, 401f, -362f))))), vec3<bool>(true, false, all(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.d), vec3<i32>(u_input.d, -1i, 61465i))).c.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x))), func_2(_wgslsmith_clamp_i32(0i << (u_input.a % 32u), u_input.d ^ u_input.c, reverseBits(-13543i))).b.x, var_0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1335f + 2010f), _wgslsmith_f_op_f32(select(1046f, -1494f, false))))))));
    global1 = array<vec2<i32>, 2>();
    global0 = u_input.a;
    global1 = array<vec2<i32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1179f + var_1.x) + var_0.b.x))), var_1.x, vec4<u32>(0u, _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4818u), vec2<u32>(82576u, u_input.a))), ~4294967295u, u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(253f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1033f - var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -1559f) + var_1.x))), var_1.x);
}

