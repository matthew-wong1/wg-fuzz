struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = 33518i;
    return vec2<bool>(true, !all(arg_3.d));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(!(true == all(func_3(vec4<bool>(false, true, true, false), u_input.a.x, Struct_1(true, u_input.d.x, vec2<f32>(-267f, -871f), vec3<bool>(true, false, true), true), Struct_1(true, 4294967295u, vec2<f32>(1340f, 106f), vec3<bool>(true, false, true), true)))), firstLeadingBit(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(-1i, 2147483647i, u_input.b.x)), vec3<i32>(u_input.b.x, -2147483647i, -5687i) >> (u_input.d.xww % vec3<u32>(32u))) & firstLeadingBit(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x))), (any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)) & true) & !select(any(vec3<bool>(false, false, false)), true, true), _wgslsmith_f_op_f32(f32(-1f) * -2463f), _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.b.x, -1i, max(-2147483647i, -1988i), u_input.b.x), reverseBits(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x))))));
    var var_1 = countOneBits(_wgslsmith_mod_vec2_u32(~(~abs(vec2<u32>(18807u, u_input.d.x))), select(~(~vec2<u32>(0u, 1u)), reverseBits(abs(vec2<u32>(u_input.d.x, 4294967295u))), select(func_3(vec4<bool>(var_0.a, true, var_0.c, false), 1u, Struct_1(var_0.a, 0u, vec2<f32>(var_0.d, var_0.d), vec3<bool>(false, true, false), var_0.c), Struct_1(false, u_input.a.x, vec2<f32>(var_0.d, -1000f), vec3<bool>(var_0.c, var_0.a, var_0.a), var_0.c)), func_3(vec4<bool>(false, true, true, true), 41303u, Struct_1(true, u_input.a.x, vec2<f32>(-176f, var_0.d), vec3<bool>(false, var_0.c, var_0.a), var_0.c), Struct_1(var_0.a, u_input.a.x, vec2<f32>(1420f, var_0.d), vec3<bool>(true, true, false), true)), true))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_0.d + var_0.d), var_0.d, _wgslsmith_f_op_f32(round(-288f)), var_0.d);
    var var_3 = select(!(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, var_0.a)), vec2<bool>(false, true), !vec2<bool>(true, var_0.a))), !vec2<bool>(var_0.c & (false && var_0.a), true), select(vec2<bool>(any(func_3(vec4<bool>(var_0.c, var_0.c, var_0.a, true), 51229u, Struct_1(true, 21072u, vec2<f32>(var_0.d, var_0.d), vec3<bool>(var_0.c, var_0.a, var_0.a), var_0.a), Struct_1(var_0.a, 1u, vec2<f32>(var_2.x, -1000f), vec3<bool>(var_0.c, var_0.c, false), true))), true), !func_3(!vec4<bool>(false, true, var_0.a, true), u_input.a.x, Struct_1(true, 1u, vec2<f32>(1000f, var_2.x), vec3<bool>(var_0.a, true, var_0.a), true), Struct_1(var_0.a, 4294967295u, var_2.yx, vec3<bool>(false, false, var_0.a), true)), all(select(select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(false, false, var_0.a), var_0.a), vec3<bool>(true, var_0.a, true), select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(var_0.c, true, true), false)))));
    let var_4 = var_0.b;
    return Struct_1(var_0.c, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~(vec3<u32>(50167u, 116294u, u_input.a.x) << (u_input.c % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(74715u, var_1.x, var_1.x), u_input.a.yww >> (vec3<u32>(var_1.x, u_input.a.x, var_1.x) % vec3<u32>(32u)), reverseBits(vec3<u32>(41721u, var_1.x, u_input.d.x)))), ~_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(4294967295u, var_1.x, u_input.c.x)), ~u_input.d.wzy)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_2.xz * var_2.xw))), vec2<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(round(-1000f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_2.xy))), _wgslsmith_f_op_vec2_f32(-var_2.wy), !func_3(vec4<bool>(var_3.x, var_0.a, true, true), var_1.x, Struct_1(false, var_1.x, var_2.yx, vec3<bool>(true, false, true), false), Struct_1(var_0.a, 35396u, vec2<f32>(var_0.d, -652f), vec3<bool>(var_0.c, false, false), var_3.x))))), vec3<bool>(true, all(select(!vec3<bool>(var_0.c, var_3.x, false), !vec3<bool>(var_3.x, true, false), var_3.x)), false), !func_3(vec4<bool>(all(vec4<bool>(var_3.x, var_3.x, false, var_3.x)), !var_3.x, true, all(vec4<bool>(var_3.x, true, var_3.x, false))), ~var_1.x, Struct_1(false, u_input.a.x, vec2<f32>(-103f, var_0.d), !vec3<bool>(false, false, var_3.x), var_0.a), Struct_1(false & var_3.x, reverseBits(var_1.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.d, var_0.d))), vec3<bool>(false, var_0.c, var_0.a), any(vec2<bool>(true, var_3.x)))).x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> vec2<i32> {
    let var_0 = Struct_3(false, vec3<i32>(-1i, _wgslsmith_clamp_i32(-arg_3.x, -1i, _wgslsmith_mod_i32(~arg_3.x, u_input.b.x ^ -19272i)), 4698i), false | func_2().e, arg_0.c.x, select(44405i, 2147483647i, true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + -294f) * arg_0.c.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1163f + var_0.d))) - -576f), ~countOneBits(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.c.x, 6442u, 2452u, arg_0.b))), arg_0.c, select(!vec3<bool>(arg_0.a != true, any(vec2<bool>(var_0.a, arg_2.x)), !var_0.c), !(!arg_0.d), var_0.a), !any(!(!vec2<bool>(arg_2.x, false))));
    let var_2 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 30327u, 58395u) | u_input.a.wyw, vec3<u32>(arg_0.b, 25070u, 8775u)), func_2().b) & arg_0.b;
    var var_3 = (any(var_1.d.yz) | var_1.a) & true;
    var_3 = true;
    return max(select(u_input.b, countOneBits(arg_3.wz) | ~var_0.b.yy, true | (var_1.b < 109062u)), abs(vec2<i32>(~52344i, arg_3.x))) >> (u_input.c.xz % vec2<u32>(32u));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_i32(-vec2<i32>((arg_0.x | arg_0.x) ^ 1i, min(-u_input.b.x, arg_0.x)), ~func_4(func_2(), vec4<bool>(true, any(vec3<bool>(true, true, false)), func_2().a, false), vec3<bool>(true, true, true), ~arg_0));
    var_0 = _wgslsmith_dot_vec3_i32(min(arg_0.yxx, ~_wgslsmith_add_vec3_i32(arg_0.yww, vec3<i32>(u_input.b.x, -43342i, 19722i))), -select(abs(vec3<i32>(-55925i, u_input.b.x, arg_0.x)), firstLeadingBit(-vec3<i32>(0i, u_input.b.x, -3850i)), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), func_2().d)));
    let var_1 = u_input.a;
    var var_2 = countOneBits(vec4<u32>(0u, _wgslsmith_dot_vec2_u32(~abs(u_input.a.zw), vec2<u32>(1u, 127739u) ^ ~vec2<u32>(arg_2, u_input.d.x)), 13072u, var_1.x));
    var_2 = ~(~u_input.a);
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec2_i32(countOneBits(-u_input.b), u_input.b);
    var_0 = reverseBits(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(26872i, -32063i, 56747i), vec3<i32>(-2147483647i, var_0.x, u_input.b.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, 0i, 1i), vec3<i32>(0i, u_input.b.x, var_0.x), vec3<i32>(-1i, var_0.x, -1i))), _wgslsmith_mod_i32(firstLeadingBit(var_0.x), reverseBits(1i)))) >> (u_input.c.yx % vec2<u32>(32u));
    var_0 = (-max(select(u_input.b, vec2<i32>(-1i, -51677i), vec2<bool>(false, true)), firstLeadingBit(u_input.b)) & ~vec2<i32>(~u_input.b.x, select(-14540i, var_0.x, true))) << (u_input.a.zz % vec2<u32>(32u));
    var_0 = u_input.b;
    var_0 = -vec2<i32>(~(-10955i), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-1i) * -vec2<i32>(0i, -17893i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1395f, _wgslsmith_f_op_f32(f32(-1f) * -1138f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1000f, 600f)), _wgslsmith_f_op_f32(-652f - 853f))) - -654f))), u_input.d.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(var_0.x, var_0.x, u_input.b.x, u_input.b.x), vec3<f32>(-811f, 1565f, 753f), u_input.a.x))))), reverseBits(-_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, var_0.x, -2147483647i), vec3<i32>(41657i, -1i, u_input.b.x))) >> (u_input.c % vec3<u32>(32u)));
}

