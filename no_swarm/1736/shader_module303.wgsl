struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<vec4<i32>, 22>;

var<private> global2: u32;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    global2 = firstTrailingBit(reverseBits(firstTrailingBit(~(~0u))));
    let var_0 = countOneBits(~reverseBits(~u_input.b)) < ~u_input.b;
    global2 = ~(~u_input.a.x);
    var var_1 = !select(vec2<bool>(_wgslsmith_f_op_f32(sign(arg_0)) != -610f, true), !vec2<bool>(32897u < arg_2.a, var_0), ~u_input.b < u_input.b);
    let var_2 = arg_2;
    return -2147483647i;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<bool> {
    global1 = array<vec4<i32>, 22>();
    let var_0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.b, _wgslsmith_sub_i32(u_input.b, -6764i)), 2147483647i << ((arg_0.x >> (15360u % 32u)) % 32u)), _wgslsmith_mod_vec2_i32(reverseBits(-vec2<i32>(38976i, -32286i)), vec2<i32>(0i, u_input.b) & (vec2<i32>(-1i, u_input.b) ^ vec2<i32>(u_input.b, u_input.b))));
    var var_1 = max(vec2<i32>(-2147483647i, i32(-1i) * -var_0), select(vec2<i32>(func_3(-1000f, arg_1.a.x, Struct_2(1u), Struct_2(59464u)), _wgslsmith_div_i32(var_0, u_input.b)) >> (~vec2<u32>(arg_1.b, arg_1.b) % vec2<u32>(32u)), vec2<i32>(1i, -57131i), arg_1.a.x));
    global2 = select(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 13830u & arg_1.b) >> (_wgslsmith_div_vec2_u32(arg_0, vec2<u32>(arg_0.x, u_input.a.x) | arg_0) % vec2<u32>(32u)), vec2<u32>(~_wgslsmith_clamp_u32(arg_0.x, 15166u, arg_0.x), 65861u)), !arg_2.x);
    let var_2 = all(!select(vec4<bool>(false, true, false, arg_2.x), vec4<bool>(false, true, arg_2.x, false), true)) | arg_1.a.x;
    return vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1446f, -579f, false))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f)), arg_1.a.x, (var_2 && true) && select(true, any(!arg_2.yx), var_2), arg_1.a.x);
}

fn func_1(arg_0: bool) -> vec2<u32> {
    global0 = abs(u_input.b);
    var var_0 = Struct_1(!func_2(vec2<u32>(u_input.a.x, u_input.a.x) ^ u_input.a.xy, Struct_1(vec4<bool>(arg_0, arg_0, arg_0, true), u_input.a.x), !select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, arg_0, true))), _wgslsmith_add_u32(u_input.a.x, 80974u));
    var_0 = Struct_1(var_0.a, u_input.a.x);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(732f + 716f)))) - 1690f));
    let var_2 = ~_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(u_input.b, u_input.b, 13343i)), vec3<i32>(u_input.b, u_input.b, 8010i)), vec3<i32>(firstTrailingBit(-1i), u_input.b, select(-24848i, u_input.b, false))), -_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.b, 0i), vec3<i32>(-2147483647i, u_input.b, 1i) ^ vec3<i32>(-1i, u_input.b, u_input.b)));
    return u_input.a.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec2<bool>(true, any(vec2<bool>(true, false)))), select(!vec2<bool>(true, u_input.b > u_input.b), !vec2<bool>(true, all(vec3<bool>(false, false, false))), vec2<bool>(true, true)), true);
    let var_1 = countOneBits(-(((vec2<i32>(2363i, 30281i) & vec2<i32>(-29155i, u_input.b)) >> (func_1(var_0.x) % vec2<u32>(32u))) << (countOneBits(vec2<u32>(93568u, 0u) | u_input.a.xz) % vec2<u32>(32u))));
    var var_2 = max(var_1.x, -1i);
    var_0 = vec2<bool>(true, true);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(729f, 1134f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(693f, 772f) * vec2<f32>(1123f, 164f)), var_0.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(638f, 355f))), _wgslsmith_div_vec2_f32(vec2<f32>(-364f, -663f), vec2<f32>(-1443f, 1484f)), var_0.x))))));
    var var_4 = _wgslsmith_sub_u32(_wgslsmith_add_u32(34589u, u_input.a.x), 1u);
    var var_5 = Struct_1(func_2(vec2<u32>(~u_input.a.x, 4294967295u), Struct_1(!(!vec4<bool>(false, false, var_0.x, var_0.x)), u_input.a.x << (_wgslsmith_mult_u32(24132u, u_input.a.x) % 32u)), select(!(!vec3<bool>(var_0.x, var_0.x, true)), !func_2(vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(vec4<bool>(false, var_0.x, var_0.x, false), u_input.a.x), vec3<bool>(var_0.x, true, true)).xxz, true)), reverseBits(0u));
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(f32(-1f) * -868f)) + _wgslsmith_f_op_f32(abs(var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(-1i, 0i), select(vec3<i32>(-35856i, -27726i, abs(_wgslsmith_mod_i32(1i, -2147483647i))), _wgslsmith_add_vec3_i32(select(vec3<i32>(var_1.x, 35603i, -22567i), ~vec3<i32>(-9464i, var_1.x, 0i), true), vec3<i32>(_wgslsmith_add_i32(0i, -2147483647i), var_1.x, 31793i)), vec3<bool>(true, !all(var_5.a), true)));
}

