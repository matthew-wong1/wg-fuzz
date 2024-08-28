struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<u32> {
    global0 = array<Struct_3, 30>();
    let var_0 = select(vec2<bool>(countOneBits(u_input.c) > arg_0, !any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))), select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), vec2<bool>(true | all(vec4<bool>(true, false, true, true)), any(vec4<bool>(true, true, true, true))), !(true && (arg_1.a.x == -1i))), true);
    var var_1 = ~abs(vec4<u32>(0u, ~u_input.c, u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0) >> (vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u)), vec3<u32>(7343u, 38246u, u_input.c))));
    var var_2 = true;
    global0 = array<Struct_3, 30>();
    return vec4<u32>(_wgslsmith_mod_u32(~u_input.c, 1u), var_1.x, 136179u, max(select(~(~4294967295u), arg_0, false), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(2970u, var_1.x, 1u, u_input.c), vec4<u32>(33406u, 1u, 0u, 7749u))));
}

fn func_2() -> vec3<bool> {
    var var_0 = func_3(u_input.c, Struct_1(min(vec4<i32>(u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -4794i, -2147483647i, 2147483647i), vec4<i32>(u_input.b, u_input.b, -1i, -5121i)), u_input.b, ~(-1i)), reverseBits(-vec4<i32>(u_input.d.x, 2147483647i, u_input.e, -1i)))));
    var var_1 = Struct_3(true, -838f, vec3<bool>(true, all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))), any(vec2<bool>(true, false)) || true), Struct_1(select(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.d.x, u_input.b), vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, u_input.e)) & ~vec4<i32>(2147483647i, u_input.e, -27032i, 1i), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, 23040i, u_input.e, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, u_input.d.x, u_input.a.x, -1i), vec4<i32>(-97832i, 1i, u_input.b, 1i), vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, -30985i))), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))))));
    let var_2 = vec4<bool>(true, min(_wgslsmith_dot_vec3_u32(var_0.wzy, var_0.wxy) | firstLeadingBit(var_0.x), var_0.x) <= _wgslsmith_mult_u32(~(~u_input.c), _wgslsmith_clamp_u32(~u_input.c, var_0.x, 0u)), !(var_1.d.a.x >= u_input.d.x), all(var_1.c.zz));
    let var_3 = -vec4<i32>(abs(-45917i), _wgslsmith_dot_vec3_i32(vec3<i32>(30852i, 4099i | u_input.d.x, 1i), firstTrailingBit(u_input.a | var_1.d.a.yzx)), -1i, select(u_input.d.x, abs(reverseBits(34291i)), (false || var_2.x) || var_1.a));
    global0 = array<Struct_3, 30>();
    return select(var_2.wyw, vec3<bool>(select(var_1.a, false, 2147483647i >= _wgslsmith_div_i32(u_input.d.x, -1i)), !var_1.c.x, false), !var_2.yww);
}

fn func_1() -> f32 {
    var var_0 = max(u_input.c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 5260u), ~vec2<u32>(7013u, u_input.c))) > u_input.c;
    global0 = array<Struct_3, 30>();
    var_0 = (any(vec3<bool>(true, true, true)) && all(func_2())) | true;
    let var_1 = !(!(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 80830u) | vec4<u32>(31173u, 11609u, u_input.c, 6641u), ~vec4<u32>(4294967295u, 28780u, u_input.c, 12785u)) == _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.c, 60846u, u_input.c)), ~vec3<u32>(5368u, u_input.c, 4294967295u))));
    let var_2 = 1607f;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 * 736f), _wgslsmith_f_op_f32(floor(269f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(2112u, u_input.c, u_input.c, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c, u_input.c, u_input.c), vec4<u32>(1u, 0u, u_input.c, u_input.c)))) << (min(vec4<u32>(0u, firstTrailingBit(~16579u), 20591u, 4294967295u << (abs(u_input.c) % 32u)), countOneBits(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), vec4<u32>(62458u, u_input.c, 15329u, 8164u), vec4<u32>(u_input.c, 64657u, 4294967295u, 5307u))))) % vec4<u32>(32u));
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    var var_1 = (max(_wgslsmith_dot_vec3_u32(var_0.yyw >> (vec3<u32>(var_0.x, u_input.c, var_0.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, var_0.x, 35800u), var_0.wyx)), var_0.x) & u_input.c) == 1u;
    var var_2 = 9710u;
    global0 = array<Struct_3, 30>();
    var_2 = max(var_0.x, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(0i, u_input.a.x), vec3<f32>(754f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -108f)))), 1f), 21677u, _wgslsmith_div_u32(_wgslsmith_mult_u32(select(1u, 1u, true), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 30066u), vec3<u32>(4294967295u, var_0.x, 48840u))), ~(~var_0.x ^ u_input.c)));
}

