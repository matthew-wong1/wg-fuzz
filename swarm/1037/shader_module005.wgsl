struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    global0 = arg_0;
    var var_0 = arg_0.a.a.x;
    var var_1 = arg_0;
    var var_2 = Struct_2(global0.a, vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_1.b.x, 4294967295u, arg_0.b.x), ~vec4<u32>(global0.b.x, var_1.b.x, u_input.a, global0.b.x)), 4294967295u, ~arg_0.b.x), true, var_1.d);
    var_1 = arg_0;
    return reverseBits(arg_0.b.x);
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global0.a.a)))), countOneBits(countOneBits(vec3<u32>(_wgslsmith_sub_u32(4294967295u, global0.b.x), ~29452u, u_input.a ^ global0.b.x))), !global0.c, true);
    var var_1 = global0.a;
    var var_2 = select(vec4<bool>(any(!(!vec2<bool>(false, global0.c))), var_0.d, global0.b.x < ~global0.b.x, !(global0.c || any(vec4<bool>(true, false, false, var_0.c)))), !select(select(vec4<bool>(false, var_0.c, true, global0.d), vec4<bool>(false, true, global0.d, global0.d), any(vec2<bool>(false, var_0.c))), vec4<bool>(any(vec2<bool>(global0.d, false)), true, global0.c, false), !(!vec4<bool>(var_0.c, global0.d, var_0.d, var_0.c))), true);
    global0 = var_0;
    var_2 = vec4<bool>(all(select(vec4<bool>(true, all(var_2.wx), all(vec4<bool>(var_0.c, true, true, true)), true), !vec4<bool>(var_2.x, true, true, global0.c), ~u_input.b.x <= u_input.b.x)), global0.d || ((_wgslsmith_f_op_f32(ceil(1415f)) <= _wgslsmith_f_op_f32(-var_1.a.x)) && var_0.c), (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global0.b.x, 55701u), var_0.b)) <= 9455u) || false, !global0.d);
    return vec3<u32>(0u, func_2(Struct_2(Struct_1(var_1.a), firstTrailingBit(var_0.b) & firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)), false, global0.a.a.x > var_0.a.a.x), global0.a, vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(384f)))))), abs(global0.b.x));
}

