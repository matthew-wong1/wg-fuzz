struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 3>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>) -> vec2<f32> {
    var var_0 = 71165u;
    global0 = Struct_1(-3706i, _wgslsmith_add_vec2_u32(reverseBits(~(global0.b ^ vec2<u32>(arg_0.x, u_input.a.x))), ~u_input.a.yy), ~select(_wgslsmith_clamp_vec2_i32(global0.c | vec2<i32>(global0.a, global0.c.x), -vec2<i32>(global0.d, -51582i), abs(global0.c)), (vec2<i32>(global0.c.x, global0.a) & global0.c) << (_wgslsmith_add_vec2_u32(global0.b, arg_0.zx) % vec2<u32>(32u)), global0.e), 2147483647i, global0.e);
    var_0 = 69614u;
    var var_1 = Struct_4(_wgslsmith_sub_i32(2147483647i, global0.d), Struct_1(global0.a >> (~abs(71341u) % 32u), vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, ~arg_0.x), 3u)], ~(~global1[_wgslsmith_index_u32(5676u, 3u)])), global0.c, global0.c.x, true), 1f, all(select(select(select(vec3<bool>(global0.e, true, global0.e), vec3<bool>(true, false, false), vec3<bool>(global0.e, false, global0.e)), !vec3<bool>(true, false, global0.e), !vec3<bool>(false, global0.e, true)), select(vec3<bool>(false, global0.e, global0.e), vec3<bool>(false, true, false), global0.e), false)), Struct_2(_wgslsmith_div_i32(global0.c.x, global0.a), false, 4294967295u));
    let var_2 = Struct_2(global0.a, false, ~u_input.a.x ^ var_1.b.b.x);
    return vec2<f32>(-1000f, -1179f);
}

fn func_2() -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1352f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(1u, 0u, 1u))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1605f, 139f) + vec2<f32>(1000f, -1269f)))), ~(~firstLeadingBit(~vec4<u32>(21649u, 64277u, global0.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]))), vec4<bool>(all(select(select(vec3<bool>(global0.e, false, global0.e), vec3<bool>(false, global0.e, true), true), vec3<bool>(global0.e, false, false), !vec3<bool>(global0.e, global0.e, global0.e))), global0.e, true, false));
    var var_1 = var_0.b.x;
    var var_2 = ~_wgslsmith_add_u32(1u, 7104u);
    global1 = array<u32, 3>();
    var var_3 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-(~0i), ~(~(-1i)), -reverseBits(1i), -abs(global0.a)), vec4<i32>(firstTrailingBit(1i), ~_wgslsmith_mod_i32(global0.c.x, global0.d), global0.a, 1i)), true, 48948u);
    return 2526u;
}

