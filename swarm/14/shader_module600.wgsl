struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global1: Struct_5 = Struct_5(vec2<i32>(14967i, 1i), Struct_2(vec3<bool>(true, false, true), -886f), Struct_2(vec3<bool>(false, false, true), -809f), vec2<f32>(158f, -395f), Struct_2(vec3<bool>(false, false, true), 1270f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) + -653f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.d.x, -453f), -865f)))));
    var var_1 = -(~(-global1.a.x));
    global0 = vec2<u32>(global0.x, 10229u);
    let var_2 = ~vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.x, 20843u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 45138u, 15152u), u_input.d.x), ~0u), _wgslsmith_div_u32(arg_1.x, firstLeadingBit(_wgslsmith_add_u32(u_input.d.x, arg_1.x))), _wgslsmith_dot_vec3_u32(~arg_1.xzz, vec3<u32>(~1u, arg_1.x ^ u_input.d.x, 3320u)));
    global0 = ~(reverseBits(var_2.zz) ^ vec2<u32>(arg_1.x, arg_1.x)) << (vec2<u32>(~(~37132u), 4294967295u) % vec2<u32>(32u));
    return arg_1;
}

fn func_2(arg_0: vec4<i32>) -> vec4<u32> {
    let var_0 = 1u;
    global0 = ~select(_wgslsmith_add_vec2_u32(~vec2<u32>(var_0, 4294967295u), _wgslsmith_clamp_vec2_u32(u_input.a.xy, vec2<u32>(15817u, global0.x), u_input.a.zy)) << (~vec2<u32>(var_0, 1u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(u_input.a.yy, _wgslsmith_mult_vec2_u32(vec2<u32>(3035u, global0.x), vec2<u32>(18102u, 39u) >> (u_input.d % vec2<u32>(32u)))), global1.e.a.zx);
    global0 = reverseBits(~reverseBits(firstLeadingBit(max(u_input.a.xz, u_input.d))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1191f + _wgslsmith_f_op_f32(-global1.e.b)))), global1.b, global1.a.x, ~(select(func_3(global1.d, vec4<u32>(0u, global0.x, global0.x, var_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(7919u, global0.x, 1u, global0.x), vec4<u32>(87445u, 4294967295u, 1u, 1u)), vec4<bool>(false, global1.b.a.x, global1.b.a.x, false)) ^ vec4<u32>(var_0 >> (1u % 32u), global0.x, 9647u, var_0)));
    var_1 = Struct_4(var_1.b.b, Struct_2(!select(!var_1.b.a, select(var_1.b.a, global1.c.a, global1.b.a.x), !vec3<bool>(var_1.b.a.x, false, var_1.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(549f)), 1867f))), max(_wgslsmith_mult_i32(-25201i, _wgslsmith_mod_i32(u_input.b, arg_0.x) | _wgslsmith_mult_i32(global1.a.x, arg_0.x)), min(-global1.a.x, max(_wgslsmith_add_i32(-10556i, 1i), _wgslsmith_add_i32(u_input.e.x, var_1.c)))), ~(max(~vec4<u32>(0u, 32010u, 34682u, u_input.d.x), ~vec4<u32>(31635u, var_1.d.x, 24097u, var_1.d.x)) | (var_1.d | _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, var_1.d.x, 9750u, var_0), var_1.d, var_1.d))));
    return firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(~0u, var_0, var_1.d.x, firstTrailingBit(1u)), var_1.d));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_4(arg_0.a, global1.e, 33996i, _wgslsmith_mod_vec4_u32(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 8607u, global0.x, 24380u), vec4<u32>(17750u, u_input.a.x, global0.x, global0.x))), func_2(-countOneBits(vec4<i32>(u_input.b, 1i, arg_1, arg_1)))));
    global0 = vec2<u32>(_wgslsmith_dot_vec3_u32(max(abs(vec3<u32>(1u, var_0.d.x, 0u)), _wgslsmith_div_vec3_u32(select(vec3<u32>(46978u, u_input.a.x, global0.x), var_0.d.xwz, vec3<bool>(false, global1.b.a.x, true)), u_input.a | var_0.d.xxy)), vec3<u32>(~func_3(vec2<f32>(538f, global1.e.b), var_0.d).x, ~77499u, _wgslsmith_sub_u32(~global0.x, firstLeadingBit(0u)))), global0.x);
    var var_1 = 30841u;
    let var_2 = ~(~1u);
    var_1 = 117585u;
    return global1.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -666f)) * _wgslsmith_f_op_f32(step(arg_1.a, 291f)))), max(45131i, 7997i));
    return _wgslsmith_mod_vec2_i32(vec2<i32>(global1.a.x, 1i), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i | u_input.b, _wgslsmith_sub_i32(-1i, -13400i)), _wgslsmith_mod_vec2_i32(global1.a, vec2<i32>(u_input.c, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(42054u, ~countOneBits(u_input.a.x));
    var var_0 = abs(vec4<u32>(0u, _wgslsmith_add_u32(4294967295u, u_input.a.x), global0.x, _wgslsmith_mod_u32(66318u, u_input.d.x)) | (~vec4<u32>(u_input.a.x, 0u, u_input.d.x, global0.x) & vec4<u32>(23955u, u_input.a.x, 54365u, u_input.d.x))) | vec4<u32>(_wgslsmith_add_u32(u_input.d.x, ~global0.x) & ((1u ^ u_input.d.x) << (~u_input.d.x % 32u)), 1u, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 4294967295u, u_input.d.x, 4294967295u), vec4<u32>(global0.x, 52719u, u_input.a.x, 36325u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.d.x, u_input.d.x, global0.x)) & vec4<u32>(global0.x, global0.x, u_input.d.x, u_input.a.x)), ~_wgslsmith_dot_vec2_u32(select(u_input.d, u_input.d, global1.c.a.xx), vec2<u32>(752u, global0.x)));
    var var_1 = Struct_5(_wgslsmith_mult_vec2_i32(func_4(~var_0.xw, Struct_3(_wgslsmith_f_op_f32(global1.b.b * -177f), func_1(Struct_1(1000f), 0i), ~u_input.a.zy), func_1(Struct_1(2137f), max(global1.a.x, global1.a.x))), countOneBits(func_4(u_input.a.zx, Struct_3(141f, Struct_2(global1.e.a, -160f), u_input.d), Struct_2(global1.b.a, 1273f)))), global1.e, Struct_2(global1.c.a, global1.d.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(145f, _wgslsmith_f_op_f32(-global1.e.b))))), Struct_2(!select(global1.b.a, select(global1.e.a, global1.e.a, global1.b.a), func_1(Struct_1(2361f), global1.a.x).a), _wgslsmith_f_op_f32(-global1.c.b)));
    var var_2 = var_1.a.x & _wgslsmith_sub_i32(-14070i, _wgslsmith_mult_i32(~global1.a.x & -var_1.a.x, ~(~var_1.a.x)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x - global1.e.b)), Struct_2(select(vec3<bool>(false, global1.e.a.x, false), !select(var_1.e.a, var_1.c.a, global1.b.a.x), select(select(global1.e.a, var_1.e.a, global1.e.a.x), select(vec3<bool>(var_1.b.a.x, false, var_1.b.a.x), global1.c.a, vec3<bool>(false, true, var_1.b.a.x)), global1.b.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.c.b, var_1.b.b)), var_1.c.b)), vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(func_2(select(vec4<i32>(57558i, global1.a.x, var_1.a.x, var_1.a.x), vec4<i32>(38731i, 1i, global1.a.x, var_1.a.x), global1.c.a.x)).x, ~(~global0.x))));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -385f), var_1.b, ~(~firstTrailingBit(~var_3.c)));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_div_f32(-719f, var_3.b.b)) * 1f);
    let var_6 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1901f + var_1.b.b))), -158f)))), func_1(Struct_1(var_3.a), global1.a.x), var_3.c);
    var var_7 = global1.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x, abs(countOneBits(_wgslsmith_add_vec4_i32(-vec4<i32>(var_1.a.x, 10983i, 1i, u_input.e.x), vec4<i32>(global1.a.x, u_input.e.x, u_input.b, -1i)))));
}

