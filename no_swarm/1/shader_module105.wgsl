struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(true, false, false, false, true, true, true, true, false, false, true, false, true, false, true, true, true);

var<private> global1: u32 = 25702u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>) -> f32 {
    let var_0 = 9713u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1599f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-434f, _wgslsmith_f_op_f32(trunc(1000f)))))));
}

fn func_3(arg_0: vec3<u32>) -> vec3<f32> {
    global1 = _wgslsmith_add_u32(~4294967295u, _wgslsmith_mod_u32(arg_0.x, arg_0.x));
    global0 = array<bool, 17>();
    var var_0 = any(select(vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 17u)], false, global0[_wgslsmith_index_u32(arg_0.x, 17u)], global0[_wgslsmith_index_u32(54442u, 17u)])), true, arg_0.x < arg_0.x), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 17u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 17u)], false), global0[_wgslsmith_index_u32(arg_0.x, 17u)]), vec3<bool>(true, true, true)), true && global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.x), 17u)]));
    global0 = array<bool, 17>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(783f, -1392f, _wgslsmith_f_op_f32(818f + -610f))))), vec4<i32>(~(u_input.b << (34115u % 32u)), -1i, -2147483647i, _wgslsmith_div_i32(1i, abs(_wgslsmith_add_i32(-1i, u_input.b)))));
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.x, 1698f))), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(664f, _wgslsmith_f_op_f32(floor(-404f)))))));
}

fn func_2(arg_0: vec3<f32>) -> vec4<i32> {
    let var_0 = max(~(~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(79367u, 70593u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))), ~0u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(var_0, 33395u, var_0)))))))), vec4<i32>(~(-u_input.a.x), -43946i, u_input.a.x, u_input.a.x));
    global0 = array<bool, 17>();
    global1 = 35837u;
    var_1 = Struct_1(var_1.a, _wgslsmith_mod_vec4_i32(-(vec4<i32>(-1i) * -var_1.b), var_1.b));
    return var_1.b | var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2053f, -145f, 216f), vec3<f32>(-737f, 455f, 1634f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1311f, _wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(1460f - 1232f)) * vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(func_1(u_input.a, vec3<u32>(4294967295u, 1976u, 50486u))), -1875f))), ~func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-671f, 296f, 239f), vec3<f32>(368f, -1564f, -1708f))))));
    var var_1 = false;
    global0 = array<bool, 17>();
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.a.yx), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(416f, 700f), var_0.a.zy))), vec2<f32>(-557f, _wgslsmith_f_op_f32(floor(1055f))), false)))), false));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-273f, var_2.x, var_0.a.x)) * _wgslsmith_f_op_vec3_f32(step(var_0.a, vec3<f32>(var_0.a.x, var_2.x, 463f))))), vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), var_2.x), vec3<bool>(1i >= _wgslsmith_mod_i32(u_input.b, 3654i), !(!global0[_wgslsmith_index_u32(10399u, 17u)]), global0[_wgslsmith_index_u32(~(~0u), 17u)]))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec4_i32(firstTrailingBit(var_0.b), select(vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, 0i), vec4<i32>(50962i, u_input.b, var_0.b.x, 1i), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 17u)], false)))), -var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(var_0.a.zy, vec2<f32>(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)), 388f)), global0[_wgslsmith_index_u32(abs(65571u | _wgslsmith_dot_vec3_u32(vec3<u32>(10279u, 57489u, 4294967295u), vec3<u32>(32805u, 4294967295u, 0u))), 17u)])), _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(0u, 1u, 0u, 0u), vec4<u32>(4294967295u, 2638u, 4294967295u, 1u), true)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 2534u, 48502u, 48531u), min(vec4<u32>(1u, 1u, 19710u, 8583u), vec4<u32>(0u, 28496u, 25736u, 1u)), vec4<u32>(0u, 62470u, 0u, 13210u))), var_3.a);
}

