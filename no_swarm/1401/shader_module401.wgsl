struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_3,
    e: vec3<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)))) || !(!(u_input.e == _wgslsmith_add_i32(1i, u_input.e)));
    var var_0 = Struct_4(!select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false))), vec4<bool>(all(vec4<bool>(false, false, false, true)), true, false, true), all(vec4<bool>(true, true, true, true))), Struct_1(-firstLeadingBit(vec2<i32>(2147483647i, u_input.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1131f * 929f))), max(select(abs(vec4<u32>(u_input.a, u_input.b, 0u, 1u)), ~vec4<u32>(u_input.b, 4294967295u, u_input.c, 30731u), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true))), reverseBits(reverseBits(vec4<u32>(u_input.c, 4294967295u, 1u, 19155u)))), true, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1370f, -2211f), vec2<f32>(-271f, -349f)))))))), Struct_2(Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(1i, u_input.d)), abs(vec2<i32>(u_input.e, u_input.d))), 1597f, reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.b, 12125u)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(251f, -974f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1015f, 1000f))))), Struct_1(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.e), vec2<i32>(2147483647i, u_input.e))), _wgslsmith_div_f32(-1457f, _wgslsmith_f_op_f32(1651f + 312f)), vec4<u32>(select(1u, 4294967295u, true), ~1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b, 0u), vec3<u32>(1u, u_input.c, 67251u))), false, vec2<f32>(_wgslsmith_f_op_f32(773f + -308f), _wgslsmith_f_op_f32(-1507f - -1497f))), -7967i, firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(63511i, 0i, u_input.e, -2147483647i), vec4<i32>(25942i, 52961i, 1i, u_input.e)) << (~vec4<u32>(14884u, 25088u, u_input.b, u_input.a) % vec4<u32>(32u)))), Struct_3(Struct_2(Struct_1(countOneBits(vec2<i32>(-15699i, u_input.d)), _wgslsmith_f_op_f32(trunc(200f)), ~vec4<u32>(4294967295u, 94311u, 26131u, u_input.a), any(vec3<bool>(true, false, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1130f, -292f))), Struct_1(vec2<i32>(1i, u_input.d), -2710f, ~vec4<u32>(u_input.c, u_input.c, 99440u, 4294967295u), any(vec3<bool>(false, true, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1758f, 1586f))), -13171i, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, -54786i, u_input.d, 2147483647i), vec4<i32>(u_input.e, u_input.d, -13387i, u_input.d), vec4<i32>(1i, 15785i, u_input.d, u_input.e))), any(vec2<bool>(false, true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(166f * 1091f) + -589f), -913f), abs(vec2<u32>(abs(u_input.b), u_input.c))), vec3<u32>(~_wgslsmith_clamp_u32(u_input.a, 4294967295u, 0u) >> (abs(~u_input.b) % 32u), countOneBits(u_input.a), _wgslsmith_div_u32(~33685u, u_input.b)));
    global0 = !(!all(vec4<bool>(all(vec3<bool>(var_0.a.x, var_0.b.d, var_0.b.d)), var_0.b.d, var_0.d.a.a.d, var_0.a.x)));
    let var_1 = var_0.c;
    var var_2 = var_1.a.e.x;
    return abs(countOneBits(0i));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(Struct_1(vec2<i32>(-abs(u_input.e), func_3()), -1000f, ~(~(vec4<u32>(1u, 1u, u_input.c, u_input.a) >> (vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.b) % vec4<u32>(32u)))), false & !all(vec4<bool>(false, true, false, true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2075f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -213f)))), Struct_1(vec2<i32>(~(-49614i), ~(~29841i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(624f + -1000f) + _wgslsmith_f_op_f32(-1198f - -1000f)) * _wgslsmith_f_op_f32(step(-514f, -2059f))), min(vec4<u32>(max(51222u, 39467u), ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.a, 1u), vec4<u32>(u_input.c, 4294967295u, u_input.b, 1u)), u_input.c & 1604u), vec4<u32>(73436u, firstLeadingBit(0u), u_input.c, select(61256u, 83104u, true))), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-681f, 606f), vec2<f32>(-1000f, -1178f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(745f, -992f)))), _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.d, 1i, ~u_input.d), vec3<i32>(func_3(), countOneBits(-25369i), -u_input.d)) & -1i, ~(~vec4<i32>(countOneBits(u_input.e), -u_input.d, u_input.e, -u_input.e)));
    let var_1 = Struct_3(Struct_2(Struct_1(-(var_0.b.a >> (var_0.a.c.yx % vec2<u32>(32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.b.b, var_0.a.b, true)), 1003f)), ~(~vec4<u32>(0u, 4294967295u, u_input.c, u_input.c)), true, var_0.a.e), Struct_1(vec2<i32>(u_input.d, 0i) | firstTrailingBit(var_0.a.a), _wgslsmith_f_op_f32(var_0.b.e.x - -860f), abs(var_0.a.c), any(vec4<bool>(var_0.b.d, var_0.a.d, var_0.a.d, true)), var_0.b.e), _wgslsmith_dot_vec3_i32(select(vec3<i32>(26334i, -52675i, var_0.b.a.x), var_0.d.wzw, vec3<bool>(true, var_0.a.d, var_0.a.d)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, 34802i, var_0.a.a.x), var_0.d.zxw, vec3<i32>(2134i, u_input.d, var_0.b.a.x)), firstTrailingBit(_wgslsmith_mult_vec3_i32(var_0.d.ywz, var_0.d.wwy))), vec4<i32>(u_input.e, u_input.d, _wgslsmith_mult_i32(u_input.d, u_input.d), var_0.a.a.x) >> (var_0.b.c % vec4<u32>(32u))), var_0.a.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.e + var_0.b.e))), ~vec2<u32>(~1u, var_0.b.c.x));
    var_0 = var_1.a;
    var_0 = var_1.a;
    var_0 = var_1.a;
    return Struct_3(var_1.a, select(!(true != var_1.a.a.d), true, any(vec3<bool>(true, true, var_0.a.d))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(var_1.a.a.b, var_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -596f)))))), (_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.b.c.x, u_input.c), _wgslsmith_clamp_vec2_u32(var_0.a.c.wx, vec2<u32>(4294967295u, var_0.b.c.x), vec2<u32>(1726u, 20836u))) >> (~_wgslsmith_add_vec2_u32(var_1.a.b.c.yz, vec2<u32>(12462u, var_1.a.a.c.x)) % vec2<u32>(32u))) >> (vec2<u32>(36215u, u_input.a) % vec2<u32>(32u)));
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = ~(~(vec3<i32>(u_input.e, u_input.e, ~1i) << (~select(vec3<u32>(u_input.a, u_input.b, 35133u), vec3<u32>(u_input.c, 34957u, u_input.c), vec3<bool>(true, arg_0, arg_0)) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(floor(108f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-860f, -2487f))), _wgslsmith_f_op_f32(f32(-1f) * -1807f)), _wgslsmith_div_f32(-1342f, -1220f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-313f, 2012f))) + _wgslsmith_f_op_f32(-426f + _wgslsmith_div_f32(-150f, 854f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -517f)) - _wgslsmith_f_op_f32(select(-1698f, 188f, var_0.x > var_0.x))), 808f)));
    var var_2 = ~48776i | firstLeadingBit(reverseBits(var_0.x));
    let var_3 = ~_wgslsmith_clamp_u32(65929u >> ((_wgslsmith_mult_u32(u_input.a, u_input.b) >> (1u % 32u)) % 32u), _wgslsmith_div_u32(~51161u, u_input.c) ^ ~abs(46280u), _wgslsmith_mult_u32(u_input.a >> (~59048u % 32u), ~4294967295u));
    global0 = any(!vec2<bool>(arg_0, var_1.x < _wgslsmith_f_op_f32(-var_1.x)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global0 = !all(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))));
    let var_0 = func_1(!all(vec3<bool>(true, u_input.e < 2147483647i, true)));
    global0 = any(vec4<bool>(false, !((var_0.a.b.c.x < 2668u) && select(var_0.a.a.d, var_0.b, var_0.b)), true, false));
    var var_1 = var_0.a.b.c.xw;
    let var_2 = all(!(!vec2<bool>(all(vec3<bool>(var_0.a.b.d, var_0.a.b.d, var_0.b)), true)));
    let var_3 = func_1(var_0.a.b.d).a.d.x;
    var_1 = _wgslsmith_clamp_vec2_u32(var_0.a.a.c.xx, vec2<u32>(var_0.a.b.c.x, 4294967295u), vec2<u32>(min(~(~0u), 22019u << (~4294967295u % 32u)), ~var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_add_u32(var_1.x, 42523u) << (_wgslsmith_mult_u32(64357u, u_input.a) % 32u), var_0.a.d.zwz, ~u_input.a);
}

