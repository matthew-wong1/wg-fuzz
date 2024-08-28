struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(21581u, 27957u, 1u), vec3<u32>(34127u, 55492u, 4294967295u), vec3<u32>(1u, 39927u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(11440u, 12717u, 54655u), vec3<u32>(4294967295u, 1u, 48020u), vec3<u32>(31589u, 1u, 1u), vec3<u32>(4294967295u, 1u, 11274u), vec3<u32>(1u, 1u, 63754u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 2390u, 9438u), vec3<u32>(4294967295u, 1753u, 1887u), vec3<u32>(54961u, 4294967295u, 0u), vec3<u32>(0u, 25137u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 12629u, 1u), vec3<u32>(0u, 0u, 270u), vec3<u32>(4294967295u, 32337u, 42377u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(37466u, 4294967295u, 1u), vec3<u32>(12627u, 24651u, 1u), vec3<u32>(10567u, 1098u, 4294967295u), vec3<u32>(1u, 31866u, 26450u), vec3<u32>(27768u, 0u, 60318u), vec3<u32>(10196u, 1u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 15322u, 4294967295u), vec3<u32>(1u, 27366u, 68051u), vec3<u32>(1u, 31708u, 1u));

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(false, 28159u, vec2<bool>(false, false)), Struct_1(true, 17409u, vec2<bool>(true, false)), Struct_1(true, 17287u, vec2<bool>(true, false)), Struct_1(false, 0u, vec2<bool>(true, true)), Struct_1(false, 83927u, vec2<bool>(true, true)), Struct_1(true, 4294967295u, vec2<bool>(false, true)), Struct_1(true, 4294967295u, vec2<bool>(false, true)), Struct_1(true, 22270u, vec2<bool>(false, false)), Struct_1(false, 4294967295u, vec2<bool>(true, false)));

var<private> global3: array<Struct_1, 10>;

var<private> global4: u32 = 0u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    var var_0 = vec3<u32>(~max(18844u, ~firstTrailingBit(22651u)), _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(arg_1.b, 0u))), vec2<u32>(arg_1.b, _wgslsmith_mod_u32(arg_1.b, arg_1.b) ^ ~27507u)), arg_1.b);
    let var_1 = vec2<i32>(min(u_input.b.x, 18227i), _wgslsmith_dot_vec3_i32(abs(min(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(1i, u_input.b.x, 1i)), max(u_input.b, vec3<i32>(-59i, u_input.b.x, 1i)))), firstTrailingBit(-vec3<i32>(30675i, u_input.a.x, 1i))));
    var_0 = global0[_wgslsmith_index_u32(countOneBits(~(~(~var_0.x) << (_wgslsmith_mod_u32(reverseBits(0u), ~11425u) % 32u))), 30u)];
    global2 = array<Struct_1, 9>();
    global0 = array<vec3<u32>, 30>();
    return _wgslsmith_clamp_i32(u_input.b.x, 2147483647i, ~(-_wgslsmith_sub_i32(u_input.a.x, u_input.b.x))) >= reverseBits(-u_input.b.x);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>) -> u32 {
    let var_0 = 1u;
    let var_1 = firstTrailingBit(global0[_wgslsmith_index_u32(var_0, 30u)]);
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(42551u, ~var_0, ~_wgslsmith_add_u32(var_0, ~var_0), 4294967295u), _wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(var_0, var_1.x, var_0, 20445u) ^ vec4<u32>(var_1.x, var_0, 4294967295u, 33412u)), abs(vec4<u32>(~1u, 32660u, _wgslsmith_sub_u32(var_0, 4294967295u), abs(17790u))))), 10u)];
    let var_3 = vec4<bool>(arg_1.x, true, false, true);
    let var_4 = _wgslsmith_div_u32(min(4294967295u, reverseBits(select(~var_0, ~var_0, var_3.x))), 27534u);
    return ~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(55931u, 30u)], abs(_wgslsmith_add_vec3_u32(var_1, var_1) ^ vec3<u32>(0u, 34817u, var_0)));
}

