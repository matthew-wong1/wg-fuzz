struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -539f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2.b)), _wgslsmith_f_op_f32(arg_2.b - arg_2.b)) * _wgslsmith_f_op_f32(round(-1174f))))));
    var var_1 = !(!(arg_3.x & arg_3.x));
    var var_2 = -2147483647i;
    var_2 = max(~_wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(23748i, 15370i), arg_1.c.xz), u_input.b.xz), -1i);
    var_1 = true;
    return 1991f;
}

fn func_3(arg_0: vec4<bool>) -> vec4<i32> {
    let var_0 = Struct_4(select(arg_0.zx, !select(!arg_0.zw, vec2<bool>(arg_0.x, false), arg_0.x || arg_0.x), all(vec3<bool>(true != arg_0.x, arg_0.x, true))), 0u > u_input.d.x, _wgslsmith_sub_vec4_i32(abs(~firstTrailingBit(vec4<i32>(-29953i, u_input.c, u_input.c, u_input.a))), vec4<i32>(_wgslsmith_mod_i32(-1i, u_input.c) & _wgslsmith_clamp_i32(-2147483647i, -13925i, 35985i), min(u_input.a, 2147483647i), _wgslsmith_clamp_i32(u_input.e, u_input.b.x, u_input.a), u_input.b.x)), Struct_3(_wgslsmith_mult_vec2_u32(~(~u_input.d.wz), abs(u_input.d.xy)), ~firstTrailingBit(vec4<u32>(1u, u_input.d.x, 31782u, u_input.d.x))), Struct_1(8349i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(495f + -452f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(658f, -1337f, arg_0.x)) - _wgslsmith_f_op_f32(-500f - -2151f)))), ~u_input.d.xz, abs(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 46415u)), vec4<u32>(0u, 0u, 0u, u_input.d.x)))));
    let var_1 = arg_0.zwy;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.b, var_0.e.b) * vec2<f32>(-2129f, 613f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-370f, var_0.e.b)))))), vec2<f32>(-1306f, _wgslsmith_f_op_f32(-var_0.e.b)));
    let var_3 = _wgslsmith_sub_u32(25186u, _wgslsmith_div_u32(~(~49666u), var_0.e.c.x) ^ min(u_input.d.x, 21862u));
    let var_4 = Struct_5(_wgslsmith_mult_u32(~var_3, 0u));
    return vec4<i32>(_wgslsmith_dot_vec4_i32(-(~select(vec4<i32>(12006i, u_input.a, 0i, -1i), var_0.c, var_1.x)), vec4<i32>(firstLeadingBit(-30155i), _wgslsmith_mod_i32(-2147483647i, -2147483647i), _wgslsmith_mult_i32(-91752i, 1i), u_input.b.x) ^ vec4<i32>(-47429i, firstTrailingBit(-5125i), -35319i, 58963i)), var_0.c.x, select(2147483647i, ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-17730i, var_0.c.x, 1i), vec3<i32>(20800i, u_input.c, 17742i)), -1i | var_0.e.a), var_2.x == var_0.e.b), ~u_input.c);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    let var_0 = _wgslsmith_sub_i32(u_input.c, -u_input.c);
    var var_1 = -u_input.b.yz & u_input.b.xz;
    let var_2 = func_3(arg_0);
    let var_3 = abs(abs(u_input.d.x));
    let var_4 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1135f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f) * _wgslsmith_f_op_f32(f32(-1f) * -797f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, 264f)))) | !arg_0.x;
    return Struct_2(5955i << (_wgslsmith_clamp_u32(1u, 1u, 4294967295u) % 32u), false);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = arg_3.d.xyy;
    var var_1 = arg_1.b;
    var_1 = arg_1.b;
    var var_2 = u_input.d.x;
    var_1 = true;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), false), false), all(vec3<bool>(true, true, true))), vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), true, true & all(vec3<bool>(true, false, false)), true), ~firstTrailingBit(4294967295u) != 1u), vec4<bool>((-474f < _wgslsmith_f_op_f32(select(537f, 844f, false))) && true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(false, Struct_4(vec2<bool>(true, true), false, vec4<i32>(u_input.c, 0i, 0i, 1i), Struct_3(vec2<u32>(4294967295u, 1u), u_input.d), Struct_1(u_input.a, -1374f, vec2<u32>(u_input.d.x, 0u), vec4<u32>(0u, 56509u, u_input.d.x, 27549u))), Struct_1(-46732i, -1120f, vec2<u32>(u_input.d.x, u_input.d.x), u_input.d), vec2<bool>(true, true))), -134f)) <= _wgslsmith_f_op_f32(abs(-1000f)), true, true), !func_4(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x), func_2(vec4<bool>(false, false, true, false), Struct_3(vec2<u32>(21982u, u_input.d.x), u_input.d), -381f), firstTrailingBit(-18202i), Struct_1(u_input.e, -524f, u_input.d.zw, u_input.d)) | all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), false)));
    let var_1 = u_input.a;
    let var_2 = ~u_input.d.x == 1u;
    let var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(737f - 470f), _wgslsmith_f_op_f32(abs(925f)), all(var_0.zw)))), -331f, 1f, _wgslsmith_f_op_f32(func_1(!var_0.x, Struct_4(var_0.wy, true, reverseBits(vec4<i32>(u_input.a, u_input.c, var_1, -2147483647i)), Struct_3(u_input.d.ww, u_input.d), Struct_1(-37640i, 266f, vec2<u32>(4294967295u, 0u), u_input.d)), Struct_1(~u_input.b.x, -2772f, u_input.d.yw, u_input.d), var_0.xx)))));
    let var_4 = func_2(select(!(!(!vec4<bool>(false, true, var_2, true))), vec4<bool>(!var_0.x || var_0.x, true, !var_0.x, select(func_2(vec4<bool>(var_0.x, var_2, var_0.x, var_2), Struct_3(vec2<u32>(19679u, u_input.d.x), vec4<u32>(u_input.d.x, 1u, 50096u, 4294967295u)), 1483f).b, var_2, var_0.x)), func_4(max(func_3(vec4<bool>(var_0.x, true, var_2, var_2)), vec4<i32>(u_input.b.x, 2147483647i, -1i, var_1) ^ vec4<i32>(0i, 7559i, 2147483647i, 0i)), Struct_2(-2147483647i, any(var_0)), ~(~1i), Struct_1(~29792i, _wgslsmith_f_op_f32(f32(-1f) * -530f), abs(vec2<u32>(1u, 41309u)), u_input.d))), Struct_3(vec2<u32>(119197u, 4294967295u), vec4<u32>(u_input.d.x, firstTrailingBit(~0u), 16030u, firstTrailingBit(countOneBits(13569u)))), 205f);
    let var_5 = var_3.x;
    var var_6 = vec2<i32>(var_1, var_4.a);
    let var_7 = ~u_input.d.x;
    var_6 = _wgslsmith_mult_vec2_i32(~((~vec2<i32>(50051i, 9212i) >> (~u_input.d.yw % vec2<u32>(32u))) >> (vec2<u32>(~49867u, _wgslsmith_mult_u32(var_7, var_7)) % vec2<u32>(32u))), firstTrailingBit(u_input.b.yz));
    let x = u_input.a;
    s_output = StorageBuffer(~1i, i32(-1i) * -1i, var_3);
}

