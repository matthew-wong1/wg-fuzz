struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-106f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-223f)), -1276f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-335f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1105f * 668f), _wgslsmith_f_op_f32(floor(-2009f))))))), _wgslsmith_f_op_f32(f32(-1f) * -719f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1147f) - _wgslsmith_f_op_f32(trunc(1416f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(663f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 2054f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-217f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -2599f))), _wgslsmith_f_op_f32(var_0.x + var_0.x))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(702f, -1230f, -607f, 830f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, -446f), vec4<f32>(1096f, var_0.x, 145f, var_0.x), true)), vec4<f32>(1000f, 944f, 163f, var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(109f, 438f, -778f, -1280f) - vec4<f32>(var_0.x, var_0.x, var_0.x, 1247f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 865f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0.x)), 326f))), _wgslsmith_f_op_f32(-1236f - -1558f), -1057f));
    let var_1 = 2147483647i;
    return u_input.a.x;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> f32 {
    let var_0 = vec2<f32>(-393f, _wgslsmith_f_op_f32(f32(-1f) * -1129f));
    let var_1 = vec4<i32>(countOneBits(-18910i), ~(~(~firstTrailingBit(u_input.b))), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 28489i, 8175i), vec3<i32>(u_input.b, arg_1.x, 13259i)), arg_1.x), arg_1.x) | -u_input.b, reverseBits(-arg_1.x) >> (_wgslsmith_sub_u32(~_wgslsmith_add_u32(arg_0, 4294967295u), 4294967295u) % 32u));
    var var_2 = arg_1.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1663f)) * _wgslsmith_f_op_f32(sign(var_0.x))));
    var_2 = _wgslsmith_dot_vec3_i32(-(~var_1.xzx), firstTrailingBit(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, 33432i, 0i), vec3<i32>(-4373i, 38161i, var_1.x)) | firstTrailingBit(vec3<i32>(arg_1.x, u_input.b, -26915i)))));
    return 896f;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~(-36541i), u_input.a.zx >> (vec2<u32>(u_input.a.x ^ ~u_input.a.x, ~u_input.a.x) % vec2<u32>(32u)), _wgslsmith_f_op_f32(func_4(func_3(~(~vec4<i32>(2147483647i, -1i, u_input.b, u_input.b)), 13341u, select(-29413i, -2147483647i, true), any(vec2<bool>(true, true))), ~(~select(vec2<i32>(-22136i, 2147483647i), vec2<i32>(-1i, u_input.b), true)))));
    var var_1 = var_0;
    let var_2 = 1u;
    var_1 = Struct_1(firstLeadingBit(7155i), _wgslsmith_mult_vec2_u32(u_input.a.xz, vec2<u32>(~18090u, 0u)) & ~(~u_input.a.yy), -509f);
    var_1 = var_0;
    return Struct_1(abs(_wgslsmith_dot_vec4_i32((vec4<i32>(u_input.b, var_0.a, -4171i, -2147483647i) << (vec4<u32>(4294967295u, 1u, 0u, 1u) % vec4<u32>(32u))) & reverseBits(vec4<i32>(u_input.b, var_1.a, 1i, var_1.a)), vec4<i32>(var_1.a, -2147483647i, var_0.a, var_0.a) & ~vec4<i32>(var_0.a, 22896i, var_0.a, 1i))), ~vec2<u32>(~var_1.b.x, ~77312u), _wgslsmith_f_op_f32(-var_0.c));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_add_i32(abs(arg_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 21212i, arg_0.a, 999i), vec4<i32>(arg_0.a, arg_1.a, u_input.b, u_input.b) << (vec4<u32>(arg_1.b.x, 0u, 4294967295u, arg_0.b.x) % vec4<u32>(32u)))), vec2<u32>(arg_1.b.x, 4294967295u), arg_1.c), vec4<u32>(~(~_wgslsmith_mult_u32(arg_0.b.x, 4294967295u)), 4294967295u, 0u, abs(arg_1.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(318f, -1088f, 837f) + vec3<f32>(arg_0.c, arg_0.c, -1206f)) * vec3<f32>(1f, 1f, 1f)))), 0i);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(var_0.c.yz)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(571f, -523f)))) - var_0.c.xz);
    let var_2 = Struct_2(arg_1, vec4<u32>(31201u, _wgslsmith_dot_vec2_u32(vec2<u32>(29288u, u_input.a.x | 0u), ~_wgslsmith_div_vec2_u32(var_0.a.b, var_0.b.wx)), ~(~_wgslsmith_mod_u32(1u, 1853u)), u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-183f, var_1.x, 1211f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, var_1.x, var_0.c.x), var_0.c)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.c)) + var_0.c))), select(~(~(~var_0.d)), 1i, !arg_2.x));
    return Struct_2(var_2.a, ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.a.b.x, 3860u, 4294967295u), var_0.b.x), ~41142u, ~var_0.a.b.x, min(_wgslsmith_div_u32(arg_0.b.x, 15702u), firstTrailingBit(1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(var_2.c))))), -54163i);
}

