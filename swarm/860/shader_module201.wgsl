struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: bool,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-255f, 668f, _wgslsmith_f_op_f32(min(669f, 850f))))));
    return 0u;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: u32, arg_3: vec2<f32>) -> i32 {
    let var_0 = reverseBits(arg_0.zz);
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -23363i, u_input.c, u_input.c), vec4<i32>(u_input.a, -44745i, 1i, 0i)) & -vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, u_input.b.x)), ~reverseBits(vec4<i32>(u_input.c, -16545i, -35376i, 58079i) >> (~vec4<u32>(var_0.x, 1u, u_input.d.x, 21017u) % vec4<u32>(32u))));
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(arg_3, _wgslsmith_f_op_vec2_f32(step(arg_3, arg_3))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, 845f, arg_3.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-640f, 932f, -1663f, arg_3.x))))), vec4<bool>(true, true, true, true))))), !any(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), u_input.d >> (~_wgslsmith_mult_vec4_u32(arg_1, vec4<u32>(7152u, 4294967295u, arg_0.x, var_0.x)) % vec4<u32>(32u)), _wgslsmith_add_u32(u_input.d.x, _wgslsmith_add_u32(1u, 24071u)));
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(countOneBits(_wgslsmith_add_i32(var_1, -1i))), ~_wgslsmith_dot_vec2_i32(~u_input.b, ~vec2<i32>(1i, 11563i))), u_input.b);
    var var_4 = _wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(-var_2.b.x), var_2.c));
    return -_wgslsmith_add_i32(-1i | -_wgslsmith_mult_i32(var_3, 0i), -var_3);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>) -> u32 {
    let var_0 = -504f;
    let var_1 = _wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(firstTrailingBit(~vec4<i32>(u_input.c, -28680i, 25492i, 0i)), vec4<i32>(u_input.b.x, arg_1.x, ~arg_1.x, _wgslsmith_mod_i32(u_input.b.x, -2147483647i))), _wgslsmith_mod_vec4_i32(-vec4<i32>(0i, u_input.b.x, 14349i, arg_1.x) | _wgslsmith_clamp_vec4_i32(vec4<i32>(18634i, u_input.b.x, u_input.b.x, -1i) ^ vec4<i32>(0i, u_input.c, 49000i, 25624i), -vec4<i32>(u_input.c, -11106i, 81999i, u_input.a), vec4<i32>(arg_1.x, -21451i, -6228i, u_input.c) >> (u_input.d % vec4<u32>(32u))), select(-vec4<i32>(arg_1.x, 1i, u_input.b.x, -38859i), ~vec4<i32>(59297i, -1i, u_input.c, 4804i), !vec4<bool>(true, arg_0.x, true, arg_0.x)) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 0i, -2884i, u_input.a) ^ vec4<i32>(59488i, -90325i, u_input.c, arg_1.x), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, u_input.b.x, -31806i), vec4<i32>(u_input.c, -4049i, arg_1.x, 0i)))));
    let var_2 = Struct_2(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0)), abs(~select(vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.d.x), ~u_input.d, -881f > var_0)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-869f, var_0)), _wgslsmith_f_op_f32(max(173f, 1133f)))), vec4<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1979f + var_0) + _wgslsmith_f_op_f32(floor(var_0))), var_0, _wgslsmith_f_op_f32(var_0 * 1031f)), all(vec4<bool>(arg_0.x | arg_0.x, any(arg_0), var_1.x > arg_1.x, var_0 != -407f)), vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(22547u, 1u)), ~u_input.d.x, u_input.d.x, ~(u_input.d.x ^ u_input.d.x)), 1u), _wgslsmith_add_u32(23133u, u_input.d.x));
    let var_3 = var_2.c;
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.c.a), var_2.c.b.yx, arg_0));
    return var_2.d;
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.c;
    var var_1 = func_4(vec2<bool>(true, (u_input.d.x | 7754u) <= (func_2() ^ ~u_input.d.x)), max(vec3<i32>(u_input.c, ~u_input.b.x, _wgslsmith_clamp_i32(1i, ~(-1i), -31602i)), vec3<i32>(func_3(vec3<u32>(4294967295u, u_input.d.x, u_input.d.x), u_input.d, u_input.d.x, vec2<f32>(972f, -1000f)), 0i, firstTrailingBit(u_input.b.x)) << (_wgslsmith_mult_vec3_u32(u_input.d.zwx, ~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)) % vec3<u32>(32u))));
    var_0 = select(_wgslsmith_sub_i32(abs(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), firstTrailingBit(vec2<i32>(1i, u_input.a)))), firstTrailingBit(-(min(-18879i, -35839i) & (u_input.b.x << (u_input.d.x % 32u)))), true);
    let var_2 = vec3<bool>(true, true, !(!(u_input.a >= _wgslsmith_clamp_i32(u_input.b.x, 7804i, u_input.b.x))));
    var_1 = reverseBits(6677u);
    return Struct_2(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(1021f))), vec4<u32>(u_input.d.x, 45501u, _wgslsmith_dot_vec2_u32(vec2<u32>(59638u, 63814u), max(u_input.d.xy, vec2<u32>(1u, 35838u))), u_input.d.x) ^ ~u_input.d, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-304f, 1604f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -701f, _wgslsmith_f_op_f32(ceil(-964f)), _wgslsmith_f_op_f32(397f - -1111f))), !(~0i > u_input.b.x), vec4<u32>(0u, u_input.d.x, max(u_input.d.x, ~u_input.d.x), select(reverseBits(u_input.d.x), 1u, true)), u_input.d.x), u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_1().c;
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-206f, _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(ceil(var_1.a.x)))))) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))));
    let var_4 = select(select(!(!vec2<bool>(var_0.c.c, false)), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), false)), any(select(!vec2<bool>(false, var_0.c.c), select(vec2<bool>(false, var_0.c.c), vec2<bool>(var_0.c.c, true), vec2<bool>(var_0.c.c, true)), all(vec3<bool>(var_3, var_1.c, var_0.c.c))))), !select(!select(vec2<bool>(var_1.c, false), vec2<bool>(var_0.c.c, var_1.c), vec2<bool>(var_0.c.c, var_3)), vec2<bool>(true, true), vec2<bool>(false, true)), !((var_3 || var_0.c.c) && true) || (true || (var_1.c && false)));
    let var_5 = all(vec2<bool>(-2147483647i > (firstTrailingBit(-22986i) ^ -74050i), (true && any(vec4<bool>(false, true, true, true))) || !(1545f > var_0.c.b.x)));
    var var_6 = select(!(!select(!vec3<bool>(false, var_1.c, false), vec3<bool>(true, true, var_0.c.c), vec3<bool>(var_4.x, false, var_5))), vec3<bool>(all(select(select(vec2<bool>(true, var_1.c), var_4, true), select(vec2<bool>(true, true), var_4, false), select(vec2<bool>(true, false), var_4, var_1.c))), ~_wgslsmith_add_i32(8920i, u_input.a) == _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -9068i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -56903i, -2147483647i), vec3<i32>(u_input.a, -2147483647i, var_2), vec3<i32>(u_input.a, var_2, -31898i))), var_5), vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a))) < var_1.a.x, -537f == var_0.a));
    let var_7 = Struct_1(vec2<f32>(-1664f, var_0.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.c.b - var_1.b))), _wgslsmith_div_vec4_f32(var_0.c.b, vec4<f32>(-304f, var_0.a, 416f, -1000f)))), var_1.b)), true, vec4<u32>(_wgslsmith_dot_vec2_u32(~(~var_1.d.zw), var_1.d.yz), u_input.d.x, u_input.d.x, _wgslsmith_dot_vec4_u32(func_1().c.d, _wgslsmith_div_vec4_u32(var_1.d, countOneBits(var_0.c.d)))), var_0.c.e);
    let x = u_input.a;
    s_output = StorageBuffer(~(-firstTrailingBit(firstTrailingBit(vec2<i32>(var_2, 19637i)))), u_input.c, abs(~vec2<u32>(~var_1.d.x, _wgslsmith_mod_u32(var_1.d.x, var_1.e))));
}

