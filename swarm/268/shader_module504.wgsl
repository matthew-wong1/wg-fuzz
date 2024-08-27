struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.b.x), arg_0.c))) + -368f);
}

fn func_3() -> u32 {
    let var_0 = !select(vec4<bool>(true, true, all(vec3<bool>(true, true, false)) & all(vec4<bool>(false, false, false, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-139f, -694f, 936f, -1000f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-989f, 257f, 744f, -313f))))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -505f))), -791f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -179f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1789f + -1665f)) - 1f)));
    let var_2 = Struct_1(~firstLeadingBit(23292u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-106f, var_1.x, -329f, 322f)) + _wgslsmith_div_vec4_f32(vec4<f32>(832f, 711f, var_1.x, 1220f), vec4<f32>(1807f, var_1.x, 267f, -1889f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, -859f), _wgslsmith_f_op_f32(f32(-1f) * -1051f), -306f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_1.x, var_1.x, 465f), vec4<f32>(-384f, 987f, var_1.x, var_1.x))))), var_1.x);
    var var_3 = 1u;
    var var_4 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(_wgslsmith_add_i32(u_input.d.x, 28644i), u_input.a, firstTrailingBit(-18051i), 2147483647i), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(u_input.a, u_input.d.x, u_input.d.x, u_input.a)), select(vec4<i32>(u_input.a, -1i, u_input.a, 13523i), vec4<i32>(u_input.a, 1i, u_input.a, 2147483647i), true))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.d.x) | vec4<i32>(1i, 54464i, u_input.a, u_input.a), firstTrailingBit(vec4<i32>(0i, u_input.a, u_input.d.x, 51612i)))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(30072i, u_input.d.x, 1i), u_input.d), 2147483647i, ~u_input.d.x, -2147483647i), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, 18911i, u_input.d.x), vec4<i32>(u_input.d.x, -2147483647i, u_input.a, -1i)), firstLeadingBit(vec4<i32>(u_input.a, -51000i, 30491i, 17554i))), -firstTrailingBit(vec4<i32>(18409i, 0i, u_input.a, 7621i)))));
    return ~u_input.b;
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = ~0u;
    let var_1 = !all(vec3<bool>(-34615i != _wgslsmith_dot_vec3_i32(vec3<i32>(-6957i, -2147483647i, -28636i), vec3<i32>(u_input.d.x, u_input.d.x, -39608i)), any(vec3<bool>(true, true, true)), false));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1807f), _wgslsmith_f_op_f32(trunc(940f)), _wgslsmith_f_op_f32(f32(-1f) * -468f)), vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(4294967295u, vec4<f32>(-222f, 1000f, 188f, -1243f), 1255f), Struct_1(1u, vec4<f32>(-104f, 1819f, 146f, 686f), -861f))), -134f, 117f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(371f, -1093f, 661f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1075f, -2069f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1383f, 942f, -637f)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-226f + -1075f)), -1132f, -219f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 742f, 885f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-195f, 491f, -393f) + vec3<f32>(-100f, -1190f, 1231f)))))));
    var var_3 = Struct_1(_wgslsmith_div_u32(~(~_wgslsmith_mod_u32(4294967295u, arg_0)), _wgslsmith_sub_u32(func_3(), ~func_3())), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 170f, 2730f, var_2.x) - vec4<f32>(1754f, -183f, var_2.x, var_2.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-203f, var_2.x, 1697f, var_2.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1369f, var_2.x, var_2.x)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-592f - 801f)))), var_2.x, !all(!vec3<bool>(var_1, var_1, true)))));
    var var_4 = !select(vec3<bool>(!var_1 | var_1, select(true, all(vec2<bool>(true, var_1)), true), any(!vec4<bool>(true, false, true, var_1))), select(!(!vec3<bool>(false, true, var_1)), select(select(vec3<bool>(true, false, var_1), vec3<bool>(var_1, var_1, false), var_1), select(vec3<bool>(true, var_1, var_1), vec3<bool>(false, var_1, var_1), vec3<bool>(false, false, false)), all(vec2<bool>(var_1, true))), !select(vec3<bool>(true, var_1, true), vec3<bool>(true, var_1, var_1), vec3<bool>(true, true, var_1))), vec3<bool>(var_2.x < _wgslsmith_div_f32(var_2.x, 342f), true, true));
    return select(!vec2<bool>(any(!vec4<bool>(var_1, false, var_4.x, true)), var_4.x), !var_4.yx, !vec2<bool>(var_4.x, var_1 | any(vec3<bool>(var_1, true, var_4.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!func_1((4294967295u & u_input.c.x) | ~u_input.b, ~vec4<i32>(22521i, u_input.d.x, 1i, u_input.a) | vec4<i32>(u_input.d.x, u_input.a, 1i, u_input.a)), vec2<bool>(true, true), select(!vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>((u_input.a == u_input.d.x) && true, any(vec4<bool>(true, true, true, true))), vec2<bool>(true, true)));
    let var_1 = Struct_1(7788u, vec4<f32>(189f, 1513f, _wgslsmith_f_op_f32(select(730f, _wgslsmith_f_op_f32(floor(2157f)), any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)))), -233f), _wgslsmith_f_op_f32(f32(-1f) * -1198f));
    var var_2 = _wgslsmith_dot_vec3_i32(~u_input.d, select(vec3<i32>(~u_input.a, _wgslsmith_add_i32(u_input.a, -36450i) << (firstLeadingBit(49760u) % 32u), ~u_input.d.x | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d.x, -14594i, -55665i), vec4<i32>(-2147483647i, -2147483647i, u_input.a, u_input.d.x))), vec3<i32>(abs(abs(1i)), _wgslsmith_mult_i32(3977i, u_input.d.x) & (u_input.a & u_input.a), -u_input.a), ~var_1.a < (u_input.b << (u_input.b % 32u))));
    var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~u_input.d.zz >> (u_input.c.xz % vec2<u32>(32u)), vec2<i32>(-u_input.a, i32(-1i) * -u_input.d.x)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(37539i, 42358i, abs(0i)), firstTrailingBit(vec3<i32>(u_input.d.x, 3386i, u_input.a))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_1.b)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) * var_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)))));
    var var_4 = var_1;
    let var_5 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_3.x)), -322f, _wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-233f, -479f), var_1.b.x)), _wgslsmith_f_op_f32(-var_4.c), _wgslsmith_div_f32(var_3.x, 1000f), -195f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b.x, 213f, -462f, var_4.b.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(321f, 443f, var_3.x, var_1.c), var_4.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_4.b, vec4<f32>(var_3.x, -1467f, var_3.x, var_1.c)) + vec4<f32>(418f, 823f, var_3.x, var_1.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(841f, var_1.b.x, var_1.b.x, -2039f) + var_1.b))))));
}