fn func_6(arg_0: u32, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = 0i;
    var var_1 = Struct_2(arg_3.a, ~vec4<u32>(arg_3.b.x, max(_wgslsmith_add_u32(u_input.a.x, 50626u), max(39503u, 4294967295u)), 1u, arg_3.a.b.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.x - arg_3.a.c)) * arg_3.a.c), _wgslsmith_f_op_f32(f32(-1f) * -859f), _wgslsmith_f_op_f32(arg_3.c.x - _wgslsmith_f_op_f32(func_2().c - _wgslsmith_f_op_f32(ceil(1017f))))), i32(-1i) * -9630i);
    let var_2 = vec3<bool>(_wgslsmith_dot_vec3_u32(~var_1.b.yzz, vec3<u32>(func_3(vec4<i32>(1i, u_input.b, arg_1.x, 2147483647i), 372u, 8929i, true), firstLeadingBit(50534u), ~arg_3.a.b.x)) >= arg_3.a.b.x, all(vec2<bool>(true, true)), true);
    var var_3 = _wgslsmith_add_i32(min(u_input.b, 2147483647i), var_1.a.a >> (var_1.a.b.x % 32u));
    var var_4 = func_3(~(-vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -35412i), arg_1), _wgslsmith_mult_i32(2147483647i, var_1.a.a), ~var_0, _wgslsmith_mult_i32(arg_1.x, -1i))), 1u, arg_2, var_2.x);
    return Struct_2(arg_3.a, arg_3.b, arg_3.c, -3656i);
}

fn func_7(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_1 = func_6(27082u, _wgslsmith_sub_vec2_i32(select(vec2<i32>(-10967i, -15259i) >> (min(u_input.a.zx, vec2<u32>(4294967295u, 64645u)) % vec2<u32>(32u)), countOneBits(vec2<i32>(arg_0.d, u_input.b)) >> (~u_input.a.yz % vec2<u32>(32u)), all(vec2<bool>(true, true))), min(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1894i, u_input.b, -1i, -1i), vec4<i32>(u_input.b, -1i, arg_0.d, -1i)), 37264i), -reverseBits(vec2<i32>(arg_0.d, 3017i)))), firstLeadingBit(arg_0.d), Struct_2(func_5(arg_0.a, func_5(arg_0.a, arg_0.a, vec2<bool>(false, false), false).a, select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), false), !all(vec4<bool>(false, false, false, false))).a, arg_0.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(func_5(arg_0.a, Struct_1(arg_0.a.a, arg_0.a.b, 665f), vec2<bool>(true, true), true).c, _wgslsmith_f_op_vec3_f32(arg_1 - vec3<f32>(arg_1.x, 1000f, 1084f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, 3033f, -2321f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, arg_1.x, var_0), arg_0.c, vec3<bool>(true, false, true)))))), func_5(func_2(), arg_0.a, !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true).d)).a;
    let var_2 = var_1.a;
    let var_3 = _wgslsmith_mult_u32(u_input.a.x, ~100105u);
    let var_4 = vec2<i32>(var_2, -1945i);
    return Struct_2(arg_0.a, _wgslsmith_mult_vec4_u32(~(~arg_0.b), max(select(vec4<u32>(0u, u_input.a.x, var_3, u_input.a.x), arg_0.b, true), ~arg_0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.c, -115f, -665f) * arg_1) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(281f, 183f, var_0)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.c)) * _wgslsmith_f_op_vec3_f32(-arg_0.c))), 1i);
}

