struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(4294967295u, Struct_1(vec3<f32>(1295f, -541f, 730f), false)), Struct_2(0u, Struct_1(vec3<f32>(1000f, 2772f, 1275f), false)), Struct_2(1u, Struct_1(vec3<f32>(-1375f, 381f, 1636f), true)), Struct_2(4294967295u, Struct_1(vec3<f32>(-117f, -1410f, -969f), false)), Struct_2(0u, Struct_1(vec3<f32>(1057f, -1226f, 580f), true)), Struct_2(51831u, Struct_1(vec3<f32>(237f, -876f, 1270f), false)), Struct_2(26859u, Struct_1(vec3<f32>(-870f, -1646f, 2006f), true)), Struct_2(79044u, Struct_1(vec3<f32>(-339f, 1000f, -1462f), false)), Struct_2(0u, Struct_1(vec3<f32>(1365f, -1000f, 548f), true)), Struct_2(1u, Struct_1(vec3<f32>(-291f, -1047f, 241f), true)), Struct_2(73369u, Struct_1(vec3<f32>(455f, -1000f, 1769f), false)));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: u32 = 26106u;

var<private> global3: f32;

var<private> global4: bool = true;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(427f, -942f, 1162f) + vec3<f32>(-892f, -216f, -850f)))))), global1.x & !global1.x);
    var var_1 = var_0;
    global3 = _wgslsmith_f_op_f32(min(-646f, 1509f));
    global4 = !all(vec4<bool>(true, !global1.x, true, any(vec3<bool>(global1.x, var_0.b, false)))) & (true || select(true, all(!vec4<bool>(global1.x, var_0.b, false, false)), !var_1.b));
    var var_2 = u_input.b;
    return _wgslsmith_mult_u32(abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 32151u), vec2<u32>(3701u, 18399u)), vec2<u32>(63940u, 33254u)), select(1u, ~4294967295u, var_1.b))), min(~(~4294967295u << (min(1u, 0u) % 32u)), _wgslsmith_mult_u32(firstLeadingBit(1u) >> (0u % 32u), 32427u)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(func_3(), 41670u, reverseBits(_wgslsmith_clamp_u32(1u, 1u, 1u))) << (reverseBits(func_3() & ~(~4294967295u)) % 32u);
    global1 = !select(!vec2<bool>(any(vec3<bool>(false, arg_0, global1.x)), false), vec2<bool>(true, all(vec2<bool>(false, true))), !vec2<bool>(arg_0 | true, any(vec2<bool>(arg_0, false))));
    let var_1 = Struct_2(~var_0, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(615f, 290f, 677f)))) * vec3<f32>(_wgslsmith_f_op_f32(2032f + -1394f), _wgslsmith_f_op_f32(max(-230f, 743f)), _wgslsmith_f_op_f32(min(-1000f, -250f)))), true));
    var var_2 = var_1.b;
    let var_3 = var_1.b;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(587f)), _wgslsmith_f_op_f32(abs(-531f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) - var_3.a.x) * var_1.b.a.x)), !(min(abs(4294967295u), var_0) <= var_1.a));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global3 = arg_3.a.x;
    var var_0 = false;
    let var_1 = vec4<bool>(any(vec3<bool>(!all(vec4<bool>(global1.x, false, arg_2, false)), true == arg_1, false)), all(vec4<bool>(_wgslsmith_f_op_f32(906f - 394f) <= _wgslsmith_f_op_f32(-arg_3.a.x), select(true, u_input.c.x != -1i, any(vec2<bool>(true, false))), func_2(all(vec2<bool>(arg_2, arg_1))).b, u_input.c.x < _wgslsmith_add_i32(u_input.b, u_input.b))), any(!select(vec3<bool>(global1.x, arg_3.b, arg_1), !vec3<bool>(false, global1.x, false), vec3<bool>(true, global1.x, arg_3.b))), true);
    var var_2 = func_2(true).b;
    global4 = all(var_1.yw) && func_2(true).b;
    return arg_3;
}

fn func_1(arg_0: vec4<f32>) -> vec4<i32> {
    let var_0 = u_input.c.wy;
    var var_1 = ~abs(_wgslsmith_add_u32(max(firstLeadingBit(4294967295u), 1u), 7675u));
    let var_2 = func_4(1u, global1.x, global1.x, func_2(global1.x));
    let var_3 = ~_wgslsmith_mod_u32(func_3(), 1u);
    global2 = func_3();
    return vec4<i32>(-u_input.c.x, -abs(-2147483647i), var_0.x, 17249i) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(var_3, var_3, 99717u, 61552u), vec4<u32>(var_3, var_3, var_3, 15547u)) >> (~vec4<u32>(0u, var_3, var_3, 43869u) % vec4<u32>(32u)), ~vec4<u32>(var_3, ~0u, select(24920u, 4294967295u, var_2.b), _wgslsmith_mod_u32(var_3, var_3)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_3, 4294967295u, var_3, 28123u), vec4<u32>(var_3, 0u, var_3, var_3)))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 11>();
    var var_0 = u_input.c;
    var var_1 = any(select(vec4<bool>(all(vec3<bool>(true, false, false)), global1.x, false, global1.x), select(select(!vec4<bool>(global1.x, true, global1.x, false), !vec4<bool>(true, false, true, global1.x), true), !(!vec4<bool>(false, global1.x, false, false)), select(!vec4<bool>(false, global1.x, false, true), !vec4<bool>(false, global1.x, global1.x, global1.x), true)), !(!vec4<bool>(true, global1.x, false, global1.x))));
    var var_2 = select(4294967295u, 35877u, true);
    var var_3 = -418f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(~vec4<i32>(-22542i, var_0.x, 2147483647i, 2147483647i), func_1(vec4<f32>(-825f, -1915f, 266f, 448f))) & vec4<i32>(u_input.b, select(0i, 2147483647i, global1.x), max(0i, -36602i), _wgslsmith_sub_i32(u_input.c.x, u_input.a))), _wgslsmith_sub_i32(19418i >> (1u % 32u), -u_input.c.x));
}

