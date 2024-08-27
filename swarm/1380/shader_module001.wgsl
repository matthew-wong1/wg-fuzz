struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_2(Struct_1(countOneBits(1u)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(273f, -1129f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-859f * 360f))), -614f, !(true || (u_input.c.x == u_input.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-719f, -1337f))));
    var_1 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x);
    var var_2 = Struct_3(var_1.x, _wgslsmith_f_op_vec2_f32(var_1.xy + vec2<f32>(1055f, -746f)), vec4<i32>(~(-1i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, -70462i, -15951i), vec4<i32>(67310i, -4880i, 1i, -2147483647i)), 2147483647i, ~(-2147483647i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, -1i, 12347i), vec4<i32>(-2912i, 2147483647i, -32414i, -5132i))) >> (select(firstLeadingBit(~vec4<u32>(829u, u_input.a.x, u_input.c.x, 22087u)), _wgslsmith_sub_vec4_u32(vec4<u32>(9401u, 1u, u_input.c.x, u_input.a.x), vec4<u32>(55126u, u_input.c.x, 0u, u_input.c.x) & vec4<u32>(var_0.a.a, 0u, 1u, 4294967295u)), all(vec4<bool>(true, true, true, true))) % vec4<u32>(32u)), vec2<bool>(true, false));
    var_2 = Struct_3(_wgslsmith_f_op_f32(-1344f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1015f - 1002f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(662f, var_1.x)) + vec2<f32>(-727f, var_1.x)), vec2<f32>(_wgslsmith_div_f32(-101f, -568f), _wgslsmith_f_op_f32(-601f - 294f)), var_2.d.x))), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, abs(-var_2.c.x), -_wgslsmith_sub_i32(var_2.c.x, var_2.c.x), _wgslsmith_add_i32(var_2.c.x, _wgslsmith_add_i32(0i, 9442i))), vec4<i32>(_wgslsmith_sub_i32(var_2.c.x, -65910i), -129434i, var_2.c.x | var_2.c.x, _wgslsmith_mult_i32(~(-1i), -1i))), !(!(!vec2<bool>(true, var_2.d.x))));
    return var_2.c;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_4) -> vec4<f32> {
    let var_0 = u_input.a.xx;
    var var_1 = arg_0;
    var var_2 = vec3<bool>(arg_3.b.d.x, var_1.x >= _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(func_3(), ~arg_3.b.c), ~_wgslsmith_clamp_i32(arg_0.x, 0i, var_1.x)), !arg_1.d.x);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a)) * 1f))) + arg_2), _wgslsmith_f_op_vec2_f32(abs(arg_3.b.b)), _wgslsmith_sub_vec4_i32(abs(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_3.b.c, vec4<i32>(arg_0.x, -2147483647i, arg_0.x, 1i), vec4<i32>(0i, 11536i, arg_3.c, 1i)), -vec4<i32>(-37371i, arg_0.x, arg_0.x, 15269i))), countOneBits(arg_1.c)), !vec2<bool>(_wgslsmith_f_op_f32(-387f * arg_2) < _wgslsmith_f_op_f32(floor(arg_1.a)), _wgslsmith_f_op_f32(floor(1780f)) == _wgslsmith_f_op_f32(f32(-1f) * -720f)));
    var var_4 = countOneBits(arg_3.b.c.wyw);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1051f, arg_1.a, arg_2, arg_3.e.x)), vec4<f32>(1588f, 438f, var_3.a, arg_1.b.x), vec4<bool>(false, var_3.d.x, true, var_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-326f, 571f, 1340f, 230f))))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = ~(-2147483647i);
    let var_1 = Struct_2(Struct_1(u_input.a.x));
    var var_2 = ~select(-(-vec3<i32>(var_0, -13976i, -43919i) ^ ~vec3<i32>(0i, var_0, var_0)), ~(-_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 16466i, var_0), vec3<i32>(16753i, -1i, var_0))), !select(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, true), vec3<bool>(true, arg_0, false)), !vec3<bool>(false, arg_0, false), true));
    var_2 = vec3<i32>(_wgslsmith_sub_i32(var_0, ~var_0), min(-_wgslsmith_mult_i32(-12021i, 2386i), 41965i), var_2.x) | _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, ~(-2147483647i), 24257i), abs(~vec3<i32>(var_2.x, var_0, var_0))), abs(-vec3<i32>(var_0, var_0, var_2.x)));
    let var_3 = 1i;
    return var_1.a;
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = func_4(!(819f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a * -1462f), _wgslsmith_f_op_f32(step(-368f, 1057f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(1i, 1379i), Struct_3(arg_1.b.x, vec2<f32>(-547f, -131f), vec4<i32>(-5400i, arg_1.c.x, 9363i, arg_1.c.x), vec2<bool>(arg_1.d.x, false)), -970f, Struct_4(Struct_2(Struct_1(1u)), Struct_3(arg_1.b.x, arg_1.b, arg_1.c, arg_1.d), arg_1.c.x, -6418i, arg_1.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.b.x, arg_1.a, -1000f, -218f)))))));
    let var_1 = arg_1.d.x;
    var var_2 = Struct_4(Struct_2(Struct_1(1u)), Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_2(arg_1.c.zy, arg_1, -368f, Struct_4(Struct_2(var_0), arg_1, arg_1.c.x, arg_1.c.x, vec2<f32>(712f, arg_1.a)))).x, _wgslsmith_f_op_f32(arg_1.b.x + 221f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-168f)), arg_1.b.x))), _wgslsmith_f_op_vec2_f32(-arg_1.b), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 1i, -arg_0, _wgslsmith_mod_i32(arg_0, -1i)), arg_1.c), !arg_1.d), arg_0, min(-1i, arg_1.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2(~vec2<i32>(44137i, arg_1.c.x), arg_1, _wgslsmith_f_op_f32(floor(arg_1.b.x)), Struct_4(Struct_2(Struct_1(u_input.a.x)), arg_1, arg_0, 12666i, arg_1.b))).zw) * _wgslsmith_f_op_vec2_f32(round(arg_1.b))));
    var var_3 = reverseBits(u_input.c.x);
    var var_4 = ~firstTrailingBit(var_2.b.c.zxy);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.a, var_2.e.x, var_2.b.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-836f, -349f, arg_1.a) + vec3<f32>(var_2.e.x, 1230f, -1091f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(552f, -1421f, 960f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -1000f, var_2.b.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(1i, Struct_3(_wgslsmith_div_f32(-2495f, -539f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(584f, -2648f) + vec2<f32>(119f, 568f))))), abs(-vec4<i32>(1i, 1i, 1i, 1i)), !vec2<bool>(u_input.b.x < u_input.c.x, true)));
}

