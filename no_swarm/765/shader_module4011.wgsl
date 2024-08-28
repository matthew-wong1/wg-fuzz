struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    global0 = false;
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.b.x, arg_1.b.x, -609f)))))), arg_1.b);
    var var_1 = !(!vec3<bool>(any(vec3<bool>(true, false, false)), false, true));
    var var_2 = var_1.x;
    var var_3 = vec3<f32>(-2290f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1243f * var_0.x), var_0.x)))), _wgslsmith_div_f32(var_0.x, 234f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(775f, _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(-var_0.x)))) - -1000f));
    return select(arg_0.x, 35626u, var_1.x | true);
}

fn func_2() -> Struct_1 {
    global0 = !(func_3(vec3<u32>(0u, 6970u, u_input.b.x) | vec3<u32>(1u, 1u, 118262u), Struct_1(vec3<u32>(23187u, 20950u, u_input.b.x), vec3<f32>(-667f, 1136f, 775f))) >= firstTrailingBit(select(u_input.b.x, 4294967295u, true))) && true;
    return Struct_1((_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 9106u, u_input.b.x), firstTrailingBit(vec3<u32>(79698u, 24851u, u_input.b.x))) ^ (vec3<u32>(u_input.b.x, 5270u, 4294967295u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 45121u, 1u), vec3<u32>(0u, 102101u, 3235u), vec3<u32>(70823u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)))) >> (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(29319u, u_input.b.x), 1u), _wgslsmith_sub_u32(~u_input.b.x, abs(48365u)), 54511u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(step(-2046f, -116f)), 2101f))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    let var_0 = u_input.c;
    let var_1 = func_2();
    let var_2 = -20880i;
    let var_3 = vec3<i32>(countOneBits(u_input.a.x ^ -(~1i)), var_0, reverseBits(_wgslsmith_clamp_i32(2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 20321i, var_2, var_0), vec4<i32>(-45809i, var_0, u_input.c, -6796i)), var_2)));
    global0 = !arg_0.x;
    return func_2();
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    global0 = true;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(arg_2.x, 1004f)), arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1040f));
    var_0 = arg_1.b;
    var var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_div_vec3_u32(~vec3<u32>(var_1.a.x, 1u, firstLeadingBit(var_1.a.x)), var_1.a), vec3<f32>(-229f, _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-702f, -466f)), _wgslsmith_f_op_f32(step(var_0.x, -595f)))), var_0.x));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.b.x, 24369u, u_input.b.x), ~vec3<u32>(14246u, 0u, u_input.b.x), vec3<bool>(true, true, true)), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 25465u, 4294967295u), vec3<u32>(1u, 1u, 42573u)))) >> (select(~(vec3<u32>(39588u, 42187u, u_input.b.x) >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), vec3<u32>(~u_input.b.x, ~4294967295u, abs(u_input.b.x)), func_4(select(vec2<bool>(true, false), vec2<bool>(false, true), false), func_1(vec2<bool>(false, true), 0u), vec2<f32>(-427f, 1743f))) % vec3<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1061f) - -325f)), _wgslsmith_f_op_f32(f32(-1f) * -672f), _wgslsmith_f_op_f32(1f * -1103f)));
    let var_1 = Struct_1(vec3<u32>(var_0.a.x, 1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(~36266u, _wgslsmith_div_u32(u_input.b.x, u_input.b.x)), _wgslsmith_div_u32(~var_0.a.x, ~0u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.x - 903f))) + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -162f)), func_2().b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_0.b.x, var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -782f), 1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.b))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a | vec2<i32>(-2147483647i, 2147483647i), _wgslsmith_mod_vec2_i32(u_input.a, u_input.a)), u_input.a.x, ~(-1i), firstLeadingBit(29248i)), vec4<i32>(0i, reverseBits(~(-20863i)), u_input.a.x, u_input.c)));
}

