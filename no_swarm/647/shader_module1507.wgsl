struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, i32(-2147483648), 23677i, 13348i);

var<private> global1: vec2<f32>;

var<private> global2: Struct_1 = Struct_1(false, 373f);

var<private> global3: bool;

var<private> global4: f32 = -393f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    global0 = vec4<i32>(u_input.a, ~((u_input.a >> (u_input.e.x % 32u)) << (select(u_input.d.x, 51332u, global2.a) % 32u)), u_input.a, global0.x) ^ (vec4<i32>((u_input.a >> (u_input.d.x % 32u)) >> ((u_input.d.x & u_input.d.x) % 32u), _wgslsmith_add_i32(global0.x, 1i), _wgslsmith_div_i32(-1i, global0.x), u_input.a) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.d.x, u_input.b), ~vec4<u32>(4294967295u, 1u, u_input.b, 43573u)) >> (vec4<u32>(_wgslsmith_add_u32(u_input.c, u_input.b), ~u_input.e.x, abs(4826u), 108751u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_0 = Struct_1(all(select(!select(vec3<bool>(false, global2.a, true), vec3<bool>(false, false, global2.a), true), vec3<bool>(true, false, all(vec3<bool>(global2.a, global2.a, false))), global2.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1344f))))))));
    return global0.x;
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = Struct_1(select(all(vec3<bool>(false, global2.a, global2.a)) != (u_input.e.x == 60641u), !(!global2.a), !(!global2.a)) | true, 302f);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-2131f, var_0.b))))), global1.x, _wgslsmith_f_op_f32(-global2.b), 231f);
    let var_2 = var_1.xx;
    let var_3 = firstLeadingBit(global0.x);
    var var_4 = Struct_1(!(max(global0.x, func_3()) != -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    return _wgslsmith_dot_vec2_i32(~(-select(select(vec2<i32>(-2147483647i, var_3), vec2<i32>(1i, u_input.a), vec2<bool>(var_0.a, var_0.a)), global0.wx, select(vec2<bool>(var_4.a, false), vec2<bool>(var_0.a, true), true))), -global0.wz);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(any(!vec3<bool>(arg_3.b > -109f, global2.a, select(false, true, true))), 2279f);
    var var_1 = arg_3.a;
    var_1 = arg_3.a;
    var_0 = Struct_1(!all(select(!vec2<bool>(global2.a, arg_3.a), !vec2<bool>(global2.a, true), true)), global1.x);
    let var_2 = Struct_1(!all(vec3<bool>(arg_3.a, global2.a, u_input.a > 2147483647i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global1.x)), 1000f, true)));
    return arg_3;
}

fn func_1() -> vec3<u32> {
    var var_0 = func_4(abs(u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-482f, -1000f, -1095f) - vec3<f32>(global2.b, 362f, -255f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, -1000f, global2.b), vec3<f32>(958f, global2.b, global2.b)))) + vec3<f32>(_wgslsmith_f_op_f32(max(-436f, 1000f)), -1167f, _wgslsmith_f_op_f32(global2.b - 1038f)))), vec4<i32>(0i, global0.x, select(-u_input.a, u_input.a, true), -(~func_2(global1.x))), Struct_1(true, _wgslsmith_f_op_f32(829f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1356f, -445f))))));
    global4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global1.x))));
    global3 = 1u <= (~1u & ~(max(2800u, 0u) >> (select(4294967295u, 20829u, global2.a) % 32u)));
    var var_1 = u_input.e;
    let var_2 = vec2<i32>(0i, u_input.a);
    return ~vec3<u32>(reverseBits(u_input.e.x), var_1.x, ~var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec4<i32>(_wgslsmith_mult_i32(-10398i, reverseBits(firstTrailingBit(u_input.a))), countOneBits(i32(-1i) * -1i), 2147483647i, 11858i);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.b, global1.x, 177f), vec3<f32>(global2.b, global1.x, -2437f), vec3<bool>(global2.a, global2.a, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-423f, global1.x, global2.b))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.b, global1.x, global2.b), vec3<f32>(1000f, 1122f, global2.b))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.b, global1.x, 917f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), -562f, global1.x) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-712f, 891f, global1.x)))), (true | (true && global2.a)) & select(global2.a, false, 1327f == global2.b))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-425f, 320f, global1.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 109f, global1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global2.b, global1.x)))))));
    global3 = !all(!vec4<bool>(true, true, var_1.x >= 1270f, true));
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(func_1(), u_input.e), ~u_input.e);
    global1 = var_1.zy;
    let x = u_input.a;
    s_output = StorageBuffer(global2.b, ~abs(u_input.b), 230f, u_input.a);
}

