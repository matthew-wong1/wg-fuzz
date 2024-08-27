struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 15553u;

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: i32) -> bool {
    global0 = global1.c.x | 1u;
    let var_0 = Struct_3(global1.a, false, global1.c, global1.d);
    var var_1 = var_0.c;
    var var_2 = arg_2;
    var var_3 = Struct_5(vec4<i32>(arg_1.x, ~arg_2, max(arg_1.x, -(~1i)), select(~select(0i, arg_1.x, true), _wgslsmith_dot_vec3_i32(select(arg_1, vec3<i32>(-3320i, 36334i, -1i), vec3<bool>(var_0.d.c, global1.b, arg_0)), u_input.a), firstTrailingBit(global1.c.x) >= _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c.x, global1.c.x, 4294967295u), vec3<u32>(global1.c.x, 4294967295u, 41802u)))), -1797f);
    return !arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2) -> i32 {
    global1 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-1564f * _wgslsmith_f_op_f32(select(-118f, -304f, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(700f)), _wgslsmith_f_op_f32(global1.a.b.b.x - arg_2.c.x))), arg_0.b.b.x, arg_0.b.b.x), arg_2.b, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1752f)))), _wgslsmith_f_op_f32(global1.d.b.x + _wgslsmith_f_op_f32(-503f * arg_2.b.b.x)), global1.a.a.x, 1000f)), true, firstTrailingBit(global1.c), Struct_1(_wgslsmith_dot_vec3_i32(abs(u_input.a), u_input.a) <= u_input.a.x, _wgslsmith_f_op_vec4_f32(arg_0.a + arg_0.c), ~_wgslsmith_mod_i32(21086i, u_input.a.x) <= -1i, vec3<bool>((global1.c.x != 4294967295u) && arg_0.b.e, arg_1.x, !(24461i == u_input.a.x)), false));
    global1 = Struct_3(Struct_2(global1.a.c, Struct_1(!arg_0.b.c, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-487f, arg_2.a.x, 655f, arg_2.c.x))), arg_1.x, select(arg_2.b.d, global1.a.b.d, select(vec3<bool>(false, false, true), arg_2.b.d, true)), false), vec4<f32>(1141f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x - 375f), 773f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.b.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.b.x - global1.a.a.x)))), false, ~select(vec2<u32>(global1.c.x, global1.c.x) >> ((vec2<u32>(global1.c.x, 25227u) >> (global1.c % vec2<u32>(32u))) % vec2<u32>(32u)), abs(vec2<u32>(31899u, 79338u)), any(vec4<bool>(true, arg_2.b.a, false, arg_2.b.e))), global1.a.b);
    global1 = Struct_3(global1.a, arg_2.b.d.x, ~global1.c, arg_0.b);
    global1 = Struct_3(global1.a, !(!arg_2.b.d.x), ~firstLeadingBit(~global1.c), Struct_1(false, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-279f, arg_2.c.x, -423f, -591f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.c.x, 528f, -1066f, -1805f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.b.x, -539f, 414f, 205f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) >= arg_2.b.b.x, global1.d.d, any(vec3<bool>(true, true, true))));
    let var_0 = Struct_5(vec4<i32>(781i, firstTrailingBit(u_input.a.x), ~(~25622i), ~abs(2147483647i)), _wgslsmith_f_op_f32(floor(global1.d.b.x)));
    return -(~firstTrailingBit(_wgslsmith_clamp_i32(-35313i, u_input.a.x, var_0.a.x)) | -18317i);
}

fn func_2() -> Struct_5 {
    global1 = Struct_3(global1.a, all(!vec2<bool>(true != global1.d.a, true)), ~global1.c, Struct_1(func_1(false, u_input.a, func_3(global1.a, vec2<bool>(true, true), global1.a)), global1.d.b, any(vec2<bool>(-711f > global1.a.c.x, true)), select(global1.d.d, select(select(global1.d.d, global1.d.d, global1.d.e), vec3<bool>(false, true, true), false), any(global1.d.d)), true));
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-1072f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.b.x + 968f) * _wgslsmith_f_op_f32(-global1.a.c.x)) * _wgslsmith_f_op_f32(ceil(1050f)))), global1.c.x, firstLeadingBit(vec3<u32>(~global1.c.x, global1.c.x, ~max(global1.c.x, global1.c.x))), global1.a, Struct_3(global1.a, true, vec2<u32>(firstTrailingBit(global1.c.x), global1.c.x) ^ vec2<u32>(global1.c.x, global1.c.x), global1.d));
    let var_1 = _wgslsmith_f_op_f32(ceil(var_0.d.a.x));
    let var_2 = vec2<i32>(~(1i & (u_input.a.x ^ (u_input.a.x << (var_0.e.c.x % 32u)))), u_input.a.x);
    var var_3 = reverseBits(~reverseBits(vec3<u32>(1966u, global1.c.x, global1.c.x))) & var_0.c;
    return Struct_5(abs(select(~vec4<i32>(u_input.a.x, var_2.x, 6459i, 37097i) ^ abs(vec4<i32>(1i, var_2.x, var_2.x, u_input.a.x)), vec4<i32>(var_2.x, var_2.x, _wgslsmith_add_i32(-1i, var_2.x), 37765i), select(!vec4<bool>(global1.b, false, true, true), !vec4<bool>(false, true, true, var_0.d.b.a), !vec4<bool>(true, global1.a.b.d.x, global1.b, global1.b)))), -1715f);
}

