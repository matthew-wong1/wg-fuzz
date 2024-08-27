struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec3<f32>) -> u32 {
    var var_0 = true;
    var var_1 = any(select(select(arg_1, select(arg_0.b, arg_1, select(vec4<bool>(false, false, arg_1.x, arg_1.x), arg_1, true)), select(!vec4<bool>(true, arg_1.x, true, false), vec4<bool>(arg_1.x, false, arg_1.x, false), !arg_0.e.a)), arg_1, !vec4<bool>(!arg_1.x, -15511i != u_input.a, arg_1.x, all(arg_1))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, 2147f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1987f, arg_2.x)) * vec3<f32>(arg_2.x, arg_2.x, -273f)))));
    let var_3 = arg_1.xw;
    let var_4 = -vec3<i32>(max(u_input.a, reverseBits(u_input.a)), ~u_input.a, -firstTrailingBit(~(-50011i)));
    return _wgslsmith_div_u32(u_input.b, ~max(_wgslsmith_div_u32(~38806u, _wgslsmith_div_u32(arg_0.c.x, arg_0.c.x)), arg_0.c.x));
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(707f + _wgslsmith_f_op_f32(f32(-1f) * -578f)))) * _wgslsmith_f_op_f32(f32(-1f) * -965f));
    let var_1 = Struct_2(Struct_1(vec4<i32>(min(u_input.a, -34134i | u_input.a), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(65457i, 2147483647i), vec2<i32>(-1i, u_input.a)), i32(-1i) * -18036i), reverseBits(2368i), 0i >> (u_input.c.x % 32u)), -_wgslsmith_mod_vec2_i32(vec2<i32>(51321i, u_input.a), vec2<i32>(-60522i, u_input.a)) << ((u_input.c.xx << (u_input.c.zw % vec2<u32>(32u))) % vec2<u32>(32u)), ~func_3(Struct_4(true, vec4<bool>(true, true, true, false), u_input.c.yy, vec2<bool>(true, false), Struct_3(true)), vec4<bool>(false, false, true, false), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1548f, -712f, -434f), vec3<f32>(-116f, -1020f, 315f))))), u_input.a, Struct_1(~(vec4<i32>(-1i) * -vec4<i32>(u_input.a, 1930i, u_input.a, 44838i)), _wgslsmith_mod_vec2_i32(~(-vec2<i32>(u_input.a, u_input.a)), select(vec2<i32>(1i, u_input.a) | vec2<i32>(62627i, u_input.a), select(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, 15125i), true), vec2<bool>(true, true))), u_input.c.x), vec2<i32>(i32(-1i) * -u_input.a, u_input.a | _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, u_input.a, 17428i, u_input.a), -vec4<i32>(43183i, u_input.a, u_input.a, u_input.a))));
    var var_2 = Struct_2(Struct_1(-abs(~var_1.c.a), vec2<i32>(-1i) * -var_1.c.b, ~36123u), -reverseBits(-5410i), Struct_1(var_1.a.a, vec2<i32>(-1i << (0u % 32u), var_1.b) ^ vec2<i32>(-var_1.b, var_1.c.a.x | u_input.a), firstTrailingBit(_wgslsmith_add_u32(abs(0u), var_1.a.c))), firstTrailingBit(vec2<i32>(-41066i, _wgslsmith_clamp_i32(abs(-4054i), firstLeadingBit(u_input.a), select(u_input.a, var_1.d.x, true)))));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -121f), -1023f))));
    var var_3 = var_1.c.a;
    return vec4<bool>(!(!(!all(vec4<bool>(true, false, false, false)))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true))), any(vec2<bool>(all(vec2<bool>(true, true)), false)), true);
}

