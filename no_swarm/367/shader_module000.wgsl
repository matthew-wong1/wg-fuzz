struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 32>;

var<private> global2: array<vec4<u32>, 17>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_clamp_i32(~reverseBits(global0.b), 1i, _wgslsmith_sub_i32(~21481i, arg_0.b));
    return abs(global0.a);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(i32(-1i) * -2147483647i, arg_0.a, _wgslsmith_f_op_f32(abs(1152f)), _wgslsmith_sub_vec3_i32(~u_input.b, firstLeadingBit(vec3<i32>(~global0.b, firstLeadingBit(u_input.a.x), ~(-30480i)))));
    var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = Struct_1(0i, var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-862f + 1040f)))), -130f)), u_input.b);
    global2 = array<vec4<u32>, 17>();
    return Struct_1(_wgslsmith_div_i32(~1i, func_3(Struct_1(var_1.d.x, arg_0.b, var_0.c, var_1.d), vec3<u32>(u_input.d, u_input.d, u_input.c), true, global0.d) >> (u_input.d % 32u)), ~var_0.a ^ -1i, _wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(40624i, abs(var_2.a), max(global0.d.x, var_0.b)), global0.d ^ u_input.b), -(_wgslsmith_mod_vec3_i32(global0.d, vec3<i32>(global0.b, var_2.d.x, var_0.a)) >> (~vec3<u32>(9345u, u_input.d, 1u) % vec3<u32>(32u)))));
}

fn func_1() -> vec2<i32> {
    let var_0 = 2093f;
    global2 = array<vec4<u32>, 17>();
    let var_1 = Struct_1(global0.a, 2147483647i, _wgslsmith_f_op_f32(var_0 - -387f), ~global0.d);
    let var_2 = var_1;
    global0 = func_2(Struct_1(28197i, -23772i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1245f + global0.c))), global0.d ^ vec3<i32>(~var_1.d.x, 1i, -2147483647i ^ global0.b)));
    return max(var_2.d.yy, func_2(Struct_1(countOneBits(_wgslsmith_div_i32(19600i, 1i)), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2086f)), abs(var_2.d << (vec3<u32>(u_input.d, 4294967295u, 0u) % vec3<u32>(32u))))).d.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(0i, ~global0.b);
    global2 = array<vec4<u32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~global2[_wgslsmith_index_u32(1u, 17u)]), -_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(global0.b, global0.b, var_0, u_input.a.x) << (vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.d) % vec4<u32>(32u))), abs(vec4<i32>(var_0, u_input.a.x, var_0, -2147483647i))), _wgslsmith_mod_vec2_i32(-abs(vec2<i32>(-2147483647i, u_input.b.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(func_1(), ~vec2<i32>(51132i, u_input.b.x)), 45342i)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.d, 32u)]), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(125f, -562f, global0.c), vec3<f32>(1386f, -579f, 230f))))), vec3<f32>(global1[_wgslsmith_index_u32(u_input.d, 32u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(31709u, 4294967295u), vec2<u32>(0u, u_input.d)), 32u)] - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(7943u, 32u)] + global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1331f * global0.c))))));
}

