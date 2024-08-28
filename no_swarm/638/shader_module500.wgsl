struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3;
    let var_1 = arg_3;
    let var_2 = Struct_3(false, var_0, Struct_2(arg_2, Struct_1((62227u & var_0.a) & _wgslsmith_dot_vec3_u32(vec3<u32>(1892u, 60369u, 37099u), vec3<u32>(u_input.c, 100384u, 24241u)), ~_wgslsmith_sub_u32(u_input.b.x, 27927u)), var_1), vec2<bool>(!any(vec3<bool>(false, true, false)), true), vec2<bool>(!(!(654f <= arg_1)), select(false, any(vec2<bool>(true, true)), select(true, true, any(vec4<bool>(true, false, false, false))))));
    var var_3 = !var_2.a;
    let var_4 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_1)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0.x, u_input.c, u_input.a, 63049u)) | (abs(arg_0 >> (arg_0 % vec4<u32>(32u))) & ~max(vec4<u32>(u_input.b.x, 32172u, arg_0.x, u_input.c), vec4<u32>(arg_0.x, 1u, 4294967295u, 1u))), ~vec4<u32>(82149u, 1u, 1u, 1678u));
    var var_1 = false;
    var var_2 = vec4<i32>(~_wgslsmith_mod_i32(countOneBits(-u_input.d), u_input.d), firstLeadingBit(-36420i), u_input.d, min(-(~u_input.d), ~(~1i)) ^ -_wgslsmith_clamp_i32(56127i, u_input.d, 0i));
    var var_3 = vec4<bool>(2083f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, arg_1), arg_1) * _wgslsmith_f_op_f32(func_3(max(-1i, -5298i), arg_1, Struct_1(u_input.b.x, 21192u), Struct_1(4294967295u, u_input.a)))), false, 1u >= arg_0.x, all(vec2<bool>(true, all(vec3<bool>(true, true, true)))) | true);
    var var_4 = Struct_3(!select(any(vec4<bool>(var_3.x, var_3.x, false, var_3.x)), all(var_3.zy), all(select(var_3.zyx, var_3.yxx, vec3<bool>(var_3.x, false, false)))), Struct_1(reverseBits(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, u_input.a, arg_0.x), arg_0.zxw), 69490u)), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b, u_input.b), ~vec2<u32>(4294967295u, 4294967295u)))), Struct_2(Struct_1(u_input.b.x, 0u), Struct_1(_wgslsmith_div_u32(u_input.a, ~u_input.b.x), _wgslsmith_mult_u32(firstLeadingBit(u_input.a), 84558u)), Struct_1(u_input.a, 1u)), var_3.yy, vec2<bool>(false, true));
    return ~1u;
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> f32 {
    let var_0 = ~vec4<u32>(u_input.b.x, firstTrailingBit(15484u), _wgslsmith_add_u32((4294967295u & arg_2.c.a.a) << (~35828u % 32u), ~(0u << (u_input.a % 32u))), select(u_input.a, 4294967295u, true));
    let var_1 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~func_2(vec4<u32>(arg_2.c.c.a, 0u, arg_2.c.b.a, 42059u), 272f), max(~var_0.x, reverseBits(arg_0.c.a.a)), select(u_input.a, 1u, true) << (u_input.c % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(var_0, var_0), vec4<u32>(55234u, 1u, 71027u, u_input.c))), vec4<u32>(reverseBits(29406u), arg_0.b.a, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(25341u, arg_0.c.c.a)), vec2<u32>(1u, u_input.b.x)), func_2(~vec4<u32>(9630u, 10093u, 43125u, u_input.c), _wgslsmith_f_op_f32(-938f - -1328f))), vec4<u32>(abs(arg_0.c.c.a & 30499u), ~4294967295u, ~(~21833u), 1u));
    var var_2 = _wgslsmith_mod_i32(reverseBits(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(1i, -2147483647i, -2147483647i, -45531i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-34447i, u_input.d, -32888i, u_input.d), vec4<i32>(-16513i, u_input.d, u_input.d, 1i)))), reverseBits(u_input.d));
    var var_3 = _wgslsmith_add_u32(~0u, arg_0.c.a.b);
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1778f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1090f - -3782f)) * 1279f))));
    return _wgslsmith_f_op_f32(-var_4.x);
}

fn func_4(arg_0: i32, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = vec4<i32>(firstLeadingBit(-23032i), arg_0, -(_wgslsmith_sub_i32(~arg_0, ~u_input.d) << (_wgslsmith_mult_u32(~u_input.b.x, u_input.b.x) % 32u)), ~7855i);
    var_0 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(select(-min(vec4<i32>(var_0.x, arg_0, 0i, 2147483647i), vec4<i32>(2147483647i, 0i, arg_0, var_0.x)), vec4<i32>(~(-1i), -var_0.x, reverseBits(-2147483647i), var_0.x), vec4<bool>(true, true, true, false)), ~abs(-vec4<i32>(var_0.x, var_0.x, u_input.d, 1i)), vec4<i32>(-29518i, ~1i, 29583i, var_0.x)));
    var var_1 = _wgslsmith_div_f32(-377f, -1643f);
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-467f, arg_1.x, -785f) - arg_1.ywy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-126f, 821f, 230f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) - vec3<f32>(-229f, arg_1.x, arg_1.x)))), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), all(vec4<bool>(true, true, true, false))))))));
    var_1 = arg_1.x;
    return Struct_3(!any(vec3<bool>(true, true, true)), Struct_1(7674u, 49505u), Struct_2(Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(56480u, 47843u, 29301u, 0u), vec4<u32>(0u, u_input.a, 4294967295u, 8060u)), ~u_input.a), Struct_1(firstTrailingBit(reverseBits(u_input.b.x)), abs(u_input.a)), Struct_1(abs(28440u), 29085u)), select(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), false)), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), false), select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), true), all(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = Struct_1(~1u, _wgslsmith_sub_u32(u_input.a, 1u));
    let var_2 = func_4(firstLeadingBit(i32(-1i) * -firstLeadingBit(u_input.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(true, Struct_1(4294967295u, u_input.a), Struct_2(Struct_1(4294967295u, u_input.c), Struct_1(57476u, u_input.a), Struct_1(var_1.a, var_1.b)), vec2<bool>(false, true), vec2<bool>(false, true)), true, Struct_3(false, Struct_1(u_input.c, 0u), Struct_2(Struct_1(0u, 51915u), Struct_1(0u, 4294967295u), Struct_1(u_input.c, 6902u)), vec2<bool>(false, true), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(464f - -183f), 422f, 1f))));
    let var_3 = var_2.b;
    var_1 = var_3;
    var var_4 = u_input.d;
    var_1 = var_3;
    var var_5 = 859f;
    var var_6 = 1i << (var_1.b % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, u_input.d), ~var_0) >> ((countOneBits(0u) << (~u_input.c % 32u)) % 32u), -2147483647i), ~abs(u_input.b));
}

