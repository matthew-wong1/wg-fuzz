struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: f32 = 620f;

var<private> global2: Struct_1;

var<private> global3: array<vec3<i32>, 19>;

var<private> global4: array<bool, 13>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<bool>) -> i32 {
    global2 = Struct_1(~(~global2.a));
    global3 = array<vec3<i32>, 19>();
    global4 = array<bool, 13>();
    let var_0 = _wgslsmith_mult_u32(global2.a, abs(~_wgslsmith_clamp_u32(9181u, _wgslsmith_add_u32(u_input.c.x, u_input.a.x), ~u_input.b.x)));
    global2 = Struct_1(63342u);
    return -arg_0;
}

fn func_3() -> i32 {
    global4 = array<bool, 13>();
    global3 = array<vec3<i32>, 19>();
    var var_0 = min(~1i, -(_wgslsmith_clamp_i32(-45645i, 33007i, 2147483647i) & _wgslsmith_mult_i32(-24658i, -33492i))) | func_2(-_wgslsmith_mod_i32(~(-13658i), 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(446f, -280f, 274f) + vec3<f32>(1179f, 475f, -390f))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1729f, 209f, 322f)))), !vec4<bool>(!global4[_wgslsmith_index_u32(u_input.c.x, 13u)], global0.x, true, global0.x));
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(326f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(921f, _wgslsmith_f_op_f32(select(-346f, 1146f, global0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1502f)))), -473f));
    let var_2 = reverseBits((u_input.c | vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, 82299u, global2.a), global2.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a, u_input.b.x, 0u), vec3<u32>(u_input.c.x, 4070u, 4294967295u)), u_input.c.x)) ^ u_input.c);
    return -2147483647i;
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    global4 = array<bool, 13>();
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(400i, ~15981i), func_2(select(2147483647i, 45182i, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1024f, 1051f, 600f)), !vec4<bool>(global4[_wgslsmith_index_u32(1u, 13u)], global0.x, global4[_wgslsmith_index_u32(global2.a, 13u)], false)), func_2(1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2334f, 263f, 154f)), select(vec4<bool>(true, false, global0.x, global4[_wgslsmith_index_u32(0u, 13u)]), vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 13u)], global0.x, false, global0.x))), -2147483647i), vec4<i32>(firstTrailingBit(_wgslsmith_div_i32(-2147483647i, -10333i)), func_3(), select(select(0i, -1i, global0.x), i32(-1i) * -12175i, select(global4[_wgslsmith_index_u32(35299u, 13u)], true, global4[_wgslsmith_index_u32(49787u, 13u)])), 25543i)) << (~4294967295u % 32u);
    var var_1 = global0.x;
    global1 = 597f;
    global2 = Struct_1(global2.a);
    return _wgslsmith_f_op_f32(-194f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(218f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -860f) - 1098f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<f32>(612f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) ^ vec3<u32>(global2.a, 28713u, 38269u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-660f, -637f)))))), _wgslsmith_div_f32(-1772f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-933f)) + -2023f)), _wgslsmith_f_op_f32(floor(-1000f))));
    let var_1 = -526f;
    var var_2 = -(~vec3<i32>(-1i, reverseBits(1i), -87612i) & -(~global3[_wgslsmith_index_u32(4294967295u, 19u)] ^ vec3<i32>(-26735i, 15392i, 71058i)));
    var var_3 = vec3<f32>(var_1, var_0.a.x, -253f);
    let var_4 = Struct_1(~64780u);
    var var_5 = var_0;
    var var_6 = global3[_wgslsmith_index_u32(global2.a, 19u)];
    let var_7 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_7.a, i32(-1i) * -firstTrailingBit(0i), _wgslsmith_sub_i32(~abs(reverseBits(0i)), -2147483647i), -217f);
}

