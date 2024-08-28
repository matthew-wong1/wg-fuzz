struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1156f, -270f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = arg_3;
    var var_1 = !(!(!select(!vec4<bool>(false, arg_0, true, false), select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(true, arg_0, true, false), arg_0), true)));
    var_1 = select(!select(vec4<bool>(true, false, var_1.x, true), !select(vec4<bool>(true, arg_0, arg_0, var_1.x), vec4<bool>(var_1.x, arg_0, true, var_1.x), var_1.x), arg_1.x > u_input.c.x), select(vec4<bool>(any(vec4<bool>(var_1.x, var_1.x, false, false)) & var_1.x, !var_1.x, true, true), select(!(!vec4<bool>(arg_0, false, false, arg_0)), !vec4<bool>(false, false, false, arg_0), var_1.x), vec4<bool>(var_1.x, !(arg_0 | false), false, true)), any(select(vec3<bool>(all(vec4<bool>(true, true, var_1.x, var_1.x)), true, all(vec4<bool>(var_1.x, false, false, true))), !vec3<bool>(var_1.x, var_1.x, false), select(!var_1.wwx, var_1.zwx, var_1.x))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(855f, -1192f, global0.x) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-278f, global0.x, global0.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 2220f, -361f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -2184f, -2713f), vec3<f32>(-1258f, global0.x, 1976f))))))));
    let var_3 = countOneBits(max(max(vec3<i32>(_wgslsmith_div_i32(-1i, 6508i), u_input.e, 1i), ~min(u_input.c.zxz, arg_1.www)), arg_1.wzw));
    return vec3<u32>(~_wgslsmith_dot_vec2_u32(arg_2.a.a, vec2<u32>(u_input.b, _wgslsmith_mod_u32(31978u, arg_2.a.a.x))), 1u, _wgslsmith_mult_u32(abs(abs(1u)), 24921u));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec2<i32>) -> f32 {
    var var_0 = ((~22114u >= _wgslsmith_add_u32(u_input.b | u_input.b, u_input.b)) || (_wgslsmith_f_op_f32(-967f + _wgslsmith_f_op_f32(abs(-1000f))) < _wgslsmith_f_op_f32(ceil(-386f)))) || true;
    let var_1 = countOneBits(~(~(~vec4<u32>(u_input.b, 0u, 34397u, u_input.b) | vec4<u32>(u_input.b, 1u, 1u, 1u))));
    var var_2 = !(-_wgslsmith_dot_vec4_i32(-u_input.a, u_input.c & u_input.c) == arg_2.x);
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(29597u), select(116515u, 34072u, true)), _wgslsmith_div_vec2_u32(var_1.zy, _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, var_1.x), var_1.zw))), countOneBits(select(firstTrailingBit(u_input.b), ~u_input.d, true)), ~_wgslsmith_dot_vec3_u32(func_3(true, u_input.a, Struct_2(Struct_1(vec2<u32>(4294967295u, u_input.b)), Struct_1(vec2<u32>(var_1.x, 35443u))), Struct_1(var_1.ww)), reverseBits(vec3<u32>(var_1.x, u_input.b, u_input.b)))), var_1);
    var_0 = select(any(vec3<bool>(true, true, min(var_1.x, 52854u) < var_3)), true, (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 0u, var_1.x, 2050u)), min(vec4<u32>(1u, 1u, u_input.b, 4294967295u), var_1)) == 28213u) || all(vec2<bool>(false, var_1.x != var_3)));
    return 463f;
}

fn func_4(arg_0: vec4<f32>) -> vec2<f32> {
    global0 = arg_0.yy;
    var var_0 = Struct_2(Struct_1(~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, u_input.d), ~vec2<u32>(11871u, 1u))), Struct_1(_wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(67557u, u_input.b)), ~func_3(true, vec4<i32>(2147483647i, u_input.e, 21855i, u_input.c.x), Struct_2(Struct_1(vec2<u32>(u_input.b, u_input.b)), Struct_1(vec2<u32>(1u, u_input.d))), Struct_1(vec2<u32>(4294967295u, 0u))).zz)));
    global0 = vec2<f32>(arg_0.x, 370f);
    var var_1 = countOneBits(-vec2<i32>(-u_input.e, i32(-1i) * -30088i) ^ u_input.c.wy);
    var var_2 = select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, all(vec3<bool>(false, true, false))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), any(vec3<bool>(true, false, true))), select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false)), vec3<bool>(true, var_1.x > 11808i, true)), vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -818f) * _wgslsmith_f_op_f32(-937f * _wgslsmith_f_op_f32(func_2(var_1.x, -1i, vec2<i32>(u_input.e, u_input.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + -1000f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: f32, arg_3: vec3<u32>) -> i32 {
    let var_0 = 173f;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1680f - _wgslsmith_f_op_f32(trunc(-103f)))))), arg_2);
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(748f, var_0))), _wgslsmith_f_op_f32(step(var_0, -1537f))))));
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1006f, 1067f)))))), _wgslsmith_f_op_vec2_f32(func_4(vec4<f32>(var_0, _wgslsmith_f_op_f32(func_2(arg_0.x, i32(-1i) * -1i, ~arg_0.yy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) * _wgslsmith_f_op_f32(968f - 137f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-567f, -507f, arg_1.x))))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 - var_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))))));
    return reverseBits(u_input.c.x);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec2<i32>) -> StorageBuffer {
    let var_0 = vec3<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)))), true);
    let var_1 = var_0.x;
    global0 = _wgslsmith_f_op_vec2_f32(-arg_1.yz);
    global0 = _wgslsmith_f_op_vec2_f32(arg_1.yz * arg_0.xy);
    var var_2 = ~vec3<u32>(~(~u_input.b >> (u_input.d % 32u)), _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.d, 56945u, 33877u, 37468u)), vec4<u32>(countOneBits(u_input.d), u_input.b, u_input.d, u_input.d)), ~0u);
    return StorageBuffer(~_wgslsmith_mult_vec3_i32(u_input.a.wzw, u_input.a.wzx), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(countOneBits(~(~(vec2<u32>(u_input.b, 53097u) | vec2<u32>(u_input.d, u_input.d)))));
    let var_1 = true;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1057f)) - _wgslsmith_f_op_f32(-103f - 1343f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))), vec2<f32>(global0.x, global0.x)))));
    global0 = vec2<f32>(-702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -1497f) - global0.x)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1993f)));
    var var_2 = 51938i;
    let var_3 = -344f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(528f + -355f)));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = func_5(vec3<f32>(_wgslsmith_div_f32(-178f, global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1435f, global0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1397f, global0.x, global0.x) + vec3<f32>(-804f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 471f, global0.x) - vec3<f32>(global0.x, global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-143f, -108f, -488f)))))), vec2<i32>(func_1(u_input.a.yzy, select(select(vec2<bool>(false, true), vec2<bool>(true, true), var_3), select(vec2<bool>(var_3, var_3), vec2<bool>(true, false), var_1), false), 1836f, vec3<u32>(var_0.a.x, u_input.d, 13843u) & _wgslsmith_sub_vec3_u32(vec3<u32>(48970u, 1u, u_input.d), vec3<u32>(u_input.d, var_0.a.x, u_input.b))), max(~1i << (u_input.d % 32u), u_input.c.x)));
}

