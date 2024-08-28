struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<u32> {
    var var_0 = global1[_wgslsmith_index_u32(~11687u, 2u)];
    return vec4<u32>(u_input.c, 1u | (min(_wgslsmith_clamp_u32(1u, u_input.c, u_input.c), ~u_input.b.x) & _wgslsmith_div_u32(max(u_input.c, u_input.c), 83404u)), _wgslsmith_div_u32(21503u, (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) ^ u_input.c) ^ _wgslsmith_mod_u32(_wgslsmith_div_u32(66568u, 1u), u_input.b.x)), u_input.c);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    global2 = 222f;
    var var_0 = 880f;
    var var_1 = Struct_1(i32(-1i) * -_wgslsmith_div_i32(~u_input.a, -30603i), arg_2.c, any(vec3<bool>(arg_2.b, u_input.c >= 1u, any(vec2<bool>(true, true)))));
    let var_2 = func_3().xx;
    let var_3 = select(select(~(vec2<u32>(0u, var_2.x) & ~arg_1.xx), _wgslsmith_clamp_vec2_u32(var_2, vec2<u32>(arg_1.x, firstTrailingBit(63043u)), ~vec2<u32>(1u, 0u)), select(any(select(global0[_wgslsmith_index_u32(arg_1.x, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], var_1.b)), any(vec3<bool>(false, arg_2.c, arg_0.x)), false)), abs(firstLeadingBit(var_2)), arg_0);
    return max(_wgslsmith_mod_u32(1u, u_input.b.x << (_wgslsmith_div_u32(select(0u, 4294967295u, var_1.c), var_3.x) % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~var_2.x & ~16002u, ~18204u, ~firstLeadingBit(31189u)), arg_1.zyw));
}

fn func_2() -> vec4<u32> {
    let var_0 = func_4(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), all(global0[_wgslsmith_index_u32(55131u, 6u)])), true), abs(func_3()), global1[_wgslsmith_index_u32(abs(~u_input.c), 2u)]);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(260f, _wgslsmith_f_op_f32(761f + 787f))))) + _wgslsmith_f_op_f32(floor(1139f)));
    global2 = -1759f;
    var var_1 = select(!vec3<bool>(true, any(vec3<bool>(true, true, true)), true), !vec3<bool>(true, true, !all(vec2<bool>(false, true))), !vec3<bool>(all(!global0[_wgslsmith_index_u32(var_0, 6u)]), max(var_0, var_0) <= _wgslsmith_mod_u32(u_input.b.x, 0u), -u_input.a == u_input.a));
    var_1 = vec3<bool>(true, !(!var_1.x), select(~(~var_0) >= ~(~53204u), !var_1.x, (1f <= _wgslsmith_f_op_f32(sign(1079f))) || var_1.x));
    return countOneBits(vec4<u32>(~(var_0 & u_input.c) << (~(~var_0) % 32u), u_input.c, ~88352u ^ var_0, 28208u));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_i32(~u_input.a, ~u_input.a), false, true);
    global1 = array<Struct_1, 2>();
    let var_1 = ~(~func_2() ^ vec4<u32>(u_input.b.x, u_input.b.x, 26223u, 4294967295u));
    var var_2 = Struct_1(-2147483647i, true, var_0.b);
    var var_3 = max(-1i, ~(firstLeadingBit(0i) >> (u_input.c % 32u)));
    return Struct_1(u_input.a << (0u % 32u), any(select(!vec2<bool>(var_2.b, true), select(select(vec2<bool>(false, var_0.c), vec2<bool>(var_2.c, false), var_2.c), vec2<bool>(var_0.c, false), all(vec3<bool>(var_0.c, false, var_2.c))), !vec2<bool>(var_0.c, false))), any(!(!select(vec2<bool>(false, var_2.b), vec2<bool>(true, var_0.b), vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = global1[_wgslsmith_index_u32(u_input.b.x & u_input.c, 2u)];
    let var_2 = max(~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 101165u, u_input.c, u_input.c), vec4<u32>(4294967295u, u_input.c, 4294967295u, 4294967295u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(25652u, u_input.c), vec2<u32>(4294967295u, 4294967295u) >> (u_input.b % vec2<u32>(32u))), u_input.b.x, ~50411u ^ _wgslsmith_mult_u32(u_input.b.x, u_input.c)), _wgslsmith_div_vec4_u32(func_3(), max(vec4<u32>(u_input.b.x, u_input.c, u_input.c, u_input.b.x), ~vec4<u32>(4294967295u, 33813u, 0u, u_input.c))) << (((func_3() & ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, 1u)) & ~firstLeadingBit(vec4<u32>(30565u, 0u, u_input.b.x, 53570u))) % vec4<u32>(32u)));
    let var_3 = !any(!vec4<bool>(false || var_1.c, all(vec4<bool>(true, var_1.b, var_1.b, var_1.b)), !var_0.c, true));
    var var_4 = var_2.yw;
    var var_5 = _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.c | u_input.c, u_input.c), firstLeadingBit(var_2.xy));
    let var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(0u & func_4(vec2<bool>(true, true), max(vec4<u32>(33621u, u_input.b.x, var_4.x, u_input.c), firstLeadingBit(vec4<u32>(var_2.x, var_4.x, 4294967295u, 4294967295u))), func_1()));
}

