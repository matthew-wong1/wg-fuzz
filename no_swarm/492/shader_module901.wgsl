struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(-195f, vec4<f32>(389f, 1000f, -876f, -1000f), vec3<f32>(280f, 1885f, 949f), -263f);

var<private> global2: f32;

var<private> global3: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(176f, 412f), vec2<f32>(544f, 484f), vec2<f32>(-1279f, -603f), vec2<f32>(-301f, -337f), vec2<f32>(1000f, -3120f), vec2<f32>(1058f, 208f), vec2<f32>(-675f, 1668f), vec2<f32>(746f, 1447f), vec2<f32>(-308f, -856f), vec2<f32>(-1000f, 1094f), vec2<f32>(-589f, -399f));

var<private> global4: array<vec3<i32>, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec3<u32> {
    let var_0 = Struct_1(global1.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 315f, -729f, global1.b.x))) - vec4<f32>(-180f, 298f, _wgslsmith_f_op_f32(1252f + -1077f), 1000f))), _wgslsmith_div_vec3_f32(global0.b.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, global1.d, -1174f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global1.b.x, -727f))), global0.b.c)), global0.b.a);
    var var_1 = !(!vec2<bool>(arg_1, any(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), arg_1))));
    return vec3<u32>(~select(~34002u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), select(vec2<u32>(53879u, 0u), vec2<u32>(u_input.a, u_input.a), false)), !arg_1), _wgslsmith_div_u32(u_input.a, (27730u & ~u_input.a) ^ ~_wgslsmith_sub_u32(59372u, 57257u)), ~30819u & max(u_input.c, _wgslsmith_clamp_u32(u_input.c, u_input.a, 21091u) ^ u_input.c));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_div_f32(-833f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.c.b.x)), global0.b.b.x))));
    var var_1 = Struct_1(-1000f, global0.c.b, vec3<f32>(-760f, global1.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * -1213f), _wgslsmith_f_op_f32(max(-1157f, 273f))) + var_0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(218f * global1.d) + _wgslsmith_f_op_f32(ceil(-303f))), 100f)))));
    var var_2 = vec3<u32>(~(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(10124u, 4294967295u)), ~vec2<u32>(0u, u_input.c))), u_input.a, abs(reverseBits(u_input.c) << (reverseBits(~44792u) % 32u)));
    global3 = array<vec2<f32>, 11>();
    global4 = array<vec3<i32>, 19>();
    return 87018u;
}

fn func_1() -> bool {
    let var_0 = func_2(global0.b, false);
    let var_1 = Struct_1(927f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + global1.d)), -597f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1928f * global0.a))), 1699f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global1.d, global0.b.a, global1.c.x) - global1.b) - _wgslsmith_f_op_vec4_f32(global1.b + vec4<f32>(-1321f, global1.b.x, 583f, 275f))))), global0.b.c, _wgslsmith_f_op_f32(-global1.b.x));
    global4 = array<vec3<i32>, 19>();
    var var_2 = ~_wgslsmith_dot_vec3_u32(var_0, var_0) >> (select(func_3(), 4294967295u | firstTrailingBit(reverseBits(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(469f + global0.c.b.x)) > _wgslsmith_f_op_f32(f32(-1f) * -1156f)) % 32u);
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) + global0.b.a)), global0.c.c.x));
    return true;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(max(arg_2.a, arg_2.a)), arg_2, Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b.b * vec4<f32>(arg_2.c.x, -822f, 1494f, -211f)), _wgslsmith_f_op_vec4_f32(arg_2.b - vec4<f32>(-589f, arg_2.c.x, -2313f, 1726f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + global0.c.c.x)), arg_2.b.x, arg_2.d), 1428f));
    global4 = array<vec3<i32>, 19>();
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(862f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b.b.x - var_0.c.c.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -635f) + var_0.b.c.x)));
    var var_3 = arg_2;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1f, -1000f)), _wgslsmith_f_op_f32(step(arg_2.b.x, _wgslsmith_f_op_f32(var_0.a - 1064f)))))), Struct_1(_wgslsmith_f_op_f32(min(174f, 1f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.b.x, -849f, var_1.b.x, var_3.b.x), vec4<f32>(arg_2.a, var_0.b.b.x, global1.b.x, -537f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global1.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, global1.c.x, 1762f, 488f))), !any(vec3<bool>(true, false, arg_0)))), _wgslsmith_f_op_vec3_f32(ceil(var_1.c)), var_0.a), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(), u_input.b.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * 206f)) * _wgslsmith_f_op_f32(min(864f, _wgslsmith_f_op_f32(global1.c.x + -1864f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.c.c.x + 591f), global1.d, _wgslsmith_f_op_f32(max(-811f, global1.b.x)), -311f)), global0.b.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0.a))))));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.c.x))))))), 573f, 387f);
    var var_1 = func_1();
    global0 = func_4(false, reverseBits(~u_input.b.x), Struct_1(var_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b) + global0.c.b), global1.b.xxx, global1.d));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.d))), 287f, -212f);
    global2 = _wgslsmith_f_op_f32(exp2(1f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(2147483647i), _wgslsmith_mult_i32(u_input.b.x, -23020i), -u_input.b.x, ~firstLeadingBit(-27770i)), ~vec4<i32>(4373i, 2147483647i, -(~(-1i)), -15761i), global1.a, -56054i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -606f)), global0.a));
}

