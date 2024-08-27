struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: f32) -> i32 {
    let var_0 = global1.x;
    var var_1 = Struct_5(-1i, global1.x);
    var var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, u_input.c >> (u_input.a % 32u)), vec2<u32>(_wgslsmith_add_u32(~u_input.c, _wgslsmith_sub_u32(u_input.c, u_input.b)), ~(~u_input.b))), vec2<u32>(~(~(u_input.c << (19517u % 32u))), u_input.c >> (u_input.c % 32u)), reverseBits(vec2<u32>(1u, u_input.b ^ u_input.c)));
    let var_3 = abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, ~u_input.b | abs(var_2.x), u_input.c, min(~var_2.x, u_input.a >> (0u % 32u))), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 1391u, 45001u, 0u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.c, var_2.x), vec4<u32>(u_input.a, 66510u, u_input.a, var_2.x)) % vec4<u32>(32u)), ~select(vec4<u32>(33013u, 1293u, var_2.x, var_2.x), vec4<u32>(u_input.b, 1u, var_2.x, u_input.c), vec4<bool>(true, true, global1.x, var_1.b))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(79689u, u_input.a, var_2.x, 11605u), vec4<u32>(u_input.a, u_input.a, 0u, 1u)) ^ ~firstTrailingBit(vec4<u32>(0u, 1u, u_input.b, 0u))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-261f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -689f))))));
    return arg_0.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = abs(abs(~1u));
    let var_1 = Struct_1(func_3(reverseBits(vec3<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), -2032i, u_input.d.x)), Struct_5(29525i, global1.x), Struct_3(arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(564f, -862f, global1.x & global1.x)))), ~(~countOneBits(u_input.a)) <= _wgslsmith_clamp_u32(~_wgslsmith_add_u32(25961u, u_input.c), min(~u_input.b, ~6742u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(38941u, 8118u, 4294967295u), vec3<u32>(4294967295u, 63519u, u_input.b))), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(select(_wgslsmith_div_u32(u_input.b, u_input.c), _wgslsmith_mult_u32(u_input.c, 18145u), true), ~(~5372u)), 24963u));
    global1 = !vec2<bool>(!global1.x && select(global1.x && false, true, global1.x), any(vec3<bool>(var_1.a < var_1.a, global1.x, !global1.x)));
    let var_2 = Struct_5(_wgslsmith_dot_vec2_i32(u_input.d.zz, vec2<i32>(-u_input.d.x << (1u % 32u), -reverseBits(u_input.d.x))), var_1.b);
    let var_3 = _wgslsmith_sub_i32(var_2.a, 903i);
    return var_1;
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    global0 = arg_0.x;
    let var_0 = Struct_2(func_2(arg_0.x), ~u_input.b, vec2<u32>(u_input.b, _wgslsmith_div_u32(~u_input.c, ~u_input.c)), vec2<bool>(false, select(global1.x, global1.x, firstTrailingBit(u_input.c) < firstTrailingBit(u_input.a))), vec3<i32>(u_input.d.x, _wgslsmith_div_i32(2147483647i, abs(-14912i)), ~23135i));
    var var_1 = var_0;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(min(-917f, _wgslsmith_f_op_f32(max(arg_0.x, -273f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_0.x))))))));
    var var_2 = select(select(!vec4<bool>(all(vec4<bool>(var_0.a.b, var_0.a.b, true, false)), select(false, false, true), true | var_0.d.x, var_1.a.b), select(vec4<bool>(var_0.a.b, select(false, true, false), false, true), vec4<bool>(true, true, true, true), !vec4<bool>(var_1.a.b, global1.x, var_0.d.x, false)), select(!vec4<bool>(var_0.d.x, var_1.d.x, false, var_0.d.x), vec4<bool>(false, false, global1.x, global1.x || global1.x), ~var_0.b == ~4294967295u)), !vec4<bool>(var_0.a.b, var_1.d.x, true, 1384f > _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))), true);
    return 623f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(752f, -1652f) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(-1417f, 985f, -155f))) * 1140f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(548f)), _wgslsmith_f_op_f32(f32(-1f) * -179f)))));
    var var_1 = firstTrailingBit(reverseBits(select(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.b), vec3<u32>(7710u, u_input.b, 19066u)), u_input.a & u_input.a), abs(~vec2<u32>(u_input.a, 4294967295u)), select(vec2<bool>(global1.x, false), !vec2<bool>(global1.x, true), select(vec2<bool>(true, false), vec2<bool>(false, global1.x), false)))));
    var var_2 = Struct_5(u_input.d.x | _wgslsmith_div_i32(~u_input.d.x, i32(-1i) * -2147483647i), !(!global1.x));
    var var_3 = Struct_1(_wgslsmith_mult_i32(10453i, var_2.a), !(!(all(vec4<bool>(global1.x, false, false, var_2.b)) & (u_input.c >= 28897u))), u_input.a);
    var var_4 = Struct_3(var_0.x);
    let var_5 = Struct_1(~u_input.d.x, u_input.b <= countOneBits(_wgslsmith_div_u32(~u_input.c, var_3.c)), 29733u & ~(~_wgslsmith_div_u32(23822u, var_1.x)));
    global0 = 1567f;
    var var_6 = vec4<u32>(~(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, var_1.x), vec3<u32>(1u, var_5.c, 0u)) | 38254u), 46796u ^ abs(func_2(var_0.x).c >> ((var_5.c >> (0u % 32u)) % 32u)), countOneBits(~min(u_input.a, var_5.c)), var_1.x);
    var_1 = vec2<u32>(var_6.x, abs(~func_2(799f).c) << (_wgslsmith_add_u32(120366u, abs(var_5.c)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.a));
}

