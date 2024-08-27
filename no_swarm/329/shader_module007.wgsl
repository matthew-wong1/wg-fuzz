struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<vec2<f32>, 14>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> i32 {
    global2 = array<vec2<f32>, 14>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(global0.a, global0.a)), ~global0.b, any(vec2<bool>(global0.c, global0.c)), 1u), !vec2<bool>(all(select(vec4<bool>(global0.c, false, global0.c, global0.c), vec4<bool>(global0.c, false, false, false), true)), true & global0.c), Struct_1(_wgslsmith_f_op_f32(max(833f, _wgslsmith_f_op_f32(-191f - _wgslsmith_f_op_f32(-global0.a)))), min(~select(global0.b, global0.b, global0.c), global0.b), global0.c, _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 73500u, global0.d, 93000u), vec4<u32>(u_input.a.x, 4294967295u, global0.d, 1715u)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(109870u, 22284u)), 0u, ~u_input.a.x, _wgslsmith_sub_u32(global0.d, u_input.a.x)))), global1[_wgslsmith_index_u32(57366u, 14u)]);
    global0 = global1[_wgslsmith_index_u32(0u, 14u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * -1174f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + var_0.c.a) - -1360f));
    let var_2 = abs(~abs(max(vec4<i32>(global0.b.x, var_0.c.b.x, 0i, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.b.x, var_0.c.b.x, var_0.c.b.x, -2147483647i), vec4<i32>(u_input.b, var_0.c.b.x, var_0.a.b.x, var_0.a.b.x)))));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(10657i, 0i, 20315i)), abs(var_2.wwy));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = vec2<i32>(19161i, -(func_3(u_input.a.x) & -62549i));
    let var_1 = abs(1168i);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1755f, global0.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -873f, global0.a))), vec3<f32>(587f, _wgslsmith_f_op_f32(step(global0.a, global0.a)), _wgslsmith_f_op_f32(global0.a + 1000f))))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(1289f - global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - 1000f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a + 1635f), _wgslsmith_f_op_f32(f32(-1f) * -1039f))))), !(firstLeadingBit(arg_0.x) <= select(global0.d, 0u, all(vec3<bool>(false, false, global0.c))))));
    let var_3 = ~u_input.a;
    let var_4 = global1[_wgslsmith_index_u32(4294967295u, 14u)];
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1099f), ~global0.b, false, var_4.d);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global2 = array<vec2<f32>, 14>();
    global1 = array<Struct_1, 14>();
    let var_0 = u_input.b == -2147483647i;
    global2 = array<vec2<f32>, 14>();
    var var_1 = true || global0.c;
    return func_2(u_input.a.yz);
}

fn func_1() -> u32 {
    global1 = array<Struct_1, 14>();
    global1 = array<Struct_1, 14>();
    global2 = array<vec2<f32>, 14>();
    let var_0 = u_input.a.xyz;
    let var_1 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(962f - global0.a)), ~vec2<i32>(-1i, -2147483647i), global0.c | all(vec4<bool>(global0.c, global0.c, true, false)), 4294967295u), vec2<bool>(false, ~global0.b.x < -1i), func_2((u_input.a.yw | u_input.a.yw) & _wgslsmith_add_vec2_u32(u_input.a.wx, u_input.a.wx)), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(702f)), 844f)), global0.b | vec2<i32>(1i, -3354i), global0.c, firstTrailingBit(11751u))));
    return ~_wgslsmith_div_u32(var_0.x, reverseBits(var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1();
    global1 = array<Struct_1, 14>();
    var var_1 = global0.b.x;
    var var_2 = ~_wgslsmith_add_vec3_u32(vec3<u32>(max(~u_input.a.x, ~1u), max(_wgslsmith_sub_u32(global0.d, 0u), var_0), var_0), abs(select(countOneBits(vec3<u32>(15159u, 4294967295u, 4397u)), u_input.a.yxw, !vec3<bool>(global0.c, true, true))));
    let var_3 = _wgslsmith_f_op_f32(global0.a - global0.a);
    let var_4 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-129f * _wgslsmith_f_op_f32(-554f - -369f)), _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(step(global0.a, -1000f))), -511f), vec3<f32>(_wgslsmith_f_op_f32(-global0.a), global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1042f))), 0i);
}

