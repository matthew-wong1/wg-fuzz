struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(-1221f, 199f, -1241f, 192f, 620f, -1468f, 695f, -515f, -898f, 679f, 689f, 472f, -162f, -575f, -468f, -2405f, -133f, 747f, 743f, -679f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = Struct_1(vec3<i32>(-u_input.a, 1i, u_input.a), vec2<i32>(1i, ~(-u_input.a)), false);
    global0 = array<f32, 20>();
    var var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~12682u, _wgslsmith_add_u32(27812u, ~43932u), _wgslsmith_mult_u32(firstLeadingBit(1u), 1947u), firstLeadingBit(abs(0u)))) > ~(~select(~0u, 10214u << (1u % 32u), true));
    var var_2 = Struct_2(vec4<bool>(true, false, any(select(!vec4<bool>(var_0.c, var_0.c, true, true), !vec4<bool>(false, var_0.c, var_0.c, false), vec4<bool>(var_0.c, true, true, var_0.c))), any(select(!vec4<bool>(false, true, true, var_0.c), vec4<bool>(var_0.c, true, var_0.c, var_0.c), true))), var_0, ~4294967295u, !(true | !var_0.c), -1i);
    var var_3 = 4294967295u;
    return select(var_0.a.x, select(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_2.b.a, var_0.a, var_2.b.a), -vec3<i32>(u_input.a, var_0.a.x, var_0.b.x)) ^ abs(-33776i), var_0.b.x, all(var_2.a.zxz)), true);
}

fn func_2() -> Struct_4 {
    let var_0 = 41114i;
    let var_1 = Struct_3(~_wgslsmith_clamp_u32(firstLeadingBit(1u), 1u, 4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 20u)], -567f) * vec2<f32>(-752f, global0[_wgslsmith_index_u32(1u, 20u)])) + vec2<f32>(250f, -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(673f, 1173f)))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(-1034f, -909f), _wgslsmith_f_op_f32(-650f + 505f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(375f, global0[_wgslsmith_index_u32(4294967295u, 20u)])), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-942f, global0[_wgslsmith_index_u32(0u, 20u)]), vec2<f32>(global0[_wgslsmith_index_u32(13320u, 20u)], 350f), vec2<bool>(true, true)))))))), vec4<i32>(reverseBits(func_3()), -1i, -1i, abs(-1i)), -(min(-var_0, u_input.a) | ~u_input.a), (i32(-1i) * -7021i) | firstLeadingBit(_wgslsmith_sub_i32(-30649i, u_input.a) << (23657u % 32u)));
    var var_2 = Struct_2(!vec4<bool>(true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))), all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), ~1u > var_1.a), Struct_1((firstLeadingBit(var_1.c.wxx) ^ countOneBits(vec3<i32>(15093i, 43032i, var_0))) ^ var_1.c.wzz, vec2<i32>(abs(-41516i), var_1.d), true | select(true, all(vec3<bool>(false, false, true)), false)), var_1.a, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false), true)) | true, -2147483647i);
    global0 = array<f32, 20>();
    var_2 = Struct_2(!(!var_2.a), var_2.b, var_2.c, false, -26595i);
    return Struct_4(vec3<bool>(select(!(!var_2.d), var_2.b.c, all(!vec3<bool>(true, false, var_2.a.x))), _wgslsmith_clamp_i32(var_0, var_1.d, u_input.a) <= u_input.a, true), select(_wgslsmith_sub_vec2_i32(vec2<i32>(79280i, 1i), ~var_1.c.xx), vec2<i32>(firstTrailingBit(var_0), 1i), select(var_2.a.yw, vec2<bool>(var_2.a.x, var_2.d), any(vec4<bool>(var_2.b.c, var_2.d, var_2.b.c, var_2.a.x)))) | reverseBits(var_2.b.b));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>) -> vec3<u32> {
    global0 = array<f32, 20>();
    var var_0 = any(arg_0.xwx);
    global0 = array<f32, 20>();
    var var_1 = func_2();
    var var_2 = min(-vec4<i32>(-38567i, firstLeadingBit(2147483647i), _wgslsmith_dot_vec2_i32(-vec2<i32>(15430i, -1714i), select(vec2<i32>(u_input.a, arg_1.x), vec2<i32>(arg_1.x, 37793i), var_1.a.yx)), -2147483647i), max(-(~(vec4<i32>(arg_1.x, u_input.a, 0i, 37361i) ^ vec4<i32>(-7502i, -49859i, u_input.a, var_1.b.x))), abs(-(vec4<i32>(-2147483647i, var_1.b.x, -28175i, arg_1.x) | vec4<i32>(arg_1.x, var_1.b.x, 1i, 1i)))));
    return ~(~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 78455u, 37140u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(7825u, 8345u, 8140u)), countOneBits(vec3<u32>(16178u, 4294967295u, 69133u))), ~(~vec3<u32>(4503u, 1u, 1u)), vec3<u32>(1u, 4294967295u, _wgslsmith_div_u32(70316u, 48333u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 20>();
    var var_0 = vec3<u32>(1u, 1u, 1u) >> (_wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, 1u, 1u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), func_1(vec4<bool>(true, true, false, true), vec3<i32>(u_input.a, u_input.a, -49335i)))) % vec3<u32>(32u));
    var_0 = vec3<u32>(var_0.x, var_0.x & _wgslsmith_clamp_u32(20718u, var_0.x, abs(_wgslsmith_div_u32(var_0.x, 0u))), 1u);
    global0 = array<f32, 20>();
    let var_1 = ~(_wgslsmith_sub_u32(1u, ~var_0.x) | min(min(~var_0.x, var_0.x), _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, var_0.x), 0u)));
    global0 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(14208u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -279f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-827f, 325f, -448f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-128f, global0[_wgslsmith_index_u32(var_0.x, 20u)], global0[_wgslsmith_index_u32(1u, 20u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_1, 20u)], global0[_wgslsmith_index_u32(105690u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)]))))), -2147483647i);
}

