struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(-14770i, i32(-2147483648)), vec2<i32>(5080i, -42144i), vec2<i32>(25907i, -66307i), vec2<i32>(1i, -3357i), vec2<i32>(1i, 4444i), vec2<i32>(9053i, -683i));

var<private> global2: i32 = 40868i;

var<private> global3: vec2<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -948f), _wgslsmith_f_op_f32(arg_0 * arg_0))))));
    global3 = ~(~(~(~u_input.b.zz) ^ u_input.b.wx));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(230f * -1325f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1494f - -135f)))))));
    var var_1 = ~arg_2.b;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-275f, arg_0)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_0.x)))))));
    return _wgslsmith_mod_vec4_u32(arg_2.a, _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(arg_2.a, u_input.b) >> ((~vec4<u32>(56268u, 4294967295u, 23909u, 43547u) << (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.b));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>, arg_3: bool) -> vec4<u32> {
    global2 = -27164i;
    var var_0 = 46856u;
    var var_1 = arg_2;
    var var_2 = -387f;
    let var_3 = vec4<i32>(41824i | u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_i32(select(-(~u_input.a), countOneBits(vec4<i32>(12240i, u_input.a.x, -24006i, u_input.a.x) >> (arg_0.a % vec4<u32>(32u))), arg_3), vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(u_input.a, u_input.a)), -17215i);
    return vec4<u32>(max(0u, 1u), 2666u, global3.x, 0u << (~_wgslsmith_div_u32(max(global3.x, 13514u), 42242u) % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec4<i32>) -> StorageBuffer {
    global3 = vec2<u32>(~67571u, _wgslsmith_dot_vec4_u32(func_3(Struct_1(~u_input.b, _wgslsmith_sub_vec2_u32(arg_2.b, u_input.b.zx), !arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1079f, 124f) - -491f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-808f, 506f, 566f, 996f) + vec4<f32>(1286f, -220f, -604f, 677f))), false && !arg_2.c), vec4<u32>(16922u ^ max(global3.x, 58413u), 52110u, 0u, ~arg_2.b.x)));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1045f)), 1154f, arg_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-477f, -1000f, arg_0.c)))) - 981f));
    let var_1 = arg_2;
    global3 = ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(7022u, global3.x)), u_input.b.zy ^ u_input.b.wy) & _wgslsmith_clamp_vec2_u32(select(vec2<u32>(30046u, 4294967295u), var_1.a.xx, select(vec2<bool>(arg_2.c, true), vec2<bool>(arg_0.c, true), vec2<bool>(arg_2.c, false))), firstLeadingBit(vec2<u32>(u_input.b.x, 13746u)), var_1.a.zx));
    var var_2 = all(!vec3<bool>(true, var_1.c, false));
    return StorageBuffer(u_input.b.x, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1140f + _wgslsmith_f_op_f32(-605f * 522f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-141f)))), _wgslsmith_f_op_f32(f32(-1f) * -1266f)));
    let var_1 = Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(0u, 1u, u_input.c, u_input.b.x), vec4<u32>(1u, 1094u, global3.x, u_input.b.x)), abs(u_input.b)), u_input.b) | ~_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(global3.x, 120363u, 1u, 17120u)), ~countOneBits(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, global3.x, global3.x), firstTrailingBit(0u))), false);
    global1 = array<vec2<i32>, 6>();
    let var_2 = 4282u;
    let var_3 = true;
    global3 = _wgslsmith_mult_vec2_u32(u_input.b.wz, vec2<u32>(45003u, firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(global3.x, u_input.b.x)), 4294967295u))));
    let var_4 = 31384i;
    global3 = ~_wgslsmith_mult_vec2_u32(u_input.b.xw, var_1.b);
    global2 = -66911i;
    let x = u_input.a;
    s_output = func_2(var_1, (u_input.a << (func_1(-438f, var_1.c, Struct_1(vec4<u32>(global3.x, var_1.b.x, 28367u, u_input.b.x), u_input.b.zx, true)) % vec4<u32>(32u))) | ~(vec4<i32>(-1i) * -vec4<i32>(1i, 2147483647i, var_4, 2147483647i)), Struct_1(u_input.b & var_1.a, ~u_input.b.yw, any(!(!vec4<bool>(false, true, var_1.c, var_1.c)))), u_input.a);
}

