struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<u32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<f32>(295f, 223f, 513f, 345f), vec2<u32>(1u, 73596u)), Struct_1(vec4<f32>(-1000f, -307f, -101f, 179f), vec2<u32>(45314u, 44903u)), Struct_1(vec4<f32>(1166f, 1252f, 2063f, 1000f), vec2<u32>(1u, 13124u)), Struct_1(vec4<f32>(338f, -746f, -1916f, 688f), vec2<u32>(8163u, 60334u)), Struct_1(vec4<f32>(-1508f, 519f, 1211f, -651f), vec2<u32>(1u, 3249u)), Struct_1(vec4<f32>(-634f, 1139f, -341f, -314f), vec2<u32>(53467u, 54339u)), Struct_1(vec4<f32>(179f, 1277f, 1532f, -872f), vec2<u32>(504u, 0u)), Struct_1(vec4<f32>(1000f, -1441f, 567f, 2426f), vec2<u32>(52347u, 1u)), Struct_1(vec4<f32>(-315f, -537f, 274f, -1047f), vec2<u32>(30168u, 0u)), Struct_1(vec4<f32>(-351f, 127f, -190f, -1101f), vec2<u32>(50715u, 0u)), Struct_1(vec4<f32>(-1174f, 1042f, 263f, -1292f), vec2<u32>(67912u, 691u)), Struct_1(vec4<f32>(269f, 819f, 681f, 397f), vec2<u32>(29082u, 1u)), Struct_1(vec4<f32>(-122f, -2252f, 1000f, -693f), vec2<u32>(0u, 1u)));

var<private> global2: vec3<i32> = vec3<i32>(-21060i, -24941i, 19547i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<f32>) -> bool {
    global0 = vec4<u32>(u_input.a, global0.x, u_input.a, countOneBits(~4294967295u));
    let var_0 = countOneBits(-2147483647i);
    let var_1 = 1i;
    let var_2 = arg_2;
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(30553i, var_0, 1i) ^ ~var_0, 36794i, u_input.b.x, ~u_input.d) & vec4<i32>(u_input.d, ~(~u_input.b.x), (u_input.b.x >> (1167u % 32u)) ^ (2147483647i | var_1), 58751i), max(_wgslsmith_add_vec4_i32(select(-vec4<i32>(var_0, global2.x, var_1, -4993i), vec4<i32>(-35862i, -1i, var_0, global2.x), select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), false)), ~max(vec4<i32>(var_0, -2147483647i, global2.x, 41213i), vec4<i32>(var_0, var_0, global2.x, -41644i))), vec4<i32>(2147483647i, _wgslsmith_mod_i32(-1i, global2.x), -abs(var_0), _wgslsmith_mult_i32(abs(u_input.b.x), min(global2.x, var_0)))));
    return !(!select(arg_0, !arg_0, arg_2.x > 1055f));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = any(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), false)) | !(_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(u_input.a, global0.x)) != _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.a, arg_0.x), vec4<u32>(1u, 10558u, u_input.a, 68242u)), 4294967295u));
    global2 = ~(vec3<i32>(1i, max(-27725i, global2.x), abs(u_input.b.x)) << (select(global0.zwx, firstLeadingBit(arg_0 | vec3<u32>(93177u, 0u, 12693u)), vec3<bool>(all(vec3<bool>(true, false, true)), any(vec4<bool>(false, true, true, false)), u_input.d >= 0i)) % vec3<u32>(32u)));
    global0 = vec4<u32>(global0.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(~61323u, 1u, 44822u, reverseBits(6402u)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, global0.x, global0.x), vec4<u32>(u_input.a, 1288u, 0u, 29932u)), vec4<u32>(u_input.a, global0.x, 0u, u_input.c), vec4<bool>(true, true, true, true))), global0.x, countOneBits(~u_input.c));
    var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1134f)))) < _wgslsmith_f_op_f32(sign(442f)));
    let var_1 = vec2<i32>(1i, countOneBits(-2147483647i));
    return global0.x;
}

