struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(39640u, 48629u, 3094u, 25094u), vec4<u32>(0u, 4294967295u, 1u, 5145u), vec4<u32>(65011u, 0u, 4294967295u, 0u));

var<private> global1: vec3<u32> = vec3<u32>(77010u, 43304u, 26534u);

var<private> global2: vec4<f32> = vec4<f32>(170f, 1000f, -907f, -2110f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec4<i32> {
    global2 = _wgslsmith_div_vec4_f32(vec4<f32>(-1227f, _wgslsmith_f_op_f32(trunc(305f)), -2883f, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-968f, 419f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-575f)) * global2.x), _wgslsmith_f_op_f32(global2.x * global2.x))));
    let var_0 = select(true, select(!(global2.x != 1004f), _wgslsmith_mult_i32(~u_input.d, -arg_0.c.a.x) >= 1i, arg_1 != global1.x), !(!(~arg_0.a <= arg_0.c.a.x)));
    var var_1 = _wgslsmith_f_op_f32(abs(1000f));
    var var_2 = arg_0;
    let var_3 = -15816i ^ _wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_0.b, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-59172i, var_2.a, 40666i), vec3<i32>(arg_0.b, -3861i, u_input.d), vec3<bool>(false, var_0, false)), _wgslsmith_div_vec3_i32(vec3<i32>(var_2.c.a.x, -3226i, 1i), vec3<i32>(-2147483647i, arg_0.a, 15418i)))), abs(-select(arg_0.a, arg_0.a, false)));
    return vec4<i32>(var_2.c.a.x, _wgslsmith_div_i32(abs(~var_3), ~((i32(-1i) * -76406i) >> (~var_2.d.x % 32u))), arg_0.a, min(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(var_2.a, 2147483647i), u_input.d), 1i), -1i));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> f32 {
    let var_0 = !vec4<bool>(true, 1f < _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_div_f32(-309f, global2.x))), true, !(!arg_2));
    let var_1 = u_input.c.zy;
    let var_2 = arg_0;
    let var_3 = ~func_3(Struct_2(-1i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, -1i, 48026i, arg_0.a.x), vec4<i32>(1i, arg_0.a.x, arg_0.a.x, 27360i)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 4730i, 2147483647i, 0i), vec4<i32>(1i, arg_0.a.x, 37930i, var_2.a.x))), arg_0, u_input.b), ~1u);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 885f, 827f, global2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1093f, 251f, global2.x, 167f), vec4<f32>(global2.x, -142f, global2.x, -1021f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1096f, global2.x, global2.x)))));
    return _wgslsmith_f_op_f32(-global2.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>) -> f32 {
    global1 = u_input.c.xxw;
    var var_0 = 2147483647i;
    var_0 = -1i;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1130f) * _wgslsmith_f_op_f32(-global2.x)))), -506f, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -836f) + 761f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-488f, arg_1.x, arg_1.x, _wgslsmith_f_op_f32(func_2(Struct_1(vec2<i32>(7798i, u_input.d)), u_input.b.x, false))))));
    let var_2 = _wgslsmith_add_i32(-26518i, 20657i);
    return 1852f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-295f, _wgslsmith_f_op_f32(func_1(vec3<i32>(31280i, 2147483647i, u_input.d), vec3<f32>(342f, global2.x, 1499f))), -1342f, _wgslsmith_f_op_f32(max(global2.x, global2.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 158f, -119f))))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(-564f)), _wgslsmith_f_op_f32(-global2.x), 508f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -802f))))));
    global1 = u_input.b.xxy;
    global1 = select(~(~_wgslsmith_div_vec3_u32(vec3<u32>(20225u, u_input.a.x, global1.x), vec3<u32>(1u, global1.x, 1u))), vec3<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(global1.x, u_input.a.x, global1.x, 4294967295u)), _wgslsmith_sub_vec4_u32(u_input.c, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), 3u)])), 0u, u_input.c.x), select(select(vec3<bool>(any(vec2<bool>(true, false)), all(vec2<bool>(false, false)), any(vec2<bool>(true, false))), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), !vec3<bool>(true, true, all(vec2<bool>(true, true))), u_input.d == (u_input.d >> ((4294967295u | u_input.c.x) % 32u))));
    var var_1 = Struct_1(_wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, 4645i), ~vec2<i32>(u_input.d, -2147483647i))), ~func_3(Struct_2(42434i, u_input.d, Struct_1(vec2<i32>(-29964i, u_input.d)), vec4<u32>(0u, u_input.a.x, 1u, 4294967295u)), u_input.b.x).yw));
    var var_2 = 0i;
    var var_3 = countOneBits(firstTrailingBit(var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.ww);
}

