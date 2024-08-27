struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(12178i, -1i, 0i, 40067i), Struct_1(vec4<u32>(0u, 1u, 0u, 1u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    let var_0 = (global1.a.xxx | min(vec3<i32>(14568i, 1i, _wgslsmith_mod_i32(global1.a.x, 1i)), global1.a.xxz)) >> (~_wgslsmith_mod_vec3_u32(~vec3<u32>(34239u, u_input.a, 4294967295u), _wgslsmith_mult_vec3_u32(global1.b.a.zyx, global1.b.a.zwy)) % vec3<u32>(32u));
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    global1 = global0[_wgslsmith_index_u32(global1.b.a.x, 27u)];
    global1 = global0[_wgslsmith_index_u32(1u, 27u)];
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-742f - _wgslsmith_f_op_f32(round(-742f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(981f + -249f)))))));
}

fn func_2() -> vec4<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, true))) * _wgslsmith_f_op_f32(732f + 1005f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-337f)) * 399f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-205f)) + -769f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -798f)) * _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true)))), -1025f);
    global1 = global0[_wgslsmith_index_u32(u_input.a, 27u)];
    var var_1 = any(vec2<bool>(true, true));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2014f, var_0.x, var_0.x, var_0.x) * vec4<f32>(108f, -303f, 412f, -126f)) - vec4<f32>(var_0.x, -384f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-242f, -1000f, var_0.x, var_0.x))))))), Struct_2(global1.a, Struct_1(reverseBits(global1.b.a))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_div_f32(var_0.x, 167f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))))), firstTrailingBit(_wgslsmith_sub_u32(1u, global1.b.a.x)));
    var_1 = !all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), true));
    return vec4<u32>(global1.b.a.x, var_2.b.b.a.x, 0u, firstTrailingBit(0u << (var_2.d % 32u)));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global1 = Struct_2(global1.a, Struct_1(vec4<u32>(25083u, 0u, arg_0.a.x, arg_0.a.x)));
    global0 = array<Struct_2, 27>();
    var var_0 = -global1.a.x;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1783f, _wgslsmith_div_f32(1200f, -1824f), _wgslsmith_f_op_f32(-564f + 1091f), _wgslsmith_f_op_f32(abs(-1896f)))))), global0[_wgslsmith_index_u32(39029u, 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, -155f)))))), ~(u_input.a >> (abs(14881u) % 32u)));
    let var_2 = Struct_2(global1.a, arg_0);
    return Struct_2(-firstLeadingBit(global1.a), Struct_1(~_wgslsmith_add_vec4_u32(max(vec4<u32>(4294967295u, arg_0.a.x, 4294967295u, var_2.b.a.x), vec4<u32>(global1.b.a.x, var_1.b.b.a.x, arg_0.a.x, 27088u)), global1.b.a)));
}

fn func_1() -> vec3<u32> {
    global1 = func_4(Struct_1(vec4<u32>(~u_input.a, select(0u, u_input.a, false), global1.b.a.x, firstTrailingBit(71792u)) << (func_2() % vec4<u32>(32u))));
    var var_0 = ~func_2().x;
    let var_1 = select(vec4<bool>(!(any(vec3<bool>(false, true, false)) || true), true, true, false), !(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, false, false))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), false)));
    var_0 = u_input.a;
    let var_2 = false;
    return vec3<u32>(abs(~(global1.b.a.x ^ 1u)), ~(~54907u), _wgslsmith_mult_u32(2010u, ~global1.b.a.x)) | ~(~vec3<u32>(4294967295u, countOneBits(1u), func_2().x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = func_1();
    var var_2 = func_4(Struct_1(vec4<u32>(52073u, 26087u, ~1u, var_1.x)));
    global0 = array<Struct_2, 27>();
    var var_3 = var_2.a.yz;
    let var_4 = !all(vec2<bool>(select(1u > global1.b.a.x, true, true), false));
    var var_5 = Struct_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec2<bool>(var_4, var_4))))), -252f, 284f, -573f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 59409u), min(vec2<u32>(var_1.x, 0u), vec2<u32>(2336u, 7371u))), _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.b.a.x, 2487u), vec2<u32>(var_2.b.a.x, var_1.x)) & select(vec2<u32>(var_1.x, var_2.b.a.x), var_1.zz, vec2<bool>(var_4, var_4)), ~var_1.zy), vec2<u32>(global1.b.a.x, ~(u_input.a & 13614u))), 27u)], _wgslsmith_div_f32(701f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1492f)))), func_1().x);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.a.xx, -max(func_4(Struct_1(global1.b.a)).a.x, ~func_4(var_2.b).a.x));
}

