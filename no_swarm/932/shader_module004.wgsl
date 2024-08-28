struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -721f;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(Struct_2(vec3<u32>(1u, 49041u, 1u), Struct_1(true, vec3<f32>(-796f, 176f, 770f)), true, vec4<u32>(49766u, 0u, 40377u, 4294967295u))), Struct_3(Struct_2(vec3<u32>(27398u, 18494u, 0u), Struct_1(true, vec3<f32>(-1556f, 109f, 1000f)), false, vec4<u32>(39062u, 9267u, 0u, 33864u))), Struct_3(Struct_2(vec3<u32>(52677u, 29842u, 0u), Struct_1(false, vec3<f32>(-1177f, 390f, -404f)), true, vec4<u32>(1u, 4274u, 1u, 0u))), Struct_3(Struct_2(vec3<u32>(4294967295u, 4294967295u, 69239u), Struct_1(true, vec3<f32>(135f, -179f, 1000f)), true, vec4<u32>(1u, 0u, 52315u, 69225u))), Struct_3(Struct_2(vec3<u32>(4294967295u, 4294967295u, 60598u), Struct_1(false, vec3<f32>(1000f, 1000f, 899f)), false, vec4<u32>(3934u, 1u, 0u, 0u))));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = Struct_1(arg_0.a, arg_0.b);
    let var_1 = select(9819i, 2147483647i, arg_0.a);
    let var_2 = _wgslsmith_mod_i32(-(~firstLeadingBit(_wgslsmith_mod_i32(0i, var_1))), ~(var_1 ^ 1i));
    var var_3 = Struct_3(Struct_2(~_wgslsmith_sub_vec3_u32(countOneBits(u_input.a), vec3<u32>(arg_1, arg_1, 4294967295u)), Struct_1(!var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b - vec3<f32>(-1388f, -976f, -350f)))), true, vec4<u32>(~arg_1, 4294967295u, 1u, u_input.a.x >> (4294967295u % 32u)) >> (vec4<u32>(~arg_1, ~46213u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x) % vec4<u32>(32u))));
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.b.b.x)) - 1675f) - _wgslsmith_f_op_f32(-430f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -979f))))), -120f));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_sub_vec4_i32(arg_2, ~(~arg_2 | ~(~vec4<i32>(-1i, arg_1.x, 11942i, -30569i))));
    global2 = array<Struct_3, 5>();
    global0 = 223f;
    var var_1 = Struct_1(!(!any(vec4<bool>(false, true, false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, -1069f) * vec3<f32>(-1000f, global1.x, 1275f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -928f, -1241f)))) * vec3<f32>(_wgslsmith_f_op_f32(step(global1.x, global1.x)), _wgslsmith_f_op_f32(floor(633f)), global1.x)));
    var_1 = Struct_1(true, vec3<f32>(671f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(var_1.a, var_1.b), 76111u)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b.x, 244f)))), 1539f));
    return abs(firstTrailingBit(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 71004u, 1u, 0u), vec4<u32>(0u, 27102u, 32207u, u_input.a.x)))));
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    global0 = -245f;
    var var_0 = Struct_2(vec3<u32>(func_2(abs(vec3<i32>(1i, 0i, -19105i)), ~vec2<i32>(-48496i, -1i), vec4<i32>(0i, 11017i, -1i, 2147483647i), ~u_input.a.xz), ~abs(4294967295u), select(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~8745u, true)) | ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a)), Struct_1(any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1624f, global1.x, global1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(198f, global1.x, global1.x), vec3<f32>(-612f, 474f, 419f))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, global1.x, -149f))))), select(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), 5342u == _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 11839u, 54001u, 1u), vec4<u32>(0u, u_input.a.x, 20559u, 0u)), !all(vec4<bool>(false, true, false, true))) & all(vec3<bool>(true, false, false)), ~countOneBits(vec4<u32>(27547u, firstLeadingBit(u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x | u_input.a.x)));
    var var_1 = -2147483647i;
    let var_2 = -(~firstTrailingBit(countOneBits(15754i)));
    var var_3 = var_0.b.a;
    return -784f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, vec3<f32>(997f, _wgslsmith_f_op_f32(func_1(vec2<f32>(1141f, global1.x))), _wgslsmith_f_op_f32(-1f)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 367f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_div_f32(-137f, var_0.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * 254f)))));
    var var_1 = Struct_1(var_0.a, var_0.b);
    let var_2 = Struct_1(false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(715f - var_1.b.x), global1.x, var_0.b.x)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global1.x)), -912f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.x)) - _wgslsmith_f_op_f32(max(1000f, -1000f))), -528f)));
    global0 = var_0.b.x;
    let var_3 = _wgslsmith_div_i32(-36526i, -2147483647i);
    let var_4 = Struct_2(min(vec3<u32>(u_input.a.x, 4294967295u, 0u), firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 95344u, u_input.a.x), u_input.a))), Struct_1(var_2.b.x < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(select(var_1.b.x, -2031f, var_2.a)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.x, -2488f, 1608f)))))), any(select(select(vec4<bool>(var_2.a, var_0.a, var_2.a, false), vec4<bool>(var_1.a, var_1.a, true, var_2.a), true), vec4<bool>(true, var_0.a, var_0.a, false), vec4<bool>(var_0.a, var_0.a, var_2.a, var_1.a))) && !var_1.a, ~(~vec4<u32>(4294967295u, func_2(vec3<i32>(var_3, var_3, 2807i), vec2<i32>(var_3, -2147483647i), vec4<i32>(var_3, var_3, var_3, var_3), vec2<u32>(1u, u_input.a.x)), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x)));
    global0 = _wgslsmith_f_op_f32(380f - _wgslsmith_f_op_f32(sign(global1.x)));
    var var_5 = Struct_3(var_4);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.a, _wgslsmith_add_vec3_i32(-countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_3, 9132i, -18913i), vec3<i32>(var_3, var_3, var_3))), min(~vec3<i32>(21750i, -51985i, var_3), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_3, var_3, var_3), vec3<i32>(var_3, 2147483647i, 1i), vec3<i32>(-34063i, -1i, var_3))) ^ (_wgslsmith_add_vec3_i32(vec3<i32>(13443i, 49279i, 31670i), vec3<i32>(70279i, 0i, -419i)) & (vec3<i32>(-1i, var_3, -1i) >> (vec3<u32>(var_5.a.d.x, 4294967295u, u_input.a.x) % vec3<u32>(32u))))), 58161u, _wgslsmith_div_vec3_u32(~(~vec3<u32>(4294967295u, var_4.a.x, 58663u)), vec3<u32>(115497u, 4294967295u, 4294967295u)));
}

