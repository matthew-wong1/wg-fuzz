struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(false), Struct_1(false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> f32 {
    var var_0 = ~(u_input.a.x & _wgslsmith_dot_vec2_i32(reverseBits(u_input.b.xy), u_input.a.yy)) == -min(-27602i, -u_input.b.x);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-297f - -499f) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1006f))))), _wgslsmith_add_vec4_i32(~u_input.a, u_input.b), Struct_1(false));
    var var_2 = vec3<f32>(var_1.a, 973f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a)) - _wgslsmith_f_op_f32(round(var_1.a))) * var_1.a))));
    var var_3 = Struct_2(var_2.x, ~countOneBits(var_1.b) ^ var_1.b, Struct_1(var_1.c.a));
    var_0 = all(select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, var_1.c.a), vec3<bool>(var_1.c.a, false, var_1.c.a)), vec3<bool>(var_3.c.a, var_1.c.a, false), false), vec3<bool>(true, var_3.b.x < -25557i, all(vec4<bool>(var_1.c.a, var_3.c.a, false, var_1.c.a)) || all(vec2<bool>(var_3.c.a, true))), any(vec3<bool>(any(vec4<bool>(var_3.c.a, false, true, var_3.c.a)), true, var_1.c.a == var_1.c.a))));
    return -261f;
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_0 = _wgslsmith_mult_u32(1u, ~abs(~34231u)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(33332u, 12083u)), ~vec2<u32>(0u, 5002u)), vec2<u32>(28648u, firstTrailingBit(46647u >> (0u % 32u)))) % 32u);
    let var_1 = abs(abs(u_input.c.x));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-663f))) + _wgslsmith_f_op_f32(func_3())))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1631f) + _wgslsmith_f_op_f32(-1000f + -1390f)), -1413f, all(vec4<bool>(true, true, false, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1128f, 1334f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1881f - _wgslsmith_f_op_f32(min(1605f, 764f)))))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global0 = array<Struct_1, 2>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(func_2()), vec4<i32>(arg_0.x, u_input.c.x, _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(arg_0.x, -1i), -firstTrailingBit(u_input.c.x), -(u_input.c.x ^ -1i)), u_input.b.x), Struct_1(1u < firstTrailingBit(48866u)));
    var var_1 = -(~(-min(-15458i, arg_0.x)));
    let var_2 = 1302f;
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1221f, -218f) - vec2<f32>(var_2, 333f)))))));
    return Struct_1(true);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(arg_0.a, ~countOneBits(vec4<i32>(_wgslsmith_add_i32(u_input.c.x, arg_0.b.x), -2147483647i, 0i | u_input.c.x, min(-2147483647i, 56338i))), Struct_1(any(select(select(vec3<bool>(false, arg_3.a, true), vec3<bool>(true, arg_3.a, true), arg_2), select(vec3<bool>(arg_0.c.a, arg_2, arg_3.a), vec3<bool>(false, false, true), vec3<bool>(arg_3.a, arg_3.a, arg_0.c.a)), select(vec3<bool>(true, arg_3.a, true), vec3<bool>(true, true, true), true)))));
    var var_1 = 0u;
    var var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_0.b.x), abs(vec2<i32>(1i, abs(u_input.b.x))));
    let var_3 = arg_0;
    let var_4 = arg_1.x & ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 119267u, arg_1.x) >> (~arg_1.zxz % vec3<u32>(32u)), vec3<u32>(~64791u, min(4294967295u, arg_1.x), max(0u, arg_1.x)));
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1002f), firstTrailingBit(u_input.a), var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1238f, -129f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-597f, -1000f))))), ~(~u_input.b << (vec4<u32>(30631u, 26342u, 12053u, 1u) % vec4<u32>(32u))), func_1(vec4<i32>(19654i, u_input.c.x, -57949i, -1701i) ^ (vec4<i32>(u_input.b.x, u_input.a.x, 48406i, u_input.b.x) | u_input.a))), vec4<u32>(4294967295u, ~1u, 0u, 1u), !any(vec2<bool>(true, true)), Struct_1(!any(vec2<bool>(true, true)) || func_1(min(u_input.a, vec4<i32>(2147483647i, -1i, 1i, 85608i))).a));
    var var_1 = -vec4<i32>(~(_wgslsmith_add_i32(var_0.b.x, -21542i) >> (43262u % 32u)), ~reverseBits(_wgslsmith_clamp_i32(-15163i, -1i, u_input.b.x)), u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b.xw, vec2<i32>(-48862i, u_input.b.x)), _wgslsmith_add_i32(1i, -25223i)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(var_0.b ^ u_input.b, _wgslsmith_sub_vec4_i32(abs(vec4<i32>(12821i, var_0.b.x, u_input.a.x, var_1.x)), var_0.b), _wgslsmith_f_op_f32(select(-2066f, 1137f, var_0.c.a)) == -820f)), ~2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a)))), min(_wgslsmith_sub_i32(2147483647i, _wgslsmith_div_i32(~var_0.b.x, 23704i)), _wgslsmith_add_i32(firstLeadingBit(-9491i), -4524i)));
}