fn func_1() -> Struct_2 {
    global0 = Struct_2(global0.a, countOneBits(vec3<u32>(_wgslsmith_div_u32(func_2(Struct_2(global0.a, global0.b, global0.c, true), Struct_1(global0.a.a), global0.a.a.zz), global0.b.x ^ 7799u), ~1u, global0.b.x)), false, false);
    global0 = Struct_2(Struct_1(global0.a.a), func_3(), true, global0.c);
    let var_0 = min(~(~select(global0.b, vec3<u32>(u_input.a, u_input.a, 4294967295u), select(vec3<bool>(global0.c, true, global0.c), vec3<bool>(global0.c, true, global0.d), false))), global0.b);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-772f - -1005f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a.x * 376f)))))), global0.c));
    let var_2 = global0.a;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(global0.a.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.a.a, global0.a.a)))), var_0, global0.d, false);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_1 {
    global0 = arg_1;
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(func_1().a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(899f)), global0.a.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.a.x)))))), _wgslsmith_f_op_f32(select(-1239f, 1481f, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1362f * -1000f) - _wgslsmith_f_op_f32(global0.a.a.x + _wgslsmith_f_op_f32(110f * _wgslsmith_f_op_f32(f32(-1f) * -147f)))));
    global0 = Struct_2(arg_1.a, _wgslsmith_clamp_vec3_u32(~(~global0.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.b.x, 60025u, 11786u), arg_2, vec3<u32>(1638u, 1u, arg_1.b.x)) | vec3<u32>(global0.b.x, 88993u, arg_2.x), firstLeadingBit(global0.b)) ^ arg_1.b, arg_1.c, select(false, func_1().d & all(!arg_0), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(12323u, 1u, arg_1.b.x, 33891u), vec4<u32>(4294967295u, arg_2.x, arg_2.x, global0.b.x), vec4<u32>(28445u, 42651u, u_input.a, 47541u)), ~vec4<u32>(17220u, u_input.a, 1u, 13602u)) != arg_1.b.x));
    global0 = Struct_2(func_1().a, arg_1.b, !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global0.a.a.x)))) > func_1().a.a.x), !global0.d);
    let var_1 = 20557u;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a.x * _wgslsmith_f_op_f32(sign(-2249f))) - _wgslsmith_f_op_f32(-global0.a.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-367f))), true)), -1000f));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_2 {
    global0 = arg_1;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -324f)))) + arg_0.a.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -391f) * _wgslsmith_f_op_f32(-arg_3.a.a.x)))) * arg_1.a.a.x);
    global0 = func_1();
    var var_1 = arg_0.a.x;
    return Struct_2(arg_0, global0.b, global0.c, arg_1.d);
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3.a.zx;
    var_0 = func_4(arg_2.yx, arg_1, select(func_5(arg_1.a, arg_1, ~vec2<i32>(48328i, arg_0.x), arg_1).b, func_1().b, arg_1.d)).a.xy;
    global0 = arg_1;
    var var_1 = func_1().a;
    let var_2 = arg_3.a;
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d;
    let var_1 = -u_input.b.yy;
    var var_2 = func_6(select(u_input.b, firstTrailingBit(vec4<i32>(i32(-1i) * -2147483647i, u_input.b.x, var_1.x & -16346i, 2147483647i)), !global0.c || !any(vec2<bool>(false, false))), func_5(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.a), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.a.a.x, global0.a.a.x, 268f), vec3<f32>(global0.a.a.x, -232f, -973f))))), Struct_2(func_4(!vec2<bool>(global0.d, global0.d), func_1(), ~vec3<u32>(0u, 66804u, 53597u)), global0.b, global0.c, global0.d), _wgslsmith_add_vec2_i32(select(reverseBits(u_input.b.wx), firstTrailingBit(vec2<i32>(u_input.b.x, var_1.x)), false), var_1), func_1()), select(vec3<bool>(true, var_1.x >= -1i, false), !(!vec3<bool>(true, true, global0.d)), !any(select(vec2<bool>(false, false), vec2<bool>(global0.d, true), true))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(func_5(Struct_1(vec3<f32>(global0.a.a.x, 153f, global0.a.a.x)), Struct_2(global0.a, global0.b, true, global0.d), u_input.b.zx, Struct_2(global0.a, global0.b, false, false)).a.a, _wgslsmith_f_op_vec3_f32(global0.a.a * vec3<f32>(global0.a.a.x, 1607f, global0.a.a.x)))) - vec3<f32>(_wgslsmith_f_op_f32(select(global0.a.a.x, 2887f, global0.d)), _wgslsmith_f_op_f32(abs(-1033f)), global0.a.a.x))));
    let var_3 = func_5(global0.a, func_1(), var_1, func_1());
    var_2 = var_3.a;
    var var_4 = vec2<u32>(var_3.b.x, ~(~(~u_input.a)));
    global0 = func_5(Struct_1(var_3.a.a), func_1(), var_1, var_3);
    var_4 = min(vec2<u32>(47591u, global0.b.x), ~global0.b.zy);
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.x, func_5(global0.a, var_3, reverseBits(-vec2<i32>(var_1.x, 12527i)), func_5(func_1().a, func_1(), firstTrailingBit(var_1), Struct_2(Struct_1(vec3<f32>(-755f, global0.a.a.x, global0.a.a.x)), vec3<u32>(46765u, 1u, 8370u) & vec3<u32>(var_3.b.x, var_4.x, 0u), global0.c, true))).b.x, _wgslsmith_add_u32(1u, 96751u), 10858u);
}

