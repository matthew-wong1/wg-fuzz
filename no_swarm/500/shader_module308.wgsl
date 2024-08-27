struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(9538u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = Struct_2(Struct_1(false, ~(abs(global0.x) | countOneBits(1u)), select(!vec3<bool>(true, true, arg_0), vec3<bool>(any(vec3<bool>(true, false, true)), any(vec2<bool>(arg_0, false)), global0.x >= global0.x), arg_0)), u_input.d.x << (~(~countOneBits(global0.x)) % 32u), _wgslsmith_sub_i32(~u_input.a, -(~1i)) >= -197i);
    let var_1 = ~reverseBits(1u << (0u % 32u));
    return _wgslsmith_sub_i32(u_input.a, u_input.d.x) & -var_0.b;
}

fn func_2() -> Struct_4 {
    let var_0 = ~u_input.d.x <= ~func_3(false);
    global0 = ~(~vec2<u32>(0u, firstLeadingBit(1u)) << (~firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global0.x), vec2<u32>(41750u, 4294967295u))) % vec2<u32>(32u)));
    var var_1 = Struct_4(~4294967295u);
    let var_2 = vec2<bool>(true, var_0);
    global0 = select(vec2<u32>(89093u, ~(~1u)), ~reverseBits(firstTrailingBit(vec2<u32>(88391u, 4294967295u) ^ vec2<u32>(global0.x, var_1.a))), _wgslsmith_clamp_i32(-max(u_input.c.x, 64008i), i32(-1i) * -15745i, abs(_wgslsmith_div_i32(-46724i, u_input.d.x))) == -u_input.c.x);
    return Struct_4(~var_1.a);
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_mod_u32(~_wgslsmith_div_u32(80945u, arg_0.a), _wgslsmith_mod_u32(4294967295u, 1824u)) ^ firstLeadingBit(_wgslsmith_clamp_u32(~1u, firstTrailingBit(5078u), abs(arg_0.a))));
    var_0 = func_2();
    var var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~(~vec2<u32>(var_0.a, global0.x)), countOneBits(select(vec2<u32>(arg_0.a, 82852u) << (vec2<u32>(9141u, 91530u) % vec2<u32>(32u)), select(vec2<u32>(arg_0.a, 1u), vec2<u32>(4294967295u, global0.x), arg_0.b), all(vec2<bool>(true, false))))), vec2<u32>(~23288u, ~(~(~var_0.a))), abs(vec2<u32>(arg_0.a, firstTrailingBit(global0.x))));
    var var_2 = ~(~26586u);
    var var_3 = Struct_1(false, firstTrailingBit(26719u), vec3<bool>(arg_2, u_input.c.x <= u_input.a, 1678f >= arg_0.c));
    return Struct_4(~(~(~(global0.x ^ var_0.a))));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = arg_3.a;
    global0 = ~(~vec2<u32>(arg_1.a, reverseBits(var_0.b)));
    let var_1 = Struct_2(arg_3.a, 1i, arg_3.c);
    var_0 = Struct_1(arg_1.a <= 4294967295u, 1u, select(select(vec3<bool>(false, true, any(vec4<bool>(arg_3.a.c.x, true, var_0.c.x, false))), select(vec3<bool>(var_0.a, true, arg_2.x), arg_2.zwx, var_1.c), arg_2.x), arg_2.xyx, all(vec2<bool>(arg_2.x & var_0.a, any(vec4<bool>(true, true, arg_2.x, false))))));
    global0 = ~vec2<u32>(33542u, _wgslsmith_sub_u32(~(~6177u), var_1.a.b));
    return _wgslsmith_div_vec2_u32(~abs(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(33107u, arg_3.a.b), vec2<u32>(1u, var_0.b), vec2<u32>(var_1.a.b, var_1.a.b)))), ~(~(~countOneBits(vec2<u32>(var_0.b, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(~(~firstTrailingBit(abs(1u))), ~global0.x);
    let var_0 = Struct_5(_wgslsmith_add_u32(abs(abs(29718u)), global0.x), -2147483647i, vec2<i32>(firstTrailingBit(-5298i), 77168i));
    var var_1 = _wgslsmith_div_vec2_u32(~(func_4(var_0.b, func_1(Struct_3(global0.x, vec2<bool>(false, true), 653f), 370f, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true), Struct_2(Struct_1(false, var_0.a, vec3<bool>(false, false, false)), 0i, false)) ^ vec2<u32>(_wgslsmith_clamp_u32(var_0.a, global0.x, 70494u), 62279u ^ var_0.a)), ~vec2<u32>(~global0.x ^ _wgslsmith_mod_u32(4294967295u, var_0.a), 0u));
    global0 = ~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(60209u, var_1.x)), vec2<u32>(~var_1.x, 1u)) << (select(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(54067u, var_1.x, 50499u, 23533u), vec4<u32>(0u, var_0.a, var_0.a, var_0.a)), 74490u), vec2<u32>(~(~var_1.x), countOneBits(global0.x)), vec2<bool>(false, !all(vec2<bool>(false, true)))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, vec4<f32>(_wgslsmith_f_op_f32(select(-488f, -2412f, !all(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1472f)) - -944f), _wgslsmith_f_op_f32(f32(-1f) * -849f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1440f, _wgslsmith_f_op_f32(-1372f - 1000f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1183f + -1996f))))), ~0u, -1i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -487f))), -208f)), _wgslsmith_f_op_f32(-312f * _wgslsmith_div_f32(-396f, _wgslsmith_f_op_f32(min(-829f, -1053f)))), true)));
}

