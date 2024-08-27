struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(select(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(-19217i, -43641i), vec2<i32>(-21537i, u_input.a.x))), vec2<i32>(-1i, -27170i)), max(abs(u_input.a.zz), _wgslsmith_div_vec2_i32(u_input.a.zz, u_input.a.yz)) & vec2<i32>(-4606i << (1u % 32u), _wgslsmith_clamp_i32(u_input.b, u_input.b, 42434i)), false), Struct_1(71790u, vec4<i32>(-1i, u_input.b, max(-29758i, u_input.b) | u_input.b, reverseBits(-2147483647i))), Struct_1(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(46390u, u_input.c)), vec2<u32>(~11214u, firstLeadingBit(1u))), u_input.a), _wgslsmith_add_i32(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(1i), -1157i, u_input.a.x), u_input.a.xxy)), false);
    var_0 = Struct_2(_wgslsmith_clamp_vec2_i32(u_input.a.wx, -_wgslsmith_add_vec2_i32(vec2<i32>(30784i, u_input.b), -vec2<i32>(49714i, -22865i)), -vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_0.d, u_input.a.x, 2147483647i), var_0.c.b))), var_0.b, Struct_1(u_input.c, u_input.a), i32(-1i) * -61499i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(min(vec3<i32>(var_0.a.x, u_input.b, 1i), var_0.b.b.zyw), ~vec3<i32>(37114i, 0i, var_0.c.b.x)), ~(-vec3<i32>(u_input.a.x, u_input.a.x, var_0.d))) >= (var_0.d >> (select(~52303u, 39375u, any(vec2<bool>(var_0.e, true))) % 32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(914f + 1000f)))))));
    var_0 = Struct_2(vec2<i32>(i32(-1i) * -(var_0.c.b.x & 1i), -_wgslsmith_div_i32(_wgslsmith_add_i32(var_0.a.x, u_input.b), ~var_0.d)), var_0.b, Struct_1(~firstLeadingBit(1u), u_input.a), u_input.a.x & u_input.b, !var_0.e);
    var var_2 = Struct_3(var_0.e, _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(step(752f, 1114f))), var_0.b.b.x != var_0.a.x, select(vec4<bool>(true, var_0.e, true, false), vec4<bool>(any(vec2<bool>(var_0.e, false)), true, var_0.e, false), false));
    return select(min(28673i, -(i32(-1i) * -52186i)), -1i, any(!select(select(vec4<bool>(true, var_2.d.x, true, false), vec4<bool>(var_2.c, var_2.c, var_0.e, true), var_0.e), select(vec4<bool>(true, var_2.a, var_0.e, var_0.e), var_2.d, vec4<bool>(true, var_0.e, false, var_2.d.x)), vec4<bool>(var_2.a, var_0.e, true, var_2.c))));
}

fn func_2() -> Struct_1 {
    var var_0 = reverseBits(32251u);
    let var_1 = Struct_2(~(~(u_input.a.yx >> ((vec2<u32>(u_input.c, 8789u) << (vec2<u32>(35288u, 49939u) % vec2<u32>(32u))) % vec2<u32>(32u)))), Struct_1(u_input.c, vec4<i32>(firstLeadingBit(-2147483647i << (u_input.c % 32u)), func_3(), _wgslsmith_div_i32(-9495i, u_input.b), 0i)), Struct_1(_wgslsmith_clamp_u32(~1396u, _wgslsmith_sub_u32(u_input.c, u_input.c), 4294967295u) >> (max(abs(u_input.c), 0u) % 32u), _wgslsmith_mod_vec4_i32(firstLeadingBit(u_input.a), u_input.a)), u_input.b & ~0i, any(vec2<bool>(all(vec3<bool>(false, false, true)), true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(110f, -1238f, -765f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(348f, -161f, 2329f, -1586f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1210f, -1000f, -578f, -249f), vec4<f32>(1367f, -315f, -541f, 1438f))), vec4<f32>(-568f, 1073f, -462f, -593f)))) - vec4<f32>(-1616f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(733f - 244f))), _wgslsmith_f_op_f32(-635f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-802f, 1251f)))));
    var var_3 = u_input.a.wxy;
    var_0 = ~21074u;
    return Struct_1(countOneBits(_wgslsmith_div_u32(94895u, (u_input.c | 1u) & _wgslsmith_clamp_u32(0u, 4294967295u, 38090u))), u_input.a);
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_1(~u_input.c, ~vec4<i32>(arg_0.x, 2147483647i, max(u_input.b ^ arg_0.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), i32(-1i) * -58377i));
    let var_1 = func_2();
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~select(abs(select(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c), true)), vec3<u32>(~0u, 108563u, u_input.c), vec3<bool>(true, true, true)), vec3<u32>(~max(u_input.c << (u_input.c % 32u), 46665u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c, 21272u), _wgslsmith_div_u32(firstLeadingBit(u_input.c), func_1(u_input.a.yzx))), u_input.c), true);
    let var_1 = Struct_2(u_input.a.yx >> (~var_0.zy % vec2<u32>(32u)), func_2(), func_2(), 0i, any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, false), false)));
    var var_2 = abs(func_2().b.xxy);
    let var_3 = Struct_2(vec2<i32>(-17033i, abs(-17002i)), Struct_1(firstLeadingBit(~u_input.c), -u_input.a), Struct_1(4294967295u, var_1.c.b), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, reverseBits(_wgslsmith_mod_i32(2147483647i, 2786i)), -abs(u_input.b), u_input.a.x), u_input.a), _wgslsmith_div_f32(-109f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1389f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -674f) * 1f));
    var_2 = -var_3.b.b.xzy;
    var var_4 = max(firstTrailingBit(var_3.c.b.xwx), vec3<i32>(_wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec3_i32(u_input.a.wxw, var_3.b.b.wxz)) >> (21644u % 32u), ~(reverseBits(u_input.a.x) & u_input.b), _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_2.x, var_1.b.b.x, var_2.x), vec3<i32>(25513i, u_input.a.x, -12039i), var_1.e & true), vec3<i32>(i32(-1i) * -62431i, var_3.c.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -7834i, 0i, -49652i), u_input.a)))));
    var_2 = -vec3<i32>(var_4.x, 31660i, _wgslsmith_mult_i32(2147483647i, _wgslsmith_mult_i32(var_2.x ^ var_3.d, i32(-1i) * -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-410f - 1f))) + _wgslsmith_f_op_f32(f32(-1f) * -1493f)));
}

