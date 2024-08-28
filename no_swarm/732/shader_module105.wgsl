struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: i32,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = select(vec2<i32>(i32(-1i) * -abs(2147483647i), -_wgslsmith_sub_i32(u_input.a, 0i)), arg_0.b.yz, arg_0.a.x);
    var_0 = firstLeadingBit(abs(-vec2<i32>(-1i, arg_1.x) ^ arg_1) >> (vec2<u32>(countOneBits(arg_2), _wgslsmith_sub_u32(~arg_2, arg_2)) % vec2<u32>(32u)));
    let var_1 = abs(max(_wgslsmith_sub_i32(13039i, arg_1.x), countOneBits(arg_0.b.x)));
    let var_2 = !any(select(!arg_0.a, vec2<bool>(false, arg_0.a.x), vec2<bool>(true, false))) || false;
    let var_3 = arg_0;
    return var_3;
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> vec4<i32> {
    var var_0 = any(!select(select(vec3<bool>(arg_0.x, true, true), arg_0.wxw, arg_1 > 0u), !(!arg_0.wwy), vec3<bool>(true, all(arg_0.yxy), true)));
    var_0 = !any(select(!arg_0.xz, select(vec2<bool>(arg_0.x, arg_0.x), arg_0.zz, vec2<bool>(true, arg_0.x)), select(!arg_0.wz, select(arg_0.zz, arg_0.xz, arg_0.zz), vec2<bool>(arg_0.x, true))));
    let var_1 = select(true && !(min(arg_1, 4294967295u) != 54805u), arg_0.x && (arg_1 == 44299u), false);
    var_0 = true;
    var var_2 = ~(-firstLeadingBit(max(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 0i), vec3<i32>(2147483647i, 2845i, 2147483647i)), ~vec3<i32>(2147483647i, 31529i, u_input.a))));
    return abs(select(-vec4<i32>(41750i, u_input.a, 1i, -1i), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, u_input.a, 34091i, 1i), ~vec4<i32>(-1i, 16091i, 60365i, var_2.x))), all(arg_0.xzw)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>, arg_3: i32) -> f32 {
    var var_0 = func_1(Struct_1(!vec2<bool>(any(vec3<bool>(arg_0.a.x, arg_0.a.x, true)), true), _wgslsmith_mod_vec3_i32(arg_0.c, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.x, -2147483647i, 10390i), vec3<i32>(-18825i, arg_3, u_input.a))), abs(vec3<i32>(reverseBits(arg_2.x), _wgslsmith_mod_i32(arg_2.x, arg_2.x), -2147483647i))), vec2<i32>(_wgslsmith_mod_i32(~arg_3, _wgslsmith_dot_vec4_i32(arg_2, arg_2)) >> (~arg_1 % 32u), -(_wgslsmith_sub_i32(arg_2.x, 3101i) << (min(arg_1, arg_1) % 32u))), (arg_1 >> (arg_1 % 32u)) & ~1u);
    var_0 = Struct_1(arg_0.a, arg_0.c >> (vec3<u32>(_wgslsmith_mod_u32(~4294967295u, 11646u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 54951u, arg_1, arg_1), vec4<u32>(0u, 4294967295u, 11871u, arg_1)), 62064u, arg_1), 4294967295u) % vec3<u32>(32u)), arg_0.b >> (min(_wgslsmith_add_vec3_u32(abs(vec3<u32>(0u, 14372u, 60759u)), ~vec3<u32>(arg_1, 25832u, 0u)), vec3<u32>(countOneBits(4294967295u), 19417u ^ arg_1, arg_1)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-240f - _wgslsmith_f_op_f32(-1167f - _wgslsmith_div_f32(745f, -1728f))))));
    let var_2 = vec3<i32>(-arg_3, _wgslsmith_sub_i32(u_input.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.c.x, 1i), abs(var_0.c)), min(-83569i, 1i) >> (arg_1 % 32u))), ~arg_3);
    var_0 = func_1(Struct_1(vec2<bool>(var_0.a.x, false), arg_0.c, vec3<i32>(arg_2.x, arg_0.b.x, arg_2.x)), arg_0.c.zy, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 21933u) << (vec3<u32>(21415u, 34448u, arg_1) % vec3<u32>(32u)), vec3<u32>(arg_1, arg_1, arg_1)) ^ arg_1);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1013f))))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = vec2<f32>(1605f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(arg_1, countOneBits(1391u), func_3(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true), _wgslsmith_sub_u32(arg_2, arg_2)), ~2587i)) - 1679f));
    let var_1 = arg_1.c.xz;
    let var_2 = Struct_1(arg_1.a, arg_1.b, countOneBits(arg_1.c));
    let var_3 = firstLeadingBit(arg_1.b);
    let var_4 = _wgslsmith_f_op_f32(func_4(arg_1, _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(arg_2, arg_2)), ~(~vec2<u32>(1u, 0u))), vec4<i32>(-43952i, var_1.x, _wgslsmith_sub_i32(arg_0, 35995i >> (arg_2 % 32u)) >> (4294967295u % 32u), 1i << (~(arg_2 & arg_2) % 32u)), -27606i));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -445f)));
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = func_1(Struct_1(vec2<bool>(arg_0.x == arg_0.x, true), _wgslsmith_mult_vec3_i32(-(vec3<i32>(-1i, -1i, u_input.a) & vec3<i32>(-21596i, arg_2.x, u_input.a)), vec3<i32>(arg_2.x, ~arg_2.x, 19814i)), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.a, arg_2.x) ^ reverseBits(vec3<i32>(u_input.a, 0i, 1i)), abs(vec3<i32>(1i, 52384i, arg_2.x)) | (vec3<i32>(arg_2.x, u_input.a, 74311i) | vec3<i32>(-14153i, arg_2.x, 8280i)))), func_3(vec4<bool>(func_1(Struct_1(vec2<bool>(true, true), vec3<i32>(-3426i, u_input.a, 1i), vec3<i32>(arg_2.x, arg_2.x, u_input.a)), arg_2, 1u).a.x, false, true, true), 44496u).yw ^ (arg_2 & func_1(Struct_1(vec2<bool>(false, false), vec3<i32>(29769i, 0i, -579i), vec3<i32>(u_input.a, u_input.a, -1i)), -arg_2, ~23463u).b.xx), _wgslsmith_clamp_u32(~(~126354u), firstTrailingBit(abs(13654u)), 37469u));
    var var_1 = true;
    let var_2 = Struct_1(var_0.a, vec3<i32>(~arg_2.x >> (~1u % 32u), -_wgslsmith_div_i32(var_0.b.x, arg_2.x), arg_2.x) ^ (firstTrailingBit(var_0.c) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), vec3<i32>(19857i, arg_2.x, u_input.a));
    var var_3 = _wgslsmith_mod_vec2_i32(-(~_wgslsmith_sub_vec2_i32(var_2.b.yx, vec2<i32>(-33702i, 24917i)) >> (~countOneBits(vec2<u32>(25973u, 29257u)) % vec2<u32>(32u))), arg_2 ^ var_0.c.zx);
    var var_4 = var_2.b.zx;
    return var_2;
}

