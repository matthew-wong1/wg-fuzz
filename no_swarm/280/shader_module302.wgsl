struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    global0 = array<vec4<bool>, 11>();
    var var_0 = abs(vec2<i32>(u_input.e, firstTrailingBit(-15534i)));
    var var_1 = 54004u;
    let var_2 = 3058u;
    let var_3 = countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-min(0i, u_input.e), u_input.e << (4294967295u % 32u)), reverseBits(vec2<i32>(40391i, -2147483647i)) | ~(vec2<i32>(u_input.e, -3851i) >> (vec2<u32>(var_2, u_input.d.x) % vec2<u32>(32u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1187f)) * 1f), _wgslsmith_f_op_f32(-1f))) * -220f);
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    global0 = array<vec4<bool>, 11>();
    let var_0 = vec4<u32>(4294967295u, reverseBits(21041u), u_input.d.x, 4294967295u);
    let var_1 = u_input.e;
    let var_2 = max(var_1, ~u_input.e);
    var var_3 = true;
    return Struct_2(Struct_1(-599f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(floor(1212f))), var_0.x ^ var_0.x, global0[_wgslsmith_index_u32(~(~29811u), 11u)], var_0), var_1);
}

fn func_1() -> vec4<u32> {
    global0 = array<vec4<bool>, 11>();
    var var_0 = u_input.a.xyx;
    let var_1 = func_2(vec2<bool>(true, true));
    var_0 = vec3<u32>(~var_1.a.d.x & _wgslsmith_add_u32(5427u, 50773u), var_0.x, ~(~(~(var_0.x >> (1u % 32u)))));
    global0 = array<vec4<bool>, 11>();
    return var_1.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 11>();
    let var_0 = true;
    let var_1 = func_1();
    let var_2 = Struct_3(func_2(!vec2<bool>(all(global0[_wgslsmith_index_u32(12550u, 11u)]), true)).a);
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(483f, 845f, -1036f), vec3<f32>(1278f, -556f, 970f), vec3<bool>(var_2.a.a, var_0, false)))))), vec3<f32>(_wgslsmith_f_op_f32(abs(-499f)), _wgslsmith_f_op_f32(step(-720f, -646f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1061f), _wgslsmith_div_f32(1000f, -137f)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-491f)))), _wgslsmith_f_op_f32(-139f - _wgslsmith_f_op_f32(abs(-630f))), false)), -1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(822f + -1633f) + _wgslsmith_f_op_f32(-219f - 1602f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(vec2<bool>(var_2.a.c.x, false)).a.d.x, ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.e, countOneBits(1i)), _wgslsmith_clamp_i32(-2147483647i, -u_input.e, 1i)), vec4<f32>(_wgslsmith_f_op_f32(-608f - 840f), _wgslsmith_f_op_f32(min(-1222f, _wgslsmith_f_op_f32(f32(-1f) * -1506f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-149f, 403f)))), -1225f), firstLeadingBit(vec4<i32>(~u_input.e, ~max(u_input.e, u_input.e), ~abs(2147483647i), -1i)));
}