fn func_2() -> vec2<bool> {
    global4 = func_4(_wgslsmith_mult_i32(u_input.b.x, u_input.a.x) >> (~(~(~0u)) % 32u), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, all(vec4<bool>(true, true, false, true)), false, func_3(vec3<f32>(-1982f, 522f, global1.x), global2[_wgslsmith_index_u32(20710u, 9u)], vec2<bool>(true, true))), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true))), vec4<bool>(any(vec2<bool>(true, true)), false, !any(vec3<bool>(true, false, true)), true), vec4<bool>(true, true, all(vec2<bool>(true, true)), !any(vec2<bool>(true, true)))));
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(_wgslsmith_add_u32(6668u, 1u), _wgslsmith_div_u32(406u, 46743u)), ~1u, select(15831u, ~firstLeadingBit(1u), !any(vec2<bool>(false, true)))), _wgslsmith_add_vec4_u32(select(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(0u, 77386u, 4294967295u, 2306u), vec4<u32>(31526u, 33773u, 76556u, 58020u))), all(vec4<bool>(false, true, false, true))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, 1u, 8895u, 0u)), vec4<u32>(1u, 1u, 1u, 1u))));
    let var_1 = false;
    global2 = array<Struct_1, 9>();
    let var_2 = _wgslsmith_clamp_vec4_u32(~reverseBits(~select(vec4<u32>(var_0.x, var_0.x, var_0.x, 10722u), vec4<u32>(4294967295u, 0u, 4294967295u, 729u), vec4<bool>(true, var_1, false, var_1))), ~(_wgslsmith_mod_vec4_u32(~vec4<u32>(29616u, 0u, 35362u, var_0.x), max(vec4<u32>(90441u, 37216u, var_0.x, var_0.x), vec4<u32>(76891u, var_0.x, 0u, var_0.x))) | _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 4294967295u, 78871u), max(vec4<u32>(1u, 7214u, var_0.x, var_0.x), vec4<u32>(8056u, 12462u, var_0.x, var_0.x)))), abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, 10067u, 6240u) ^ vec4<u32>(var_0.x, 1u, 13254u, var_0.x), select(vec4<u32>(var_0.x, 112691u, var_0.x, 4017u), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), var_1))));
    return vec2<bool>(all(vec3<bool>(true, var_1, any(!vec4<bool>(true, var_1, var_1, var_1)))), !(!(!var_1)));
}

fn func_1() -> bool {
    let var_0 = u_input.b.zz;
    let var_1 = global2[_wgslsmith_index_u32(1u, 9u)];
    let var_2 = Struct_1(!(!all(vec4<bool>(var_1.a, var_1.c.x, var_1.a, var_1.c.x))), var_1.b, func_2());
    global2 = array<Struct_1, 9>();
    global3 = array<Struct_1, 10>();
    return -1000f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.x < -2147483647i, 17015u, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec2<bool>(true, true))), select(vec2<bool>(true, func_1()), func_2(), !(-273f != global1.x))));
    global0 = array<vec3<u32>, 30>();
    var var_1 = ~(-(~(i32(-1i) * -2147483647i)));
    var var_2 = !(!var_0.c.x);
    var var_3 = !any(!vec3<bool>(var_0.a, true, true)) | select((1i >= u_input.a.x) || true, var_0.a, !(!func_3(vec3<f32>(global1.x, global1.x, -790f), global3[_wgslsmith_index_u32(1u, 10u)], vec2<bool>(var_0.a, var_0.a))));
    var var_4 = Struct_1(var_0.c.x, countOneBits(func_4(_wgslsmith_mult_i32(u_input.a.x, ~u_input.b.x), vec4<bool>(all(vec3<bool>(var_0.c.x, var_0.a, var_0.c.x)), var_0.a, !var_0.c.x, var_0.c.x))), func_2());
    let var_5 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(137f))), -982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(790f, global1.x, 567f))))), select(select(!select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_0.a, false, true), true), vec3<bool>(true, false, all(vec4<bool>(true, false, false, var_0.a))), true), select(vec3<bool>(var_0.a, false, !var_0.c.x), select(select(vec3<bool>(var_4.c.x, var_0.c.x, var_4.a), vec3<bool>(false, false, false), true), vec3<bool>(false, var_0.a, var_0.c.x), var_0.c.x), select(vec3<bool>(true, false, var_4.a), vec3<bool>(var_4.a, false, var_0.a), true)), func_1() && any(var_4.c))));
    global4 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global1.x, _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(exp2(global1.x)), !var_0.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-704f, global1.x)))))), 943f), -1i, vec2<i32>(0i, -(1i >> (1u % 32u)) >> (var_4.b % 32u)), var_5.xz, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(f32(-1f) * -1883f)));
}

