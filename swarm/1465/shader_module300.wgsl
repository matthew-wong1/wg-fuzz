struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 3>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<i32> {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(28173i, global0.c | _wgslsmith_mult_i32(select(37934i, u_input.b, true), ~1i)), firstLeadingBit(max(max(698i, global0.b.x), -u_input.b) << (max(global0.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.e.x, 4294967295u)) % 32u)), u_input.b);
    var_0 = -_wgslsmith_mod_vec3_i32(global0.b.xyw, vec3<i32>(u_input.b, var_0.x, reverseBits(u_input.b) << (u_input.d % 32u)));
    var var_1 = global0.b.wxw;
    var var_2 = abs(countOneBits(reverseBits(vec3<u32>(4294967295u, 4294967295u, global0.a.x)) & vec3<u32>(u_input.c.x, global0.a.x, u_input.a.x)) ^ (u_input.a >> (min(u_input.a, _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.d, 0u, 1u), u_input.a)) % vec3<u32>(32u))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -233f), _wgslsmith_f_op_f32(select(795f, 1000f, true)), _wgslsmith_f_op_f32(min(1537f, -2814f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-536f, -906f, 997f), vec3<f32>(-1557f, -461f, 487f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-149f, -1000f, 457f) * vec3<f32>(-1770f, 585f, -701f))))));
    return vec2<i32>(abs(-1i), u_input.b);
}

fn func_2() -> Struct_1 {
    var var_0 = global0.b;
    let var_1 = global1[_wgslsmith_index_u32(~1u, 3u)];
    global0 = Struct_1(~(_wgslsmith_sub_vec2_u32(global0.a, ~vec2<u32>(3830u, 1u)) | (firstTrailingBit(vec2<u32>(global0.a.x, 0u)) >> (vec2<u32>(1u, global0.a.x) % vec2<u32>(32u)))), firstTrailingBit(~vec4<i32>(19529i, 2147483647i, global0.b.x, u_input.b) >> (~vec4<u32>(4294967295u, 4294967295u, 1u, var_1.a.x) % vec4<u32>(32u))), _wgslsmith_dot_vec2_i32(abs(var_0.wy), func_3()));
    let var_2 = global1[_wgslsmith_index_u32(1u, 3u)];
    var var_3 = 31317i & var_0.x;
    return global1[_wgslsmith_index_u32(var_2.a.x, 3u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = arg_0;
    global1 = array<Struct_1, 3>();
    global0 = arg_0;
    var var_1 = _wgslsmith_mult_vec4_u32(~(~(~arg_1)), arg_1);
    var var_2 = func_2();
    return select(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(false, false)), true, func_3().x <= firstLeadingBit(u_input.b), all(select(vec2<bool>(true, false), vec2<bool>(true, false), true))), vec4<bool>(_wgslsmith_f_op_f32(min(-1019f, -494f)) < _wgslsmith_f_op_f32(sign(-1164f)), true, (arg_2.x != 1549f) || false, !all(vec2<bool>(false, true)))), !(!vec4<bool>(true, true, var_0.b.x > 2147483647i, true)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), all(vec3<bool>(false, false, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, all(vec4<bool>(true, true, false, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = global1[_wgslsmith_index_u32(select(~_wgslsmith_mult_u32(~1u, firstTrailingBit(~u_input.c.x)), u_input.e.x, any(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), func_1(Struct_1(vec2<u32>(global0.a.x, global0.a.x), global0.b, 25685i), ~vec4<u32>(76903u, 1u, 0u, 0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 216f) + vec2<f32>(-1000f, 812f)), -vec4<i32>(-2147483647i, 2147483647i, -2147483647i, -49836i)), all(vec2<bool>(true, true))))), 3u)];
    let var_2 = !(!vec3<bool>(false, select(select(true, false, false), true, true), false));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -653f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1993f) + 277f) + -1000f));
    let var_4 = func_2();
    let var_5 = ~(~(~_wgslsmith_div_u32(u_input.e.x, _wgslsmith_mod_u32(var_4.a.x, 0u))));
    let var_6 = func_2();
    global0 = func_2();
    global1 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.x, var_6.c, var_4.b.xx, _wgslsmith_mod_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(var_4.a, u_input.a.xy)), vec2<u32>(~var_5, _wgslsmith_mod_u32(u_input.d, abs(5142u)))));
}

