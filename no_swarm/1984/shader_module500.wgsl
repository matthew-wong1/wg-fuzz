struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-729f + 334f), _wgslsmith_f_op_f32(f32(-1f) * -1411f), _wgslsmith_f_op_f32(775f + 520f), _wgslsmith_f_op_f32(step(570f, -774f)))), vec4<bool>(true, true, all(vec4<bool>(false, true, true, true)), all(vec2<bool>(true, true))), min(u_input.a, -2147483647i) ^ reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<i32>(-79235i, 1i, u_input.a)))));
    var var_1 = var_0.a.c;
    let var_2 = var_0.a.b.x;
    var var_3 = Struct_3(!vec3<bool>(select(var_0.a.b.x || true, any(vec3<bool>(var_2, true, false)), var_2 && var_0.a.b.x), true, true), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x))))), select(!var_0.a.b, vec4<bool>(true, false, var_0.a.b.x, var_2), var_0.a.b), -2147483647i), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1378f, 356f, -396f, var_0.a.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(-158f, var_0.a.a.x, var_0.a.a.x, 1572f), vec4<f32>(444f, 261f, var_0.a.a.x, var_0.a.a.x)))), vec4<bool>(!var_0.a.b.x, !var_0.a.b.x, false & var_2, false), u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.a.yxw * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec3<f32>(1355f, var_0.a.a.x, -133f))))), var_0.a.a.x);
    var_3 = Struct_3(select(!var_0.a.b.xwz, var_0.a.b.yzz, var_3.b.a.b.wzw), var_3.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2044f, 1076f, _wgslsmith_f_op_f32(f32(-1f) * -520f))), _wgslsmith_f_op_f32(-var_3.b.b.a.x));
    return ~1u;
}

fn func_2() -> vec4<bool> {
    var var_0 = 6703i;
    var_0 = 34529i;
    var_0 = abs(abs(2879i & -u_input.a));
    let var_1 = ~vec2<u32>(select(firstTrailingBit(4294967295u), 1u, true), (0u >> (_wgslsmith_add_u32(1u, 1u) % 32u)) & _wgslsmith_clamp_u32(12503u, ~4294967295u, func_3()));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1345f, -366f, -105f), vec4<f32>(1235f, -1000f, -140f, 1393f))))))))), vec4<bool>(false, true, var_1.x <= firstLeadingBit(1u), true), 0i);
    return select(vec4<bool>(var_2.b.x, !(!var_2.b.x), 19087u >= var_1.x, all(vec2<bool>(var_2.b.x, true)) & ((var_2.c >> (21485u % 32u)) < ~(-2147483647i))), var_2.b, select(var_2.b, vec4<bool>(any(select(var_2.b.yxy, var_2.b.yxz, vec3<bool>(false, var_2.b.x, true))), any(vec3<bool>(false, true, true)), true, var_1.x >= 39292u), var_2.b));
}

fn func_1() -> vec4<bool> {
    var var_0 = -(vec4<i32>(firstTrailingBit(-1i), u_input.b.x, firstTrailingBit(u_input.b.x), u_input.a) & vec4<i32>(u_input.a, u_input.b.x, ~u_input.a, u_input.a)) | vec4<i32>(0i, 7970i, u_input.b.x | _wgslsmith_mult_i32(0i, u_input.b.x), _wgslsmith_mod_i32(countOneBits(~u_input.a), i32(-1i) * -u_input.a));
    var var_1 = select(!(!func_2()), select(vec4<bool>(true, true, true, true || any(vec2<bool>(true, false))), func_2(), !vec4<bool>(true, all(vec3<bool>(true, false, true)), true, true)), ~(~0u & select(24179u, 58711u, true)) < 106922u);
    var_1 = func_2();
    let var_2 = Struct_3(vec3<bool>(true, _wgslsmith_f_op_f32(trunc(-143f)) < _wgslsmith_f_op_f32(-1f), true), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-394f, 1000f, -302f, -666f), vec4<f32>(-1251f, 320f, -1180f, 144f), true)))), vec4<bool>(var_1.x, true, var_0.x < u_input.b.x, u_input.a != -21423i), ~(-12477i)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1061f, -1087f, -1000f, 1742f) - vec4<f32>(172f, 778f, 1000f, -246f))), vec4<bool>(var_1.x, false, true, func_2().x), max(~var_0.x, -3155i))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1110f, -335f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, 1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f))), -675f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(274f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.b.x > abs(-67133i)))));
    var var_3 = Struct_4(var_2.b.b);
    return !(!select(!var_2.b.b.b, select(vec4<bool>(false, var_3.a.b.x, var_1.x, var_1.x), func_2(), false), var_3.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(func_1());
    let var_1 = true;
    var var_2 = (all(!vec4<bool>(var_1, var_1, var_1, var_1)) || true) || select(any(!vec4<bool>(true, var_1, var_1, var_1)), false, var_1);
    var_0 = all(!vec3<bool>(var_1, var_1, var_1)) || true;
    var_2 = any(vec2<bool>(false, true));
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-146f, 1253f, -817f, 1722f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2107f, -290f, -2214f, 626f) * vec4<f32>(1238f, 239f, -1120f, -1717f)), !var_1)))), select(vec4<bool>(var_1, var_1, select(var_1, var_1, var_1), func_2().x), vec4<bool>(false, !var_1, true, var_1), true), u_input.b.x));
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.a.x, 584f, 1063f, var_3.a.a.x) - var_3.a.a)))), var_3.a.b, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_3.a.c, var_3.a.c, u_input.b.x) & vec3<i32>(-1i, -41002i, 4768i)), select(~vec3<i32>(var_3.a.c, -19593i, -1i), vec3<i32>(-2147483647i, u_input.a, -1i), func_2().xwz))), var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(func_3());
}