fn func_4(arg_0: bool, arg_1: Struct_5) -> Struct_3 {
    global0 = 4294967295u;
    let var_0 = global1.d.b;
    global1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.a.a.x, -1454f, -681f, var_0.x), vec4<f32>(global1.d.b.x, 1900f, global1.a.a.x, 857f)))), Struct_1(!all(vec4<bool>(arg_0, false, arg_0, false)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.a.c.x, -1000f, var_0.x, 1000f))), arg_0 || all(vec4<bool>(global1.b, global1.a.b.c, true, false)), vec3<bool>(any(vec4<bool>(true, global1.b, true, true)), true, arg_0), any(!vec3<bool>(true, false, global1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 1000f, -210f, global1.d.b.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-931f, arg_1.b, global1.d.b.x, 516f), global1.a.c)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2270f, 1486f, -1000f, -160f) - _wgslsmith_f_op_vec4_f32(min(global1.d.b, vec4<f32>(var_0.x, 1180f, -307f, arg_1.b)))))), any(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)) || global1.d.c, (vec2<u32>(global1.c.x, ~global1.c.x) << (global1.c % vec2<u32>(32u))) & vec2<u32>(1u, 1u), global1.a.b);
    global0 = _wgslsmith_dot_vec4_u32(~(~_wgslsmith_div_vec4_u32(~vec4<u32>(38072u, global1.c.x, global1.c.x, global1.c.x), ~vec4<u32>(1u, global1.c.x, global1.c.x, global1.c.x))), ~abs(abs(reverseBits(vec4<u32>(global1.c.x, 31028u, global1.c.x, 1u)))));
    var var_1 = abs(global1.c << (~vec2<u32>(0u << (global1.c.x % 32u), select(1u, 0u, false)) % vec2<u32>(32u)));
    return Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-421f, -589f, 1000f, 929f))), vec4<f32>(arg_1.b, 1733f, 1186f, arg_1.b)), vec4<f32>(_wgslsmith_f_op_f32(-304f * -1000f), _wgslsmith_f_op_f32(global1.d.b.x * var_0.x), arg_1.b, _wgslsmith_div_f32(global1.d.b.x, global1.d.b.x)), global1.b)), Struct_1(0u < var_1.x, _wgslsmith_f_op_vec4_f32(-global1.d.b), true, select(vec3<bool>(false, arg_0, global1.b), select(global1.d.d, global1.a.b.d, global1.a.b.d), global1.d.d), any(!global1.a.b.d.xx)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global1.d.b - global1.d.b)))), !any(select(vec4<bool>(global1.d.c, false, true, global1.a.b.c), vec4<bool>(arg_0, true, global1.b, false), !vec4<bool>(false, global1.b, arg_0, global1.a.b.e))), max(~firstTrailingBit(select(vec2<u32>(1u, var_1.x), vec2<u32>(4294967295u, 81626u), vec2<bool>(false, false))), vec2<u32>(~85706u, 0u)), global1.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(!all(!global1.a.b.d) & func_1(!global1.a.b.a, _wgslsmith_div_vec3_i32(vec3<i32>(5214i, -25395i, u_input.a.x), vec3<i32>(u_input.a.x, 9612i, u_input.a.x)), select(2147483647i, u_input.a.x ^ 1i, false)), func_2());
    let var_0 = countOneBits(vec4<i32>(_wgslsmith_div_i32(u_input.a.x, 68506i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, reverseBits(u_input.a.x)), vec2<i32>(51211i, u_input.a.x)), _wgslsmith_dot_vec2_i32(~reverseBits(u_input.a.yx), u_input.a.yx), u_input.a.x));
    let var_1 = 0i;
    global0 = _wgslsmith_dot_vec4_u32(firstLeadingBit(~reverseBits(~vec4<u32>(4294967295u, 47933u, 40491u, 0u))), min(vec4<u32>(17002u, global1.c.x, 4294967295u, global1.c.x), ~reverseBits(vec4<u32>(1u, global1.c.x, global1.c.x, 32663u) << (vec4<u32>(global1.c.x, global1.c.x, global1.c.x, global1.c.x) % vec4<u32>(32u)))));
    var var_2 = -u_input.a.x;
    let var_3 = global1.d.d;
    global1 = Struct_3(global1.a, var_3.x, _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.c.x, 1u), global1.c, vec2<u32>(global1.c.x, global1.c.x)), ~vec2<u32>(4294967295u, global1.c.x), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, global1.c.x), vec2<u32>(global1.c.x, global1.c.x))) << (~(~global1.c) % vec2<u32>(32u)), ~global1.c, _wgslsmith_mult_vec2_u32(abs(~global1.c), _wgslsmith_div_vec2_u32(vec2<u32>(global1.c.x, 0u), global1.c))), Struct_1(var_3.x, global1.a.b.b, true, select(!global1.d.d, select(!global1.d.d, func_4(var_3.x, Struct_5(var_0, global1.d.b.x)).a.b.d, true), func_4(global1.d.b.x < 1104f, func_2()).a.b.d), select(!var_3.x, var_3.x, var_3.x)));
    let var_4 = ~(firstLeadingBit(reverseBits(vec3<u32>(global1.c.x, 62917u, global1.c.x)) ^ reverseBits(vec3<u32>(global1.c.x, 0u, global1.c.x))) ^ vec3<u32>(global1.c.x, select(0u, global1.c.x | global1.c.x, false), firstTrailingBit(_wgslsmith_mod_u32(85153u, global1.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(!var_3.x, func_2()).a.b.b.x);
}

