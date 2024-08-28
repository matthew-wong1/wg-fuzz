struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 12>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = vec2<bool>(true, false);
    var var_1 = _wgslsmith_mod_vec4_i32(min(vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, u_input.b.x, global1.b.x, global1.a)), vec4<i32>(_wgslsmith_clamp_i32(-36713i, global1.a | global1.b.x, firstLeadingBit(33410i)), 49844i, global1.b.x, u_input.d.x)), global1.b);
    var var_2 = u_input.e.x;
    global1 = Struct_1(~max(_wgslsmith_add_i32(31048i, 9433i), global1.a), ~(-global1.b & global1.b));
    global2 = array<Struct_1, 12>();
    return 2147483647i;
}

fn func_2(arg_0: vec2<u32>) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(countOneBits(-countOneBits(vec4<i32>(-2147483647i, 0i, 0i, 61749i))), countOneBits(vec4<i32>(u_input.d.x, select(u_input.b.x, 22368i, global0.x), reverseBits(-64717i), func_3()))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(func_3(), global1.a, -65138i, select(global1.a, global1.a, global0.x)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(42564i, u_input.c, global1.a, 9568i), global1.b, max(global1.b, vec4<i32>(1i, u_input.c, u_input.c, -32780i)))), ~vec4<i32>(_wgslsmith_add_i32(12257i, u_input.d.x), _wgslsmith_clamp_i32(global1.b.x, global1.a, 0i), func_3(), 1i)));
    global2 = array<Struct_1, 12>();
    var_0 = global2[_wgslsmith_index_u32(u_input.e.x, 12u)];
    let var_1 = global0.x & !(!global0.x);
    global0 = vec2<bool>(any(vec2<bool>(true, true)), !(!any(select(vec2<bool>(var_1, global0.x), vec2<bool>(var_1, false), vec2<bool>(false, false)))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(983f, -1108f, 530f), vec3<f32>(602f, -801f, 137f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1011f, -582f, -138f)))))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-731f, -418f, -440f)) - vec3<f32>(513f, -1156f, -695f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(779f, -747f, 390f)))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<i32>) -> vec2<bool> {
    var var_0 = ~1u;
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1332f, -2413f) * _wgslsmith_f_op_f32(ceil(-877f))), _wgslsmith_f_op_f32(min(-383f, _wgslsmith_f_op_f32(step(182f, 476f)))))), 1f, -943f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(~arg_0.xz))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1053f, _wgslsmith_f_op_vec3_f32(func_2(arg_0.zy)).x, 153f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-416f, 593f, -226f) * vec3<f32>(-1720f, 1292f, -1630f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-705f, -541f, -1000f))))));
    let var_2 = vec4<bool>(false, global0.x, _wgslsmith_clamp_u32(69367u, arg_0.x, firstTrailingBit(1u) ^ max(4294967295u, 0u)) >= _wgslsmith_div_u32(u_input.a, 48045u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(14968u, 1u, arg_0.x), arg_0) % 32u)), true);
    global1 = Struct_1(-41057i, global1.b);
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_div_u32(u_input.e.x, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.e.x, u_input.e.x), u_input.e.yyy)) >> (~(vec3<u32>(arg_1, arg_1, arg_1) << (arg_0 % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_1), arg_0.xz), arg_1), _wgslsmith_add_vec3_u32(~vec3<u32>(20809u, arg_1, 35667u), ~vec3<u32>(u_input.a, 0u, arg_0.x)), _wgslsmith_mult_vec3_u32(arg_0, max(vec3<u32>(3979u, 1u, 1u), vec3<u32>(0u, arg_1, 4092u))))), arg_1), 12u)];
    return !vec2<bool>(false, 1576i >= (~var_3.a | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, global1.b.x, arg_2.x, arg_2.x), var_3.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(vec2<bool>(true, true), select(vec2<bool>(global0.x && true, true), !func_1(vec3<u32>(u_input.a, 4294967295u, u_input.e.x), 48882u, u_input.d), select(vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, global0.x), all(vec4<bool>(true, true, true, false)))), vec2<bool>(!(global0.x || false), global0.x));
    var var_0 = global2[_wgslsmith_index_u32(reverseBits(min(~1u, ~reverseBits(74301u))), 12u)];
    global2 = array<Struct_1, 12>();
    var var_1 = ~_wgslsmith_sub_vec3_i32(var_0.b.yzy, firstTrailingBit(u_input.b));
    var_1 = global1.b.yxy;
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.e.x, u_input.a));
}

