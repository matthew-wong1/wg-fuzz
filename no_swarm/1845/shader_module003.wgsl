struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<f32>(-1361f, -1242f, -1924f), vec4<f32>(-143f, 393f, 391f, 779f)), Struct_1(vec3<f32>(229f, -330f, -1000f), vec4<f32>(-189f, 239f, -201f, -1308f)), Struct_1(vec3<f32>(698f, 2513f, -1013f), vec4<f32>(-530f, 117f, 2324f, 1176f)), Struct_1(vec3<f32>(1000f, -1233f, -472f), vec4<f32>(-1009f, 861f, 1182f, -1610f)), Struct_1(vec3<f32>(-1457f, -1558f, -100f), vec4<f32>(312f, 481f, 255f, 311f)), Struct_1(vec3<f32>(-323f, 1000f, -1898f), vec4<f32>(-868f, 431f, 345f, -662f)), Struct_1(vec3<f32>(-1208f, 606f, 336f), vec4<f32>(-510f, -248f, -204f, 1433f)), Struct_1(vec3<f32>(551f, -203f, 1594f), vec4<f32>(1168f, 998f, 1084f, -1606f)), Struct_1(vec3<f32>(-987f, -1190f, -816f), vec4<f32>(-346f, -168f, 2396f, -517f)), Struct_1(vec3<f32>(-421f, 291f, 829f), vec4<f32>(635f, -738f, -2026f, -1000f)), Struct_1(vec3<f32>(-1000f, 1713f, 673f), vec4<f32>(-568f, -1000f, 235f, -358f)), Struct_1(vec3<f32>(2864f, -188f, -1000f), vec4<f32>(-771f, -375f, 667f, -370f)), Struct_1(vec3<f32>(-1580f, -889f, -1459f), vec4<f32>(-2106f, 386f, -1000f, -527f)), Struct_1(vec3<f32>(-745f, 1322f, -341f), vec4<f32>(260f, 258f, 940f, 1111f)), Struct_1(vec3<f32>(-427f, 1753f, -970f), vec4<f32>(910f, -361f, -109f, -632f)), Struct_1(vec3<f32>(1000f, 689f, 1320f), vec4<f32>(-740f, -1064f, -1617f, -795f)), Struct_1(vec3<f32>(-2015f, 1130f, -2466f), vec4<f32>(-1290f, 2010f, -157f, 294f)), Struct_1(vec3<f32>(976f, 1067f, -485f), vec4<f32>(500f, 1980f, 1702f, -723f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = -(~vec2<i32>(0i, u_input.b.x) ^ vec2<i32>(u_input.b.x | u_input.b.x, -50182i));
    var var_1 = global0[_wgslsmith_index_u32(54024u, 18u)];
    var var_2 = firstLeadingBit(vec2<i32>(0i, ~(-70615i)));
    var var_3 = arg_0.zzy;
    var_2 = vec2<i32>(_wgslsmith_clamp_i32(-u_input.b.x, 1i, -(~2147483647i)), u_input.b.x) & ~var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1735f)), -1277f)) - 563f);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-122f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -657f), -1169f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1349f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1793f, 1000f, 483f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(536f, -1122f, -243f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(933f, 323f, -200f) + vec3<f32>(-398f, 792f, 188f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1559f, _wgslsmith_div_f32(364f, 740f), _wgslsmith_f_op_f32(step(443f, 776f)), _wgslsmith_div_f32(-1000f, -659f)))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(-275f, -930f), _wgslsmith_f_op_f32(max(581f, -459f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, 531f, 2233f)) + _wgslsmith_div_vec4_f32(vec4<f32>(847f, var_0.b.x, var_0.b.x, 869f), var_0.b))))), vec4<f32>(926f, var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(628f - _wgslsmith_f_op_f32(f32(-1f) * -1674f))));
    let var_2 = -228f;
    var_0 = global0[_wgslsmith_index_u32(max(~countOneBits((u_input.a | u_input.a) << (min(u_input.a, 1u) % 32u)), firstTrailingBit(((u_input.a ^ 11616u) & 24299u) << (countOneBits(~30656u) % 32u))), 18u)];
    global0 = array<Struct_1, 18>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-565f)))));
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(func_2()), -895f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1032f, 414f, -689f, -1772f)))), vec4<f32>(1f, 1f, 1f, 1f), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(763f, -2436f, -824f, 606f)))))));
    let var_1 = select(vec4<bool>(true, true, true, true), select(vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 7811u, 47191u)) < 4294967295u, _wgslsmith_f_op_f32(-var_0.a.x) >= _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), true, false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), false)), true), select(vec4<bool>(select(u_input.a > u_input.a, any(vec4<bool>(false, false, true, true)), true), any(vec3<bool>(true, true, true)), !any(vec2<bool>(false, true)), (0i ^ u_input.b.x) > _wgslsmith_mod_i32(u_input.b.x, -24329i)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, -220f == var_0.a.x), true)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(func_3(var_0.b)), _wgslsmith_f_op_f32(-725f * _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-1237f + var_0.a.x)))), _wgslsmith_f_op_vec4_f32(trunc(var_0.b)));
    var var_2 = reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(37554u, u_input.a, u_input.a, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, 29555u), vec4<u32>(4294967295u, 46090u, 0u, u_input.a))), ~reverseBits(vec4<u32>(u_input.a, 4294967295u, 77298u, u_input.a))), u_input.a, _wgslsmith_mult_u32(~firstTrailingBit(u_input.a), 1u), 51717u));
    let var_3 = var_0.a.x;
    return vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(205f, var_0.a.x))))), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 18>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(686f, 1026f, 626f, 1315f), vec4<f32>(1461f, -678f, 449f, -440f), false))))))));
    let x = u_input.a;
    s_output = StorageBuffer(10883u, -(~min(~vec3<i32>(u_input.b.x, -1i, u_input.b.x), -vec3<i32>(-1i, u_input.b.x, 2147483647i))), ~vec3<u32>(reverseBits(u_input.a | u_input.a), 0u, ~1u), ~_wgslsmith_div_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(53254u, 0u, 4294967295u, 1264u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, 1u, u_input.a, u_input.a))), ~vec4<u32>(1u, 0u, 0u, 1u)));
}

