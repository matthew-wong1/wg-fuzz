struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    global1 = arg_2;
    var var_0 = Struct_1(arg_3);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(arg_2.a.zx, _wgslsmith_div_vec2_f32(vec2<f32>(468f, 919f), var_0.a.xy), !global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.zy)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(arg_2.a.yx)))) * _wgslsmith_f_op_vec2_f32(select(var_0.a.yz, global1.a.zz, select(global0.x, false, true))))) - _wgslsmith_f_op_vec2_f32(-arg_2.a.zx));
    var var_2 = max(u_input.a, u_input.c);
    var_2 = abs(reverseBits(u_input.d) >> ((vec3<u32>(15939u, _wgslsmith_div_u32(var_2.x, 1u), 21159u) ^ u_input.a) % vec3<u32>(32u)));
    return global0.x;
}

fn func_2(arg_0: f32) -> bool {
    global0 = select(select(vec3<bool>(true, true, true), vec3<bool>(min(-6713i, 2147483647i) < abs(u_input.b.x), false, func_3(_wgslsmith_div_vec2_i32(u_input.b.xx, vec2<i32>(u_input.b.x, -2147483647i)), u_input.a.yz, Struct_1(vec3<f32>(-938f, -670f, -938f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -332f)))), !all(global0.zx)), vec3<bool>(global0.x, !(!global0.x) | true, false), select(select(vec3<bool>(any(vec3<bool>(global0.x, false, global0.x)), global0.x, 968f == global1.a.x), vec3<bool>(true, true, true), vec3<bool>(true | global0.x, any(vec2<bool>(global0.x, global0.x)), all(vec3<bool>(global0.x, true, global0.x)))), select(!select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, global0.x, true)), !vec3<bool>(true, global0.x, global0.x), global0.x), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, global0.x, false), global0.x))));
    let var_0 = vec4<bool>(true, all(!select(vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), global0.x), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, false, false), vec3<bool>(global0.x, global0.x, global0.x)))), global0.x, any(select(!vec4<bool>(false, global0.x, global0.x, global0.x), !vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x))) || true);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(-831f, _wgslsmith_f_op_f32(-global1.a.x)), -443f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1145f, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(step(351f, global1.a.x))))));
    var var_2 = u_input.e;
    var_2 = 17540u;
    return true;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec4<i32> {
    global1 = arg_1;
    var var_0 = global0.x;
    var var_1 = -((i32(-1i) * -16593i) << (u_input.c.x % 32u));
    var var_2 = vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-360f, arg_0, global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1306f * arg_0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(488f + 923f), 855f, true)) + -154f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_1.a.x)), arg_0))));
    global1 = arg_1;
    return select(vec4<i32>(u_input.b.x, u_input.b.x, _wgslsmith_sub_i32(1i, -40636i), u_input.b.x) ^ ~(-(~vec4<i32>(0i, u_input.b.x, 32136i, u_input.b.x))), _wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, -1i, 7544i), vec4<i32>(u_input.b.x, 0i, 2147483647i, u_input.b.x)), select(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-1i, -1i, u_input.b.x, u_input.b.x)), ~vec4<i32>(-1i, 9760i, -28062i, 1i)), vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x) | vec4<i32>(-42047i, 2147483647i, u_input.b.x, -1i), func_2(_wgslsmith_f_op_f32(min(global1.a.x, 349f))))), select(!(!vec4<bool>(false, global0.x, global0.x, global0.x)), vec4<bool>(false, (17179i << (u_input.a.x % 32u)) >= firstLeadingBit(u_input.b.x), true, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true || !(_wgslsmith_f_op_f32(-global1.a.x) < global1.a.x);
    let var_1 = -964f;
    var var_2 = _wgslsmith_dot_vec4_i32(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a.x))), -140f), Struct_1(vec3<f32>(_wgslsmith_div_f32(var_1, 1000f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1348f)))), countOneBits(-vec4<i32>(1i, firstTrailingBit(u_input.b.x), u_input.b.x, -2147483647i)));
    var var_3 = 2147483647i;
    let var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.x, global1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), -284f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1037f, 712f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - global1.a.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.a.x, -1056f)) - _wgslsmith_f_op_f32(max(311f, -534f))), 327f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2466f * global1.a.x))), global1.a.x)));
    global0 = !vec3<bool>(true, !(_wgslsmith_f_op_f32(ceil(global1.a.x)) != global1.a.x), any(!(!vec2<bool>(global0.x, global0.x))));
    var var_5 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.x, -1174f, 293f), _wgslsmith_f_op_vec3_f32(-global1.a), global1.a.x > -382f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(var_1 - -431f))));
    let var_6 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_5.a))));
    var var_7 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(var_6.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, global1.a.x, var_1) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1310f, -637f, var_6.a.x)))) + var_6.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.c.x, 614u, u_input.c.x))) ^ ~select(vec4<u32>(u_input.a.x, u_input.d.x, 4294967295u, u_input.e), vec4<u32>(u_input.d.x, u_input.a.x, u_input.c.x, 86459u), vec4<bool>(true, global0.x, false, global0.x)), ~firstTrailingBit(abs(vec4<u32>(13434u, 1u, u_input.e, u_input.d.x)))), _wgslsmith_sub_i32(u_input.b.x, firstTrailingBit(u_input.b.x & u_input.b.x)), -_wgslsmith_mult_i32(u_input.b.x, u_input.b.x));
}

