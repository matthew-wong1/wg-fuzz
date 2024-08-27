struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_3,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: f32,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))))), ~(~(-vec3<i32>(2147483647i, 11208i, -2150i))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.e), ~u_input.d.xy), u_input.b, 1u), _wgslsmith_f_op_f32(f32(-1f) * -325f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -1191f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1491f)), _wgslsmith_f_op_f32(ceil(-320f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1569f, -193f) * vec2<f32>(-340f, 187f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(600f, 214f) - vec2<f32>(664f, 1624f)))))));
    var var_1 = abs(vec2<u32>(~8990u & abs(u_input.d.x), 32164u)) >> (_wgslsmith_div_vec2_u32(~(select(var_0.a.c.zz, vec2<u32>(u_input.b, 4810u), true) | min(var_0.a.c.yy, u_input.a.xy)), select(u_input.a.wx, var_0.a.c.zz, false)) % vec2<u32>(32u));
    var var_2 = var_0.a;
    var var_3 = var_0.a;
    let var_4 = vec3<bool>(all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), true == (18481u <= u_input.d.x))), true, true);
    return var_0.a.b.x;
}

fn func_2() -> vec2<bool> {
    let var_0 = -11901i;
    var var_1 = vec3<bool>(!(func_3() > -var_0), !(-896f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -997f)))), any(vec3<bool>(true, true, true)) == (0u >= u_input.e));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(1353f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(617f - -192f))))), 635f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -141f), _wgslsmith_f_op_f32(-128f - -1400f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2602f, _wgslsmith_f_op_f32(step(-163f, 1474f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-766f - 236f))))), firstLeadingBit(vec3<i32>(-(i32(-1i) * -1i), var_0 | abs(var_0), 1i)), ~u_input.a.wwx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(-1309f))) + _wgslsmith_div_f32(-641f, -758f)) + 942f));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))), -1573f);
    var var_4 = firstTrailingBit(~(~var_2.b.x)) != var_2.b.x;
    return select(var_1.yx, vec2<bool>(true, var_1.x), var_1.x);
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = arg_0.a.b.yy;
    var var_1 = func_2();
    var var_2 = arg_0;
    var_0 = ~vec2<i32>(-1i, abs(reverseBits(-63339i)));
    var_0 = abs(firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(var_2.a.b.x, _wgslsmith_add_i32(var_2.a.b.x, 29769i)), -var_0.x << (~arg_0.a.c.x % 32u))));
    return reverseBits(u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))), select(~reverseBits(vec3<i32>(1i, 1i, 1i)), vec3<i32>(1i, ~(-31306i), 1i) >> (~vec3<u32>(u_input.e, 82590u, 4294967295u) % vec3<u32>(32u)), true), vec3<u32>(max(min(54724u, ~u_input.c), u_input.b), _wgslsmith_sub_u32(_wgslsmith_sub_u32(17300u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, u_input.b, 18343u), vec4<u32>(0u, 38612u, u_input.e, u_input.b))) | func_1(Struct_3(Struct_1(vec4<f32>(971f, 361f, 617f, -239f), vec3<i32>(-29079i, 21776i, -29962i), u_input.a.xzz, -368f), vec2<f32>(1200f, -524f))), u_input.d.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-308f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1784f)))))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-815f, -240f, -1636f, var_0.a.x))), var_0.a), _wgslsmith_clamp_vec3_i32(var_0.b, -var_0.b >> (u_input.d.yxz % vec3<u32>(32u)), var_0.b), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 78218u), firstTrailingBit(4294967295u)), var_0.c.x, var_0.c.x | (var_0.c.x >> (var_0.c.x % 32u))), 1970f), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true))), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false)), func_2().x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.a, var_0.a))), min(~vec3<i32>(-1i, var_0.b.x, 34343i), var_0.b) | vec3<i32>(_wgslsmith_mod_i32(var_0.b.x, -3129i), -43542i, var_0.b.x), countOneBits(abs(var_0.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1720f)))), ~(~_wgslsmith_sub_u32(~1u, var_0.c.x ^ u_input.c)));
    let var_2 = reverseBits(var_0.c);
    let var_3 = reverseBits(_wgslsmith_dot_vec3_u32(~min(abs(vec3<u32>(4294967295u, 27693u, 42476u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c.x, 43227u, var_0.c.x), var_2, var_0.c)), _wgslsmith_div_vec3_u32(~u_input.d.zwx, vec3<u32>(_wgslsmith_div_u32(u_input.b, var_1.c.c.x), abs(33089u), var_2.x))));
    let var_4 = _wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.d) - var_1.c.d)), 1246f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.a.x, var_1.c.a.x))))), 672f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~abs(var_0.b.x), _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(var_0.b.x, var_0.b.x))) & var_0.b.xy, 28706u, ~(~var_1.c.c.x & var_0.c.x));
}

