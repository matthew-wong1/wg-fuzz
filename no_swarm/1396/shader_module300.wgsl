struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> i32 {
    return min(countOneBits(1i), ~u_input.a);
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    global0 = array<vec2<f32>, 19>();
    let var_0 = u_input.a;
    var var_1 = vec3<i32>(u_input.a, u_input.a, -select(var_0, abs(var_0), arg_0.x >= arg_0.x));
    var var_2 = Struct_1(~(~(~(~36935u))), arg_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, arg_0.x, -2739f, arg_0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, 995f, 420f, arg_0.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-169f, -532f, arg_0.x, 456f) + vec4<f32>(arg_0.x, 706f, arg_0.x, arg_0.x)))))), vec4<i32>(select(u_input.a, func_3(), false), 19361i, -2147483647i, -34591i), !all(vec4<bool>(false, arg_0.x >= -269f, false, any(vec3<bool>(true, true, false)))));
    var var_3 = _wgslsmith_dot_vec3_i32(-var_2.d.yxw, ((var_2.d.xxx | var_2.d.zyz) & _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 0i, 1i) | vec3<i32>(2147483647i, 0i, u_input.a), var_2.d.wyy, -var_2.d.xyw)) >> (max(~vec3<u32>(0u, var_2.a, var_2.a), ~min(vec3<u32>(var_2.a, var_2.a, 4294967295u), vec3<u32>(66016u, 1u, 4294967295u))) % vec3<u32>(32u)));
    return countOneBits(var_2.a);
}

fn func_1() -> u32 {
    global0 = array<vec2<f32>, 19>();
    let var_0 = ~select(min(select(vec3<u32>(0u, 21792u, 29629u), vec3<u32>(25997u, 4294967295u, 0u), true) | vec3<u32>(4294967295u, 17409u, 4294967295u), vec3<u32>(_wgslsmith_mult_u32(41467u, 14916u), 20365u, func_2(vec2<f32>(-1356f, 590f)))), reverseBits(vec3<u32>(~15299u, 1u, max(0u, 1u))), select(vec3<bool>(true, true, true), vec3<bool>(select(false, false, true), true, any(vec4<bool>(false, false, false, false))), vec3<bool>(true, true, true)));
    global0 = array<vec2<f32>, 19>();
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, select(min(var_0.x, _wgslsmith_mult_u32(4294967295u, var_0.x)), _wgslsmith_mult_u32(~var_0.x, _wgslsmith_add_u32(var_0.x, 121484u)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))), ~var_0.x, min(reverseBits(var_0.x), 32275u)), ~(~max(~vec4<u32>(var_0.x, 26665u, var_0.x, 0u), ~vec4<u32>(27108u, var_0.x, 4294967295u, 23347u))));
    global0 = array<vec2<f32>, 19>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(4294967295u, ~func_1(), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(1u, 0u), vec2<u32>(29340u, 1u), vec2<bool>(true, false)) & vec2<u32>(1u, 1u), ~countOneBits(countOneBits(vec2<u32>(0u, 0u)))));
    var_0 = vec3<u32>(var_0.x, firstTrailingBit(func_2(vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -652f)))), ~_wgslsmith_add_u32(50394u, _wgslsmith_clamp_u32(var_0.x, ~var_0.x, ~0u)));
    var_0 = vec3<u32>(func_2(_wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, 1u), 19u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(13399u, 19u)], vec2<f32>(1000f, -741f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f))), vec2<bool>(any(vec2<bool>(true, false)), true)))), func_1(), 0u);
    var_0 = _wgslsmith_mult_vec3_u32(firstLeadingBit(~abs(vec3<u32>(var_0.x, 36092u, var_0.x))), vec3<u32>(var_0.x, reverseBits(77159u), _wgslsmith_mult_u32(var_0.x ^ 35599u, 1u ^ var_0.x)) | ~(~vec3<u32>(var_0.x, var_0.x, 52271u) >> (min(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, 78174u, 1u)) % vec3<u32>(32u))));
    var var_1 = 50181u;
    let var_2 = firstLeadingBit(var_0.x);
    var var_3 = abs(_wgslsmith_add_vec3_i32(~(~vec3<i32>(-22158i, 1i, -2147483647i)), ~vec3<i32>(36147i | u_input.a, 0i, _wgslsmith_add_i32(-1i, u_input.a))));
    var var_4 = select(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), false), vec4<bool>(true, true, true, true), true), vec4<bool>(!(-8734i >= _wgslsmith_dot_vec2_i32(var_3.xy, var_3.xx)), !any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), !(any(vec3<bool>(false, false, true)) && all(vec3<bool>(false, false, true))), u_input.a <= 11341i), !vec4<bool>(false, true, true, -1216f <= _wgslsmith_f_op_f32(sign(1292f))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x, ~abs(countOneBits(firstTrailingBit(vec4<u32>(4294967295u, 40247u, 14360u, 4294967295u)))), 70917u, -50409i);
}

