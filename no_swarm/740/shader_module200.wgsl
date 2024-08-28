struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = abs(~(~vec4<i32>(~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, arg_0, 2147483647i), vec3<i32>(arg_0, 22491i, u_input.b)), ~u_input.b, ~u_input.b)));
    var_0 = vec4<i32>(_wgslsmith_mult_i32(arg_0, arg_0), 1i | var_0.x, var_0.x, ~(-2147483647i) | -_wgslsmith_clamp_i32(30947i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -7622i, -2147483647i, var_0.x), vec4<i32>(u_input.b, var_0.x, arg_0, -7904i)), arg_0));
    var var_1 = arg_1;
    let var_2 = Struct_2(Struct_1(select(!(!var_1.c.zx), !(!vec2<bool>(var_1.a.x, false)), all(arg_1.c.yz)), 1877f, vec3<bool>(u_input.a <= u_input.a, !arg_1.c.x, arg_1.c.x)), var_1.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.b, arg_1.b)), -164f, -1363f, _wgslsmith_f_op_f32(f32(-1f) * -887f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-989f, 1237f, -400f, -130f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, 696f, var_1.b) * vec4<f32>(var_1.b, 793f, -847f, arg_1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, arg_1.b, -462f) + vec4<f32>(arg_1.b, arg_1.b, 366f, arg_1.b)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.b, 1131f, 1033f, 1947f), vec4<f32>(1314f, -1612f, -115f, var_1.b)))), all(vec4<bool>(arg_2, false, arg_2, true))))), Struct_1(!vec2<bool>(!var_1.c.x, false), -1143f, !select(select(vec3<bool>(false, true, arg_2), var_1.c, arg_2), vec3<bool>(arg_2, true, var_1.a.x), all(vec3<bool>(var_1.c.x, false, arg_1.c.x)))));
    var_0 = vec4<i32>(firstTrailingBit(min(~var_0.x, _wgslsmith_clamp_i32(-63840i, 41826i, arg_0))), countOneBits(31374i), -66060i, ~(i32(-1i) * -30111i)) << (~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 73553u) ^ vec4<u32>(0u, 0u, 4294967295u, 44837u), ~(vec4<u32>(0u, 33519u, 1u, 6423u) | vec4<u32>(u_input.a, 4294967295u, 24812u, 4294967295u))) % vec4<u32>(32u));
    return 1555f;
}

