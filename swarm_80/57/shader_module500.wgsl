struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1;

var<private> global2: vec2<f32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> u32 {
    global2 = vec2<f32>(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x * global1.e.x))))))));
    global0 = vec4<bool>(!(!select(any(vec4<bool>(false, false, global1.d.x, true)), !global1.d.x, global2.x > -1140f)), global0.x, !global1.d.x, true);
    return 20023u;
}

fn func_3(arg_0: f32) -> bool {
    global1 = Struct_1(_wgslsmith_f_op_f32(-global2.x), global1.b, global2.x, global1.d, vec4<f32>(-118f, global1.a, global1.e.x, _wgslsmith_f_op_f32(-arg_0)));
    let var_0 = vec4<u32>(41410u, ~_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(1u, 23254u, global1.b)), ~u_input.d), global1.b, firstTrailingBit(firstLeadingBit(func_2())));
    global0 = global1.d;
    var var_1 = 1i;
    var_1 = select(_wgslsmith_mod_i32(-2147483647i, u_input.c.x), -30661i, any(select(vec2<bool>(global1.d.x, true), !(!vec2<bool>(global1.d.x, false)), u_input.c.x < (u_input.c.x >> (0u % 32u)))));
    return !global1.d.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    global0 = vec4<bool>(select(func_2(), func_2(), false || global0.x) >= func_2(), func_3(arg_0.e.x), ((arg_0.b <= _wgslsmith_div_u32(arg_0.b, arg_1.x)) & !arg_0.d.x) || true, global0.x);
    var var_0 = func_3(848f);
    global1 = arg_0;
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global1.a) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -407f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(680f * _wgslsmith_f_op_f32(global2.x * global1.c)))));
    var var_1 = firstLeadingBit(countOneBits(~_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.c.x, -1i, 56500i), vec3<i32>(0i, -36264i, u_input.c.x), arg_0.d.x), vec3<i32>(u_input.b, u_input.c.x, 1i) & vec3<i32>(-114897i, u_input.b, u_input.b), vec3<i32>(2147483647i, u_input.b, u_input.c.x))));
    return Struct_1(global2.x, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * global2.x) + 1780f), _wgslsmith_f_op_f32(floor(-144f)))), select(arg_0.d, global1.d, !any(!vec4<bool>(true, global1.d.x, global1.d.x, false))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(global1.e)))) + arg_0.e), vec4<f32>(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1349f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a), 1f)), arg_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(-431f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(536f * global2.x) - _wgslsmith_f_op_f32(f32(-1f) * -1292f))), firstLeadingBit(~(~0u)), 1842f, global1.d, global1.e), ~reverseBits(_wgslsmith_div_vec2_u32(u_input.d.zy, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global1.b), vec2<u32>(global1.b, global1.b)))));
    var var_1 = func_1(func_1(Struct_1(_wgslsmith_f_op_f32(floor(global2.x)), ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1188f, var_0.c, global0.x))), select(var_0.d, !vec4<bool>(global1.d.x, false, true, var_0.d.x), true), vec4<f32>(244f, -283f, 2214f, _wgslsmith_f_op_f32(step(var_0.e.x, var_0.a)))), vec2<u32>(46577u, global1.b)), u_input.d.yy);
    var var_2 = _wgslsmith_f_op_f32(-231f - _wgslsmith_f_op_f32(f32(-1f) * -435f));
    var var_3 = func_1(func_1(Struct_1(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(var_0.e.x - 778f)), min(u_input.d.x, 0u), global1.a, !vec4<bool>(global0.x, false, global1.d.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -304f, -360f, global2.x) + vec4<f32>(1000f, var_0.c, var_0.e.x, var_1.a)))), u_input.d.yz), ~max(~u_input.d.zy, vec2<u32>(4294967295u, global1.b)));
    var var_4 = func_1(Struct_1(1457f, _wgslsmith_mod_u32(reverseBits(_wgslsmith_mult_u32(4294967295u, var_3.b)), u_input.a), -239f, var_0.d, var_3.e), min(abs(u_input.d.xz), vec2<u32>(global1.b, ~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

