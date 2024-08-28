struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(145100u, 63268u, 26604u, 44125u, 56035u, 0u, 1u, 7519u, 48129u, 16414u, 85455u, 0u, 1u, 4294967295u, 45524u, 0u, 19861u, 42500u, 1u, 0u, 0u, 28629u, 1u, 31229u, 0u, 78900u, 54028u, 4294967295u, 16761u, 4294967295u, 4294967295u);

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(2147483647i, Struct_1(false), vec2<u32>(195155u, 4301u), Struct_1(true)), Struct_2(-36842i, Struct_1(false), vec2<u32>(1u, 0u), Struct_1(true)), Struct_2(0i, Struct_1(true), vec2<u32>(30293u, 102116u), Struct_1(true)), Struct_2(-1i, Struct_1(false), vec2<u32>(0u, 1u), Struct_1(false)), Struct_2(-63103i, Struct_1(false), vec2<u32>(1u, 1u), Struct_1(true)), Struct_2(-15085i, Struct_1(false), vec2<u32>(0u, 52682u), Struct_1(false)), Struct_2(19172i, Struct_1(true), vec2<u32>(47358u, 113167u), Struct_1(true)), Struct_2(1i, Struct_1(true), vec2<u32>(4294967295u, 34068u), Struct_1(true)), Struct_2(13169i, Struct_1(true), vec2<u32>(4294967295u, 99652u), Struct_1(false)), Struct_2(i32(-2147483648), Struct_1(false), vec2<u32>(16169u, 4294967295u), Struct_1(false)), Struct_2(1i, Struct_1(false), vec2<u32>(1012u, 0u), Struct_1(true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> bool {
    global1 = array<Struct_2, 11>();
    let var_0 = u_input.a.x;
    return false;
}

fn func_3() -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 11u)];
    var var_1 = firstTrailingBit(vec3<u32>(1u, 85248u, reverseBits(0u))) ^ u_input.a;
    var var_2 = all(vec3<bool>(var_0.d.a, any(vec3<bool>(true, 0u != var_1.x, any(vec3<bool>(true, var_0.b.a, true)))), !var_0.b.a));
    global0 = array<u32, 31>();
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, _wgslsmith_div_f32(-1765f, -224f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1968f + 272f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1321f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -2094f)))));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(~u_input.b, -2147483647i, _wgslsmith_sub_i32(reverseBits(countOneBits(-2147483647i)), _wgslsmith_clamp_i32(1i, -1i, _wgslsmith_div_i32(-1i, -7138i)))), vec3<i32>(u_input.b, firstLeadingBit(2429i), ~u_input.b | (_wgslsmith_mod_i32(1i, u_input.b) ^ u_input.b)));
    global1 = array<Struct_2, 11>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(-435f, -478f)))), Struct_1(all(vec2<bool>(true, true)) | ((117f <= arg_0) & (9685i != u_input.b))), global1[_wgslsmith_index_u32(1u, 11u)]);
    let var_2 = 1u;
    var var_3 = _wgslsmith_f_op_f32(sign(var_1.a.x));
    return _wgslsmith_f_op_f32(exp2(var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(any(!vec2<bool>(false, any(vec2<bool>(false, true)))), true, func_1());
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1390f + 1129f), _wgslsmith_f_op_f32(func_2(-1323f))) - _wgslsmith_f_op_f32(sign(514f))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1114f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-1310f))))), Struct_1(false), global1[_wgslsmith_index_u32(73185u, 11u)]);
    var_0 = select(select(!select(select(vec3<bool>(var_1.c.b.a, true, var_1.b.a), vec3<bool>(false, true, false), vec3<bool>(true, false, var_1.b.a)), vec3<bool>(var_0.x, false, var_1.c.d.a), var_0.x), !vec3<bool>(-232f >= var_1.a.x, true, !var_0.x), !select(!vec3<bool>(var_1.c.d.a, var_0.x, var_0.x), select(vec3<bool>(false, true, true), vec3<bool>(var_1.c.b.a, var_0.x, false), var_1.b.a), true)), vec3<bool>(var_0.x != false, any(select(!vec3<bool>(true, var_0.x, true), vec3<bool>(var_1.c.d.a, true, var_1.b.a), select(vec3<bool>(false, true, var_1.c.d.a), vec3<bool>(var_0.x, var_1.c.b.a, var_1.b.a), true))), all(vec4<bool>(var_1.a.x == 1000f, true, var_1.c.b.a, false))), var_1.b.a);
    global1 = array<Struct_2, 11>();
    global1 = array<Struct_2, 11>();
    var var_2 = ~countOneBits(~(~vec3<i32>(2066i, 0i, var_1.c.a)));
    global1 = array<Struct_2, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec4<u32>(abs(var_1.c.c.x), ~var_1.c.c.x, u_input.a.x, _wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(0u, 31u)]))), ~(~(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], 4294967295u, var_1.c.c.x, 58952u))), min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 29353i, var_1.c.a, 24582i), vec4<i32>(var_1.c.a, u_input.b, var_2.x, -37197i)), _wgslsmith_sub_i32(abs(u_input.b), var_1.c.a)) ^ var_2.x, var_1.a.x);
}