fn func_1() -> vec3<i32> {
    var var_0 = -_wgslsmith_mult_i32(global0.c.x, firstTrailingBit(~global0.c.x));
    var var_1 = u_input.a;
    let var_2 = vec3<u32>(1u, 1u, max(firstTrailingBit(func_2()), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(12639u & u_input.a.x, var_1.x), 3u)], 3u)]));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1269f, _wgslsmith_f_op_f32(f32(-1f) * -1482f)))) + _wgslsmith_f_op_f32(floor(-630f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -944f) * 1271f));
    var var_4 = -countOneBits(max(abs(vec4<i32>(global0.c.x, 2147483647i, 0i, 33297i)), vec4<i32>(firstLeadingBit(global0.c.x), min(-29057i, global0.c.x), global0.a, -1i)));
    return var_4.xxx;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: i32) -> i32 {
    var var_0 = Struct_4(max(~max(7925i | global0.c.x, arg_2), arg_1.x), Struct_1(~(-22971i), _wgslsmith_sub_vec2_u32(u_input.a.yz, ~abs(u_input.a.zz)), select(countOneBits(arg_1.yy), vec2<i32>(-18623i, -arg_1.x), !(!vec2<bool>(global0.e, false))), -27581i, arg_1.x > _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 1i, arg_2, 249i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, arg_2, arg_2, global0.c.x), vec4<i32>(-23094i, -29081i, -31350i, -1i)))), arg_0, all(!vec3<bool>(select(global0.e, true, global0.e), select(true, false, false), global0.e)), Struct_2(abs(0i), global0.e, 31797u));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + 1634f))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, _wgslsmith_f_op_f32(var_0.c + var_0.c))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 276f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1319f) * vec2<f32>(var_0.c, -193f))))));
    let var_2 = 2147483647i;
    var var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1150f, 1001f, arg_0), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, var_0.c)))));
    var var_4 = Struct_4(1i, Struct_1(40285i, ~var_0.b.b, _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(41790i, var_0.a), firstLeadingBit(global0.c)), vec2<i32>(20387i >> (0u % 32u), _wgslsmith_sub_i32(var_2, var_0.e.a))), arg_2, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), any(vec2<bool>(select(true, true, !var_0.d), global0.e)), Struct_2(global0.d, !(_wgslsmith_div_u32(var_0.b.b.x, 4294967295u) > ~14739u), 1u));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_u32(~(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)], 0u, 5141u, 1387u) & firstLeadingBit(vec4<u32>(global0.b.x, 4294967295u, global1[_wgslsmith_index_u32(30782u, 3u)], 10935u))), min(select(firstTrailingBit(vec4<u32>(global0.b.x, 1803u, 0u, u_input.a.x)), vec4<u32>(global0.b.x, u_input.a.x, global1[_wgslsmith_index_u32(40304u, 3u)], 58050u), global0.e), ~firstTrailingBit(vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1900u, 3u)], 3u)], 73247u, global0.b.x)))) < min(35033u, ~u_input.a.x);
    var var_1 = vec4<f32>(569f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1376f) * _wgslsmith_f_op_f32(1000f + 542f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1534f + _wgslsmith_div_f32(-1026f, 1109f)) * 458f)), _wgslsmith_f_op_f32(sign(-364f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1387f, -728f))))));
    let var_2 = var_0;
    var var_3 = Struct_4(_wgslsmith_div_i32(abs(_wgslsmith_dot_vec3_i32(select(vec3<i32>(global0.c.x, -11247i, 1i), vec3<i32>(global0.c.x, global0.d, global0.a), vec3<bool>(true, true, false)), vec3<i32>(global0.d, global0.c.x, -54470i) >> (vec3<u32>(global0.b.x, 4294967295u, 1u) % vec3<u32>(32u)))), _wgslsmith_dot_vec3_i32((vec3<i32>(global0.a, global0.d, 2147483647i) | vec3<i32>(global0.a, 8633i, global0.c.x)) & reverseBits(vec3<i32>(global0.d, global0.c.x, global0.c.x)), -vec3<i32>(global0.d, 34913i, global0.c.x) | countOneBits(vec3<i32>(global0.d, global0.a, 17548i)))), Struct_1(18301i, global0.b, vec2<i32>(-1i, ~(-1i)), global0.a, false), 1f, global0.e, Struct_2(func_4(1f, -vec3<i32>(global0.a, 40709i, global0.c.x) & func_1(), global0.c.x), true, 0u));
    var var_4 = false;
    let var_5 = ~(~_wgslsmith_clamp_u32(4294967295u, 78273u, ~1u));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c, 442f, var_1.x, 872f) - vec4<f32>(-449f, var_1.x, -1494f, var_3.c)), vec4<f32>(var_1.x, var_3.c, var_3.c, 949f)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1394f, 283f, var_3.c, 383f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1115f, var_3.c, var_3.c, var_3.c) * vec4<f32>(-1000f, -1920f, var_1.x, 1751f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-193f + var_1.x) * var_1.x), _wgslsmith_f_op_f32(1000f * var_3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(4294967295u, ~u_input.a.x, var_5 << (~1u % 32u))), var_5);
}

