struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32;

var<private> global2: array<vec3<f32>, 25>;

var<private> global3: array<vec2<i32>, 5>;

var<private> global4: f32 = 375f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    var var_0 = arg_0;
    global4 = arg_1.x;
    var_0 = Struct_1(arg_0.a);
    let var_1 = ~u_input.a.x & u_input.a.x;
    var var_2 = Struct_1(u_input.b);
    return ~(_wgslsmith_add_i32(_wgslsmith_add_i32(35694i, 0i), var_0.a) >> (1u % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_mult_i32(func_3(arg_3, vec4<f32>(_wgslsmith_f_op_f32(ceil(658f)), _wgslsmith_f_op_f32(f32(-1f) * -909f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-186f))), true), -2147483647i));
    var var_1 = arg_3;
    var var_2 = var_0.a;
    let var_3 = !select(vec2<bool>(any(vec3<bool>(false, true, false)), true), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, true)), false);
    global1 = ~firstTrailingBit(arg_2);
    return select(vec3<bool>(true, false, all(select(vec4<bool>(var_3.x, var_3.x, var_3.x, false), !vec4<bool>(true, false, true, var_3.x), true))), select(select(vec3<bool>(false, var_3.x, var_3.x == var_3.x), !vec3<bool>(var_3.x, true, var_3.x), var_3.x), select(vec3<bool>(true, false, true), select(select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, var_3.x, var_3.x), var_3.x), !vec3<bool>(var_3.x, false, false), all(vec3<bool>(false, var_3.x, true))), select(vec3<bool>(false, false, false), !vec3<bool>(var_3.x, var_3.x, var_3.x), arg_2 >= arg_2)), select(select(!vec3<bool>(var_3.x, true, var_3.x), select(vec3<bool>(false, var_3.x, true), vec3<bool>(var_3.x, var_3.x, true), vec3<bool>(var_3.x, false, var_3.x)), vec3<bool>(true, true, var_3.x)), vec3<bool>(true, any(vec4<bool>(false, true, false, false)), var_3.x | var_3.x), !(!var_3.x))), vec3<bool>(true, ~arg_2 <= 1u, select(true, !(false || var_3.x), var_3.x)));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(22009i);
    let var_1 = select(!vec3<bool>(false, any(vec4<bool>(true, true, true, true)), false), select(vec3<bool>(false, !any(vec3<bool>(true, false, false)), true), select(func_2(Struct_1(-33405i), ~vec4<i32>(var_0.a, u_input.b, u_input.b, -2478i), ~0u, var_0), vec3<bool>(true, true, true), func_2(Struct_1(u_input.b), reverseBits(vec4<i32>(-51147i, u_input.b, var_0.a, 0i)), _wgslsmith_clamp_u32(33507u, u_input.a.x, 1u), Struct_1(var_0.a))), vec3<bool>(false, !all(vec3<bool>(true, true, false)), !any(vec2<bool>(false, false)))), !vec3<bool>(false, any(vec2<bool>(true, false)), !select(false, false, false)));
    var var_2 = _wgslsmith_dot_vec3_i32(~(~vec3<i32>(80386i, 62958i, var_0.a)) ^ vec3<i32>(_wgslsmith_clamp_i32(func_3(Struct_1(-2147483647i), vec4<f32>(773f, 735f, -564f, -884f), false), firstLeadingBit(u_input.b), ~var_0.a), -u_input.b, _wgslsmith_sub_i32(~42457i, var_0.a << (u_input.a.x % 32u))), -_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a, _wgslsmith_mult_i32(u_input.b, 2147483647i), func_3(Struct_1(u_input.b), vec4<f32>(-716f, 903f, 608f, 916f), false)), ~vec3<i32>(u_input.b, 27665i, 37431i)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1477f, 446f, -2408f, -112f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-555f, 2608f, -1568f, -186f), vec4<f32>(1000f, 333f, -639f, 1981f))), var_1.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-104f, -362f, -106f, 1243f) + vec4<f32>(-1791f, -376f, -263f, -180f)), vec4<f32>(-379f, 786f, 706f, -1698f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(880f, 755f, 340f, 484f), vec4<f32>(1000f, 2091f, -719f, -443f))) - vec4<f32>(829f, -544f, 1716f, -1785f)))));
    var var_4 = u_input.a.xz;
    return _wgslsmith_f_op_f32(-171f - -741f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-27233i);
    global2 = array<vec3<f32>, 25>();
    let var_1 = vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~0u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(12548u, u_input.a.x), u_input.a.ww)), u_input.a.x);
    global4 = _wgslsmith_f_op_f32(f32(-1f) * -1450f);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * 665f) + var_2)))), var_2));
    global2 = array<vec3<f32>, 25>();
    var var_4 = 42911u ^ _wgslsmith_mod_u32(abs(~var_1.x), 65788u);
    let x = u_input.a;
    s_output = StorageBuffer(21802u | reverseBits(var_1.x), reverseBits(u_input.a), _wgslsmith_f_op_f32(-var_3), _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, var_0.a), vec4<i32>(u_input.b, u_input.b, -37954i, u_input.b)), -vec4<i32>(-11694i, var_0.a, u_input.b, 3203i)), select(-35431i, ~var_0.a, any(vec4<bool>(true, true, false, true))) | -1i));
}

