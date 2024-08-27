struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<f32>) -> bool {
    return !(0u != ~(~(u_input.a.x & u_input.b.x)));
}

fn func_2() -> i32 {
    let var_0 = 516f;
    var var_1 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(true, true, true)), false, all(vec3<bool>(true, false, true))), func_3(vec3<bool>(true, false, false), u_input.c, vec4<f32>(var_0, var_0, var_0, var_0)) && true));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0, -366f))), _wgslsmith_div_f32(var_0, 1209f) <= var_0, select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), !vec4<bool>(false, true, all(vec3<bool>(false, true, false)), true), select(vec4<bool>(all(vec3<bool>(true, false, true)), true, all(vec3<bool>(true, false, false)), all(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), any(vec2<bool>(true, false))))), _wgslsmith_sub_vec3_u32(u_input.b, u_input.b));
    var_2 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1843f), -909f)) + var_2.a))), false, var_2.c, u_input.a);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1000f, var_2.a, -526f), vec4<f32>(-838f, 1532f, -574f, -295f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a, -1000f, var_0, -754f), vec4<f32>(1000f, 385f, var_2.a, -1105f), vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b))), var_2.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, -982f, -144f, -946f) + vec4<f32>(1157f, var_0, 710f, var_2.a))))), vec4<f32>(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a, -296f, var_2.b))), _wgslsmith_div_f32(-246f, _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(step(-874f, var_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_2.a, -1813f, 375f) * vec4<f32>(1884f, var_2.a, var_2.a, 783f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -141f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-754f + var_2.a)), -1753f)));
    return u_input.c;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_div_vec3_i32(min(~firstLeadingBit(vec3<i32>(2147483647i, 6052i, u_input.c)), ~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, -2147483647i))), vec3<i32>(firstTrailingBit(u_input.c << (58187u % 32u)), select(u_input.c, ~u_input.c, u_input.c != u_input.c), u_input.c)) & ~(-min(vec3<i32>(1756i, u_input.c, 1i), vec3<i32>(u_input.c, u_input.c, 2147483647i)) << (max(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 22522u, 4294967295u), u_input.a), ~vec3<u32>(u_input.a.x, 1u, u_input.a.x)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1888f, _wgslsmith_div_f32(725f, 2197f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-184f, -1302f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1255f, -759f) - vec2<f32>(-143f, -388f)))))) - vec2<f32>(-1271f, -419f));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -265f)))));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1547f))));
    var_0 = vec3<i32>(abs(abs(func_2())), u_input.c, 8779i);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(~(82113u & u_input.b.x), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x) & _wgslsmith_add_u32(13505u, u_input.b.x)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(func_1(), 72337u), u_input.b.yy, _wgslsmith_clamp_vec2_u32(~(vec2<u32>(u_input.b.x, 37346u) | u_input.b.xy), min(~u_input.b.xy, reverseBits(vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 8318u), vec2<u32>(20544u, u_input.a.x)) & _wgslsmith_add_vec2_u32(u_input.b.zz, u_input.b.xy))) % vec2<u32>(32u));
    var_0 = u_input.b.yx;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-185f, -2271f, -507f, 419f) - vec4<f32>(1120f, 233f, -1000f, 2028f)) - vec4<f32>(279f, -783f, -1123f, -137f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2319f, 1000f, 170f, -927f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(766f, -325f, 384f, -1396f)))))));
    let var_2 = (~(~_wgslsmith_div_i32(u_input.c, -2147483647i)) == -2147483647i) && any(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, false))), true));
    let var_3 = Struct_5(var_2, vec2<bool>(var_2, all(!select(vec4<bool>(false, var_2, var_2, true), vec4<bool>(false, var_2, var_2, var_2), var_2))), var_1.a.x, Struct_3(_wgslsmith_dot_vec2_u32(u_input.b.yz, _wgslsmith_add_vec2_u32(u_input.a.xy, reverseBits(u_input.b.yx))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(2147483647i, u_input.c), i32(-1i) * -2147483647i) >> (min(u_input.a.x, _wgslsmith_div_u32(var_0.x, u_input.a.x)) % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(floor(-1705f)), var_1.a.x) - var_1.b.zxx), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a + vec4<f32>(var_1.b.x, var_1.b.x, 259f, -1226f))), vec4<f32>(_wgslsmith_f_op_f32(step(131f, var_1.b.x)), _wgslsmith_f_op_f32(-var_1.a.x), var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1047f))), var_1.a.wy), Struct_3(firstLeadingBit(1u), _wgslsmith_div_i32(~(i32(-1i) * -2147483647i), _wgslsmith_div_i32(~u_input.c, ~76681i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.xyx))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1691f, 1505f, 767f, var_1.a.x)), _wgslsmith_f_op_vec4_f32(select(var_1.b, var_1.a, all(vec2<bool>(false, false))))), vec2<f32>(-1956f, _wgslsmith_f_op_f32(-530f * -900f))));
    var var_4 = vec3<bool>(false, false, true);
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

