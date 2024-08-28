struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_0.b.wyz;
    let var_1 = arg_2;
    var var_2 = arg_0;
    var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-234f * _wgslsmith_f_op_f32(select(-502f, var_2.e, var_0.x)))))), !vec4<bool>(true, all(select(var_2.b, vec4<bool>(true, false, var_2.b.x, false), var_2.b.x)), false, _wgslsmith_f_op_f32(ceil(arg_0.a)) > _wgslsmith_f_op_f32(1687f - 425f)), ~vec4<u32>(0u, 0u, 7509u, _wgslsmith_clamp_u32(reverseBits(arg_0.c.x), 4294967295u ^ var_2.d.x, abs(var_2.d.x))), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(abs(4294967295u), abs(39361u)), var_2.c.wx), max(vec2<u32>(var_2.d.x, 11395u), var_2.d) ^ var_2.d), _wgslsmith_f_op_f32(arg_0.e + arg_0.a));
    let var_3 = 4294967295u;
    return arg_0;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_1 = any(vec4<bool>(_wgslsmith_add_u32(~arg_0.x, ~u_input.c) >= _wgslsmith_dot_vec3_u32(arg_0, ~arg_0), false, true, true));
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_1.x)))) != -1000f;
    var var_2 = Struct_2(vec3<i32>(~_wgslsmith_sub_i32(u_input.b, -1i), _wgslsmith_mod_i32(max(u_input.a, u_input.d.x), abs(2147483647i)), reverseBits(u_input.a)) >> (vec3<u32>(_wgslsmith_add_u32(~u_input.c, u_input.c), u_input.c, arg_0.x) % vec3<u32>(32u)));
    return Struct_1(func_1(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-793f - -2477f))), func_1(func_1(Struct_1(arg_1.x, vec4<bool>(false, true, true, false), vec4<u32>(42765u, arg_0.x, arg_0.x, u_input.c), arg_0.zz, var_0), Struct_2(var_2.a), Struct_2(var_2.a)), Struct_2(var_2.a), Struct_2(vec3<i32>(0i, 37336i, var_2.a.x))).b, _wgslsmith_mult_vec4_u32(vec4<u32>(14644u, u_input.c, u_input.c, 58499u) | vec4<u32>(u_input.c, arg_0.x, 41120u, arg_0.x), vec4<u32>(35437u, u_input.c, u_input.c, u_input.c)), vec2<u32>(select(9228u, 12195u, true), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1831f, 1113f))), Struct_2(~vec3<i32>(var_2.a.x, 2147483647i, -2147483647i) ^ vec3<i32>(var_2.a.x, -8768i, var_2.a.x)), Struct_2(vec3<i32>(_wgslsmith_clamp_i32(1453i, 0i, u_input.b), _wgslsmith_add_i32(-2147483647i, var_2.a.x), -50090i))).a, vec4<bool>(622f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-458f)) * func_1(Struct_1(var_0, vec4<bool>(false, false, false, true), vec4<u32>(u_input.c, 7403u, u_input.c, 4294967295u), vec2<u32>(u_input.c, arg_0.x), arg_1.x), Struct_2(var_2.a), Struct_2(vec3<i32>(51528i, u_input.e, u_input.b))).a), true, (_wgslsmith_add_i32(0i, 2147483647i) << (arg_0.x % 32u)) > var_2.a.x, true), vec4<u32>(~max(4637u, 4294967295u), firstLeadingBit(abs(226u) << (firstTrailingBit(15884u) % 32u)), ~abs(u_input.c), reverseBits(4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x | ~arg_0.x, _wgslsmith_mult_u32(arg_0.x, u_input.c)), ~arg_0.zy), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_3(vec3<u32>(39122u, arg_0.d.x, arg_0.c.x), vec2<f32>(384f, -1000f)).a, _wgslsmith_f_op_f32(-160f + -745f)))) * 210f)));
    var var_1 = max(1u, func_3(~vec3<u32>(u_input.c, 1u, u_input.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.e, 225f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(339f, var_0), vec2<f32>(arg_1, var_0), arg_0.b.xw)))).d.x << (u_input.c % 32u));
    let var_2 = arg_0.b.zww;
    let var_3 = -(1i | -_wgslsmith_sub_i32(u_input.d.x, u_input.b));
    var_1 = ~abs(firstLeadingBit(~(~arg_0.d.x)));
    return -(~(-(vec3<i32>(1i, 20056i, -13745i) ^ vec3<i32>(u_input.d.x, var_3, -49462i)) >> (arg_0.c.wyz % vec3<u32>(32u))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> bool {
    var var_0 = u_input.c;
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec2_i32(firstTrailingBit(~(-u_input.d)), arg_2.xx));
    var_1 = -u_input.b;
    var_0 = arg_1.c.x;
    var_0 = _wgslsmith_div_u32(arg_3.d.x, arg_1.c.x);
    return arg_3.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    var var_0 = func_5(Struct_2(arg_1), func_1(func_1(Struct_1(1551f, func_1(Struct_1(330f, vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<u32>(u_input.c, u_input.c, 35094u, 6655u), vec2<u32>(78879u, 1u), 951f), Struct_2(vec3<i32>(u_input.d.x, 42619i, arg_1.x)), Struct_2(arg_1)).b, arg_0.c, min(arg_0.d, arg_0.d), arg_0.e), Struct_2(arg_1), Struct_2(_wgslsmith_sub_vec3_i32(arg_1, vec3<i32>(u_input.b, 49613i, arg_1.x)))), Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, 34687i, arg_1.x), arg_1, firstTrailingBit(arg_1))), Struct_2(abs(_wgslsmith_mult_vec3_i32(arg_1, vec3<i32>(1i, u_input.b, u_input.a))))), _wgslsmith_clamp_vec3_i32(arg_1 & firstTrailingBit(vec3<i32>(arg_1.x, -51630i, 1i)), func_4(func_3(arg_0.c.zxw, vec2<f32>(arg_0.e, arg_0.e)), _wgslsmith_f_op_f32(-203f - arg_0.e)), -_wgslsmith_mod_vec3_i32(arg_1, vec3<i32>(24459i, u_input.a, arg_1.x))) & -vec3<i32>(~(-2147483647i), _wgslsmith_mod_i32(arg_1.x, 2147483647i), 15924i), arg_0);
    var_0 = true;
    var_0 = !(_wgslsmith_add_i32(1i, _wgslsmith_div_i32(max(arg_1.x, 35484i), max(arg_1.x, -1i))) == arg_1.x);
    var var_1 = Struct_2(~vec3<i32>(arg_1.x, u_input.a, countOneBits(1i)) & vec3<i32>(~(-2147483647i), abs(_wgslsmith_mult_i32(u_input.a, -1i)), ~(~u_input.e)));
    let var_2 = select(u_input.d.x << (4294967295u % 32u), u_input.d.x | 33662i, true);
    return 13446i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(-_wgslsmith_div_i32(func_2(func_1(Struct_1(-1641f, vec4<bool>(false, false, true, false), vec4<u32>(51340u, u_input.c, 39317u, u_input.c), vec2<u32>(u_input.c, 1u), -171f), Struct_2(vec3<i32>(u_input.e, u_input.d.x, u_input.e)), Struct_2(vec3<i32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, 40740i, u_input.e), vec3<i32>(0i, -41292i, 33437i))), -1i), u_input.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, -var_0, _wgslsmith_sub_vec2_i32(u_input.d, -u_input.d), -311f);
}

