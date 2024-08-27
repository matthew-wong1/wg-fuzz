struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1186f)), 135f, _wgslsmith_div_f32(-1129f, 2485f))) + vec3<f32>(_wgslsmith_f_op_f32(-1f), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-405f)), -1626f)))), vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, u_input.b), select(~vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(10098i, -29242i), true)), i32(-1i) * -firstTrailingBit(u_input.b), select(_wgslsmith_dot_vec4_i32(~vec4<i32>(-13605i, u_input.b, u_input.b, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(9571i, u_input.b, -40362i, 13433i), vec4<i32>(u_input.b, -16920i, 4565i, -2147483647i))), -1i, any(vec3<bool>(true, false, true)) && true)), countOneBits(vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, 27205i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 68566i, 7434i, 41709i), vec4<i32>(-1i, 1i, u_input.b, u_input.b))))));
    let var_1 = var_0;
    let var_2 = -16552i;
    var var_3 = (countOneBits(~4294967295u) < ~(~min(u_input.a.x, 20206u))) && (var_2 != _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, var_1.c.x), firstLeadingBit(vec4<i32>(var_2, 1i, 14027i, var_0.b.x))), -(~(-2147483647i))));
    return _wgslsmith_f_op_vec3_f32(-var_0.a);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -1i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()));
    let var_2 = min(~(~firstLeadingBit(firstTrailingBit(6581u))), reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 0u), u_input.c), abs(vec2<u32>(u_input.a.x, 0u)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(var_1 * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1)))));
    var var_4 = ~(min(~u_input.a.yz, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), u_input.a.yy, vec2<u32>(u_input.c.x, 4294967295u))) << (~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 84184u), vec2<u32>(u_input.a.x, u_input.c.x), vec2<u32>(37705u, 4294967295u))) % vec2<u32>(32u)));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = u_input.c.x;
    let var_1 = arg_0;
    let var_2 = 505f;
    var var_3 = arg_0;
    let var_4 = firstTrailingBit(min(min(15352i, -arg_0.c.x) | (_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c.x, var_3.b.x, 1i, arg_2), vec4<i32>(1i, arg_2, 36269i, var_1.c.x)) & (var_1.b.x >> (var_0 % 32u))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_3.b.zz, arg_0.b.xx), ~(-vec2<i32>(1652i, u_input.b)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(329f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a.x, _wgslsmith_f_op_f32(floor(var_2)), false)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(-arg_1.a.x)))));
}

fn func_1() -> Struct_1 {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-833f * _wgslsmith_f_op_f32(step(-383f, _wgslsmith_f_op_f32(func_4(Struct_1(vec3<f32>(750f, -471f, -538f), vec3<i32>(-47615i, var_0, -113086i), vec2<i32>(var_0, 23041i)), func_2(vec4<i32>(var_0, var_0, var_0, -1i), Struct_1(vec3<f32>(-862f, 605f, 1026f), vec3<i32>(u_input.b, u_input.b, 9669i), vec2<i32>(u_input.b, 1i))), 1i))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(334f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1119f))))) * 138f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-721f, -1070f) + -1481f)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1514f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-526f, -1373f))))) - -1359f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1548f) * _wgslsmith_f_op_f32(929f + _wgslsmith_div_f32(513f, _wgslsmith_f_op_f32(f32(-1f) * -1143f)))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-676f, 1404f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-309f)) + _wgslsmith_f_op_f32(f32(-1f) * -1320f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-965f, 677f, -189f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(234f, 637f, -1593f) * vec3<f32>(-624f, -244f, 176f)))))), vec3<i32>(min(1i, ~0i), _wgslsmith_mod_i32(var_0, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, -30056i) >> (u_input.a.wzx % vec3<u32>(32u)), vec3<i32>(var_0, var_0, 1i)) & _wgslsmith_div_i32(var_0, ~1i)), -min(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(27941i, -23182i)), abs(-vec2<i32>(-1i, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-821f + -107f) * _wgslsmith_f_op_f32(f32(-1f) * -421f))));
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, var_0)))), vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)), 1347f)), _wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.b, u_input.b, -22335i), vec3<i32>(min(u_input.b, 13483i), -2774i, u_input.b)) | vec3<i32>(28310i, -1i, u_input.b), firstTrailingBit(vec2<i32>(u_input.b, -6472i) ^ max(vec2<i32>(-2147483647i, -3588i), vec2<i32>(u_input.b, u_input.b))) << (~_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(u_input.c.x, 71246u), vec2<u32>(0u, u_input.c.x) >> (vec2<u32>(21135u, u_input.c.x) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - var_0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1043f))))));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(max(_wgslsmith_add_vec3_u32(u_input.a.zzy, u_input.a.wwz) ^ vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), firstTrailingBit(~u_input.a.wwy)), abs(~(u_input.a.ywz ^ vec3<u32>(52008u, 8062u, u_input.c.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_3()).x)), var_2.a.x), vec3<f32>(var_2.a.x, _wgslsmith_div_f32(-2276f, _wgslsmith_f_op_f32(round(var_1.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(538f))))), vec3<u32>(43320u, 0u, ~abs(93275u)));
}

