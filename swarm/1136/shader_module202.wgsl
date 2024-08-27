struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1860f), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-905f, global0.x)), 356f, var_0 <= u_input.d.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, -458f, global0.x, -953f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global0.x, 1560f, 485f), vec4<f32>(global0.x, 1000f, global0.x, global0.x)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)))))), vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), global0.x, -701f, _wgslsmith_f_op_f32(1f - global0.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-1350f * 631f), 45881u);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a)))), 29943u);
    var var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.b, abs(_wgslsmith_dot_vec3_u32(u_input.c.wxx, u_input.c.xyy))), u_input.c.zw);
    return -1505f;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1675f, 1970f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(531f - global0.x)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(step(-1199f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), -1543f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, -1698f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x + -810f), _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-785f, -122f), 1268f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.x, global0.x)), _wgslsmith_f_op_f32(func_3()), -180f, -1423f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-524f, -248f, global0.x, 923f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -105f, 653f, var_0.x)), false)))));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-867f)), -865f, _wgslsmith_f_op_f32(func_3()), var_0.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-715f + -461f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(var_0.x + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, var_0.x, false)) - -1716f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_0.x, var_0.x, -381f), vec4<f32>(global0.x, global0.x, var_0.x, var_0.x)), vec4<f32>(global0.x, var_0.x, global0.x, 538f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, var_0.x, global0.x), vec4<f32>(global0.x, global0.x, 407f, -951f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(840f, var_0.x, -525f, var_0.x)))), true))));
    var var_2 = Struct_1(-1577f, min(u_input.d.x, u_input.d.x));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1000f))));
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(439f, 741f, -669f, global0.x)) + vec4<f32>(arg_0.a, 1906f, 946f, -599f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(342f, arg_0.a, arg_0.a, arg_0.a)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global0.x, 1381f, global0.x), vec4<f32>(global0.x, arg_0.a, arg_0.a, -1250f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(929f, 560f, global0.x, arg_0.a))) - vec4<f32>(993f, arg_0.a, arg_0.a, arg_0.a)) * vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(arg_0.a + global0.x), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(func_2())))));
    let var_0 = select(abs(~vec3<i32>(13376i, -2147483647i, -68044i)), abs(~_wgslsmith_clamp_vec3_i32(~vec3<i32>(432i, 12387i, 5740i), vec3<i32>(-1i, 17393i, 2147483647i), vec3<i32>(1i, 1i, 1i))), true);
    var var_1 = true;
    var var_2 = global0.x;
    let var_3 = -1018f;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(1116f * -509f), _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(func_2())) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1244f, var_3, -1550f, 1291f)))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1093f, -938f, -208f, 1954f), vec4<f32>(_wgslsmith_f_op_f32(floor(-304f)), _wgslsmith_f_op_f32(floor(1309f)), -1379f, -859f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.x, -1436f)), _wgslsmith_div_f32(-1064f, global0.x))), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.e, u_input.d.x, 100313u) ^ u_input.c.zxy), u_input.c.zyy))));
    let var_0 = Struct_1(-1067f, ~61737u);
    global0 = vec4<f32>(788f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(round(var_0.a))))))), 152f);
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1000f * var_0.a), _wgslsmith_f_op_f32(select(global0.x, global0.x, false)), _wgslsmith_f_op_f32(floor(-1478f)), -381f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(var_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, global0.x, global0.x))), true)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-222f, 274f, -175f, -407f), vec4<f32>(-948f, global0.x, -225f, 705f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1213f, -837f, global0.x, -645f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-var_0.a), global0.x, 159f)), !any(vec3<bool>(true, true, true))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(1164f + _wgslsmith_f_op_f32(f32(-1f) * -729f)), 4294967295u);
    var var_2 = _wgslsmith_div_u32(~45337u, firstLeadingBit(countOneBits(u_input.d.x))) & 0u;
    var_2 = select(~var_1.b, var_1.b, !(!any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_3 = _wgslsmith_f_op_f32(func_2());
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_1.a, _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-var_0.a)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, var_1.a)) + -239f) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a, -544f)) * -574f))), _wgslsmith_div_f32(760f, 296f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -680f))), 445f)));
    let x = u_input.a;
    s_output = StorageBuffer(40028i, ~(select(vec2<i32>(-11776i, 21652i), ~vec2<i32>(1i, 45892i), vec2<bool>(false, true)) << (u_input.d % vec2<u32>(32u))), var_0.a, max(-firstTrailingBit(vec3<i32>(1i, 1i, 1i)), _wgslsmith_mult_vec3_i32(reverseBits(max(vec3<i32>(25659i, -1i, -26697i), vec3<i32>(63232i, 66717i, -2147483647i))), vec3<i32>(~(-11630i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 26442i)), -6835i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))));
}

