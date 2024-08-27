struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7>;

var<private> global1: vec2<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: u32) -> f32 {
    return 575f;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(1i, _wgslsmith_sub_u32(arg_2.x ^ (arg_3.a ^ (4294967295u >> (arg_3.a % 32u))), arg_1));
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(~reverseBits(~0u), ~1u), ~arg_2.yx);
    var var_3 = Struct_3(true);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_0, arg_0, -1546f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1971f, arg_0) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 1679f, -1558f, 604f), vec4<f32>(132f, -131f, -425f, -1000f), var_3.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-845f, arg_0, arg_0, -156f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -929f, arg_0, -606f)))), !vec4<bool>(true, var_3.a, true, var_3.a)))));
    return 6170u;
}

fn func_1() -> f32 {
    global0 = array<vec2<u32>, 7>();
    let var_0 = Struct_3(true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(all(vec3<bool>(false, var_0.a, false)), var_0, abs(21615u))) - 1086f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)))) == _wgslsmith_f_op_f32(func_2(var_0.a, var_0, ~((24211u | global1.x) | func_3(1523f, 1u, vec3<u32>(global1.x, global1.x, 23940u), Struct_2(37533u)))));
    global1 = _wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~5137u), global1.x), 7u)] | ~(~select(vec2<u32>(54019u, global1.x), vec2<u32>(83793u, global1.x), vec2<bool>(var_0.a, var_0.a))), vec2<u32>(global1.x, global1.x));
    var var_2 = Struct_3(var_0.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-162f - -1000f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1132f - 1438f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_div_f32(113f, -615f))))) * 1f);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-500f * -1501f), -1000f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(358f, -602f), vec2<f32>(453f, -164f), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-193f, -1000f) + vec2<f32>(1333f, 450f)), vec2<bool>(true, true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(430f, -976f) + vec2<f32>(975f, -1000f)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1334f * -1773f), _wgslsmith_f_op_f32(func_2(global1.x > global1.x, Struct_3(true), global1.x))) + vec2<f32>(1f, 1f)));
    var_0 = _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_f32(-1025f + _wgslsmith_f_op_f32(-var_1.x))));
    global0 = array<vec2<u32>, 7>();
    var var_2 = Struct_1(i32(-1i) * -2147483647i, countOneBits(global1.x));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, global1.x << ((~_wgslsmith_mult_u32(var_2.b, 4294967295u) & 0u) % 32u), 10497u), 7u)];
    let var_3 = vec4<i32>(-abs(firstLeadingBit(_wgslsmith_mod_i32(u_input.b, 1i))), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c.x, abs(var_2.a), ~1i), select(-u_input.c >> (~vec3<u32>(global1.x, var_2.b, global1.x) % vec3<u32>(32u)), u_input.c, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))))), var_2.a << ((global1.x | _wgslsmith_mult_u32(abs(global1.x), global1.x | 1u)) % 32u), ~(-27194i));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1, var_1, !all(vec4<bool>(false, true, true, true)))));
    let var_5 = Struct_3(false);
    let x = u_input.a;
    s_output = StorageBuffer(-(var_3.x | _wgslsmith_dot_vec4_i32(min(var_3, var_3), abs(vec4<i32>(u_input.c.x, u_input.b, u_input.d, var_3.x)))));
}

