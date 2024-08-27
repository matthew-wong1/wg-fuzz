struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(-1i, -34014i), vec2<i32>(76494i, 25517i), vec2<i32>(-1i, -16377i), vec2<i32>(16684i, -60073i), vec2<i32>(-1i, -32257i), vec2<i32>(-47137i, -107309i), vec2<i32>(-6025i, -8738i), vec2<i32>(2147483647i, -9424i), vec2<i32>(32240i, 0i), vec2<i32>(-9376i, -48867i), vec2<i32>(-1995i, -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(-19817i, 31457i), vec2<i32>(-1i, 29096i), vec2<i32>(-14943i, -10293i));

var<private> global1: Struct_3 = Struct_3(Struct_2(true, 74366u));

var<private> global2: array<Struct_3, 9>;

var<private> global3: array<vec3<u32>, 22>;

var<private> global4: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<f32>) -> Struct_2 {
    global2 = array<Struct_3, 9>();
    let var_0 = global2[_wgslsmith_index_u32(30469u, 9u)];
    global3 = array<vec3<u32>, 22>();
    global0 = array<vec2<i32>, 15>();
    var var_1 = true;
    return var_0.a;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: i32, arg_3: i32) -> bool {
    global1 = Struct_3(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(171f, _wgslsmith_f_op_f32(-1508f + 1135f), _wgslsmith_div_f32(-464f, -1020f)), vec3<f32>(_wgslsmith_f_op_f32(step(-1434f, -2119f)), -1000f, _wgslsmith_f_op_f32(abs(2307f)))), 4294967295u, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-677f, 1000f), vec2<f32>(1000f, _wgslsmith_f_op_f32(abs(522f)))))));
    global4 = Struct_2(!(~4294967295u >= (u_input.b >> (~33664u % 32u))), u_input.a << (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~global3[_wgslsmith_index_u32(92304u, 22u)], global3[_wgslsmith_index_u32(u_input.a, 22u)] ^ global3[_wgslsmith_index_u32(1u, 22u)]), abs(select(vec3<u32>(1u, 15926u, global1.a.b), vec3<u32>(1u, global1.a.b, 4294967295u), false))) % 32u));
    let var_0 = global4.a;
    let var_1 = arg_0;
    let var_2 = vec4<u32>(1u, max(u_input.b | 4294967295u, u_input.a), global4.b, min(1u, reverseBits(max(global4.b, 86968u)) | global4.b));
    return all(!select(!(!arg_0), var_1, false));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    var var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1209f), _wgslsmith_f_op_f32(max(-548f, -278f)))), _wgslsmith_div_f32(-897f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1342f)), -1061f))), -778f), global4.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-688f, 633f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(313f, 894f), vec2<f32>(905f, -1458f)))))));
    global4 = Struct_2(func_3(!vec2<bool>(false, var_0.a), arg_1.ww, -40241i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_1.x, arg_0, arg_1.x) | -arg_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-15102i, arg_0), global0[_wgslsmith_index_u32(~var_0.b, 15u)]))), ~global1.a.b);
    return global1.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -755f;
    var var_1 = vec2<u32>(func_1(~firstLeadingBit(7214i), max(-vec4<i32>(-8118i, -2147483647i, 2147483647i, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -1i, 2147483647i, -16575i), vec4<i32>(32674i, 2147483647i, -20993i, -20647i)))) << (u_input.b % 32u), global4.b);
    var_0 = -930f;
    let var_2 = max(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(vec3<f32>(_wgslsmith_f_op_f32(-748f - 738f), _wgslsmith_div_f32(390f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -772f)), 28357u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1403f, 1563f))))).b, ~(~4294967295u)), 15u)], abs(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~61629u, u_input.a), 15u)]));
    global2 = array<Struct_3, 9>();
    var var_3 = Struct_3(Struct_2(!all(select(vec3<bool>(global4.a, global1.a.a, false), vec3<bool>(global1.a.a, global4.a, false), false)), _wgslsmith_mult_u32(max(569u, _wgslsmith_sub_u32(global4.b, global4.b)), func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-729f, 1000f, -332f), vec3<f32>(-2071f, -921f, 1343f))), func_1(var_2.x, vec4<i32>(var_2.x, var_2.x, var_2.x, 0i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -185f) - vec2<f32>(-337f, -738f))).b)));
    let var_4 = abs(_wgslsmith_add_vec3_i32(-(~abs(vec3<i32>(var_2.x, var_2.x, var_2.x))), reverseBits(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.x, var_2.x, var_2.x), vec3<i32>(var_2.x, 1i, 0i))))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.b);
}

