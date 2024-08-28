struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = 4294967295u;
    var var_2 = 0u <= _wgslsmith_dot_vec2_u32(min(vec2<u32>(~var_1, abs(0u)), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(var_1, 0u)), firstTrailingBit(vec2<u32>(var_1, 14353u)))), vec2<u32>(4294967295u, _wgslsmith_div_u32(_wgslsmith_add_u32(17399u, var_1), ~var_1)));
    let var_3 = Struct_2(Struct_1(vec4<i32>(u_input.a, min(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -31621i, u_input.a), vec3<i32>(-14815i, u_input.a, u_input.a))), u_input.a, 22605i)), Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(9738i, u_input.a, u_input.a, 26739i) << (vec4<u32>(53761u, 0u, 0u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 13162i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -36949i)), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)), ~vec4<i32>(0i, -17098i, -4376i, u_input.a))));
    let var_4 = vec2<u32>(~(firstLeadingBit(~var_1) | (~var_1 ^ ~13205u)), var_1);
    return -_wgslsmith_dot_vec4_i32(max(var_3.b.a, select(vec4<i32>(4949i, var_3.b.a.x, 1i, -2147483647i), var_3.b.a, vec4<bool>(var_0.x, var_0.x, false, true))) & (firstLeadingBit(var_3.b.a) ^ -var_3.a.a), var_3.a.a);
}

