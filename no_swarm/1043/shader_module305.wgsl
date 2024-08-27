struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 25>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    var var_0 = 69620u;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -436f), 207f, _wgslsmith_f_op_f32(720f - _wgslsmith_f_op_f32(1249f + -1012f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1161f, -231f, _wgslsmith_f_op_f32(ceil(-1886f))))), ~u_input.b, _wgslsmith_mult_u32(11058u, 0u));
    let var_2 = false;
    let var_3 = vec2<bool>(true, all(vec3<bool>(var_2, true, var_2)));
    global0 = array<vec2<i32>, 25>();
    return 1u;
}

fn func_2() -> vec3<i32> {
    global0 = array<vec2<i32>, 25>();
    global0 = array<vec2<i32>, 25>();
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -186f);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2084f, 335f, -861f)))) - vec3<f32>(-406f, var_1, _wgslsmith_f_op_f32(var_1 * -1000f)))), -(_wgslsmith_sub_vec3_i32(vec3<i32>(-17164i, u_input.b.x, -2849i), ~u_input.b) << (~(~u_input.a.zzw) % vec3<u32>(32u))), func_3());
    return ~_wgslsmith_add_vec3_i32(abs(abs(vec3<i32>(-2147483647i, u_input.b.x, -63799i))) << (firstTrailingBit(~u_input.a.xxx) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_clamp_i32(max(u_input.b.x, var_2.b.x), var_2.b.x, ~(-725i)), -1i, _wgslsmith_add_i32(u_input.b.x, 10068i)));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<i32>, 25>();
    global0 = array<vec2<i32>, 25>();
    var var_0 = _wgslsmith_div_vec3_i32(func_2(), countOneBits(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i)), vec3<i32>(u_input.b.x, -2147483647i, 1i), u_input.b))) & _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -7952i, -15806i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i)), select(12093i, 3773i, true), u_input.b.x), u_input.b ^ (u_input.b >> (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u)))), ~_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)));
    let var_1 = false;
    let var_2 = Struct_2(select(select(vec3<bool>(var_1, true, true), select(vec3<bool>(var_1, var_1, false), vec3<bool>(true, var_1, var_1), true), any(vec2<bool>(var_1, var_1))), vec3<bool>(true, !(false && var_1), var_1), false), Struct_1(vec3<f32>(567f, 430f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2380f)))), u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(37599u, u_input.a.x), vec2<u32>(0u, u_input.a.x) << (u_input.a.yz % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u) | u_input.a.wz, select(u_input.a.yz, vec2<u32>(0u, u_input.a.x), vec2<bool>(false, false))))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b.a)))), vec3<i32>(_wgslsmith_div_i32(u_input.b.x, ~2147483647i), abs(abs(~21399i)), -10143i), reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.xx | vec2<u32>(1u, var_2.b.c), vec2<u32>(1u, u_input.a.x), min(vec2<u32>(0u, 0u), u_input.a.xz)), u_input.a.xx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = select(vec2<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), false)), false), select(vec2<bool>(true, true), select(vec2<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(true, true, true))), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true), any(vec3<bool>(true, true, all(vec3<bool>(false, false, false))))), !any(vec3<bool>(true, true, true)));
    global0 = array<vec2<i32>, 25>();
    global0 = array<vec2<i32>, 25>();
    var var_2 = (!(41704u > (0u & var_0.c)) | all(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(var_1.x, true, true)))) | false;
    global0 = array<vec2<i32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -135f, var_0.a.x, var_0.a.x))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, 1303f, var_0.a.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1131f, var_0.a.x, var_0.a.x, -1151f)) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x + -614f), _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), 319f)), !vec4<bool>(all(vec3<bool>(var_1.x, true, true)), false, true || var_1.x, false))), var_0.c);
}

