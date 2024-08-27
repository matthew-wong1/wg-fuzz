struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 14>;

var<private> global1: u32 = 7082u;

var<private> global2: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    global1 = 92431u;
    return vec4<u32>(_wgslsmith_add_u32(20363u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(14067u, 9192u, 0u, 7277u), vec4<u32>(82952u, 4294967295u, 65079u, 16123u)), vec4<u32>(4294967295u, 4294967295u, 72322u, 1u))), 21167u, _wgslsmith_div_u32(abs(1u), ~(~(~1u))), firstLeadingBit(~1u));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = (_wgslsmith_sub_vec4_i32(~(vec4<i32>(u_input.b, u_input.b, 24000i, u_input.c) ^ arg_0.c), vec4<i32>(arg_0.a.x, arg_0.a.x, 1i, arg_0.a.x) >> (~vec4<u32>(1u, 4294967295u, 1u, 48873u) % vec4<u32>(32u))) & arg_0.c) >> (~func_3() % vec4<u32>(32u));
    global2 = -2147483647i;
    var var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = min(countOneBits(func_3().x), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4730u, 70229u), ~vec3<u32>(49792u, 26942u, 1u))) ^ ~max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 29787u), vec4<u32>(73029u, 45423u, 4294967295u, 6356u)), max(~0u, 1u));
    return vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)) || !(_wgslsmith_f_op_f32(955f * var_2.b) >= -1305f), true);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    let var_0 = func_2(arg_2);
    global1 = _wgslsmith_dot_vec4_u32(max(~(~vec4<u32>(66311u, arg_0, 1u, 46516u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1332u, arg_0, arg_0, arg_0) & vec4<u32>(41818u, arg_0, 4294967295u, arg_3.x), ~vec4<u32>(arg_3.x, arg_0, 3864u, 26875u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 1u, arg_0, 82687u), vec4<u32>(65607u, 4294967295u, 2359u, arg_0)))), min(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_3.x, 1u, 52056u), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(8114u, 6113u, 4294967295u, 43066u)), ~vec4<u32>(arg_0, arg_0, 1u, 55744u))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(arg_3, arg_3), ~arg_3.x, firstLeadingBit(0u), arg_0)));
    var var_1 = arg_2;
    global0 = array<vec2<u32>, 14>();
    global0 = array<vec2<u32>, 14>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var var_1 = vec2<bool>(select(any(select(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), true), select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x)), !vec4<bool>(true, false, var_0.x, var_0.x))), (u_input.b <= countOneBits(u_input.b)) != (!var_0.x && any(vec4<bool>(true, true, var_0.x, var_0.x))), !func_1(1078u, max(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(1i, u_input.b)), Struct_1(vec2<i32>(u_input.a, -1i), -226f, vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), 827f, 0i), vec3<u32>(1u, 1u, 1u))), all(!select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, true, false), var_0.x), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, false)), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x)))));
    let var_2 = vec3<f32>(2529f, -699f, -1381f);
    global2 = -abs(select(-u_input.b, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c, u_input.a), vec3<i32>(-2147483647i, u_input.c, u_input.a)), u_input.c & 14658i), all(select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x)))));
    global1 = ~(~min(1u, ~(~741u)));
    var_1 = vec2<bool>(!var_1.x, var_1.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(815f, 600f, -1100f, 1279f), vec4<f32>(var_2.x, 192f, var_2.x, 664f))))) + vec4<f32>(var_2.x, var_2.x, 862f, var_2.x));
    let var_4 = ((reverseBits(vec4<i32>(-1i, 2147483647i, u_input.a, u_input.c)) | select(vec4<i32>(0i, u_input.c, u_input.b, 2699i), vec4<i32>(u_input.c, -36596i, u_input.a, 0i), true)) & (vec4<i32>(-1i) * -(vec4<i32>(7538i, -4293i, u_input.b, -2147483647i) ^ vec4<i32>(34154i, -1i, 16482i, u_input.b)))) << (select(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(select(1u, 4294967295u, true), _wgslsmith_mod_u32(1u, 11459u), 1u, 1u), select(!vec4<bool>(false, var_1.x, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.x, true, true, var_1.x), vec4<bool>(false, var_1.x, true, var_0.x), var_0.x))), vec4<u32>(1u, 4294967295u, 1u, _wgslsmith_mod_u32(91243u, 47890u)), select(select(select(vec4<bool>(var_1.x, true, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, true, false, var_0.x)), !vec4<bool>(var_0.x, var_1.x, var_0.x, var_1.x), !vec4<bool>(var_1.x, false, false, false)), vec4<bool>(var_1.x, false, var_1.x || true, false), select(vec4<bool>(false, var_1.x, var_1.x, var_0.x), vec4<bool>(false, true, var_1.x, var_1.x), var_3.x > 250f))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(max((func_3().x | 17516u) ^ _wgslsmith_sub_u32(25983u, 1u), 4294967295u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2231f, 1000f)) * _wgslsmith_f_op_f32(-var_3.x)) * var_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, var_2.x, 237f, 1461f), var_3)))), vec4<f32>(_wgslsmith_f_op_f32(var_3.x + var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1711f), _wgslsmith_f_op_f32(f32(-1f) * -904f), 795f), vec4<bool>(var_0.x, true, var_1.x, true))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1279f, var_3.x, var_3.x, var_3.x), var_3)))));
}

