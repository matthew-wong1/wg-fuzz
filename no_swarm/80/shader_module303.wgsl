struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec2<f32> {
    var var_0 = !vec2<bool>(any(vec3<bool>(true, true, true)), true);
    var var_1 = 0u;
    let var_2 = vec3<i32>(firstLeadingBit(abs(~0i)), firstLeadingBit(abs(1i)), _wgslsmith_dot_vec2_i32(~(~(vec2<i32>(u_input.a, -1i) ^ vec2<i32>(-1i, 2147483647i))), _wgslsmith_sub_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(91108i, 78876i))), select(vec2<i32>(0i, -32725i), _wgslsmith_mult_vec2_i32(vec2<i32>(1063i, 1i), vec2<i32>(34429i, 21965i)), vec2<bool>(true, true)))));
    var var_3 = ~abs(vec2<u32>(1u, 1u));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2423f)) - 1464f));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-1156f + 956f), _wgslsmith_div_f32(1399f, -705f))))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-271f * arg_0.a.x))), arg_0.a.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -949f)), var_1.a.x)));
    var var_3 = max(vec2<u32>(1u, 4294967295u), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(8513u, 1u, 0u, 0u), vec4<u32>(22926u, 1u, 4294967295u, 0u)), 7658u), firstLeadingBit(firstLeadingBit(vec2<u32>(4294967295u, 4294967295u))), ~min(vec2<u32>(22759u, 0u), vec2<u32>(4294967295u, 4294967295u))), min(~abs(vec2<u32>(4294967295u, 0u)), ~(~vec2<u32>(0u, 20226u)))));
    var_3 = ~vec2<u32>(abs(var_3.x), var_3.x);
    return _wgslsmith_add_u32(abs(~var_3.x), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(89821u, var_3.x, var_3.x) | vec3<u32>(var_3.x, var_3.x, 4294967295u), vec3<u32>(0u, 4294967295u, var_3.x)), countOneBits(var_3.x) ^ _wgslsmith_mult_u32(var_3.x, 1u), 62316u), vec3<u32>(var_3.x, ~34939u, 1u)));
}

fn func_1() -> vec4<f32> {
    let var_0 = vec2<i32>(u_input.a, firstTrailingBit(-u_input.a));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, countOneBits(4294967295u)), abs(vec2<u32>(31066u, firstTrailingBit(30260u)))), 11267u, 118844u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(select(1u, 1u, true), 1u, func_2(Struct_1(vec2<f32>(-902f, 567f))) | 1u), 0u));
    var var_2 = 20270i;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-638f, 965f)))) * vec2<f32>(357f, _wgslsmith_f_op_f32(f32(-1f) * -1521f))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.a - vec2<f32>(145f, var_3.a.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.a.x, 335f)))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1764f, var_4.a.x, var_3.a.x, var_3.a.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, 1091f, var_3.a.x, 680f))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(-307f)), _wgslsmith_f_op_f32(var_3.a.x * 1000f), var_4.a.x, -665f)))) * vec4<f32>(var_4.a.x, var_4.a.x, var_3.a.x, 545f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(~1u, ~(~1u)) <= _wgslsmith_mult_u32(40770u >> (~_wgslsmith_clamp_u32(10059u, 101546u, 4294967295u) % 32u), ~28791u >> (countOneBits(~4294967295u) % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-629f, -1222f, 1431f, 953f) - vec4<f32>(829f, -1403f, -189f, 683f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(641f, 777f, 132f, -1269f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(223f, 479f, 195f, -398f) - vec4<f32>(-1292f, 308f, -981f, 1512f))))))) - _wgslsmith_f_op_vec4_f32(func_1()));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(var_1.zz * var_1.xx)));
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1449f, var_1.x)))) - var_1.zx)));
    var_2 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.wy)), var_2.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a.a.x)) + _wgslsmith_f_op_f32(-181f * _wgslsmith_f_op_f32(-var_2.a.a.x))), var_1.wwy);
}

