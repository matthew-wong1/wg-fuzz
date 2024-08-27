struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: u32, arg_3: vec3<bool>) -> f32 {
    var var_0 = Struct_4(Struct_3(Struct_2(_wgslsmith_add_vec2_i32(-u_input.b.zz, vec2<i32>(u_input.b.x, u_input.b.x)), ~0i, true, select(arg_0, !vec4<bool>(false, true, arg_0.x, false), !vec4<bool>(true, true, true, arg_3.x)))), arg_0, 1007f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(622f - 240f), _wgslsmith_f_op_f32(1262f - -1911f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-927f + -1104f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1440f, 207f)), 1704f, _wgslsmith_f_op_f32(step(-778f, -1082f)), _wgslsmith_f_op_f32(trunc(-666f))))));
    var var_1 = _wgslsmith_sub_i32(-u_input.b.x, firstTrailingBit(-select(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(-17215i, var_0.a.a.a.x)), max(2147483647i, -1468i), 33580i != var_0.a.a.a.x)));
    let var_2 = _wgslsmith_dot_vec3_i32(~u_input.b, u_input.b);
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_add_i32(i32(-1i) * -23371i, -3207i), ~(-2147483647i & (u_input.b.x & var_2)));
    var var_4 = var_0.a.a;
    return _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(ceil(1832f)));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_4(Struct_3(Struct_2(u_input.b.xz, u_input.b.x, false, vec4<bool>(true, all(vec2<bool>(arg_0, true)), true, true))), !(!(!(!vec4<bool>(arg_0, arg_0, false, false)))), -1134f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * -407f)))), 536f, _wgslsmith_f_op_f32(func_3(vec4<bool>(!arg_0, false, arg_0, any(vec2<bool>(arg_0, false))), ~41769u, 1u, vec3<bool>(arg_0, !arg_0, all(vec2<bool>(arg_0, true))))), 1237f));
    let var_1 = -vec4<i32>(u_input.b.x, ~_wgslsmith_mod_i32(-var_0.a.a.b, -1i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-10528i, 1i, var_0.a.a.b, 2147483647i), vec4<i32>(u_input.b.x, var_0.a.a.a.x, 27131i, 23097i) | vec4<i32>(var_0.a.a.a.x, var_0.a.a.b, 9286i, u_input.b.x)), ~min(var_0.a.a.a.x, -1i));
    var var_2 = abs(vec2<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x >> (u_input.a.x % 32u)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x & 4294967295u))));
    var var_3 = var_0;
    var var_4 = Struct_2(vec2<i32>(1i, 1i), var_1.x, all(var_3.a.a.d), vec4<bool>(false, false, any(var_0.a.a.d.ywx), any(!vec2<bool>(false, var_3.a.a.c))));
    return 523f;
}

fn func_1(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = Struct_3(Struct_2(abs(abs(u_input.b.zy)), 8981i, !all(vec2<bool>(false, true)), vec4<bool>(arg_0.x, false, any(!vec2<bool>(true, arg_0.x)), arg_0.x)));
    let var_1 = var_0.a.d.zzw;
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1425f)), _wgslsmith_f_op_f32(-1000f + 632f))), _wgslsmith_f_op_f32(f32(-1f) * -135f), !select(var_0.a.d.x, false, var_0.a.d.x)))))));
    var var_3 = Struct_4(Struct_3(Struct_2(select(vec2<i32>(-66976i, var_0.a.a.x), vec2<i32>(u_input.b.x, var_0.a.b), var_1.x) << ((u_input.a.ww ^ u_input.a.wz) % vec2<u32>(32u)), _wgslsmith_sub_i32(-1i, -2147483647i) << (0u % 32u), true, var_0.a.d)), select(select(!(!vec4<bool>(false, arg_0.x, var_0.a.c, false)), var_0.a.d, var_1.x), arg_0, !arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(219f, -648f)), _wgslsmith_div_f32(-2286f, -684f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1800f, -867f, false)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-645f, 1695f, 221f, -240f)), vec4<f32>(1332f, 203f, -1003f, 838f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_4 = -vec2<i32>(var_0.a.a.x ^ var_3.a.a.a.x, -1i);
    return vec4<bool>(all(vec4<bool>(!(var_3.d.x == var_3.d.x), var_1.x, select(false, u_input.a.x > u_input.a.x, true), true)), !(false | all(!arg_0)), true, var_0.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1218f);
    let var_1 = any(func_1(vec4<bool>(!all(vec2<bool>(false, false)), true, true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)))));
    let var_2 = Struct_4(Struct_3(Struct_2(~u_input.b.xy, _wgslsmith_dot_vec4_i32(vec4<i32>(-72690i, 2147483647i, -46894i, 4761i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, -1i, 31094i), vec4<i32>(u_input.b.x, u_input.b.x, 29358i, 0i))), var_1, select(!vec4<bool>(true, var_1, var_1, var_1), func_1(vec4<bool>(var_1, var_1, var_1, var_1)), var_1))), select(vec4<bool>(all(select(vec2<bool>(var_1, var_1), vec2<bool>(false, true), vec2<bool>(false, true))), var_1, u_input.b.x == 48128i, true), !select(vec4<bool>(true, true, var_1, var_1), !vec4<bool>(var_1, var_1, true, true), !vec4<bool>(true, var_1, var_1, true)), vec4<bool>(~u_input.a.x < 10056u, all(vec4<bool>(true, var_1, false, false)), all(vec2<bool>(true, true)), all(select(vec4<bool>(var_1, true, var_1, true), vec4<bool>(var_1, var_1, true, false), var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!select(vec4<bool>(var_1, true, var_1, true), vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(false, true, false, false)), u_input.a.x, abs(33578u) | min(u_input.a.x, u_input.a.x), !(!vec3<bool>(var_1, var_1, var_1))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-277f, _wgslsmith_f_op_f32(func_2(var_1)), 1987f, _wgslsmith_f_op_f32(1388f + _wgslsmith_f_op_f32(-231f - 721f))))));
    var_0 = 882f;
    var_0 = _wgslsmith_f_op_f32(func_3(vec4<bool>(var_1, var_1, true, u_input.a.x >= min(1u, 4294967295u >> (u_input.a.x % 32u))), _wgslsmith_add_u32(u_input.a.x, abs(u_input.a.x)), 4294967295u, var_2.a.a.d.yyw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.a | reverseBits(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)), u_input.a), _wgslsmith_clamp_u32(19971u, 4294967295u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), 4294967295u << ((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 21413u), u_input.a.zz) | u_input.a.x) % 32u)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f) * _wgslsmith_f_op_f32(func_3(var_2.b, 21862u, u_input.a.x, var_2.a.a.d.xwz))), _wgslsmith_f_op_f32(var_2.d.x * -414f), _wgslsmith_f_op_f32(abs(var_2.c))))), abs(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_mult_i32(var_2.a.a.b, -44520i))) ^ _wgslsmith_sub_i32(-abs(var_2.a.a.a.x), 2147483647i), ~u_input.a.x, 4294967295u);
}

