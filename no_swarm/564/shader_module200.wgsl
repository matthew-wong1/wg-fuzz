struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<i32> {
    var var_0 = vec2<i32>(-1i, _wgslsmith_mod_i32(reverseBits(i32(-1i) * -1i), u_input.d)) >> ((~(~vec2<u32>(u_input.a.x, 79915u)) << (u_input.a.yx % vec2<u32>(32u))) % vec2<u32>(32u));
    var_0 = u_input.c;
    var var_1 = _wgslsmith_clamp_vec4_u32(u_input.a, ~u_input.a, vec4<u32>(~31873u, reverseBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, 0u), u_input.a.x >> (3384u % 32u))), 51806u, u_input.a.x));
    var var_2 = -376f;
    var var_3 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(~(~u_input.a.x), ~u_input.a.x | ~u_input.a.x, 1u), ~var_1.zyw, vec3<u32>(~var_1.x, _wgslsmith_div_u32(var_1.x ^ 11929u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.x, max(8067u, var_1.x)), min(vec2<u32>(68634u, 1u), var_1.yw))));
    return firstLeadingBit(~vec3<i32>(~(u_input.b.x >> (59931u % 32u)), firstTrailingBit(1i) & max(2147483647i, u_input.b.x), var_0.x));
}

fn func_4(arg_0: vec3<i32>) -> u32 {
    var var_0 = vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a.xyy, u_input.a.yzz), 4294967295u);
    var_0 = ~abs(abs(~vec3<u32>(var_0.x, 4294967295u, var_0.x)));
    let var_1 = all(vec2<bool>(!(814u == _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), any(vec4<bool>(true, true, true, false)) == false));
    var var_2 = Struct_2(Struct_1(max(var_0.zy, _wgslsmith_div_vec2_u32(select(u_input.a.wy, var_0.yx, true), abs(u_input.a.zz)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-659f, -1555f, -813f) + vec3<f32>(1377f, -552f, 852f)))))) - vec3<f32>(1f, 1f, 1f)));
    let var_3 = Struct_2(Struct_1(var_0.zx), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, 141f, _wgslsmith_f_op_f32(round(var_2.b.x))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1919f, var_2.b.x, var_2.b.x)))), _wgslsmith_div_vec3_f32(var_2.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-891f, 1303f, 1400f) + vec3<f32>(var_2.b.x, -1600f, var_2.b.x)))))));
    return _wgslsmith_mult_u32(_wgslsmith_add_u32(var_2.a.a.x, countOneBits(_wgslsmith_add_u32(~var_2.a.a.x, ~var_3.a.a.x))), ~abs(~10271u));
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = u_input.a.ww;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-957f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(353f, -814f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-834f, 398f)) - _wgslsmith_f_op_f32(f32(-1f) * -240f))));
    var_1 = -1355f;
    let var_2 = ~(~abs(_wgslsmith_mult_u32(~108930u, ~var_0.x)));
    var var_3 = Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.a.xww, ~(u_input.a.yzx << (vec3<u32>(4294967295u, var_0.x, var_0.x) % vec3<u32>(32u)))), func_4(func_3())));
    return 2147483647i;
}

fn func_1(arg_0: vec2<i32>) -> vec2<u32> {
    var var_0 = arg_0.x ^ countOneBits(~func_2(true));
    let var_1 = Struct_3(~countOneBits(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x))), Struct_1(~select(vec2<u32>(1u, 0u), ~u_input.a.xz, select(false, true, true))), ~(-vec3<i32>(u_input.d, -2147483647i, 19223i) >> (abs(firstTrailingBit(u_input.a.yyw)) % vec3<u32>(32u))));
    var_0 = arg_0.x;
    var_0 = 1i;
    var_0 = ~(-min(var_1.c.x, -24850i));
    return reverseBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.wz, var_1.a), min(u_input.a.xw, vec2<u32>(28934u, u_input.a.x)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(783f, 1f, 187f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-204f, _wgslsmith_f_op_f32(f32(-1f) * -1369f), _wgslsmith_f_op_f32(step(1163f, 491f))))));
    let var_1 = var_0;
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f) - _wgslsmith_f_op_f32(round(-332f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(sign(-1055f)), true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-404f - -351f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(164f + 193f)))), _wgslsmith_f_op_f32(864f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1019f, -990f, true))))));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(func_5(firstTrailingBit(-vec2<i32>(u_input.c.x, u_input.d)), Struct_1(func_1(u_input.b.wx)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(111f, -1097f)))), 924f)));
    let var_1 = !(!(!all(vec3<bool>(true, true, true))));
    let var_2 = ~4294967295u;
    var var_3 = Struct_3(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), u_input.a.ww), Struct_1(~firstTrailingBit(~u_input.a.xy)), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(2147483647i, u_input.d), u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(21716i, 0i))), _wgslsmith_sub_vec3_i32(u_input.b.xyx >> (u_input.a.zwy % vec3<u32>(32u)), -vec3<i32>(2147483647i, u_input.b.x, u_input.c.x))), select(~u_input.b.yxw, firstTrailingBit(firstTrailingBit(u_input.b.wyz)), !(!var_1))));
    var var_4 = select(!select(vec4<bool>(var_0.x < var_0.x, var_3.c.x > var_3.c.x, true, !var_1), select(!vec4<bool>(var_1, var_1, false, false), vec4<bool>(var_1, false, true, var_1), select(vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(false, var_1, var_1, true), vec4<bool>(false, var_1, var_1, false))), select(select(vec4<bool>(false, true, var_1, var_1), vec4<bool>(var_1, false, false, var_1), var_1), !vec4<bool>(var_1, false, var_1, false), !vec4<bool>(var_1, var_1, var_1, true))), vec4<bool>(false, var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(304f + 572f) - var_0.x) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x)), var_1), false);
    let var_5 = vec3<bool>(var_4.x, var_4.x && false, !(var_4.x != (all(var_4.ww) || true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2 & select(3388u, var_3.a.x, !all(vec3<bool>(true, true, false))), -1i, ~vec4<u32>(66351u, 0u, _wgslsmith_div_u32(1u, var_2), ~0u));
}

