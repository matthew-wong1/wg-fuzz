struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: array<f32, 24>;

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-1114f, vec2<bool>(true, true)), Struct_1(-907f, vec2<bool>(false, true)), Struct_1(894f, vec2<bool>(false, false)), Struct_1(-669f, vec2<bool>(false, false)), Struct_1(1000f, vec2<bool>(true, true)), Struct_1(149f, vec2<bool>(false, false)), Struct_1(-417f, vec2<bool>(false, true)), Struct_1(-511f, vec2<bool>(false, true)), Struct_1(2543f, vec2<bool>(true, false)), Struct_1(-239f, vec2<bool>(false, true)), Struct_1(1042f, vec2<bool>(true, false)), Struct_1(-873f, vec2<bool>(false, true)), Struct_1(313f, vec2<bool>(true, false)), Struct_1(181f, vec2<bool>(false, true)), Struct_1(1000f, vec2<bool>(true, false)), Struct_1(-1000f, vec2<bool>(false, true)), Struct_1(-1380f, vec2<bool>(true, false)), Struct_1(265f, vec2<bool>(true, false)), Struct_1(963f, vec2<bool>(true, false)), Struct_1(-343f, vec2<bool>(false, true)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    let var_0 = 2147483647i;
    global0 = -1717f;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 24u)]))), global1.b);
    var var_2 = Struct_1(-540f, var_1.b);
    let var_3 = Struct_1(444f, var_1.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * -1171f) + _wgslsmith_f_op_f32(f32(-1f) * -1570f))))));
}

fn func_2() -> f32 {
    let var_0 = vec2<u32>(firstTrailingBit(4294967295u), 0u);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!global1.b))), global2[_wgslsmith_index_u32(var_0.x, 24u)]) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(272f, global2[_wgslsmith_index_u32(116737u, 24u)]) - vec2<f32>(-608f, global2[_wgslsmith_index_u32(0u, 24u)])))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-120f, -254f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(507f, -221f), vec2<f32>(-766f, 1220f))))))));
    let var_2 = !select(!(!(!vec3<bool>(true, global1.b.x, true))), select(select(vec3<bool>(global1.b.x, global1.b.x, global1.b.x), vec3<bool>(global1.b.x, global1.b.x, global1.b.x), !vec3<bool>(true, global1.b.x, global1.b.x)), select(select(vec3<bool>(false, true, true), vec3<bool>(global1.b.x, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(global1.b.x, false, global1.b.x), vec3<bool>(global1.b.x, false, true), false), select(vec3<bool>(true, true, global1.b.x), vec3<bool>(false, global1.b.x, global1.b.x), vec3<bool>(false, true, global1.b.x))), false), !select(select(vec3<bool>(global1.b.x, true, global1.b.x), vec3<bool>(global1.b.x, global1.b.x, false), global1.b.x), vec3<bool>(global1.b.x, true, true), false));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(337f, -1091f) - vec2<f32>(-1004f, global1.a)))))));
    var var_4 = ~_wgslsmith_add_u32(7403u, 1u);
    return _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.a, 24u)]));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(1849f - _wgslsmith_f_op_f32(func_2()));
    global1 = Struct_1(963f, select(vec2<bool>(global1.b.x, true), vec2<bool>(global1.b.x, global1.b.x), vec2<bool>(any(!global1.b), !global1.b.x)));
    global2 = array<f32, 24>();
    let var_1 = Struct_1(-366f, select(global1.b, select(global1.b, global1.b, false), !select(!vec2<bool>(false, global1.b.x), vec2<bool>(global1.b.x, true), true && global1.b.x)));
    let var_2 = vec2<i32>(i32(-1i) * -2147483647i, -2147483647i);
    return Struct_1(305f, !select(var_1.b, !(!var_1.b), global1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(u_input.a, 20u)];
    let var_1 = var_0.b;
    var var_2 = _wgslsmith_add_vec2_u32(min(_wgslsmith_mult_vec2_u32(abs(firstLeadingBit(vec2<u32>(u_input.a, u_input.a))), ~(~vec2<u32>(0u, 20247u))), countOneBits(abs(vec2<u32>(4294967295u, 32233u) ^ vec2<u32>(30134u, u_input.a)))), vec2<u32>(~(~u_input.a), ~u_input.a));
    let var_3 = func_1();
    var var_4 = func_1().b.x | any(select(select(vec4<bool>(false, global1.b.x, true, var_3.b.x), !vec4<bool>(var_1.x, var_3.b.x, global1.b.x, var_0.b.x), vec4<bool>(true, true, var_3.b.x, var_1.x)), vec4<bool>(var_0.b.x, true, var_1.x, u_input.a < 1u), true));
    var_0 = func_1();
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a))), select(vec2<bool>(true, var_1.x), var_0.b, global1.b));
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~min(min(abs(vec2<i32>(-1i, -25664i)), vec2<i32>(-16935i, -49676i)), vec2<i32>(1i, 1i)), -331f, _wgslsmith_add_vec4_u32(vec4<u32>(11034u, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 0u), vec2<u32>(60064u, var_2.x)), select(u_input.a, u_input.a, global1.b.x)), max(~vec4<u32>(13820u, u_input.a, 36272u, var_2.x), vec4<u32>(10162u, 25794u, 42614u, var_2.x))) ^ _wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a, 4294967295u, var_2.x, 1u) << (vec4<u32>(var_2.x, var_2.x, 13100u, 57570u) % vec4<u32>(32u))), ~countOneBits(vec4<u32>(24009u, 32421u, var_2.x, 52359u))), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(func_2())));
}

