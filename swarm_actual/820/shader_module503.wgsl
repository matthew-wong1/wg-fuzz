struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: Struct_3,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<u32>) -> bool {
    return arg_2.c;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5) -> vec3<f32> {
    var var_0 = u_input.b;
    var var_1 = arg_0.b;
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1000f, 1705f), 596f, -161f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1336f * -164f), 336f, -1105f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 483f, 961f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1135f, 1307f, 446f), vec3<f32>(-1000f, -1091f, -1674f), arg_1.b.x)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-637f, -986f, -1000f) * vec3<f32>(-654f, 1152f, -1100f)))), vec3<f32>(_wgslsmith_f_op_f32(select(-436f, -256f, true)), _wgslsmith_f_op_f32(max(-1286f, -926f)), _wgslsmith_f_op_f32(f32(-1f) * -702f))))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, 69041i, u_input.b), vec4<i32>(u_input.b, u_input.b, 7100i, u_input.b)) | (vec4<i32>(u_input.b, -2147483647i, -2147483647i, 1i) << (u_input.d % vec4<u32>(32u))), Struct_1(_wgslsmith_sub_u32(arg_0, 38112u), u_input.d.yx, _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(u_input.c, u_input.a.x, u_input.c, arg_0))), Struct_1(_wgslsmith_div_u32(arg_0, 4294967295u), u_input.a.yz, _wgslsmith_div_vec4_u32(vec4<u32>(20455u, u_input.c, 2044u, 1u), u_input.d)), u_input.d), Struct_5(Struct_1(_wgslsmith_dot_vec3_u32(u_input.a, u_input.d.wwz), ~vec2<u32>(34849u, arg_0), u_input.d), arg_2, -u_input.b, Struct_1(u_input.c, vec2<u32>(50898u, arg_0), reverseBits(vec4<u32>(u_input.d.x, u_input.c, u_input.d.x, 10065u)))))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, reverseBits(arg_0), 4294967295u), u_input.a), countOneBits(~vec2<u32>(4294967295u, arg_0)), u_input.d), arg_2.x, _wgslsmith_f_op_vec3_f32(func_3(Struct_3(abs(~vec4<i32>(0i, u_input.b, u_input.b, -1i)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(5660u, u_input.c, 0u), vec3<u32>(1u, arg_0, u_input.d.x)), vec2<u32>(0u, arg_0), vec4<u32>(arg_0, u_input.a.x, 4294967295u, 0u)), Struct_1(u_input.c, abs(vec2<u32>(23436u, arg_0)), u_input.d & vec4<u32>(11464u, 46988u, arg_0, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0, arg_0, 0u), vec4<u32>(1u, arg_0, 45125u, u_input.d.x)), ~28161u, ~u_input.a.x, ~u_input.d.x)), Struct_5(Struct_1(~20290u, max(vec2<u32>(31321u, 1u), u_input.d.zy), vec4<u32>(7355u, arg_0, 67678u, 0u)), !arg_2, -u_input.b & u_input.b, Struct_1(u_input.c, u_input.d.yy, vec4<u32>(1u, 4294967295u, 9341u, 0u))))), _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(31931i, 2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-41534i, 30774i), vec2<i32>(u_input.b, u_input.b)))), vec2<i32>(u_input.b & u_input.b, u_input.b ^ u_input.b) | abs(vec2<i32>(0i, -27710i)), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -12154i), vec2<i32>(33373i, 2147483647i)), ~(-1i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 0i) & vec2<i32>(56586i, 19913i), min(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -2028i))))));
    let var_1 = var_0.d.x;
    var var_2 = false;
    let var_3 = Struct_3(min(vec4<i32>(max(_wgslsmith_mult_i32(u_input.b, u_input.b), u_input.b >> (arg_0 % 32u)), var_0.e.x, 1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.e.x, 0i, u_input.b), vec3<i32>(0i, 0i, -27137i), vec3<bool>(arg_1, arg_2.x, false)), countOneBits(vec3<i32>(u_input.b, u_input.b, var_0.e.x)))), -vec4<i32>(u_input.b, abs(u_input.b), 1i, u_input.b)), var_0.b, Struct_1((firstTrailingBit(0u) >> (4294967295u % 32u)) << (_wgslsmith_add_u32(0u, arg_0) % 32u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 4294967295u), u_input.d.yz), select(~var_0.b.c, var_0.b.c, true)), var_0.b.c);
    var var_4 = false;
    return Struct_1(~u_input.d.x, var_3.d.zy, var_0.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(min(~0u, ~(~countOneBits(19879u))), ~u_input.a.yy ^ u_input.d.yx, ~abs(~(~vec4<u32>(17224u, 40641u, 0u, 4294967295u))));
    global0 = array<Struct_2, 12>();
    var var_1 = firstTrailingBit(~reverseBits(vec3<i32>(~(-80103i), -1i, i32(-1i) * -21893i)));
    let var_2 = ~var_0.a;
    var var_3 = func_2(var_0.b.x, all(vec4<bool>(true, !func_1(-810f, Struct_3(vec4<i32>(-1i, 1i, 1i, 0i), Struct_1(4294967295u, vec2<u32>(var_2, u_input.a.x), vec4<u32>(1u, 29170u, var_2, var_0.b.x)), var_0, vec4<u32>(51404u, 9616u, u_input.a.x, 66103u)), global0[_wgslsmith_index_u32(4294967295u, 12u)], var_0.c.xy), true, all(vec2<bool>(true, true)))), vec2<bool>(true, true));
    global0 = array<Struct_2, 12>();
    var_1 = countOneBits(~vec3<i32>(~18230i, _wgslsmith_add_i32(1i, -1i), -(-1086i | var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1019f - 224f), -1904f, 1154f, -1000f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 706f, -150f, 857f) - vec4<f32>(-1547f, -370f, -493f, 609f)), vec4<f32>(1000f, -1328f, 920f, -449f)))), i32(-1i) * -u_input.b);
}

