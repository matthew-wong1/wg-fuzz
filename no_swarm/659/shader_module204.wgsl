struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> vec3<u32> {
    return ~(~vec3<u32>(min(u_input.e.x, 0u), ~_wgslsmith_clamp_u32(u_input.e.x, 4409u, 13929u), 4294967295u));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<i32> {
    var var_0 = -2147483647i;
    var var_1 = !(!select(!(!vec4<bool>(arg_1, false, arg_1, arg_1)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, arg_1, arg_1, arg_1), arg_1), vec4<bool>(arg_1, arg_1, arg_1, false), !arg_1), true));
    var var_2 = u_input.c.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-2202f, -168f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-330f)))), _wgslsmith_f_op_f32(1f - -938f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1808f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2280f)) * 1171f)), _wgslsmith_f_op_f32(trunc(1875f))));
    var var_4 = vec2<bool>(var_1.x, !(false | all(var_1.yyw)) || true);
    return u_input.c.xzy;
}

fn func_1(arg_0: vec3<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(~u_input.e.x, ~u_input.e.x, ~u_input.d.x), _wgslsmith_mult_vec3_u32(u_input.e, select(u_input.e, u_input.e, true)), true), ~func_2(), abs(u_input.e));
    var var_1 = Struct_3(Struct_2(Struct_1(select(func_3(Struct_1(arg_0, u_input.c), false), arg_0, select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), u_input.c), vec3<bool>(!all(vec2<bool>(false, false)), true, any(vec2<bool>(false, false))), var_0.x ^ u_input.d.x, Struct_1(vec3<i32>(1i, 23758i >> (u_input.d.x % 32u), 20672i), u_input.c), global0[_wgslsmith_index_u32(u_input.e.x, 13u)]), var_0.zy, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -941f) - _wgslsmith_f_op_f32(148f - 211f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(826f, -2075f)) - _wgslsmith_f_op_f32(f32(-1f) * -1046f)), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -451f)))), ~1u);
    var var_2 = _wgslsmith_dot_vec3_i32(max(vec3<i32>(var_1.a.a.b.x << (select(var_0.x, var_1.d, var_1.a.b.x) % 32u), arg_0.x, var_1.a.d.b.x), vec3<i32>(-1i) * -(vec3<i32>(-50038i, -1i, arg_0.x) & arg_0)), vec3<i32>(u_input.a, _wgslsmith_dot_vec4_i32(-var_1.a.e.b, _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, u_input.c), vec4<i32>(arg_0.x, 1i, 0i, -4915i))), u_input.c.x));
    var var_3 = var_1.b;
    var var_4 = func_2().x;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.c, 567f)), _wgslsmith_f_op_f32(var_1.c * var_1.c), var_1.c, _wgslsmith_f_op_f32(-var_1.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, var_1.c, -613f, 612f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c, -1614f, -400f, -862f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1297f + 689f), _wgslsmith_f_op_f32(var_1.c + 570f), _wgslsmith_f_op_f32(abs(var_1.c)), _wgslsmith_div_f32(var_1.c, var_1.c))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(907f, 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.c))), var_1.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-350f, var_1.c, var_1.c, 124f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, -1000f, -165f, var_1.c) - vec4<f32>(-1385f, var_1.c, var_1.c, -138f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1506f, var_1.c, var_1.c, -1300f) * vec4<f32>(var_1.c, -444f, var_1.c, -310f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-949f, 186f)), 893f)), _wgslsmith_f_op_f32(abs(669f)))))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(590f, var_0, var_0, 438f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(616f, -255f, var_0, var_0))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -2099f, var_0, 386f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_1(vec3<i32>(55151i, u_input.a, 1i))))))));
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    let var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-979f * -301f), max(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.e.x, 1025u), 51134u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(8193u, u_input.e.x)), ~reverseBits(1u)), reverseBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.e.x), vec3<u32>(4294967295u, 11497u, u_input.e.x)) >> (abs(u_input.e << (vec3<u32>(u_input.d.x, 1u, u_input.e.x) % vec3<u32>(32u))) % vec3<u32>(32u))), abs(max(~(u_input.c.yx << (u_input.d % vec2<u32>(32u))), vec2<i32>(max(42452i, 9800i), ~u_input.a))));
}

