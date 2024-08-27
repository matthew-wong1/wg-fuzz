struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(15361i, -15296i, 2371i, 1i, 55586i, 2147483647i, i32(-2147483648), 0i, i32(-2147483648), -31259i, -26068i, 0i, 51324i, 2147483647i, 0i, -3820i, 1i, 7509i, 2147483647i, -1i, 2147483647i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec4<u32> {
    let var_0 = -1048f;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, 2199f, var_0, var_0), vec4<f32>(var_0, var_0, var_0, var_0)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(936f, 295f, 530f, 917f), vec4<f32>(var_0, var_0, -731f, var_0), vec4<bool>(true, true, true, false))), true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1628f, -1186f, var_0, -1349f) + vec4<f32>(-1173f, 1853f, var_0, var_0))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-144f, -998f, var_0, var_0))), vec4<f32>(var_0, var_0, -1900f, 608f), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, 305f, var_0, var_0))))))));
    var var_2 = 4294967295u;
    let var_3 = Struct_5(select(true, true, false) != !any(vec4<bool>(true, true, true, true)), firstLeadingBit(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(-64641i, 53588i, u_input.e.x), vec3<i32>(-28602i, u_input.b, u_input.e.x)))), Struct_1(~(~u_input.c), var_1.xwx, ~_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, u_input.b, -18916i, -1i), vec4<i32>(global0[_wgslsmith_index_u32(58203u, 21u)], u_input.e.x, global0[_wgslsmith_index_u32(49230u, 21u)], -30214i) << (u_input.c % vec4<u32>(32u)))), true, false);
    let var_4 = 123f;
    return reverseBits(u_input.c);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(func_3(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-868f, -1395f, 1028f) * vec3<f32>(220f, -1000f, -1141f)) - vec3<f32>(399f, -1146f, -1120f)))), _wgslsmith_mod_vec4_i32(select(vec4<i32>(0i, -24861i, u_input.b, global0[_wgslsmith_index_u32(u_input.d.x << (u_input.d.x % 32u), 21u)]), vec4<i32>(u_input.b, abs(u_input.b), _wgslsmith_mult_i32(-1i, -56079i), _wgslsmith_mult_i32(u_input.b, 15775i)), false), _wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 21u)] ^ u_input.b, 2147483647i, 2147483647i, 2147483647i), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], 30831i, 1i, u_input.b)), ~vec4<i32>(0i, -16205i, u_input.b, global0[_wgslsmith_index_u32(u_input.a, 21u)]), ~vec4<i32>(-2147483647i, -2147483647i, u_input.b, 2147483647i)))));
    var var_1 = any(!vec2<bool>(all(vec3<bool>(false, false, false)) & true, false));
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(1i >> (_wgslsmith_div_u32(u_input.c.x, ~37179u) % 32u), _wgslsmith_mod_i32(-16911i, 41198i)), u_input.b, firstTrailingBit(~(-(u_input.e.x << (u_input.c.x % 32u)))));
    let var_3 = Struct_5(true, var_0.c.xzw, Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(var_0.b)))))), _wgslsmith_mult_vec4_i32(var_0.c, vec4<i32>(u_input.b, abs(var_0.c.x), var_2 >> (0u % 32u), -u_input.b))), true, !any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), any(vec3<bool>(true, true, false)))));
    var var_4 = -var_0.c;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_3.c.b.x)), _wgslsmith_f_op_f32(-var_3.c.b.x), true));
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(102f)), 522f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(507f, -1356f) * _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(608f - 1000f), _wgslsmith_f_op_f32(step(1138f, -1000f))))));
    var var_1 = u_input.d & ~(~vec3<u32>(4294967295u, countOneBits(1u), 12759u));
    var_1 = u_input.d;
    var_1 = u_input.d;
    var_1 = ~(select(vec3<u32>(var_1.x | var_1.x, ~u_input.d.x, abs(u_input.c.x)), reverseBits(~u_input.c.yww), all(vec4<bool>(true, false, false, false))) << (vec3<u32>(4294967295u, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), ~var_1.x) % vec3<u32>(32u)));
    return Struct_4(-(~(_wgslsmith_dot_vec3_i32(vec3<i32>(15381i, global0[_wgslsmith_index_u32(var_1.x, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), vec3<i32>(0i, global0[_wgslsmith_index_u32(10926u, 21u)], 42993i)) | firstTrailingBit(0i))), u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<i32, 21>();
    let var_1 = !select(false, true, !all(vec4<bool>(false, true, false, true)) | all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)));
    var var_2 = var_0.b;
    let var_3 = Struct_4(2880i, ~u_input.c.x);
    var var_4 = Struct_3(vec4<u32>(reverseBits(_wgslsmith_sub_u32(var_3.b & 0u, var_3.b)), func_3().x ^ _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.a), var_0.b), (_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) << (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u)) >> (1u % 32u), ~u_input.d.x), firstTrailingBit(~11700i));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.yy, u_input.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 1607f, -162f, 106f), vec4<f32>(809f, -879f, -980f, -1876f), vec4<bool>(var_1, false, var_1, var_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1024f, 1006f, -980f, 102f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 318f, -408f, 1000f) - vec4<f32>(-259f, 502f, 322f, -1463f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1555f, -1000f, -935f, -1591f) - vec4<f32>(598f, -281f, 2557f, 1894f)), !vec4<bool>(var_1, true, true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1881f, -1320f, 216f, 1191f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1189f, 924f) + vec2<f32>(-768f, 385f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-879f, -1278f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(314f - 804f), _wgslsmith_f_op_f32(step(-1000f, 2795f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(485f, -1000f) + vec2<f32>(-1138f, -522f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(166f, -196f))))));
}

