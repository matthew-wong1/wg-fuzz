struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: f32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_2(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2114f))) + _wgslsmith_f_op_f32(floor(592f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1055f, 2111f)))))));
    global1 = -1596f;
    let var_1 = global0[_wgslsmith_index_u32(u_input.c >> (select(91021u, 1u, var_0.a <= u_input.b) % 32u), 24u)];
    var var_2 = abs(u_input.b);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(-338f, -890f)), var_0.b, var_1.a.x, var_1.a.x))) * var_1.a));
    return ~(_wgslsmith_mult_vec2_i32(vec2<i32>(abs(-2147483647i), max(u_input.b, u_input.b)), -(vec2<i32>(u_input.b, -6149i) & vec2<i32>(2147483647i, u_input.b))) >> (vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 1u), _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(u_input.d, 0u, u_input.d))) % vec2<u32>(32u)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-233f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-2240f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -846f)))));
    var var_1 = firstLeadingBit(_wgslsmith_div_vec2_i32(~(~vec2<i32>(1644i, 0i) << (vec2<u32>(u_input.a.x, 6847u) % vec2<u32>(32u))), -_wgslsmith_clamp_vec2_i32(func_3(), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, arg_0), vec2<i32>(-1177i, u_input.b)), -vec2<i32>(arg_0, -1i))));
    var_1 = -vec2<i32>(u_input.b, arg_0);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, 305f, var_0.x)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -347f)) + -875f), _wgslsmith_f_op_f32(f32(-1f) * -1218f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_2 = firstLeadingBit(max(vec3<i32>(var_1.x, abs(~arg_0), _wgslsmith_div_i32(-2147483647i, var_1.x >> (4294967295u % 32u))), vec3<i32>(~(-u_input.b), _wgslsmith_mult_i32(var_1.x, u_input.b), var_1.x)));
    return Struct_2(-1i, _wgslsmith_f_op_f32(round(var_0.x)));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = func_2(u_input.b | _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.b, 1i, ~u_input.b), vec3<i32>(~arg_0, 2147483647i, arg_0)));
    var_0 = func_2(1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, u_input.d, ~u_input.d, abs(77833u)), abs(vec4<u32>(u_input.a.x, u_input.c, 24925u, u_input.d))) % 32u));
    global1 = var_0.b;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(373f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(218f))))), var_0.b);
    var var_1 = vec3<bool>(any(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)))), true, any(vec4<bool>(true, true, true, true)));
    return !any(var_1.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), ~u_input.b <= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 58338i, 0i, -2147483647i), vec4<i32>(-2147483647i, u_input.b, -19595i, -53396i))), vec2<bool>(false, true && any(vec2<bool>(true, true))), !(!vec2<bool>(func_1(-2147483647i), any(vec3<bool>(false, true, true)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(206f, -670f, 1216f, -1000f), vec4<f32>(707f, -819f, 272f, 1000f), vec4<bool>(true, var_0.x, true, var_0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(-782f, 2594f, 448f, -178f), vec4<f32>(-165f, 790f, 1140f, 1069f)), any(vec4<bool>(var_0.x, true, true, false)))))) * vec4<f32>(_wgslsmith_div_f32(-257f, _wgslsmith_f_op_f32(-768f + 631f)), -629f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(605f - -1192f) + _wgslsmith_f_op_f32(f32(-1f) * -257f)), func_2(~1i).b)));
    let var_2 = false;
    let var_3 = -37195i;
    global0 = array<Struct_1, 24>();
    let var_4 = var_1.a.zww;
    global0 = array<Struct_1, 24>();
    let var_5 = Struct_1(_wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1972f, 1069f, 428f, var_1.a.x))) - _wgslsmith_f_op_vec4_f32(-var_1.a))));
    global0 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 1u), select(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.c, 4294967295u), false)), u_input.d, u_input.c), ~min(~vec3<u32>(8123u, u_input.c, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u)), var_3 < u_input.b), _wgslsmith_f_op_f32(max(-630f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.a.x - 1395f)) + 695f))));
}

