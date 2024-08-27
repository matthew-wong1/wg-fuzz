struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> i32 {
    let var_0 = ~(-(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 7808i), vec2<i32>(22564i, u_input.c))) & vec2<i32>(-2147483647i, _wgslsmith_add_i32(u_input.b, 0i))));
    var var_1 = vec3<bool>(any(vec4<bool>(true, true, true, true)), _wgslsmith_mod_i32(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.x, u_input.c, var_0.x) >> (vec4<u32>(1u, 53014u, 4294967295u, 1u) % vec4<u32>(32u)), select(vec4<i32>(5625i, u_input.b, 32874i, 60214i), vec4<i32>(u_input.a, -2147483647i, 1i, u_input.c), vec4<bool>(true, false, true, false)))) != 1i, !(!select(any(vec4<bool>(true, true, true, false)), false, any(vec4<bool>(true, true, true, false)))));
    let var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(12527u, 0u, 1u), _wgslsmith_mod_vec3_u32(~vec3<u32>(18510u, 10813u, 1u) << (select(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 1u), true) % vec3<u32>(32u)), ~vec3<u32>(1u, 1u, 1u))), vec3<u32>(1u, 1u, 1u) ^ min(~vec3<u32>(1u, 1u, 1u), select(vec3<u32>(0u, 54270u, 13091u), vec3<u32>(53273u, 1u, 39226u), vec3<bool>(var_1.x, true, var_1.x)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(22091u, 61292u, 0u), vec3<u32>(58033u, 68206u, 32509u)) % vec3<u32>(32u))));
    var var_3 = Struct_1(countOneBits(2147483647i), vec2<i32>(-_wgslsmith_div_i32(var_0.x ^ var_0.x, 2147483647i), var_0.x), firstTrailingBit(vec4<i32>(~55767i, -1i, -2147483647i, 72603i) & vec4<i32>(-21959i, select(1i, u_input.c, var_1.x), ~u_input.a, _wgslsmith_dot_vec2_i32(var_0, vec2<i32>(u_input.c, u_input.a)))), var_1.x);
    let var_4 = Struct_1(u_input.a, _wgslsmith_mult_vec2_i32(max(~var_3.b, var_0), var_0), var_3.c, false);
    return _wgslsmith_mod_i32(var_0.x, -(~5076i));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_mod_vec2_i32(~vec2<i32>(~(-10292i), firstLeadingBit(arg_2)) >> (reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(44638u, 21607u), vec2<u32>(81287u, 0u)), abs(1915u))) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(firstTrailingBit(arg_1) & 30168i, _wgslsmith_div_i32(1i, arg_1 & u_input.b)), ~firstTrailingBit(~vec2<i32>(0i, u_input.b))));
    var var_1 = -abs(var_0.x) & func_3();
    var var_2 = _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>((u_input.a << (18000u % 32u)) & (i32(-1i) * -1i), -2636i, select(max(-1i, arg_2), _wgslsmith_mod_i32(-2147483647i, var_0.x), select(arg_0.x, false, arg_0.x)))), ~(~_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-5649i, 85449i, -2147483647i)), vec3<i32>(31757i, u_input.c, arg_1))));
    let var_3 = vec2<i32>(~countOneBits(-1i), ~max(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, arg_1, arg_1), -vec3<i32>(44623i, 2147483647i, 45407i))));
    var_2 = ~_wgslsmith_add_i32(var_0.x, -21269i);
    return ~1u;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: bool) -> vec2<u32> {
    let var_0 = arg_0.b;
    var var_1 = Struct_1(u_input.a, -abs(vec2<i32>(-2984i, -1i)), max(arg_0.c, _wgslsmith_mod_vec4_i32(reverseBits(arg_0.c), vec4<i32>(u_input.c, -49961i, 5086i, 1018i) >> (vec4<u32>(76871u, 1u, 1u, 4294967295u) % vec4<u32>(32u)))) & select(~(~arg_0.c), vec4<i32>(78462i, arg_0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(31439i, -2147483647i, 4505i), vec3<i32>(u_input.b, var_0.x, 1i)), -2147483647i), !select(vec4<bool>(true, arg_3, arg_0.d, arg_3), vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(arg_0.d, arg_2, false, arg_0.d))), arg_3);
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u & func_2(vec2<bool>(true, true), max(-1i, 2147483647i), _wgslsmith_div_i32(var_1.c.x, 7670i)), ~(~59160u), 28784u), 0u);
    return countOneBits(~select(abs(vec2<u32>(var_2, var_2)), vec2<u32>(0u, ~1u), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(137f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -971f))), 1704f)) - -324f));
    var var_1 = Struct_1(~u_input.c, -_wgslsmith_div_vec2_i32(~vec2<i32>(-34125i, u_input.c), vec2<i32>(-1i, u_input.c) & vec2<i32>(u_input.a, -1i)) >> (func_1(Struct_1(select(u_input.b, u_input.a, false), vec2<i32>(10689i, 29786i), vec4<i32>(65721i, u_input.b, 10311i, u_input.b), false), ~(i32(-1i) * -13073i), true, false) % vec2<u32>(32u)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, -1i, u_input.c, u_input.c), vec4<i32>(-42552i, 1i, u_input.a, -16345i)) >> (vec4<u32>(26529u, 30427u, 44707u, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(-vec4<i32>(-11418i, 1i, 9906i, u_input.c), vec4<i32>(0i, u_input.a, u_input.c, -3277i) ^ vec4<i32>(u_input.c, u_input.a, 1i, 24411i))) << (vec4<u32>(1u, 0u, func_2(select(vec2<bool>(true, false), vec2<bool>(true, false), false), i32(-1i) * -2147483647i, u_input.a >> (9112u % 32u)), 1u) % vec4<u32>(32u)), u_input.a > ~_wgslsmith_div_i32(-1692i, u_input.b));
    let var_2 = var_1.d;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), var_0.x)) - _wgslsmith_f_op_f32(-var_0.x)))));
    let var_4 = vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(~vec3<i32>(-14350i, -8588i, -22320i), ~var_1.c.xwz ^ reverseBits(vec3<i32>(var_1.c.x, u_input.c, -31177i)));
    let var_5 = min(vec3<i32>(-1i, ~(_wgslsmith_mult_i32(var_4.x, 58597i) >> (~0u % 32u)), 20891i), var_4 << (_wgslsmith_clamp_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(46452u, 1u, 1u))), abs(vec3<u32>(4294967295u, 0u, 1u)), vec3<u32>(select(18627u, 2235u, false), func_2(vec2<bool>(var_1.d, var_1.d), var_4.x, u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 107989u), vec2<u32>(1u, 18603u)))) % vec3<u32>(32u)));
    var var_6 = Struct_1(_wgslsmith_dot_vec2_i32(var_4.zx, reverseBits(var_1.b)) | u_input.c, _wgslsmith_clamp_vec2_i32(var_5.yz, firstLeadingBit(var_5.xx), vec2<i32>(~(-19113i), (var_4.x | var_4.x) >> (func_2(vec2<bool>(var_1.d, true), var_5.x, var_1.b.x) % 32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(func_3(), -11160i, var_4.x, var_1.c.x & min(19101i, -588i)), firstTrailingBit(select(~vec4<i32>(var_1.c.x, 0i, 6585i, -2147483647i), vec4<i32>(-2147483647i, 1i, var_4.x, 0i), var_1.d))), 4294967295u > ~(~func_1(Struct_1(2147483647i, vec2<i32>(var_5.x, -2147483647i), var_1.c, var_1.d), var_4.x, false, true).x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + 191f), _wgslsmith_f_op_f32(step(-1193f, var_0.x))))))));
}

