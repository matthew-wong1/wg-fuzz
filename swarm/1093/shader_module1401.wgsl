struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: Struct_1;

var<private> global2: Struct_4;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> vec4<bool> {
    global2 = Struct_4(select(firstTrailingBit(-2147483647i >> (_wgslsmith_add_u32(0u, 1u) % 32u)), -2147483647i, !(!any(vec4<bool>(global1.a.x, global1.a.x, false, false)))));
    return !select(select(select(vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(true, false, global1.a.x, false), true), vec4<bool>(true, !global1.a.x, true, any(vec4<bool>(global1.a.x, true, global1.a.x, true))), !(!vec4<bool>(global1.a.x, true, global1.a.x, false))), select(select(!vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x), !vec4<bool>(global1.a.x, global1.a.x, false, false), !vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x)), vec4<bool>(global1.a.x, true, !global1.a.x, false), !(arg_0.x <= 1865f)), true);
}

fn func_2() -> Struct_1 {
    let var_0 = !(!(!select(func_3(vec3<f32>(466f, -234f, 1046f)), !vec4<bool>(true, false, global1.a.x, false), !vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x))));
    global0 = -669f;
    var var_1 = all(vec2<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(633f + -143f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1527f, -2022f, global1.a.x))), any(!func_3(vec3<f32>(-376f, 578f, 272f)))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1552f * 786f)))))));
    let var_2 = ~(max(select(56722u, abs(0u), var_0.x), ~_wgslsmith_add_u32(25196u, 49613u)) & 17531u);
    return Struct_1(var_0.yzz, _wgslsmith_dot_vec3_i32(-firstLeadingBit(~vec3<i32>(global2.a, -46766i, global1.b)), firstLeadingBit(firstLeadingBit(vec3<i32>(1993i, 0i, 0i)) << (reverseBits(vec3<u32>(4294967295u, var_2, var_2)) % vec3<u32>(32u)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec2<f32>) -> i32 {
    var var_0 = func_2();
    var var_1 = arg_0.a;
    var_1 = arg_0.a;
    var_0 = var_1.b;
    let var_2 = arg_0.a;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(arg_1, firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, -20332i, u_input.b, var_2.e.b), vec4<i32>(u_input.b, arg_1.x, -24635i, -18928i)))), -firstLeadingBit(arg_1) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), vec4<i32>(arg_0.c.x, 1i, firstLeadingBit(6051i), ~(~(-1i ^ u_input.a.x))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> Struct_1 {
    global2 = Struct_4(-(~firstLeadingBit(arg_1.c.x)) ^ (_wgslsmith_mult_i32(~global1.b, reverseBits(u_input.a.x)) | (i32(-1i) * -global2.a)));
    global2 = arg_0;
    global1 = Struct_1(!global1.a, firstTrailingBit(0i));
    let var_0 = Struct_1(arg_1.a.e.a, arg_1.a.e.b);
    var var_1 = Struct_4(global2.a);
    return arg_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -838f) + -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-181f, -1772f, !global1.a.x)))))));
    global1 = func_4(Struct_4(-func_1(Struct_3(Struct_2(Struct_1(vec3<bool>(global1.a.x, global1.a.x, false), 1i), Struct_1(vec3<bool>(global1.a.x, global1.a.x, false), 0i), true, -1186f, Struct_1(vec3<bool>(global1.a.x, false, false), global2.a)), vec3<f32>(-1063f, -181f, 2584f), vec3<i32>(1i, 1273i, 7625i)), -vec4<i32>(-1i, -1i, 3379i, 3340i), vec2<f32>(-591f, 1220f))), Struct_3(Struct_2(func_2(), Struct_1(!global1.a, -global2.a), any(!vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1000f)))), Struct_1(global1.a, 1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-716f, 728f, -248f), vec3<f32>(969f, -270f, -304f)) - vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(117f, -223f, 844f))), -((vec3<i32>(u_input.a.x, global2.a, 0i) | vec3<i32>(global2.a, global1.b, global2.a)) ^ firstLeadingBit(vec3<i32>(-26743i, global2.a, -1i)))));
    var var_0 = Struct_3(Struct_2(func_4(Struct_4(_wgslsmith_sub_i32(-11589i, 31496i)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), global2.a), Struct_1(global1.a, global1.b), global1.a.x, 496f, Struct_1(vec3<bool>(true, false, global1.a.x), 0i)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(320f, 128f, -749f), vec3<f32>(-969f, -1548f, 1000f))), -vec3<i32>(global2.a, -2147483647i, global2.a))), func_4(Struct_4(global2.a & global1.b), Struct_3(Struct_2(Struct_1(global1.a, 1i), Struct_1(global1.a, global2.a), false, -286f, Struct_1(vec3<bool>(global1.a.x, true, true), 12014i)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(121f, -336f, 340f))), vec3<i32>(-2147483647i, 1i, 58226i) & vec3<i32>(1i, u_input.b, u_input.b))), global1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1353f - 914f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -314f)), func_3(vec3<f32>(-1179f, -1658f, 374f)).x)), Struct_1(func_2().a, -9535i)), vec3<f32>(-695f, _wgslsmith_f_op_f32(min(-411f, _wgslsmith_f_op_f32(-1407f + _wgslsmith_f_op_f32(select(121f, 740f, false))))), -776f), _wgslsmith_sub_vec3_i32(~countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.b, 22091i), vec3<i32>(-2034i, -1i, 26408i))), vec3<i32>(-(-1i ^ global1.b), ~19041i, min(global2.a, i32(-1i) * -49892i))));
    let var_1 = true;
    global2 = Struct_4(-64962i);
    global1 = var_0.a.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 1u), reverseBits(reverseBits(~(-vec4<i32>(1i, var_0.a.e.b, global1.b, var_0.c.x)))), 14754i, _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(15962u, 0u), vec2<u32>(95589u, 1u), vec2<u32>(0u, 1u)), vec2<u32>(1u, 1u)), ~firstTrailingBit(vec2<u32>(0u, 3493u))) >> (abs(vec2<u32>(15684u, ~1u)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(1u, 1u)), ~(~vec2<u32>(1u, 4294967295u))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
}

