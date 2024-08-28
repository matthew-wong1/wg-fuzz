struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec2<f32> {
    let var_0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(select(u_input.a, u_input.a, true), 0u | u_input.a), abs(vec2<u32>(45408u, u_input.a)) ^ (vec2<u32>(4294967295u, u_input.a) >> (vec2<u32>(4606u, u_input.a) % vec2<u32>(32u)))) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u));
    let var_1 = firstLeadingBit(-16269i);
    let var_2 = _wgslsmith_f_op_f32(-1450f + -529f);
    let var_3 = vec4<bool>(!arg_0.c.b, true, true, any(select(vec4<bool>(!arg_0.c.b, true, all(vec4<bool>(false, true, false, true)), select(arg_1.c.b, arg_0.c.b, true)), vec4<bool>(true, true, arg_1.c.b, select(arg_1.c.b, arg_0.c.b, true)), arg_1.c.b)));
    var var_4 = Struct_2(-152f, false, _wgslsmith_f_op_vec2_f32(arg_1.c.c - vec2<f32>(-974f, _wgslsmith_f_op_f32(arg_0.d.a.x * _wgslsmith_f_op_f32(612f - -970f)))));
    return _wgslsmith_f_op_vec2_f32(exp2(arg_1.d.a.xy));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(1013f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1866f + -781f)), -414f))), -select(-vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(~(-33594i), -1i, 2147483647i, i32(-1i) * -20859i), true), Struct_2(633f, select(true, true, true) & true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-589f, -1549f)))), _wgslsmith_f_op_vec2_f32(func_3(Struct_3(1108f, vec4<i32>(2147483647i, 10793i, 209i, 4236i), Struct_2(-1079f, false, vec2<f32>(-1852f, -699f)), Struct_1(vec3<f32>(1512f, -1197f, 588f)), Struct_1(vec3<f32>(498f, -885f, 1214f))), Struct_3(-1263f, vec4<i32>(2933i, 23942i, -2147483647i, -2147483647i), Struct_2(-394f, false, vec2<f32>(1138f, 1175f)), Struct_1(vec3<f32>(605f, -265f, 1282f)), Struct_1(vec3<f32>(1000f, 1860f, 1000f))))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(193f, -546f, 1000f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1428f, -1000f, 209f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(343f, 919f, -1000f), vec3<f32>(1000f, 415f, -194f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(266f, -1000f, 1111f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(197f, 242f, 119f) * vec3<f32>(-1216f, 771f, -1857f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(var_0.d.a.x, var_0.c.c.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_f_op_f32(-var_0.d.a.x)))) > _wgslsmith_f_op_f32(step(var_0.d.a.x, var_0.c.a)), vec2<f32>(399f, _wgslsmith_f_op_f32(select(408f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.c.c.x, 936f))), true))));
    var var_2 = var_0;
    var_2 = var_0;
    var_2 = var_0;
    return Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(1f * var_2.e.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1233f, var_1.a) * -543f), var_0.d.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1036f, var_2.c.c.x, 1609f) - var_2.e.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-339f, -1473f, -1156f), vec3<f32>(2051f, 1113f, -110f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>) -> vec4<i32> {
    let var_0 = ~countOneBits(0i);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -318f), all(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-arg_0.a.yy));
    let var_2 = var_1.c.x;
    let var_3 = vec3<bool>(true, var_1.b, true);
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, -520f, var_1.a))))));
    return -arg_1;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(387f - _wgslsmith_f_op_f32(-735f * 1606f)))))), func_4(func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) & vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 3655u, 2222u, u_input.a) | vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u))), vec4<i32>(-1i, _wgslsmith_clamp_i32(2147483647i, -12978i, 45555i) & _wgslsmith_sub_i32(-7808i, -2147483647i), 0i, 1i), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(1i, 1i, -2147483647i), vec3<i32>(1i, -2063i, -2147483647i)), vec3<i32>(47064i, 17448i, -2147483647i), vec3<i32>(1i, 1i, 1i)) << (vec3<u32>(33545u, 12069u, ~u_input.a) % vec3<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(abs(-785f)), !any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-664f, -442f) + vec2<f32>(2110f, -1000f)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1984f, 1000f, -276f), vec3<f32>(-499f, 819f, 776f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(416f, -1748f, 844f) * vec3<f32>(806f, -744f, 1255f)), true)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2686f, 822f, -1409f)))), func_2(_wgslsmith_div_u32(u_input.a, ~u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(-var_0.a);
    var var_2 = Struct_3(var_0.d.a.x, -vec4<i32>(abs(-var_0.b.x), 2147483647i, _wgslsmith_mult_i32(var_0.b.x ^ var_0.b.x, -2147483647i), var_0.b.x), Struct_2(var_0.c.a, var_0.c.b, var_0.e.a.yx), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d.a))), var_0.d);
    var_2 = Struct_3(-1811f, ~var_0.b, var_2.c, var_2.e, func_2(42262u));
    var_1 = var_0.c.c.x;
    return Struct_1(vec3<f32>(866f, 592f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-788f, -426f)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = arg_0.a.yz;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(_wgslsmith_f_op_f32(-arg_1.a.x), countOneBits(vec4<i32>(arg_2, 6843i, -59052i, 20197i)) << (~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -527f), true, _wgslsmith_f_op_vec2_f32(floor(var_0))), func_1(), arg_1), Struct_3(arg_0.a.x, _wgslsmith_mod_vec4_i32(vec4<i32>(5003i, arg_2, 2147483647i, 52224i), vec4<i32>(arg_2, arg_2, -1i, arg_2)), Struct_2(_wgslsmith_f_op_f32(-arg_0.a.x), true, vec2<f32>(354f, -642f)), arg_1, func_1()))).x, select(all(vec3<bool>(true, true, true)), select(false, true, select(true, true, true)), true) && !select(arg_1.a.x == 958f, true, true), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -858f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-768f * _wgslsmith_f_op_f32(1138f + arg_0.a.x)))));
    let var_2 = -1226f;
    var var_3 = !vec3<bool>(any(!(!vec3<bool>(false, var_1.b, false))), true, select(var_1.b, true, var_1.b && var_1.b));
    var var_4 = ~vec2<u32>(u_input.a << (52890u % 32u), 0u) << (max(~(~vec2<u32>(4294967295u, 11395u)), vec2<u32>((u_input.a >> (16235u % 32u)) >> (reverseBits(u_input.a) % 32u), u_input.a)) % vec2<u32>(32u));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), func_2(~u_input.a), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-54728i, 14410i, -1i), vec3<i32>(0i, 23561i, 8103i)), -37724i), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i), vec2<i32>(-2147483647i, 2147483647i))), func_4(func_2(u_input.a), func_4(Struct_1(vec3<f32>(311f, -1218f, -916f)), vec4<i32>(1i, 1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)), -vec3<i32>(0i, -26801i, 25447i)).x));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(u_input.a).a.x + var_0.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(275f * -650f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))));
    let var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(abs(var_1.x))))), -1493f), -vec4<i32>(1i, countOneBits(1i), 0i, 1i), Struct_2(-494f, true, var_1.xz), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -558f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -354f)))), var_0);
    let var_3 = vec2<i32>(-var_2.b.x, _wgslsmith_sub_i32(abs(0i), _wgslsmith_sub_i32(abs(var_2.b.x), -1i | min(var_2.b.x, var_2.b.x))));
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(func_3(var_2, var_2)).x, var_2.b, Struct_2(-2358f, var_2.c.b, _wgslsmith_f_op_vec2_f32(var_1.zz - vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), var_0.a.x))), var_0, var_0);
    var var_5 = abs(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<u32>(1u, 103820u, 135413u, u_input.a))) & ~abs(min(vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u), vec4<u32>(u_input.a, 37911u, u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(_wgslsmith_div_f32(var_0.a.x, -1000f), var_2.b, Struct_2(-460f, var_4.c.b, vec2<f32>(-1145f, var_4.e.a.x)), var_4.d, Struct_1(var_2.d.a)), var_2))));
}

