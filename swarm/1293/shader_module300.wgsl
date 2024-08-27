struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true));

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false));

var<private> global2: vec2<u32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(2963u << (1u % 32u), arg_0.c.x, arg_0.b.x, _wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(1818u, 1u, 0u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(3982u, u_input.a, arg_0.c.x, 1u), select(vec4<u32>(arg_0.b.x, arg_0.b.x, 4294967295u, global2.x), vec4<u32>(93697u, u_input.e, 55125u, u_input.b), vec4<bool>(true, arg_0.d, true, false)), max(vec4<u32>(arg_0.c.x, 17219u, 31330u, u_input.a), vec4<u32>(arg_0.b.x, 34169u, 55918u, 38169u))))), 8u)];
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, 895f, -420f) * vec4<f32>(-198f, arg_0.a, -1000f, arg_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, -1342f) + vec4<f32>(-529f, arg_0.a, -1561f, -1090f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(895f, arg_0.a, arg_0.a, 1369f) * vec4<f32>(arg_0.a, 251f, arg_0.a, arg_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.a)), arg_0.a, -928f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(sign(arg_0.a)), arg_0.a, arg_0.a)))));
    let var_3 = vec4<i32>(_wgslsmith_add_i32(~_wgslsmith_add_i32(-15159i, u_input.d), u_input.c.x), u_input.c.x, 1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.c.x, -1i, -31553i), vec3<i32>(u_input.d, u_input.c.x, -1i), vec3<bool>(false, true, arg_0.d)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.d), vec3<i32>(u_input.d, 80313i, u_input.c.x)), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.c.x, 7305i, u_input.c.x), vec3<i32>(u_input.c.x, -2633i, 32710i)))) ^ reverseBits(max(vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -2147483647i), u_input.d, -u_input.d, 1i), max(vec4<i32>(u_input.c.x, 0i, -1633i, 0i), vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.d)) | select(vec4<i32>(1i, 1i, 1i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.d), false)));
    var var_4 = !vec3<bool>(-firstTrailingBit(u_input.c.x) >= -var_3.x, var_1, var_2.x == var_2.x);
    return max(_wgslsmith_sub_i32(~abs(var_3.x), 0i), -1i);
}

fn func_2(arg_0: vec3<i32>) -> vec2<u32> {
    global2 = vec2<u32>(global2.x, ~(26381u >> (_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, 0u, 37551u), vec3<u32>(global2.x, 0u, u_input.b), true), vec3<u32>(4294967295u, 27318u, 4294967295u)) % 32u)));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1890f), _wgslsmith_f_op_f32(f32(-1f) * -122f));
    let var_1 = _wgslsmith_mod_i32(0i >> (u_input.a % 32u), func_3(Struct_1(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 3091u, 7603u), ~vec3<u32>(u_input.a, global2.x, 4294967295u)), _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(1u, 61031u)), vec2<u32>(u_input.b, global2.x), ~vec2<u32>(4294967295u, global2.x)), true | (var_0.x == var_0.x))));
    return _wgslsmith_sub_vec2_u32(max(~(~vec2<u32>(u_input.e, 1u)) >> (_wgslsmith_add_vec2_u32(abs(vec2<u32>(5551u, u_input.e)), select(vec2<u32>(1u, u_input.b), vec2<u32>(0u, global2.x), vec2<bool>(false, false))) % vec2<u32>(32u)), select(~(~vec2<u32>(global2.x, u_input.e)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(33956u, u_input.e), vec2<u32>(u_input.b, u_input.a)), !any(vec4<bool>(true, true, false, true)))), max(((vec2<u32>(85697u, 1u) ^ vec2<u32>(u_input.e, u_input.b)) & ~vec2<u32>(u_input.b, u_input.b)) | ~firstLeadingBit(vec2<u32>(33670u, u_input.b)), ~vec2<u32>(u_input.b >> (u_input.e % 32u), u_input.b)));
}

fn func_1() -> vec2<u32> {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    var var_0 = global1[_wgslsmith_index_u32(~(~(~(~(u_input.e << (4294967295u % 32u))))), 8u)];
    global0 = array<Struct_2, 20>();
    let var_1 = _wgslsmith_f_op_f32(1059f * _wgslsmith_f_op_f32(max(-497f, 1f)));
    return ~(func_2(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, u_input.d, -48731i), vec3<i32>(u_input.d, 9893i, 12728i))) >> (_wgslsmith_add_vec2_u32(abs(~vec2<u32>(global2.x, global2.x)), vec2<u32>(global2.x, 1u) ^ ~vec2<u32>(global2.x, 48704u)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 8>();
    var var_0 = global0[_wgslsmith_index_u32(global2.x, 20u)];
    var var_1 = ~(~(_wgslsmith_add_vec2_u32(vec2<u32>(1u, global2.x), vec2<u32>(71141u, u_input.e)) ^ vec2<u32>(0u, 1u)) & _wgslsmith_div_vec2_u32(func_1(), vec2<u32>(u_input.e, ~33277u)));
    var var_2 = -abs(-59331i);
    var_1 = vec2<u32>(18420u >> (var_1.x % 32u), countOneBits(0u));
    global1 = array<Struct_2, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1044f, 398f) - vec2<f32>(621f, -572f))))), -522f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 368f, -174f, -749f) - vec4<f32>(252f, 1673f, 595f, -185f)))))));
}

