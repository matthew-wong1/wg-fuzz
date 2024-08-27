struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 13>;

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<Struct_1, 5>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = Struct_1(false);
    global0 = array<vec2<bool>, 13>();
    global2 = array<Struct_1, 5>();
    global0 = array<vec2<bool>, 13>();
    global1 = array<Struct_1, 31>();
    return ~vec2<i32>(u_input.b.x, ~u_input.a.x);
}

fn func_3(arg_0: vec2<u32>) -> vec2<f32> {
    let var_0 = !(!vec3<bool>(any(select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.e, 13u)], vec2<bool>(true, true))), true, true));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(4294967295u, 31u)], Struct_1(var_0.x && true), false, global1[_wgslsmith_index_u32(1u, 31u)]);
    global2 = array<Struct_1, 5>();
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(u_input.b.wyz), -_wgslsmith_add_vec3_i32(u_input.b.zxz, u_input.b.xwy), vec3<i32>(-u_input.b.x << (4294967295u % 32u), ~select(-2147483647i, u_input.b.x, true), select(-u_input.b.x, -2147483647i, !var_0.x))), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.wyz, u_input.b.zxw << (~vec3<u32>(u_input.d.x, u_input.e, 89538u) % vec3<u32>(32u))), u_input.b.yzw));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1539f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -105f), true)))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_f_op_f32(303f - 408f)))), vec2<f32>(695f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1064f - -1456f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(340f, -1251f), vec2<f32>(119f, 1226f), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1880f)))), vec2<f32>(-533f, _wgslsmith_f_op_f32(trunc(-758f))), var_1.a.a & var_0.x))));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_add_vec2_u32(~countOneBits(u_input.d), ~(~u_input.d) ^ _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d, u_input.d), ~vec2<u32>(4294967295u, u_input.d.x)))));
    global2 = array<Struct_1, 5>();
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(u_input.d, u_input.d, select(vec2<bool>(arg_0, false), select(vec2<bool>(true, arg_0), vec2<bool>(false, true), true), vec2<bool>(arg_0, arg_0))), u_input.d), 31u)], global1[_wgslsmith_index_u32(u_input.d.x, 31u)], false, Struct_1(true));
    return 74105u;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: i32, arg_3: u32) -> vec2<bool> {
    return !vec2<bool>(true, all(vec4<bool>(false, false, false, false)) || all(vec2<bool>(false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.b.xy;
    let var_1 = firstTrailingBit(max(u_input.b.xz << (~u_input.d % vec2<u32>(32u)), -func_1(u_input.b.wx, Struct_2(Struct_1(false), global2[_wgslsmith_index_u32(4294967295u, 5u)], true, Struct_1(true))))) << (select(u_input.d, ~vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, 1u), u_input.d.x), select(vec2<bool>(true, true), func_4(u_input.d.x, ~vec2<i32>(2147483647i, u_input.b.x), -2147483647i >> (u_input.d.x % 32u), func_2(false, vec4<i32>(0i, 1i, u_input.c.x, var_0.x))), global0[_wgslsmith_index_u32(37324u, 13u)])) % vec2<u32>(32u));
    global0 = array<vec2<bool>, 13>();
    global2 = array<Struct_1, 5>();
    let var_2 = !((any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true))) || (u_input.d.x > 26270u)) | (1i < (_wgslsmith_sub_i32(-1i, -30892i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 73289u, 3359u), vec4<u32>(58020u, 8949u, u_input.d.x, u_input.d.x)) % 32u))));
    let var_3 = countOneBits(vec3<i32>(var_0.x, ~firstTrailingBit(~var_0.x), -u_input.a.x));
    global0 = array<vec2<bool>, 13>();
    global0 = array<vec2<bool>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(~(-vec2<i32>(-34580i, -2147483647i)), Struct_2(global1[_wgslsmith_index_u32(func_2(true, ~vec4<i32>(var_0.x, -32993i, 48077i, var_3.x)), 31u)], Struct_1(true), !var_2, Struct_1(select(var_2, var_2, true)))));
}

