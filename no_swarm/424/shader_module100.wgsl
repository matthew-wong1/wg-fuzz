struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<f32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_0)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> u32 {
    var var_0 = -1000f;
    let var_1 = Struct_1(~(-select(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 27747i, -20941i)), true)), 62660i, u_input.a | reverseBits(1i), arg_1.yy, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1325f + -1306f), _wgslsmith_f_op_f32(-2170f + -1000f), _wgslsmith_f_op_f32(-349f - -996f), _wgslsmith_f_op_f32(f32(-1f) * -903f))))));
    let var_2 = 5837i;
    global0 = array<vec2<i32>, 22>();
    let var_3 = 42457u;
    return ~var_3;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1385f, -1407f)), vec2<f32>(1303f, 1706f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1611f, 343f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(698f, -535f))))))));
    global0 = array<vec2<i32>, 22>();
    let var_1 = 1u ^ _wgslsmith_mult_u32(func_3(4294967295u, countOneBits(vec4<u32>(1u, 1u, 1u, 1u))), ~firstLeadingBit(select(7886u, 0u, true)));
    var var_2 = _wgslsmith_add_i32(firstLeadingBit(19825i), -2076i);
    let var_3 = ~_wgslsmith_mod_vec2_i32(global0[_wgslsmith_index_u32(var_1, 22u)], global0[_wgslsmith_index_u32(37203u, 22u)]);
    return -56088i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(func_1(), 20509i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(1u, 22u)] >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), vec2<i32>(-20408i, u_input.a)), ~u_input.a, 0i), abs(~firstLeadingBit(vec2<u32>(2954u, 4294967295u))), vec4<f32>(-754f, _wgslsmith_f_op_f32(f32(-1f) * -1438f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f), -604f)), Struct_3(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, false), all(vec4<bool>(false, true, false, false))), true), Struct_1(~u_input.a, 2147483647i, u_input.a, select(~vec2<u32>(4294967295u, 11337u), ~vec2<u32>(27128u, 3435u), true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-238f, 968f, 145f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2157f, -1522f, -1160f, 672f)), vec4<bool>(true, true, true, true)))), min(1u, ~120982u), Struct_1(1i, u_input.a, ~(-1i) & -u_input.a, _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(28354u, 52152u)), vec2<u32>(1u, 1u)), vec4<f32>(_wgslsmith_f_op_f32(1423f * 749f), _wgslsmith_f_op_f32(trunc(-2621f)), -1000f, _wgslsmith_f_op_f32(-507f + -2086f))), -531f), Struct_2(Struct_1(u_input.a, -45819i, u_input.a, _wgslsmith_clamp_vec2_u32(select(vec2<u32>(0u, 8547u), vec2<u32>(466u, 4294967295u), vec2<bool>(true, true)), max(vec2<u32>(0u, 9312u), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(20685u, 43708u)), vec4<f32>(-465f, _wgslsmith_f_op_f32(f32(-1f) * -594f), 454f, _wgslsmith_f_op_f32(510f * 683f))), Struct_1(_wgslsmith_sub_i32(min(u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, -1i), vec3<i32>(u_input.a, -1i, u_input.a))), -u_input.a, ~(-2147483647i) & u_input.a, ~_wgslsmith_div_vec2_u32(vec2<u32>(11083u, 1u), vec2<u32>(1u, 18304u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(476f, -1000f, 122f, -562f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(624f, -703f, 260f, 1047f), vec4<f32>(657f, 3048f, 1157f, 131f), false)))), _wgslsmith_f_op_f32(616f + -1000f)));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.b.e.x - var_0.a.e.x) - -1156f)))));
    let var_2 = ~_wgslsmith_clamp_vec4_u32(max(vec4<u32>(25563u, var_0.a.d.x, var_0.a.d.x, var_0.c.b.d.x), vec4<u32>(56334u, 9723u, 4294967295u, var_0.c.a.d.x)) >> ((vec4<u32>(var_0.b.b.d.x, 71272u, var_0.a.d.x, 1u) << (vec4<u32>(402u, 1u, var_0.a.d.x, 73611u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(select(vec4<u32>(12128u, 71265u, var_0.c.a.d.x, var_0.a.d.x), vec4<u32>(0u, 0u, 4294967295u, var_0.a.d.x), vec4<bool>(true, var_0.b.a.x, var_0.b.a.x, true)), vec4<u32>(19913u, 0u, var_0.c.a.d.x, 30851u)), vec4<u32>(~1u, var_0.a.d.x, 1u, var_0.a.d.x)) & max(_wgslsmith_div_vec4_u32(vec4<u32>(39131u, 0u, var_0.b.b.d.x, 40467u), vec4<u32>(var_0.c.b.d.x, var_0.c.a.d.x, 0u, 53691u) | vec4<u32>(var_0.a.d.x, 1u, var_0.c.b.d.x, 1u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.d.d.x, var_0.b.b.d.x, 4294967295u, 4294967295u), vec4<u32>(116669u, var_0.c.a.d.x, var_0.b.d.d.x, var_0.a.d.x), ~vec4<u32>(var_0.c.a.d.x, var_0.b.d.d.x, 36306u, var_0.c.a.d.x)), abs(vec4<u32>(func_3(46161u, vec4<u32>(var_0.c.a.d.x, 0u, 58720u, 0u)), 1u, abs(1u), select(var_0.c.b.d.x, 0u, var_0.b.a.x))));
    var_1 = var_0.a.e.x;
    let var_3 = vec2<bool>(all(select(select(select(vec4<bool>(true, var_0.b.a.x, false, false), vec4<bool>(var_0.b.a.x, true, var_0.b.a.x, var_0.b.a.x), false), !vec4<bool>(var_0.b.a.x, false, false, var_0.b.a.x), !vec4<bool>(var_0.b.a.x, false, var_0.b.a.x, false)), vec4<bool>(var_0.a.e.x > var_0.a.e.x, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), true)), false);
    let x = u_input.a;
    s_output = StorageBuffer(~var_2, min(vec4<i32>(firstTrailingBit(-1i) >> (func_3(var_0.a.d.x, var_2) % 32u), var_0.a.a, -2147483647i, _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4978u, 1u), 22u)], global0[_wgslsmith_index_u32(1u, 22u)])), min(countOneBits(-vec4<i32>(u_input.a, u_input.a, u_input.a, var_0.c.a.b)), countOneBits(-vec4<i32>(var_0.a.a, var_0.b.b.c, 36662i, u_input.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(527f, -433f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(581f + var_0.b.b.e.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -974f), _wgslsmith_f_op_f32(max(var_0.a.e.x, 796f))))) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1526f))), _wgslsmith_f_op_f32(f32(-1f) * -851f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + -668f), -869f)), _wgslsmith_div_vec3_f32(vec3<f32>(650f, var_0.c.b.e.x, var_0.c.a.e.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.b.d.e.ywy)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(737f, var_0.c.b.e.x, var_0.b.e))))));
}

