struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(-1230f, -107f, -1239f, 1752f), vec2<u32>(11210u, 1u), 48354u);

var<private> global2: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(675f, 1247f, -322f, 174f), vec4<f32>(-118f, 1133f, 300f, 689f), vec4<f32>(-375f, -212f, 297f, 368f), vec4<f32>(-947f, -344f, 250f, -962f), vec4<f32>(-498f, -654f, -2550f, 271f), vec4<f32>(-904f, 1000f, 1951f, 447f), vec4<f32>(-623f, -284f, -646f, -586f), vec4<f32>(1381f, 1505f, 1000f, -1000f), vec4<f32>(1472f, -138f, -1549f, 102f), vec4<f32>(1645f, -329f, -844f, -303f), vec4<f32>(-874f, -1342f, 605f, 128f), vec4<f32>(1000f, 891f, 2207f, -735f), vec4<f32>(1217f, -751f, -1198f, -143f), vec4<f32>(403f, -677f, 916f, 1101f), vec4<f32>(-1000f, 895f, -1248f, 1136f), vec4<f32>(854f, 193f, 1694f, 541f), vec4<f32>(593f, -744f, 1712f, -530f), vec4<f32>(715f, 1292f, 590f, -242f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec2<i32> {
    global1 = Struct_2(global2[_wgslsmith_index_u32(0u, 18u)], ~global1.b, max(~(~4294967295u), global1.b.x));
    global0 = vec2<i32>(_wgslsmith_dot_vec4_i32(~(-reverseBits(vec4<i32>(0i, global0.x, global0.x, -1135i))), vec4<i32>(countOneBits(-28736i), -2960i, max(-2147483647i, 2147483647i) << (~u_input.a % 32u), global0.x)), 35163i);
    var var_0 = vec3<u32>(~0u, ~global1.c, 11162u);
    global0 = reverseBits(~(-vec2<i32>(25505i, 1i)) | -_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, 1i), ~vec2<i32>(global0.x, global0.x)));
    global0 = vec2<i32>(firstLeadingBit(global0.x), ~(~max(~(-55207i), -32576i)));
    return vec2<i32>(firstTrailingBit(~1i), abs(global0.x)) | (-(~vec2<i32>(global0.x, global0.x)) & vec2<i32>(global0.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(25397i, -2147483647i), vec2<i32>(-4799i, -2147483647i))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: bool) -> i32 {
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(17923i, _wgslsmith_dot_vec2_i32(func_3(), vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.zw, vec2<i32>(-15495i, -2147483647i)), i32(-1i) * -1i))), arg_0.zz | arg_0.wz);
    global2 = array<vec4<f32>, 18>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(global1.a.x, 827f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.a.x)) * global1.a.x))));
    var var_1 = global1.b.x >> (_wgslsmith_dot_vec4_u32(~((vec4<u32>(4294967295u, 1u, 58747u, 1u) ^ vec4<u32>(1u, 18630u, u_input.a, 4294967295u)) & ~vec4<u32>(0u, 0u, global1.c, global1.b.x)), vec4<u32>(min(min(9548u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, global1.c), vec3<u32>(u_input.a, global1.b.x, 40084u))), abs(~u_input.a), _wgslsmith_mod_u32(global1.b.x, countOneBits(global1.c)), _wgslsmith_div_u32(abs(global1.c), 31857u))) % 32u);
    var_1 = _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.c, u_input.a, 18642u, 0u) >> (vec4<u32>(global1.b.x, global1.b.x, global1.b.x, 4294967295u) % vec4<u32>(32u)), vec4<u32>(global1.c, u_input.a, 0u, 5751u) << (vec4<u32>(1u, 39213u, global1.c, 5311u) % vec4<u32>(32u))), ~vec4<u32>(u_input.a, global1.c, 4294967295u, global1.b.x)), vec4<u32>(global1.c, ~(~1u), 35197u, _wgslsmith_dot_vec3_u32(vec3<u32>(8449u, u_input.a, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.c, global1.c, global1.c), vec3<u32>(59059u, global1.c, 0u))))));
    return _wgslsmith_sub_i32(arg_0.x, arg_0.x);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> u32 {
    let var_0 = u_input.a;
    global2 = array<vec4<f32>, 18>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(-1063f)), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(min(global1.a.x, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1016f))), global1.a.zxy, select(true, false, arg_1.x)));
    global0 = -select(vec2<i32>(abs(_wgslsmith_div_i32(-2147483647i, global0.x)), func_2(vec4<i32>(global0.x, global0.x, 1i, 29002i) << (vec4<u32>(36104u, var_0, 29750u, 1u) % vec4<u32>(32u)), select(arg_1.zz, vec2<bool>(arg_1.x, arg_1.x), arg_1.x), arg_1.x)), vec2<i32>(-1i) * -(~vec2<i32>(global0.x, -2147483647i)), vec2<bool>(true, all(vec4<bool>(false, false, true, false))));
    var var_2 = 1f;
    return _wgslsmith_clamp_u32(_wgslsmith_mult_u32(countOneBits(_wgslsmith_mult_u32(_wgslsmith_mod_u32(37670u, 4294967295u), 39541u)), var_0), _wgslsmith_div_u32(abs(~_wgslsmith_mod_u32(4294967295u, var_0)), min(min(~19436u, 1u), ~(~var_0))), 19020u);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> f32 {
    let var_0 = vec3<bool>(!arg_0.c, false, !(arg_0.b.a.x == -903f));
    var var_1 = 1u;
    var var_2 = arg_0.d;
    var var_3 = 1u;
    var var_4 = _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a, 1u, ~abs(1u)), select(~_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.a, 1u, 1u, global1.c), ~vec4<u32>(arg_1, global1.c, global1.c, 31314u)), ~(~vec4<u32>(19344u, u_input.a, 110390u, 77351u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, arg_1, global1.c, 27247u), vec4<u32>(arg_0.b.c, 106057u, global1.b.x, 66694u), vec4<u32>(u_input.a, 4294967295u, global1.c, 2531u))), vec4<bool>(true, any(!vec2<bool>(true, arg_0.c)), !(arg_0.e.x >= var_2.x), global1.a.x < _wgslsmith_f_op_f32(-arg_0.b.a.x))));
    return 113f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~6544u, Struct_2(_wgslsmith_f_op_vec4_f32(select(global1.a, _wgslsmith_f_op_vec4_f32(step(global2[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_f_op_vec4_f32(select(global1.a, vec4<f32>(global1.a.x, 231f, global1.a.x, -1303f), true)))), vec4<bool>(true, any(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, true, false)), any(vec2<bool>(false, true))))), ~global1.b, ~4294967295u), !any(vec4<bool>(true, true, true, true)), max(_wgslsmith_mod_vec4_i32(-min(vec4<i32>(0i, global0.x, global0.x, global0.x), vec4<i32>(global0.x, global0.x, 26001i, -1i)), -firstTrailingBit(vec4<i32>(-25250i, 53256i, global0.x, 2147483647i))), select(vec4<i32>(~global0.x, 56717i, _wgslsmith_mod_i32(-1i, global0.x), _wgslsmith_clamp_i32(1i, -1i, 37581i)), vec4<i32>(~(-34281i), global0.x, _wgslsmith_mult_i32(global0.x, global0.x), _wgslsmith_div_i32(59503i, -24336i)), true)), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(select(vec2<i32>(-1i, -1i), vec2<i32>(1i, global0.x), vec2<bool>(false, false)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-16623i, 1i)), -vec2<i32>(global0.x, global0.x)), firstTrailingBit(~vec2<i32>(global0.x, global0.x) >> (global1.b % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(func_4(var_0, func_1(_wgslsmith_f_op_f32(trunc(global1.a.x)), select(!select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(true, var_0.c, true), var_0.c), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, var_0.c), vec3<bool>(false, var_0.c, true)), all(!vec4<bool>(var_0.c, var_0.c, false, false))))));
    let var_2 = 36859i;
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a.x)) + 1493f), _wgslsmith_f_op_f32(var_1 + global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(544f + _wgslsmith_f_op_f32(var_1 - -939f))) == var_1));
    let var_4 = Struct_3(global1.c, var_0.b, var_0.c, -(-vec4<i32>(var_2, -2147483647i, var_0.e.x, 8163i) & select(_wgslsmith_mult_vec4_i32(var_0.d, var_0.d), vec4<i32>(1i, -26221i, -23258i, var_2), vec4<bool>(var_0.c, false, false, var_0.c))), min(reverseBits(var_0.e), _wgslsmith_add_vec2_i32(var_0.e, ~_wgslsmith_mod_vec2_i32(var_0.e, var_0.e))));
    let var_5 = var_0;
    global0 = var_0.e;
    let var_6 = -1864f;
    global1 = var_5.b;
    let x = u_input.a;
    s_output = StorageBuffer(391f, _wgslsmith_f_op_f32(-var_4.b.a.x));
}

