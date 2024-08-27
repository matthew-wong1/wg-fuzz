struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<bool>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(-_wgslsmith_sub_vec4_i32(-vec4<i32>(-5022i, u_input.b, u_input.a, -13657i), vec4<i32>(6954i, 22207i, u_input.b, 0i) >> (vec4<u32>(0u, u_input.c.x, u_input.d.x, 0u) % vec4<u32>(32u))), -min(-vec4<i32>(u_input.a, -3661i, u_input.b, -34547i), ~vec4<i32>(-37697i, -15467i, 2457i, -204i)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(2147483647i, u_input.b, 7093i, u_input.a)), vec4<i32>(0i, -805i, u_input.a, 22825i)), ~vec4<i32>(u_input.b, u_input.b, u_input.a, u_input.b))), _wgslsmith_mult_i32(u_input.a, -8628i), vec4<bool>(true, true, true, true), any(!vec3<bool>(true, any(vec2<bool>(false, false)), u_input.a == -34907i)), ~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, u_input.c.x, u_input.d.x), vec4<u32>(51522u, 0u, u_input.d.x, u_input.d.x)) & select(vec4<u32>(u_input.c.x, 1u, u_input.d.x, u_input.c.x), vec4<u32>(1u, 8779u, u_input.c.x, u_input.c.x), true)));
    let var_1 = _wgslsmith_f_op_f32(trunc(-877f));
    var var_2 = vec3<f32>(-1000f, var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * var_1));
    let var_3 = Struct_5(Struct_1(var_0.a, -2147483647i, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * 1000f)) < var_1, select(max(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.c.x), var_0.e), vec4<u32>(1u, _wgslsmith_div_u32(u_input.c.x, var_0.e.x), 63702u, 72916u), var_0.d)), ~min(_wgslsmith_sub_i32(_wgslsmith_sub_i32(17653i, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, u_input.a, 45634i), var_0.a.xzy)), select(-1i, var_0.b, true)));
    let var_4 = var_3.a;
    return -1000f;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: i32, arg_3: u32) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-870f * 985f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-308f + _wgslsmith_f_op_f32(round(477f))), _wgslsmith_f_op_f32(f32(-1f) * -778f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-105f * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(sign(-1143f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1279f * -171f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -472f), -608f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2169f)), _wgslsmith_f_op_f32(-743f - _wgslsmith_f_op_f32(543f * -2747f)))));
    return Struct_3(vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 246f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + _wgslsmith_f_op_f32(var_0.x - 795f)), all(select(vec3<bool>(true, false, arg_1.b.x), vec3<bool>(false, true, arg_1.b.x), vec3<bool>(true, false, false))) & true), (~arg_1.a << (1u % 32u)) ^ arg_2, vec2<i32>(43511i, arg_0.x), Struct_1(vec4<i32>(i32(-1i) * -26384i, u_input.a, -36322i, ~(-30007i)), -(~52198i) >> (u_input.d.x % 32u), vec4<bool>(select(u_input.d.x == 23654u, !arg_1.b.x, arg_1.b.x), !any(arg_1.b), all(select(vec3<bool>(true, true, arg_1.b.x), vec3<bool>(arg_1.b.x, true, false), arg_1.b.x)), all(vec2<bool>(true, true))), true, vec4<u32>(~max(4294967295u, arg_3), _wgslsmith_add_u32(~arg_3, min(u_input.d.x, arg_3)), ~21257u, u_input.c.x)));
}

