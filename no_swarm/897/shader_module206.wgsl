struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<bool>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    var var_0 = true;
    global0 = Struct_1(global0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.d * global0.d)))), global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1090f, 1034f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.x)))))), global0.c, global0.d, -_wgslsmith_div_i32(-21553i, -2147483647i));
    global2 = vec3<bool>(false, true, false);
    global1 = !select(vec2<bool>(any(global0.c.zy), global1.x), !(!vec2<bool>(global1.x, global2.x)), global2.yz);
    let var_1 = min(_wgslsmith_mult_u32(~u_input.a, ~u_input.a), 26726u << (~u_input.a % 32u));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -187f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -863f) + -482f)))));
}

fn func_2() -> bool {
    let var_0 = vec4<i32>(-_wgslsmith_mult_i32(firstTrailingBit(global0.e >> (24225u % 32u)), ~0i), global0.e & global0.e, ~(~global0.e), 38002i);
    global2 = global0.c;
    global0 = Struct_1(~1280u, global0.b, global0.c, 1446f, 2147483647i);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-671f, _wgslsmith_f_op_f32(max(549f, global0.b.x)))) + -171f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - global0.b.x), 130f, 762f);
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(16545u, global0.a, 0u))), ~(~(~vec3<u32>(88043u, u_input.a, 4294967295u)))), global0.b, !select(!(!vec3<bool>(true, global0.c.x, global2.x)), global0.c, any(!vec4<bool>(false, global0.c.x, false, global0.c.x))), -1000f, _wgslsmith_div_i32(var_0.x, global0.e));
    return false;
}

fn func_1() -> Struct_2 {
    global1 = global2.yz;
    var var_0 = ~abs(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(global0.a, global0.a, 1u)) & vec3<u32>(1u, global0.a, u_input.a), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(43516u, 0u, u_input.a), vec3<u32>(1u, 15017u, global0.a)), vec3<u32>(u_input.a, 1u, u_input.a))));
    var var_1 = ~(~vec3<u32>(_wgslsmith_sub_u32(~var_0.x, ~37790u), 0u, 65828u ^ abs(global0.a)));
    var var_2 = u_input.a;
    var var_3 = Struct_2(Struct_1(64541u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)), vec3<bool>(false, global1.x, func_2()), 1000f, global0.e), Struct_1(global0.a, vec4<f32>(-574f, global0.b.x, -393f, _wgslsmith_f_op_f32(f32(-1f) * -748f)), global0.c, _wgslsmith_f_op_f32(func_3()), 25495i), vec3<f32>(global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -935f) * _wgslsmith_f_op_f32(trunc(946f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.x)))));
    return Struct_2(Struct_1(~(~var_1.x & global0.a), var_3.b.b, select(var_3.b.c, !(!var_3.b.c), !vec3<bool>(false, global0.c.x, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global0.b.x, _wgslsmith_div_f32(global0.d, -1091f))))), _wgslsmith_mult_i32(reverseBits(_wgslsmith_mult_i32(20374i, -18808i)), global0.e)), var_3.a, global0.b.wyy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<bool>(!((max(global0.e, 51452i) >= -4507i) || global2.x), global0.c.x);
    let var_0 = Struct_1(firstLeadingBit(global0.a | (u_input.a >> (max(4294967295u, 21691u) % 32u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, 1000f, -1315f, global0.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global0.b.x, 681f, global0.d), vec4<f32>(global0.b.x, global0.b.x, global0.d, global0.b.x), vec4<bool>(false, global2.x, global2.x, global0.c.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b * vec4<f32>(global0.b.x, -373f, 1005f, global0.b.x)))), true)), select(global0.c, !vec3<bool>(global0.d <= 1299f, true, global1.x), vec3<bool>(true, false, !all(vec4<bool>(false, true, global1.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), -abs(_wgslsmith_sub_i32(global0.e, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(global0.e, -1i)))));
    global1 = vec2<bool>(var_0.c.x, global2.x);
    var var_1 = func_1();
    var var_2 = func_1().b;
    global1 = var_1.b.c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e);
}

