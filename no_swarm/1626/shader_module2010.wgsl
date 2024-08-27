struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(-260f, -1i, 26034i), Struct_3(554f, 49423i, 33890i), Struct_3(345f, 2147483647i, 1i), Struct_3(1533f, 25083i, -74929i), Struct_3(785f, -30708i, 1i), Struct_3(-1301f, 2147483647i, -15000i), Struct_3(-437f, 1i, -1i), Struct_3(-151f, 0i, i32(-2147483648)), Struct_3(-533f, -34136i, 0i), Struct_3(-128f, -39012i, 0i), Struct_3(153f, 2147483647i, 0i), Struct_3(1000f, 36783i, 1i), Struct_3(-118f, -37395i, 2147483647i), Struct_3(-441f, 0i, -70584i), Struct_3(333f, -24445i, 2147483647i), Struct_3(-1778f, 53333i, -99710i), Struct_3(1609f, -5878i, 44530i), Struct_3(-431f, -1i, -39772i));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: i32) -> i32 {
    return _wgslsmith_mod_i32(~(-73101i), min(1i, _wgslsmith_clamp_i32(arg_2, arg_2, u_input.a) << (arg_1.x % 32u)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(134016u, 18u)];
    let var_1 = -944f;
    global0 = array<Struct_3, 18>();
    var var_2 = select(select(!select(!vec4<bool>(true, false, global1.x, true), !vec4<bool>(true, global1.x, false, true), vec4<bool>(global1.x, false, global1.x, false)), vec4<bool>(reverseBits(37687u) <= arg_0.x, global1.x, any(!vec2<bool>(global1.x, true)), all(vec2<bool>(true, true))), false), !(!(!select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(true, global1.x, false, true), true))), true);
    let var_3 = _wgslsmith_f_op_f32(401f + _wgslsmith_f_op_f32(882f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1)))));
    return 8631u;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<i32>) -> Struct_3 {
    global0 = array<Struct_3, 18>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_u32(abs(_wgslsmith_clamp_u32(1u, 5637u, 18023u)), 1u)), true, arg_2.x, Struct_1(~func_3(vec3<u32>(29893u, 48180u, 4294967295u))));
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    let var_1 = var_0.a.a;
    return global0[_wgslsmith_index_u32(0u, 18u)];
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-664f, arg_1.a, arg_1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(911f - -2631f)), _wgslsmith_f_op_f32(f32(-1f) * -293f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1.a)), arg_1.a, _wgslsmith_f_op_f32(-arg_1.a)))));
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(~59827u, abs(max(~1274u, 58487u)), ~(~1u), ~1u), ~(~(~vec4<u32>(1u, 1u, 1u, 1u))));
    global0 = array<Struct_3, 18>();
    let var_2 = arg_2;
    global1 = vec2<bool>(select(var_2.x, _wgslsmith_sub_u32(~43173u, countOneBits(var_1.x)) == var_1.x, (arg_1.a > var_0.x) || true), global1.x);
    return _wgslsmith_div_f32(-750f, _wgslsmith_f_op_f32(-var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 18>();
    var var_0 = min(select(u_input.a, 2147483647i, true), -2147483647i);
    let var_1 = 14673u;
    var var_2 = 0u;
    global0 = array<Struct_3, 18>();
    let var_3 = vec3<i32>(_wgslsmith_sub_i32(countOneBits(-2147483647i), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, 1i), abs(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 53073i))))), max(u_input.a | ~(-4741i), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.a, u_input.a)), vec2<i32>(func_1(vec4<f32>(1248f, -586f, -218f, 179f), vec4<u32>(var_1, var_1, 31162u, var_1), 2147483647i), u_input.a))), 0i);
    var var_4 = vec4<u32>(firstTrailingBit(var_1), _wgslsmith_mult_u32(35862u, var_1), var_1, ~_wgslsmith_div_u32((var_1 | 1u) >> (var_1 % 32u), var_1 >> (~var_1 % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec2<i32>(-8745i, var_3.x ^ 4176i), min(vec2<i32>(50198i, u_input.a), vec2<i32>(u_input.a, -1i))), 0u, 37687u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-vec2<i32>(u_input.a, 2147483647i), func_2(vec2<f32>(-1298f, -1087f), var_3.x, var_3.zy), vec4<bool>(false, global1.x, global1.x, global1.x))))));
}

