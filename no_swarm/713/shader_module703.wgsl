struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> u32 {
    let var_0 = u_input.a;
    var var_1 = 1i;
    var var_2 = abs(~select(vec3<i32>(u_input.b.x, min(2147483647i, u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.zz)), ~vec3<i32>(1i, u_input.b.x, u_input.b.x), true));
    let var_3 = 0u;
    var_2 = u_input.b;
    return var_0;
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(~u_input.d.x, 1u, ~1u);
    let var_1 = select(vec4<u32>(abs(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.a, u_input.c), ~u_input.a, 4294967295u)), _wgslsmith_dot_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c, u_input.c, u_input.a, 4294967295u), vec4<u32>(4294967295u, 4294967295u, u_input.d.x, 61976u)), abs(vec4<u32>(var_0.b, var_0.c, 4294967295u, var_0.a))), ~firstTrailingBit(vec4<u32>(u_input.c, var_0.a, 123124u, var_0.a))), var_0.b, 4294967295u), countOneBits(vec4<u32>(abs(12170u) >> ((55133u >> (var_0.b % 32u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, var_0.b, 1u), var_0.c), _wgslsmith_add_u32(113771u, var_0.b) << (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, var_0.a, 40808u), vec3<u32>(u_input.c, 1u, u_input.a)))), true);
    let var_2 = _wgslsmith_div_f32(-493f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), 522f)));
    let var_3 = 26904u;
    let var_4 = Struct_1(func_2(), u_input.a, var_3);
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = -u_input.b.x;
    return Struct_3(Struct_1(12906u, 24750u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.a, u_input.a, 1u, u_input.a)) ^ vec4<u32>(107434u, arg_0.c, 86253u, 1u), func_3())), true, u_input.b.x, 798f);
}

fn func_1() -> vec2<bool> {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_mod_u32(~_wgslsmith_add_u32(9538u, u_input.d.x), u_input.d.x << (u_input.d.x % 32u));
    var var_2 = func_4(Struct_1(~func_2() >> (~1u % 32u), _wgslsmith_div_u32(26807u, u_input.d.x), var_1), firstLeadingBit(u_input.b), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(12350u >> (var_1 % 32u), u_input.d.x, _wgslsmith_div_u32(19285u, 49811u), 27660u), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d.x, 26383u, u_input.d.x, 4294967295u)), func_3())), abs(var_1), 0u));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-818f, var_2.d, -1291f) * vec3<f32>(var_2.d, var_2.d, var_2.d)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.d, -147f, 1295f), vec3<f32>(-391f, 787f, -505f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-306f, var_2.d, var_2.d)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-593f, var_2.d, var_2.d) * vec3<f32>(-1489f, var_2.d, 210f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-525f, 373f, var_2.d), vec3<f32>(var_2.d, var_2.d, var_2.d), vec3<bool>(false, var_2.b, var_2.b))), select(var_2.b, false, false))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-352f, var_2.d, 1437f)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_2.d, 1789f, var_2.d), vec3<f32>(var_2.d, var_2.d, var_2.d)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.d, 1629f, var_2.d), vec3<f32>(var_2.d, -380f, -319f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(165f, var_2.d, -1610f), vec3<f32>(708f, 2327f, -528f))))))));
    var var_4 = Struct_3(func_4(var_2.a, firstTrailingBit(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, var_2.c, var_2.c), vec3<i32>(var_2.c, var_2.c, 14207i))), vec3<u32>(_wgslsmith_div_u32(~var_1, _wgslsmith_mod_u32(var_2.a.c, 4294967295u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.a.c, 4294967295u, var_2.a.b, 4294967295u), vec4<u32>(u_input.a, var_2.a.a, 50097u, 39417u) ^ vec4<u32>(86810u, var_1, u_input.a, 0u)), var_1)).a, (var_2.b || all(select(vec3<bool>(false, true, var_2.b), vec3<bool>(true, true, var_2.b), var_2.b))) & true, var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(-1735f, 618f)), 137f))));
    return vec2<bool>(true, !(var_2.b || !(!var_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -countOneBits(_wgslsmith_sub_i32(abs(u_input.b.x), ~u_input.b.x)) != u_input.b.x;
    var_0 = all(func_1());
    var var_1 = abs(37256u);
    var_1 = _wgslsmith_clamp_u32(1u, abs(_wgslsmith_mult_u32(0u, u_input.a) & ~1u), u_input.a);
    var var_2 = u_input.a;
    var_0 = !(!(!(!any(vec4<bool>(true, false, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1787f, 952f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

