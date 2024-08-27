struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<u32>) -> bool {
    let var_0 = false;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1819f - -510f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1758f)) * _wgslsmith_f_op_f32(round(389f))))), abs(vec4<i32>(~_wgslsmith_mod_i32(u_input.b, 1i), -(~u_input.e), 13308i, ~u_input.c)), vec3<u32>(~reverseBits(reverseBits(arg_2.x)), firstTrailingBit(_wgslsmith_mod_u32(arg_2.x, 4294967295u) | _wgslsmith_dot_vec2_u32(vec2<u32>(12736u, arg_2.x), arg_2)), _wgslsmith_mod_u32(~_wgslsmith_div_u32(0u, arg_1), ~1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(0u, 40042u, arg_1)))), firstTrailingBit(~vec4<u32>(0u, u_input.a, arg_2.x, arg_1)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, 63993u, u_input.a, arg_1), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_2.x, 1u, 41291u), vec4<u32>(9354u, 53285u, 35878u, 155753u))) % vec4<u32>(32u)));
    let var_2 = 4294967295u;
    var var_3 = Struct_1(var_1.a, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(var_1.b, vec4<i32>(_wgslsmith_clamp_i32(-1i, 0i, -2147483647i), firstTrailingBit(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(49360i, -2209i, 2147483647i, -2147483647i), vec4<i32>(29935i, u_input.c, u_input.d, 1i)), _wgslsmith_sub_i32(var_1.b.x, -1i))), _wgslsmith_clamp_vec4_i32(var_1.b, var_1.b, var_1.b)), ~(~abs(~var_1.d.wzx)), vec4<u32>(_wgslsmith_add_u32(select(0u, ~arg_2.x, true), 0u), min(max(1u, 1u), arg_1), 4294967295u, ~max(~arg_1, ~arg_2.x)));
    var_3 = Struct_1(var_1.a, vec4<i32>(var_3.b.x, 0i, select(var_1.b.x, firstTrailingBit(39776i), var_0), ~var_1.b.x), vec3<u32>(var_2, 30253u, _wgslsmith_div_u32(19854u, _wgslsmith_sub_u32(countOneBits(39335u), u_input.a))), select(var_1.d, ~vec4<u32>(arg_2.x, arg_2.x, arg_1, u_input.a) ^ vec4<u32>(_wgslsmith_div_u32(u_input.a, 26304u), ~12827u, ~41596u, var_3.c.x), false));
    return arg_0;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: u32, arg_3: f32) -> Struct_2 {
    var var_0 = ~countOneBits(~vec4<u32>(~0u, 96269u, min(arg_2, 4294967295u), ~0u));
    let var_1 = Struct_1(-1147f, ~arg_1, reverseBits(abs(abs(~vec3<u32>(arg_2, arg_2, arg_2)))), ~(~(~(vec4<u32>(4294967295u, 4294967295u, 3836u, 43357u) | vec4<u32>(u_input.a, arg_2, var_0.x, 64169u)))));
    var_0 = select(abs(~(~vec4<u32>(25235u, var_0.x, 1u, var_0.x) ^ var_1.d)), ~min(vec4<u32>(1u, 4294967295u, 0u, u_input.a), var_1.d), vec4<bool>(func_3(arg_0 >= -1956f, ~4294967295u, var_0.ww), true, all(vec4<bool>(true, true, true, true)), !any(vec4<bool>(true, true, true, true))));
    let var_2 = var_1;
    let var_3 = !((all(vec2<bool>(false, false)) | true) & (_wgslsmith_f_op_f32(-175f + _wgslsmith_f_op_f32(-var_1.a)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1141f, var_1.a)), _wgslsmith_f_op_f32(step(arg_3, var_1.a)))));
    return Struct_2(Struct_1(arg_0, ~_wgslsmith_mod_vec4_i32(arg_1, abs(var_2.b)), reverseBits(vec3<u32>(max(16987u, var_2.c.x), 1u, select(11886u, var_2.c.x, var_3))), vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.zyx, vec3<u32>(57842u, var_2.d.x, 0u)), 1u, select(var_0.x, var_2.c.x, false), ~26394u) << (_wgslsmith_mult_vec4_u32(var_1.d, ~var_1.d) % vec4<u32>(32u))), _wgslsmith_dot_vec3_i32(firstTrailingBit(select(firstTrailingBit(vec3<i32>(-2147483647i, var_2.b.x, 0i)), abs(vec3<i32>(-23000i, arg_1.x, 10883i)), var_3)), var_2.b.zzz >> (var_0.zxw % vec3<u32>(32u))), 0i, _wgslsmith_clamp_vec3_i32(~var_1.b.xwz, var_2.b.zzx | var_1.b.zwz, countOneBits(var_1.b.zyx)), Struct_1(-267f, vec4<i32>(firstLeadingBit(1i), abs(u_input.c), var_1.b.x, -2147483647i), vec3<u32>(~4294967295u, firstTrailingBit(var_2.d.x), arg_2) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(11611u, var_2.d.x, arg_2), var_1.d.yxw) % vec3<u32>(32u)), ~firstLeadingBit(var_1.d)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.a.a)), -528f);
    let var_1 = 2147483647i;
    var var_2 = true;
    return func_2(var_0.x, arg_1.e.b, 15902u, _wgslsmith_f_op_f32(floor(arg_1.e.a)));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    let var_0 = func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, -2147483647i), _wgslsmith_mult_vec2_i32(arg_3.b.xx, vec2<i32>(arg_2.d.x | 20991i, _wgslsmith_clamp_i32(u_input.b, arg_3.b.x, arg_2.c)))), func_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-18214i, arg_3.b.x), arg_2.d.xy), reverseBits(arg_3.b.xx), vec2<i32>(arg_2.e.b.x, arg_2.a.b.x)) >> (_wgslsmith_sub_vec2_u32(~arg_1.zz, vec2<u32>(2301u, u_input.a)) % vec2<u32>(32u)), Struct_2(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1142f), min(arg_2.a.b, vec4<i32>(-8522i, -1i, 0i, -1i)), arg_2.e.c.x, _wgslsmith_f_op_f32(min(1329f, -1505f))).a, min(-arg_3.b.x, 28852i), -(u_input.e << (31633u % 32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-54703i, 2604i, -1i), arg_2.a.b.xyz, -arg_3.b.wzz), func_1(~arg_3.b.yy, func_2(1389f, arg_3.b, 0u, 896f)).e)));
    var var_1 = func_1(~var_0.e.b.xz, var_0).a;
    var_1 = arg_2.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1141f)) - -225f)));
    var_1 = Struct_1(var_2, ~(-vec4<i32>(firstTrailingBit(arg_2.b), -2596i, _wgslsmith_mod_i32(-1i, 2147483647i), -1i)), _wgslsmith_div_vec3_u32(arg_1, ~var_1.c), ~func_2(_wgslsmith_f_op_f32(round(-394f)), countOneBits(-var_0.a.b), 4294967295u, _wgslsmith_f_op_f32(-var_0.a.a)).e.d);
    return func_1(_wgslsmith_div_vec2_i32(vec2<i32>(abs(var_1.b.x) << (~arg_0 % 32u), -8136i), -(~(arg_2.d.zx << (vec2<u32>(37544u, u_input.a) % vec2<u32>(32u))))), var_0);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = reverseBits(countOneBits(abs(vec3<i32>(min(0i, arg_1.a.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, arg_2.x, -2147483647i, -4182i), arg_0.b), i32(-1i) * -1929i))));
    let var_1 = func_4(u_input.a, firstTrailingBit(firstTrailingBit(reverseBits(vec3<u32>(0u, 70221u, 0u)))) << (arg_0.c % vec3<u32>(32u)), arg_1, Struct_1(1211f, ~_wgslsmith_clamp_vec4_i32(func_4(43163u, arg_1.a.c, Struct_2(Struct_1(arg_0.a, arg_0.b, vec3<u32>(arg_0.d.x, 4294967295u, u_input.a), vec4<u32>(66531u, u_input.a, u_input.a, 4198u)), arg_1.b, -1i, arg_0.b.xzz, Struct_1(-854f, vec4<i32>(arg_1.a.b.x, arg_3.x, -6767i, -8136i), arg_0.d.zxw, vec4<u32>(u_input.a, u_input.a, arg_0.c.x, 4294967295u))), Struct_1(1107f, vec4<i32>(0i, -7078i, arg_0.b.x, -7651i), arg_1.a.d.xwz, vec4<u32>(69218u, arg_0.d.x, arg_0.c.x, arg_0.d.x))).e.b, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.x, arg_0.b.x, 7654i, arg_2.x), arg_0.b), vec4<i32>(u_input.c, arg_2.x, -15992i, 29963i) & vec4<i32>(arg_2.x, -2147483647i, arg_3.x, arg_3.x)), abs(~_wgslsmith_clamp_vec3_u32(arg_0.c, vec3<u32>(4294967295u, 0u, 23439u), arg_0.c)), vec4<u32>(0u, 35008u, min(arg_1.a.d.x, 41346u), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 8209u), arg_1.a.c.x))));
    var_0 = max(~var_1.e.b.wyy, ~_wgslsmith_add_vec3_i32(-vec3<i32>(8293i, 32923i, arg_1.b), arg_2));
    var_0 = reverseBits(_wgslsmith_sub_vec3_i32(min(~vec3<i32>(arg_2.x, -17388i, arg_0.b.x), func_2(199f, countOneBits(vec4<i32>(1i, arg_0.b.x, 2147483647i, var_1.e.b.x)), firstLeadingBit(arg_1.a.c.x), 969f).a.b.yzy), var_1.a.b.xyw));
    let var_2 = vec4<bool>(false, all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), all(vec4<bool>(true, false, false, false))), vec3<bool>(true, true, all(vec4<bool>(false, false, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false))), any(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec3<bool>(false, true, false)))) & true);
    return arg_1;
}

