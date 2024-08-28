struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13>;

var<private> global1: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> vec4<u32> {
    var var_0 = vec3<i32>((-u_input.d.x ^ (_wgslsmith_dot_vec3_i32(u_input.d, u_input.d) >> (global1.d % 32u))) << (_wgslsmith_clamp_u32(~33006u | abs(u_input.a.x), min(_wgslsmith_dot_vec2_u32(u_input.a.xy, global1.c.xw), 38428u), 53488u) % 32u), select(_wgslsmith_dot_vec2_i32(~(~global0[_wgslsmith_index_u32(global1.d, 13u)]), _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.c.x, global1.b), vec2<i32>(global1.b, global1.b))), u_input.d.x << (_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, global1.d), u_input.a.x) % 32u), any(vec3<bool>(true, true, true)) == select(true, 1u != u_input.a.x, true)), _wgslsmith_clamp_i32(~u_input.c.x, select(_wgslsmith_mult_i32(firstTrailingBit(global1.b), global1.b), 13162i, true), u_input.b));
    global0 = array<vec2<i32>, 13>();
    let var_1 = firstTrailingBit(firstLeadingBit(~(~vec2<u32>(62806u, 29348u))));
    let var_2 = u_input.d.yy;
    var_0 = _wgslsmith_add_vec3_i32(u_input.c, select(u_input.d, select(u_input.d, u_input.c, false) & (vec3<i32>(-1i, var_2.x, u_input.c.x) | u_input.c), vec3<bool>(true, var_1.x < 83257u, false))) << (u_input.a % vec3<u32>(32u));
    return ~(~(~(vec4<u32>(4294967295u, global1.c.x, u_input.a.x, 36280u) ^ global1.c)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: u32) -> vec4<f32> {
    global0 = array<vec2<i32>, 13>();
    global1 = Struct_1(arg_0.a, 2147483647i, global1.c, 4294967295u);
    global0 = array<vec2<i32>, 13>();
    global0 = array<vec2<i32>, 13>();
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a.x, global1.a.x, arg_0.a.x, arg_0.a.x), arg_0.a, arg_2.x)))))), 1i, ~(~func_3(_wgslsmith_f_op_vec4_f32(trunc(arg_0.a)))), arg_3);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.x, global1.a.x, -1131f, global1.a.x), arg_0.a)), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -556f), 723f, _wgslsmith_f_op_f32(327f * global1.a.x))))));
}

fn func_1() -> Struct_2 {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, -319f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1633f, -602f) - _wgslsmith_f_op_f32(min(global1.a.x, global1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-347f, global1.a.x)) - _wgslsmith_f_op_f32(max(global1.a.x, 1684f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(global1.a, global1.b, vec4<u32>(44935u, 1u, global1.d, u_input.a.x), 23017u), -21932i, vec4<bool>(false, false, false, false), 14408u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a))))), u_input.c.x, _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(8368u, global1.c.x, 1u, 1u)), vec4<u32>(u_input.a.x, 20183u, 55526u, u_input.a.x) & global1.c), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(42042u, u_input.a.x, 17393u, global1.c.x), vec4<u32>(134240u, global1.c.x, global1.d, global1.d)), ~_wgslsmith_div_u32(4294967295u, u_input.a.x), ~global1.c.x, global1.d)), u_input.a.x);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -766f)), _wgslsmith_f_op_f32(global1.a.x - 991f), -684f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1056f, global1.a.x, 934f, 2542f), vec4<f32>(-1107f, global1.a.x, 277f, global1.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, -1204f, global1.a.x)))), true)), global1.b, _wgslsmith_add_vec4_u32(global1.c, max(firstTrailingBit(~global1.c), ~vec4<u32>(u_input.a.x, global1.d, u_input.a.x, 1u))), ~(~38542u));
    var var_0 = -2165f;
    let var_1 = global1.a.xw;
    let var_2 = vec3<i32>(u_input.d.x & 1i, -(_wgslsmith_sub_i32(44330i, _wgslsmith_sub_i32(global1.b, -1i)) | _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b, 0i), ~global1.b)), ~global1.b);
    return Struct_2(u_input.a.x, vec3<i32>(var_2.x, -(global1.b >> (4294967295u % 32u)), var_2.x), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, var_1.x, global1.a.x))))) + vec4<f32>(_wgslsmith_f_op_f32(1000f - 279f), _wgslsmith_f_op_f32(f32(-1f) * -146f), -631f, _wgslsmith_f_op_f32(131f * -1248f))), -6770i, min(vec4<u32>(global1.c.x, global1.c.x, 58003u, 1u >> (global1.d % 32u)), ~_wgslsmith_sub_vec4_u32(global1.c, vec4<u32>(u_input.a.x, global1.c.x, 25115u, 16193u))), ~u_input.a.x));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_2 {
    global0 = array<vec2<i32>, 13>();
    global1 = func_1().c;
    let var_0 = func_1().c;
    global0 = array<vec2<i32>, 13>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global1.a.x, func_1(), vec4<u32>(1u, ~1u ^ ~func_1().c.c.x, u_input.a.x, global1.d), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(global1.c, vec4<u32>(~(1u & u_input.a.x), 1u, 0u, ~var_0.c.c.x)), _wgslsmith_mod_vec3_i32(u_input.c, var_0.b), 39383i);
}

