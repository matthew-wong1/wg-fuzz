struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0;
    var var_1 = u_input.b.x < 21450u;
    var_1 = true && (true || !(780f == _wgslsmith_f_op_f32(max(arg_0.a, arg_0.a))));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(749f)) + _wgslsmith_div_f32(arg_0.a, -288f)), -1000f, any(vec2<bool>(true, !select(true, true, true)))));
    var_2 = -841f;
    return 0u;
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = arg_0.b;
    let var_1 = 39684i;
    var_0 = arg_0.b;
    var_0 = Struct_1(~var_0.e, (min(firstTrailingBit(var_0.b), abs(-32802i)) >> (~_wgslsmith_mult_u32(var_0.c.x, 4294967295u) % 32u)) >> (_wgslsmith_add_u32(~var_0.c.x, ~54078u) % 32u), ~vec4<u32>(~var_0.c.x, arg_0.b.c.x, var_0.c.x, ~_wgslsmith_clamp_u32(var_0.c.x, 2570u, var_0.c.x)), (arg_0.b.d << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(15667u, u_input.a, 4294967295u, u_input.b.x), arg_0.b.c), vec4<u32>(var_0.c.x, 0u, 43287u, 4294967295u) & vec4<u32>(u_input.b.x, 4294967295u, var_0.c.x, 24173u)) % 32u)) & var_0.d, arg_0.b.a | ~_wgslsmith_add_vec3_i32(arg_0.b.e, vec3<i32>(-2147483647i, var_1, var_0.d)));
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a, -585f, 363f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1151f, arg_0.a, arg_0.a)) - vec3<f32>(770f, arg_0.a, -2018f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, arg_0.a), vec3<f32>(-2277f, 1108f, arg_0.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.a, 271f, -1041f))))))));
    return vec3<bool>(true, true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) <= -267f));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec3<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(8769u << (1u % 32u), func_2(Struct_2(840f, arg_0.b))), vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(5532u, 4294967295u, 10040u, u_input.b.x), arg_0.b.c))), u_input.b.yy);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-905f)) * 383f))), arg_0.b);
    let var_2 = Struct_1(countOneBits(var_1.b.e & _wgslsmith_sub_vec3_i32(arg_0.b.e, _wgslsmith_sub_vec3_i32(arg_0.b.a, var_1.b.a))), select(-29151i, arg_0.b.a.x, true || arg_2.x), ~abs(arg_0.b.c ^ _wgslsmith_div_vec4_u32(arg_0.b.c, var_1.b.c)), -arg_0.b.e.x ^ 45813i, var_1.b.e >> (select(~u_input.b, arg_0.b.c.xxz, select(arg_2, func_3(arg_0), !arg_2.x)) % vec3<u32>(32u)));
    let var_3 = arg_0;
    var_1 = arg_0;
    return ~abs(arg_0.b.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_dot_vec2_i32(func_1(arg_0, var_0.b.b, vec3<bool>(true, true, true)).xz, _wgslsmith_clamp_vec2_i32(arg_3.e.yz, ~vec2<i32>(var_0.b.a.x, -2147483647i), -(~arg_3.e.zx) >> (vec2<u32>(~var_0.b.c.x, ~4294967295u) % vec2<u32>(32u))));
    var_1 = select(-14657i, min(var_0.b.a.x, ~_wgslsmith_sub_i32(-1i, abs(23306i))), true);
    let var_2 = arg_0.b;
    var_1 = _wgslsmith_div_i32(select(-2147483647i, arg_0.b.a.x, ~abs(arg_2) < arg_2), func_1(arg_0, _wgslsmith_div_i32(firstTrailingBit(arg_2), _wgslsmith_div_i32(~2147483647i, _wgslsmith_sub_i32(arg_3.b, arg_3.e.x))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, any(vec3<bool>(false, false, true)), true), true)).x);
    return Struct_2(arg_0.a, Struct_1(vec3<i32>(_wgslsmith_sub_i32(var_0.b.a.x, 20190i), i32(-1i) * -68145i, 1i), abs(select(-17148i, -arg_0.b.d, true)), ~var_2.c, arg_3.d, arg_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(select(-302f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-740f, -2137f), _wgslsmith_f_op_f32(-284f + -570f))), all(vec3<bool>(false, true, false)))), Struct_1(func_1(Struct_2(847f, Struct_1(vec3<i32>(0i, -38129i, -2147483647i), -10444i, vec4<u32>(u_input.a, u_input.b.x, u_input.a, 153541u), 0i, vec3<i32>(-28560i, -23770i, 40867i))), -1i, select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), 0i, abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), 17706i, -vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(546f)) + _wgslsmith_f_op_f32(step(-1942f, -1619f))), 1384f, -269f, _wgslsmith_div_f32(-377f, _wgslsmith_f_op_f32(f32(-1f) * -894f))))), 1i, Struct_1(vec3<i32>(func_1(Struct_2(1765f, Struct_1(vec3<i32>(1i, 2147483647i, 57302i), 1i, vec4<u32>(u_input.a, 4294967295u, u_input.b.x, 4294967295u), 0i, vec3<i32>(-27003i, 16185i, 55954i))), 24152i, vec3<bool>(true, true, true)).x, -38592i, -firstLeadingBit(-14560i)), min(~_wgslsmith_clamp_i32(2147483647i, -19009i, -2147483647i), ~1i), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), _wgslsmith_div_u32(u_input.b.x, 10951u), ~u_input.b.x, ~28531u), vec4<u32>(~u_input.b.x, 37032u, 23727u, min(u_input.b.x, 1u))), -3140i, vec3<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(15622i, -34456i), vec2<i32>(49846i, 447i)), 1i) << (_wgslsmith_sub_vec3_u32(u_input.b, ~u_input.b) % vec3<u32>(32u))));
    var var_1 = countOneBits(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(var_0.b.c.zwx ^ select(var_0.b.c.yxx, vec3<u32>(u_input.b.x, var_0.b.c.x, u_input.b.x), false), max(var_0.b.c.wyw, _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(var_0.b.c.x, 4294967295u, var_0.b.c.x)))), ~var_0.b.c.x, _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(var_0.b.c.x, 0u, var_0.b.c.x)), ~u_input.b & vec3<u32>(4294967295u, u_input.b.x, 4294967295u))));
    var_0 = func_4(func_4(func_4(func_4(Struct_2(var_0.a, Struct_1(vec3<i32>(2147483647i, var_0.b.b, -1i), 0i, var_0.b.c, var_0.b.a.x, vec3<i32>(49114i, var_0.b.d, 0i))), vec4<f32>(1670f, 1289f, 346f, 1000f), var_0.b.b, Struct_1(vec3<i32>(0i, 0i, 1i), var_0.b.b, vec4<u32>(148389u, u_input.a, u_input.a, var_1.x), var_0.b.b, vec3<i32>(var_0.b.e.x, 0i, var_0.b.d))), vec4<f32>(_wgslsmith_f_op_f32(var_0.a - var_0.a), _wgslsmith_f_op_f32(var_0.a + var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1266f), _wgslsmith_f_op_f32(-1235f - var_0.a)), (var_0.b.d & 1i) ^ 2147483647i, func_4(Struct_2(578f, var_0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-785f, var_0.a, -360f, 530f) * vec4<f32>(718f, var_0.a, 135f, 397f)), -7622i ^ var_0.b.d, Struct_1(var_0.b.e, var_0.b.e.x, vec4<u32>(u_input.a, var_1.x, var_0.b.c.x, 0u), var_0.b.e.x, vec3<i32>(var_0.b.a.x, var_0.b.b, var_0.b.b))).b), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(abs(-117f)), _wgslsmith_f_op_f32(exp2(var_0.a)), -883f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-590f, var_0.a, var_0.a, var_0.a)))))), reverseBits(select(~var_0.b.e.x, _wgslsmith_div_i32(var_0.b.e.x, -5224i), true)), var_0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(150f, var_0.a, var_0.a, -762f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -1582f, -1000f, -159f) - vec4<f32>(-648f, 520f, -876f, -1632f))))) * vec4<f32>(_wgslsmith_f_op_f32(1826f - var_0.a), var_0.a, 1282f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(var_0.a + 112f)))), var_0.b.d, var_0.b);
    var var_2 = min(_wgslsmith_clamp_vec2_u32(var_0.b.c.xx, abs(firstTrailingBit(u_input.b.yy)), abs(var_0.b.c.zy) >> (select(var_1.xy, vec2<u32>(u_input.a, var_1.x), false) % vec2<u32>(32u))), ~(~vec2<u32>(u_input.a, 52246u))) >> (var_0.b.c.wy % vec2<u32>(32u));
    var var_3 = !all(vec4<bool>(true, true, true, true)) | !any(vec3<bool>(true, true, true));
    var var_4 = func_4(func_4(func_4(Struct_2(var_0.a, Struct_1(vec3<i32>(var_0.b.a.x, var_0.b.e.x, -37225i), -7891i, var_0.b.c, var_0.b.e.x, vec3<i32>(1i, var_0.b.e.x, -29945i))), vec4<f32>(1000f, var_0.a, var_0.a, 828f), var_0.b.b, func_4(Struct_2(-644f, Struct_1(vec3<i32>(var_0.b.e.x, var_0.b.d, var_0.b.e.x), 30039i, var_0.b.c, var_0.b.a.x, var_0.b.e)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1590f, 288f, var_0.a, 400f), vec4<f32>(-1202f, var_0.a, 152f, var_0.a), true)), _wgslsmith_div_i32(var_0.b.a.x, 0i), Struct_1(var_0.b.e, -14276i, var_0.b.c, var_0.b.a.x, vec3<i32>(var_0.b.b, var_0.b.a.x, var_0.b.d))).b), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -812f), _wgslsmith_f_op_f32(-var_0.a), -503f, 1318f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(468f, 105f, -1116f, var_0.a))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-435f, var_0.a, var_0.a, var_0.a)))))), ~reverseBits(-27446i), Struct_1(var_0.b.a >> (var_0.b.c.yzw % vec3<u32>(32u)), -var_0.b.e.x, ~vec4<u32>(17981u, 0u, 0u, u_input.b.x), -max(var_0.b.d, var_0.b.e.x), select(select(var_0.b.e, var_0.b.a, vec3<bool>(false, false, false)), vec3<i32>(var_0.b.b, 9983i, var_0.b.b), vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_0.a, var_0.a, 1454f), vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(true, true, true, false))) - vec4<f32>(var_0.a, 1346f, -447f, var_0.a))))), var_0.b.a.x, var_0.b);
    var var_5 = func_4(func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a))), func_4(Struct_2(var_4.a, Struct_1(var_0.b.e, var_4.b.b, vec4<u32>(19722u, 13779u, 0u, u_input.a), var_0.b.d, vec3<i32>(var_0.b.b, -9797i, var_4.b.a.x))), vec4<f32>(115f, 1449f, 2000f, var_0.a), max(var_4.b.a.x, var_4.b.d), func_4(Struct_2(-1096f, var_0.b), vec4<f32>(-178f, var_4.a, 1000f, 937f), -5810i, var_4.b).b).b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a, 1665f, var_4.a, 1000f)))))), abs(0i), var_0.b), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a) + vec4<f32>(var_0.a, 1469f, -1378f, var_0.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1069f, -1775f, 1000f)))))), -33883i, var_4.b);
    var_4 = Struct_2(var_5.a, Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_5.b.d, abs(var_4.b.a.x)), firstLeadingBit(vec3<i32>(27284i, -77i, var_4.b.a.x)) << ((vec3<u32>(var_5.b.c.x, 4294967295u, var_0.b.c.x) << (var_5.b.c.zxy % vec3<u32>(32u))) % vec3<u32>(32u))), select(12423i, -18810i, true), ~(~_wgslsmith_sub_vec4_u32(var_5.b.c, var_5.b.c)), var_4.b.e.x, vec3<i32>(-2147483647i, ~0i, ~var_4.b.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1505f)) * var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_5.a, _wgslsmith_f_op_f32(382f + var_5.a), any(vec4<bool>(false, false, true, true))))))));
}

