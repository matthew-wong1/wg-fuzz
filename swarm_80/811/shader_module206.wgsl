struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-10262i, vec2<bool>(false, false), false, vec2<i32>(22480i, -46496i));

var<private> global1: array<Struct_1, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(~17196u, 1u | u_input.b.x), _wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(48731u, 1u), vec2<u32>(u_input.b.x, u_input.b.x) >> (u_input.b.xz % vec2<u32>(32u))))) << ((vec2<u32>(~1u, 0u) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_1 = Struct_3(~min(vec2<u32>(abs(var_0.x), u_input.b.x & 26590u), _wgslsmith_mult_vec2_u32(select(vec2<u32>(var_0.x, 1u), vec2<u32>(4294967295u, 40017u), global0.b), ~vec2<u32>(var_0.x, var_0.x))));
    var_1 = Struct_3(reverseBits(max(reverseBits(~vec2<u32>(13874u, 43874u)), u_input.b.xw)));
    global0 = global1[_wgslsmith_index_u32(u_input.b.x, 15u)];
    global0 = global1[_wgslsmith_index_u32(var_0.x, 15u)];
    return -904f;
}

fn func_2() -> Struct_2 {
    var var_0 = !(global0.b.x && all(vec3<bool>(false, global0.c, global0.b.x)));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(967f, -1044f, 417f) - vec3<f32>(-1162f, -1000f, -876f))), vec3<f32>(_wgslsmith_f_op_f32(func_3()), 2854f, -795f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(345f, -223f, 269f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-144f, -1013f, 1787f)))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), 660f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1511f, 1000f)), _wgslsmith_f_op_f32(ceil(-511f)))))));
    var var_2 = Struct_2(42158u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 0u), 15u)], vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1003f * _wgslsmith_f_op_f32(max(-443f, var_1.x))) + var_1.x), -752f), Struct_1(abs(~20156i), global0.b, global0.b.x, _wgslsmith_mod_vec2_i32(vec2<i32>(global0.a >> (u_input.b.x % 32u), -global0.a), ~global0.d)), global1[_wgslsmith_index_u32(~u_input.b.x, 15u)]);
    let var_3 = u_input.b.x << (u_input.b.x % 32u);
    var var_4 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(~var_2.e.a, abs(1i)), ~u_input.a.x ^ -34916i), -24139i, ~(~u_input.a.x), _wgslsmith_clamp_i32(-countOneBits(-1i), 0i, _wgslsmith_dot_vec2_i32(global0.d, abs(global0.d)))) >> (~u_input.b % vec4<u32>(32u));
    return Struct_2(~14088u, global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~(~4753u), 50882u), 15u)], var_2.c, var_2.b, Struct_1(u_input.a.x, !global0.b, true, ~_wgslsmith_add_vec2_i32(~vec2<i32>(var_2.b.d.x, var_2.d.a), vec2<i32>(u_input.a.x, -1i))));
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(min(var_0.c.x, -595f))) + func_2().c);
    let var_2 = vec4<u32>(u_input.b.x, 13741u, ~_wgslsmith_mod_u32(var_0.a, var_0.a << (0u % 32u)), 4294967295u);
    let var_3 = abs(85336u);
    let var_4 = select(~var_2, vec4<u32>(func_2().a, u_input.b.x, select(55231u, u_input.b.x & var_0.a, any(select(vec4<bool>(var_0.e.c, global0.c, true, true), vec4<bool>(global0.c, true, false, global0.c), vec4<bool>(false, true, global0.c, var_0.e.c)))), reverseBits(var_0.a)), !(!select(vec4<bool>(false, global0.c, global0.c, var_0.b.b.x), !vec4<bool>(global0.c, true, global0.b.x, global0.b.x), select(vec4<bool>(true, global0.b.x, false, global0.b.x), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, false), vec4<bool>(var_0.e.b.x, false, global0.b.x, true)))));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-224f, 820f, false)), _wgslsmith_f_op_f32(abs(443f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-375f, 143f), vec2<f32>(-431f, 774f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(396f, -759f))), global0.b))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(866f + 764f), _wgslsmith_f_op_f32(step(-182f, -782f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(266f, -1592f, 1351f), vec3<f32>(-472f, -2858f, -846f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-169f, -393f, 1276f), vec3<f32>(-1527f, 881f, -1541f))))), vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(func_2().c.x, _wgslsmith_f_op_f32(ceil(-726f)), 1u != u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(256f, 1060f)))), _wgslsmith_f_op_f32(-1f))));
    var var_2 = ~(~(~vec4<u32>(~1u, u_input.b.x, ~u_input.b.x, ~33408u)));
    let var_3 = any(vec4<bool>(global0.b.x, global0.b.x, global0.c, true)) && (var_1.x <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(vec2<f32>(var_1.x, 453f))))));
    global0 = global1[_wgslsmith_index_u32(101390u, 15u)];
    global1 = array<Struct_1, 15>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) * _wgslsmith_f_op_f32(-var_1.x)))) * var_1.x);
    let var_4 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(1000f + var_1.x)), u_input.a.x, -(~vec4<i32>(select(u_input.a.x, global0.d.x, true), global0.a, 1i, max(u_input.a.x, -1i))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-809f, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-187f, var_1.x, 370f, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 392f, var_1.x, 804f) + vec4<f32>(var_1.x, -598f, var_1.x, -505f)), !vec4<bool>(var_3, true, global0.c, global0.b.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-230f, var_1.x, -235f, var_1.x))) * vec4<f32>(951f, var_1.x, var_1.x, var_1.x)))))), var_1.x);
}

