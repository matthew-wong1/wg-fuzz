struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-30660i, 1i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> f32 {
    let var_0 = max(u_input.a.x, ~(~(~u_input.a.x) << (4294967295u % 32u)));
    global0 = countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, abs(~global0.x)), vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global0.x), vec2<i32>(arg_1, -1i)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, global0.x), vec2<i32>(arg_1, -29788i) | vec2<i32>(arg_1, -3624i), vec2<i32>(global0.x, -2147483647i))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.c * 1237f), _wgslsmith_f_op_f32(-arg_0.d.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.b.x - 1064f))))), arg_0.c.x);
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(min(10513u, var_0), 1u ^ var_0, _wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.yx), u_input.a.x), ~(vec4<u32>(var_0, 4294967295u, 4294967295u, 1u) ^ vec4<u32>(86485u, u_input.a.x, var_0, u_input.a.x))) ^ ~vec4<u32>(min(var_0, u_input.a.x), select(u_input.a.x, 1u, arg_0.d.d), ~var_0, u_input.a.x), min(~(~max(vec4<u32>(var_0, 27556u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, var_0, 71925u, u_input.a.x))), ~min(~vec4<u32>(57491u, 0u, 1u, 8409u), _wgslsmith_mult_vec4_u32(vec4<u32>(13173u, u_input.a.x, 12183u, 4294967295u), vec4<u32>(var_0, u_input.a.x, var_0, u_input.a.x)))));
    var_2 = min(u_input.a.x, (_wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x) & (u_input.a.x | var_0)) ^ u_input.a.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(961f, -1038f, -1286f)))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-439f, 1064f, 259f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1607f, 740f, -883f))) - _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -268f, -1759f), _wgslsmith_div_vec3_f32(vec3<f32>(462f, -205f, 1768f), vec3<f32>(-1000f, 1395f, 520f)))))));
    global0 = vec2<i32>(~10916i, firstTrailingBit(23840i) & _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x << (u_input.a.x % 32u), 1305i), vec2<i32>(global0.x, ~global0.x)));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1072f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 854f, _wgslsmith_f_op_f32(min(var_0.x, -192f)))))));
    global0 = vec2<i32>(global0.x, 28615i);
    let var_1 = _wgslsmith_f_op_f32(func_2(Struct_2(vec4<bool>(!any(vec3<bool>(true, true, true)), true, true, true), Struct_1(226f >= _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1091f, var_0.x, var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, var_0.x, var_0.x)))), Struct_1((var_0.x == var_0.x) != all(vec4<bool>(true, false, false, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1788f, var_0.x, var_0.x, 1020f), vec4<f32>(-929f, var_0.x, var_0.x, -237f), true))), -911f, true)), -2147483647i, true));
    return vec4<bool>(any(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, false, any(vec4<bool>(true, true, true, true)), true), true)), !any(vec4<bool>(true, true, true, true)) | true, false, true);
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = -668f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2742f);
    var var_1 = true;
    var var_2 = ~_wgslsmith_mod_u32(67134u, ~(~u_input.a.x)) >= abs(countOneBits(63214u));
    var_2 = (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -856f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(vec4<bool>(false, false, true, false), Struct_1(true, vec4<f32>(330f, 418f, 514f, 204f), -330f, false), vec3<f32>(-1060f, -1583f, 344f), Struct_1(true, vec4<f32>(768f, -1326f, 885f, 471f), -499f, true)), 0i, true))), -1249f)) == true;
    return Struct_2(!func_3(), Struct_1(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -338f, -492f, -371f))), _wgslsmith_div_f32(676f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2275f - -1621f), _wgslsmith_f_op_f32(-1224f - 651f)))), (true != any(vec4<bool>(false, false, false, false))) & true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1203f, 1000f, 2186f))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-353f, 1376f, 398f)))) * vec3<f32>(-826f, 1133f, -532f))), Struct_1(any(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1363f, -1051f, 1042f, -694f), vec4<f32>(878f, -472f, 1005f, -832f))) + vec4<f32>(1335f, 270f, -402f, 980f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-364f, 154f, 1526f, 296f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(368f, 2153f, 511f, -215f))))), -1371f, true));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global0 = firstTrailingBit(~vec2<i32>(-_wgslsmith_mod_i32(global0.x, 1i), -1i));
    global0 = vec2<i32>(global0.x, 7944i);
    let var_0 = Struct_1(!(_wgslsmith_mod_i32(-2453i, reverseBits(global0.x)) < -2147483647i), vec4<f32>(500f, -354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1469f)), 736f), arg_0.b.c, select(!(!all(arg_0.a.zx)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(arg_0.c.x + arg_0.b.c)) < arg_0.d.b.x, !all(vec3<bool>(true, false, true))));
    let var_1 = vec4<bool>(true, !(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, 0u), abs(83516u)) < ~u_input.a.x), arg_0.b.a, global0.x <= 6615i);
    global0 = firstLeadingBit(abs(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-6577i, global0.x)), ~vec2<i32>(1i, 14894i), vec2<i32>(global0.x, 0i)), -vec2<i32>(global0.x, 0i) ^ -vec2<i32>(-16481i, global0.x))));
    return Struct_1(!(!(!any(vec4<bool>(true, var_0.a, true, false)))), var_0.b, 1258f, var_1.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(-17430i, 25506i), abs(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(12909i, global0.x), vec2<i32>(global0.x, 0i)), abs(-1i)) | vec2<i32>(_wgslsmith_mod_i32(1i, global0.x), -1i)));
    let var_1 = vec4<u32>(min(0u, max(~_wgslsmith_sub_u32(10339u, u_input.a.x), u_input.a.x)), 0u, firstLeadingBit(max(4294967295u, ~u_input.a.x)), u_input.a.x);
    let var_2 = firstLeadingBit(countOneBits(_wgslsmith_clamp_i32(var_0.x, 2147483647i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0.x, var_0.x, 2147483647i), _wgslsmith_mod_i32(-2147483647i, global0.x)))));
    global0 = abs(countOneBits(firstLeadingBit(countOneBits(vec2<i32>(global0.x, global0.x)))));
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(83460i, var_2, var_2, 0i), vec4<i32>(var_2, 10667i, var_2, -104031i)), min(vec4<i32>(var_0.x, 7289i, -24622i, global0.x), vec4<i32>(global0.x, var_0.x, var_0.x, -14409i))), var_2, _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, global0.x, global0.x, global0.x), -vec4<i32>(var_2, 40998i, -35099i, 1284i))), 10404i), vec2<i32>(var_2, var_2));
    return func_1(~_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, -51519i, var_0.x), vec3<i32>(var_3.x, var_2, -2147483647i))), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.x, global0.x, 1i), vec3<i32>(-47071i, var_3.x, 6641i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(~global0.x)), func_1(global0.x));
    let var_1 = var_0.d;
    var var_2 = func_5(var_0.d, var_0).b;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(307f, _wgslsmith_f_op_f32(ceil(var_1.c)))))));
    let var_4 = Struct_2(!vec4<bool>(true, var_0.a.x == true, all(var_0.a.yz), var_0.a.x), func_5(Struct_1(false, func_1(global0.x).b.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, 251f) - _wgslsmith_f_op_f32(-var_3)), -1414f <= func_5(var_1, var_0).d.c), var_0).d, _wgslsmith_f_op_vec3_f32(-var_0.d.b.zzz), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(34204i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_1(-1i).b.b.wwz))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), firstLeadingBit(select(vec3<u32>(1u, 56251u, u_input.a.x), vec3<u32>(1u, u_input.a.x, 1u), var_0.a.xyz))), u_input.a.x << (_wgslsmith_sub_u32(~u_input.a.x, abs(u_input.a.x)) % 32u)));
}

