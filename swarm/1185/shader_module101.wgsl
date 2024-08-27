struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
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

var<private> global0: Struct_2;

var<private> global1: vec3<u32>;

var<private> global2: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> vec4<f32> {
    let var_0 = firstLeadingBit(abs(0u & (u_input.b | u_input.b))) << (11859u % 32u);
    let var_1 = Struct_4(global0.c.d.x, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c.d.x))), arg_0, _wgslsmith_f_op_f32(1562f - _wgslsmith_f_op_f32(-542f - _wgslsmith_f_op_f32(max(global0.c.d.x, 1680f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(566f + global0.c.d.x))))));
    let var_2 = Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(~(~var_0), 1u, ~(~4294967295u), 1u), countOneBits(reverseBits(vec4<u32>(global1.x, var_0, global1.x, 4294967295u)))), ~_wgslsmith_div_u32(~18933u, ~(~4294967295u)), global0.c);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.b.x, -309f) + var_1.b.zzz))), _wgslsmith_f_op_vec3_f32(-var_1.b.xzx))));
    global1 = global0.a.wxy;
    return var_1.b;
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_5(Struct_4(372f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(global0.c.d.x + 305f))), _wgslsmith_div_vec4_f32(vec4<f32>(258f, arg_0.b.c.d.x, arg_0.b.c.d.x, arg_0.d.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b.c.d.x, 1737f, global0.c.d.x, global0.c.d.x))))))), ~countOneBits(u_input.a.xz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(148f, arg_0.c.d.x, 2054f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-721f, global0.c.d.x, arg_0.b.c.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1876f, -754f, 595f)))))), _wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(~global0.a.xwy, countOneBits(arg_0.b.a.xxy), vec3<u32>(global0.b, 22008u, u_input.b)), global0.a.zzy));
    let var_1 = u_input.a.xzx;
    return global0.c.a;
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global0 = Struct_2(~select(select(~global0.a, vec4<u32>(21602u, global1.x, global0.c.c, global1.x) >> (global0.a % vec4<u32>(32u)), vec4<bool>(true, false, true, false)), global0.a, false), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~global0.a.wzz, vec3<u32>(19109u, func_2(Struct_3(vec2<bool>(true, false), Struct_2(vec4<u32>(u_input.b, 0u, global0.c.b, 19145u), global0.c.c, Struct_1(0u, global1.x, 4294967295u, global0.c.d)), global0.c, global0.c.d)), ~14203u)), _wgslsmith_mult_u32(11446u, ~global1.x)), global0.c);
    let var_0 = 2147483647i;
    let var_1 = Struct_5(Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c.d.x))), _wgslsmith_f_op_f32(-641f - 605f)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, global0.c.d.x), vec4<f32>(-264f, global0.c.d.x, arg_0, -485f), vec4<bool>(false, false, false, true))), vec4<f32>(493f, arg_0, 550f, global0.c.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 583f, 772f, arg_0)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(878f, -157f, -2012f, global0.c.d.x)))))), u_input.a.yz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_0)).yxw - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.c.d.x, -672f, 2090f)))))), global0.a.wwy);
    global1 = max(var_1.d, global0.a.yzy);
    var var_2 = global0.a.wxz;
    return StorageBuffer(var_1.a.b.ww);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.d.x * 220f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.d.x, global0.c.d.x) * _wgslsmith_f_op_f32(-global0.c.d.x)), 284f)));
}

