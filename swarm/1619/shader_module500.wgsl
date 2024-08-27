struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
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

var<private> global0: Struct_1 = Struct_1(vec3<i32>(0i, 2147483647i, -29757i), 47080u, vec3<u32>(20849u, 16024u, 6661u), true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = vec4<bool>(all(vec2<bool>(!any(vec2<bool>(arg_0, arg_0)), true)), true, reverseBits(_wgslsmith_div_i32(u_input.b, global0.a.x)) > -1i, global0.d);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1368f + _wgslsmith_f_op_f32(412f * _wgslsmith_f_op_f32(min(1305f, -1535f))))));
    let var_2 = ~(~(~_wgslsmith_sub_u32(~global0.c.x, ~global0.c.x)));
    return _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.c.x, 48703u, ~u_input.a.x, 0u), ~(~vec4<u32>(global0.b, u_input.a.x, u_input.c, 12558u)), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(27711u, var_2, global0.b, global0.c.x), vec4<u32>(52029u, global0.b, u_input.c, var_2), vec4<u32>(global0.c.x, global0.b, var_2, 4294967295u)))) & ~max(~vec4<u32>(u_input.c, 1u, var_2, 4294967295u), vec4<u32>(1u, global0.b, 27570u, 48025u)), vec4<u32>(~min(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, 49559u)), ~0u), 4294967295u, 31374u, 53922u));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = arg_0;
    let var_0 = 0u;
    global0 = arg_0;
    global0 = arg_0;
    global0 = Struct_1(vec3<i32>(~arg_0.a.x, abs(u_input.b), -arg_0.a.x), ~19279u ^ ~_wgslsmith_dot_vec4_u32(func_3(true), reverseBits(vec4<u32>(1u, global0.c.x, 17269u, var_0))), select(countOneBits(global0.c), abs(_wgslsmith_div_vec3_u32(abs(arg_0.c), global0.c)), select(select(vec3<bool>(arg_0.d, true, global0.d), select(vec3<bool>(arg_0.d, false, arg_0.d), vec3<bool>(arg_0.d, global0.d, true), arg_0.d), all(vec2<bool>(true, true))), !vec3<bool>(true, arg_0.d, false), arg_0.d)), arg_0.d);
    return firstTrailingBit(2147483647i);
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(~vec3<i32>(abs(func_2(Struct_1(vec3<i32>(global0.a.x, u_input.b, 29103i), 5093u, vec3<u32>(global0.c.x, u_input.c, global0.c.x), true))), -35059i, countOneBits(global0.a.x)), func_3(all(!select(vec4<bool>(global0.d, true, false, global0.d), vec4<bool>(global0.d, global0.d, false, global0.d), vec4<bool>(global0.d, global0.d, true, true)))).x, global0.c, all(select(vec2<bool>(true, true), !vec2<bool>(global0.d, false), vec2<bool>(true, true))) || all(select(!vec3<bool>(global0.d, global0.d, global0.d), select(vec3<bool>(true, global0.d, global0.d), vec3<bool>(false, global0.d, true), vec3<bool>(false, global0.d, global0.d)), !vec3<bool>(global0.d, true, false))));
    global0 = Struct_1(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(1i, global0.a.x, 2147483647i)), abs(global0.a)), u_input.a.x, vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.b, 15862u, 17653u, 52829u), firstLeadingBit(vec4<u32>(3636u, 39884u, 4294967295u, global0.c.x))), 54672u, ~0u) & global0.c, global0.d);
    var var_0 = 41616u;
    let var_1 = Struct_1(vec3<i32>(46598i, ~(-(~1i)), reverseBits(-19984i)), ~_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(global0.c.yy, vec2<u32>(97178u, 0u)), _wgslsmith_add_u32(global0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(33630u, u_input.c, 4294967295u, 22900u), vec4<u32>(0u, 25905u, 4294967295u, 22104u)))), ~(~global0.c | reverseBits(~global0.c)), false);
    var var_2 = vec2<i32>(var_1.a.x, var_1.a.x);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b;
    global0 = func_1();
    let var_1 = true;
    var_0 = global0.b >> (u_input.c % 32u);
    global0 = func_1();
    var var_2 = select(select(!vec3<bool>(false, true, !global0.d), !select(vec3<bool>(global0.d, global0.d, global0.d), !vec3<bool>(global0.d, false, global0.d), vec3<bool>(false, true, global0.d)), !global0.d), vec3<bool>(true, any(!vec3<bool>(var_1, false, false)) & global0.d, func_1().c.x < global0.b), !(!vec3<bool>(!global0.d, var_1 | false, false)));
    var_2 = select(!(!select(vec3<bool>(false, global0.d, var_2.x), select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(true, var_1, var_1), vec3<bool>(false, true, false)), func_1().d)), vec3<bool>(global0.d, func_1().d, false), true);
    var_2 = !vec3<bool>(global0.d, any(vec3<bool>(false, var_1, true)) & (_wgslsmith_f_op_f32(floor(-397f)) != _wgslsmith_f_op_f32(1809f - 1290f)), !(!var_1));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstTrailingBit(u_input.c) & _wgslsmith_div_u32(4294967295u, 4750u)) << (20712u % 32u));
}

