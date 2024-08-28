struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = true;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32) -> u32 {
    global0 = -1000f;
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -305f, arg_2));
    let var_1 = !(!arg_0.c.xz);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, _wgslsmith_f_op_f32(ceil(776f)), -1280f, arg_2), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-431f, 116f, 203f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, -234f, -1938f, -1256f)))))), !select(select(vec4<bool>(arg_0.c.x, false, false, false), !vec4<bool>(false, arg_0.b.x, false, false), !vec4<bool>(true, var_1.x, var_1.x, var_1.x)), vec4<bool>(false, false, arg_0.b.x, true), !vec4<bool>(var_1.x, var_1.x, var_1.x, true))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-621f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(arg_2 * var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2, 828f, var_1.x)), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x - var_2.x))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-871f, -328f, var_2.x, var_2.x))))))))));
    return ~4294967295u;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global1 = false;
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(arg_2.a, -2147483647i), -2147483647i, u_input.d.x, u_input.c) >> (vec4<u32>(func_3(Struct_1(arg_2.d, vec3<bool>(true, arg_2.b.x, arg_2.b.x), vec3<bool>(arg_2.b.x, arg_2.c.x, arg_2.c.x), arg_2.d), _wgslsmith_div_vec2_f32(vec2<f32>(776f, 337f), vec2<f32>(-1515f, arg_3.x)), _wgslsmith_f_op_f32(-arg_3.x)), 1u, select(~arg_0, _wgslsmith_mult_u32(1u, 34199u), arg_2.a != u_input.d.x), select(func_3(arg_2, vec2<f32>(arg_3.x, arg_3.x), 2569f), ~22967u, arg_2.c.x)) % vec4<u32>(32u)), -(~vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-36440i, u_input.c, arg_2.d)), 1i, ~62038i, ~u_input.c)));
    var var_1 = Struct_3(Struct_2(!(_wgslsmith_f_op_f32(-arg_3.x) >= _wgslsmith_div_f32(-502f, -1039f)), Struct_1(-1i, vec3<bool>(arg_2.b.x | arg_2.b.x, true, false), select(vec3<bool>(true, false, false), !vec3<bool>(arg_2.c.x, true, arg_2.c.x), false), var_0.x), arg_2));
    var var_2 = u_input.c;
    var var_3 = var_1.a.b;
    return ~(~0u);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = Struct_3(arg_0);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))));
    var var_2 = true;
    let var_3 = arg_1.b.x;
    let var_4 = Struct_1(~_wgslsmith_mod_i32(countOneBits(arg_1.a), u_input.c >> (43355u % 32u)) << (max(~18312u, _wgslsmith_div_u32(~u_input.a, u_input.b.x)) % 32u), vec3<bool>(var_0.a.c.b.x, true, !(!(true || arg_1.c.x))), !vec3<bool>(false, true, !var_0.a.b.c.x & var_0.a.a), 13880i);
    return ~_wgslsmith_mult_vec2_u32(~u_input.b << (~vec2<u32>(u_input.a, 84958u) % vec2<u32>(32u)), vec2<u32>(~u_input.b.x, 1u)) ^ select(~u_input.b, vec2<u32>(func_2(1u, vec2<u32>(0u, u_input.b.x), arg_0.b, var_1), min(18191u, _wgslsmith_mult_u32(u_input.b.x, u_input.a))), select(vec2<bool>(any(var_4.b.xz), var_4.b.x), select(select(var_4.c.zz, var_4.c.xz, var_4.c.x), select(var_4.c.yy, var_0.a.c.b.xx, var_4.c.x), true), all(vec2<bool>(var_3, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.a, 24824u)), ~_wgslsmith_mod_vec2_u32(~u_input.b, func_1(Struct_2(true, Struct_1(u_input.d.x, vec3<bool>(true, true, true), vec3<bool>(true, false, false), 2147483647i), Struct_1(u_input.c, vec3<bool>(true, false, false), vec3<bool>(true, true, false), -1i)), Struct_1(u_input.d.x, vec3<bool>(false, false, false), vec3<bool>(true, true, false), u_input.c))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(985f))))))));
    let var_2 = Struct_2(u_input.a <= ~(countOneBits(var_0.x) ^ min(1u, 1u)), Struct_1(-(u_input.c & _wgslsmith_dot_vec2_i32(u_input.d.zx, u_input.d.xz)), !vec3<bool>(select(false, true, false), true, true), vec3<bool>(true, true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), _wgslsmith_mod_i32(-21150i, ~(u_input.d.x ^ u_input.d.x))), Struct_1(_wgslsmith_clamp_i32(~(-46564i), _wgslsmith_div_i32(-2147483647i, 28234i), firstLeadingBit(~u_input.d.x)), select(vec3<bool>(true, all(vec2<bool>(false, true)), true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), i32(-1i) * -(u_input.c & u_input.c)));
    var var_3 = ~(-27942i);
    let var_4 = _wgslsmith_mult_u32(var_0.x, min(4294967295u >> (~u_input.b.x % 32u), ~(~(~u_input.b.x))));
    global1 = true;
    var var_5 = func_3(var_2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(300f, -893f))), var_1);
    var var_6 = Struct_3(Struct_2((var_2.b.b.x | true) & ((-18645i >> (var_4 % 32u)) <= -14475i), Struct_1(_wgslsmith_sub_i32(1i, max(u_input.c, var_2.c.a)), select(select(var_2.c.c, vec3<bool>(false, true, false), var_2.c.b), var_2.b.c, var_2.c.b), vec3<bool>(all(vec4<bool>(true, true, var_2.b.b.x, var_2.b.b.x)), true, var_2.b.b.x), firstLeadingBit(-2147483647i)), Struct_1(var_2.c.a, vec3<bool>(-502f > var_1, true, true), var_2.b.b, ~(~2147483647i))));
    var_6 = Struct_3(Struct_2(var_2.b.c.x, var_6.a.c, Struct_1(max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_6.a.c.a, -15438i, -67632i, u_input.d.x), vec4<i32>(-42787i, var_6.a.b.a, u_input.d.x, 2147483647i)), var_6.a.c.d), select(select(var_2.c.c, vec3<bool>(var_2.c.b.x, var_2.a, var_6.a.a), var_6.a.c.c), !vec3<bool>(var_2.a, true, true), var_6.a.c.c.x), var_2.c.c, max(-66083i >> (var_0.x % 32u), ~u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-vec3<i32>(max(u_input.c, var_2.b.d), var_6.a.c.a >> (41105u % 32u), firstTrailingBit(var_2.c.d))), _wgslsmith_f_op_f32(-923f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1)))));
}

