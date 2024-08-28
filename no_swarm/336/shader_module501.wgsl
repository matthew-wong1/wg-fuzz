struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> f32 {
    var var_0 = Struct_2(arg_0.a, _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, arg_0.b)), _wgslsmith_f_op_f32(-1992f - arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - 356f))))));
    let var_1 = select(select(arg_2.ww, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.d, 4294967295u), vec2<u32>(arg_2.x, u_input.a), arg_2.yz), vec2<u32>(arg_2.x, 1u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_2.x, arg_1.b), vec2<u32>(arg_1.b, u_input.a))), false), abs(~(~arg_2.wy & _wgslsmith_sub_vec2_u32(vec2<u32>(81468u, arg_1.b), u_input.d.ww))), global0.xz);
    global0 = !select(!vec3<bool>(global0.x, global0.x, false), !(!(!vec3<bool>(false, global0.x, false))), false);
    var_0 = arg_0;
    global1 = 7335i;
    return _wgslsmith_f_op_f32(-var_0.b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_1(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_add_i32(~u_input.e.x, 1i), min(-52147i, reverseBits(u_input.b)))), 1u, firstLeadingBit(abs(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.c.x, -1i, 0i, 27700i), -vec4<i32>(1i, u_input.c.x, -2147483647i, u_input.c.x), vec4<i32>(u_input.e.x, 34176i, -18143i, 1i) & vec4<i32>(6136i, 31179i, u_input.e.x, -1i)))), u_input.d.x, ~(i32(-1i) * -19933i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, arg_1.b, 745f)), _wgslsmith_f_op_f32(arg_0.a.x * 1863f)), Struct_1(u_input.c.x, var_0.d, var_0.c, _wgslsmith_mod_u32(var_0.b, 4294967295u), -1i << (var_0.d % 32u)), vec4<u32>(_wgslsmith_div_u32(83337u, u_input.a), _wgslsmith_mult_u32(var_0.b, u_input.d.x), var_0.b, 29029u), ~var_0.d)) - -1000f));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2) -> vec4<i32> {
    global2 = ~4294967295u;
    let var_0 = _wgslsmith_mod_vec3_i32(~_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b, u_input.c.x, 75982i), -u_input.c), ~u_input.c);
    var var_1 = Struct_1(_wgslsmith_add_i32(~u_input.c.x, -select(firstTrailingBit(u_input.c.x), u_input.e.x, arg_2.a.x >= 351f)), ~abs(u_input.d.x), vec4<i32>(_wgslsmith_dot_vec4_i32(-(vec4<i32>(var_0.x, u_input.e.x, 8004i, -2147483647i) | vec4<i32>(-3353i, 21998i, -49204i, -1i)), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(u_input.e.x, 22541i, var_0.x, var_0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -18862i, var_0.x, u_input.c.x), vec4<i32>(u_input.e.x, var_0.x, var_0.x, 389i)), reverseBits(vec4<i32>(u_input.c.x, u_input.b, u_input.b, var_0.x)))), ~firstLeadingBit(u_input.b), _wgslsmith_mod_i32(-20311i, ~_wgslsmith_mult_i32(2147483647i, var_0.x)), -countOneBits(-2147483647i ^ u_input.e.x)), u_input.a, var_0.x);
    let var_2 = arg_2.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, _wgslsmith_f_op_f32(round(-1020f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(504f)), _wgslsmith_f_op_f32(max(1072f, var_2))), _wgslsmith_f_op_f32(-arg_2.a.x))));
    return var_1.c;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_1(u_input.e.x, 19792u, func_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(791f, -881f, arg_0.x), -136f), Struct_2(vec3<f32>(arg_0.x, arg_0.x, 584f), 1000f))), -374f, _wgslsmith_div_f32(arg_0.x, arg_0.x)), arg_0.x), !global0.yz, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-656f, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, 109f)) - vec3<f32>(arg_0.x, arg_0.x, -785f)), 1233f)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(u_input.d.x, u_input.a)), 9122u, u_input.a)), max(~(0u << (u_input.a % 32u)), u_input.d.x)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(func_4(Struct_2(vec3<f32>(-1467f, 1011f, -1123f), -1000f), vec2<bool>(false, global0.x), Struct_2(vec3<f32>(arg_0.x, -148f, 552f), arg_0.x)).x << (0u % 32u), 2147483647i), u_input.c.x));
    global2 = _wgslsmith_add_u32(46742u, 11977u);
    let var_1 = u_input.c.x;
    let var_2 = 44856i;
    let var_3 = u_input.c.x;
    return Struct_2(vec3<f32>(735f, _wgslsmith_f_op_f32(step(464f, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(trunc(883f))))), 1235f), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(!global0.x, any(vec2<bool>(_wgslsmith_mult_i32(-8512i, u_input.b) > countOneBits(-2147483647i), 19047u == u_input.d.x)), false);
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2077f, -381f, -671f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1628f), 1f, _wgslsmith_f_op_f32(func_1(Struct_2(vec3<f32>(1344f, -647f, -606f), 1454f), Struct_1(64096i, u_input.d.x, vec4<i32>(-2147483647i, u_input.e.x, u_input.b, 2147483647i), u_input.a, 1i), u_input.d, u_input.a))))) * vec3<f32>(_wgslsmith_div_f32(-2696f, _wgslsmith_f_op_f32(-584f - -1000f)), _wgslsmith_f_op_f32(func_1(func_2(vec2<f32>(-872f, 541f)), Struct_1(2147483647i, u_input.d.x, vec4<i32>(u_input.e.x, u_input.b, 26899i, 0i), u_input.a, -2147483647i), u_input.d, _wgslsmith_div_u32(u_input.d.x, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(657f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 417f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-931f - 1991f)))));
    global1 = ~(-countOneBits(u_input.b));
    let var_1 = global0.x;
    global1 = -firstLeadingBit(abs(_wgslsmith_clamp_i32(1i, 1i, 1i) & _wgslsmith_sub_i32(u_input.e.x, 2147483647i)));
    global0 = select(vec3<bool>(true, !global0.x, global0.x), vec3<bool>(global0.x, any(global0.xy), u_input.d.x >= abs(u_input.d.x >> (44449u % 32u))), select(vec3<bool>(false, global0.x, any(vec2<bool>(true, false))), vec3<bool>(true, _wgslsmith_dot_vec3_u32(u_input.d.yww, u_input.d.zzw) == 71213u, any(vec2<bool>(global0.x, true))), select(select(vec3<bool>(global0.x, true, global0.x), !vec3<bool>(true, true, global0.x), all(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), !vec3<bool>(global0.x, false, global0.x), !any(vec4<bool>(false, true, global0.x, true)))));
    let var_2 = select(!select(vec3<bool>(global0.x & global0.x, true, true), select(!vec3<bool>(global0.x, false, true), vec3<bool>(true, false, true), true), any(vec4<bool>(global0.x, false, global0.x, global0.x))), vec3<bool>(true, func_2(_wgslsmith_f_op_vec2_f32(-var_0.a.xz)).b != _wgslsmith_f_op_f32(-var_0.a.x), true), any(!vec3<bool>(true, any(vec3<bool>(false, global0.x, global0.x)), false)));
    var var_3 = Struct_1(u_input.c.x, 1u, vec4<i32>(u_input.e.x, _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(2147483647i, -46494i, u_input.b, u_input.e.x)), -_wgslsmith_add_vec4_i32(vec4<i32>(-51678i, 2147483647i, -14164i, u_input.b), vec4<i32>(u_input.c.x, u_input.e.x, u_input.b, 0i))), ~(~2147483647i), u_input.b), _wgslsmith_mult_u32(u_input.d.x, ~31725u), -7739i);
    var var_4 = !all(select(var_2, select(vec3<bool>(true, global0.x, global0.x), !var_2, var_2), !(!var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1068f, -486f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), -713f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) - func_2(var_0.a.xy).a), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(var_3.c.x, u_input.c.x, 2147483647i)), u_input.c), -2147483647i) & var_3.c.wy, reverseBits(~u_input.d.x), u_input.d.zy);
}

