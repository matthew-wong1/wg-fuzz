struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: Struct_4,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_mod_vec2_i32(u_input.b, ~u_input.b) >> (abs(~(~(~vec2<u32>(u_input.c, 69748u)))) % vec2<u32>(32u));
    var var_1 = Struct_5(Struct_2(select(vec3<bool>(any(vec3<bool>(true, true, true)), true, false), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true), vec3<bool>(true, all(vec4<bool>(false, true, false, true)), 0i <= u_input.b.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 1i, _wgslsmith_add_i32(~arg_0, min(16594i, -51564i))), (_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, -2147483647i, arg_0), vec3<i32>(-1i, u_input.b.x, var_0.x)) | -vec3<i32>(arg_0, arg_0, -22557i)) << (vec3<u32>(~u_input.c, max(u_input.c, 17026u), _wgslsmith_sub_u32(u_input.c, 1u)) % vec3<u32>(32u))), Struct_4(true, reverseBits(u_input.c), abs(vec3<u32>(firstTrailingBit(1u), ~u_input.a, ~44168u))), vec2<bool>(all(vec2<bool>(all(vec2<bool>(false, false)), true)), (1u >> (u_input.a % 32u)) >= 4294967295u));
    let var_2 = Struct_4(any(!vec4<bool>(false, all(vec2<bool>(false, var_1.c.a)), !var_1.d.x, all(var_1.a.a))), ~min(~1u, 1u), select(select(abs(vec3<u32>(var_1.c.b, 2719u, var_1.c.c.x)), var_1.c.c, select(!var_1.a.a, var_1.a.a, true)), ~var_1.c.c, true));
    var var_3 = vec3<i32>(1i, u_input.b.x, u_input.b.x);
    var_3 = -vec3<i32>(_wgslsmith_mult_i32(-(~var_3.x), -21409i), countOneBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 2147483647i, -47869i, -31562i), vec4<i32>(12733i, arg_0, 30602i, var_0.x))), _wgslsmith_clamp_i32(-1i, var_3.x, 1i));
    return var_1.a.a;
}

fn func_2(arg_0: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_vec2_i32(~vec2<i32>(arg_0, _wgslsmith_add_i32(1i, i32(-1i) * -42147i)), min(_wgslsmith_mult_vec2_i32(u_input.b, (u_input.b | u_input.b) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(27968i, 44721i)), ~u_input.b & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 28167i), u_input.b, u_input.b))));
    let var_1 = !vec2<bool>(any(vec2<bool>(true, true)) && true, false);
    let var_2 = abs(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, 30890i, 2147483647i, -1i), vec4<i32>(-26413i, u_input.b.x, -2147483647i, arg_0)) ^ ~vec4<i32>(0i, var_0.x, 2147483647i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -5311i, u_input.b.x, -30219i), firstLeadingBit(vec4<i32>(arg_0, arg_0, 9349i, 0i)))) << (min(~(vec4<u32>(35137u, u_input.c, 47735u, 57015u) | vec4<u32>(42114u, u_input.a, u_input.c, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(14214u, u_input.c, u_input.a, 0u), vec4<u32>(23673u, 0u, 4294967295u, u_input.a)) >> (reverseBits(vec4<u32>(u_input.a, 39560u, u_input.c, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_3 = vec3<bool>(var_1.x, var_1.x, var_1.x);
    var var_4 = true;
    return vec3<bool>(true, !(!any(func_3(-64230i))), func_3(0i).x);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(max(-2923f, 546f));
    var var_1 = all(!select(vec3<bool>(!arg_1.x, !arg_2, arg_1.x & arg_1.x), !vec3<bool>(true, arg_1.x, arg_2), select(!vec3<bool>(arg_2, arg_2, false), vec3<bool>(true, false, arg_2), !vec3<bool>(true, arg_1.x, arg_2))));
    var_1 = arg_2;
    var_1 = arg_1.x;
    var_1 = arg_1.x;
    return !(!vec4<bool>(~arg_3.x >= ~arg_3.x, all(func_2(u_input.b.x)), true, arg_2));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<f32>) -> Struct_3 {
    return Struct_3(Struct_2(!(!func_2(-24158i))), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(121f * arg_2.x) * _wgslsmith_f_op_f32(step(arg_2.x, arg_2.x)))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_2.x)))), arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(vec3<i32>(-(-1i ^ u_input.b.x), abs(abs(-21697i)), min(u_input.b.x, 2147483647i)), -2147483647i, 0i, ~vec2<u32>(~1u, ~u_input.c), !(u_input.b.x <= ~u_input.b.x)), !(!func_1(~u_input.c, select(vec2<bool>(true, true), vec2<bool>(false, true), false), true, countOneBits(vec2<u32>(0u, 29362u)))), vec2<f32>(881f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-766f, 1000f, true))))));
    var var_1 = Struct_4(var_0.a.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(max(max(u_input.a, 4294967295u), u_input.a), select(_wgslsmith_mult_u32(u_input.a, 53231u), ~u_input.c, true)), ~(max(vec2<u32>(u_input.c, u_input.a), vec2<u32>(1u, u_input.a)) | _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 41377u), vec2<u32>(1u, 1u)))), vec3<u32>(1u, abs(_wgslsmith_mod_u32(~8487u, ~1u)), ~34062u));
    let var_2 = _wgslsmith_mod_i32(u_input.b.x >> (_wgslsmith_mod_u32(86246u, 1u) % 32u), u_input.b.x);
    let var_3 = vec2<bool>(any(var_0.a.a) || true, true);
    let var_4 = _wgslsmith_sub_vec4_i32(~vec4<i32>(_wgslsmith_sub_i32(-38158i, -1i), -var_2, ~u_input.b.x, firstTrailingBit(-28230i)) >> (~(~abs(vec4<u32>(24228u, 4294967295u, 72995u, var_1.c.x))) % vec4<u32>(32u)), (vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 58509i)) << ((vec4<u32>(~var_1.b, var_1.c.x, ~var_1.c.x, 46514u << (var_1.b % 32u)) >> (~firstLeadingBit(vec4<u32>(12618u, u_input.c, u_input.c, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_5 = var_0.b;
    var_0 = func_4(Struct_1(reverseBits(var_4.wwx), -_wgslsmith_div_i32(-8787i, -var_4.x), u_input.b.x, var_1.c.zx, false), !select(vec4<bool>(false | var_0.d, var_0.a.a.x, true, all(vec3<bool>(var_0.d, false, true))), vec4<bool>(var_0.c, !var_1.a, true && var_1.a, !var_0.d), !select(vec4<bool>(false, true, var_0.d, var_3.x), vec4<bool>(var_0.d, var_1.a, var_0.a.a.x, var_3.x), var_0.d)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.b, -986f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -456f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b)))));
}

