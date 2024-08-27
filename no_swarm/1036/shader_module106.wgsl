struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = !(!select(vec3<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(true, true, false)), false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)));
    let var_1 = Struct_2(vec4<bool>(any(!var_0.yy), var_0.x, var_0.x, true | (true || all(vec3<bool>(true, false, true)))), Struct_1(!var_0.x, abs(vec3<i32>(1i, -1i, select(1i, -2147483647i, true))), arg_0, select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, true), var_0.x), select(!vec4<bool>(false, true, var_0.x, true), !vec4<bool>(false, false, var_0.x, true), true)), ~max(abs(1i), firstTrailingBit(-35889i))), Struct_1(true & (var_0.x | (0u <= arg_0.x)), vec3<i32>(_wgslsmith_mult_i32(abs(16685i), firstTrailingBit(-1i)), ~13081i, -abs(-23114i)), firstTrailingBit(arg_0), select(vec4<bool>(false, arg_0.x <= 1u, false & var_0.x, true), select(select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(true, true, var_0.x, var_0.x), var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, false, false, var_0.x), true)), vec4<bool>(false, select(var_0.x, var_0.x, false), true, var_0.x)), ~min(firstLeadingBit(50461i), ~1i)), reverseBits(_wgslsmith_dot_vec3_u32(arg_0.zzy, ~arg_0.yxx)));
    let var_2 = var_1;
    let var_3 = firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, 0i, var_1.b.b.x, var_2.c.e), vec4<i32>(var_1.c.b.x, 9629i, var_1.c.b.x, -2147483647i) >> (var_2.b.c % vec4<u32>(32u))), vec4<i32>(~(-2147483647i), select(-21370i, var_1.b.b.x, var_0.x), i32(-1i) * -32847i, -1i)), -2147483647i));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2267f + 1514f), _wgslsmith_f_op_f32(790f - 1684f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(331f, 1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(353f * _wgslsmith_f_op_f32(round(-913f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1214f * 139f) - _wgslsmith_f_op_f32(f32(-1f) * -2001f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -822f))))), 573f);
    return _wgslsmith_div_f32(-625f, var_4.x);
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(~vec4<u32>(u_input.a.x, 14252u, 4294967295u, u_input.b)))))));
    var var_1 = -(~firstLeadingBit(firstTrailingBit(max(2147483647i, 0i))));
    let var_2 = Struct_2(!vec4<bool>(true, (i32(-1i) * -1746i) <= firstTrailingBit(-16220i), true, true), Struct_1(all(vec3<bool>(true, var_0 != var_0, any(vec2<bool>(false, true)))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-1i, 31188i), 1i, 32878i), select(vec3<i32>(-856i, -13279i, 12632i) << (vec3<u32>(u_input.a.x, 4294967295u, 6933u) % vec3<u32>(32u)), vec3<i32>(-1i, 36326i, -1i), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 0u, firstLeadingBit(u_input.b))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, 1i), ~1i, -_wgslsmith_mult_i32(10509i, 0i))), Struct_1(true, vec3<i32>(reverseBits(0i), _wgslsmith_sub_i32(-2147483647i, -15407i), 0i) | vec3<i32>(1i, select(-1i, -2147483647i, true), countOneBits(-1667i)), vec4<u32>(u_input.a.x, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(28618u, 0u, u_input.b), vec3<u32>(4294967295u, 1u, 1u)), countOneBits(0u)) >> (vec4<u32>(1u, _wgslsmith_mod_u32(u_input.a.x, 0u), ~4294967295u, 0u) % vec4<u32>(32u)), vec4<bool>(!any(vec4<bool>(false, false, true, false)), !any(vec3<bool>(false, false, true)), false, true), 1i), _wgslsmith_mult_u32(u_input.b, ~u_input.b));
    var var_3 = var_2.c.d;
    var var_4 = var_2.c.d.ww;
    return select(select(var_2.b.d.yy, var_3.wx, !any(!var_2.b.d.zyz)), var_3.yw, !select(var_2.c.d.yy, var_2.a.zy, var_2.b.d.wy));
}

fn func_1() -> f32 {
    var var_0 = true;
    var var_1 = !func_2();
    let var_2 = ~u_input.a;
    let var_3 = vec2<i32>(_wgslsmith_mult_i32(-26531i, ~1i), ~(~(~33052i)) << (0u % 32u));
    var var_4 = 21010u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(322f)) - -655f))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(226f, 1037f))), -450f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_1())) < -1232f, true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f) - _wgslsmith_f_op_f32(-2225f - 1082f)))) > 455f);
    let var_1 = vec4<f32>(1682f, 1944f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-258f)))))) + 1655f), -1044f);
    var var_2 = min(max(~(52774i << (firstLeadingBit(u_input.b) % 32u)), -1i), ~select(-firstTrailingBit(-19844i), 2147483647i, 4294967295u < select(u_input.a.x, u_input.b, false)));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.wxz))));
    var var_4 = Struct_1(!(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1260f - var_3.x))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1185f + -112f))), (vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i)) ^ (_wgslsmith_div_vec3_i32(-vec3<i32>(43301i, -1i, 55348i), -vec3<i32>(-3831i, 1i, 1i)) << (vec3<u32>(~u_input.b, u_input.a.x, u_input.a.x & 0u) % vec3<u32>(32u))), vec4<u32>(u_input.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a, countOneBits(u_input.a)), _wgslsmith_add_u32(~u_input.a.x, 36584u << (1u % 32u))), 71752u, u_input.a.x), vec4<bool>(false, true, false, true), _wgslsmith_dot_vec2_i32(vec2<i32>(-60567i, _wgslsmith_div_i32(i32(-1i) * -2147483647i, -7592i)), _wgslsmith_sub_vec2_i32(-(~vec2<i32>(1784i, 10346i)), vec2<i32>(1i, 1i))));
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-877f, -1000f, var_1.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-315f, var_3.x, var_3.x))) - var_1.zzz))));
    let var_6 = vec4<bool>(func_2().x, any(select(var_4.d, vec4<bool>(true, var_4.d.x, var_4.d.x, false), var_4.d)) || true, var_4.a || (!(var_4.a || false) | all(select(var_4.d.xx, vec2<bool>(true, var_4.a), true))), var_4.d.x);
    var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.zzz + _wgslsmith_f_op_vec3_f32(round(var_1.yxz))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-235f * _wgslsmith_f_op_f32(trunc(573f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1518f)) - 471f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))))), vec3<bool>(!(true || !var_4.d.x), any(var_4.d.zx), !(!(!var_6.x)))));
    var var_7 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(1u, select(vec4<i32>(var_4.e, ~firstLeadingBit(70144i), 29555i, var_4.e & var_4.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -2147483647i, 21897i, 21188i) << (var_4.c % vec4<u32>(32u)), vec4<i32>(1i, select(-2147483647i, -1i, false), _wgslsmith_dot_vec2_i32(var_4.b.yz, var_4.b.yx), 47058i)), !(var_5.x != _wgslsmith_f_op_f32(-var_1.x))));
}

