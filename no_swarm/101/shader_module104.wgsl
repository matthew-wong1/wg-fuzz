struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>) -> vec2<u32> {
    let var_0 = select(select(vec4<bool>(true, true, false, true), vec4<bool>(select(true, true, false) != true, true, all(vec4<bool>(false, false, true, true)) && false, all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true))), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))))), vec4<bool>(select(true, !any(vec2<bool>(true, true)), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-arg_0.x)) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, any(vec2<bool>(true, false)))), true, true), !(!(!any(vec3<bool>(false, false, true)))));
    var var_1 = var_0.x;
    var_1 = true;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), -1655f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yz * vec2<f32>(arg_0.x, -722f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1746f, -934f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1766f, 903f)))));
    var_1 = u_input.a.x != _wgslsmith_div_u32(u_input.a.x, ~u_input.a.x);
    return vec2<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.xz, ~(u_input.a.xx << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)))));
}

fn func_2() -> f32 {
    let var_0 = Struct_4(Struct_3(-_wgslsmith_mod_i32(select(-22601i, -1i, true), abs(65342i)), ~(1u | ~u_input.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), Struct_2(all(vec2<bool>(false, false)) | true, Struct_1(~(-30812i), true, true, vec4<u32>(17025u, 1u, u_input.a.x, u_input.a.x)), func_3(vec4<f32>(-1626f, -328f, 311f, -1705f)), Struct_1(~(-1i), true, true, u_input.a), Struct_1(_wgslsmith_mult_i32(-1i, -17898i), true, true, u_input.a)), vec2<bool>(true, false)));
    let var_1 = var_0.a.d.e.a << ((firstTrailingBit((u_input.a.x >> (23546u % 32u)) & 13167u) ^ var_0.a.d.d.d.x) % 32u);
    let var_2 = u_input.a;
    var var_3 = select(var_0.a.c.yz, vec2<bool>(var_0.a.e.x, all(select(var_0.a.c.zxy, !vec3<bool>(true, false, var_0.a.d.b.b), var_0.a.d.a))), any(var_0.a.c));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(735f, -105f, 1961f)))))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1535f)))) - _wgslsmith_f_op_f32(461f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_4.x, -208f)), _wgslsmith_f_op_f32(min(var_4.x, var_4.x))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_4 {
    let var_0 = Struct_1(arg_2.x, arg_1.b, arg_1.b, abs(vec4<u32>(64894u, ~(u_input.a.x ^ arg_1.d.x), 1u, 1u)));
    let var_1 = var_0;
    var var_2 = Struct_2(var_1.c | var_0.c, Struct_1(30270i, any(select(!vec3<bool>(var_1.b, var_1.b, var_1.b), !vec3<bool>(false, false, var_0.c), !vec3<bool>(true, false, var_1.b))), any(select(vec3<bool>(false, false, var_0.b), vec3<bool>(false, var_0.b, true), false)) | select(arg_0.x != 165f, true, true), ~var_0.d), u_input.a.xz, var_1, Struct_1(reverseBits(0i), var_1.b, false, firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.d.yxz, vec3<u32>(18876u, 4294967295u, u_input.a.x)), u_input.a.x, arg_1.d.x, reverseBits(arg_1.d.x)))));
    let var_3 = var_1.a | ~977i;
    let var_4 = -1i;
    return Struct_4(Struct_3(var_1.a, _wgslsmith_clamp_u32(var_2.e.d.x, ~(var_1.d.x | u_input.a.x), abs(_wgslsmith_mod_u32(var_0.d.x, var_2.d.d.x))), vec4<bool>(var_1.c, var_1.b & arg_1.b, var_2.d.c, !all(vec2<bool>(true, true))), Struct_2(var_0.c && var_2.e.b, Struct_1(_wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(var_3, var_0.a, 18672i, var_0.a)), arg_1.c, var_0.c, reverseBits(u_input.a)), _wgslsmith_add_vec2_u32(var_2.c, var_0.d.yw) | ~var_1.d.xz, arg_1, Struct_1(-1i, true, true, abs(u_input.a))), vec2<bool>(arg_1.c, any(!vec4<bool>(var_2.e.c, var_1.c, var_0.b, false)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32, arg_3: Struct_4) -> f32 {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1985f, -726f, 293f) + vec3<f32>(-1320f, 127f, 665f))), vec3<f32>(_wgslsmith_div_f32(1710f, -448f), -910f, 504f), select(!arg_1.a.c.yxz, arg_3.a.c.xwy, select(arg_3.a.c.zwx, vec3<bool>(arg_1.a.e.x, false, true), false)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(897f, 451f))), 761f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -138f)))), Struct_1(~_wgslsmith_add_i32(-1i, 0i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-774f, 139f)), -341f)) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -801f))), any(vec3<bool>(arg_0.c, select(false, arg_0.b, true), true)), _wgslsmith_mult_vec4_u32(arg_3.a.d.d.d, _wgslsmith_add_vec4_u32(~u_input.a, vec4<u32>(arg_2, 1u, 41510u, 0u)))), firstTrailingBit(vec4<i32>(28103i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1.a.a, 3575i, arg_3.a.a), vec4<i32>(arg_1.a.d.d.a, arg_3.a.d.e.a, -20801i, 10557i)), 24749i, arg_3.a.a) >> ((~arg_3.a.d.e.d & ~u_input.a) % vec4<u32>(32u))));
    var_0 = Struct_4(arg_1.a);
    var var_1 = Struct_5(Struct_2(!(!select(false, false, arg_0.c)), func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1834f, -510f, -503f) + vec3<f32>(1797f, 806f, -252f)))), Struct_1(1i, true, all(vec4<bool>(arg_1.a.c.x, false, true, true)), vec4<u32>(var_0.a.b, var_0.a.d.e.d.x, arg_1.a.b, arg_0.d.x)), vec4<i32>(1i, arg_1.a.a, ~0i, -var_0.a.d.b.a)).a.d.e, ~var_0.a.d.e.d.yy, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(510f, -618f, 1397f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-925f, -760f, -733f), vec3<f32>(2119f, 1188f, 1478f)))), arg_1.a.d.b, ~countOneBits(vec4<i32>(arg_1.a.a, arg_1.a.a, arg_3.a.a, 33754i))).a.d.d, Struct_1(-2147483647i, false, var_0.a.d.b.c, ~arg_1.a.d.e.d)), func_4(vec3<f32>(290f, -1199f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1084f)))), Struct_1(-2147483647i, _wgslsmith_sub_u32(arg_2, u_input.a.x) >= 1u, all(select(arg_1.a.c.yxy, arg_3.a.c.zxx, arg_1.a.c.wxy)), ~(~vec4<u32>(arg_0.d.x, var_0.a.d.c.x, 1u, 4294967295u))), min(~firstLeadingBit(vec4<i32>(-89424i, arg_1.a.a, arg_3.a.a, arg_0.a)), -vec4<i32>(-5815i, 1i, arg_0.a, arg_1.a.d.d.a))).a.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -273f)))) * 1008f));
    var_0 = arg_1;
    let var_2 = Struct_5(Struct_2(1i == _wgslsmith_mult_i32(arg_1.a.d.b.a, min(2147483647i, -1i)), func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1768f, -1054f, 353f))))), Struct_1(15014i, var_1.b.x, 2147483647i <= arg_1.a.d.d.a, vec4<u32>(arg_3.a.b, 1u, u_input.a.x, 4294967295u)), countOneBits(vec4<i32>(var_0.a.a, 0i, var_0.a.a, arg_0.a))).a.d.e, (~var_1.a.c | _wgslsmith_sub_vec2_u32(arg_1.a.d.c, u_input.a.xy)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), abs(vec2<u32>(arg_3.a.b, 20446u)), vec2<u32>(1u, arg_2)) % vec2<u32>(32u)), func_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -774f), _wgslsmith_f_op_f32(660f * 913f), -2439f), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, -702f, -912f) - vec3<f32>(var_1.c, var_1.c, -914f)), Struct_1(arg_3.a.a, var_1.b.x, var_1.b.x, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a, -37716i, var_0.a.d.b.a, arg_1.a.a), vec4<i32>(var_0.a.d.d.a, var_1.a.b.a, var_0.a.a, arg_0.a), vec4<i32>(0i, -29197i, 0i, var_0.a.a))).a.d.e, _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -1i, var_0.a.d.b.a, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a, arg_1.a.d.b.a, 1674i, arg_1.a.a), vec4<i32>(arg_0.a, var_0.a.d.d.a, 1i, arg_0.a)))).a.d.b, func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1501f, -1321f, var_1.c)), vec3<f32>(var_1.c, 240f, var_1.c))), var_0.a.d.e, _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(46338i, 1i, var_0.a.a, arg_1.a.d.d.a)), vec4<i32>(1981i, var_1.a.e.a, -1i, arg_1.a.d.b.a), _wgslsmith_div_vec4_i32(vec4<i32>(arg_3.a.d.d.a, arg_1.a.a, var_1.a.d.a, -8313i), vec4<i32>(18518i, arg_0.a, -5932i, 2147483647i)))).a.d.d), select(var_0.a.e, !vec2<bool>(arg_3.a.a <= arg_1.a.d.e.a, true), (arg_0.a | (15093i & arg_0.a)) != (-28716i >> (countOneBits(arg_0.d.x) % 32u))), 976f);
    return -347f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -555f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1574f), 969f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(1i, true, true, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), Struct_4(Struct_3(2147483647i, 1u, vec4<bool>(true, true, false, false), Struct_2(true, Struct_1(27859i, false, false, u_input.a), vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(-34471i, true, false, vec4<u32>(25726u, 46201u, u_input.a.x, 4294967295u)), Struct_1(-1i, true, true, vec4<u32>(u_input.a.x, 4294967295u, 1u, 1u))), vec2<bool>(false, true))), u_input.a.x, Struct_4(Struct_3(40385i, 1u, vec4<bool>(true, false, true, false), Struct_2(false, Struct_1(15245i, true, false, vec4<u32>(28883u, u_input.a.x, u_input.a.x, u_input.a.x)), vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(-84973i, false, true, vec4<u32>(u_input.a.x, u_input.a.x, 55234u, u_input.a.x)), Struct_1(-51753i, false, false, u_input.a)), vec2<bool>(false, true))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-825f)) + _wgslsmith_f_op_f32(trunc(1041f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1112f - _wgslsmith_f_op_f32(f32(-1f) * -1193f)), 1311f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(992f, 1310f)) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(188f + -145f)))));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-79095i, 8192i, 1i, 0i)), min(vec4<i32>(2147483647i, -3192i, -31580i, 0i), vec4<i32>(26232i, 0i, -1i, -4285i))), ~_wgslsmith_div_i32(select(49612i, 27893i, false), 31070i), _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-19400i, 61044i), -8192i, 1i), 1i), -1i), vec4<i32>(~(~(15952i << (var_1 % 32u))), 60506i, 1i, countOneBits(-(~14895i))));
    let var_3 = true;
    let var_4 = Struct_3(_wgslsmith_sub_i32(~abs(0i), ~_wgslsmith_mult_i32(reverseBits(-4465i), func_4(vec3<f32>(-281f, var_0.x, -472f), Struct_1(var_2.x, false, true, u_input.a), var_2).a.a)), _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(1u, 4294967295u, 0u, u_input.a.x)), u_input.a), vec4<bool>(false, var_3, var_3, var_2.x != 1i), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, -2929f), var_0.xzy)), var_0.wzw, var_0.x > 1150f))), func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-324f, -120f, var_0.x), _wgslsmith_f_op_vec3_f32(var_0.zyx * var_0.wzz), false)), Struct_1(1i, true, any(vec2<bool>(false, true)), countOneBits(u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, var_2.x, 16998i, -16440i), var_2) ^ _wgslsmith_div_vec4_i32(var_2, vec4<i32>(var_2.x, var_2.x, var_2.x, -392i))).a.d.b, select(_wgslsmith_div_vec4_i32(min(vec4<i32>(1i, -11060i, 15432i, var_2.x), var_2), vec4<i32>(2147483647i, var_2.x, var_2.x, var_2.x)), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(var_2.x, -1i, var_2.x, 65500i)), -vec4<i32>(1496i, var_2.x, 2147483647i, var_2.x)), vec4<bool>(true, true, true, !var_3))).a.d, vec2<bool>(_wgslsmith_f_op_f32(round(-836f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)), var_3));
    let var_5 = func_4(var_0.wzz, Struct_1(_wgslsmith_div_i32(1i, 24854i), !(var_1 == ~var_1), !var_4.d.a, select(vec4<u32>(u_input.a.x, var_4.d.e.d.x, var_4.b, 31442u) & min(vec4<u32>(u_input.a.x, var_1, var_1, 1u), var_4.d.b.d), ~var_4.d.d.d, !var_3 != any(vec4<bool>(var_3, var_3, var_3, var_3)))), -(~(~(var_2 ^ vec4<i32>(var_2.x, var_4.d.d.a, 62489i, -1i)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1513f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) - var_0.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, 382f, var_3))), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -2645f))), -1000f, all(!var_4.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1862f))));
    var var_6 = Struct_5(var_5.a.d, vec2<bool>(!(!func_4(vec3<f32>(var_0.x, -372f, var_0.x), Struct_1(-1i, var_5.a.e.x, var_5.a.e.x, var_5.a.d.e.d), vec4<i32>(var_2.x, var_4.a, var_2.x, -1i)).a.d.e.c), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-250f, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(6930i), _wgslsmith_mult_i32(i32(-1i) * -1i, var_2.x));
}

