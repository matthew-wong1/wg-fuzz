struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: bool = false;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    global1 = global0.x;
    var var_0 = firstTrailingBit(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a.x, 47502u, 0u), u_input.a.zyy, global0.x), ~u_input.a.yxx), _wgslsmith_sub_vec3_u32(~u_input.a.wwx, firstLeadingBit(vec3<u32>(u_input.a.x, 21969u, u_input.a.x)))));
    var var_1 = !vec2<bool>(false, global0.x);
    var var_2 = -select(((vec2<i32>(u_input.b, 27961i) ^ vec2<i32>(u_input.b, 2147483647i)) | (vec2<i32>(2147483647i, u_input.b) & vec2<i32>(4041i, u_input.b))) >> (~u_input.c.yy % vec2<u32>(32u)), ~vec2<i32>(-1i, select(37481i, u_input.b, arg_0.x)), u_input.c.x < (~u_input.a.x << (~1u % 32u)));
    global1 = !any(global0.zwy);
    return _wgslsmith_f_op_f32(f32(-1f) * -1188f);
}

fn func_2(arg_0: vec2<u32>) -> vec4<bool> {
    var var_0 = -_wgslsmith_mult_vec3_i32(-(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(1101i, 2147483647i, -24398i)) << ((u_input.a.zzy >> (u_input.a.wyx % vec3<u32>(32u))) % vec3<u32>(32u))), select(select(vec3<i32>(u_input.b, -12736i, -2147483647i), vec3<i32>(u_input.b, u_input.b, -2147483647i), global0.yww), max(vec3<i32>(u_input.b, u_input.b, 1i), vec3<i32>(u_input.b, 1i, 8483i)), vec3<bool>(global0.x & true, true | global0.x, u_input.b >= u_input.b)));
    let var_1 = _wgslsmith_f_op_f32(-983f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0.wy)) * -173f), 3017f));
    let var_2 = Struct_2(~_wgslsmith_div_vec4_u32(vec4<u32>(select(0u, u_input.a.x, false), 0u, arg_0.x, firstTrailingBit(44240u)), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, arg_0.x), vec4<u32>(49655u, 0u, 21888u, 47197u), vec4<u32>(u_input.a.x, 4294967295u, 36627u, 88551u)))));
    var var_3 = global0.x;
    return !vec4<bool>(any(!(!vec4<bool>(global0.x, global0.x, global0.x, false))), all(global0.zyx), global0.x, global0.x);
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<f32>) -> vec4<bool> {
    var var_0 = u_input.c.x;
    var_0 = firstLeadingBit(1u);
    var var_1 = arg_1;
    var_0 = reverseBits(~(~((u_input.a.x | u_input.a.x) & ~60080u)));
    global1 = any(!vec4<bool>(global0.x, !all(vec4<bool>(true, true, global0.x, true)), true, true));
    return !func_2(countOneBits(vec2<u32>(u_input.c.x, ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(!(!vec4<bool>(global0.x, false, true, false)), func_1(-2147483647i, -select(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(u_input.b, -27143i, 2147483647i), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1073f, 229f, 777f))), global0.x);
    let var_0 = reverseBits(i32(-1i) * -_wgslsmith_mod_i32(select(u_input.b, 0i, true), max(u_input.b, u_input.b)));
    global1 = global0.x;
    let var_1 = Struct_2(vec4<u32>(~1u, ~0u, ~_wgslsmith_mod_u32(u_input.c.x, 488u), ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, _wgslsmith_mod_u32(4294967295u, var_1.a.x), ~4294967295u, ~var_1.a.x), select(var_1.a, var_1.a, select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, true, global0.x), !vec4<bool>(global0.x, global0.x, global0.x, true)))), ~(~(~vec3<u32>(u_input.c.x, 79002u, u_input.c.x))) & (u_input.a.xwz >> (~_wgslsmith_div_vec3_u32(var_1.a.wyz, u_input.a.zxw) % vec3<u32>(32u))), 52628u, vec4<u32>(~var_1.a.x, 0u, ~(~abs(u_input.a.x)), 1u));
}

