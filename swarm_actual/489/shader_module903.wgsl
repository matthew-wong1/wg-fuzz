struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(0u, 37590u), vec2<u32>(0u, 1u), vec2<u32>(60159u, 1u), vec2<u32>(28009u, 1u), vec2<u32>(26431u, 17135u), vec2<u32>(37241u, 4294967295u), vec2<u32>(29730u, 6741u), vec2<u32>(21629u, 20606u), vec2<u32>(33194u, 70079u), vec2<u32>(25861u, 4294967295u), vec2<u32>(0u, 44953u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(30576u, 4294967295u), vec2<u32>(26321u, 928u), vec2<u32>(74317u, 52441u), vec2<u32>(48115u, 41268u), vec2<u32>(1u, 19673u), vec2<u32>(3975u, 1u), vec2<u32>(1u, 28891u), vec2<u32>(30084u, 50362u), vec2<u32>(9508u, 65494u), vec2<u32>(19533u, 84171u));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    let var_0 = abs(vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, -2147483647i), max(_wgslsmith_add_i32(_wgslsmith_add_i32(1i, u_input.b.x), _wgslsmith_div_i32(69017i, u_input.b.x)), 1i), 1i, -1i));
    global0 = array<vec2<u32>, 22>();
    return _wgslsmith_dot_vec3_i32(abs(select(var_0.yyx, ~u_input.b, all(vec4<bool>(true, false, false, true)))), vec3<i32>(var_0.x, 2147483647i, _wgslsmith_dot_vec3_i32(u_input.b, countOneBits(max(var_0.xyy, vec3<i32>(2147483647i, u_input.b.x, var_0.x))))));
}

fn func_2() -> Struct_1 {
    let var_0 = firstTrailingBit(vec2<i32>(-u_input.b.x, _wgslsmith_div_i32(func_3(), 1i)));
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 96297u, ~u_input.a.x), ~vec3<u32>(u_input.a.x & _wgslsmith_add_u32(u_input.a.x, 35946u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(77743u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], vec2<u32>(4294967295u, u_input.a.x)), firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a.x, 22u)])), 30032u), ~vec3<u32>(~select(u_input.a.x, 42854u, true), abs(~4294967295u), u_input.a.x));
    let var_2 = Struct_2(~firstTrailingBit(-vec4<i32>(var_0.x, 2147483647i, -1i, 0i)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, var_1.x, 0u), vec4<u32>(var_1.x, 1u, u_input.a.x, u_input.a.x)) ^ max(vec4<u32>(0u, 1u, 4294967295u, u_input.a.x), vec4<u32>(var_1.x, 51106u, u_input.a.x, 37746u)), vec4<u32>(~var_1.x, 4294967295u ^ u_input.a.x, _wgslsmith_sub_u32(var_1.x, 2808u), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-642f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 1041f), _wgslsmith_div_f32(-324f, 1991f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f) - _wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-345f * _wgslsmith_f_op_f32(select(467f, _wgslsmith_div_f32(-536f, 1000f), all(vec2<bool>(false, true))))) + 450f));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_2.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(682f, var_2.b.x, var_2.c, var_2.c) + var_2.b), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true))))));
    let var_4 = Struct_3(Struct_2(vec4<i32>(13066i, ~(var_0.x ^ -1i), i32(-1i) * -2147483647i, 1i), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b.x))), var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1586f)), 1f), _wgslsmith_f_op_f32(f32(-1f) * -497f)), var_2, var_2.b.yw, -((_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(2147483647i, -21958i)) ^ reverseBits(vec2<i32>(u_input.b.x, -4953i))) << (vec2<u32>(20093u, ~u_input.a.x) % vec2<u32>(32u))), Struct_1(~vec2<u32>(~1u, 19488u ^ u_input.a.x), !vec4<bool>(true, true, any(vec3<bool>(true, false, false)), select(false, false, false)), _wgslsmith_clamp_u32(~select(44313u, 5278u, true), ~0u, select(~var_1.x, firstTrailingBit(var_1.x), true)), vec2<i32>(2147483647i, (var_0.x ^ var_0.x) ^ -u_input.b.x)));
    return Struct_1(abs(vec2<u32>(~firstTrailingBit(0u), _wgslsmith_clamp_u32(~var_4.e.c, var_4.e.c, var_4.e.a.x))), var_4.e.b, var_4.e.c >> (_wgslsmith_div_u32(52883u, _wgslsmith_add_u32(_wgslsmith_add_u32(var_1.x, var_4.e.a.x), countOneBits(u_input.a.x))) % 32u), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 76162i, 2147483647i), vec3<i32>(-55100i, var_4.e.d.x, 11674i)), -countOneBits(var_4.a.a.zzx)), var_2.a.x));
}

fn func_1(arg_0: vec2<bool>) -> vec4<i32> {
    global0 = array<vec2<u32>, 22>();
    let var_0 = u_input.b.x;
    global0 = array<vec2<u32>, 22>();
    let var_1 = func_2();
    var var_2 = var_1.b.x;
    return ~_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(1i, var_1.d.x, 1i, 44582i), select(vec4<i32>(u_input.b.x, u_input.b.x, var_1.d.x, var_0), vec4<i32>(2147483647i, 2147483647i, var_0, 1i), vec4<bool>(true, false, var_1.b.x, var_1.b.x))), -vec4<i32>(-2537i, -12205i, -45044i, var_0)) | vec4<i32>(~2147483647i, u_input.b.x, ~1i, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-162f, _wgslsmith_f_op_f32(-2051f - -1068f), _wgslsmith_f_op_f32(f32(-1f) * -1250f), _wgslsmith_f_op_f32(f32(-1f) * -803f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1049f, -1612f, -1328f, 1912f), _wgslsmith_f_op_vec4_f32(vec4<f32>(387f, -1093f, 198f, -193f) - vec4<f32>(1226f, 640f, -1107f, 558f)))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(-1632f)), _wgslsmith_f_op_f32(floor(-472f)), _wgslsmith_div_f32(-562f, 1403f)))));
    global0 = array<vec2<u32>, 22>();
    let var_1 = Struct_2(reverseBits(func_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(var_0.x)))), var_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1661f))))));
    let var_2 = func_2();
    var var_3 = _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.a.x >> (1u % 32u), ~4294967295u), ~(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 6255u)) & u_input.a.yy)) | 2147u;
    var var_4 = -1000f;
    let var_5 = Struct_2(_wgslsmith_add_vec4_i32(min(vec4<i32>(-2147483647i, countOneBits(-6618i), 56245i, _wgslsmith_dot_vec4_i32(var_1.a, var_1.a)), var_1.a), vec4<i32>(_wgslsmith_div_i32(var_2.d.x, ~var_1.a.x), abs(u_input.b.x), -min(59175i, -1223i), 34818i)), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1251f * _wgslsmith_f_op_f32(-var_1.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -114f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(ceil(1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~u_input.a.x, select(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(var_2.c, 6087u)), var_2.c), firstTrailingBit(~var_2.c), _wgslsmith_f_op_f32(abs(var_5.b.x)) >= _wgslsmith_f_op_f32(-965f * 521f)), var_2.b.x && true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.c, 1665f, var_5.c) + var_1.b.wxx), vec3<f32>(-2237f, var_0.x, var_0.x))))))), var_5.a.zzx);
}

