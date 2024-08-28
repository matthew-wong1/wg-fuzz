struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * _wgslsmith_div_f32(arg_1.a, 760f)))), _wgslsmith_f_op_f32(-562f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1216f))))), -129f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a), 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a, arg_0.a, arg_1.a), vec3<f32>(2938f, -434f, 847f), vec3<bool>(false, false, false))))))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(702f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-425f + -1476f) - -1900f)) - _wgslsmith_f_op_f32(round(arg_1.a))), vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(0u | arg_0.b.x), arg_2.b.x), firstTrailingBit(4294967295u) | 31651u));
    let var_2 = vec2<u32>(~1u, reverseBits(~0u));
    var var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(585f - -575f), _wgslsmith_f_op_f32(round(-357f)), _wgslsmith_f_op_f32(f32(-1f) * -767f), _wgslsmith_f_op_f32(-arg_0.a)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-445f, 228f, -1382f, 398f) * vec4<f32>(arg_0.a, arg_1.a, -470f, var_3.a)))))));
    return select(vec4<bool>(select(true, false, false), !select(true, true, false), -(~0i) == u_input.a.x, false == all(vec4<bool>(false, true, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, true, false)), -621f <= arg_1.a, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false)), vec4<bool>(true, false, false, true), any(vec2<bool>(true, true))), vec4<bool>(all(vec3<bool>(true, true, true)), select(false, false, any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(145f - -874f)), all(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> vec2<u32> {
    var var_0 = !select(!vec4<bool>(all(vec2<bool>(true, false)), true, true, false), select(func_3(arg_1, Struct_1(arg_3, arg_1.b), arg_1), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true))), func_3(arg_1, Struct_1(1671f, arg_1.b), Struct_1(arg_3, arg_1.b)));
    var_0 = vec4<bool>(var_0.x, var_0.x, true, true);
    var_0 = vec4<bool>(all(var_0.zzy), var_0.x, any(vec4<bool>(any(select(vec2<bool>(var_0.x, true), var_0.xw, vec2<bool>(var_0.x, true))), var_0.x, all(var_0.wx), true | var_0.x)), var_0.x);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(-306f * _wgslsmith_f_op_f32(select(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * 1246f), true))), arg_3);
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3, var_1.x)) - _wgslsmith_f_op_f32(-arg_1.a))), arg_1.a)));
    return _wgslsmith_add_vec2_u32(reverseBits(min(~(vec2<u32>(u_input.c, arg_1.b.x) | arg_1.b), arg_1.b)), ~vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(10371u, 39977u, 11550u, u_input.c), vec4<u32>(u_input.b, 37002u, arg_1.b.x, 0u))) << ((~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 36835u), vec2<u32>(63425u, u_input.b)) & arg_1.b) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    var var_0 = arg_2;
    var var_1 = arg_0;
    var_1 = Struct_1(arg_2.a, ~max(~arg_0.b, countOneBits(~vec2<u32>(4294967295u, var_0.b.x))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a + var_1.a)))))), vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, 1154u, arg_2.b.x, var_1.b.x), vec4<u32>(u_input.c, var_0.b.x, 48981u, 0u))), var_1.b.x) << (~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), arg_2.b) % vec2<u32>(32u)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(163f * -1179f), ~vec2<u32>(~4887u, ~abs(var_0.b.x)));
    return vec4<bool>(!(firstTrailingBit(arg_1.x & arg_3) > -_wgslsmith_mult_i32(u_input.a.x, 1i)), true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec3<bool>(true, true, true)))), func_3(arg_0, Struct_1(_wgslsmith_f_op_f32(sign(arg_0.a)), vec2<u32>(u_input.b, arg_2.b.x)), arg_0).x | false);
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1132f, 1871f))), _wgslsmith_f_op_f32(-602f * -669f)), countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(u_input.c, u_input.c)))), firstLeadingBit(u_input.a.zx), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_add_vec2_u32(vec2<u32>(28914u, u_input.b) >> (~vec2<u32>(14912u, 13135u) % vec2<u32>(32u)), max(func_2(u_input.a, Struct_1(-1081f, vec2<u32>(42987u, 4294967295u)), 29968i, -842f), vec2<u32>(u_input.b, u_input.b)))), _wgslsmith_add_i32(u_input.a.x, select(-28224i, ~34769i ^ _wgslsmith_clamp_i32(u_input.a.x, 11558i, 6812i), !(4294967295u <= u_input.b))));
    var var_1 = !var_0.zww;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1305f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-382f))))))), select(~(~(vec2<u32>(72200u, u_input.c) | vec2<u32>(u_input.b, u_input.c))), vec2<u32>(1u, u_input.b), func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -365f), vec2<u32>(0u, u_input.c)), select(vec2<i32>(u_input.a.x, -13627i), firstTrailingBit(u_input.a.xz), vec2<bool>(false, true)), Struct_1(_wgslsmith_f_op_f32(-379f + -887f), func_2(u_input.a, Struct_1(810f, vec2<u32>(u_input.b, u_input.c)), -2147483647i, 185f)), -6267i).xw));
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, var_2.a, var_2.a) + vec3<f32>(103f, var_2.a, var_2.a)), vec3<f32>(-1000f, var_2.a, -193f), vec3<bool>(true, false, var_0.x)))))));
    var_1 = !select(var_0.xwx, !(!vec3<bool>(false, var_0.x, false)), var_0.wwy);
    return Struct_1(_wgslsmith_f_op_f32(787f + -714f), ~var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_1(796f, vec2<u32>(firstTrailingBit(~_wgslsmith_div_u32(70005u, 11446u)), u_input.b));
    let var_2 = func_1();
    var_0 = var_2;
    var_0 = var_2;
    var var_3 = 23065u;
    let var_4 = ~firstTrailingBit(~vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.b, vec2<u32>(var_0.b.x, var_2.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 7625u), vec4<u32>(var_0.b.x, var_2.b.x, 54966u, 8037u)), var_1.b.x));
    let var_5 = u_input.a.yxz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(445f))), _wgslsmith_f_op_f32(ceil(-313f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -179f), -242f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-876f, var_1.a, var_0.a))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(721f, -420f, var_2.a)))))), u_input.a, abs(~countOneBits(vec2<i32>(4065i, var_5.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a)) + -1262f) - var_0.a), var_1.a);
}

