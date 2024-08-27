struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(1025f, -208f), vec2<f32>(249f, -2350f), vec2<f32>(1295f, -927f), vec2<f32>(690f, 1000f), vec2<f32>(109f, -534f), vec2<f32>(-1165f, -1593f), vec2<f32>(-429f, -345f), vec2<f32>(-1000f, 152f), vec2<f32>(497f, -357f), vec2<f32>(-1063f, -241f), vec2<f32>(-795f, 1062f), vec2<f32>(-917f, -296f), vec2<f32>(-698f, 895f), vec2<f32>(-2512f, -428f), vec2<f32>(-346f, 250f), vec2<f32>(-2235f, 775f), vec2<f32>(-186f, -921f), vec2<f32>(-244f, -1169f));

var<private> global1: Struct_4 = Struct_4(vec3<u32>(4294967295u, 47662u, 0u), Struct_2(1u, Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -4269i, -43348i), vec4<bool>(true, true, false, true), vec3<u32>(46705u, 4294967295u, 35318u), vec2<f32>(-519f, -328f), vec2<u32>(33766u, 4294967295u))), vec4<f32>(-1662f, -655f, -226f, 158f), vec3<u32>(52063u, 19368u, 1u));

var<private> global2: vec4<f32>;

var<private> global3: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<i32>) -> i32 {
    let var_0 = vec2<bool>(true || any(global1.b.b.b.zw), all(global1.b.b.b.xw));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-global2.x), 32829u);
    let var_2 = global1.b.b;
    var var_3 = var_1;
    global3 = ~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~21926i, 2147483647i, select(u_input.a.x, u_input.b, true)) ^ u_input.a.x, -1360i);
    return firstLeadingBit(u_input.a.x);
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> vec2<u32> {
    let var_0 = -1000f;
    var var_1 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 28081i, -32028i, 2147483647i), u_input.a), func_3(global1.b.b.b.x, true, u_input.a)), _wgslsmith_div_i32(-43731i, reverseBits(-263i)), -global1.b.b.a.x, -2147483647i), select(vec4<bool>(true, any(!global1.b.b.b.xzy), true, false), global1.b.b.b, vec4<bool>(0i < ~u_input.b, true, true, !any(vec4<bool>(false, true, true, global1.b.b.b.x)))), global1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.zy)) * vec2<f32>(-623f, 1858f)) * vec2<f32>(_wgslsmith_f_op_f32(step(-660f, var_0)), 114f))), vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(71742u, 52517u, 67276u), min(global1.a, vec3<u32>(global1.a.x, global1.d.x, 0u)))), global1.d.x));
    let var_2 = _wgslsmith_sub_vec4_u32(~min(countOneBits(vec4<u32>(global1.b.a, 4294967295u, 4294967295u, 4294967295u)), ~vec4<u32>(69509u, global1.b.b.e.x, 13479u, var_1.c.x)) >> ((_wgslsmith_mult_vec4_u32(~vec4<u32>(global1.a.x, var_1.c.x, 12610u, 62619u), vec4<u32>(16149u, 26680u, 88493u, global1.b.b.e.x)) >> (~vec4<u32>(var_1.e.x, global1.b.b.c.x, global1.d.x, 47390u) % vec4<u32>(32u))) % vec4<u32>(32u)), countOneBits(~vec4<u32>(0u, max(var_1.c.x, global1.b.a), 43198u, _wgslsmith_mod_u32(120431u, var_1.e.x))));
    let var_3 = select(global1.b.b.b.yx, vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -457f) - _wgslsmith_f_op_f32(step(var_1.d.x, -237f))) * 1165f) < global2.x);
    var var_4 = ~25187u;
    return ~(~_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, ~var_2.x), ~var_2.xy));
}

