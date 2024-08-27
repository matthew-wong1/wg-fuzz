struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 83789u, 51992u, 1u);

var<private> global1: vec2<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: u32, arg_3: bool) -> vec4<i32> {
    var var_0 = Struct_1(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(99359u, 2639u, arg_1.x, 43061u), arg_1), arg_1, ~vec4<u32>(u_input.c, 4294967295u, arg_2, 31969u)), vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(497f, _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1149f, 532f, arg_0), vec3<f32>(arg_0, 557f, 538f))))));
    let var_1 = reverseBits(57909i);
    var var_2 = global1.x;
    let var_3 = u_input.b;
    var var_4 = _wgslsmith_f_op_f32(774f * var_0.c.x);
    return min(max(~vec4<i32>(-2147483647i, var_1, var_3.x, var_1) >> (select(vec4<u32>(u_input.c, 0u, 1u, 24268u), ~var_0.a, select(vec4<bool>(true, false, true, arg_3), vec4<bool>(false, false, arg_3, false), global1.x)) % vec4<u32>(32u)), min(vec4<i32>(-25434i, -30878i, -2147483647i, var_3.x), ~vec4<i32>(88879i, var_1, var_3.x, 0i)) ^ vec4<i32>(var_3.x, var_1, -var_1, _wgslsmith_sub_i32(var_1, 32640i))), vec4<i32>(_wgslsmith_clamp_i32(7449i, u_input.d.x, -var_3.x), -var_3.x, ~var_3.x, -2147483647i));
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<bool>(all(select(!select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, true), global1.x), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), !vec2<bool>(true, global1.x)), true)), _wgslsmith_dot_vec4_i32(vec4<i32>(-25496i, abs(-262i), -1i, u_input.d.x), max(-u_input.b, func_3(-409f, vec4<u32>(u_input.c, u_input.c, 62783u, 4294967295u), u_input.c, true))) <= _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_mod_i32(u_input.b.x, ~15064i)), global1.x, all(vec2<bool>(true, global1.x)));
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-287f, -967f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1937f, 391f) + vec2<f32>(518f, 1426f)), all(var_0)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1125f, -997f), vec2<f32>(965f, 947f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1518f, 1852f) * vec2<f32>(-202f, -2067f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(789f, 343f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1294f, 1000f))))));
    let var_3 = Struct_1(~(~vec4<u32>(u_input.c, firstLeadingBit(var_1), 1u, ~0u)), _wgslsmith_f_op_vec2_f32(var_2 - var_2), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2266f, -147f, _wgslsmith_f_op_f32(min(var_2.x, -803f)), var_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(189f - var_2.x), -787f, -1265f, _wgslsmith_f_op_f32(-var_2.x))), var_0)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -932f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1485f)), _wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(select(var_2.x, 402f, true))))))));
    global1 = var_0.yw;
    return var_3;
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_mult_vec3_i32(abs(vec3<i32>(2147483647i, u_input.d.x, u_input.b.x)), ~u_input.d);
    let var_1 = func_2();
    let var_2 = ~u_input.c;
    var var_3 = 10623u;
    let var_4 = func_2();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2306f, 941f, var_1.c.x) + var_4.d) * _wgslsmith_f_op_vec3_f32(var_1.d + var_1.d))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.c.x), -743f)), 822f, -148f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_1.d.x, 611f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.d.x, var_4.d.x)))), !global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(abs(~abs(vec4<u32>(54167u, u_input.c, u_input.c, u_input.c)) | vec4<u32>(~1u, 1u, 59130u ^ u_input.c, 11866u)), ~firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(17507u, global0.x, u_input.c, 4294967295u), vec4<u32>(u_input.c, u_input.c, 17849u, 4294967295u)), ~vec4<u32>(global0.x, u_input.c, 0u, global0.x))));
    var var_1 = !vec4<bool>(global1.x, global1.x, any(vec3<bool>(global1.x, false, global1.x)), false);
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1())));
    let var_3 = _wgslsmith_f_op_vec3_f32(var_2 - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), 1000f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1013f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(213f, -480f, global1.x)) * _wgslsmith_f_op_f32(-461f - var_2.x)))));
    var_1 = select(!(!vec4<bool>(true, false, any(var_1.yxy), all(var_1.zy))), vec4<bool>(var_0.x != u_input.c, true, !all(!var_1.yyw), any(var_1.xzy)), vec4<bool>(!global1.x, true, all(select(var_1.zz, vec2<bool>(false, var_1.x), vec2<bool>(false, global1.x))) && (~u_input.b.x < -u_input.d.x), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1162f, _wgslsmith_mod_u32(u_input.c, ~global0.x));
}

