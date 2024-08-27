struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<f32>) -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, -829f, global1.x, arg_0.b), vec4<f32>(890f, arg_2.x, -860f, -1527f), false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, arg_2.x, -140f, global1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -658f, -731f, global1.x)))))))));
    var var_0 = Struct_2(u_input.d | ~(u_input.d >> ((1u >> (0u % 32u)) % 32u)), _wgslsmith_mod_u32(21902u, u_input.e.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -190f))) - arg_2.x), arg_0.c), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1042f, _wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(floor(arg_0.b))))), _wgslsmith_f_op_vec3_f32(global1.yzw - global1.wyx))));
    var var_1 = 2147483647i;
    let var_2 = Struct_2(_wgslsmith_mod_i32(var_0.a << (6113u % 32u), reverseBits(-firstTrailingBit(0i))), 111950u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, arg_0.b), arg_2.yz) * vec2<f32>(-628f, 1580f))))), vec3<f32>(var_0.c.x, var_0.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(604f * -358f) * var_0.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -674f)))))));
    var var_3 = abs(firstLeadingBit(~vec2<u32>(var_0.b, var_0.b))) >> (~(~(~u_input.e.xz)) % vec2<u32>(32u));
    return _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, arg_1.x, reverseBits(arg_0.a)), vec3<u32>(_wgslsmith_add_u32(u_input.e.x, 4294967295u), _wgslsmith_dot_vec3_u32(arg_1.wyw, vec3<u32>(82303u, 78288u, 1u)), reverseBits(63688u))), var_0.b);
}

fn func_2() -> f32 {
    let var_0 = Struct_3(~u_input.e.yxy, global1.x, Struct_1(~1u, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(447f, _wgslsmith_f_op_f32(global1.x * -1790f), false)), _wgslsmith_f_op_f32(-1f)), func_3(Struct_1(u_input.b, _wgslsmith_f_op_f32(135f + -1173f), -1318f, select(u_input.b, 4294967295u, false)), vec4<u32>(u_input.e.x, select(1u, u_input.e.x, false), u_input.b, 0u << (u_input.a % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(934f, -1000f, global1.x)) + _wgslsmith_f_op_vec3_f32(-global1.zyw)))), 1i, vec4<bool>(all(vec3<bool>(true, true, true)), true, all(vec3<bool>(true, true, true)), 1u >= u_input.b));
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(685f, global1.x, -561f, global1.x))))))));
    let var_1 = 2147483647i;
    global0 = var_1;
    global0 = 1i;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, var_0.c.b, var_0.e.x)) * _wgslsmith_f_op_f32(f32(-1f) * -520f))))));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-global1.zyx);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(786f, -1290f)) + -501f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-850f - _wgslsmith_f_op_f32(-global1.x))), -520f));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -176f)))), global1.x, 622f) + vec3<f32>(_wgslsmith_f_op_f32(-366f + var_0.x), 316f, var_0.x));
    let var_2 = vec4<i32>(~(-1758i), ~u_input.d, abs(-4871i), ~(i32(-1i) * -u_input.c.x));
    let var_3 = Struct_1(4294967295u, global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-global1.x))))), 74847u);
    return Struct_3(vec3<u32>(~(~_wgslsmith_div_u32(4294967295u, 31483u)), 11503u, ~898u), _wgslsmith_f_op_f32(step(695f, _wgslsmith_f_op_f32(ceil(var_0.x)))), Struct_1(6546u, -485f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, -1366f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(264f))))), firstLeadingBit(_wgslsmith_add_u32(var_3.d, ~4294967295u))), ~12767i, vec4<bool>(!(_wgslsmith_div_f32(1032f, var_1.x) == _wgslsmith_f_op_f32(-1740f - var_0.x)), true && (all(vec3<bool>(false, false, true)) & false), all(vec4<bool>(true, true, false, any(vec3<bool>(true, true, true)))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = -338f;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b, global1.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_0.c.b) + 527f), global1.x, 1000f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1684f, -2497f, var_0, arg_0.c.c) + vec4<f32>(var_0, var_0, global1.x, global1.x))) - vec4<f32>(_wgslsmith_div_f32(arg_0.b, -191f), _wgslsmith_f_op_f32(266f * 364f), _wgslsmith_div_f32(arg_0.c.c, arg_0.c.c), _wgslsmith_f_op_f32(arg_0.c.b - arg_0.c.b)))));
    let var_1 = firstLeadingBit(max(~(~abs(vec3<i32>(-2147483647i, 16564i, u_input.d))), select(_wgslsmith_clamp_vec3_i32(-vec3<i32>(7484i, u_input.c.x, u_input.c.x), reverseBits(vec3<i32>(21652i, -43941i, arg_0.d)), vec3<i32>(-2147483647i, -1i, -74834i) << (vec3<u32>(60918u, 4294967295u, u_input.a) % vec3<u32>(32u))), -abs(vec3<i32>(u_input.d, arg_0.d, arg_0.d)), select(!vec3<bool>(arg_0.e.x, false, false), func_1().e.yzz, true))));
    var var_2 = arg_0.c;
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), arg_0.c.c, 990f, _wgslsmith_div_f32(1000f, 778f)))))), vec4<f32>(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(var_2.b * var_0))), arg_0.b, _wgslsmith_div_f32(1039f, _wgslsmith_f_op_f32(sign(var_2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    return func_1().e.wwz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    global0 = 48441i;
    var var_1 = u_input.a;
    var var_2 = ~u_input.e;
    let var_3 = func_1().c;
    var var_4 = Struct_3(var_2.zyy, _wgslsmith_f_op_f32(-var_3.c), var_3, -1i, vec4<bool>(true, true, !func_4(Struct_3(vec3<u32>(29162u, u_input.b, 1u), var_3.c, var_3, -24389i, vec4<bool>(var_0.x, true, var_0.x, var_0.x))).x, true));
    let var_5 = var_3.a;
    global0 = var_4.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(global1.wzz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(725f, -270f, var_4.b)) - _wgslsmith_f_op_vec3_f32(-global1.zww)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(274f, var_4.b, var_3.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-3229f, -1061f, var_4.b), vec3<f32>(var_3.b, 1557f, -614f), true)), true))))));
}

