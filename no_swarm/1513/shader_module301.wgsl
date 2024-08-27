struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(true, -(((-15560i >> (u_input.a % 32u)) | 1i) >> ((~34587u ^ u_input.a) % 32u)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-42183i, 1i, 26241i), vec3<i32>(59641i, 24943i, 1i))), vec3<i32>(-2147483647i, i32(-1i) * -2147483647i, 0i), vec3<i32>(-2821i, i32(-1i) * -19058i, 56323i)), -firstTrailingBit(vec3<i32>(-32969i, 2147483647i, 1i) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))), vec2<u32>(u_input.a, 12054u), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-30711i, 4624i), 1i)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(23150i, 1i), -vec2<i32>(1i, -30026i)), -2147483647i)));
    var var_1 = Struct_1(var_0.a, var_0.b, var_0.c, var_0.d, var_0.c.xz);
    var var_2 = false;
    let var_3 = Struct_1(select(false, all(select(vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(false, var_0.a, true, false), false)) | true, var_1.a), _wgslsmith_dot_vec3_i32(firstLeadingBit(select(vec3<i32>(6825i, var_0.e.x, 2147483647i), var_1.c, vec3<bool>(false, false, false))) >> (reverseBits(firstLeadingBit(vec3<u32>(var_1.d.x, 61929u, var_0.d.x))) % vec3<u32>(32u)), abs(_wgslsmith_clamp_vec3_i32(var_1.c, vec3<i32>(0i, var_0.c.x, var_1.b), var_0.c))), _wgslsmith_clamp_vec3_i32(~var_1.c, abs(vec3<i32>(1i, var_0.c.x, var_0.c.x)), -(var_0.c | vec3<i32>(var_1.c.x, var_0.c.x, 0i))) & vec3<i32>(abs(1i), -9340i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, 49896i), 1i, min(var_1.e.x, 1i))), vec2<u32>(var_0.d.x, ~u_input.a), -vec2<i32>(~var_1.b, firstTrailingBit(var_0.e.x)) | var_0.c.xy);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-103f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f)), false)), 1f) * -934f);
    return var_3.a;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2.a;
    let var_1 = arg_2.b;
    var_0 = func_3();
    var var_2 = select(u_input.a ^ _wgslsmith_sub_u32(16426u, 0u), 0u, all(vec3<bool>(var_1 >= var_1, false, arg_2.a))) & 42104u;
    var var_3 = Struct_1(true, _wgslsmith_dot_vec3_i32(arg_2.c | arg_2.c, vec3<i32>(~max(arg_2.b, var_1), 2147483647i, arg_2.b)), -arg_2.c, arg_2.d, _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(arg_2.e, vec2<i32>(arg_2.b, countOneBits(var_1))), vec2<i32>(27515i, 37500i | var_1)));
    return _wgslsmith_f_op_f32(floor(1f));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2.a;
    var_0 = true;
    var_0 = arg_2.a;
    var_0 = true;
    var var_1 = _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(~arg_3.d.x, 36343u << (arg_2.d.x % 32u), firstTrailingBit(6196u), 60610u) >> (_wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, 0u, 0u, 32781u), vec4<u32>(0u, 1u, 4294967295u, arg_2.d.x), vec4<bool>(true, arg_2.a, true, false)), vec4<u32>(arg_2.d.x, u_input.a, 43259u, arg_2.d.x) >> (vec4<u32>(7180u, arg_2.d.x, 1u, 49225u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(max(1u, u_input.a), ~8971u, arg_2.d.x, 37574u), max(max(min(vec4<u32>(0u, 26903u, u_input.a, arg_2.d.x), vec4<u32>(0u, arg_3.d.x, u_input.a, u_input.a)), vec4<u32>(25694u, 71284u, 35146u, arg_2.d.x)), vec4<u32>(arg_3.d.x, ~0u, firstLeadingBit(4294967295u), countOneBits(arg_3.d.x)))));
    return arg_3;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(230f)))))));
    let var_1 = arg_1.x;
    let var_2 = func_4(_wgslsmith_f_op_f32(func_2(abs(~(arg_0.d.x << (54063u % 32u))), ~(~vec3<u32>(4166u, arg_0.d.x, 1u)), Struct_1(true, arg_1.x, vec3<i32>(_wgslsmith_mult_i32(-1i, arg_3.c.x), -35158i, _wgslsmith_clamp_i32(2147483647i, arg_1.x, 46021i)), arg_0.d, vec2<i32>(var_1, arg_1.x)))), select(vec3<bool>(var_0.x < -759f, arg_2, true), vec3<bool>(true, false, false), !(!select(vec3<bool>(arg_2, arg_3.a, true), vec3<bool>(arg_2, true, arg_2), arg_2))), arg_3, arg_3);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(115f, var_0.x, arg_3.a)))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_0.x);
    let var_3 = vec3<u32>(select(~arg_0.d.x, ~(arg_3.d.x ^ var_2.d.x) << (var_2.d.x % 32u), arg_3.a), ~7924u, 14067u);
    return ~(-arg_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-_wgslsmith_mod_i32(1i, -1i), ~(-32659i) >> (_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u)), _wgslsmith_add_i32(-1i, _wgslsmith_div_i32(firstLeadingBit(-7162i), func_1(Struct_1(true, -1i, vec3<i32>(-9279i, 0i, 65939i), vec2<u32>(4306u, 48450u), vec2<i32>(16003i, 1i)), vec2<i32>(-29090i, -58990i), true, Struct_1(true, 2147483647i, vec3<i32>(18041i, 52581i, -5759i), vec2<u32>(4294967295u, u_input.a), vec2<i32>(51817i, 9851i)))))), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, countOneBits(1i)), 1i, 1i), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), firstTrailingBit(vec2<u32>(u_input.a, u_input.a))) & (select(vec2<u32>(0u, 11576u), vec2<u32>(1u, u_input.a), vec2<bool>(true, false)) ^ (vec2<u32>(25660u, 0u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(91884u, u_input.a) >> (vec2<u32>(27440u, u_input.a) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, u_input.a))), select(~min(vec2<u32>(31159u, 114447u), vec2<u32>(32511u, 0u)), vec2<u32>(_wgslsmith_sub_u32(1u, 0u), 24939u), !any(vec4<bool>(false, true, false, false)))), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 0i, 11371i), countOneBits(vec3<i32>(-34272i, -1i, 2147483647i))), 0i), 1i));
    var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -283f)))), vec3<bool>(true, false, var_0.a), Struct_1(false, var_0.c.x, var_0.c, var_0.d, select(var_0.c.yy, vec2<i32>(-5748i, 36965i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), true)), Struct_1(!func_4(-837f, vec3<bool>(var_0.a, var_0.a, var_0.a), func_4(-223f, vec3<bool>(false, var_0.a, var_0.a), Struct_1(var_0.a, var_0.c.x, vec3<i32>(var_0.c.x, var_0.e.x, var_0.e.x), vec2<u32>(1u, 16111u), var_0.c.zz), Struct_1(false, var_0.e.x, vec3<i32>(var_0.e.x, var_0.c.x, 0i), var_0.d, vec2<i32>(var_0.c.x, var_0.e.x))), func_4(-122f, vec3<bool>(var_0.a, var_0.a, var_0.a), Struct_1(false, 30308i, var_0.c, var_0.d, var_0.c.zz), Struct_1(var_0.a, var_0.b, vec3<i32>(var_0.b, var_0.c.x, -2147483647i), var_0.d, var_0.c.zz))).a, -func_1(func_4(-387f, vec3<bool>(var_0.a, var_0.a, var_0.a), Struct_1(true, var_0.c.x, var_0.c, vec2<u32>(var_0.d.x, 4294967295u), var_0.e), Struct_1(var_0.a, -1i, vec3<i32>(var_0.e.x, -39046i, 0i), vec2<u32>(var_0.d.x, 25189u), var_0.e)), var_0.c.xy, false, func_4(-1018f, vec3<bool>(false, false, true), Struct_1(true, var_0.b, vec3<i32>(-38081i, var_0.b, var_0.c.x), var_0.d, var_0.e), Struct_1(var_0.a, -1i, vec3<i32>(var_0.e.x, var_0.c.x, var_0.c.x), var_0.d, vec2<i32>(37512i, var_0.b)))), vec3<i32>(min(_wgslsmith_mult_i32(var_0.b, -2147483647i), 0i), ~var_0.e.x, -8860i), _wgslsmith_sub_vec2_u32(var_0.d, var_0.d), var_0.c.xy));
    var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_0.d.x, vec3<u32>(18765u, var_0.d.x, 0u), Struct_1(false, var_0.c.x, vec3<i32>(-30456i, 56461i, -25393i), var_0.d, var_0.c.yz)))), -1300f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1203f * _wgslsmith_f_op_f32(floor(-730f))))), !select(!(!vec3<bool>(false, var_0.a, var_0.a)), vec3<bool>(true, any(vec3<bool>(false, true, false)), var_0.a != true), all(vec4<bool>(true, false, var_0.a, var_0.a))), func_4(_wgslsmith_f_op_f32(f32(-1f) * -696f), vec3<bool>((u_input.a < 1u) | all(vec3<bool>(true, var_0.a, false)), false, true), func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1564f, -1000f)), !vec3<bool>(true, var_0.a, false), func_4(_wgslsmith_f_op_f32(-1000f * -304f), select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(false, false, false), vec3<bool>(var_0.a, var_0.a, true)), func_4(-1739f, vec3<bool>(true, var_0.a, true), Struct_1(var_0.a, var_0.b, vec3<i32>(2147483647i, var_0.c.x, var_0.b), var_0.d, var_0.c.yx), Struct_1(false, -15899i, vec3<i32>(31410i, var_0.b, -1i), vec2<u32>(u_input.a, 4294967295u), var_0.c.xz)), func_4(-1000f, vec3<bool>(var_0.a, var_0.a, false), Struct_1(true, var_0.c.x, var_0.c, var_0.d, vec2<i32>(0i, -1i)), Struct_1(true, var_0.b, var_0.c, var_0.d, var_0.e))), Struct_1(true, -14390i << (1u % 32u), ~var_0.c, var_0.d, ~var_0.e)), Struct_1((var_0.d.x != 67132u) && any(vec4<bool>(true, var_0.a, true, var_0.a)), max(2147483647i, var_0.b), abs(_wgslsmith_mod_vec3_i32(var_0.c, var_0.c)), vec2<u32>(var_0.d.x | 0u, u_input.a), vec2<i32>(var_0.c.x, -var_0.c.x))), Struct_1((2147483647i >> (u_input.a % 32u)) < 2147483647i, 50300i, var_0.c, reverseBits(max(var_0.d, max(vec2<u32>(u_input.a, 44571u), var_0.d))), firstTrailingBit(-vec2<i32>(var_0.e.x, 6312i))));
    let var_1 = 1u;
    let var_2 = var_0.c.x;
    var var_3 = reverseBits((_wgslsmith_add_u32(var_0.d.x << (var_1 % 32u), abs(var_1)) & 20497u) << (4294967295u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1416f, -2154f)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1135f, 1589f, -159f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(170f)) + -927f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1483f + -801f), _wgslsmith_f_op_f32(-1439f + 686f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-260f, -1267f))))))));
}

