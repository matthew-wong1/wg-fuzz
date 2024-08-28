struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = Struct_3(~24542u, arg_1.d.zxz, Struct_1(u_input.b, ~abs(u_input.b.x) << (~(arg_0.a.x << (269u % 32u)) % 32u), max(80969i, _wgslsmith_add_i32(-6236i, u_input.a.x)), arg_1.d), Struct_1(~(~vec3<u32>(u_input.d, u_input.c.x, 4294967295u)) >> (min(arg_0.a, arg_1.a) % vec3<u32>(32u)), arg_0.a.x, 30960i, !arg_1.d), arg_1.c);
    var var_1 = Struct_5(countOneBits(~firstTrailingBit(vec3<u32>(17550u, 24615u, 1u))), arg_0.b, 933f);
    var_1 = arg_0;
    var var_2 = Struct_5(vec3<u32>(firstLeadingBit(arg_0.a.x), _wgslsmith_mult_u32(max(4294967295u, ~28334u), ~select(var_0.d.b, var_1.a.x, var_0.d.d.x)), u_input.e.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.c, var_1.c, -528f))), _wgslsmith_f_op_vec3_f32(round(var_1.b))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-113f, var_1.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -677f)));
    var_2 = arg_0;
    return vec3<u32>(u_input.d, select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, 64715u, 1u), ~vec3<u32>(23869u, arg_0.a.x, 1u)), 0u, abs(arg_0.a.x) < _wgslsmith_add_u32(arg_1.b, var_0.a)), arg_0.a.x) ^ var_2.a;
}

fn func_2() -> i32 {
    var var_0 = Struct_5(u_input.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1065f, 933f, -1061f), vec3<f32>(469f, -470f, -813f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2650f, 479f, 2055f)), vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-312f * -1000f), -1061f, _wgslsmith_f_op_f32(f32(-1f) * -151f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1006f, -988f, 995f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2180f, 102f, -226f))), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1089f)));
    var_0 = Struct_5(select(func_3(Struct_5(vec3<u32>(u_input.c.x, var_0.a.x, 4294967295u), _wgslsmith_f_op_vec3_f32(var_0.b - vec3<f32>(-1747f, 1219f, 2499f)), var_0.c), Struct_1(reverseBits(vec3<u32>(0u, u_input.d, u_input.c.x)), ~u_input.b.x, select(-8556i, u_input.a.x, true), vec4<bool>(true, true, true, true))), ~(~vec3<u32>(14702u, 4294967295u, var_0.a.x)), !vec3<bool>(true, var_0.a.x >= u_input.c.x, true)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(var_0.b)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(110f, -142f, var_0.b.x)))), vec3<bool>(any(vec3<bool>(false, false, true)), true, select(true, true, false)))))), _wgslsmith_f_op_f32(trunc(-179f)));
    let var_1 = Struct_4(u_input.a.x);
    var_0 = Struct_5(vec3<u32>(4294967295u, u_input.d, _wgslsmith_add_u32(~firstLeadingBit(var_0.a.x), (u_input.e.x ^ u_input.c.x) >> (_wgslsmith_sub_u32(4294967295u, var_0.a.x) % 32u))), vec3<f32>(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1505f, 198f))), 1050f), var_0.b.x);
    var var_2 = 35253u;
    return 0i;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = !any(arg_2.d);
    var var_1 = func_2();
    var var_2 = Struct_4(~u_input.a.x);
    var_2 = Struct_4(-1i);
    let var_3 = Struct_3(reverseBits(~4294967295u & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 51007u), u_input.e.yxx)), arg_2.d.yxx, Struct_1(vec3<u32>(0u, 4294967295u, 1u), _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(arg_2.a, vec3<u32>(u_input.b.x, arg_2.b, u_input.c.x)), arg_2.a), -_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-2147483647i, arg_1, 12473i, arg_1)), -vec4<i32>(-1i, var_2.a, arg_1, var_2.a)), !(!arg_2.d)), arg_2, ~(~_wgslsmith_add_i32(arg_2.c, -2147483647i)));
    return _wgslsmith_f_op_f32(1000f * 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-638f, _wgslsmith_f_op_f32(func_1(vec3<f32>(-1832f, 1553f, 1567f), u_input.a.x, Struct_1(u_input.e.zxw, u_input.d, u_input.a.x, vec4<bool>(false, true, false, false)), -1000f)), -1000f) - vec3<f32>(-1386f, _wgslsmith_f_op_f32(ceil(-104f)), -2784f))), vec3<f32>(1f, 1f, 1f));
    let var_1 = vec4<bool>(true, false, true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)) || (false | any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(244f - -1000f), var_0.x, var_0.x);
    var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1853f, var_2.x) - vec3<f32>(var_2.x, 440f, 1000f)), -u_input.a.x ^ u_input.a.x, Struct_1(u_input.b, u_input.e.x, _wgslsmith_mult_i32(43175i, u_input.a.x), vec4<bool>(var_1.x, false, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1158f + var_2.x)))), _wgslsmith_f_op_f32(-var_2.x), var_2.x), vec3<f32>(_wgslsmith_f_op_f32(var_0.x * -661f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - -526f))), -269f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(min(vec3<u32>(~4294967295u, ~65991u, u_input.c.x), select(vec3<u32>(u_input.b.x, 4294967295u, 10983u), ~u_input.e.wyy, select(vec3<bool>(false, false, true), vec3<bool>(false, false, var_1.x), var_1.zzy))), u_input.e.yxw), ~(-_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(10391i, -17250i, 1i), u_input.a.zwx), u_input.a.wyx)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) - vec3<f32>(var_0.x, var_2.x, var_2.x)) * _wgslsmith_f_op_vec3_f32(min(var_0, vec3<f32>(var_2.x, -244f, var_0.x))))));
}

