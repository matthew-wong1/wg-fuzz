struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = arg_2.a.b.ww;
    var var_1 = _wgslsmith_f_op_f32(1188f + -427f);
    let var_2 = -250f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.a.a.x, -1483f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3)))) - arg_3);
    var var_3 = true;
    let var_4 = Struct_2(arg_2.a);
    return ~arg_2.a.e.x;
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, 55781u), ~(~vec2<u32>(func_3(vec3<u32>(arg_0, 4294967295u, 44821u), vec3<bool>(false, false, false), Struct_2(Struct_1(vec4<f32>(788f, -1157f, 1510f, 1000f), vec4<f32>(228f, -453f, 244f, -1000f), vec2<f32>(262f, 867f), vec2<f32>(516f, 261f), vec2<u32>(115437u, arg_0))), 992f), ~u_input.c)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-821f, _wgslsmith_div_f32(2373f, 811f)))))) - -535f);
    var var_2 = Struct_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(~(~u_input.e), _wgslsmith_clamp_u32(9868u, arg_0, 4294967295u) >> (_wgslsmith_add_u32(49570u, 75799u) % 32u)), firstTrailingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, u_input.c), vec2<u32>(u_input.a, arg_0))), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, 4294967295u), _wgslsmith_mult_vec2_u32(~vec2<u32>(40493u, u_input.c), vec2<u32>(arg_0, u_input.e)), max(~vec2<u32>(u_input.a, arg_0), ~vec2<u32>(1u, 13818u)))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1096f, 343f, var_1, -942f)) * vec4<f32>(-485f, var_1, -691f, var_1)), _wgslsmith_div_vec4_f32(vec4<f32>(1705f, 129f, 1000f, var_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -282f, var_1, var_1))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, var_1), vec2<f32>(var_1, var_1), vec2<bool>(false, false))), vec2<f32>(var_1, 1112f), false)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -318f)), vec2<f32>(-969f, 1078f))), _wgslsmith_sub_vec2_u32(vec2<u32>(30549u, 88712u), vec2<u32>(14577u, arg_0)) ^ ~vec2<u32>(u_input.e, u_input.e))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(var_1, 1007f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(var_1, 612f))))))), select(vec2<bool>(all(vec2<bool>(true, true)), false), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true), !select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec4<bool>(false, true, true, true)) & (306f > var_1)));
    let var_3 = Struct_3(var_2.b);
    let var_4 = vec4<bool>(false, false, any(!(!select(vec3<bool>(var_2.e.x, false, var_2.e.x), vec3<bool>(true, var_2.d.x, false), var_2.e.x))), 1u <= u_input.e);
    return var_3;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<i32>) -> i32 {
    let var_0 = ~u_input.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.x), arg_1.a.c.x, arg_1.a.a.x) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_2.a.a.a.yww * arg_2.a.a.b.xyz), arg_2.a.a.a.yxx)));
    var var_2 = !any(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), false)));
    var var_3 = Struct_4(arg_2.a.a.e, arg_2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(309f, _wgslsmith_f_op_f32(f32(-1f) * -1507f)) - vec2<f32>(_wgslsmith_div_f32(-247f, _wgslsmith_f_op_f32(-1771f + 600f)), arg_1.a.b.x)), vec2<bool>(!select(true, true, arg_2.a.a.e.x >= 4294967295u), false), vec2<bool>(true, any(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))));
    var_2 = var_3.d.x | false;
    return 23794i;
}

fn func_1(arg_0: vec4<i32>) -> vec2<f32> {
    var var_0 = -446f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 678f))) * _wgslsmith_f_op_f32(abs(-967f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -196f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 812f))))));
    let var_1 = vec3<i32>(firstLeadingBit(23226i) & ~func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-315f, 1861f, -1250f, -2383f), vec4<f32>(1650f, -487f, 1891f, 311f))), Struct_2(Struct_1(vec4<f32>(1139f, 318f, 1113f, 938f), vec4<f32>(-1000f, -1531f, 155f, -759f), vec2<f32>(-248f, 1321f), vec2<f32>(753f, 513f), vec2<u32>(26038u, 4294967295u))), func_2(u_input.a), vec2<i32>(2147483647i, u_input.b)), -6581i, max(arg_0.x, _wgslsmith_sub_i32(2147483647i, u_input.d)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -141f) * -1000f)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2846f, 670f), vec2<f32>(106f, -2184f))))))) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2509f + 526f) + func_2(4294967295u).a.a.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1615f, 1202f)))), 154f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(174f + -2049f))))), -1245f, _wgslsmith_f_op_f32(377f - _wgslsmith_f_op_f32(f32(-1f) * -1126f)), _wgslsmith_f_op_f32(round(318f))), vec4<f32>(1f, 474f, -1000f, _wgslsmith_f_op_f32(-436f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1152f)) + _wgslsmith_f_op_f32(-465f + 357f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-737f, -186f), vec2<f32>(1793f, -194f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(386f, -1073f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2063f), -669f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d, u_input.d, u_input.b, u_input.b)), vec4<i32>(10762i, u_input.d, 2147483647i, u_input.b)))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -318f))), reverseBits(_wgslsmith_mult_vec2_u32(select(min(vec2<u32>(41373u, u_input.e), vec2<u32>(u_input.c, u_input.c)), abs(vec2<u32>(4294967295u, u_input.e)), true), vec2<u32>(~0u, ~u_input.c))));
    var var_1 = 4213u;
    let var_2 = ~u_input.c;
    var var_3 = var_2;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a, var_0.b) + _wgslsmith_div_vec4_f32(vec4<f32>(558f, var_0.a.x, 906f, var_0.d.x), var_0.a))))), _wgslsmith_f_op_vec4_f32(-var_0.b), var_0.d, var_0.d, var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.d, _wgslsmith_clamp_i32(1i, -36791i, ~firstTrailingBit(-1i))), var_2, _wgslsmith_f_op_f32(736f * _wgslsmith_f_op_f32(floor(var_0.a.x))), -vec3<i32>(abs(~(-2147483647i)), u_input.b, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-203f, -1473f, var_0.c.x, -494f)), Struct_2(Struct_1(var_0.b, var_0.a, var_0.c, vec2<f32>(var_0.b.x, var_0.b.x), var_0.e)), Struct_3(Struct_2(Struct_1(vec4<f32>(var_0.c.x, var_0.b.x, var_0.b.x, -1274f), var_0.a, vec2<f32>(-341f, -443f), vec2<f32>(var_0.c.x, -574f), var_0.e))), -vec2<i32>(u_input.d, -2147483647i))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -479f), 179f))))));
}

