struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec3<f32> {
    let var_0 = countOneBits(2147483647i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1317f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0, -1617f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_f32(trunc(arg_0))))));
    let var_2 = u_input.a;
    let var_3 = ~(~(~firstTrailingBit(vec4<u32>(54029u, 0u, 30584u, 4294967295u)) | select(vec4<u32>(1u, 50128u, u_input.c.x, u_input.b), ~vec4<u32>(u_input.b, 63166u, 1u, u_input.b), vec4<bool>(true, true, true, true))));
    let var_4 = max(u_input.b, 17838u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-277f, var_1, var_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, var_1) * vec3<f32>(var_1, arg_0, arg_0))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-400f, _wgslsmith_f_op_f32(step(var_1, var_1)), _wgslsmith_f_op_f32(-538f * arg_0)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, arg_0, -1225f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-162f, arg_0, -437f) + vec3<f32>(292f, var_1, arg_0)))))));
}

fn func_2(arg_0: vec2<f32>) -> vec3<i32> {
    let var_0 = -13766i >= u_input.e.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(arg_0.x, -1i)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), u_input.e.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(545f, 315f, arg_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1598f, arg_0.x, arg_0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-956f, -1434f, arg_0.x)))))));
    let var_2 = !select(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, var_0, var_0, true))), select(!vec4<bool>(true, var_0, var_0, var_0), !vec4<bool>(var_0, var_0, var_0, false), !var_0), !(!select(vec4<bool>(true, true, var_0, true), vec4<bool>(true, true, true, true), var_0)));
    var var_3 = select(!var_2.yz, vec2<bool>(select(true, true, true), any(select(select(vec2<bool>(false, var_0), var_2.ww, vec2<bool>(true, true)), var_2.xw, select(var_2.yx, vec2<bool>(var_0, true), var_2.x)))), false);
    var_3 = var_2.xw;
    return vec3<i32>(-37847i, -2015i, u_input.e.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(1i, ~_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(52888i, -1i, -14975i, arg_0.x), vec4<i32>(arg_0.x, 2989i, 3225i, 3125i))), firstTrailingBit(arg_0.x));
    let var_1 = u_input.a.yzw;
    let var_2 = _wgslsmith_mod_i32(firstLeadingBit(var_1.x), _wgslsmith_dot_vec3_i32(var_1, firstLeadingBit(_wgslsmith_mult_vec3_i32(func_2(arg_1.a.zx), select(var_0, vec3<i32>(-34054i, var_0.x, 1i), true)))));
    let var_3 = min(u_input.d, u_input.d << (vec2<u32>(1u, ~1u) % vec2<u32>(32u)));
    let var_4 = arg_1.a;
    return arg_1;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(arg_2.a.x, 1397f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(2041f)))), 1964f));
    var_0 = vec3<f32>(-1520f, 255f, arg_0.c.a.x);
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.x, _wgslsmith_f_op_f32(-arg_2.a.x)) * -326f), _wgslsmith_div_f32(448f, _wgslsmith_f_op_f32(-arg_2.a.x)), 984f), _wgslsmith_f_op_vec3_f32(floor(arg_2.a)));
    var_0 = vec3<f32>(2667f, -1085f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.a.x, -1875f, 267f, var_0.x), vec4<f32>(-1000f, arg_2.a.x, arg_2.a.x, var_0.x)))))))));
    return func_1(vec4<i32>(~_wgslsmith_sub_i32(~u_input.a.x, -25286i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-25616i, 13524i, 2147483647i)), ~(-u_input.a.zzx)), i32(-1i) * -_wgslsmith_sub_i32(1i, u_input.a.x), 24503i), Struct_1(arg_2.a, true));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = func_1(u_input.a, Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-774f * -504f), _wgslsmith_f_op_f32(select(arg_2, -608f, false))), false));
    var_0 = arg_3;
    let var_1 = !(!select(select(select(vec3<bool>(false, arg_3.b, arg_0.a), vec3<bool>(var_0.b, arg_3.b, var_0.b), true), vec3<bool>(arg_3.b, arg_3.b, false), true), vec3<bool>(true, true && arg_3.b, u_input.a.x >= 2147483647i), !(u_input.a.x == -2147483647i)));
    let var_2 = ~u_input.a.wy;
    var_0 = func_1(vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -1i, var_2.x), -45635i, max(select(-u_input.e.x, -5055i, var_1.x), 0i), firstTrailingBit(max(max(-13865i, 21318i), ~var_2.x))), arg_0.e);
    return _wgslsmith_f_op_vec3_f32(arg_0.c.a + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_3.a.x, -1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, _wgslsmith_f_op_f32(-arg_0.e.a.x), _wgslsmith_f_op_f32(arg_0.e.a.x + arg_3.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_5(Struct_3(!all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1068f, 653f)))), func_4(Struct_3(true, -234f, Struct_1(vec3<f32>(547f, 940f, 584f), false), ~4294967295u, Struct_1(vec3<f32>(-633f, 805f, 320f), true)), ~(u_input.c.zz << (u_input.d % vec2<u32>(32u))), func_1(-vec4<i32>(-2147483647i, 11980i, 0i, 46474i), Struct_1(vec3<f32>(1532f, 263f, -725f), false))), u_input.d.x, func_4(Struct_3(true, -1017f, func_1(u_input.a, Struct_1(vec3<f32>(-1934f, 134f, 1891f), true)), 4294967295u, func_4(Struct_3(false, -1185f, Struct_1(vec3<f32>(-1000f, -121f, -1306f), false), u_input.c.x, Struct_1(vec3<f32>(628f, 184f, 1000f), false)), u_input.d, Struct_1(vec3<f32>(-1430f, 432f, -847f), false))), u_input.c.yz, func_4(Struct_3(true, 1540f, Struct_1(vec3<f32>(1363f, 522f, 336f), false), u_input.c.x, Struct_1(vec3<f32>(1000f, -1201f, 409f), true)), u_input.c.xz >> (vec2<u32>(u_input.d.x, u_input.b) % vec2<u32>(32u)), func_4(Struct_3(false, 508f, Struct_1(vec3<f32>(160f, 582f, 531f), true), 1u, Struct_1(vec3<f32>(470f, -235f, 854f), true)), vec2<u32>(1u, 4294967295u), Struct_1(vec3<f32>(-291f, 613f, -104f), false))))), Struct_3(true, 684f, Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(150f, -291f, -1043f))), !all(vec4<bool>(false, true, true, false))), ~_wgslsmith_add_u32(~u_input.c.x, countOneBits(u_input.d.x)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 813f, 522f) - vec3<f32>(1302f, 1475f, 624f)), func_4(Struct_3(false, -1455f, Struct_1(vec3<f32>(-1992f, 204f, -911f), false), 0u, Struct_1(vec3<f32>(-693f, 176f, 331f), true)), u_input.c.zy, Struct_1(vec3<f32>(-728f, -2143f, -855f), true)).a), u_input.d.x <= u_input.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-1640f - 1288f), -2147483647i << (u_input.d.x % 32u))).x), -1344f, ~u_input.e.x > 1i)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -155f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1400f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-102f * -191f)))), !func_4(Struct_3(false, 384f, Struct_1(vec3<f32>(1557f, -229f, -671f), true), 1u, Struct_1(vec3<f32>(-448f, 346f, 1000f), true)), vec2<u32>(4294967295u, u_input.d.x) >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)), Struct_1(vec3<f32>(-1924f, -742f, 2264f), true)).b)));
    let var_1 = 0u;
    var var_2 = func_4(Struct_3(true, var_0.x, func_1(_wgslsmith_mod_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 82147i, 1i, u_input.a.x), u_input.a)), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0), false)), 3970u, func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 36687i, 1i, -1i), -u_input.a), func_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.e.x, u_input.e.x), Struct_1(var_0, false)))), u_input.c.xy >> ((vec2<u32>(~u_input.c.x, 36795u) << (u_input.c.zy % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x + -569f)), _wgslsmith_f_op_f32(-func_4(Struct_3(true, var_0.x, Struct_1(var_0, false), 23491u, Struct_1(vec3<f32>(-690f, var_0.x, var_0.x), true)), u_input.c.zx, Struct_1(var_0, true)).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))), false));
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0)))), ~(~(~0i)) > func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - var_2.a.xy))).x);
    var var_3 = var_0.x <= _wgslsmith_f_op_f32(var_2.a.x - -537f);
    var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

