struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: f32,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_3,
    d: bool,
    e: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> bool {
    global0 = true;
    global0 = (u_input.a.x < 1u) & false;
    var var_0 = Struct_5(u_input.a.x, ~(~(~1u)), false);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(501f, 1194f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(913f)), -875f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-723f - 1046f))), -365f)));
    return !select(var_0.c, var_0.c, any(vec3<bool>(false, true, true)));
}

fn func_3() -> vec4<i32> {
    global0 = 1u < u_input.a.x;
    global0 = !(!any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true)))));
    var var_0 = 1272f;
    let var_1 = !select(select(vec2<bool>(all(vec3<bool>(true, false, false)), any(vec2<bool>(true, true))), select(vec2<bool>(true, false), vec2<bool>(true, true), true), 26868i > (u_input.b.x | -7225i)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true))), true);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -156f);
    return _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(58460i << (1u % 32u), -2147483647i, firstTrailingBit(u_input.b.x), 86045i)), vec4<i32>(-1i) * -min(vec4<i32>(-57533i, 23471i, -2147483647i, 19158i), vec4<i32>(-1i, u_input.b.x, u_input.b.x, -76274i))), vec4<i32>(u_input.b.x, -54790i, -1390i, u_input.b.x));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<u32>) -> vec3<i32> {
    var var_0 = func_1();
    var var_1 = func_3() ^ _wgslsmith_clamp_vec4_i32(func_3(), vec4<i32>(u_input.b.x ^ u_input.b.x, -32752i, 12554i, -2147483647i) & ~vec4<i32>(33344i, -2147483647i, 39030i, -2147483647i), select(~vec4<i32>(7958i, -2147483647i, u_input.b.x, 29662i), vec4<i32>(-60114i, arg_0, -2147483647i, arg_0), vec4<bool>(true, true, true, true)));
    var var_2 = ~(~(~var_1.x));
    var var_3 = Struct_3(-1i, !(all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)) || true), arg_1.x, _wgslsmith_sub_vec2_u32(min(select(vec2<u32>(arg_2.x, u_input.a.x), arg_2.zy, select(vec2<bool>(false, true), vec2<bool>(true, false), false)), ~vec2<u32>(arg_2.x, 14205u)), countOneBits(arg_2.yy)), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), vec3<bool>(true, all(vec2<bool>(true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false))), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(true, false, true)), true, true)), vec3<bool>(all(vec4<bool>(true, true, true, true)), true || any(vec4<bool>(false, false, false, true)), false)));
    var_2 = reverseBits(firstTrailingBit(14857i));
    return vec3<i32>(select(~u_input.b.x, countOneBits(u_input.b.x), var_3.e.x || (firstLeadingBit(56808u) != arg_2.x)), _wgslsmith_sub_i32(var_1.x, ~(-2147483647i)), -_wgslsmith_mult_i32(var_1.x, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_4(~func_2(~u_input.b.x, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -1000f, -920f))), vec3<u32>(u_input.a.x, 9909u, u_input.a.x)) ^ vec3<i32>(min(-23377i ^ u_input.b.x, u_input.b.x), 0i, u_input.b.x << (~u_input.a.x % 32u)), vec2<bool>(var_0, select((u_input.b.x > 2147483647i) || true, all(vec3<bool>(var_0, var_0, true)) == var_0, var_0)), Struct_3(min(u_input.b.x, ~_wgslsmith_add_i32(1i, 1i)), true, _wgslsmith_f_op_f32(min(893f, 263f)), abs(select(~u_input.a.zw, u_input.a.zw, vec2<bool>(var_0, true))), vec3<bool>(true, false, true)), false, func_3().wxy);
    var var_2 = abs(reverseBits(~reverseBits(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(-10437i, vec2<f32>(298f, 991f), -2147483647i, _wgslsmith_add_vec2_i32(min(~max(vec2<i32>(1943i, u_input.b.x), var_1.e.zz), firstTrailingBit(max(vec2<i32>(74770i, u_input.b.x), var_1.a.zz))), u_input.b));
}