fn func_1() -> bool {
    var var_0 = Struct_4(abs(u_input.c.x) >= _wgslsmith_add_u32(~u_input.c.x >> (~32290u % 32u), ~(~19677u)), !(!func_2()), ~(u_input.c.yy ^ u_input.c.xw), vec2<bool>(false, all(vec4<bool>(true, true, true, true)) && true), Struct_3(_wgslsmith_clamp_i32(-1i, u_input.a, u_input.a) == -13133i));
    var_0 = Struct_4(var_0.d.x, var_0.b, vec2<u32>(44618u, 28453u), var_0.b.ww, Struct_3(true));
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.a, -1i, -1i, 2147483647i), vec4<i32>(21044i, u_input.a, u_input.a, -2147483647i)), vec4<i32>(-22901i, u_input.a, abs(-14253i), 1i)), vec2<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a) << (1u % 32u), -50156i), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, u_input.c.x), u_input.c.yxx))), u_input.a, Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(40403i, u_input.a, 11710i, -1i), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, -69797i, u_input.a)), select(vec4<i32>(-1i, u_input.a, -1i, 1i), vec4<i32>(u_input.a, -42960i, -10607i, u_input.a), var_0.d.x))), min(min(firstLeadingBit(vec2<i32>(u_input.a, u_input.a)), countOneBits(vec2<i32>(-13419i, u_input.a))), vec2<i32>(1i, min(-2147483647i, -2147483647i))), _wgslsmith_add_u32(firstTrailingBit(u_input.c.x), u_input.c.x & ~u_input.b)), -(~select(vec2<i32>(u_input.a, 17657i), max(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, u_input.a)), vec2<bool>(true, true))));
    let var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(56642u, abs(var_0.c.x), 1u), ~vec3<u32>(_wgslsmith_add_u32(24125u, 1u), u_input.b, abs(0u))), vec3<u32>(~(u_input.c.x ^ 37614u), u_input.b, _wgslsmith_dot_vec4_u32(select(u_input.c, vec4<u32>(var_1.a.c, u_input.c.x, 0u, var_0.c.x), var_0.b), u_input.c) ^ abs(21399u)));
    var_0 = Struct_4(true, var_0.b, ~_wgslsmith_add_vec2_u32(var_0.c, vec2<u32>(86878u, ~var_0.c.x)), select(vec2<bool>(true, var_0.d.x), var_0.b.xw, var_0.d.x), var_0.e);
    return !(!var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(true, vec4<bool>(!func_1(), true || ((0u != u_input.c.x) | true), false, !func_2().x), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(min(19478u, 13283u), u_input.c.x), _wgslsmith_div_u32(u_input.c.x, ~1u)), vec2<u32>(firstTrailingBit(~0u), 0u)), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), Struct_3(true));
    var var_1 = Struct_2(Struct_1(vec4<i32>(_wgslsmith_mult_i32(-9873i, u_input.a ^ u_input.a), _wgslsmith_add_i32(1i, firstLeadingBit(u_input.a)), -_wgslsmith_add_i32(u_input.a, 0i), -reverseBits(u_input.a)), vec2<i32>(_wgslsmith_sub_i32(u_input.a, -12211i), ~(-u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, 4294967295u, firstLeadingBit(0u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, u_input.c.x), u_input.c.zyx))), _wgslsmith_add_i32(_wgslsmith_add_i32(~(u_input.a & 0i), -u_input.a), u_input.a), Struct_1(vec4<i32>(-u_input.a, u_input.a, -(~u_input.a), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, 54471i), vec4<i32>(u_input.a, 16810i, u_input.a, u_input.a))), _wgslsmith_add_vec2_i32(max(~vec2<i32>(78724i, -18886i), vec2<i32>(u_input.a, 47949i) | vec2<i32>(u_input.a, 2147483647i)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(26858i, 1i), vec2<i32>(u_input.a, 0i)), u_input.a | u_input.a)), max(_wgslsmith_mod_u32(~u_input.c.x, ~27096u), 76446u)), abs(reverseBits(_wgslsmith_div_vec2_i32(abs(vec2<i32>(-13620i, 0i)), select(vec2<i32>(-2114i, 0i), vec2<i32>(u_input.a, -2147483647i), var_0.b.zx)))));
    var var_2 = 0i;
    var_1 = Struct_2(var_1.a, reverseBits(u_input.a), Struct_1(vec4<i32>(i32(-1i) * -32245i, reverseBits(-1i ^ u_input.a), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_1.a.a.zw, vec2<i32>(u_input.a, u_input.a), var_1.d), _wgslsmith_mult_vec2_i32(var_1.a.b, vec2<i32>(u_input.a, u_input.a))), ~1i), var_1.d, _wgslsmith_clamp_u32(var_1.c.c, u_input.b, ~(~var_1.c.c))), var_1.a.a.yz);
    var_1 = Struct_2(var_1.c, _wgslsmith_dot_vec2_i32(var_1.d & vec2<i32>(max(u_input.a, 0i), firstLeadingBit(u_input.a)), _wgslsmith_add_vec2_i32(-(~var_1.a.a.zw), reverseBits(-vec2<i32>(-3836i, 54216i)))), Struct_1(var_1.c.a, ~(vec2<i32>(12474i, 18426i) ^ -var_1.d), var_0.c.x), vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.d.x, 2147483647i), firstTrailingBit(var_1.a.a.yx), var_1.a.b));
    var var_3 = -1194f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(924f, 1000f, 460f, -325f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2170f), _wgslsmith_f_op_f32(333f - 755f), _wgslsmith_f_op_f32(f32(-1f) * -168f), _wgslsmith_f_op_f32(-692f - -1084f)), !vec4<bool>(var_0.b.x, false, false, false)))), vec3<f32>(1773f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1865f - 281f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(503f * -1000f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-579f, 520f)), -663f)))));
}

