struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1110f)), _wgslsmith_f_op_f32(-1408f - 116f))), 1f) + -1399f));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(604f + 549f), _wgslsmith_div_f32(913f, 520f))) - _wgslsmith_f_op_f32(sign(-1438f))), -203f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -592f), _wgslsmith_f_op_f32(f32(-1f) * -319f))) - -332f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(614f + _wgslsmith_f_op_f32(sign(-1192f))))) + vec4<f32>(-779f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1880f, 1142f))) - 1f), 1380f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(u_input.d)), 778f)) * -2824f)));
    let var_1 = reverseBits(u_input.a);
    global0 = array<Struct_2, 20>();
    var var_2 = 37771u;
    global0 = array<Struct_2, 20>();
    return global0[_wgslsmith_index_u32(u_input.d, 20u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(all(select(vec4<bool>(arg_1.a, true, arg_1.a, any(vec3<bool>(arg_1.a, true, arg_1.a))), vec4<bool>(true, arg_1.c.x >= -1831f, false, any(vec2<bool>(true, true))), select(vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, true, false, arg_1.a), select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, true, true), true)))), arg_1.b, arg_0.c);
    var var_1 = arg_1;
    let var_2 = Struct_1(-(~2147483647i >> (var_1.b.x % 32u)) < -1i, abs(~max(firstLeadingBit(arg_1.b), vec4<u32>(13295u, 4294967295u, 0u, 1u))), arg_1.c);
    let var_3 = arg_1;
    let var_4 = 76124u != ~(~firstLeadingBit(arg_1.b.x));
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 20>();
    let var_0 = Struct_1(true, _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(87369u, arg_1.b.x, 0u), 1769u, min(1123u << (arg_1.b.x % 32u), ~arg_3.b.x), 54052u), vec4<u32>(4294967295u, 42523u, 14505u, ~(~14661u)), max(~arg_3.b, reverseBits(arg_3.b))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a))), arg_1.c.x, arg_1.c.x, 698f));
    global0 = array<Struct_2, 20>();
    return Struct_1(func_4(Struct_2(arg_1.c.x, 7319i, _wgslsmith_f_op_vec4_f32(exp2(var_0.c))), arg_1, _wgslsmith_mod_i32(arg_0.b, arg_2.b), ~(_wgslsmith_div_i32(u_input.c.x, 16941i) << (arg_3.b.x % 32u))).a, abs(vec4<u32>(34589u, ~select(var_0.b.x, arg_3.b.x, true), arg_1.b.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 43914u), firstTrailingBit(arg_3.b.zy)))), arg_3.c);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>) -> Struct_2 {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    let var_0 = true;
    let var_1 = func_5(global0[_wgslsmith_index_u32(~u_input.e, 20u)], func_4(func_2(), Struct_1(all(vec3<bool>(var_0, var_0, var_0)), vec4<u32>(1u, ~arg_1.x, arg_1.x, u_input.d), vec4<f32>(arg_0.x, -318f, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))), u_input.c.x, -(u_input.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.e), arg_1.yx) % 32u))), func_2(), Struct_1(false, _wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_1.x, 13969u, 22844u, arg_1.x)), ~vec4<u32>(50732u, u_input.e, u_input.d, u_input.d) >> ((vec4<u32>(3764u, 52020u, u_input.e, u_input.e) | vec4<u32>(0u, arg_1.x, 55553u, 1u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-func_4(Struct_2(1000f, -13680i, vec4<f32>(1121f, 497f, arg_0.x, -205f)), Struct_1(true, vec4<u32>(0u, 60758u, arg_1.x, 67119u), vec4<f32>(1396f, -1000f, arg_0.x, 565f)), u_input.c.x, ~(-41803i)).c)));
    global0 = array<Struct_2, 20>();
    return global0[_wgslsmith_index_u32(4294967295u, 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-640f - -530f)), 1002f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1099f * 146f)))), ~vec3<u32>(u_input.d, 7680u, ~(u_input.e << (44238u % 32u))));
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    let var_1 = ~vec3<u32>(~func_5(func_2(), Struct_1(false, vec4<u32>(u_input.e, 4294967295u, 54386u, 1u), vec4<f32>(var_0.c.x, 378f, 549f, 394f)), func_2(), Struct_1(false, vec4<u32>(u_input.e, 39600u, u_input.e, u_input.e), var_0.c)).b.x, _wgslsmith_add_u32(reverseBits(u_input.d), ~0u) & _wgslsmith_clamp_u32(u_input.d, u_input.e, u_input.e), func_5(Struct_2(func_5(Struct_2(-1569f, 83296i, var_0.c), Struct_1(false, vec4<u32>(u_input.d, u_input.e, 1u, 26092u), vec4<f32>(-826f, 906f, 274f, -760f)), var_0, Struct_1(false, vec4<u32>(u_input.e, 0u, 32006u, 12405u), var_0.c)).c.x, -39428i, _wgslsmith_f_op_vec4_f32(vec4<f32>(1222f, 1072f, 1000f, -852f) * vec4<f32>(var_0.c.x, var_0.a, var_0.c.x, -184f))), func_5(Struct_2(var_0.c.x, var_0.b, var_0.c), Struct_1(false, vec4<u32>(58871u, 1u, 14719u, 17639u), var_0.c), func_1(var_0.c.zwy, vec3<u32>(u_input.e, 0u, 4294967295u)), func_4(var_0, Struct_1(true, vec4<u32>(4294967295u, 0u, 1u, 1u), var_0.c), 42732i, 0i)), func_1(_wgslsmith_div_vec3_f32(var_0.c.yzy, vec3<f32>(-1082f, var_0.c.x, 1041f)), _wgslsmith_mod_vec3_u32(vec3<u32>(37170u, u_input.d, 59163u), vec3<u32>(4294967295u, 0u, u_input.e))), Struct_1(true, reverseBits(vec4<u32>(40510u, 0u, 0u, 4294967295u)), func_4(Struct_2(var_0.c.x, var_0.b, vec4<f32>(-1253f, -2402f, -760f, var_0.a)), Struct_1(false, vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d), var_0.c), -2147483647i, 0i).c)).b.x);
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(min((var_2.b >> (4294967295u % 32u)) >> (~4294967295u % 32u), ~13962i), _wgslsmith_dot_vec4_i32(vec4<i32>(-var_0.b, var_0.b, ~(-11743i), _wgslsmith_sub_i32(-1i, u_input.a)), vec4<i32>(var_0.b, firstLeadingBit(2147483647i), _wgslsmith_mult_i32(u_input.c.x, -1i), var_0.b & var_0.b))));
}

