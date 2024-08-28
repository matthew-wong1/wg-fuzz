struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30>;

var<private> global1: vec2<bool>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(175f, 1000f))), vec2<f32>(331f, -1651f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(577f, -3300f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1416f + 1f), -553f)));
    let var_1 = reverseBits(vec2<u32>(u_input.a, 1u));
    var var_2 = Struct_3(arg_0);
    let var_3 = vec3<i32>(~1i, ~(-var_2.a.a), u_input.b);
    let var_4 = vec2<u32>(countOneBits(u_input.a), _wgslsmith_dot_vec3_u32(~(~abs(vec3<u32>(var_1.x, 4294967295u, 26191u))), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(99779u, var_1.x, var_1.x), vec3<u32>(u_input.a, 37339u, var_1.x)))));
    return true;
}

fn func_2() -> Struct_2 {
    global1 = select(vec2<bool>(u_input.a >= ~(~4294967295u), all(!vec2<bool>(global1.x, true))), !(!vec2<bool>(select(global1.x, true, global1.x), func_3(Struct_2(u_input.b)))), false);
    let var_0 = Struct_2(_wgslsmith_div_i32(max(_wgslsmith_mod_i32(u_input.b, -u_input.b), select(u_input.b ^ u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b), all(vec2<bool>(false, true)))), min(-_wgslsmith_mult_i32(15742i, -23373i), -29743i)));
    let var_1 = Struct_4(!global0[_wgslsmith_index_u32(1u, 30u)], 2147483647i, var_0);
    global0 = array<vec4<bool>, 30>();
    let var_2 = _wgslsmith_add_vec2_u32(firstLeadingBit(firstTrailingBit(~vec2<u32>(u_input.a, 39674u) << (vec2<u32>(27015u, u_input.a) % vec2<u32>(32u)))), countOneBits(~(~(vec2<u32>(4294967295u, u_input.a) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))))));
    return Struct_2(var_0.a);
}

fn func_1(arg_0: bool) -> vec2<u32> {
    let var_0 = func_2();
    global0 = array<vec4<bool>, 30>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(1000f + 1f), _wgslsmith_f_op_f32(-1195f - _wgslsmith_f_op_f32(f32(-1f) * -303f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 1018f)) - _wgslsmith_f_op_f32(f32(-1f) * -166f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1588f, -1111f, 1000f) + vec3<f32>(-1310f, -1000f, -715f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(951f, -251f, -872f))))))), !select(!select(vec3<bool>(arg_0, false, false), vec3<bool>(true, false, false), global1.x), !select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0, arg_0), true), global1.x)));
    var var_2 = 1u;
    var var_3 = _wgslsmith_div_u32(~29581u, 1u);
    return vec2<u32>(13378u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 27400u, u_input.a) ^ vec3<u32>(0u, u_input.a, 65978u), _wgslsmith_add_vec3_u32(vec3<u32>(15055u, 0u, u_input.a), vec3<u32>(u_input.a, 4294967295u, 46450u))) | ~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)) | abs(~(~vec2<u32>(u_input.a, 19814u)) | _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 1u), ~vec2<u32>(u_input.a, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_add_vec4_i32(firstTrailingBit(min(vec4<i32>(-26567i, u_input.b, 0i, u_input.b), vec4<i32>(-2147483647i, u_input.b, u_input.b, 2422i))) ^ ~(vec4<i32>(1i, u_input.b, u_input.b, u_input.b) ^ vec4<i32>(0i, u_input.b, 63342i, u_input.b)), vec4<i32>(-(u_input.b << (36979u % 32u)), u_input.b << (max(0u, u_input.a) % 32u), 0i, -2147483647i)));
    var var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 4294967295u), select(vec2<u32>(4294967295u, u_input.a) ^ vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), global1.x) & ~func_1(global1.x), select(~abs(vec2<u32>(u_input.a, 0u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 53581u), vec2<u32>(31049u, u_input.a)), all(select(vec2<bool>(true, true), vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x))))), _wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(u_input.a, u_input.a))), ~firstLeadingBit(~vec2<u32>(u_input.a, 43957u))));
    let var_2 = Struct_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(701f)) - _wgslsmith_f_op_f32(sign(865f))), 1199f, false))), ~(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, u_input.a, var_1.x, u_input.a), vec4<u32>(var_1.x, 11944u, u_input.a, 0u), vec4<u32>(57470u, var_1.x, 27510u, u_input.a)) << (min(vec4<u32>(u_input.a, u_input.a, 22817u, 4294967295u), vec4<u32>(0u, u_input.a, 1u, var_1.x)) % vec4<u32>(32u)))), ~vec4<u32>(u_input.a, reverseBits(~97926u), 22657u, (u_input.a ^ 4294967295u) | countOneBits(42522u)), ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(32644u, 0u, 4294967295u), ~vec3<u32>(var_1.x, 4294967295u, var_1.x)), ~vec3<u32>(1u, 1u, 1u)), _wgslsmith_div_u32(~u_input.a, 39278u));
    let var_3 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.d.x), var_2.b.yx), 1u), 30u)], var_0.x, func_2());
    var var_4 = 16386i;
    let x = u_input.a;
    s_output = StorageBuffer(max(1u, ~var_1.x), vec2<i32>(~(select(2147483647i, -4761i, global1.x) << ((4294967295u << (var_1.x % 32u)) % 32u)), _wgslsmith_add_i32(1i, 1i) << (u_input.a % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(floor(1029f)), var_2.a.x, _wgslsmith_f_op_f32(669f * -576f))))), vec2<f32>(_wgslsmith_f_op_f32(-585f + var_2.a.x), 1280f));
}

