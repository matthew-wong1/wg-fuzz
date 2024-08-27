struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 17831u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec3<bool>) -> u32 {
    global0 = ~u_input.d;
    global0 = _wgslsmith_clamp_u32(~u_input.c.x, ~u_input.b.x, u_input.d);
    global0 = 1u;
    let var_0 = Struct_2(min(_wgslsmith_clamp_vec2_u32(select(firstLeadingBit(arg_0.yx), vec2<u32>(1759u, 9377u), !vec2<bool>(arg_2.x, arg_2.x)), ~vec2<u32>(1u, u_input.b.x), arg_0.yx), reverseBits(vec2<u32>(4294967295u, 86800u))));
    var var_1 = arg_2.x;
    return u_input.c.x;
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_3(_wgslsmith_add_i32(1i, u_input.a.x), max(~u_input.a >> (u_input.c % vec2<u32>(32u)), firstLeadingBit(-u_input.a & vec2<i32>(-2147483647i, u_input.a.x))));
    var var_1 = Struct_4(Struct_2(vec2<u32>(func_3(abs(u_input.b.yzy), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1942f, -1000f, -1160f), vec3<f32>(118f, -1953f, 593f), true)), vec3<bool>(true, true, true)), 1u)), Struct_2(_wgslsmith_sub_vec2_u32(min(~vec2<u32>(u_input.d, 0u), abs(u_input.b.zx)), vec2<u32>(min(0u, u_input.d), 64589u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(458f, 1065f)))))));
    var var_2 = _wgslsmith_clamp_u32(~u_input.c.x, ~var_1.a.a.x << (firstTrailingBit(~(~u_input.c.x)) % 32u), _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.ww, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 20314u), ~vec2<u32>(4034u, 4294967295u)))));
    let var_3 = vec3<bool>(true, true, 4294967295u == (_wgslsmith_sub_u32(~var_1.a.a.x, u_input.c.x) >> (_wgslsmith_dot_vec3_u32(u_input.b.ywy ^ vec3<u32>(0u, var_1.a.a.x, 20915u), ~u_input.b.wwz) % 32u)));
    let var_4 = select(!(!select(var_3, var_3, var_3)), select(vec3<bool>(any(vec3<bool>(var_3.x, var_3.x, var_3.x)), var_3.x, true), !select(vec3<bool>(var_3.x, var_3.x, true), select(var_3, var_3, var_3.x), !var_3.x), vec3<bool>(true, any(var_3.yy), all(vec3<bool>(false, var_3.x, var_3.x)))), !(!var_3));
    return ~(vec4<i32>(-1i) * -firstLeadingBit(reverseBits(vec4<i32>(-84978i, var_0.a, 0i, var_0.a))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(-max(func_2(), vec4<i32>(-2147483647i, 2147483647i, -1752i, -1i) ^ vec4<i32>(48337i, u_input.a.x, -68381i, 6930i)), ~firstTrailingBit(-vec4<i32>(u_input.a.x, -34170i, u_input.a.x, 18403i))) & 1i;
    let var_1 = -482f;
    var var_2 = any(!vec3<bool>(all(vec2<bool>(true, false)) && select(true, false, true), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(select(var_1, var_1, false)) < -297f));
    let var_3 = Struct_4(Struct_2(~abs(vec2<u32>(45768u, 2209u)) ^ u_input.b.zy), Struct_2(vec2<u32>(1u, 42347u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 647f))) - vec2<f32>(_wgslsmith_f_op_f32(-var_1), var_1))));
    var var_4 = 2147483647i;
    return var_3.a.a.x;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: i32) -> vec2<f32> {
    var var_0 = select(vec2<u32>(u_input.d, ~arg_1), u_input.c, !select(vec2<bool>(true, true), vec2<bool>(arg_0 != u_input.b.x, 0u == u_input.d), true));
    let var_1 = vec4<u32>(func_3(~(~(u_input.b.wzw << (vec3<u32>(var_0.x, arg_1, 0u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-1392f, 1562f)), _wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(-383f + 964f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-168f, 1073f, -1100f)))), select(vec3<bool>(select(true, false, true), true, all(vec2<bool>(false, false))), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), true), 41263i >= arg_2)), var_0.x, u_input.c.x, u_input.c.x);
    var_0 = ~_wgslsmith_add_vec2_u32(((vec2<u32>(var_1.x, var_1.x) ^ vec2<u32>(16019u, 5634u)) >> (~vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))) & u_input.c, countOneBits(vec2<u32>(~0u, countOneBits(u_input.c.x))));
    var var_2 = min(select(var_1.zyw, ~u_input.b.xzz, vec3<bool>(true, true, true)), vec3<u32>(96736u, ~(~0u), _wgslsmith_sub_u32(~arg_1, var_0.x)));
    var var_3 = firstLeadingBit(-11902i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1546f, 1247f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1881f, 1907f)), vec2<f32>(-1000f, -492f))) - vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(930f + -154f), _wgslsmith_f_op_f32(-492f + 1938f))), _wgslsmith_div_f32(1f, _wgslsmith_div_f32(115f, 1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_2(u_input.c >> (u_input.c % vec2<u32>(32u))), Struct_2(~vec2<u32>(_wgslsmith_add_u32(u_input.d, u_input.c.x), u_input.d)), _wgslsmith_f_op_vec2_f32(func_4(func_1(), u_input.d, u_input.a.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.c, vec2<f32>(var_0.c.x, var_0.c.x))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(3311f, var_0.c.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c - vec2<f32>(var_0.c.x, -306f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(636f, var_0.c.x))))))));
    let var_2 = var_0.a;
    var var_3 = Struct_1(vec2<bool>(true, any(select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))))));
    let var_4 = !vec4<bool>(var_3.a.x, var_3.a.x, 0i >= -_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), !(_wgslsmith_dot_vec3_u32(u_input.b.yxy, vec3<u32>(u_input.d, 10165u, var_0.b.a.x)) <= func_1()));
    let var_5 = var_0;
    var var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(u_input.b.wyy, vec3<u32>(~(~47150u), 59925u, 32536u)), 291f, u_input.d, _wgslsmith_mult_vec4_u32(min(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_2.a.x, var_2.a.x, var_5.b.a.x), vec4<u32>(var_0.a.a.x, var_5.a.a.x, 27618u, var_2.a.x)), _wgslsmith_mult_u32(0u, var_5.b.a.x), var_2.a.x | 1u, _wgslsmith_mod_u32(var_0.b.a.x, var_0.b.a.x)), vec4<u32>(~13424u, ~var_5.a.a.x, 2050u, var_5.b.a.x)), vec4<u32>(51804u, 4294967295u, 4294967295u, var_0.a.a.x)), 29467i);
}