fn func_2() -> Struct_2 {
    global0 = vec4<u32>(u_input.a, _wgslsmith_div_u32(0u, _wgslsmith_div_u32(1u, ~global0.x) >> (countOneBits(func_3(global0.zxz)) % 32u)), global0.x, 1u);
    global1 = array<Struct_1, 13>();
    global0 = firstLeadingBit(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 25464u, 0u, 19543u) >> (vec4<u32>(global0.x, u_input.c, 53445u, 0u) % vec4<u32>(32u)), vec4<u32>(u_input.a, global0.x, 1u, 1u)), 1u, global0.x, abs(global0.x)));
    let var_0 = 2186f;
    global1 = array<Struct_1, 13>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1054f, -1000f, var_0) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, -2015f, 1747f, var_0)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-485f, var_0, -863f, var_0), vec4<f32>(var_0, var_0, 612f, var_0)) + vec4<f32>(var_0, var_0, var_0, -419f))), vec2<u32>(firstTrailingBit(u_input.a), ~_wgslsmith_dot_vec3_u32(global0.wyx, vec3<u32>(global0.x, u_input.c, 1u)))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 * -583f), _wgslsmith_f_op_f32(f32(-1f) * -1543f), 1189f))), global0.xw), vec3<bool>(true, func_1(true, 669f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 1549f, var_0)))), all(vec2<bool>(var_0 <= var_0, true))), Struct_1(vec4<f32>(1128f, var_0, var_0, _wgslsmith_f_op_f32(-var_0)), ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(59034u, 1u, u_input.a)), ~u_input.a)), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) * -1732f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0))) & func_1(true, var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1408f, var_0, var_0, -530f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(~min(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, u_input.a, 43053u, 36082u), vec4<u32>(u_input.a, 0u, 28087u, 50618u)), vec4<u32>(30251u, 0u, u_input.c, 32441u))));
    var var_0 = vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))) & select(true, true, all(vec2<bool>(true, true))), !all(vec3<bool>(true, func_1(false, -528f, vec4<f32>(-432f, -958f, -234f, 352f)), true)), global2.x == (i32(-1i) * -24245i));
    var var_1 = func_2();
    let var_2 = Struct_3(Struct_2(func_2().d, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(21135u, u_input.a, 0u), vec3<u32>(var_1.d.b.x, global0.x, 0u)), abs(global0.zwx), var_1.c), abs(reverseBits(global0.xyw))), 13u)], var_1.c, func_2().b, !var_0.x), 0i | (_wgslsmith_div_i32(-1i << (1u % 32u), min(1i, global2.x)) | -(~u_input.d)), ~(vec3<u32>(~30308u, _wgslsmith_sub_u32(global0.x, 4294967295u), u_input.c & 4294967295u) << (vec3<u32>(func_3(vec3<u32>(var_1.a.b.x, 1u, 64027u)), var_1.a.b.x, ~var_1.d.b.x) % vec3<u32>(32u))), Struct_2(func_2().a, func_2().b, !var_1.c, Struct_1(vec4<f32>(2079f, _wgslsmith_f_op_f32(-var_1.a.a.x), func_2().d.a.x, var_1.d.a.x), select(vec2<u32>(global0.x, global0.x) & vec2<u32>(u_input.c, 48630u), ~vec2<u32>(var_1.b.b.x, 40429u), vec2<bool>(var_0.x, true))), false), true || !var_0.x);
    var_1 = Struct_2(func_2().b, Struct_1(vec4<f32>(func_2().b.a.x, var_2.d.b.a.x, var_2.a.d.a.x, 792f), vec2<u32>(~_wgslsmith_mod_u32(16763u, global0.x), abs(var_2.d.d.b.x))), !func_2().c, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-917f - 963f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_2.d.b.a.x)), _wgslsmith_f_op_f32(-834f * _wgslsmith_f_op_f32(-422f + var_1.a.a.x)), var_2.a.a.a.x), ~min(vec2<u32>(49864u, 15564u), func_2().b.b)), any(vec2<bool>(false, all(vec3<bool>(true, true, var_1.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-463f, _wgslsmith_f_op_f32(floor(var_1.d.a.x))))), _wgslsmith_f_op_f32(var_2.d.d.a.x - _wgslsmith_f_op_f32(-844f + _wgslsmith_f_op_f32(step(2294f, 1154f)))), -189f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -911f)) + -850f)), min(vec4<i32>(i32(-1i) * -global2.x, var_2.b, countOneBits(abs(3303i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d, u_input.b.x, 24239i, -2113i), abs(vec4<i32>(var_2.b, var_2.b, 28309i, -1i)))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(4396i, 30519i, -818i, var_2.b), vec4<i32>(-1i, var_2.b, 0i, 2147483647i)) | (vec4<i32>(global2.x, var_2.b, -63040i, var_2.b) & vec4<i32>(global2.x, -2147483647i, 2147483647i, 1i)), vec4<i32>(-global2.x, ~0i, u_input.b.x, 2262i))), vec3<i32>(-(~_wgslsmith_clamp_i32(u_input.d, 2147483647i, var_2.b)), 2147483647i, max(-var_2.b, -global2.x)), vec4<i32>(global2.x, ~u_input.d, global2.x, ~_wgslsmith_add_i32(var_2.b, -2147483647i)) & ((abs(vec4<i32>(37468i, -1i, global2.x, -2147483647i)) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, var_2.b, 1i, -26585i), vec4<i32>(44043i, var_2.b, global2.x, 22857i))) | (~vec4<i32>(-6225i, 2147483647i, 5180i, u_input.d) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.b.x, -45731i, 27375i), vec4<i32>(-1i, 2147483647i, -26094i, 0i)))));
}

