struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = vec2<i32>(max(u_input.a.x, 14826i), _wgslsmith_div_i32(_wgslsmith_add_i32(1i, ~2147483647i), 8703i) | u_input.a.x);
    let var_1 = var_0;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_sub_vec3_u32(firstLeadingBit(min(vec3<u32>(4294967295u, 6999u, 1u), min(vec3<u32>(4294967295u, var_2.a.x, arg_0.a.x), vec3<u32>(arg_0.a.x, 4294967295u, 4294967295u)))), firstTrailingBit(~(~vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)))) & vec3<u32>(var_2.a.x, ~(~arg_0.a.x), 1u);
    var var_4 = ~(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 1i), ~vec3<i32>(u_input.a.x, u_input.a.x, var_1.x), abs(vec3<i32>(-1i, -25128i, -763i))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1221f)), 839f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1072f, 602f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-777f, -663f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 399f, -1000f), vec3<f32>(544f, 345f, 1000f))))));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec2<u32>(1u, 1u))))), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(true, false, false)), all(vec3<bool>(true, true, false)), false), false), select(vec4<bool>(any(vec2<bool>(true, false)), true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, false, false), true), any(select(vec2<bool>(false, false), vec2<bool>(false, false), true))), vec4<bool>(false, select(true, all(vec2<bool>(false, true)), true), true, false)), 1i, ~abs(u_input.a.x >> (_wgslsmith_div_u32(4294967295u, 30589u) % 32u)), 0u);
    let var_1 = ~firstTrailingBit(_wgslsmith_add_vec2_u32(~(vec2<u32>(51076u, var_0.e) | vec2<u32>(var_0.e, 0u)), ~vec2<u32>(var_0.e, 7613u)));
    let var_2 = -max(vec4<i32>(_wgslsmith_clamp_i32(~var_0.c, select(0i, u_input.b, false), -u_input.b), u_input.b, u_input.a.x | _wgslsmith_clamp_i32(55102i, 1i, 1i), -2147483647i), ~select(vec4<i32>(var_0.c, 4537i, u_input.a.x, u_input.b), vec4<i32>(u_input.b, var_0.d, 1i, 2147483647i), var_0.b.x) & (select(vec4<i32>(var_0.d, -2147483647i, -2147483647i, 2147483647i), vec4<i32>(2147483647i, u_input.b, u_input.b, 0i), var_0.b.x) << (~vec4<u32>(4294967295u, 1u, var_1.x, 1u) % vec4<u32>(32u))));
    let var_3 = any(!select(var_0.b.zxy, vec3<bool>(var_0.b.x, false, var_0.b.x), var_0.b.wxz));
    var var_4 = var_2.x & ~_wgslsmith_sub_i32(u_input.a.x, -12310i);
    return vec4<bool>(!(!any(var_0.b.xy)) & all(var_0.b.xy), any(!var_0.b.wxx), var_3, ~3029u < ((var_1.x & 1u) & ~1u));
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(-1209f)), -691f, _wgslsmith_f_op_f32(min(-802f, -670f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(289f, -817f)), 1335f, _wgslsmith_f_op_f32(170f + 1000f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1227f, 1330f, 800f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-546f, -624f, 801f), vec3<f32>(-1762f, -777f, -238f))))))), !vec4<bool>(_wgslsmith_f_op_f32(select(1513f, -345f, false)) != _wgslsmith_f_op_f32(1104f * 1548f), !any(vec2<bool>(true, false)), false, true), abs(32005i), 2147483647i, 1u);
    let var_1 = vec2<i32>(select(2183i, var_0.d, false), _wgslsmith_div_i32(-20200i, var_0.d));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(var_0.a.x, 341f, var_0.a.x))))))), func_2(), _wgslsmith_add_i32(638i, ~var_1.x), var_1.x, ~102898u);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(select(vec2<u32>(var_0.e, 1u), vec2<u32>(1u, 1u), vec2<bool>(true, false))))))), vec4<bool>(false, false, !var_0.b.x, var_0.b.x), ~(-89538i), _wgslsmith_mult_i32(~(~u_input.b), -var_1.x), ~4294967295u);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec2<u32>(4294967295u, var_2.e)))))), vec4<bool>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.e, var_0.e), ~vec2<u32>(19420u, var_0.e)) == _wgslsmith_mult_u32(var_0.e, firstLeadingBit(var_0.e)), !var_2.b.x, (reverseBits(4294967295u) > var_0.e) | (var_2.b.x && true), ~(var_2.e << (16914u % 32u)) != _wgslsmith_mult_u32(1u, var_2.e)), u_input.a.x, var_2.c, 58884u);
    return var_3.b.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(select(vec2<bool>(true, true), select(func_1(), vec2<bool>(true, true), vec2<bool>(true, false)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2424f, -124f, 1000f)))), vec3<f32>(_wgslsmith_f_op_f32(1260f + -1274f), -247f, -238f))) * vec3<f32>(_wgslsmith_f_op_f32(floor(-405f)), -1635f, -845f)), func_2(), -2147483647i, _wgslsmith_mult_i32(u_input.a.x, 1i) << (reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(36437u, 4294967295u, 0u), vec3<u32>(22724u, 0u, 1u))) % 32u), firstLeadingBit(max(_wgslsmith_sub_u32(65785u, _wgslsmith_clamp_u32(45953u, 5609u, 0u)), 63478u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<f32>(1101f, 1752f, -969f, var_1.a.x), func_2())))))));
    var var_3 = _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(u_input.a.x, 46610i, var_1.c, var_1.c) | vec4<i32>(u_input.a.x, u_input.b, var_1.d, 1i)), firstLeadingBit(vec4<i32>(2147483647i, ~var_1.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.a.x), vec3<i32>(var_1.d, -36913i, u_input.b)), ~var_1.c))) > u_input.a.x;
    let var_4 = var_1;
    var var_5 = var_4.b.yx;
    let var_6 = select(min(vec3<i32>(var_4.c, 1i | _wgslsmith_sub_i32(var_4.d, var_1.d), ~6116i), vec3<i32>(~_wgslsmith_sub_i32(1i, var_4.c), -(var_4.c >> (var_1.e % 32u)), ~(~1i))), min(~_wgslsmith_div_vec3_i32(select(vec3<i32>(41075i, var_4.c, 59560i), vec3<i32>(-2147483647i, u_input.b, u_input.a.x), var_4.b.wwy), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.c, u_input.b, u_input.b), vec3<i32>(var_4.d, u_input.b, -2147483647i), vec3<i32>(var_1.d, var_1.c, 2147483647i))), vec3<i32>(-62069i, var_4.c, _wgslsmith_div_i32(var_1.d, 0i))), select(!select(var_4.b.ywz, vec3<bool>(true, var_0, false), select(var_4.b.ywx, var_4.b.wzx, false)), func_2().wxz, !(!vec3<bool>(false, var_5.x, true))));
    let var_7 = var_4.b.zyz;
    let var_8 = var_6 << (~(~vec3<u32>(var_4.e, var_4.e, var_1.e) ^ ~_wgslsmith_div_vec3_u32(vec3<u32>(var_4.e, var_4.e, var_1.e), vec3<u32>(var_4.e, var_1.e, 22974u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.a.x));
}

