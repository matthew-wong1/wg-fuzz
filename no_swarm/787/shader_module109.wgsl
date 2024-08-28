struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(1303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(629f * 978f) + global1.a))), any(!vec2<bool>(true, global1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(873f - _wgslsmith_f_op_f32(global1.a - -507f))) * _wgslsmith_f_op_f32(f32(-1f) * -1089f)));
    var var_1 = Struct_2(vec2<bool>(var_0.c, !all(select(vec4<bool>(false, global1.c, var_0.c, global1.c), vec4<bool>(false, global1.c, true, true), global1.c))), vec3<f32>(_wgslsmith_f_op_f32(sign(-1407f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(769f + _wgslsmith_f_op_f32(f32(-1f) * -1824f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -287f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + var_0.d) * -866f)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -285f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1405f))), true, 855f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-513f))), 1022f, abs(1i) <= u_input.b, 590f));
    var var_2 = ~vec2<i32>(47010i, _wgslsmith_add_i32(-u_input.b, u_input.b));
    let var_3 = Struct_2(select(var_1.a, vec2<bool>(select(false, global1.c, !global1.c), !any(vec4<bool>(false, false, var_0.c, global1.c))), var_1.a), var_1.b, var_0, var_0);
    var var_4 = 10800i | u_input.b;
    return vec2<u32>(49929u, u_input.c);
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> f32 {
    global1 = arg_3;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-264f, 2014f), vec2<f32>(155f, global1.b))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, global1.d)))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d, arg_3.a) + vec2<f32>(-550f, arg_2)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-821f, global1.a), vec2<f32>(global0.x, -2351f))))))) + vec2<f32>(-189f, _wgslsmith_f_op_f32(-arg_2)));
    global1 = arg_3;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1963f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x)))), arg_2);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(496f, arg_2), vec2<f32>(global1.d, 628f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1067f, -241f), vec2<f32>(global1.d, global0.x), vec2<bool>(true, true))))) - vec2<f32>(global0.x, -798f)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_3.a, global0.x)), -444f)), _wgslsmith_div_f32(-1007f, -494f)), vec2<bool>(2147483647i >= _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1304i, u_input.b), vec3<i32>(u_input.b, -2147483647i, u_input.b)), 19090u != countOneBits(u_input.a.x)))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(exp2(arg_3.a))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    let var_0 = ~(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, ~u_input.c), abs(firstLeadingBit(0u))) | u_input.c);
    global1 = arg_1.d;
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_3(), global1.c, _wgslsmith_f_op_f32(-global1.a), Struct_1(global0.x, -241f, true, 1232f)))) - _wgslsmith_f_op_f32(max(869f, arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(u_input.a.wz, global1.c, 668f, arg_1.c)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1383f + _wgslsmith_f_op_f32(arg_1.b.x * global0.x)))), true, global0.x);
    let var_1 = i32(-1i) * -5599i;
    var var_2 = Struct_1(arg_0.x, _wgslsmith_div_f32(1003f, global0.x), true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(-1000f, arg_1.b.x)) - _wgslsmith_f_op_f32(select(arg_0.x, global1.b, !global1.c))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(185f * arg_0.x), -1842f)));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    global1 = Struct_1(-232f, -542f, arg_3.c, arg_0.x);
    global1 = Struct_1(-1724f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, 1782f)) * _wgslsmith_f_op_f32(round(1708f))) - _wgslsmith_f_op_f32(arg_3.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -707f)))), arg_3.c, -853f);
    global1 = arg_3;
    let var_0 = arg_3.c;
    global1 = Struct_1(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -534f), all(!vec3<bool>(var_0, arg_3.c, u_input.a.x != u_input.a.x)), 1597f);
    return Struct_2(vec2<bool>(var_0 || false, all(vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2768f))), global0.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -494f) + _wgslsmith_f_op_f32(181f * global1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~arg_1, false, _wgslsmith_f_op_f32(-global1.d), arg_3)) * arg_0.x), true, _wgslsmith_f_op_f32(func_4(vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-207f + -139f)), arg_3))), arg_3);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: u32, arg_3: f32) -> f32 {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.a, _wgslsmith_f_op_f32(sign(global1.a)))))), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 3500u), arg_1)) >> (vec2<u32>(~51600u, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_f_op_f32(1163f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<f32>(-296f, -545f, arg_3), Struct_2(vec2<bool>(global1.c, false), vec3<f32>(global0.x, global0.x, global1.a), Struct_1(-310f, 765f, true, global1.a), Struct_1(-729f, 858f, false, global1.a))))), _wgslsmith_f_op_f32(func_4(arg_1, true, global1.a, Struct_1(-1000f, -1310f, false, 1000f)))))), Struct_1(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-335f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3)))), ((-22872i >> (arg_1.x % 32u)) | (71339i ^ u_input.b)) <= (_wgslsmith_add_i32(-43641i, u_input.b) | 0i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), 876f))));
    var_0 = func_5(var_0.b.yx, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2, arg_0.x), u_input.a.wy, ~arg_1 << ((vec2<u32>(15536u, arg_1.x) ^ vec2<u32>(40777u, arg_2)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -543f), func_5(var_0.b.zx, vec2<u32>(84107u, arg_0.x), global0.x, Struct_1(arg_3, -313f, var_0.c.c, -318f)).c.d))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1278f, -478f, false)), _wgslsmith_f_op_f32(-var_0.d.b)))), _wgslsmith_f_op_f32(func_2(vec3<f32>(global0.x, _wgslsmith_f_op_f32(floor(var_0.c.d)), _wgslsmith_div_f32(global0.x, arg_3)), func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.a, 538f)), vec2<u32>(0u, 1u) ^ arg_1, global0.x, var_0.c))), global1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(func_4(~arg_1, var_0.c.b < global1.a, -1293f, Struct_1(global1.b, global1.d, var_0.c.c, arg_3))))));
    let var_1 = _wgslsmith_sub_i32(-66984i, -31503i);
    var var_2 = func_5(var_0.b.xx, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-461f - _wgslsmith_f_op_f32(trunc(arg_3)))), var_0.c).c;
    var var_3 = u_input.c;
    return _wgslsmith_f_op_f32(step(445f, -1072f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(reverseBits(u_input.a.zy), ~u_input.a.ww, 1u, _wgslsmith_f_op_f32(abs(global1.b)))) * global1.a)));
    var var_1 = u_input.c;
    var var_2 = func_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(196f, var_0) - vec2<f32>(var_0, -975f)))), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, global1.d))), vec2<u32>(abs(u_input.c), ~u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.d))), func_5(vec2<f32>(-1655f, 428f), u_input.a.zw, _wgslsmith_f_op_f32(select(-1831f, var_0, false)), func_5(vec2<f32>(global0.x, 927f), u_input.a.zy, var_0, Struct_1(global1.a, var_0, true, 750f)).c).d).b.yz, u_input.a.x < _wgslsmith_mod_u32(~u_input.c, 1u))), firstTrailingBit(firstLeadingBit(vec2<u32>(u_input.a.x, firstTrailingBit(u_input.c)))), _wgslsmith_f_op_f32(528f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), func_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-955f, global1.b))), firstLeadingBit(u_input.a.zw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.a.zw >> (u_input.a.wx % vec2<u32>(32u)), global1.c, _wgslsmith_f_op_f32(global1.b * global0.x), Struct_1(global1.a, 1233f, true, 903f)))), func_5(vec2<f32>(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -416f)), u_input.a.zz, -909f, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-1000f, 2231f), false && global1.c, _wgslsmith_f_op_f32(global0.x * 1901f))).d).c).d;
    let x = u_input.a;
    s_output = StorageBuffer(1i, min(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 20105i), vec3<i32>(u_input.b, u_input.b, u_input.b))), ~38884i, _wgslsmith_add_i32(-2147483647i, 0i | u_input.b)), _wgslsmith_add_vec3_i32(-abs(vec3<i32>(14684i, 2147483647i, -55674i)), max(abs(vec3<i32>(u_input.b, u_input.b, u_input.b)), -vec3<i32>(1i, -2147483647i, u_input.b)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<u32>(52964u, 0u), var_2.c, global0.x, Struct_1(2179f, var_0, global1.c, var_0))) - global1.a), 1100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f - -1113f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1000f, var_0)))))));
}

