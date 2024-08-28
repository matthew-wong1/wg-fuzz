struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_3(16118i);
    let var_1 = select(arg_2.e, select(select(vec4<bool>(true | arg_2.c, true, true, any(vec2<bool>(true, true))), !select(vec4<bool>(arg_0, true, arg_1, arg_0), vec4<bool>(false, arg_2.e.x, arg_0, arg_0), false), false), vec4<bool>(select(true, !arg_0, false), any(select(arg_2.e.wzy, vec3<bool>(true, true, true), arg_1)), select(any(vec2<bool>(arg_2.c, arg_0)), u_input.b.x <= arg_2.d, any(arg_2.e)), true), !any(vec4<bool>(true, true, arg_0, arg_0))), select(select(arg_2.e, !select(arg_2.e, vec4<bool>(arg_0, arg_1, arg_0, arg_1), vec4<bool>(true, arg_2.e.x, false, false)), !arg_2.e), select(!select(vec4<bool>(true, arg_1, arg_2.c, true), vec4<bool>(arg_1, arg_2.c, arg_1, false), false), arg_2.e, true), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -1193f), var_1.x)))), _wgslsmith_f_op_f32(round(-1229f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1498f + _wgslsmith_f_op_f32(442f - 945f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1141f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2243f))), _wgslsmith_f_op_f32(trunc(1194f)))));
    let var_3 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(15773u, ~select(arg_2.b, u_input.b.x, arg_1), u_input.d.x >> (~u_input.d.x % 32u))), 28894u, false, ~(_wgslsmith_sub_u32(22661u, firstTrailingBit(arg_2.a)) | (~arg_2.d ^ (63474u & u_input.b.x))), var_1);
    var var_4 = ~var_0.a << (reverseBits(0u) % 32u);
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~firstTrailingBit(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b)), vec3<u32>(var_3.a, 21567u, 1u)), _wgslsmith_sub_vec3_u32(u_input.b, u_input.b));
}

fn func_2(arg_0: Struct_2) -> i32 {
    let var_0 = reverseBits(vec3<u32>(_wgslsmith_mod_u32(~arg_0.b.a, func_3(arg_0.e.e.x, u_input.d.x < 23221u, Struct_1(17262u, u_input.d.x, arg_0.e.c, 39471u, vec4<bool>(true, false, arg_0.e.c, arg_0.e.e.x)))), arg_0.b.b, 75961u));
    return _wgslsmith_add_i32(u_input.e, ~arg_0.d);
}

fn func_1() -> StorageBuffer {
    var var_0 = true;
    var_0 = false;
    let var_1 = Struct_2(-1317f, Struct_1(~1u, _wgslsmith_dot_vec2_u32(u_input.d & u_input.d, vec2<u32>(44608u, 1u) >> (~u_input.d % vec2<u32>(32u))), all(vec2<bool>(true, any(vec4<bool>(true, false, false, true)))), 23471u, vec4<bool>(true, true, true, true)), countOneBits(vec3<u32>(~u_input.b.x, 4294967295u, ~u_input.b.x)) & ~u_input.b, _wgslsmith_mult_i32(39024i, -func_2(Struct_2(-157f, Struct_1(0u, 0u, false, 10554u, vec4<bool>(false, true, false, true)), u_input.b, 4950i, Struct_1(1u, 16175u, true, u_input.b.x, vec4<bool>(true, false, true, true))))), Struct_1(_wgslsmith_mult_u32(firstLeadingBit(0u), 52662u), ~(u_input.d.x ^ (39280u << (u_input.d.x % 32u))), !select(true, true, true) == !any(vec4<bool>(true, false, true, true)), u_input.b.x, vec4<bool>(false | any(vec2<bool>(false, false)), true, true, func_3(true, false, Struct_1(1u, 66555u, true, 38747u, vec4<bool>(false, true, true, true))) <= u_input.d.x)));
    return StorageBuffer(vec4<i32>(var_1.d << (reverseBits(~0u) % 32u), -37065i, ~(-2147483647i >> (~4294967295u % 32u)), min(-u_input.a, u_input.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(439f, 288f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a))), vec2<f32>(-316f, _wgslsmith_f_op_f32(-1683f - -509f)))), _wgslsmith_mult_vec3_i32(vec3<i32>(~0i, -1i, select(u_input.c, 1i, true)), abs(-vec3<i32>(var_1.d, u_input.c, u_input.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2354f, var_1.a, var_1.a, var_1.a)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, 1322f, -782f, -1000f), vec4<f32>(var_1.a, var_1.a, 579f, var_1.a))))))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.d.x, u_input.b.x, u_input.b.x, u_input.b.x)), firstTrailingBit(vec4<u32>(1u, 4294967295u, var_1.b.b, var_1.e.a))), vec4<u32>(u_input.b.x, 1u, u_input.b.x ^ _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), _wgslsmith_clamp_u32(~u_input.d.x, 1u, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

