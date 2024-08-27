struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_2(arg_1.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, -1490f, arg_1.b, arg_1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_1.b, arg_1.b, arg_1.b)), false)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-540f, arg_1.b, -1727f, arg_1.b)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.b, -1000f, arg_1.b, 1269f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-479f, 1430f, arg_1.b, 1000f))))))));
    var var_1 = select(select(!vec3<bool>(all(vec4<bool>(true, true, false, false)), any(vec3<bool>(true, false, false)), true), !vec3<bool>(any(vec2<bool>(true, false)), false, all(vec3<bool>(true, false, false))), false), vec3<bool>(all(vec3<bool>(true, true, true)) || select(true, any(vec4<bool>(false, true, false, true)), true), true || all(vec2<bool>(true, true)), select(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true)), true, false)), select(select(vec3<bool>(arg_1.d <= 0u, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(all(vec3<bool>(false, false, true)), any(vec4<bool>(false, true, true, false)), var_0.b.x != var_0.b.x)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), true), !(!(arg_0 != arg_1.d))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.b.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, 901f))) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x), vec2<f32>(2459f, arg_1.b)))), _wgslsmith_f_op_vec2_f32(-var_0.b.ww), u_input.a <= -_wgslsmith_clamp_i32(arg_1.a.x, 9531i, u_input.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.wy - vec2<f32>(-333f, _wgslsmith_f_op_f32(-arg_1.b)))));
    var var_3 = reverseBits(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, arg_0, arg_1.d, 29688u)), vec4<u32>(arg_0, arg_0, 13246u, 25213u) & vec4<u32>(arg_0, 45287u, arg_1.c, 1u)) << (((vec4<u32>(0u, 50498u, arg_1.d, 49712u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(51576u, 60506u, arg_0, arg_1.c), vec4<u32>(9048u, arg_1.c, 94696u, 1u), vec4<u32>(1u, 1u, 1u, arg_0))) << (reverseBits(~vec4<u32>(5449u, 13456u, arg_1.c, 66225u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_3 = vec4<u32>(1u | _wgslsmith_sub_u32(1u, ~var_3.x), select(~4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, arg_1.d), var_3.zw), min(var_3.yy, vec2<u32>(1u, var_3.x))), var_1.x), 0u, arg_0) << (max(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(60964u, var_3.x, arg_0, arg_1.d)), countOneBits(reverseBits(vec4<u32>(1u, arg_0, 22173u, 46778u)))), ~abs(reverseBits(vec4<u32>(0u, 20957u, 4294967295u, 35349u)))) % vec4<u32>(32u));
    return var_0.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    let var_0 = arg_0.b.zxw;
    let var_1 = ~13553u;
    let var_2 = _wgslsmith_add_u32(firstLeadingBit(var_1), var_1);
    let var_3 = arg_0.b.yzx;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(731f, _wgslsmith_f_op_f32(-var_3.x)));
    return Struct_1(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-409f + arg_0.b.x))) * var_3.x), ~24646u, var_2, _wgslsmith_mult_i32(min(arg_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-27914i, 0i, u_input.a), vec3<i32>(19955i, arg_0.a.x, u_input.a))), func_3(var_2, Struct_1(vec2<i32>(14256i, u_input.a), var_3.x, 0u, var_2, -11370i))) >> (~(~4294967295u) % 32u));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> bool {
    let var_0 = ~max(~u_input.a, ~(~min(arg_1.x, 0i)));
    let var_1 = Struct_2(-(_wgslsmith_add_vec2_i32(~arg_1.yy, abs(arg_1.xz)) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(303f, -2335f, -1567f, -515f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-679f, -274f, 1284f, 678f), vec4<f32>(-440f, -1733f, 1426f, 1068f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1739f, 749f, 1000f, -976f), vec4<f32>(-539f, -460f, 1108f, -452f), vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x)))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(351f, -1413f, arg_2.x)), 1f, -1000f, _wgslsmith_f_op_f32(102f - 771f))))));
    var var_2 = func_2(var_1, -33714i);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, 445f, -189f, var_1.b.x) + vec4<f32>(var_2.b, var_1.b.x, -640f, var_2.b))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(var_1.b)), var_1.b, arg_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b + _wgslsmith_div_vec4_f32(vec4<f32>(531f, var_1.b.x, -823f, var_2.b), var_1.b)))) * var_1.b);
    return any(select(!vec3<bool>(32587u != var_2.d, arg_2.x, false), select(select(!vec3<bool>(arg_2.x, arg_2.x, true), !vec3<bool>(false, arg_2.x, arg_2.x), select(vec3<bool>(true, arg_2.x, arg_2.x), vec3<bool>(true, arg_2.x, true), true)), select(!vec3<bool>(true, true, arg_2.x), select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, true, arg_2.x), false), vec3<bool>(false, arg_2.x, true)), select(select(vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), true), select(vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(false, false, arg_2.x), false), select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(arg_2.x, false, arg_2.x)))), select(vec3<bool>(true, all(arg_2), !arg_2.x), vec3<bool>(!arg_2.x, arg_2.x, any(arg_2)), select(vec3<bool>(false, true, true), !vec3<bool>(arg_2.x, arg_2.x, arg_2.x), !arg_2.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = func_2(Struct_2(arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-996f, 259f, arg_1.b, arg_1.b), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(496f, arg_1.b, 885f, -237f)))))), -11048i);
    var var_1 = arg_0.x;
    return Struct_2(vec2<i32>(-27301i, abs(_wgslsmith_dot_vec3_i32(max(vec3<i32>(arg_1.e, var_0.e, -2147483647i), vec3<i32>(u_input.a, -21921i, 2147483647i)), ~vec3<i32>(var_0.a.x, u_input.a, -7796i)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.b, 992f, -432f, var_0.b)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!select(vec3<bool>(any(vec4<bool>(true, false, false, true)), func_1(vec4<i32>(-18283i, u_input.a, u_input.a, u_input.a), vec3<i32>(0i, u_input.a, 1i), vec2<bool>(false, false)), true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), select(true, false, false))), func_2(Struct_2(vec2<i32>(func_2(Struct_2(vec2<i32>(u_input.a, 2147483647i), vec4<f32>(-283f, 1258f, -729f, 579f)), -2147483647i).e, countOneBits(u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(110f, 645f, 1147f, 1000f))))), _wgslsmith_add_i32(max(~u_input.a, ~u_input.a), -21766i)));
    var_0 = func_4(!vec3<bool>(_wgslsmith_f_op_f32(-var_0.b.x) >= _wgslsmith_f_op_f32(-var_0.b.x), any(vec2<bool>(true, true)), false), func_2(Struct_2(vec2<i32>(1i, firstLeadingBit(var_0.a.x)), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(trunc(var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(1000f - var_0.b.x))), u_input.a));
    let var_1 = any(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), true)));
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 24625u, 0u) << (vec4<u32>(1u, 0u, 1u, 0u) % vec4<u32>(32u)), abs(vec4<u32>(168946u, 3162u, 1u, 21118u))), 1u, ~56484u, ~1u), _wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(72377u), 4294967295u, ~62244u, ~1u), ~abs(vec4<u32>(49774u, 0u, 24667u, 27330u)))) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~select(vec4<u32>(50442u, 4294967295u, 105262u, 1u), vec4<u32>(95225u, 7903u, 17049u, 7513u), var_1));
    let var_3 = vec3<bool>(!(!any(vec2<bool>(true, true))), u_input.a >= ~firstTrailingBit(66191i), !(!any(vec4<bool>(var_1, false, false, false))));
    let var_4 = func_2(func_4(var_3, Struct_1(var_0.a >> (vec2<u32>(0u, var_2.x) % vec2<u32>(32u)), var_0.b.x, countOneBits(1u), var_2.x, 2147483647i)), -_wgslsmith_mod_i32(-19439i, -firstTrailingBit(u_input.a)));
    let var_5 = ~(-abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 26482i, 1i, -1i), vec4<i32>(0i, var_0.a.x, var_4.e, var_4.a.x)))) >> (~countOneBits(~vec4<u32>(0u, 4294967295u, var_2.x, var_2.x) >> ((vec4<u32>(var_4.c, 0u, 2658u, var_2.x) >> (vec4<u32>(var_2.x, 4294967295u, 1u, var_2.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(var_0.b, vec4<f32>(var_0.b.x, var_4.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(547f, -1384f))))));
}

