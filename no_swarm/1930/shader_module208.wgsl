struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 10>;

var<private> global1: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

var<private> global2: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_mod_u32(u_input.b, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.b, 44737u, 1u), _wgslsmith_sub_u32(~50190u, 15967u) >> (u_input.b % 32u), 0u));
    return Struct_2(vec3<bool>(true, true, !select(false, true, any(global1[_wgslsmith_index_u32(0u, 31u)]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> vec3<i32> {
    var var_0 = Struct_1(abs(_wgslsmith_add_vec3_i32(select(-vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(2147483647i, u_input.a, -27456i), select(global1[_wgslsmith_index_u32(arg_0.x, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], true)), min(vec3<i32>(u_input.a, -1i, 1i) | vec3<i32>(u_input.a, u_input.a, 2147483647i), reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a))))), u_input.b, vec4<i32>(u_input.a, -countOneBits(-1i) & u_input.a, reverseBits(~countOneBits(u_input.a)), u_input.a), countOneBits(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_0.x, arg_0.x), _wgslsmith_div_u32(13877u, 106204u), 1u), ~(~arg_0.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(815f + -1441f))), arg_1, -701f, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-248f - arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-282f, arg_1, -280f, -671f)))), vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true)), !(u_input.b != u_input.b), true != any(vec2<bool>(false, false)), true))));
    var var_1 = firstTrailingBit(vec2<i32>(var_0.c.x, u_input.a));
    let var_2 = ~select(arg_0.xw, vec2<u32>(arg_0.x, ~1u & ~var_0.d), !vec2<bool>(var_0.c.x == u_input.a, true));
    var var_3 = Struct_1(~var_0.a, ~25149u, _wgslsmith_clamp_vec4_i32(-vec4<i32>(-39298i << (var_0.b % 32u), -1i, 0i, -17484i), abs(-vec4<i32>(u_input.a, var_0.c.x, u_input.a, 0i)), var_0.c), 0u, vec4<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-var_0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.e.x))), arg_1, -2307f));
    let var_4 = Struct_2(func_2().a);
    return vec3<i32>(var_1.x, reverseBits(u_input.a), 0i);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    global2 = _wgslsmith_f_op_f32(step(105f, arg_0));
    var var_0 = !(!arg_1);
    global1 = array<vec3<bool>, 31>();
    var var_1 = func_2();
    var var_2 = Struct_1(abs(_wgslsmith_mod_vec3_i32(reverseBits(func_3(vec4<u32>(u_input.b, 0u, 5064u, u_input.b), 385f)), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), abs(vec3<i32>(1184i, u_input.a, -7770i))))), _wgslsmith_sub_u32(u_input.b, reverseBits(u_input.b)), firstTrailingBit(max(vec4<i32>(u_input.a, -u_input.a, u_input.a, _wgslsmith_mod_i32(u_input.a, u_input.a)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(-26577i, u_input.a, u_input.a)), func_3(vec4<u32>(4350u, u_input.b, u_input.b, u_input.b), arg_0).x, u_input.a, u_input.a))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), ~vec4<u32>(38297u, 12326u, 510u, u_input.b)), u_input.b, u_input.b, 11591u), vec4<u32>(4294967295u, 1u, u_input.b, u_input.b)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -903f, 569f) * vec4<f32>(1607f, arg_0, -1596f, arg_0)), vec4<f32>(arg_0, arg_0, arg_0, -1507f))))))));
    return ~(~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 10>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(2004f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f))))));
    let var_1 = any(vec4<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true))), false, true, all(vec3<bool>(false, false, true)) & (u_input.b < u_input.b))) | any(select(global1[_wgslsmith_index_u32(40979u, 31u)], global1[_wgslsmith_index_u32(func_1(-751f, select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true))), 31u)], true));
    let var_2 = any(select(!select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(var_1, false, var_1, true), var_1), !select(vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(false, false, false, true)), (-23901i >= u_input.a) & any(global1[_wgslsmith_index_u32(u_input.b, 31u)]))) != !any(vec4<bool>(select(false, true, true), select(var_1, false, false), var_1, var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(3218f, var_0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -191f), vec2<f32>(1429f, var_0.x), vec2<bool>(var_2, true))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 1033f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-204f, var_0.x), vec2<f32>(var_0.x, var_0.x), var_1))))))), select(vec2<u32>(u_input.b, 84986u), firstLeadingBit(vec2<u32>(43249u, 67548u)) >> ((~vec2<u32>(u_input.b, u_input.b) & ~vec2<u32>(u_input.b, 0u)) % vec2<u32>(32u)), all(select(!vec2<bool>(var_2, var_2), select(vec2<bool>(var_1, true), vec2<bool>(false, var_2), vec2<bool>(true, false)), any(vec3<bool>(false, true, false))))), ~_wgslsmith_div_u32(~_wgslsmith_mod_u32(63707u, 28119u), 25421u), reverseBits(max(u_input.a, u_input.a)));
}

