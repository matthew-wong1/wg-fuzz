struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> bool {
    let var_0 = u_input.d.x ^ -45532i;
    global0 = array<i32, 24>();
    var var_1 = true;
    let var_2 = 1f;
    var var_3 = all(select(!vec3<bool>(select(true, true, false), select(false, true, true), true), vec3<bool>(!any(vec4<bool>(true, false, true, false)), all(vec2<bool>(false, false)), true), true));
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> bool {
    let var_0 = vec2<i32>(arg_1.b.b & (u_input.b << (~0u % 32u)), 17963i);
    let var_1 = firstTrailingBit(abs(-_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -1i, -55405i, -67174i), vec4<i32>(-63377i, 9197i, global0[_wgslsmith_index_u32(4294967295u, 24u)], arg_0.a.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -1i, 13882i, 8010i), vec4<i32>(-29234i, var_0.x, arg_0.a.b, -2147483647i)), vec4<i32>(1038i, -51058i, u_input.d.x, u_input.d.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-742f, 831f))))), _wgslsmith_f_op_f32(sign(-291f)), _wgslsmith_clamp_u32(firstLeadingBit(u_input.c.x), firstTrailingBit(4294967295u), ~arg_0.a.c.x) <= ~u_input.e.x)));
    let var_3 = var_2;
    global0 = array<i32, 24>();
    return _wgslsmith_dot_vec2_i32(select(var_0, vec2<i32>(0i, var_0.x), select(!arg_1.c.zx, !vec2<bool>(arg_1.d.x, arg_1.c.x), arg_1.d)), vec2<i32>(~(~37085i), -18724i)) == -2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<bool> {
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    return vec3<bool>(func_4(Struct_2(arg_0), Struct_3(_wgslsmith_f_op_f32(round(691f)), arg_0, select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, false)), vec2<bool>(true, func_3()))), !(-969f <= _wgslsmith_f_op_f32(-1247f * _wgslsmith_f_op_f32(582f * arg_0.a))), func_4(Struct_2(arg_0), Struct_3(737f, Struct_1(_wgslsmith_f_op_f32(ceil(arg_1.x)), -2147483647i, vec3<u32>(u_input.e.x, u_input.a, arg_0.d) ^ arg_0.c, max(arg_0.d, arg_0.d)), vec3<bool>(true, any(vec2<bool>(false, false)), func_3()), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))));
}

fn func_1() -> u32 {
    var var_0 = !(!select(true, true, true)) && true;
    var_0 = any(select(vec3<bool>(true, true, true), !select(func_2(Struct_1(1604f, u_input.d.x, vec3<u32>(1u, u_input.c.x, 0u), u_input.a), vec3<f32>(-277f, 1151f, -1231f)), func_2(Struct_1(-2080f, global0[_wgslsmith_index_u32(4294967295u, 24u)], vec3<u32>(u_input.c.x, 0u, u_input.c.x), 84758u), vec3<f32>(-886f, 504f, -510f)), vec3<bool>(true, true, true)), !func_2(Struct_1(335f, -2147483647i, vec3<u32>(60309u, 13276u, u_input.e.x), 0u), vec3<f32>(2614f, 1000f, 534f)).x));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(760f, -511f, 695f, 717f) - vec4<f32>(-170f, -3070f, -873f, -1083f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(180f, -1978f, 511f, 1186f))))))));
    var_0 = true;
    let var_2 = _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(0u, u_input.e.x, min(~u_input.a, 4294967295u))), ~(~countOneBits(~vec3<u32>(88627u, u_input.a, u_input.a))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, firstTrailingBit(~(~u_input.c.x)) < func_1());
    var var_1 = abs(-11128i);
    global0 = array<i32, 24>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-256f, -1490f))))), abs(global0[_wgslsmith_index_u32(4294967295u, 24u)]), _wgslsmith_mult_vec3_u32(vec3<u32>(~max(u_input.a, 4294967295u), _wgslsmith_dot_vec2_u32(select(u_input.c, vec2<u32>(u_input.e.x, 0u), vec2<bool>(false, false)), u_input.e), u_input.e.x), firstTrailingBit(abs(abs(vec3<u32>(u_input.e.x, 6093u, 31522u))))), _wgslsmith_mod_u32(~1u, _wgslsmith_sub_u32(u_input.c.x, ~(~0u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.c.x, var_2.d), vec2<u32>(u_input.a, u_input.c.x)), max(vec2<u32>(u_input.e.x, u_input.e.x), select(vec2<u32>(4294967295u, var_2.c.x), vec2<u32>(1u, u_input.e.x), vec2<bool>(false, var_0.x))))), _wgslsmith_f_op_f32(-var_2.a), global0[_wgslsmith_index_u32(1205u, 24u)], func_1());
}