fn func_1(arg_0: vec3<bool>) -> vec2<i32> {
    var var_0 = func_2(global1.b.b.c.x == 4294967295u, -vec2<i32>(_wgslsmith_div_i32(u_input.a.x, ~23786i), global1.b.b.a.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global1.c, _wgslsmith_f_op_vec4_f32(-global1.c))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-235f)), _wgslsmith_f_op_f32(global2.x + global2.x)), -384f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.b.d.x + global2.x) + -211f), _wgslsmith_f_op_f32(exp2(global2.x)))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * var_1.x)), -930f)))), ~(~38585u));
    let var_3 = -2147483647i;
    global0 = array<vec2<f32>, 18>();
    return u_input.a.yy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(_wgslsmith_dot_vec2_i32(~u_input.a.zy, func_1(select(!global1.b.b.b.ywy, vec3<bool>(global1.b.b.b.x, global1.b.b.b.x, global1.b.b.b.x), all(vec2<bool>(global1.b.b.b.x, false))))), ~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b ^ global1.b.b.a.x, u_input.a.x, _wgslsmith_div_i32(u_input.a.x, -78799i)), -u_input.b));
    var var_1 = Struct_1(-vec4<i32>(-var_0 << (global1.d.x % 32u), -(~(-1i)), 1i, 61314i), !(!global1.b.b.b), vec3<u32>(global1.d.x, global1.d.x, _wgslsmith_dot_vec3_u32(~max(global1.b.b.c, global1.a), abs(max(vec3<u32>(global1.d.x, 54760u, 43591u), vec3<u32>(global1.a.x, 57662u, 25169u))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(global1.c.yz)))))), vec2<f32>(1496f, _wgslsmith_f_op_f32(-1862f * -1428f)), _wgslsmith_add_u32(abs(global1.d.x), global1.d.x) >= 4488u)), global1.a.yz);
    let var_2 = ~select(vec3<u32>(1u, ~(global1.b.b.c.x ^ var_1.e.x), _wgslsmith_div_u32(_wgslsmith_add_u32(global1.d.x, 0u), global1.b.b.c.x)), min(vec3<u32>(~var_1.c.x, var_1.c.x, select(global1.a.x, 0u, true)), reverseBits(vec3<u32>(13670u, global1.b.a, 1u))), !global1.b.b.b.zyw);
    var var_3 = 1592f;
    let var_4 = Struct_2(var_1.e.x, Struct_1(~vec4<i32>(-1i, u_input.b, -var_1.a.x, -2147483647i), !(!vec4<bool>(var_1.b.x, false, var_1.b.x, false)), _wgslsmith_div_vec3_u32(vec3<u32>(~var_1.c.x, firstTrailingBit(0u), var_2.x), ~global1.a), var_1.d, firstLeadingBit(global1.b.b.e)));
    global1 = Struct_4(var_4.b.c, Struct_2(~(~74242u << (select(1u, 26652u, var_4.b.b.x) % 32u)), Struct_1(vec4<i32>(0i, 0i, _wgslsmith_sub_i32(u_input.b, -36705i), _wgslsmith_sub_i32(0i, -52068i)), select(!vec4<bool>(false, var_1.b.x, false, true), select(global1.b.b.b, vec4<bool>(true, false, false, var_1.b.x), global1.b.b.b.x), any(global1.b.b.b)), min(var_1.c | vec3<u32>(4294967295u, var_4.b.e.x, global1.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.x, 139186u, 9668u), vec3<u32>(38608u, 0u, global1.b.b.e.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1713f, -674f)))), _wgslsmith_div_vec2_u32(~vec2<u32>(997u, var_2.x), firstLeadingBit(var_4.b.e)))), vec4<f32>(global2.x, _wgslsmith_f_op_f32(ceil(var_1.d.x)), 1293f, 1009f), ~var_1.c);
    global1 = Struct_4(vec3<u32>(_wgslsmith_clamp_u32(~global1.a.x, 4294967295u, 1u), var_1.c.x, var_4.a), Struct_2(firstTrailingBit(var_1.c.x >> (70816u % 32u)) ^ 0u, Struct_1(vec4<i32>(-1i) * -var_1.a, vec4<bool>(false, all(var_1.b.xzw), any(var_1.b.www), true), ~vec3<u32>(8807u, var_2.x, 27915u), vec2<f32>(var_4.b.d.x, _wgslsmith_f_op_f32(1201f + global2.x)), vec2<u32>(1u ^ global1.b.b.e.x, ~var_1.c.x))), _wgslsmith_f_op_vec4_f32(-global1.c), _wgslsmith_clamp_vec3_u32(var_1.c, vec3<u32>(var_1.e.x, 0u, ~0u), _wgslsmith_div_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_4.b.e.x, var_4.a, 48705u), var_4.b.c)), max(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_2.x, global1.b.b.c.x), var_2), firstTrailingBit(vec3<u32>(0u, 1u, global1.d.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.x, global1.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, global2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-989f)), -1857f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1412f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.d.x)))) * global1.c), ~(-u_input.b));
}

