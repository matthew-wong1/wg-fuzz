struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, false, true, false, true, false, false, false, true, true, false, false, true, false, false, true, false, false, true, true, true, false, false, false, false, true, false, false);

var<private> global1: array<bool, 10>;

var<private> global2: array<vec4<i32>, 19>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<i32> {
    global1 = array<bool, 10>();
    let var_0 = ~(-min(~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 4294967295u), 19u)], _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 40316i, u_input.a.x, u_input.b), global2[_wgslsmith_index_u32(u_input.c, 19u)]) ^ (vec4<i32>(u_input.a.x, u_input.b, 0i, u_input.a.x) ^ vec4<i32>(u_input.a.x, u_input.a.x, -1i, 1i))));
    let var_1 = Struct_3(~var_0.yww, Struct_1(select(select(select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 10u)]), vec3<bool>(global1[_wgslsmith_index_u32(12656u, 10u)], false, global1[_wgslsmith_index_u32(u_input.c, 10u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 10u)], global1[_wgslsmith_index_u32(35309u, 10u)])), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 10u)], global0[_wgslsmith_index_u32(6160u, 28u)], global1[_wgslsmith_index_u32(0u, 10u)]), select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.c, 10u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 28u)], true, global1[_wgslsmith_index_u32(0u, 10u)]), global1[_wgslsmith_index_u32(u_input.c, 10u)])), vec3<bool>(true, true, true), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 10u)], true, true), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 28u)], true, false), global0[_wgslsmith_index_u32(u_input.c, 28u)])), global1[_wgslsmith_index_u32(u_input.c, 10u)], _wgslsmith_sub_u32(u_input.c, firstTrailingBit(1u)) << (firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(26705u, 77923u, 0u), vec3<u32>(1u, u_input.c, 4294967295u))) % 32u), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -17511i, 1i), vec3<i32>(2147483647i, u_input.a.x, var_0.x), vec3<i32>(u_input.a.x, var_0.x, var_0.x)) ^ max(u_input.a, u_input.a), var_0.zxx & _wgslsmith_mult_vec3_i32(vec3<i32>(8483i, var_0.x, 12818i), var_0.wyw), !all(vec4<bool>(global1[_wgslsmith_index_u32(6399u, 10u)], global0[_wgslsmith_index_u32(u_input.c, 28u)], global1[_wgslsmith_index_u32(10268u, 10u)], global1[_wgslsmith_index_u32(u_input.c, 10u)]))), ~2147483647i), ~(~1u), false);
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    return ~var_0.zy;
}

fn func_2() -> Struct_2 {
    global0 = array<bool, 28>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-114f + -349f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(308f * 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -837f) * -281f) - _wgslsmith_f_op_f32(sign(1000f))), true)));
    global2 = array<vec4<i32>, 19>();
    global1 = array<bool, 10>();
    var var_1 = Struct_4(Struct_2(~94299u, _wgslsmith_sub_vec2_i32(~vec2<i32>(30015i, u_input.b) ^ -vec2<i32>(1890i, u_input.b), func_3()), -max(func_3().x, u_input.b), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(66399u, 1u, 4448u, 64209u), vec4<u32>(26570u, u_input.c, 42968u, u_input.c)), vec4<u32>(u_input.c, countOneBits(10001u), min(u_input.c, u_input.c), u_input.c), vec4<u32>(~19926u, u_input.c, 64409u, abs(u_input.c))), Struct_1(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 28u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(73248u, 28u)], global0[_wgslsmith_index_u32(u_input.c, 28u)]), true), false, _wgslsmith_sub_u32(u_input.c, countOneBits(u_input.c)), ~(vec3<i32>(39854i, u_input.a.x, u_input.b) << (vec3<u32>(u_input.c, 1u, u_input.c) % vec3<u32>(32u))), select(_wgslsmith_mod_i32(-23283i, -14250i), max(u_input.a.x, u_input.b), all(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 28u)]))))));
    return Struct_2(_wgslsmith_dot_vec3_u32(~((vec3<u32>(var_1.a.a, 27501u, u_input.c) >> (vec3<u32>(var_1.a.a, 0u, u_input.c) % vec3<u32>(32u))) >> (abs(var_1.a.d.zwy) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(var_1.a.d.yyx, var_1.a.d.wxy), select(vec3<u32>(4294967295u, u_input.c, 93803u), var_1.a.d.yyz, global1[_wgslsmith_index_u32(~0u, 10u)]))), u_input.a.zz, ~firstTrailingBit(-u_input.b) | 0i, var_1.a.d << (var_1.a.d % vec4<u32>(32u)), var_1.a.e);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<bool>, arg_3: i32) -> f32 {
    var var_0 = func_2();
    global0 = array<bool, 28>();
    let var_1 = vec4<i32>(2147483647i, -17725i, -abs(var_0.b.x ^ -2147483647i), firstLeadingBit(arg_3 << (1u % 32u)));
    global2 = array<vec4<i32>, 19>();
    var var_2 = 16291u;
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~u_input.c, -u_input.a.x, vec4<bool>(global0[_wgslsmith_index_u32(4114u, 28u)], true, global1[_wgslsmith_index_u32(33731u, 10u)], global0[_wgslsmith_index_u32(u_input.c, 28u)]), u_input.b | u_input.a.x)) + _wgslsmith_f_op_f32(-1703f - -544f)), -1093f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -951f)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-980f - -634f), _wgslsmith_f_op_f32(trunc(1673f)), -1264f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1460f), _wgslsmith_f_op_f32(f32(-1f) * -569f), _wgslsmith_f_op_f32(-1285f * 853f)))));
    var var_1 = ~(vec3<u32>(func_2().a, ~(~1u), firstTrailingBit(u_input.c)) ^ vec3<u32>(_wgslsmith_div_u32(~1u, ~2566u), _wgslsmith_div_u32(u_input.c, 54458u >> (u_input.c % 32u)), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(min(max(vec2<u32>(1u, 1u), min(~vec2<u32>(u_input.c, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(35143u, var_1.x), vec2<u32>(u_input.c, 22593u), vec2<u32>(0u, 48123u)))), var_1.xz), firstLeadingBit(_wgslsmith_mult_vec3_i32(reverseBits(u_input.a), u_input.a)) >> (~_wgslsmith_add_vec3_u32(~vec3<u32>(13674u, 1u, var_1.x), vec3<u32>(var_1.x, 30761u, 42542u) << (vec3<u32>(var_1.x, var_1.x, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_1.x), 19u)], countOneBits(~8675u) & (firstTrailingBit(_wgslsmith_clamp_u32(1u, u_input.c, var_1.x)) ^ (~u_input.c & func_2().e.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(371f - _wgslsmith_f_op_f32(-1054f - 143f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(var_0.zz, var_0.xx)))));
}