fn func_6(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(arg_1.x, ~4294967295u >> (~arg_1.x % 32u)), abs(30044u), ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(74966u, arg_1.x), 4294967295u, 1u)), arg_1);
    var var_1 = true;
    var var_2 = ~2147483647i;
    var_2 = -33666i;
    var_1 = ~u_input.a != ~(-1i);
    return StorageBuffer(u_input.a, _wgslsmith_f_op_f32(func_2(u_input.a, Struct_1(!vec2<bool>(false, arg_2.a.x), reverseBits(vec3<i32>(0i, -56951i, arg_2.b.x)), ~(arg_2.c & arg_2.c)), arg_1.x)), arg_1 | ~arg_1, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(-firstLeadingBit(-2147483647i));
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2383f), -1356f)), firstLeadingBit(~(~(~vec4<u32>(72687u, 4294967295u, 4294967295u, 49740u)))), func_5(vec3<f32>(_wgslsmith_f_op_f32(func_2(abs(u_input.a), func_1(Struct_1(vec2<bool>(false, true), vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec2<i32>(-15662i, 2147483647i), 18143u), 1u)), _wgslsmith_f_op_f32(floor(-1315f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -2024f))), _wgslsmith_f_op_f32(-1000f - -278f), -(~(~vec2<i32>(0i, 27919i)))));
}

