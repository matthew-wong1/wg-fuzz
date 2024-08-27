struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: u32) -> bool {
    var var_0 = vec2<u32>(~(~firstTrailingBit(0u)), _wgslsmith_sub_u32(max(0u, _wgslsmith_mult_u32(1u, arg_1) & 0u), ~u_input.b.x));
    var var_1 = Struct_1(~u_input.b.zz, _wgslsmith_add_u32(4294967295u, ~(arg_1 | arg_1)) >> (75306u % 32u));
    var var_2 = false != (!(!all(vec3<bool>(false, false, false))) & true);
    var_1 = Struct_1(var_1.a ^ _wgslsmith_div_vec2_u32(vec2<u32>(~arg_1, min(arg_1, 45352u)), abs(_wgslsmith_add_vec2_u32(u_input.e.xx, vec2<u32>(41382u, arg_1)))), firstLeadingBit(57826u));
    var var_3 = ~var_0.x;
    return false;
}

fn func_2() -> vec2<i32> {
    global0 = array<vec3<f32>, 27>();
    var var_0 = true & !((abs(-2543i) >> (_wgslsmith_div_u32(u_input.e.x, u_input.a) % 32u)) < u_input.c);
    var var_1 = Struct_2(select(select(true, true, all(vec2<bool>(false, false))), !func_3(u_input.c, u_input.a), false) || true, ~vec4<u32>(~(u_input.b.x & u_input.e.x), u_input.e.x, max(u_input.e.x, u_input.a), _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(u_input.b.x, 19237u))), vec4<bool>(true, all(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, false))), true, countOneBits(-33031i) < _wgslsmith_clamp_i32(u_input.c, min(-19347i, 2147483647i), _wgslsmith_mod_i32(u_input.c, -1i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1565f, 1085f, -280f, -1967f))), _wgslsmith_div_vec4_f32(vec4<f32>(-2489f, -1367f, 1280f, -1000f), vec4<f32>(-246f, 2545f, -477f, 1347f)))) * vec4<f32>(_wgslsmith_f_op_f32(select(-526f, -1000f, false)), _wgslsmith_f_op_f32(trunc(-761f)), -842f, _wgslsmith_f_op_f32(-237f + -930f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1148f, 513f, -858f, 1824f), vec4<f32>(-1000f, -1319f, -1773f, 1000f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1790f, 472f, -454f, -1991f), vec4<f32>(940f, -569f, 1093f, 441f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-556f, -1689f, 371f, 1702f)))))), _wgslsmith_f_op_f32(f32(-1f) * -315f));
    var var_2 = true;
    var var_3 = _wgslsmith_add_u32(abs(firstLeadingBit(var_1.b.x)), _wgslsmith_add_u32(firstLeadingBit(firstLeadingBit(reverseBits(var_1.b.x))), 4190u));
    return vec2<i32>(~u_input.c, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, u_input.c)), u_input.c)) << ((var_1.b.ww ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(~var_1.b.x, 4294967295u), vec2<u32>(countOneBits(23514u), 4294967295u), ~vec2<u32>(1u, 32320u))) % vec2<u32>(32u));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_sub_vec2_i32(abs(func_2()), firstLeadingBit(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 6585i), vec2<i32>(-10251i, -23747i)) >> (select(vec2<u32>(4294967295u, u_input.d), ~u_input.b.zx, false) % vec2<u32>(32u))));
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 27>();
    let var_0 = Struct_3(~_wgslsmith_div_u32(abs(37100u), u_input.b.x) << (~_wgslsmith_dot_vec2_u32(~u_input.b.xy, u_input.e.yy) % 32u), -(~max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -17277i), vec2<i32>(2147483647i, u_input.c)), firstLeadingBit(vec2<i32>(u_input.c, 22507i)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~func_1()), 27u)], ~min(firstTrailingBit(_wgslsmith_dot_vec2_i32(var_0.b, vec2<i32>(var_0.b.x, u_input.c))), u_input.c), vec2<u32>(0u, 57545u));
}

