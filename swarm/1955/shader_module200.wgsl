struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<f32>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1312f;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), true, vec3<f32>(-739f, 739f, -1330f), vec2<f32>(738f, -203f), -532f);

var<private> global2: vec3<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<u32>) -> bool {
    let var_0 = firstLeadingBit(u_input.e.x);
    var var_1 = -((~vec2<i32>(global2.x, 0i) | vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.c), _wgslsmith_clamp_i32(u_input.b, 40782i, -2147483647i))) << (vec2<u32>(34566u, ~(~0u)) % vec2<u32>(32u)));
    var var_2 = ~arg_1;
    var_2 = abs(abs(28324u));
    var_2 = ~abs(1u >> (arg_0.x % 32u));
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>) -> vec2<f32> {
    let var_0 = Struct_1(global1.a, global1.b, global1.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.x, -1000f) * vec2<f32>(_wgslsmith_f_op_f32(global1.d.x - _wgslsmith_f_op_f32(floor(-1095f))), -602f)), _wgslsmith_f_op_f32(-global1.e));
    global0 = _wgslsmith_f_op_f32(-global1.c.x);
    var var_1 = ~_wgslsmith_add_vec4_i32(arg_1 ^ ~(vec4<i32>(22326i, u_input.a.x, -17193i, 0i) >> (vec4<u32>(1u, 1u, 76056u, 75222u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(arg_1.x, u_input.a.x) >> (4294967295u % 32u), u_input.c | ~global2.x, global2.x, _wgslsmith_div_i32(16045i, ~global2.x)));
    let var_2 = vec3<f32>(-651f, var_0.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-635f, 199f), global1.c.x)))));
    let var_3 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1414f)));
    return vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(977f, var_3)))), _wgslsmith_f_op_f32(global1.e + _wgslsmith_f_op_f32(-var_0.c.x)), any(vec4<bool>(global2.x >= 1i, true, any(vec4<bool>(true, var_0.b, false, false)), !global1.a.x)))), var_0.d.x);
}

fn func_3() -> f32 {
    var var_0 = -1i;
    var var_1 = ~u_input.e.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(global1.c.yz));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(firstTrailingBit(vec2<i32>(global2.x, 2147483647i) & firstLeadingBit(u_input.a.zy)), ~vec2<i32>(~(i32(-1i) * -133i), u_input.c), select(!global1.a.zy, global1.a.zw, func_1(abs(firstLeadingBit(vec3<u32>(u_input.e.x, 1u, 17273u))), 1u, u_input.e.yy)));
    global1 = Struct_1(!global1.a, !global1.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.d.x), global1.c.x)), _wgslsmith_f_op_f32(-1097f - _wgslsmith_f_op_f32(abs(-295f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_div_vec2_f32(global1.c.xz, vec2<f32>(global1.c.x, global1.d.x)), select(vec4<i32>(-2147483647i, u_input.a.x, -1i, u_input.c), vec4<i32>(2147483647i, var_0.x, 17813i, global2.x), global1.a.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-591f, global1.c.x) + global1.d) - _wgslsmith_f_op_vec2_f32(-global1.c.zx)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(-486f, _wgslsmith_f_op_f32(max(global1.d.x, global1.e))), vec4<i32>(0i, ~65761i, var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(27867i, global2.x, 1349i, u_input.b), vec4<i32>(46851i, 0i, var_0.x, global2.x))))).x));
    let var_1 = Struct_1(global1.a, !global1.a.x, vec3<f32>(_wgslsmith_f_op_f32(select(-319f, -356f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1507f), -475f), global1.d, 228f);
    var var_2 = var_1;
    let var_3 = ~(_wgslsmith_mod_i32(10857i, countOneBits(abs(global2.x))) | (abs(var_0.x) ^ -1i));
    let var_4 = -1i;
    var var_5 = global1.a.x;
    global0 = 169f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.e)))), _wgslsmith_f_op_f32(func_3()), 708f);
}

