struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6>;

var<private> global1: array<vec2<f32>, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> i32 {
    global0 = array<vec4<u32>, 6>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-419f + 1561f), _wgslsmith_f_op_f32(978f + -1140f)))))), arg_0 & true, abs(reverseBits(u_input.a.zwy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f) - _wgslsmith_f_op_f32(step(-122f, -213f))))), vec2<u32>(_wgslsmith_add_u32(2870u, 1u), 15976u << (1u % 32u)));
    let var_1 = vec4<bool>(all(!(!(!vec3<bool>(false, var_0.b, false)))), var_0.b, any(vec4<bool>(true, arg_0, false, var_0.b)), arg_0);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a));
    var var_3 = !var_1.zww;
    return var_0.c.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>) -> f32 {
    var var_0 = ~_wgslsmith_div_i32(u_input.a.x >> (18949u % 32u), u_input.a.x);
    var_0 = -1i;
    var_0 = -((1i >> (_wgslsmith_clamp_u32(~65859u, ~1u, 1u) % 32u)) >> (~0u % 32u));
    global0 = array<vec4<u32>, 6>();
    var var_1 = -func_3(true);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-656f)), _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 793f)))))));
}

fn func_1() -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-519f, _wgslsmith_div_f32(-1000f, 1235f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(724f, -1000f, 1199f)), vec2<f32>(863f, 1000f))))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1333f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1366f - 502f))), 302f)));
    let var_1 = ~select(~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(40030u, 91018u, 4294967295u), vec3<bool>(true, true, true)) << (reverseBits(vec3<u32>(1u, 123060u, ~max(7945u, 0u))) % vec3<u32>(32u));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-536f - _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(ceil(var_0.x)))))), 1f);
    global0 = array<vec4<u32>, 6>();
    global1 = array<vec2<f32>, 23>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(1u, 23u)], true, reverseBits(vec3<i32>(-1i) * -u_input.a.xzw), -1414f, max(_wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(110541u, 17958u), vec2<u32>(1u, 13940u)), ~vec2<u32>(4294967295u, 33024u)), vec2<u32>(1u, 1u)));
    global1 = array<vec2<f32>, 23>();
    let var_1 = !(!(!(!func_1())));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(~4294967295u, 23u)], _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, var_0.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, 613f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x - var_0.d), _wgslsmith_f_op_f32(-var_0.d)))), func_1(), u_input.a.xxx, var_0.a.x, vec2<u32>(_wgslsmith_sub_u32(~var_0.e.x, reverseBits(_wgslsmith_add_u32(var_0.e.x, var_0.e.x))), var_0.e.x));
    let var_3 = Struct_1(vec2<f32>(-1213f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, 1119f, var_2.a.x) + vec3<f32>(-165f, var_0.a.x, var_0.d)), var_0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, -2932f))))), !var_0.b, vec3<i32>(_wgslsmith_sub_i32(~(-34394i), -(var_0.c.x >> (67747u % 32u))), 15873i, abs(_wgslsmith_add_i32(1i, -48558i))), _wgslsmith_f_op_f32(-var_0.d), reverseBits(reverseBits(_wgslsmith_sub_vec2_u32(~var_0.e, ~var_2.e))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xxy, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(22533u, var_3.e.x, var_3.e.x), vec3<u32>(var_2.e.x, 11255u, var_0.e.x))));
}

