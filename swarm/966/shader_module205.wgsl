struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = true;
    let var_1 = all(vec2<bool>(all(vec2<bool>(u_input.a.x <= u_input.a.x, true)), false));
    var var_2 = _wgslsmith_mod_i32(countOneBits(select(_wgslsmith_add_i32(~2147483647i, -global0.b.x), ~(-2147483647i), false)), global0.b.x);
    let var_3 = Struct_1(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), u_input.a) & _wgslsmith_mult_u32(u_input.a.x, ~4779u), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(25307u, u_input.a.x, u_input.a.x, 17423u)))), true, firstTrailingBit(select(-select(1i, -51417i, var_1), 0i, false)), select(select(vec2<bool>(select(var_1, var_1, true), var_1), vec2<bool>(var_1, false), select(!vec2<bool>(true, var_1), !vec2<bool>(false, var_1), vec2<bool>(var_1, false))), select(select(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, var_1), vec2<bool>(var_1, var_1)), true), select(vec2<bool>(true, true), !vec2<bool>(var_1, false), vec2<bool>(false, true)), true), vec2<bool>(false, false)), vec4<u32>(_wgslsmith_div_u32(0u, _wgslsmith_mod_u32(8971u ^ u_input.a.x, u_input.a.x)), u_input.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.a, select(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(var_1, false, false))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(18408u, u_input.a.x), u_input.a.zy), _wgslsmith_div_u32(u_input.a.x, u_input.a.x), 66710u | u_input.a.x)), u_input.a.x));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1478f)))), (global0.b | global0.b) ^ vec2<i32>(abs(_wgslsmith_mult_i32(var_3.c, var_3.c)), -firstTrailingBit(27208i)), global0.b.x);
    return _wgslsmith_f_op_f32(-1437f + 476f);
}

fn func_2() -> Struct_3 {
    var var_0 = -_wgslsmith_mod_i32(-2147483647i, -60485i);
    var var_1 = u_input.a.zz;
    let var_2 = true;
    var_1 = vec2<u32>(u_input.a.x, u_input.a.x);
    var var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(28701u, 0u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(32295u, var_1.x, u_input.a.x, 23383u), vec4<u32>(1u, 2382u, var_1.x, 24862u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 1u), select(u_input.a, u_input.a, var_2))), vec4<u32>(~1u, ~u_input.a.x, ~49345u, u_input.a.x)), vec4<u32>(_wgslsmith_div_u32(4294967295u, 12558u), ~var_1.x, select(~_wgslsmith_div_u32(17182u, 4294967295u), 1u, var_2), var_1.x | abs(_wgslsmith_div_u32(24078u, var_1.x))));
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(func_3()), -min(global0.b, vec2<i32>(1i, 1i)), 2147483647i));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_3) -> u32 {
    let var_0 = arg_2.a;
    global0 = var_0;
    var var_1 = -_wgslsmith_mult_vec3_i32(~select(countOneBits(vec3<i32>(-4548i, var_0.b.x, 1i)), firstLeadingBit(vec3<i32>(18726i, global0.b.x, -2147483647i)), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, true, arg_0))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(-32070i, -34971i, -2147483647i)), vec3<i32>(1i, 5341i, global0.b.x), firstLeadingBit(vec3<i32>(arg_2.a.c, 2147483647i, var_0.b.x))), ~vec3<i32>(8689i, 20005i, -18370i) << (select(u_input.a, u_input.a, arg_0) % vec3<u32>(32u))));
    var_1 = max(~vec3<i32>(-global0.c, 1i, 77561i), select(_wgslsmith_add_vec3_i32(select(vec3<i32>(-1i, var_0.c, var_1.x), vec3<i32>(arg_2.a.b.x, global0.b.x, var_1.x), arg_0), vec3<i32>(-23563i, var_1.x, var_1.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.c, -2147483647i, 8162i), abs(vec3<i32>(var_1.x, global0.c, var_0.c))), any(select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(false, false, arg_0, false)))) >> (firstTrailingBit(u_input.a) % vec3<u32>(32u)));
    var var_2 = Struct_2(var_0.a, global0.b, ~(-41585i));
    return reverseBits(u_input.a.x);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a)) - arg_2.x) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -531f), arg_3.a.a))))) * 254f);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2221f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) - _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a - global0.a))))))));
    global0 = Struct_2(_wgslsmith_f_op_f32(trunc(-1256f)), ~global0.b, reverseBits(_wgslsmith_mult_i32(global0.b.x, 1i)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-932f - -841f) - -713f)), 1574f, global0.b.x >= (_wgslsmith_mod_i32(global0.c, 23853i) >> ((6203u << (0u % 32u)) % 32u)))));
    var_1 = -1316f;
    global0 = Struct_2(_wgslsmith_f_op_f32(func_5(~73254u, Struct_1(func_4(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -1032f, -1683f, global0.a) * vec4<f32>(global0.a, var_0.x, -298f, 1959f)), func_2()), u_input.a.x >= 77491u, global0.c, vec2<bool>(all(vec4<bool>(false, true, false, true)), true), select(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), true)), vec2<f32>(-911f, _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(ceil(global0.a))))), func_2())), global0.b, _wgslsmith_sub_i32(-5944i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.c, 19030i, global0.c), countOneBits(vec3<i32>(0i, 10646i, global0.b.x))), _wgslsmith_div_i32(global0.c, ~global0.c))));
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_1(~(~(4294967295u >> (u_input.a.x % 32u))) >> (~(~(~u_input.a.x)) % 32u), !all(vec4<bool>(select(true, true, true), any(vec2<bool>(true, true)), true, false)), abs(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-22798i, global0.c, var_0.c), vec3<i32>(-2147483647i, -26711i, global0.c)), ~vec3<i32>(-11384i, -30542i, 15026i)) & 1i), vec2<bool>(any(vec2<bool>(false, false)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), vec4<u32>(~_wgslsmith_add_u32(max(u_input.a.x, u_input.a.x), 1u), countOneBits(u_input.a.x), ~(~(u_input.a.x >> (31072u % 32u))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(u_input.a.x, 1u)), ~_wgslsmith_mult_u32(u_input.a.x, 0u), 4294967295u)));
    global0 = var_0;
    var var_2 = ~_wgslsmith_div_u32(~(~firstTrailingBit(u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(16744u, _wgslsmith_mod_u32(u_input.a.x, 0u), u_input.a.x), vec3<u32>(u_input.a.x, ~4124u, abs(var_1.e.x))));
    global0 = var_0;
    global0 = Struct_2(_wgslsmith_f_op_f32(ceil(var_0.a)), -(~global0.b), _wgslsmith_sub_i32(-50160i, -33052i));
    let var_3 = var_1.b;
    let var_4 = Struct_3(func_1());
    var_2 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, _wgslsmith_add_vec2_u32(u_input.a.xy, vec2<u32>(var_1.e.x, abs(1u))), vec2<i32>(_wgslsmith_add_i32(~(-48851i), var_1.c), -abs(-1i)), 1i);
}

