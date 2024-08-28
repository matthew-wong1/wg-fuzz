struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> vec3<bool> {
    return !vec3<bool>(any(vec3<bool>(true, all(vec4<bool>(true, false, false, false)), any(vec4<bool>(false, true, false, false)))), true, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 2147483647i), select(vec3<i32>(24282i, 0i, -6029i), vec3<i32>(0i, 2147483647i, 81315i), vec3<bool>(false, true, true))) > _wgslsmith_add_i32(countOneBits(2147483647i), i32(-1i) * -22928i));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = ~(~(-arg_1.x));
    var_0 = -2147483647i;
    let var_1 = all(func_2());
    let var_2 = !var_1;
    let var_3 = vec2<bool>(all(func_2().zx), var_2);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(207f, _wgslsmith_f_op_f32(f32(-1f) * -1997f), 734f) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_3.b.d * vec3<f32>(-233f, 464f, -311f))))) + vec3<f32>(-750f, _wgslsmith_div_f32(-623f, _wgslsmith_f_op_f32(ceil(arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.d.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.d.x, arg_2.x, 541f) + _wgslsmith_f_op_vec3_f32(floor(arg_3.b.d))) - arg_2))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.d.x, -945f), arg_2.d.xy, all(vec2<bool>(true, arg_0.x))))));
    let var_1 = -1873f;
    var var_2 = Struct_1(_wgslsmith_sub_i32(-arg_2.b | arg_2.b, arg_2.b), 14097i, 2147483647i, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(max(570f, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - 1f)))));
    var_2 = arg_2;
    let var_3 = select(vec4<i32>(537i, reverseBits(17657i), _wgslsmith_dot_vec3_i32(~vec3<i32>(51673i, var_2.c, 2147483647i), vec3<i32>(-1i, 2147483647i, var_2.c)), _wgslsmith_mult_i32(var_2.b, var_2.b)) | ~vec4<i32>(_wgslsmith_add_i32(15882i, var_2.c), ~(-1759i), arg_2.c, var_2.c), _wgslsmith_mod_vec4_i32(-_wgslsmith_add_vec4_i32(-vec4<i32>(1i, arg_2.c, -43921i, var_2.a), vec4<i32>(-2147483647i, arg_2.a, -2147483647i, var_2.b)), countOneBits(min(vec4<i32>(-22677i, arg_2.b, arg_2.b, 77031i) ^ vec4<i32>(-2147483647i, arg_2.b, var_2.b, arg_2.c), vec4<i32>(1i, 47834i, 9077i, var_2.a)))), !func_2().x);
    return arg_2;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    var var_0 = ~(24918u | u_input.b.x);
    var_0 = 0u;
    var_0 = u_input.b.x;
    var var_1 = abs(u_input.c) & (~(~(4294967295u ^ u_input.b.x)) ^ firstTrailingBit(~u_input.b.x));
    let var_2 = Struct_2(-reverseBits(vec4<i32>(-1i) * -vec4<i32>(arg_1.a, -1i, arg_1.a, arg_1.b)), arg_1);
    return !(!vec4<bool>(arg_0, _wgslsmith_f_op_f32(trunc(1056f)) < -1006f, any(vec3<bool>(arg_0, arg_0, false)), !all(vec3<bool>(arg_0, true, false))));
}

fn func_5(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = 0i;
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(5247i, -52101i, -1i), vec3<i32>(-47072i, -2147483647i, -15720i), arg_0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 25334i, 2147483647i), vec3<i32>(-31656i, 55279i, 13067i))), -54862i)), _wgslsmith_add_i32(_wgslsmith_div_i32(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 48372i, -537i), vec3<i32>(-1533i, -774i, 957i))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-2147483647i, -48412i), vec2<i32>(14243i, -1i)), vec2<i32>(-36162i, 11391i))), -21171i), -countOneBits(func_3(vec2<bool>(true, true), ~u_input.b, func_3(vec2<bool>(true, arg_0.x), vec3<u32>(u_input.a, u_input.c, u_input.c), Struct_1(2147483647i, -2147483647i, -1i, vec3<f32>(-511f, 2267f, 1000f)))).c), vec3<f32>(160f, -835f, _wgslsmith_f_op_f32(f32(-1f) * -771f)));
    var var_2 = arg_0.wz;
    var var_3 = _wgslsmith_mult_vec2_i32(-(vec2<i32>(var_1.b, var_1.b) ^ (vec2<i32>(-2147483647i, 35006i) ^ vec2<i32>(var_1.b, 16467i))) & ~(~select(vec2<i32>(var_1.a, var_1.c), vec2<i32>(var_1.b, 1i), false)), -(select(-vec2<i32>(-5331i, 1i), ~vec2<i32>(0i, var_1.c), arg_0.wz) ^ abs(firstTrailingBit(vec2<i32>(-2147483647i, -49425i)))));
    var_3 = ~(~(abs(-vec2<i32>(var_1.b, var_3.x)) >> (firstLeadingBit(countOneBits(vec2<u32>(48888u, u_input.b.x))) % vec2<u32>(32u))));
    return Struct_1(13947i, ~(-2147483647i), _wgslsmith_sub_i32(~(-_wgslsmith_clamp_i32(0i, -1i, var_3.x)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, i32(-1i) * -1i, 27894i & var_3.x), reverseBits(-1i))), var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~u_input.c, ~firstTrailingBit(abs(0u)) << (~(~4346u) % 32u), 4294967295u, _wgslsmith_mult_u32(u_input.d, 0u));
    let var_1 = ~min(1u, ~_wgslsmith_add_u32(reverseBits(1u), 0u));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1113f)), _wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1425f + 498f))), 1000f);
    var var_3 = firstTrailingBit(vec4<u32>(1u, var_1, _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(var_0.zw, var_0.xz), firstTrailingBit(var_0.x)), ~u_input.a));
    var_3 = var_0;
    var var_4 = func_5(func_4(!((0u <= u_input.b.x) | true), func_3(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), var_0.zyw, Struct_1(1i, 1i, _wgslsmith_mult_i32(-1i, 1i), _wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(29869i, -1382i, 1i, 2147483647i), vec3<i32>(2147483647i, 0i, -2147483647i), vec3<f32>(-938f, var_2.x, 399f), Struct_2(vec4<i32>(-1i, -53025i, -1i, 2147483647i), Struct_1(2147483647i, -40643i, 0i, vec3<f32>(761f, var_2.x, -115f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1020f + _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x * 395f), _wgslsmith_f_op_f32(f32(-1f) * -659f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(reverseBits(var_4.b), max(-636i, _wgslsmith_mult_i32(max(var_4.b, var_4.b), _wgslsmith_div_i32(var_4.b, var_4.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_4.d.x, -1219f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(607f, -122f, var_2.x, var_4.d.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-591f, -381f, var_4.d.x, 1616f) - vec4<f32>(var_2.x, var_2.x, -3148f, 368f)), vec4<f32>(-1101f, 1110f, -1000f, -1086f)))));
}

