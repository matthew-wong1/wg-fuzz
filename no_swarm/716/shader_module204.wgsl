struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21>;

var<private> global1: array<vec4<u32>, 3>;

var<private> global2: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true));

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(vec3<i32>(1i, 8334i, -4298i), 1u, 1000f, 1u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    global4 = Struct_1(vec3<i32>((global4.a.x ^ -u_input.a.x) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(20121u, global4.b), vec2<u32>(66721u, 3108u)), global3.d) % 32u), _wgslsmith_sub_i32(arg_2.a.x, _wgslsmith_clamp_i32(33697i, global3.a.x, global4.a.x)) & _wgslsmith_clamp_i32(1i, abs(global4.a.x), global3.a.x), -2147483647i), _wgslsmith_add_u32(1u & arg_0, 72068u), _wgslsmith_f_op_f32(select(arg_2.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)), _wgslsmith_sub_u32(246u, 0u));
    let var_0 = any(global2[_wgslsmith_index_u32(~arg_1.d, 22u)]);
    let var_1 = arg_2;
    let var_2 = countOneBits(arg_2.a.x | var_1.a.x);
    let var_3 = arg_1.c;
    return vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global4.d, arg_0, global3.b, global3.d), vec4<u32>(4294967295u, 40127u, 0u, global4.d)), var_1.d), max(max(countOneBits(var_1.b), var_1.b >> (10601u % 32u)), global4.d)), ~1u, global4.b ^ 1u, _wgslsmith_div_u32(var_1.b, ~_wgslsmith_sub_u32(1u, firstLeadingBit(var_1.b))));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(-_wgslsmith_mult_vec3_i32(min(select(vec3<i32>(global4.a.x, -22159i, global3.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(true, false, true)), global4.a), (global4.a | vec3<i32>(u_input.a.x, 27139i, 60797i)) & global4.a), ~6156u, global4.c, _wgslsmith_mod_u32(~global4.b, _wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(global4.b, 21351u)), reverseBits(vec2<u32>(global4.b, 63034u) | vec2<u32>(global4.d, 6443u)))));
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.c), var_1.c)) - var_0.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c)))));
    let var_3 = _wgslsmith_f_op_f32(abs(var_1.c));
    let var_4 = countOneBits(global1[_wgslsmith_index_u32(~49552u, 3u)] | ~func_3(var_1.b, Struct_1(global4.a, var_0.d, var_3, 0u), Struct_1(vec3<i32>(61222i, var_0.a.x, var_1.a.x), 1u, global3.c, global3.b)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_1.c)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    global0 = array<vec2<bool>, 21>();
    global3 = Struct_1(vec3<i32>(-1i) * -(~(-u_input.a)), abs(~(~_wgslsmith_dot_vec3_u32(arg_0.zxx, arg_0.zwy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-713f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(924f))))), arg_0.x >> ((4294967295u ^ abs(select(arg_1.d, arg_1.d, false))) % 32u));
    var var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_mult_vec3_i32(global4.a >> (firstTrailingBit(_wgslsmith_add_vec3_u32(arg_0.wyx, arg_0.yww)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(-arg_1.a, vec3<i32>(u_input.a.x, global3.a.x, -2147483647i)), select(global3.a, global3.a, false) | arg_1.a)), 35744u, _wgslsmith_f_op_f32(f32(-1f) * -242f), countOneBits(1u));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global3.c, -717f)), _wgslsmith_f_op_f32(-global3.c)))))));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstLeadingBit(global3.a), _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 14632u, global4.d, 0u), global1[_wgslsmith_index_u32(global4.b, 3u)]), _wgslsmith_add_u32(1824u, ~175539u)) << (~_wgslsmith_mod_u32(~202u, ~global3.d) % 32u), _wgslsmith_f_op_f32(abs(-475f)), abs(_wgslsmith_dot_vec3_u32(max(vec3<u32>(global4.d, 0u, global3.d), abs(vec3<u32>(global4.d, global4.d, global3.b))), (vec3<u32>(global4.b, 24042u, 8821u) >> (vec3<u32>(1u, global4.d, 29450u) % vec3<u32>(32u))) << (vec3<u32>(global3.b, global3.d, global3.b) % vec3<u32>(32u)))));
    global1 = array<vec4<u32>, 3>();
    let var_1 = vec2<i32>(~_wgslsmith_add_i32(global3.a.x ^ -40465i, global4.a.x ^ u_input.a.x), ~_wgslsmith_dot_vec2_i32(global3.a.yy ^ global3.a.zz, ~(-var_0.a.zy)));
    let var_2 = vec4<u32>(0u, func_1(vec4<u32>(11168u, ~global3.b, 1u, 6212u), Struct_1(vec3<i32>(-25387i, 0i, var_1.x) ^ vec3<i32>(u_input.a.x, global4.a.x, global4.a.x), _wgslsmith_add_u32(15907u, 112438u), _wgslsmith_div_f32(479f, 528f), countOneBits(0u))), _wgslsmith_div_u32(~_wgslsmith_mult_u32(global3.b, 4294967295u), global3.d), global4.d) ^ global1[_wgslsmith_index_u32(4294967295u, 3u)];
    global1 = array<vec4<u32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(i32(-1i) * -_wgslsmith_add_i32(global3.a.x, -2147483647i), -15638i), _wgslsmith_add_vec3_i32(-vec3<i32>(var_1.x, _wgslsmith_add_i32(-1i, var_0.a.x), countOneBits(114518i)), u_input.a));
}