fn func_1(arg_0: vec3<bool>) -> vec4<f32> {
    let var_0 = ~(~(~(~vec4<u32>(u_input.d.x, u_input.d.x, 1u, 50111u))));
    let var_1 = func_2(reverseBits(vec3<i32>(u_input.a, 15896i, _wgslsmith_sub_i32(u_input.a, 0i)) >> (firstLeadingBit(vec3<u32>(4294967295u, 0u, u_input.d.x)) % vec3<u32>(32u))), Struct_4(abs(~u_input.a), !select(select(arg_0.yx, arg_0.zy, true), select(vec2<bool>(false, arg_0.x), arg_0.yz, true), u_input.a != u_input.b)), 1i, ~(~firstLeadingBit(~u_input.d.x)));
    var var_2 = var_1.d.c;
    var_2 = !vec4<bool>(false, true, true, var_1.d.d);
    var var_3 = countOneBits(var_1.d.a.zw) | var_1.d.a.ww;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-292f, -1497f, 1000f, 313f), vec4<f32>(-1000f, -738f, 974f, 1000f), vec4<bool>(var_2.x, var_1.d.d, true, var_2.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1153f, 882f, -1492f, -670f) + vec4<f32>(146f, 448f, -825f, -457f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(min(697f, 110f))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(482f, 1446f)) * _wgslsmith_f_op_f32(f32(-1f) * -312f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(168f))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = select(!(!all(vec2<bool>(true, false)) & any(vec4<bool>(true, true, true, true))), false & (_wgslsmith_div_u32(~u_input.d.x, _wgslsmith_add_u32(u_input.d.x, 0u)) <= ~(u_input.c.x | u_input.d.x)), any(vec3<bool>(true, func_2(-vec3<i32>(u_input.b, u_input.a, 2894i), Struct_4(u_input.a, vec2<bool>(false, false)), countOneBits(u_input.a), u_input.c.x).a.x, true)));
    var var_1 = Struct_2(select(!select(func_2(vec3<i32>(-17647i, u_input.a, u_input.a), Struct_4(u_input.b, vec2<bool>(false, true)), -2147483647i, 11767u).d.c.wzy, vec3<bool>(true, false, true), any(vec4<bool>(false, true, false, false))), vec3<bool>(func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(3073i, 0i, -1i), vec3<i32>(2945i, -2147483647i, 0i), vec3<i32>(-2147483647i, u_input.b, 3092i)), Struct_4(4902i, vec2<bool>(true, true)), _wgslsmith_add_i32(u_input.a, -10575i), ~u_input.c.x).d.d, true, true), false), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(~(-24305i), u_input.a, -5131i, u_input.a), -vec4<i32>(-1i, u_input.b, -1i, -1i)), 14008i, !vec4<bool>(true, true, any(vec4<bool>(true, false, true, false)), true), arg_0.x <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_1.x)))), ~vec4<u32>(4294967295u, 34738u, _wgslsmith_add_u32(u_input.c.x, u_input.c.x), _wgslsmith_mult_u32(41432u, 1u))));
    var_0 = var_1.a.x;
    var var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(select(select(vec3<u32>(59491u, 1u, var_1.b.e.x), vec3<u32>(6550u, 37005u, u_input.d.x), var_1.a.x), u_input.d, var_1.a.x), _wgslsmith_sub_vec3_u32(max(u_input.c, u_input.d), var_1.b.e.wxw)), 9231u), min(_wgslsmith_mult_vec3_u32(~(~var_1.b.e.wzw), vec3<u32>(u_input.c.x, countOneBits(var_1.b.e.x), var_1.b.e.x & u_input.d.x)), ~var_1.b.e.xyx), u_input.d);
    var var_3 = var_1.b.c.yxw;
    return Struct_3(vec3<bool>(!any(!var_3.zx), all(var_1.b.c), all(vec3<bool>(any(var_1.a.yz), 54075u == var_2.x, var_1.a.x))), _wgslsmith_clamp_i32(var_1.b.a.x, 1285i, -u_input.b), vec2<i32>(u_input.b, 46305i), Struct_1(~_wgslsmith_clamp_vec4_i32(vec4<i32>(13979i, u_input.a, -1i, var_1.b.a.x), ~vec4<i32>(16271i, u_input.a, -59108i, u_input.b), var_1.b.a), ~var_1.b.b, !(!(!var_1.b.c)), func_2(vec3<i32>(64349i, min(u_input.a, u_input.b), u_input.a), Struct_4(abs(u_input.b), select(var_1.a.yx, var_3.xy, vec2<bool>(var_1.b.c.x, var_1.a.x))), 0i, ~(~var_2.x)).a.x, ~(var_1.b.e >> (~var_1.b.e % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(true, true, true)))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-577f)), _wgslsmith_f_op_f32(abs(835f)), 912f), vec3<f32>(_wgslsmith_div_f32(-1034f, -578f), _wgslsmith_f_op_f32(sign(725f)), _wgslsmith_f_op_f32(f32(-1f) * -351f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1797f)), -1288f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -963f)))));
    let var_1 = var_0.a;
    let var_2 = true;
    var var_3 = Struct_5(func_2(-var_0.d.a.yyy, Struct_4(abs(1i), !vec2<bool>(var_1.x, var_2)), 1i, var_0.d.e.x).d, 0i);
    let var_4 = Struct_5(var_3.a, i32(-1i) * -firstLeadingBit(firstLeadingBit(var_3.b)));
    var var_5 = Struct_2(!(!vec3<bool>(true, u_input.a > 7376i, var_2)), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(548f, 214f, 1104f, -221f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-835f, -773f, 670f, 486f)), false)) * vec4<f32>(_wgslsmith_f_op_f32(select(-1218f, 894f, var_4.a.d)), _wgslsmith_f_op_f32(select(2612f, -522f, var_3.a.d)), 723f, _wgslsmith_f_op_f32(max(-967f, -775f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(abs(1461f)), _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_vec4_f32(func_1(!vec3<bool>(var_3.a.c.x, false, var_3.a.c.x))).ywy)).d);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1062f) * 1085f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -443f) + _wgslsmith_f_op_f32(f32(-1f) * -581f))))));
}