fn func_2(arg_0: i32, arg_1: u32) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(vec2<bool>(true, true), -141f, vec3<bool>(true, true | (u_input.b >= u_input.b), true)), 139f, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-168f, -1656f, -305f, -859f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-632f, -2429f, -1796f, -1000f) + _wgslsmith_div_vec4_f32(vec4<f32>(323f, -184f, 1000f, -615f), vec4<f32>(-623f, 784f, -1222f, -124f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-226f + -342f), _wgslsmith_f_op_f32(select(-484f, -946f, true)), -1655f, _wgslsmith_f_op_f32(step(797f, -725f))))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(u_input.b, Struct_1(vec2<bool>(true, true), 134f, vec3<bool>(false, false, true)), true)))))), select(vec3<bool>(true, any(vec4<bool>(true, false, true, true)), true), vec3<bool>(true, true, true), true)));
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = u_input.b;
    var_1 = var_0;
    return select(select(select(vec4<bool>(all(var_1.a.c), var_0.d.a.x, false, all(vec3<bool>(var_1.d.c.x, true, var_0.a.a.x))), !vec4<bool>(true, true, var_0.a.c.x, var_1.a.c.x), !vec4<bool>(var_0.a.c.x, var_1.a.c.x, false, false)), vec4<bool>(false, var_0.c.x > _wgslsmith_f_op_f32(sign(1269f)), true, true), true), select(!select(vec4<bool>(var_1.a.a.x, var_0.d.c.x, false, var_0.d.a.x), !vec4<bool>(false, var_1.d.a.x, var_0.a.c.x, false), vec4<bool>(var_1.a.c.x, true, var_1.a.a.x, false)), select(select(vec4<bool>(var_1.a.a.x, var_0.a.c.x, var_1.a.c.x, var_1.d.a.x), !vec4<bool>(true, var_1.d.a.x, false, var_0.a.c.x), u_input.a >= 1u), select(select(vec4<bool>(false, true, false, false), vec4<bool>(var_0.a.a.x, false, var_1.a.a.x, true), var_0.d.c.x), vec4<bool>(var_1.a.c.x, false, true, false), vec4<bool>(var_0.d.c.x, false, var_1.d.c.x, true)), !select(vec4<bool>(true, var_0.a.a.x, var_1.a.c.x, true), vec4<bool>(true, var_1.a.c.x, false, var_0.a.a.x), vec4<bool>(false, true, var_0.a.c.x, var_0.a.c.x))), select(all(select(var_1.d.c, var_1.d.c, var_0.d.c.x)), all(vec4<bool>(var_0.d.a.x, true, var_1.a.a.x, var_1.a.c.x)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b)) + _wgslsmith_f_op_f32(f32(-1f) * -1091f)) >= _wgslsmith_f_op_f32(trunc(var_1.a.b)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec4<u32>, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-383f, _wgslsmith_f_op_f32(ceil(-179f)), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(arg_3 - 766f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, arg_3, arg_3) * vec4<f32>(var_0.x, -819f, -1057f, var_0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 457f, arg_3, -1000f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(674f, arg_3, arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_div_f32(var_0.x, 103f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_3 + arg_3), var_0.x, _wgslsmith_f_op_f32(var_0.x + -1000f), _wgslsmith_f_op_f32(var_0.x + 126f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_3, arg_3, arg_3)))))));
    let var_1 = -443f;
    let var_2 = select(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(-1i, u_input.b, -2147483647i, u_input.b)) | ~vec4<i32>(1i, -64111i, 0i, 1i), abs(-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), -_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.b, u_input.b, 15981i, -27778i), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 0i, 0i, u_input.b), vec4<i32>(-1i, u_input.b, 7521i, u_input.b)), func_2(10091i, u_input.a)), min(countOneBits(vec4<i32>(u_input.b, 61787i, u_input.b, 2147483647i)), vec4<i32>(u_input.b, u_input.b, u_input.b, -35053i) ^ vec4<i32>(1i, u_input.b, 0i, u_input.b))), !arg_0);
    return Struct_2(Struct_1(vec2<bool>(true, false), var_1, vec3<bool>(arg_0, true, arg_0)), -1037f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -998f, -290f, var_1))), Struct_1(select(!(!vec2<bool>(false, arg_0)), !vec2<bool>(true, arg_0), !vec2<bool>(arg_0, arg_0)), _wgslsmith_f_op_f32(sign(-1844f)), select(func_2(var_2.x, 69788u).xxy, vec3<bool>(false, true, arg_0), arg_0)));
}

