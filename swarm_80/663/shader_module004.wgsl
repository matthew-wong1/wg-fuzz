struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-509f, 1387f, -345f);

var<private> global1: array<Struct_3, 21>;

var<private> global2: i32 = -1i;

var<private> global3: vec3<u32>;

var<private> global4: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 0u, 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: bool) -> vec3<u32> {
    var var_0 = select(vec2<u32>(u_input.b.x, countOneBits(global3.x)), vec2<u32>(global4.x, 0u >> (_wgslsmith_div_u32(global3.x, u_input.b.x ^ global3.x) % 32u)), vec2<bool>(false, false));
    global2 = min(firstLeadingBit(u_input.c.x), u_input.a);
    return _wgslsmith_div_vec3_u32(u_input.b, max(global4.wxx, max(vec3<u32>(4294967295u, 7222u, global4.x), global4.xxz)));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(global4.x, 21u)];
    global2 = var_0.b.x;
    var var_1 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x - -520f), global0.x, false))), _wgslsmith_f_op_f32(exp2(global0.x)));
    var var_2 = ~(var_0.b.zz ^ u_input.c);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(1000f, -2029f), _wgslsmith_f_op_f32(var_1.x * global0.x), 205f, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2035f, global0.x, global0.x, global0.x)), true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1283f, global0.x)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(852f, 1177f, global0.x, var_1.x))))))), min(~32014i, 1i), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, 101f))), _wgslsmith_f_op_f32(-var_1.x)))));
    return reverseBits(i32(-1i) * -3753i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(!any(vec4<bool>(true, true, true, true))), true);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f)) - 1047f), _wgslsmith_div_f32(2222f, global0.x), _wgslsmith_f_op_f32(2905f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-914f + -266f) * global0.x)))), global0.x);
    global2 = countOneBits(firstTrailingBit(u_input.c.x));
    let var_2 = ~vec4<u32>(7072u, abs(_wgslsmith_dot_vec3_u32(global4.www, func_1(var_0.x))), 0u, 98798u);
    global2 = u_input.c.x;
    let var_3 = vec3<f32>(2725f, global0.x, _wgslsmith_f_op_f32(exp2(var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(143065u | (_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, global4.x, 11392u), vec3<u32>(global3.x, 17294u, 0u)) | 0u), ~countOneBits(global3.x) >> (_wgslsmith_add_u32(var_2.x, 1u) % 32u), _wgslsmith_mult_u32(_wgslsmith_div_u32(global3.x, ~0u), _wgslsmith_clamp_u32(global4.x & var_2.x, _wgslsmith_mod_u32(68152u, 57625u), _wgslsmith_div_u32(1u, var_2.x))), select(24439u, 27215u, false)), -1111f, abs(min(~global3.zz >> (~vec2<u32>(global3.x, 0u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.yy, global3.xz), ~var_2.yx, abs(var_2.yy)))), abs(vec3<i32>(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), u_input.c), reverseBits(u_input.c)), func_2(vec4<u32>(var_2.x, 24493u, 4294967295u, 7393u)) & _wgslsmith_mult_i32(u_input.c.x, u_input.a))));
}