fn func_2() -> bool {
    let var_0 = 1246f;
    let var_1 = Struct_2(Struct_1(vec4<i32>(func_3() ^ u_input.a, _wgslsmith_clamp_i32(min(-48729i, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 0i), vec3<i32>(11026i, u_input.a, -1i)), ~u_input.a), 58826i >> (0u % 32u), i32(-1i) * -u_input.a)), Struct_1(min(~vec4<i32>(28039i, u_input.a, u_input.a, 15089i) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), countOneBits(firstLeadingBit(vec4<i32>(u_input.a, 3825i, 2147483647i, 3000i))))));
    let var_2 = -2147483647i;
    let var_3 = var_1.a;
    let var_4 = func_3();
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-579f, -167f))))))));
    return arg_1.b;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: Struct_3) -> bool {
    let var_0 = Struct_3(Struct_2(func_4(select(true, true, func_2()), arg_0.d), arg_3.a.a), vec4<i32>(arg_0.d.a.a.x, arg_0.d.b.a.x, _wgslsmith_add_i32(-14619i, -_wgslsmith_sub_i32(arg_3.b.x, 39069i)), -51653i), _wgslsmith_mod_i32(~_wgslsmith_mult_i32(1i, 1i), u_input.a & 1i), arg_0.d, Struct_2(Struct_1(abs(arg_0.b) & _wgslsmith_clamp_vec4_i32(arg_0.a.a.a, vec4<i32>(-18382i, u_input.a, u_input.a, 1i), vec4<i32>(-2147483647i, -49039i, arg_3.a.b.a.x, 0i))), func_4(true, Struct_2(arg_0.e.a, func_4(false, Struct_2(Struct_1(vec4<i32>(arg_3.a.b.a.x, -2147483647i, -2147483647i, 41783i)), Struct_1(arg_0.b)))))));
    var var_1 = any(vec3<bool>(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false))), any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), !all(vec3<bool>(true, true, true))));
    var var_2 = Struct_3(Struct_2(var_0.a.b, func_4(true, arg_3.a)), (var_0.b ^ vec4<i32>(var_0.e.b.a.x, func_3(), max(30286i, 35449i), 0i)) | -vec4<i32>(-1i, var_0.a.a.a.x, max(arg_3.c, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, var_0.b.x), vec3<i32>(0i, arg_3.e.b.a.x, 1i))), -1i | _wgslsmith_mod_i32(-(var_0.a.b.a.x | -7769i), 1i), Struct_2(arg_3.d.a, var_0.e.a), Struct_2(func_4(any(vec3<bool>(true, true, true)), var_0.d), var_0.d.b));
    let var_3 = -abs(-9438i) >> (arg_1.x % 32u);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_2.x)))));
    return all(select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), any(vec4<bool>(false, false, true, true)))), select(vec2<bool>(false, true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), true), false), !all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = select(true, !all(vec4<bool>(func_1(Struct_3(Struct_2(Struct_1(vec4<i32>(-17119i, u_input.a, 2147483647i, u_input.a)), Struct_1(vec4<i32>(u_input.a, -2147483647i, u_input.a, 1i))), vec4<i32>(-9437i, -16082i, u_input.a, u_input.a), u_input.a, Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, -22866i)), Struct_1(vec4<i32>(-1i, u_input.a, 71674i, 10813i))), Struct_2(Struct_1(vec4<i32>(-38845i, u_input.a, u_input.a, 2147483647i)), Struct_1(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)))), vec4<u32>(4294967295u, 32930u, 80442u, 4322u), vec3<f32>(458f, -436f, 1127f), Struct_3(Struct_2(Struct_1(vec4<i32>(-24613i, u_input.a, u_input.a, u_input.a)), Struct_1(vec4<i32>(-18981i, -1i, u_input.a, u_input.a))), vec4<i32>(-38393i, u_input.a, 0i, u_input.a), 0i, Struct_2(Struct_1(vec4<i32>(u_input.a, 38738i, -47082i, u_input.a)), Struct_1(vec4<i32>(-22747i, u_input.a, 72050i, u_input.a))), Struct_2(Struct_1(vec4<i32>(u_input.a, -8635i, -6881i, u_input.a)), Struct_1(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a))))), true, true, true)), false);
    let var_2 = Struct_3(Struct_2(func_4(var_1, Struct_2(Struct_1(vec4<i32>(72686i, u_input.a, u_input.a, -1i)), Struct_1(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)))), Struct_1(vec4<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, 29913i), 2147483647i & u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a)))), ~_wgslsmith_clamp_vec4_i32(select(min(vec4<i32>(u_input.a, u_input.a, u_input.a, 12517i), vec4<i32>(-1i, -37734i, -2147483647i, u_input.a)), ~vec4<i32>(u_input.a, u_input.a, u_input.a, -5611i), !var_1), max(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), select(vec4<i32>(u_input.a, u_input.a, -2858i, u_input.a), vec4<i32>(49201i, -2147483647i, 1i, u_input.a), true)), firstTrailingBit(vec4<i32>(u_input.a, u_input.a, -23349i, u_input.a))), ~15071i, Struct_2(Struct_1(vec4<i32>(-459i, _wgslsmith_mult_i32(u_input.a, -2147483647i), firstTrailingBit(30537i), _wgslsmith_mod_i32(12077i, u_input.a))), func_4(all(vec4<bool>(var_1, var_1, var_1, false)), Struct_2(func_4(var_1, Struct_2(Struct_1(vec4<i32>(49644i, u_input.a, u_input.a, u_input.a)), Struct_1(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a)))), func_4(false, Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, 9352i, -2147483647i)), Struct_1(vec4<i32>(u_input.a, u_input.a, -54825i, 0i))))))), Struct_2(Struct_1(vec4<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a & -5875i, 26992i, _wgslsmith_mod_i32(u_input.a, 8966i))), Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 46259i, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 45875i, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -17651i))))));
    let var_3 = Struct_3(var_2.a, -_wgslsmith_mod_vec4_i32(-firstTrailingBit(vec4<i32>(var_2.d.b.a.x, 1i, -44507i, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 0i, -4118i, u_input.a), var_2.a.b.a)), -func_4(var_1, Struct_2(var_2.a.a, Struct_1(vec4<i32>(0i, u_input.a, 62719i, u_input.a)))).a.x, Struct_2(var_2.a.a, var_2.d.b), var_2.e);
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-404f)) + -803f))), 0i, var_2.e.a.a.x, -1i);
}

