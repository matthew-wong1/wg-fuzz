struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, i32(-2147483648), 2147483647i, 43067i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<bool>) -> vec2<i32> {
    let var_0 = Struct_2(Struct_1(~u_input.a.yw >> (select(~u_input.b.xz, select(u_input.b.yy, u_input.b.zw, false), arg_0.yz) % vec2<u32>(32u))), min(u_input.b << (_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.d, 4294967295u, 1u), vec4<u32>(u_input.d, u_input.d, u_input.c, 1u)), firstLeadingBit(u_input.b)) % vec4<u32>(32u)), vec4<u32>(419u, min(4294967295u, 23551u), u_input.d ^ 57411u, select(52362u, 4294967295u, arg_0.x)) ^ ~(~u_input.b)), Struct_1(global0.ww | max(-vec2<i32>(12956i, u_input.a.x), vec2<i32>(u_input.a.x, global0.x))), !(arg_0.x || select(any(vec3<bool>(false, false, arg_0.x)), true, false)), _wgslsmith_mod_vec3_i32(~u_input.a.xxx, firstLeadingBit(~vec3<i32>(0i, -16225i, u_input.a.x))));
    global0 = select(vec4<i32>(_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(37439i, 33374i, -1077i)), max(global0.wyx, -global0.zwy)), ~(-16405i), u_input.a.x, -1i & _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 113083i, u_input.a.x, global0.x), vec4<i32>(u_input.a.x, global0.x, var_0.c.a.x, var_0.a.a.x))), -u_input.a, false);
    let var_1 = _wgslsmith_div_vec3_u32(~(~countOneBits(select(vec3<u32>(0u, var_0.b.x, u_input.b.x), vec3<u32>(u_input.c, u_input.d, 4294967295u), var_0.d))), vec3<u32>(countOneBits(17295u), abs(var_0.b.x << (37914u % 32u)) & abs(_wgslsmith_mod_u32(17481u, var_0.b.x)), 4294967295u));
    let var_2 = var_0.b.x;
    let var_3 = -1450f;
    return global0.xy;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_2(Struct_1((~u_input.a.xz ^ -u_input.a.zx) << (vec2<u32>(30133u, ~u_input.d) % vec2<u32>(32u))), ~u_input.b, Struct_1(func_3(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), any(vec3<bool>(false, false, true))))), true, global0.wwz);
    let var_1 = Struct_1(global0.zz);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -244f)));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    var var_0 = 612f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-284f * -1127f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(vec3<f32>(280f, -1654f, 270f)))))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f)))));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-667f, -707f)) - -1000f), -763f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1203f, -1000f, 568f), vec3<f32>(-928f, -663f, -2074f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-444f, 1805f, -420f) * vec3<f32>(-1070f, 982f, -741f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f)))))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(168f + _wgslsmith_f_op_f32(709f - _wgslsmith_f_op_f32(f32(-1f) * -198f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(473f * 2010f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1506f)), -992f)))), -1420f);
    var var_2 = u_input.a;
    return StorageBuffer(u_input.b.xwx, global0.wwy, 1102f, u_input.d & (u_input.d & u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1611f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1581f * _wgslsmith_f_op_f32(f32(-1f) * -1888f)))));
    let x = u_input.a;
    s_output = func_1(1i);
}

