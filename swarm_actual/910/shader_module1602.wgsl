struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<f32>) -> vec3<i32> {
    var var_0 = ~countOneBits(max(global0.c.x | global0.a, 4294967295u));
    var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(global0.c ^ global0.c, vec3<u32>(83323u, global0.c.x, global0.a)), firstTrailingBit(~global0.a << (0u % 32u))), ~(~(global0.c.x ^ 1u)) | global0.c.x);
    var var_1 = arg_0.x;
    var var_2 = vec4<u32>(abs(~50965u) << (~global0.c.x % 32u), global0.c.x, 1u, firstLeadingBit(min(4294967295u, 32172u)));
    var_0 = _wgslsmith_add_u32(0u, global0.c.x);
    return -u_input.a;
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(vec3<i32>(global0.e.x, -u_input.a.x, 0i));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.d, _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(round(global0.d))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, -931f, 629f)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(select(478f, 583f, false)), global0.d))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-606f, -1743f, global0.d) * vec3<f32>(473f, 1161f, global0.d)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, 314f, 126f) - vec3<f32>(global0.d, -305f, global0.d)))))));
    var var_2 = u_input.a;
    var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(abs(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1398f, global0.d, -303f) + vec4<f32>(var_1.x, -2611f, -178f, 1000f)))), reverseBits(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(global0.e.x, -892i, var_2.x)) >> ((vec3<u32>(global0.c.x, 4294967295u, global0.a) & global0.c) % vec3<u32>(32u)))), vec3<i32>(var_2.x, ~(~firstTrailingBit(0i)), var_2.x));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-368f * global0.d), 1117f, 989f, -1286f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 755f, global0.d, -361f), vec4<f32>(1358f, -1707f, -1000f, -1232f), false))))))), abs(-21613i), var_2.x, vec3<i32>(~global0.e.x, -var_0.a.x, -19125i), Struct_1(-(~(-vec3<i32>(global0.b.x, u_input.a.x, -2147483647i)))));
    return select(vec2<bool>(true, true), !vec2<bool>(any(vec3<bool>(true, true, true)), false), !vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: f32) -> Struct_3 {
    global0 = Struct_4(95504u, vec2<i32>(~(-max(5846i, u_input.a.x)), _wgslsmith_div_i32(_wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(global0.e.x, 2147483647i, -12354i)), abs(global0.b.x))), global0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -634f)))), -u_input.a.zy);
    global0 = Struct_4(max(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 48585u, 4294967295u, global0.a), select(vec4<u32>(1u, 4294967295u, 11175u, 1u), vec4<u32>(67874u, 66662u, 0u, global0.a), true)), vec4<u32>(49301u ^ global0.a, ~arg_1, 1u, ~global0.a)), arg_1), global0.e, ~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(global0.a, arg_1, 29029u), vec3<u32>(arg_1, global0.c.x, 16631u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -180f)) + 384f), -(~min(~vec2<i32>(global0.e.x, u_input.a.x), u_input.a.xx)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(floor(1082f))), _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(-arg_2))))));
    var var_1 = !func_2().x;
    let var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(353f, _wgslsmith_div_f32(arg_2, arg_2)))), -196f, arg_2, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-428f - 189f), 1000f, ~global0.b.x < -2147483647i))), firstLeadingBit(33450i), _wgslsmith_sub_i32(~(-28272i), -reverseBits(0i)), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, global0.e.x)), abs(abs(vec3<i32>(-11975i, 0i, u_input.a.x)))), Struct_1(abs(~_wgslsmith_add_vec3_i32(vec3<i32>(-26942i, -19592i, u_input.a.x), u_input.a))));
    return Struct_3(var_2.a, -58258i, global0.b.x, _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(var_2.d, var_2.d), var_2.e.a), var_2.e);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    var var_0 = arg_0.a.xyz;
    let var_1 = arg_2.x;
    let var_2 = func_4(func_2(), var_1, 747f);
    global0 = Struct_4(min(~9919u, var_1), ~(var_2.d.xx | abs(-vec2<i32>(arg_0.b, u_input.a.x))), _wgslsmith_add_vec3_u32(countOneBits(~arg_2), vec3<u32>(select(arg_3, global0.a, arg_1.x) | var_1, 0u, _wgslsmith_add_u32(arg_3, _wgslsmith_add_u32(arg_2.x, global0.c.x)))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-global0.d)), var_2.e.a.yz);
    let var_3 = ~arg_3;
    return -43234i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(true & all(vec3<bool>(true, true, true))), true);
    var var_1 = false;
    let var_2 = -select(vec3<i32>(~global0.e.x, firstLeadingBit(_wgslsmith_mod_i32(global0.b.x, u_input.a.x)), i32(-1i) * -global0.e.x), -vec3<i32>(func_1(Struct_3(vec4<f32>(global0.d, -1155f, global0.d, global0.d), global0.e.x, 13455i, vec3<i32>(6129i, global0.e.x, 1i), Struct_1(vec3<i32>(-58598i, 11240i, global0.b.x))), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec3<u32>(global0.a, 8700u, global0.c.x), global0.c.x), _wgslsmith_dot_vec2_i32(u_input.a.yy, global0.e), -2147483647i), var_0.x | !all(vec3<bool>(var_0.x, false, var_0.x)));
    var_0 = vec2<bool>(var_0.x, true);
    global0 = Struct_4(abs(global0.c.x) << (~((global0.a << (0u % 32u)) | global0.a) % 32u), _wgslsmith_clamp_vec2_i32(global0.e, vec2<i32>(-(~(-2147483647i)), 44293i), var_2.zy), vec3<u32>(1u, select(~global0.a, _wgslsmith_sub_u32(global0.c.x, global0.a), var_0.x) | _wgslsmith_add_u32(global0.c.x & global0.a, ~76212u), ~abs(firstLeadingBit(global0.a))), global0.d, u_input.a.xy);
    let var_3 = Struct_4(_wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global0.c.yy, _wgslsmith_mult_vec2_u32(global0.c.yx, vec2<u32>(4294967295u, global0.c.x))), 4294967295u, firstLeadingBit(_wgslsmith_add_u32(global0.a, 10549u)))), func_4(vec2<bool>(true, true), 4294967295u, global0.d).e.a.yy, select(~global0.c, abs(~vec3<u32>(global0.a, 7675u, 0u) & ~vec3<u32>(4294967295u, 55662u, 10241u)), select(vec3<bool>(var_0.x, !var_0.x, !var_0.x), vec3<bool>(all(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), select(var_0.x, var_0.x, var_0.x), !var_0.x), true)), global0.d, select(~u_input.a.xy, func_4(vec2<bool>(true, true), global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.d, global0.d)))).e.a.zy, vec2<bool>(false, var_0.x)));
    let var_4 = func_4(select(vec2<bool>(true, true), vec2<bool>(var_0.x, true), select(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(true, true)), select(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false)), !vec2<bool>(var_0.x, true), var_0.x), any(!vec3<bool>(var_0.x, var_0.x, true)))), _wgslsmith_dot_vec4_u32(max(select(~vec4<u32>(1u, 4294967295u, 1u, 32992u), vec4<u32>(var_3.a, 4294967295u, 1u, 282u), all(vec3<bool>(true, true, var_0.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(9023u, global0.a, var_3.a, 71934u) >> (vec4<u32>(global0.c.x, 1u, 4294967295u, 1u) % vec4<u32>(32u)), ~vec4<u32>(2954u, 53901u, var_3.a, 42978u))), vec4<u32>(global0.c.x, global0.a, firstLeadingBit(~global0.a), _wgslsmith_clamp_u32(0u, 1u, ~var_3.a))), _wgslsmith_f_op_f32(global0.d * 250f)).e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_3.e.x, -1387i), 1i), vec4<u32>(~global0.c.x, global0.a, abs(1u), ~(~_wgslsmith_mult_u32(global0.a, 266u))));
}

