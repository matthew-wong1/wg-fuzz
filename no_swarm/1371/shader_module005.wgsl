struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 859f;

var<private> global1: u32 = 0u;

var<private> global2: vec4<i32> = vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -1i);

var<private> global3: bool;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    global3 = arg_1.c.x;
    let var_0 = !(!all(select(!vec3<bool>(arg_1.c.x, arg_1.c.x, true), !vec3<bool>(false, arg_1.c.x, true), true)));
    global3 = -select(u_input.a.x, u_input.a.x, true) > 2147483647i;
    global1 = ~firstTrailingBit(~u_input.b.x ^ u_input.b.x);
    var var_1 = 1u;
    return 1026f;
}

fn func_2(arg_0: i32, arg_1: bool) -> vec2<f32> {
    let var_0 = Struct_1(firstTrailingBit(~reverseBits(u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(700f - 1837f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(arg_0, global2.x, arg_0, arg_0), Struct_1(u_input.a, -498f, vec2<bool>(true, arg_1), u_input.a.x))) + _wgslsmith_f_op_f32(abs(-268f))))), vec2<bool>(any(select(vec2<bool>(arg_1, false), select(vec2<bool>(false, false), vec2<bool>(arg_1, arg_1), vec2<bool>(false, true)), true)), true), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global2.xw, global2.yw), max(_wgslsmith_div_i32(firstLeadingBit(0i), ~u_input.a.x), _wgslsmith_clamp_i32(-14736i, _wgslsmith_clamp_i32(u_input.a.x, global2.x, u_input.a.x), i32(-1i) * -25510i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, var_0.b)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(floor(582f)), var_0.b) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -1329f, var_0.b)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(abs(var_0.b)), -1095f)))));
    let var_2 = _wgslsmith_clamp_vec4_u32(reverseBits(u_input.b), firstLeadingBit(_wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(u_input.b.x, 4294967295u, 0u, 4294967295u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 15671u, u_input.b.x, 75168u), u_input.b))), vec4<u32>(u_input.b.x, u_input.b.x, firstLeadingBit(u_input.b.x), 41460u) | vec4<u32>(1u, ~0u, ~12854u, abs(max(0u, u_input.b.x))));
    global1 = u_input.b.x;
    global1 = var_2.x;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-403f, _wgslsmith_f_op_f32(ceil(-1000f)))) * -219f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(var_0.b - 1505f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1855f * var_1.x) - -1063f)), 1829f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_5) -> vec3<u32> {
    global2 = -(~(~abs(vec4<i32>(global2.x, u_input.a.x, arg_1.c.c.d, u_input.a.x) >> (u_input.b % vec4<u32>(32u)))));
    global3 = !(!arg_1.b.b != false);
    let var_0 = _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.b.a, ~arg_0.x, ~37781u, _wgslsmith_mult_u32(~arg_0.x, 4294967295u << (arg_1.b.a % 32u))), abs(u_input.b));
    var var_1 = Struct_3(!arg_1.c.c.c.x, _wgslsmith_f_op_vec2_f32(func_2(~0i, true)), arg_1.c);
    let var_2 = firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, arg_1.a.x), var_1.c.c.a.x, i32(-1i) * -global2.x, _wgslsmith_div_i32(reverseBits(0i), 2147483647i)) & select(vec4<i32>(_wgslsmith_mod_i32(var_1.c.c.d, 2147483647i), _wgslsmith_dot_vec3_i32(arg_1.a, vec3<i32>(-2147483647i, u_input.a.x, global2.x)), _wgslsmith_add_i32(-19026i, arg_1.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(8292i, arg_1.a.x, -2147483647i), arg_1.a)), ~abs(vec4<i32>(global2.x, 1i, -19748i, var_1.c.c.a.x)), vec4<bool>(arg_1.b.c.b > var_1.c.c.b, !var_1.a, arg_0.x <= 1u, select(true, true, false))));
    return vec3<u32>(~1u, min(~_wgslsmith_dot_vec2_u32(~u_input.b.yx, ~var_0.yy), _wgslsmith_clamp_u32(4294967295u, var_1.c.a, abs(4294967295u))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(516f))))))));
    global3 = false;
    global3 = !(!(true && (u_input.a.x <= u_input.a.x))) && true;
    global2 = vec4<i32>(_wgslsmith_mult_i32(global2.x, -reverseBits(u_input.a.x ^ -19670i)), 2147483647i, _wgslsmith_div_i32(2147483647i, u_input.a.x), _wgslsmith_sub_i32(-81211i, u_input.a.x) | -(_wgslsmith_sub_i32(-44224i, -2147483647i) << (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u)));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.wwx, vec3<u32>(u_input.b.x, max(4294967295u, u_input.b.x), 4294967295u)), func_1(u_input.b.yz, Struct_5(_wgslsmith_add_vec3_i32(global2.xxy, global2.wzw), Struct_2(0u, true, Struct_1(vec2<i32>(u_input.a.x, global2.x), -738f, vec2<bool>(false, false), 34045i)), Struct_2(42610u, false, Struct_1(vec2<i32>(-4361i, -2147483647i), 862f, vec2<bool>(true, false), global2.x))))), 26660u);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -357f);
    var var_2 = Struct_4(Struct_3(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -849f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f)), vec2<bool>(true, false)))), Struct_2(reverseBits(111806u), all(vec2<bool>(true, false)), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(1268f - -471f), vec2<bool>(true, false), u_input.a.x << (4294967295u % 32u)))), !(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_add_i32(global2.x, global2.x)) < ~(~u_input.a.x)), Struct_1(vec2<i32>(_wgslsmith_div_i32(global2.x, -2147483647i), countOneBits(33515i)) << (var_1 % vec2<u32>(32u)), 596f, select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), false), ~_wgslsmith_sub_i32(global2.x, countOneBits(global2.x))), abs(vec4<u32>(u_input.b.x, var_1.x, func_1(var_1, Struct_5(global2.wzw, Struct_2(var_1.x, true, Struct_1(vec2<i32>(global2.x, 0i), -504f, vec2<bool>(false, true), global2.x)), Struct_2(25668u, true, Struct_1(vec2<i32>(u_input.a.x, -21i), 1002f, vec2<bool>(false, true), u_input.a.x)))).x, _wgslsmith_mult_u32(4294967295u, ~4294967295u))));
    var_0 = _wgslsmith_f_op_f32(-var_2.a.b.x);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1306f)), var_2.c.b))) + var_2.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1107f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.b) + _wgslsmith_div_f32(705f, -156f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f) >= _wgslsmith_f_op_vec2_f32(func_2(global2.x, true)).x))), var_2.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-823f * _wgslsmith_f_op_f32(-var_2.a.c.c.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(var_2.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(var_2.a.c.c.d, -222f <= var_3.x)).x * _wgslsmith_f_op_f32(-var_3.x)))), 1f, firstTrailingBit(4294967295u), -2147483647i, -3259i);
}