fn func_1() -> vec3<bool> {
    var var_0 = func_7(func_6(u_input.a.x, min(~abs(vec2<i32>(-2404i, u_input.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -1988i), vec2<i32>(u_input.b, 30415i)) | -vec2<i32>(-1i, u_input.b)), u_input.b, func_5(func_2(), Struct_1(~1i, vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_div_f32(2109f, -2639f)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(false, true), true), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-281f, -2066f, -409f) + vec3<f32>(-1477f, -757f, -875f)))))));
    var var_1 = 79220i;
    var_0 = func_7(func_6(_wgslsmith_add_u32(reverseBits(65533u), ~u_input.a.x) << (60780u % 32u), abs(_wgslsmith_add_vec2_i32(select(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(-39433i, -2147483647i), true), vec2<i32>(var_0.d, -4759i) << (var_0.a.b % vec2<u32>(32u)))), reverseBits(_wgslsmith_div_i32(func_7(Struct_2(Struct_1(1i, vec2<u32>(4294967295u, 7859u), 2412f), var_0.b, var_0.c, var_0.a.a), var_0.c).d, 1i)), Struct_2(var_0.a, abs(_wgslsmith_mod_vec4_u32(var_0.b, var_0.b)), var_0.c, var_0.a.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.x, var_0.a.c, 1721f), _wgslsmith_f_op_vec3_f32(abs(var_0.c)), vec3<bool>(true, true, true)))), var_0.c));
    var var_2 = abs(_wgslsmith_sub_vec4_u32(firstTrailingBit(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.b.x, 4294967295u, 16360u), vec4<u32>(var_0.a.b.x, 1u, 4294967295u, var_0.b.x)))), _wgslsmith_div_vec4_u32(~var_0.b, ~vec4<u32>(0u, u_input.a.x, var_0.b.x, u_input.a.x))));
    var var_3 = Struct_2(func_2(), min(~var_0.b, (vec4<u32>(var_2.x, var_0.a.b.x, var_0.b.x, var_0.a.b.x) | var_0.b) ^ ~vec4<u32>(var_0.b.x, var_2.x, 0u, u_input.a.x)) >> (max(_wgslsmith_clamp_vec4_u32(max(var_0.b, var_0.b), reverseBits(vec4<u32>(28712u, u_input.a.x, 0u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(52633u, 1u, 1u, 4294967295u), var_0.b)), vec4<u32>(func_6(var_0.a.b.x, vec2<i32>(-31120i, 2147483647i), u_input.b, Struct_2(var_0.a, vec4<u32>(u_input.a.x, 44926u, u_input.a.x, 73030u), var_0.c, var_0.d)).b.x, 0u, max(u_input.a.x, var_0.b.x), _wgslsmith_dot_vec2_u32(var_0.b.wz, var_0.b.yx))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(var_0.c * _wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-930f, var_0.a.c, var_0.a.c) * func_5(Struct_1(u_input.b, u_input.a.yz, 199f), var_0.a, vec2<bool>(true, false), true).c))), abs(select(-u_input.b, -42939i, true)) | _wgslsmith_mult_i32(u_input.b, ~_wgslsmith_div_i32(u_input.b, -24796i)));
    return vec3<bool>(any(vec4<bool>(true, true, true, true)), false, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(881f, _wgslsmith_div_f32(1295f, -1000f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(369f, -352f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-354f)), -282f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1602f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-577f, var_1.x, var_1.x, var_1.x));
    var var_2 = 1912i;
    var var_3 = ~u_input.a.x;
    var var_4 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-26224i, 37495i, u_input.b, -min(u_input.b, -1i)), min(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, u_input.b, 1i, 4786i), vec4<i32>(0i, -2147483647i, u_input.b, u_input.b)), _wgslsmith_mult_vec4_i32(min(vec4<i32>(-2147483647i, 51063i, 0i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 98185i)), _wgslsmith_mult_vec4_i32(vec4<i32>(30284i, -631i, u_input.b, -7461i), vec4<i32>(u_input.b, 1i, 70572i, -15076i))))), 17020i);
    let var_5 = select(!func_1(), vec3<bool>(select(true, any(vec3<bool>(true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), !all(vec4<bool>(true, true, false, false)) & all(vec4<bool>(true, true, false, false)), _wgslsmith_f_op_f32(1f * 607f) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1300f - var_1.x)))), all(vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_1.x);
}

