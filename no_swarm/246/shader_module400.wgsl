struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false));

var<private> global3: i32;

var<private> global4: vec3<f32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<bool> {
    global1 = Struct_1(!(!global1.a), _wgslsmith_mod_vec2_u32(abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), abs(vec2<u32>(85356u, 0u)))), _wgslsmith_div_vec2_u32(abs(~vec2<u32>(u_input.c, 1u)), select(global1.b, vec2<u32>(u_input.a, global1.b.x) & vec2<u32>(35150u, global0[_wgslsmith_index_u32(97878u, 7u)]), global1.a))));
    global1 = Struct_1(any(vec2<bool>(all(!vec2<bool>(global1.a, global1.a)), global1.a)), global1.b);
    global1 = Struct_1(false, global1.b);
    global1 = Struct_1(any(vec3<bool>(global1.a, all(vec2<bool>(global1.a, true)), true)), _wgslsmith_mod_vec2_u32(countOneBits(global1.b), _wgslsmith_add_vec2_u32(vec2<u32>(3576u, u_input.a), global1.b)));
    let var_0 = ~max(u_input.a, 87717u);
    return select(vec3<bool>(!global1.a, false, !global1.a), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global1.b, ~global1.b), select(select(global1.b, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], global1.b.x), false), countOneBits(global1.b), !vec2<bool>(global1.a, false))) >> (~4294967295u % 32u), 27u)], all(vec4<bool>(!global1.a, (1u << (u_input.c % 32u)) <= _wgslsmith_dot_vec4_u32(vec4<u32>(19341u, 1u, 1u, u_input.c), vec4<u32>(var_0, var_0, 33256u, 998u)), true, (i32(-1i) * -1i) > ~u_input.d)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    global1 = arg_0;
    var var_0 = Struct_1(any(vec2<bool>(all(select(vec4<bool>(arg_1.a, arg_1.a, false, true), vec4<bool>(global1.a, true, false, arg_0.a), vec4<bool>(global1.a, true, arg_0.a, true))), global1.a)), ~(_wgslsmith_add_vec2_u32(vec2<u32>(arg_3.b.x, 4940u) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), vec2<u32>(10597u, 13214u)) ^ ~(~vec2<u32>(4294967295u, 4294967295u))));
    var_0 = arg_0;
    global3 = 2147483647i;
    var var_1 = select(select(func_3(), global2[_wgslsmith_index_u32(0u, 27u)], any(select(vec4<bool>(arg_1.a, false, var_0.a, false), vec4<bool>(false, global1.a, arg_0.a, false), any(vec2<bool>(false, global1.a))))), global2[_wgslsmith_index_u32(24569u, 27u)], true);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(global4.x, global4.x), global4.xy), vec2<f32>(global4.x, -1092f))))))), global4.yy, (_wgslsmith_f_op_f32(-184f + -1345f) != _wgslsmith_f_op_f32(ceil(global4.x))) || true));
}

fn func_1(arg_0: u32, arg_1: f32) -> vec3<i32> {
    global0 = array<u32, 7>();
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(-1295f + 175f)) - global4.zy), global4.xz));
    global2 = array<vec3<bool>, 27>();
    var_0 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(494f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - _wgslsmith_f_op_f32(max(-1000f, var_0.x))), _wgslsmith_div_f32(global4.x, _wgslsmith_div_f32(arg_1, var_0.x))) * _wgslsmith_f_op_vec2_f32(func_2(Struct_1(true, ~vec2<u32>(22243u, u_input.a)), Struct_1(true, global1.b), u_input.e, Struct_1(true, _wgslsmith_div_vec2_u32(global1.b, vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(17712u, 7u)]))))))));
    return vec3<i32>(u_input.e, -1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 1i, -2147483647i), abs(vec3<i32>(u_input.e, u_input.e, u_input.d))), abs(firstLeadingBit(u_input.d))) & ~(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(func_1(u_input.c, _wgslsmith_f_op_f32(sign(1000f))), min(~_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.d), vec3<i32>(u_input.e, u_input.d, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(-8842i, u_input.e, 53797i), vec3<i32>(u_input.e, 32375i, u_input.e)), ~vec3<i32>(u_input.d, u_input.e, u_input.d)), -(~vec3<i32>(1i, 799i, u_input.e)) >> (vec3<u32>(94653u, max(45940u, global0[_wgslsmith_index_u32(u_input.b, 7u)]), 48288u) % vec3<u32>(32u))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - global4.x)))), _wgslsmith_f_op_f32(-global4.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstLeadingBit(func_1(min(global1.b.x, 39572u), _wgslsmith_f_op_f32(-var_1.x)).x), u_input.d), global0[_wgslsmith_index_u32(1u, 7u)], ~firstTrailingBit(global1.b), _wgslsmith_f_op_f32(-var_1.x), ~global1.b.x);
}

