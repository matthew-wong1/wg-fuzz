struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>) -> vec2<f32> {
    var var_0 = vec3<bool>(true, any(!vec3<bool>(true, all(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, false, true)))), !any(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))));
    let var_1 = Struct_1(1u, ~vec2<i32>(_wgslsmith_mult_i32(-4831i, arg_0.x), u_input.a.x), ~(~(~min(vec2<u32>(580u, 9796u), global0[_wgslsmith_index_u32(5838u, 30u)]))), ~(vec4<u32>(1u, firstTrailingBit(32562u), ~1u, abs(76951u)) >> (abs(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))), ~min(~1u, 1u));
    var var_2 = Struct_2(~var_1.a >> ((min(_wgslsmith_clamp_u32(1u, 1u, 20251u), abs(var_1.c.x)) & 57169u) % 32u));
    global0 = array<vec2<u32>, 30>();
    var_2 = Struct_2(_wgslsmith_div_u32(countOneBits(~abs(var_1.d.x)), ~1u & _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_1.e, var_2.a), vec3<u32>(var_1.a, 44210u, 4294967295u)), firstTrailingBit(var_1.d.xzw))));
    return arg_1.xx;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_2(4294967295u);
    global0 = array<vec2<u32>, 30>();
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(-56379i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(1734f - arg_0.x), arg_0.x, arg_0.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -2522f)) - _wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(-34719i, u_input.a.x, -23935i), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, arg_0.x, 1788f))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(arg_0))))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), var_2.x);
    return _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x ^ ~u_input.a.x, _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-15224i, u_input.a.x, 0i, 2147483647i), vec4<i32>(34771i, u_input.a.x, u_input.a.x, u_input.a.x)))), u_input.a.x, _wgslsmith_div_i32(u_input.a.x ^ countOneBits(2147483647i), _wgslsmith_mod_i32(u_input.a.x, 0i))), _wgslsmith_mult_i32(-2147483647i, ~u_input.a.x));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: f32) -> u32 {
    var var_0 = -184f;
    let var_1 = vec3<i32>(u_input.a.x, -func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1933f, arg_2), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), vec2<f32>(arg_2, arg_2)), !arg_1.zx))), u_input.a.x);
    global0 = array<vec2<u32>, 30>();
    var var_2 = Struct_1((~select(1u, 4294967295u, true) & ~61248u) & (abs(_wgslsmith_mult_u32(1u, 93815u)) & (1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(65485u, 1u, 4294967295u, 4294967295u), vec4<u32>(26601u, 4294967295u, 2758u, 1501u)) % 32u))), var_1.xx, abs(vec2<u32>(0u, _wgslsmith_mod_u32(~0u, countOneBits(1u)))), select(~vec4<u32>(1u, 1u, 1u, 1u), ~reverseBits(~vec4<u32>(1u, 65757u, 1u, 0u)), select(any(!arg_1.xx), arg_1.x, false)), ~1u);
    let var_3 = Struct_2(33868u);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -reverseBits(29911i);
    let var_1 = Struct_2(~(~58813u));
    let var_2 = vec3<bool>(true, false, true);
    global0 = array<vec2<u32>, 30>();
    global0 = array<vec2<u32>, 30>();
    var var_3 = var_1.a >> (~reverseBits(func_1(var_2.x, var_2, 791f) | 1u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x, 24936i) << (_wgslsmith_mod_u32(var_1.a, 6783u) % 32u), -var_0), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), -1i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1196f + 296f), _wgslsmith_f_op_f32(-458f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1658f * 1315f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(3440i, u_input.a.x, 2997i), vec3<f32>(487f, -708f, -132f))).x), 834f), vec4<bool>(var_2.x, true, any(!var_2), true))));
}