fn func_1(arg_0: vec3<u32>) -> vec4<f32> {
    var var_0 = 2147483647i;
    let var_1 = vec3<i32>(0i, u_input.b, -2147483647i);
    var var_2 = true;
    var_0 = 0i;
    var var_3 = func_4(all(vec2<bool>(true, true)), ~1529u, select(vec4<u32>(u_input.a, abs(_wgslsmith_clamp_u32(4294967295u, u_input.a, 0u)), _wgslsmith_div_u32(arg_0.x, ~1u), _wgslsmith_sub_u32(max(u_input.a, 1u), 36757u >> (arg_0.x % 32u))), vec4<u32>(~arg_0.x, arg_0.x, 1u, ~(~1u)), func_2(var_1.x, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-717f, -300f) - _wgslsmith_f_op_f32(floor(-567f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1416f + 722f), _wgslsmith_f_op_f32(max(1382f, 2925f))))))));
    return _wgslsmith_f_op_vec4_f32(var_3.c + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_3.c)) + _wgslsmith_f_op_vec4_f32(var_3.c + _wgslsmith_f_op_vec4_f32(vec4<f32>(1145f, var_3.c.x, 632f, var_3.b) + var_3.c))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-798f, 759f, var_3.a.b, 1198f)))), var_3.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-861f - -488f) * _wgslsmith_f_op_f32(-601f - 1582f))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), -604f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2009f, 2459f, 399f, -1367f))) - vec4<f32>(-644f, -636f, 1317f, -1461f)) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-590f)), -1031f, 1574f, _wgslsmith_f_op_f32(f32(-1f) * -1103f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(134f, -1348f, -763f, 1033f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 401f, -907f, 361f))) * _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)))))), func_4(true, reverseBits(u_input.a ^ abs(u_input.a)), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u)), firstTrailingBit(vec4<u32>(48929u, 3658u, u_input.a, u_input.a))) & ~(vec4<u32>(u_input.a, 4528u, 1u, u_input.a) | vec4<u32>(15887u, 12876u, u_input.a, u_input.a)), _wgslsmith_f_op_f32(func_3((i32(-1i) * -32214i) >> (u_input.a % 32u), Struct_1(vec2<bool>(false, false), -984f, vec3<bool>(true, true, false)), true))).a);
    var var_1 = func_4(true, 1u, ~firstTrailingBit(firstTrailingBit(vec4<u32>(61420u, u_input.a, u_input.a, u_input.a))) << (vec4<u32>(_wgslsmith_div_u32(0u, u_input.a), ~firstLeadingBit(u_input.a), ~select(4294967295u, u_input.a, var_0.a.c.x), _wgslsmith_mod_u32(41357u, _wgslsmith_mult_u32(u_input.a, 18484u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(abs(func_4(func_2(2147483647i, _wgslsmith_div_u32(u_input.a, u_input.a)).x, 1u, vec4<u32>(1u, max(14838u, 1u), _wgslsmith_mult_u32(0u, 1u), u_input.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1788f - var_0.d.b)))).c.x))).a;
    var_0 = Struct_2(func_4(any(!vec4<bool>(false, false, var_1.c.x, var_1.a.x)), u_input.a, ~(~select(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 12155u, u_input.a), vec4<bool>(var_0.a.a.x, true, var_1.c.x, false))), _wgslsmith_f_op_f32(-var_1.b)).d, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.c.x, var_1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-788f, var_1.b, var_1.b, var_1.b), var_0.c) * vec4<f32>(1685f, var_0.d.b, var_0.b, -173f))) - vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b))), _wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(721f * -462f)))), Struct_1(vec2<bool>(!(!var_0.d.c.x), var_1.c.x), var_1.b, vec3<bool>(select(u_input.a < u_input.a, func_4(var_1.a.x, 50676u, vec4<u32>(54552u, 0u, u_input.a, u_input.a), var_1.b).a.c.x, true), !all(var_1.c), any(var_0.a.c.zy))));
    var var_2 = func_4(all(!(!vec2<bool>(true, var_1.c.x))), ~select(u_input.a, ~u_input.a, true), ~_wgslsmith_mod_vec4_u32(vec4<u32>(select(u_input.a, u_input.a, false), ~45496u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(65081u, u_input.a), vec2<u32>(92843u, 92975u))), countOneBits(vec4<u32>(4461u, u_input.a, 51100u, u_input.a) & vec4<u32>(u_input.a, 0u, 59839u, u_input.a))), -2134f).a;
    var_2 = func_4(true, ~4294967295u & _wgslsmith_div_u32(~u_input.a, ~0u), ~vec4<u32>(u_input.a, u_input.a, ~max(68260u, u_input.a), 6525u), -1142f).a;
    let var_3 = (max(abs(-28275i), firstLeadingBit(~u_input.b)) & ~(-27699i)) & ~(~u_input.b);
    var var_4 = -vec4<i32>(firstTrailingBit(reverseBits(u_input.b)), -_wgslsmith_dot_vec4_i32(vec4<i32>(14634i, u_input.b, u_input.b, -3910i) >> (vec4<u32>(0u, u_input.a, u_input.a, 49768u) % vec4<u32>(32u)), ~vec4<i32>(u_input.b, var_3, u_input.b, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), min(vec2<i32>(-173i, u_input.b), vec2<i32>(var_3, var_3))), -20767i);
    var_1 = func_4(_wgslsmith_clamp_i32(var_4.x, _wgslsmith_sub_i32(min(var_4.x, var_4.x), var_3 ^ -18290i), -11074i) > var_4.x, ~u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, ~(1u ^ u_input.a), _wgslsmith_mult_u32(u_input.a, firstLeadingBit(u_input.a)), 75956u), countOneBits(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))), -805f).a;
    var var_5 = 8398u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

