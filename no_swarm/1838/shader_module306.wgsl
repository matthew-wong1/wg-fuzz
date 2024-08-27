struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> bool {
    var var_0 = u_input.a.x;
    return true;
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-504f * 1149f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-328f, -495f)), -535f, all(vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1100f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f) * _wgslsmith_div_f32(663f, -440f)))), _wgslsmith_f_op_f32(min(-840f, _wgslsmith_f_op_f32(f32(-1f) * -575f)))));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_0.x)))), vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.a.x), u_input.a), -(~u_input.d), _wgslsmith_clamp_i32(-7416i, 1i, -u_input.a.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(var_0.xz)), var_0.wx)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.ww), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1912f, 138f)))), -166f), max(_wgslsmith_sub_vec3_i32(vec3<i32>(31264i, -1i, u_input.a.x) << (~vec3<u32>(u_input.e, 1u, 49452u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(39068i, u_input.d, u_input.d) ^ vec3<i32>(1757i, u_input.a.x, -9117i), vec3<i32>(0i, u_input.d, u_input.d) >> (u_input.c % vec3<u32>(32u)))), _wgslsmith_add_vec3_i32((vec3<i32>(u_input.d, u_input.a.x, -2147483647i) | vec3<i32>(u_input.d, u_input.a.x, 2147483647i)) | select(vec3<i32>(-15816i, u_input.d, u_input.d), vec3<i32>(19557i, 2147483647i, u_input.d), false), vec3<i32>(1i, 49622i, 89179i) << (vec3<u32>(u_input.e, u_input.b, 0u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -722f) - var_0.x), 980f))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, 1679f, 371f, var_0.x) + vec4<f32>(var_1.c, 1187f, var_1.a.a, var_0.x))))))), var_1.a.d);
    var var_3 = ~(~var_1.a.b);
    let var_4 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-(vec4<i32>(var_1.a.b.x, -1i, u_input.a.x, 1i) & vec4<i32>(1i, var_3.x, 39679i, var_3.x)), vec4<i32>(u_input.d, 1i, var_3.x, -2147483647i | var_3.x)) | (vec4<i32>(-39084i, firstTrailingBit(-2147483647i), min(var_3.x, -1i), firstTrailingBit(-20746i)) & ((vec4<i32>(-28693i, u_input.d, 9511i, var_3.x) ^ vec4<i32>(var_3.x, 37403i, 0i, -15632i)) | ~vec4<i32>(u_input.d, -12197i, var_3.x, -8344i))), -select(_wgslsmith_div_vec4_i32(~vec4<i32>(var_1.a.b.x, u_input.a.x, u_input.a.x, 1i), -vec4<i32>(0i, -38466i, var_1.b.x, var_3.x)), select(vec4<i32>(39236i, var_1.a.b.x, var_1.a.b.x, u_input.d), vec4<i32>(u_input.d, var_1.a.b.x, var_1.a.b.x, -37306i), func_2()), vec4<bool>(true, true, true, true)));
    return !vec2<bool>(_wgslsmith_f_op_f32(min(var_1.c, var_2.b)) <= var_0.x, false & any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = arg_0.b;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -609f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -844f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(479f - 589f)))));
    let var_1 = !vec4<bool>(true, select(true, func_2(), false), all(select(vec2<bool>(true, true), func_3(), func_3())), select(any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), 68138u < u_input.c.x, any(vec3<bool>(true, false, true))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f));
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(804f, -1295f))))), vec3<i32>(1i << (1u % 32u), u_input.a.x, -_wgslsmith_mult_i32(u_input.a.x, u_input.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1400f, 1123f))))) + _wgslsmith_f_op_vec2_f32(-arg_0.a.zz)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-397f)), arg_0.a.x))), reverseBits(vec3<i32>(_wgslsmith_mod_i32(1i, select(14323i, u_input.a.x, true)), max(-2147483647i, u_input.a.x), i32(-1i) * -31640i)), _wgslsmith_f_op_f32(round(399f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(813f, 1194f, 1238f, -288f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1604f, -563f, 324f, 532f))), all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -733f), _wgslsmith_f_op_f32(f32(-1f) * -865f), true)) * 143f)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, max(-u_input.a.x, u_input.a.x | 0i), -8524i, -8273i), min(-(~vec4<i32>(u_input.a.x, u_input.d, u_input.a.x, 1i)), select(reverseBits(vec4<i32>(1i, -1i, 12848i, 18877i)), abs(vec4<i32>(15780i, u_input.d, u_input.d, u_input.d)), vec4<bool>(false, false, true, false)))));
    var_0 = Struct_3(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1609f, 288f, -337f, var_0.a.d), vec4<f32>(-1213f, -419f, -1000f, -855f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.a, -864f, var_0.c, 634f), vec4<f32>(1526f, -736f, 232f, -896f), vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.a - 1124f)))), _wgslsmith_div_vec4_i32(abs(firstTrailingBit(vec4<i32>(20085i, u_input.d, u_input.d, var_0.a.b.x))), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -48211i, 1i, 19038i), vec4<i32>(u_input.d, var_0.a.b.x, -6801i, 39395i)))).a, min(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(3240i, var_0.b.x, u_input.a.x), var_0.b, vec3<i32>(-5648i, -41762i, 27083i)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(79124u, 2725u, 4294967295u), vec3<u32>(u_input.c.x, 32416u, 34164u)) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(2147483647i, var_0.b.x), max(20180i ^ var_0.b.x, 1i), _wgslsmith_mult_i32(var_0.a.b.x, -26476i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0.c) * var_0.c)), var_0.c));
    var var_1 = u_input.e;
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1112f, func_1(Struct_1(vec4<f32>(var_0.c, -1000f, 341f, 1143f), var_0.c), vec4<i32>(1i, -12597i, var_0.b.x, var_0.b.x)).a.a))), ~_wgslsmith_sub_vec3_i32(~var_0.b, vec3<i32>(7059i, u_input.a.x, 5215i) & var_0.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(_wgslsmith_f_op_f32(var_0.c * var_0.c), -452f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(-var_0.c)), var_0.a.d, all(vec2<bool>(true, true))))), vec3<i32>(u_input.d, var_0.a.b.x, 9970i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c - 157f))))))));
    let var_2 = Struct_3(var_0.a, vec3<i32>(_wgslsmith_mult_i32(var_0.b.x, -1i), 15775i, var_0.a.b.x) >> ((~u_input.c | firstLeadingBit(_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(u_input.e, u_input.c.x, 0u), vec3<u32>(u_input.e, 4294967295u, 4294967295u)))) % vec3<u32>(32u)), -357f);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.a.b.x, -4962i, 64177i, var_0.a.b.x), vec4<i32>(var_0.b.x, u_input.d, var_2.b.x, var_2.a.b.x)), countOneBits(1i), 0i));
}

