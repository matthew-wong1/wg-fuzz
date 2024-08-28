struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = reverseBits(countOneBits(u_input.b << (vec4<u32>(u_input.d << (u_input.d % 32u), abs(u_input.a), _wgslsmith_add_u32(21005u, 105987u), 20257u << (u_input.c.x % 32u)) % vec4<u32>(32u))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f) * 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -681f) * 1476f)))));
    var var_2 = ~18885u;
    var_1 = Struct_2(var_1.a, -738f);
    let var_3 = Struct_5(53131u >> (abs(0u) % 32u), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true))), u_input.b.x);
    return ~_wgslsmith_mod_u32(~abs(min(var_0.x, 0u)), u_input.d);
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1037f) - _wgslsmith_f_op_f32(f32(-1f) * -361f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -367f), _wgslsmith_div_f32(155f, 304f)) + _wgslsmith_f_op_f32(f32(-1f) * -1004f))), _wgslsmith_f_op_f32(step(377f, -127f)));
    let var_1 = vec2<i32>(u_input.e, u_input.e);
    global0 = _wgslsmith_dot_vec4_u32(~abs(_wgslsmith_sub_vec4_u32(u_input.b | vec4<u32>(12988u, u_input.c.x, u_input.a, u_input.b.x), vec4<u32>(u_input.b.x, 18720u, u_input.c.x, 1u))), u_input.b);
    let var_2 = Struct_1(!(select(2147483647i, -u_input.e, false) > firstLeadingBit(_wgslsmith_mult_i32(var_1.x, 28950i))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.c & vec3<u32>(u_input.a, u_input.d, u_input.a), u_input.c), 4294967295u) ^ (func_3() ^ u_input.c.x), var_1, -u_input.e, firstTrailingBit(u_input.c.zz));
    return min(vec4<i32>(~(-1i), -_wgslsmith_add_i32(u_input.e, var_1.x) ^ 5548i, _wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(var_2.c.x >> (var_2.e.x % 32u), -1i)), var_2.c.x), ~vec4<i32>(~var_1.x ^ u_input.e, min(u_input.e, firstLeadingBit(var_1.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(9385i, var_1.x, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_1.x, u_input.e), vec3<i32>(u_input.e, 1i, 1i))), -2147483647i));
}

fn func_1() -> bool {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(291f)))));
    global1 = array<vec3<bool>, 24>();
    let var_2 = vec2<bool>(false, true);
    var var_3 = ~(~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 30306u, u_input.a, u_input.a), ~vec4<u32>(9378u, u_input.b.x, 40390u, 0u)) << (vec4<u32>(~u_input.b.x, u_input.b.x, 16468u, select(u_input.a, 1u, var_2.x)) % vec4<u32>(32u))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 24>();
    global1 = array<vec3<bool>, 24>();
    let var_0 = vec4<bool>(any(vec3<bool>(all(vec2<bool>(true, false)), true, true)), !(!(!func_1())), !((any(vec3<bool>(true, false, false)) || (-2147483647i < u_input.e)) || any(vec3<bool>(false, false, false))), false);
    var var_1 = any(select(select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(max(u_input.b.x, u_input.b.x), 1u), 24u)], select(!vec3<bool>(true, var_0.x, true), var_0.xzz, global1[_wgslsmith_index_u32(min(u_input.c.x, 0u), 24u)]), !var_0.yyw), select(vec3<bool>(all(var_0.zx), func_1(), false), var_0.zxx, select(true, true, var_0.x)), var_0.zwy));
    global1 = array<vec3<bool>, 24>();
    var var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-664f, 541f, -639f, -611f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(380f, -883f, -1234f, -1388f), vec4<f32>(1020f, 1479f, 409f, -334f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1871f, 1820f, 1092f, -1000f), vec4<f32>(660f, 2170f, -1064f, -1272f), var_0.x)), vec4<f32>(893f, 868f, 463f, -369f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -300f, -599f, 243f))), vec4<f32>(515f, -443f, 729f, -234f)), vec4<bool>(var_0.x, var_0.x, !var_0.x, var_0.x))))));
}

