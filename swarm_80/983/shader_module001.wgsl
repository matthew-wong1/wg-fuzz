struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1271f, 297f, 649f, 883f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> i32 {
    let var_0 = 1030f;
    let var_1 = Struct_1(arg_1.b.a, true, ~countOneBits(-12227i), u_input.a.x);
    let var_2 = Struct_1(var_1.a, true, countOneBits(~29482i), var_1.d >> (~0u % 32u));
    let var_3 = arg_1;
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, var_0, var_0, arg_1.a), vec4<f32>(global0.x, 341f, arg_1.a, var_0))) * vec4<f32>(var_0, arg_1.a, -1000f, -615f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1051f, var_3.a, var_3.a, 1000f)), arg_1.b.b)))));
    return -(firstLeadingBit(-_wgslsmith_div_i32(-1i, var_2.c)) << (1u % 32u));
}

fn func_2() -> vec3<i32> {
    var var_0 = any(!(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))));
    var_0 = true;
    var_0 = true;
    let var_1 = -1447f;
    var_0 = !(((-u_input.d.x ^ _wgslsmith_div_i32(-11190i, -2147483647i)) & -1i) > u_input.c);
    return vec3<i32>(-22308i, -36377i, func_3(u_input.d.zy, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -621f), Struct_1(any(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, true, false)), u_input.c << (u_input.a.x % 32u), ~18477u))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = select(vec4<u32>(_wgslsmith_clamp_u32(arg_1.b.d, ~firstLeadingBit(u_input.a.x), ~38313u), ~(~(~arg_1.b.d)), arg_0.b.d, 57241u), vec4<u32>(max(_wgslsmith_mod_u32(1u, 4294967295u) & arg_1.b.d, 1u), ~50610u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~u_input.a, ~vec3<u32>(4294967295u, 4294967295u, 1u)), u_input.a), firstTrailingBit(u_input.a.x)), vec4<bool>(all(vec3<bool>(arg_0.b.b, all(vec4<bool>(arg_0.b.a, false, false, true)), any(vec4<bool>(true, arg_1.b.a, arg_0.b.a, true)))), (86777u <= arg_0.b.d) || false, any(!vec3<bool>(arg_1.b.a, arg_1.b.b, arg_0.b.b)), false));
    let var_1 = abs(_wgslsmith_mult_vec3_i32(-u_input.d, ~func_2()));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0.wx)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 988f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -488f))))))));
    var var_3 = Struct_2(_wgslsmith_div_f32(-739f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, arg_1.a))))), Struct_1(true, !arg_1.b.a, reverseBits(var_1.x), countOneBits(_wgslsmith_sub_u32(arg_1.b.d, 5919u))));
    var_0 = select(vec4<u32>(var_3.b.d, _wgslsmith_add_u32(arg_0.b.d, arg_1.b.d), u_input.a.x, abs(~arg_1.b.d)), min(~vec4<u32>(0u, 0u, 4294967295u, 4294967295u) & abs(vec4<u32>(1u, 4294967295u, var_3.b.d, arg_0.b.d)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(arg_1.b.d, arg_1.b.d, 37464u, 1u)), reverseBits(vec4<u32>(4294967295u, 25027u, var_3.b.d, arg_0.b.d)))), vec4<bool>(!(-5510i >= u_input.b.x), !all(vec2<bool>(var_3.b.a, var_3.b.b)), var_3.b.a, !arg_1.b.b)) >> (((~select(vec4<u32>(u_input.a.x, 13469u, u_input.a.x, 1u), vec4<u32>(9998u, var_3.b.d, 1u, 1u), vec4<bool>(false, false, var_3.b.a, true)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(57801u, 86651u, 1u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(20951u, 1u, 8666u, arg_0.b.d), vec4<u32>(arg_0.b.d, 4294967295u, u_input.a.x, var_3.b.d)))) & (~vec4<u32>(arg_0.b.d, 10020u, 0u, var_0.x) ^ vec4<u32>(~19577u, reverseBits(u_input.a.x), ~42789u, ~arg_1.b.d))) % vec4<u32>(32u));
    return _wgslsmith_mod_u32(~1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(44955u, u_input.a.x, 82715u, var_0.x), vec4<u32>(0u, u_input.a.x, var_3.b.d, arg_0.b.d) ^ vec4<u32>(var_3.b.d, arg_0.b.d, u_input.a.x, 8314u)), u_input.a.x)) & ~_wgslsmith_sub_u32(~(~var_3.b.d), ~firstLeadingBit(arg_1.b.d));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    return _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1.d, ~u_input.a.x, 4294967295u) ^ countOneBits(abs(u_input.a))), countOneBits(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = global0.x != global0.x;
    let var_1 = ~_wgslsmith_mod_i32(-u_input.c, _wgslsmith_div_i32(_wgslsmith_div_i32(~(-1i), 43288i), u_input.c));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-1095f + 546f), _wgslsmith_div_f32(-1549f, -1163f))))));
    var_0 = true;
    var_0 = all(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = vec4<u32>(1u, 48512u, 1u, 4294967295u) >> (firstTrailingBit(~vec4<u32>(_wgslsmith_div_u32(u_input.a.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 5390u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)), ~44270u, u_input.a.x)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, 15201u, func_4(u_input.b, Struct_1(any(vec3<bool>(false, false, false)), true, min(u_input.b.x, u_input.c), func_1(Struct_2(global0.x, Struct_1(true, false, 24838i, 26899u)), Struct_2(-271f, Struct_1(true, true, u_input.c, 0u))))), u_input.a.x), var_1);
}

