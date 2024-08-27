struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(u_input.b, !all(vec4<bool>(false, false, true, false)), firstTrailingBit(max(-14628i, -2147483647i) & firstTrailingBit(-35251i)) != _wgslsmith_mult_i32(~0i, -1900i), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-893f)), 2026f), vec2<f32>(_wgslsmith_f_op_f32(256f * 292f), _wgslsmith_f_op_f32(sign(331f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-298f, 1361f))), _wgslsmith_div_vec2_f32(vec2<f32>(454f, -378f), vec2<f32>(-1321f, 1000f)), vec2<bool>(true, true)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-103f, var_0.d.x, -1227f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x) + vec3<f32>(var_0.d.x, 987f, var_0.d.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, 1691f, -744f) - vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1576f, 506f), 500f, 901f)));
    var var_2 = Struct_1(u_input.b, any(!(!vec2<bool>(var_0.b, var_0.b))) & var_0.b, !var_0.c || !var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, var_0.d.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, var_1.x)))));
    var_2 = var_0;
    var_2 = var_0;
    return _wgslsmith_clamp_u32(~firstTrailingBit(var_0.a), u_input.a.x, ~var_2.a);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<bool>) -> i32 {
    let var_0 = arg_1;
    let var_1 = Struct_1(func_3(), !(arg_1.b & all(arg_3.xzx)) || var_0.c, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-835f, 1482f)) + _wgslsmith_f_op_vec2_f32(-arg_1.d))))));
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(44112u, var_0.a), _wgslsmith_clamp_u32(arg_0, var_0.a, 22047u)), var_1.a, 1u), u_input.a), all(!arg_3.yw), arg_1.c, var_1.d);
    var var_3 = var_0;
    var_2 = var_1;
    return -10083i;
}

fn func_1() -> Struct_1 {
    let var_0 = false;
    let var_1 = firstTrailingBit(~_wgslsmith_mult_vec4_i32(vec4<i32>(func_2(u_input.a.x, Struct_1(5090u, var_0, var_0, vec2<f32>(-501f, 575f)), vec4<i32>(39918i, 1i, 2147483647i, -5867i), vec4<bool>(false, true, false, false)), reverseBits(2147483647i), select(3572i, -2147483647i, true), _wgslsmith_sub_i32(-57455i, 57643i)), -firstLeadingBit(vec4<i32>(29740i, -32620i, -26935i, -51535i))));
    let var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-568f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1911f + 131f) * 479f)))))));
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(407f * 1000f) + 317f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-106f * -1246f), -234f)))) - 1f), 107f);
    return Struct_1(abs(4294967295u), true, -2147f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-362f * -415f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-477f * -1698f) - _wgslsmith_f_op_f32(-1480f + -767f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * vec2<f32>(1f, _wgslsmith_div_f32(232f, -1431f))), all(!vec2<bool>(true, var_0)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, 746f, 1000f, arg_0.d.x)))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(-1496f)), _wgslsmith_f_op_f32(step(arg_0.d.x, arg_1.d.x)), -289f, _wgslsmith_f_op_f32(step(-1654f, -171f))))))));
    let var_1 = var_0.x;
    let var_2 = ~vec3<i32>(_wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(8473i, -2147483647i)), reverseBits(vec2<i32>(22673i, 2147483647i))), -1i, 2147483647i);
    let var_3 = _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-arg_1.d.x)));
    let var_4 = var_0;
    return firstTrailingBit(var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.yx;
    let var_1 = abs(1i);
    let var_2 = vec4<i32>(var_1, ~func_4(func_1(), func_1()), ~var_1, select(var_1, var_1, any(vec4<bool>(true, true, true, true))) >> (_wgslsmith_add_u32(1u, u_input.b) % 32u));
    var_0 = vec2<u32>(7688u, ~4294967295u);
    var_0 = u_input.a.yz;
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -972f) + 193f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1215f, 605f), vec2<f32>(665f, 566f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(152f, 940f), vec2<f32>(-155f, 541f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-262f, 2114f, -1991f, 1000f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(451f, -936f, -877f, -166f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(178f, -279f, -1105f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1415f, -831f, -1539f, -1000f))))));
}