fn func_6(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -797f);
    let var_1 = arg_0.a.a;
    let var_2 = arg_0.a;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_4(_wgslsmith_add_u32(var_2.c.x, u_input.a), vec3<u32>(var_2.d.x, arg_0.a.c.x, 43u) | vec3<u32>(var_2.d.x, 0u, 519u), Struct_2(arg_0.a, arg_0.c, 20251i, vec3<i32>(0i, -36428i, var_2.b.x), Struct_1(var_1, arg_0.e.b, var_2.c, var_2.d)), func_4(69187u, var_2.c, Struct_2(arg_0.a, arg_0.c, arg_0.b, vec3<i32>(-51872i, 0i, -16938i), arg_0.a), arg_0.e).e).e.a), 1445f)));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))));
    return Struct_1(_wgslsmith_f_op_f32(sign(-1795f)), abs(vec4<i32>(~var_2.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.d.yy, vec2<i32>(-1i, arg_0.e.b.x), var_2.b.wx), vec2<i32>(1i, arg_0.d.x) << (arg_0.e.d.yw % vec2<u32>(32u))), ~1i, func_2(1134f, -var_2.b, ~15338u, func_1(var_2.b.xx, Struct_2(Struct_1(363f, var_2.b, arg_0.e.d.yxw, vec4<u32>(arg_0.a.d.x, 0u, 9209u, 39679u)), var_2.b.x, arg_0.a.b.x, var_2.b.zxx, arg_0.e)).a.a).d.x)), firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 4294967295u, var_2.d.x), var_2.c), _wgslsmith_mod_vec3_u32(arg_0.a.d.yyz, _wgslsmith_div_vec3_u32(arg_0.a.c, vec3<u32>(u_input.a, u_input.a, 4294967295u))))), ~var_2.d | vec4<u32>(~17876u >> (_wgslsmith_clamp_u32(u_input.a, 4294967295u, 4294967295u) % 32u), 9760u ^ (4294967295u << (u_input.a % 32u)), ~func_5(Struct_1(445f, vec4<i32>(u_input.e, -1i, arg_0.c, -2147483647i), arg_0.a.d.wzz, var_2.d), Struct_2(Struct_1(-1725f, vec4<i32>(arg_0.c, 1i, -56799i, 69879i), arg_0.e.d.yyy, vec4<u32>(arg_0.a.d.x, 0u, var_2.c.x, 49533u)), var_2.b.x, u_input.c, arg_0.a.b.wxz, Struct_1(-659f, var_2.b, vec3<u32>(u_input.a, 14207u, 48297u), vec4<u32>(1u, 4294967295u, arg_0.a.c.x, var_2.d.x))), vec3<i32>(u_input.b, u_input.e, arg_0.a.b.x), var_2.b.ww).e.c.x, var_2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_6(func_5(Struct_1(-1876f, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, u_input.b, u_input.c, 2147483647i), vec4<i32>(-1i, u_input.c, u_input.b, u_input.d)), ~vec3<u32>(u_input.a, u_input.a, 50292u), vec4<u32>(1u, 4294967295u, 1u, 1u)), func_4(select(49790u, 1u, true), vec3<u32>(u_input.a, u_input.a, 26033u) | vec3<u32>(47821u, u_input.a, 1u), func_1(vec2<i32>(u_input.d, u_input.e), Struct_2(Struct_1(-1000f, vec4<i32>(u_input.d, -2147483647i, u_input.c, 62002i), vec3<u32>(u_input.a, u_input.a, u_input.a), vec4<u32>(0u, 1u, u_input.a, 4294967295u)), -1i, u_input.b, vec3<i32>(-2147483647i, u_input.e, -1811i), Struct_1(-119f, vec4<i32>(u_input.d, -21003i, -19701i, 2147483647i), vec3<u32>(0u, 0u, 27254u), vec4<u32>(u_input.a, 47642u, 0u, 39427u)))), Struct_1(-349f, vec4<i32>(u_input.c, u_input.b, 1i, u_input.d), vec3<u32>(u_input.a, 1u, 13668u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), abs(reverseBits(vec3<i32>(-23881i, 2147483647i, 30073i))), -(~vec2<i32>(u_input.c, 0i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1700f + 673f) + _wgslsmith_f_op_f32(-589f - -272f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(738f - 1012f) - _wgslsmith_f_op_f32(-1718f - 219f)))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-165f - _wgslsmith_f_op_f32(-328f + -1298f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-351f)), -562f))), _wgslsmith_sub_vec4_i32(-(~vec4<i32>(u_input.c, u_input.e, -1i, u_input.b)), select(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.d, 11420i), vec4<i32>(u_input.b, u_input.d, u_input.b, u_input.b)), ~vec4<i32>(u_input.e, 0i, -7006i, 0i), vec4<bool>(true, true, false, true))), ~u_input.a, -334f).a.b.x, _wgslsmith_mod_i32(2147483647i, func_6(Struct_2(Struct_1(-388f, vec4<i32>(u_input.d, u_input.c, -15650i, u_input.b), vec3<u32>(11063u, u_input.a, u_input.a), vec4<u32>(6445u, u_input.a, u_input.a, 0u)), u_input.e, u_input.c, min(vec3<i32>(-2147483647i, 0i, u_input.b), vec3<i32>(u_input.d, 51901i, -2147483647i)), Struct_1(102f, vec4<i32>(25473i, 38492i, u_input.e, 12973i), vec3<u32>(u_input.a, 34507u, 24650u), vec4<u32>(26424u, u_input.a, 4294967295u, 77234u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1475f)))).b.x), vec3<i32>(~select(~68271i, u_input.c, false), ~firstLeadingBit(u_input.c | 2147483647i), u_input.d), func_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 392f) - 108f), vec4<i32>(u_input.c << (16445u % 32u), -u_input.d, _wgslsmith_div_i32(u_input.b, u_input.e), -u_input.b), ~func_5(Struct_1(1478f, vec4<i32>(u_input.e, 0i, u_input.c, 23486i), vec3<u32>(u_input.a, 1u, 32609u), vec4<u32>(65858u, 36302u, u_input.a, 20622u)), Struct_2(Struct_1(1943f, vec4<i32>(21776i, 62140i, -1i, u_input.b), vec3<u32>(u_input.a, u_input.a, 4570u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), -1i, u_input.e, vec3<i32>(1i, u_input.d, -9441i), Struct_1(434f, vec4<i32>(2147483647i, u_input.d, -25501i, u_input.d), vec3<u32>(u_input.a, 8939u, 0u), vec4<u32>(u_input.a, 19924u, u_input.a, 4294967295u))), vec3<i32>(-51961i, -1i, u_input.d), vec2<i32>(1i, u_input.c)).e.d.zxw, firstLeadingBit(vec4<u32>(13748u, u_input.a, 1u, u_input.a))), func_4(~4294967295u, ~(~vec3<u32>(1u, u_input.a, 4294967295u)), Struct_2(Struct_1(2104f, vec4<i32>(2147483647i, u_input.e, -1i, u_input.e), vec3<u32>(3688u, 42298u, 12931u), vec4<u32>(60279u, u_input.a, 1u, 4294967295u)), u_input.b, u_input.d, ~vec3<i32>(u_input.d, u_input.d, u_input.e), func_5(Struct_1(416f, vec4<i32>(1i, u_input.b, 14743i, u_input.b), vec3<u32>(u_input.a, u_input.a, u_input.a), vec4<u32>(47642u, 4294967295u, 4294967295u, u_input.a)), Struct_2(Struct_1(1115f, vec4<i32>(2147483647i, u_input.b, u_input.b, -1i), vec3<u32>(92464u, 19439u, u_input.a), vec4<u32>(u_input.a, 22068u, 1u, 0u)), u_input.e, u_input.d, vec3<i32>(0i, 11019i, u_input.d), Struct_1(1000f, vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.c), vec3<u32>(1u, u_input.a, 0u), vec4<u32>(u_input.a, 4294967295u, 1u, 24507u))), vec3<i32>(u_input.b, 0i, -35875i), vec2<i32>(u_input.b, 2147483647i)).e), func_1(vec2<i32>(u_input.c, -460i), Struct_2(Struct_1(-868f, vec4<i32>(u_input.b, -15006i, u_input.c, 47993i), vec3<u32>(u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, 0u, 4294967295u, 7157u)), -1i, u_input.b, vec3<i32>(-39807i, 2147483647i, u_input.e), Struct_1(604f, vec4<i32>(-9641i, 2147483647i, u_input.d, u_input.e), vec3<u32>(u_input.a, 4294967295u, 1u), vec4<u32>(u_input.a, u_input.a, 0u, 30146u)))).a), -firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.b, u_input.b, u_input.d))), _wgslsmith_clamp_vec2_i32(select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, u_input.e), vec2<i32>(31038i, u_input.d)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.e, -9513i), vec2<i32>(u_input.c, u_input.e)), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), ~func_6(Struct_2(Struct_1(-2230f, vec4<i32>(u_input.c, u_input.c, u_input.c, -26955i), vec3<u32>(59942u, 27262u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), u_input.e, u_input.c, vec3<i32>(2147483647i, u_input.e, u_input.d), Struct_1(471f, vec4<i32>(u_input.e, u_input.b, u_input.e, 0i), vec3<u32>(u_input.a, 1u, 45943u), vec4<u32>(u_input.a, 32315u, 54174u, 4294967295u))), -961f).b.yw, ~(-vec2<i32>(69031i, 0i)))).a);
    var_0 = func_5(Struct_1(var_0.e.a, var_0.e.b, var_0.e.c, var_0.a.d), Struct_2(Struct_1(_wgslsmith_f_op_f32(-1f), var_0.e.b, select(vec3<u32>(101679u, var_0.e.d.x, var_0.e.c.x), max(vec3<u32>(u_input.a, var_0.e.c.x, 0u), var_0.e.c), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0.e.c.x, var_0.e.c.x, 0u), ~var_0.a.d, vec4<u32>(4294967295u, 39143u, u_input.a, var_0.a.d.x))), i32(-1i) * -2147483647i, 52754i, var_0.d, var_0.e), func_2(_wgslsmith_f_op_f32(-164f * -549f), ~var_0.a.b, func_2(1878f, vec4<i32>(var_0.e.b.x ^ var_0.b, 5983i, 37346i, -6968i), ~1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e.a), -697f)).a.d.x, 436f).a.b.wxy, vec2<i32>(var_0.e.b.x, ~u_input.c));
    let var_1 = u_input.a;
    var var_2 = firstLeadingBit(~(~func_6(func_1(var_0.a.b.xx, Struct_2(var_0.a, u_input.d, -1i, var_0.d, var_0.a)), 1f).d.x));
    var var_3 = ~_wgslsmith_clamp_vec4_i32(-reverseBits(_wgslsmith_add_vec4_i32(var_0.a.b, var_0.e.b)), var_0.a.b & ~(-vec4<i32>(31857i, var_0.e.b.x, 6970i, -14687i)), vec4<i32>(firstTrailingBit(func_6(Struct_2(var_0.a, -28416i, u_input.d, var_0.e.b.zzz, var_0.a), -422f).b.x), _wgslsmith_div_i32(_wgslsmith_add_i32(var_0.b, u_input.c), 9415i), ~_wgslsmith_mod_i32(1i, -1i), -37418i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-387f, -1190f) * vec2<f32>(var_0.e.a, var_0.e.a)) - vec2<f32>(var_0.a.a, var_0.e.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.a, var_0.e.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, var_0.a.a))))));
}

