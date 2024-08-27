struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: u32) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_f32(765f - _wgslsmith_f_op_f32(-1363f - -1000f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = 0i;
    let var_1 = true;
    return 46121u;
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = 649f;
    let var_1 = u_input.a.x;
    let var_2 = Struct_1(1i, ~min(u_input.a.x, u_input.a.x), select(false, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(54139u, u_input.a.x, 43914u, 4294967295u), vec4<u32>(0u, 848u, 15422u, 47831u)), var_1 << (4294967295u % 32u)) <= 1u, true), arg_0.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a))))))));
    var var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_2.a, _wgslsmith_clamp_i32(-5370i, u_input.b >> (var_1 % 32u), ~u_input.b)), -var_2.a), min(~vec2<i32>(u_input.b, -2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, 2147483647i, 16040i), vec3<i32>(2147483647i, -1i, var_2.a)), -1i), vec2<i32>(-u_input.b, abs(-28197i)), vec2<i32>(var_2.a, var_2.a))));
    var var_4 = Struct_1(-47370i, _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_clamp_u32(var_1, var_1, var_1) & countOneBits(u_input.a.x), _wgslsmith_mult_u32(reverseBits(u_input.a.x), var_1)), _wgslsmith_mult_vec3_u32(vec3<u32>(func_3(Struct_2(346f), 558f, var_2.c, Struct_2(-194f)), var_2.b, 20688u), ~(~vec3<u32>(u_input.a.x, var_2.b, var_1)))), any(select(select(select(vec4<bool>(var_2.c, false, var_2.c, false), vec4<bool>(var_2.c, var_2.c, false, true), false), select(vec4<bool>(var_2.c, false, var_2.c, var_2.c), vec4<bool>(var_2.c, var_2.c, false, var_2.c), var_2.c), !vec4<bool>(var_2.c, false, true, var_2.c)), select(vec4<bool>(var_2.c, true, var_2.c, var_2.c), vec4<bool>(true, false, var_2.c, false), false), any(select(vec3<bool>(false, true, true), vec3<bool>(var_2.c, true, false), true)))), _wgslsmith_f_op_f32(474f * var_2.e.x), var_2.e);
    return select(var_2.c, var_2.c, !any(select(vec2<bool>(var_4.c, false), vec2<bool>(var_2.c, false), vec2<bool>(var_2.c, var_4.c)))) | (~(var_1 >> (16111u % 32u)) != ~11265u);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = abs(firstLeadingBit(vec2<i32>(abs(_wgslsmith_sub_i32(u_input.b, u_input.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(81044i, u_input.b, -2147483647i), vec3<i32>(u_input.b, u_input.b, u_input.b)) >> (_wgslsmith_mod_u32(48805u, 1565u) % 32u))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec2_i32(-vec2<i32>(-u_input.b, -u_input.b), max(~vec2<i32>(u_input.b, u_input.b), -vec2<i32>(u_input.b, 64956i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * _wgslsmith_f_op_f32(-1f)));
    var_0 = _wgslsmith_mult_vec2_i32(firstTrailingBit(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(25402i, -6568i), -vec2<i32>(7229i, u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(50073i, var_0.x), vec2<i32>(u_input.b, u_input.b))), max(vec2<i32>(13737i, var_0.x), ~vec2<i32>(0i, var_0.x)))), ~(-min(vec2<i32>(2147483647i, u_input.b), vec2<i32>(var_0.x, -2147483647i)) | vec2<i32>(u_input.b, ~(-30128i))));
    let var_2 = Struct_2(var_1);
    var var_3 = var_2;
    var_3 = func_4(func_1(_wgslsmith_sub_u32(4903u, 1u)), !vec3<bool>((u_input.a.x >= u_input.a.x) && (u_input.b < var_0.x), all(vec2<bool>(true, true)) == func_2(var_2), true));
    var var_4 = Struct_2(1218f);
    let var_5 = -1639f;
    var_3 = func_4(Struct_2(var_2.a), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1840f + var_4.a), _wgslsmith_f_op_f32(sign(292f)), func_2(var_2)))), var_3.a, 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_4.a)), _wgslsmith_f_op_f32(-383f + var_5)), var_5)), select(~max(18030u, reverseBits(4294967295u)), u_input.a.x, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))))), u_input.a.x, u_input.b);
}

