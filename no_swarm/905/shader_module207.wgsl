struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = global0.a;
    let var_1 = !(!(u_input.c.x > select(u_input.b.x, 16981i | u_input.c.x, false)));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(sign(global0.b)));
    global0 = Struct_1(reverseBits(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, var_0.x, 13580u, global0.a.x), global0.a))) & ~(~vec4<u32>(24548u, var_0.x, 0u, 21027u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1355f + 496f))) - global0.b));
    let var_2 = Struct_2(_wgslsmith_mult_u32(0u, 4294967295u) & _wgslsmith_sub_u32(var_0.x, ~global0.a.x), var_0.x, global0.b);
    return ~10208u;
}

fn func_3() -> vec4<u32> {
    let var_0 = vec3<u32>(global0.a.x, global0.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, global0.a.x, 0u, global0.a.x), ~min(global0.a, global0.a)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 29372u, 4294967295u, 4294967295u) >> (select(vec4<u32>(26597u, u_input.d, global0.a.x, u_input.d), global0.a, false) % vec4<u32>(32u)), select(vec4<u32>(16286u, u_input.d, global0.a.x, u_input.d), vec4<u32>(global0.a.x, u_input.d, global0.a.x, u_input.a), false) >> (global0.a % vec4<u32>(32u)), global0.a)));
    var var_1 = Struct_2(~_wgslsmith_mod_u32(4294967295u, ~countOneBits(var_0.x)), _wgslsmith_div_u32(~max(27011u, u_input.d), 55563u), global0.b);
    let var_2 = true;
    return min(~vec4<u32>(u_input.d, 81788u, var_0.x, 4294967295u), global0.a);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(func_3(), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.b.x)), -1623f)), -512f));
    global0 = Struct_1(~(~(~(~var_0.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b - vec2<f32>(-340f, global0.b.x)) - _wgslsmith_f_op_vec2_f32(step(global0.b, vec2<f32>(var_0.b.x, global0.b.x))))) + vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.b.x, 631f))), global0.b.x)));
    var var_1 = global0.b.x;
    let var_2 = vec2<bool>(!select(~global0.a.x >= _wgslsmith_sub_u32(var_0.a.x, 0u), any(vec2<bool>(true, true)), (u_input.b.x ^ 1i) <= 65587i), all(select(vec4<bool>(34450u <= global0.a.x, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), 55714u <= global0.a.x), vec4<bool>(all(vec3<bool>(true, false, true)), select(true, false, false), false, any(vec4<bool>(false, true, true, true))))));
    var var_3 = 1u;
    return _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(ceil(750f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~min(vec4<u32>(1u, u_input.d & 4294967295u, firstTrailingBit(u_input.d), _wgslsmith_add_u32(32482u, u_input.d)), vec4<u32>(_wgslsmith_mult_u32(0u, global0.a.x), 30186u & u_input.d, ~14075u, _wgslsmith_add_u32(global0.a.x, global0.a.x))), vec2<f32>(global0.b.x, 1000f));
    let var_0 = vec2<bool>(true, true);
    var var_1 = firstLeadingBit(~func_1(all(!vec4<bool>(true, var_0.x, var_0.x, var_0.x))));
    var var_2 = Struct_2(u_input.d, global0.a.x >> (1u % 32u), _wgslsmith_f_op_vec2_f32(step(global0.b, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.x), 1f)), _wgslsmith_f_op_f32(-381f - _wgslsmith_f_op_f32(func_2()))))));
    var var_3 = Struct_2(4294967295u, _wgslsmith_clamp_u32(var_2.a, _wgslsmith_mult_u32(reverseBits(61701u) | _wgslsmith_clamp_u32(22857u, var_2.b, u_input.d), 1u), func_1(true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(809f, global0.b.x)))))));
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(358f, var_3.c.x, var_3.c.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.c.x, 1439f, 1770f))))) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, 1240f, _wgslsmith_f_op_f32(var_3.c.x + -691f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1746f, 1548f, var_2.c.x)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(655f, global0.b.x, -428f)))))));
    var_1 = _wgslsmith_mod_u32(0u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_2.b, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b, 21517u, var_3.b), global0.a.xwx)), _wgslsmith_div_u32(1u, 28292u)), var_2.b));
    let var_5 = Struct_3(var_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.x, 208f, -962f, var_3.c.x) * vec4<f32>(-2352f, -1415f, -144f, -2043f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, -1000f, 510f, 1725f) - vec4<f32>(var_2.c.x, 869f, var_2.c.x, 682f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, 752f, -1602f) * vec4<f32>(513f, -1000f, var_3.c.x, 174f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(210f, var_3.c.x, var_2.c.x, global0.b.x), vec4<f32>(310f, var_4.x, var_3.c.x, global0.b.x)))))), func_3().wwy, ~reverseBits(vec4<u32>(~4294967295u, ~4294967295u, 26380u, ~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, firstTrailingBit(u_input.b.xwz), vec2<i32>(abs(i32(-1i) * -43046i), 1i >> (0u % 32u)));
}

