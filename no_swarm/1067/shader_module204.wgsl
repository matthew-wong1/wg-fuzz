struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global0 = vec4<u32>(~firstLeadingBit(~(u_input.a.x | 0u)), _wgslsmith_dot_vec4_u32(reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0.x, 0u, 49741u), vec4<u32>(global0.x, 32957u, global0.x, 29255u))), vec4<u32>(~_wgslsmith_clamp_u32(4294967295u, 1u, u_input.a.x), ~(~global0.x), _wgslsmith_dot_vec3_u32(reverseBits(global0.zwy), global0.zyx), ~(global0.x << (1u % 32u)))), _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 0u, global0.x, global0.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 6328u) & vec4<u32>(global0.x, u_input.a.x, 55099u, 11663u))), vec4<u32>(42658u, 0u, global0.x, ~abs(1u))), _wgslsmith_mod_u32(~(~(~global0.x)), _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_sub_u32(global0.x, u_input.a.x)), 1u)));
    global0 = ~(~(~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<u32>(1u, 6134u, u_input.a.x, global0.x))));
    global0 = select(abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(19337u, 0u, global0.x, 0u), vec4<u32>(u_input.a.x, global0.x, global0.x, 51272u) >> (vec4<u32>(4294967295u, 11427u, global0.x, global0.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, 40984u, 48750u), vec4<u32>(39548u, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<u32>(u_input.a.x ^ 4294967295u, ~1u, ~global0.x, 1u), vec4<u32>(~u_input.a.x, 0u, firstTrailingBit(u_input.a.x), ~global0.x))), ~max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global0.x, u_input.a.x), vec4<u32>(global0.x, 0u, global0.x, u_input.a.x)), vec4<u32>(21706u, 108498u, u_input.a.x, global0.x) ^ vec4<u32>(u_input.a.x, 4294967295u, global0.x, u_input.a.x)) << (countOneBits(reverseBits(vec4<u32>(u_input.a.x, global0.x, global0.x, global0.x) ^ vec4<u32>(u_input.a.x, global0.x, u_input.a.x, global0.x))) % vec4<u32>(32u)), !any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))));
    var var_0 = global0.x;
    var_0 = ~countOneBits(global0.x) | _wgslsmith_add_u32(global0.x, firstLeadingBit(global0.x));
    return any(vec2<bool>(true, true));
}

fn func_2() -> bool {
    let var_0 = Struct_5(52005u);
    var var_1 = func_3();
    var_1 = false;
    var var_2 = 1i;
    var_2 = _wgslsmith_mod_i32(select(-firstLeadingBit(1i), ~1i, !select(true, all(vec2<bool>(true, false)), false)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 0i, select(-1i, 2147483647i, true)), vec4<i32>(1i, 1i, 1i, 1i)));
    return true;
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_add_vec3_u32(global0.wxx, ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 1u, global0.x), vec3<u32>(15533u, global0.x, u_input.a.x)) << (global0.zxy % vec3<u32>(32u))));
    var var_1 = vec4<bool>(func_2() | true, any(vec4<bool>(true, false, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), true)), true, true);
    let var_2 = Struct_1(333f);
    let var_3 = Struct_5(u_input.a.x);
    return Struct_3(379f, _wgslsmith_dot_vec4_u32(vec4<u32>(~(~0u), ~u_input.a.x, ~4294967295u, 15255u), (~vec4<u32>(4226u, 4294967295u, 39371u, global0.x) | ~vec4<u32>(19030u, var_0.x, var_3.a, u_input.a.x)) & ~(vec4<u32>(var_0.x, 3331u, 4294967295u, var_0.x) | vec4<u32>(u_input.a.x, 32779u, 61928u, 53087u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-756f, 553f))))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), -398f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-394f, 300f), vec2<f32>(-595f, var_0.a), vec2<bool>(true, false))))))), vec2<f32>(_wgslsmith_f_op_f32(sign(func_1(Struct_1(var_0.a)).a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -579f)), _wgslsmith_div_f32(var_0.a, -2528f))));
    var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(select(1262f, -1166f, false))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-542f, var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1056f, 1254f))), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1454f, 217f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, -155f), vec2<f32>(var_1.x, var_1.x)))))))));
    var var_2 = false;
    var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1173f, var_0.a, true)) - 753f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(4294967295u, abs(var_0.b)), 37444u ^ min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, u_input.a.x, 1u, u_input.a.x) << (vec4<u32>(u_input.a.x, 2782u, 28845u, var_0.b) % vec4<u32>(32u)), vec4<u32>(4294967295u, 0u, global0.x, u_input.a.x)), global0.x << (76224u % 32u)));
}

