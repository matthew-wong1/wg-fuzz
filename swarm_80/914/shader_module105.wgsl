struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: vec4<u32>;

var<private> global4: array<Struct_1, 13>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = 1u;
    var_0 = ~_wgslsmith_dot_vec3_u32(u_input.e.xyx, countOneBits(min(firstLeadingBit(vec3<u32>(23466u, u_input.c, u_input.b)), global3.yww)));
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~u_input.e) | ~firstTrailingBit(u_input.e ^ vec4<u32>(44160u, 4294967295u, 14969u, 4294967295u)), vec4<u32>(1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(abs(u_input.e), vec4<u32>(global3.x, 32061u, u_input.e.x, 83046u))), u_input.e.x, u_input.e.x)), 13u)];
    global4 = array<Struct_1, 13>();
    global3 = vec4<u32>(~global3.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.e.wz, vec2<u32>(1u, 0u) | vec2<u32>(43239u, global3.x))), 23821u, u_input.e.x);
    return abs(i32(-1i) * -1i);
}

fn func_2() -> bool {
    var var_0 = global2.zz;
    global4 = array<Struct_1, 13>();
    var var_1 = vec2<i32>(u_input.a, func_3(global4[_wgslsmith_index_u32(~0u, 13u)]));
    var var_2 = global4[_wgslsmith_index_u32(25261u, 13u)];
    var_0 = global2.yz;
    return var_2.a;
}

fn func_1() -> bool {
    var var_0 = u_input.a;
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(u_input.c), abs(~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.e.x, global3.x, u_input.c), vec4<u32>(0u, 4294967295u, 38968u, global3.x))))), 13u)];
    var var_2 = -264f;
    global3 = vec4<u32>(global3.x, ~u_input.b, ~(~u_input.b) >> (~22901u % 32u), 4294967295u) >> (u_input.e % vec4<u32>(32u));
    let var_3 = Struct_1(true);
    return !func_2();
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: vec3<bool>) -> vec4<f32> {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.x ^ (firstLeadingBit(max(0u, 0u)) ^ global3.x), ~_wgslsmith_mult_u32(~u_input.e.x, ~(~0u))), 13u)];
    global4 = array<Struct_1, 13>();
    var var_1 = ~arg_1.x;
    var var_2 = ~(~u_input.c);
    global4 = array<Struct_1, 13>();
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1086f, 1946f, -1188f, 821f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1493f, 713f, 1279f, -1488f))))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -577f)), _wgslsmith_f_op_f32(select(-1168f, 296f, true)), _wgslsmith_f_op_f32(-1519f - -594f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(167f)), 248f, 906f, _wgslsmith_div_f32(639f, -980f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(577f, 663f, 1237f, 1637f)))))), vec4<bool>(global2.x, all(arg_3), true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-2147483647i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))) - 1f);
    let var_2 = Struct_1(!any(vec2<bool>(global2.x, true)));
    var var_3 = _wgslsmith_f_op_vec4_f32(func_4(vec2<bool>(func_1(), global1.a), vec4<u32>(countOneBits(7848u), max(abs(global3.x), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.e, vec4<u32>(global3.x, 0u, 10958u, u_input.b), vec4<u32>(23647u, u_input.d, global3.x, 18665u)), vec4<u32>(u_input.c, 15953u, u_input.d, 0u))), abs(global3.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.e, firstTrailingBit(u_input.e)), u_input.d)), select(vec2<bool>(_wgslsmith_mod_u32(31345u, 1u) < select(1u, 30611u, var_2.a), func_1()), global2.yz, true != func_1()), vec3<bool>(!var_2.a, false, any(!select(vec4<bool>(false, false, false, true), vec4<bool>(var_2.a, false, global0.a, var_2.a), vec4<bool>(false, false, global1.a, global1.a))))));
    global0 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.e.x, _wgslsmith_mod_u32(global3.x, ~(~u_input.d))), ~abs(firstLeadingBit(u_input.c & global3.x))), 13u)];
    var var_4 = var_3.x <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1222f, -158f) * _wgslsmith_f_op_f32(round(-183f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_1) + _wgslsmith_f_op_f32(min(257f, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, var_1, 519f, -1321f), vec4<f32>(110f, var_1, 565f, var_1), vec4<bool>(global2.x, var_2.a, global1.a, global0.a))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, 224f, -887f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, var_3.x, var_3.x, var_3.x)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, var_3.x, 806f, 577f))), vec4<f32>(1250f, -1175f, var_3.x, var_3.x)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(701f, -112f, var_3.x, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2274f, var_1, var_1, var_3.x) + vec4<f32>(-439f, 486f, -822f, var_1)), !vec4<bool>(false, false, var_2.a, global2.x)))))), _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a), vec2<i32>(~2147483647i, -_wgslsmith_div_i32(u_input.a, -1i))));
}

