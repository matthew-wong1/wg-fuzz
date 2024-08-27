struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: i32,
    e: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_div_f32(-485f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(597f, 1060f))), -1000f))), select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true && all(vec2<bool>(true, true)), false), !vec4<bool>(false, true, any(vec3<bool>(false, false, false)), true), any(vec4<bool>(true, true, true, true))), -1000f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1372f + 114f), _wgslsmith_div_f32(288f, 1421f), true))));
    let var_1 = select(select(vec2<bool>(var_0.c, true), !var_0.b.xz, all(!select(var_0.b.yyz, var_0.b.xzw, var_0.b.yxy))), select(select(var_0.b.wy, var_0.b.yz, true), select(!select(var_0.b.yy, var_0.b.wx, false), !select(var_0.b.zw, vec2<bool>(var_0.c, false), var_0.b.yz), _wgslsmith_add_i32(1i, u_input.e) >= _wgslsmith_div_i32(25911i, u_input.e)), select(!var_0.b.zx, select(select(var_0.b.wx, var_0.b.zz, vec2<bool>(true, var_0.b.x)), vec2<bool>(true, true), all(vec2<bool>(var_0.c, var_0.b.x))), all(!var_0.b.zwz))), all(vec2<bool>(true, true)));
    var var_2 = Struct_5(Struct_4(Struct_2(firstLeadingBit(7107i), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)), all(var_0.b.zzw)), var_0.b.zyz, false == !var_0.c, select(false, var_1.x || var_1.x, !var_0.b.x)), Struct_2(u_input.c, Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a, var_0.a))), any(var_0.b)), select(select(var_0.b.zwy, var_0.b.zzw, false), var_0.b.xwx, true), true, !var_0.c | (var_1.x && var_0.b.x)), !select(!var_1, select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, var_0.b.x)), !var_1.x), countOneBits(abs(countOneBits(u_input.c))), u_input.b), Struct_4(Struct_2(select(countOneBits(u_input.c), 23159i, false), Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1763f, -809f))), var_0.a != 525f), var_0.b.yzy, select(any(var_0.b), false, !var_0.c), (var_0.a == var_0.a) || (true | var_1.x)), Struct_2(_wgslsmith_clamp_i32(-u_input.e, 1i, _wgslsmith_mod_i32(-1i, 2147483647i)), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1588f, var_0.a))), !var_1.x), select(var_0.b.zyx, var_0.b.wyz, vec3<bool>(var_0.b.x, false, false)), true, true), vec2<bool>(true, true), _wgslsmith_sub_i32(u_input.c, _wgslsmith_mod_i32(-u_input.e, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 23011i), vec2<i32>(11207i, -2147483647i)))), ~16894u), Struct_4(Struct_2(u_input.c, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(893f, var_0.a)), true), var_0.b.zyz, !all(vec4<bool>(false, false, true, true)), 1450f < var_0.a), Struct_2(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-19567i, u_input.c, -2147483647i, 23043i), vec4<i32>(u_input.e, -1i, u_input.c, u_input.c)), -1i), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1010f, -1000f) + vec2<f32>(var_0.a, var_0.a)), var_1.x), vec3<bool>(!var_0.c, false, true), select(var_1.x, var_0.b.x & true, var_0.c), false), !select(select(var_1, var_1, vec2<bool>(true, var_0.c)), var_1, select(vec2<bool>(false, false), vec2<bool>(var_0.c, var_1.x), var_0.b.x)), countOneBits(~u_input.c), ~u_input.a.x));
    let var_3 = _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-21207i, u_input.c, -1i), vec3<i32>(var_2.a.b.a, var_2.a.d, -34135i)), u_input.e, _wgslsmith_add_i32(2147483647i, -2147483647i), 2147483647i), _wgslsmith_mult_vec4_i32(-abs(vec4<i32>(5437i, 10070i, 28868i, var_2.b.d)), ~vec4<i32>(u_input.e, 0i, 7084i, 0i))) > -max(firstTrailingBit(_wgslsmith_mult_i32(var_2.a.a.a, u_input.e)), var_2.a.b.a);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1695f - var_0.a)), var_2.c.b.b.a.x)));
    return select(!(!(!select(var_0.b.xzx, var_2.b.a.c, vec3<bool>(var_0.c, false, true)))), select(!vec3<bool>(31708u <= var_2.a.e, true, true), select(var_0.b.ywy, select(vec3<bool>(false, var_2.c.c.x, false), vec3<bool>(var_3, true, var_1.x), vec3<bool>(true, var_2.c.b.d, false)), var_0.b.x || (var_3 || true)), !select(vec3<bool>(false, false, var_1.x), vec3<bool>(var_3, true, var_0.c), var_0.b.yzw)), !select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), var_2.b.c.x), select(var_0.b.zxz, vec3<bool>(var_0.c, false, var_0.c), var_1.x), all(vec3<bool>(true, false, var_1.x))), select(vec3<bool>(false, var_3, var_2.a.b.d), var_0.b.xyw, !var_2.c.b.c), (u_input.d.x < u_input.a.x) != !var_2.c.c.x));
}

fn func_2(arg_0: f32, arg_1: i32) -> bool {
    let var_0 = Struct_2(-_wgslsmith_mod_i32(-2147483647i, firstLeadingBit(-arg_1)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(927f, arg_0), vec2<f32>(arg_0, 1561f)))), all(vec3<bool>(true, true, true))), func_3(), false, true);
    let var_1 = u_input.d << (u_input.d % vec3<u32>(32u));
    var var_2 = !vec2<bool>(!any(!vec4<bool>(true, var_0.b.b, true, true)), var_0.c.x);
    var_2 = select(var_0.c.yz, var_0.c.zy, var_0.b.b);
    return (firstLeadingBit(~var_1.x) == (_wgslsmith_mult_u32(max(1u, u_input.a.x), ~u_input.b) & ~abs(u_input.d.x))) && (any(vec4<bool>(var_0.c.x, true, !var_2.x, any(vec4<bool>(false, var_2.x, var_2.x, true)))) | all(vec2<bool>(var_2.x, !var_2.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_4 {
    var var_0 = ~u_input.a << (vec2<u32>(_wgslsmith_mult_u32(~(~arg_1.e), 4772u), (_wgslsmith_dot_vec2_u32(u_input.d.zz, u_input.a) & _wgslsmith_sub_u32(u_input.b, 0u)) | 4294967295u) % vec2<u32>(32u));
    var_0 = reverseBits(u_input.a);
    var_0 = ~_wgslsmith_mult_vec2_u32(select(u_input.a, u_input.d.yx, select(vec2<bool>(arg_1.b.d, arg_0.x), arg_1.a.c.xx, false)) | _wgslsmith_add_vec2_u32(vec2<u32>(60170u, var_0.x), ~u_input.d.yz), ~_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(u_input.d.x, arg_1.e)) >> (_wgslsmith_sub_vec2_u32(u_input.a, u_input.d.xz) % vec2<u32>(32u)));
    var var_1 = (vec3<i32>(u_input.c, 3686i, arg_1.d >> (0u % 32u)) | -reverseBits(vec3<i32>(23117i, -47336i, u_input.e))) << (u_input.d % vec3<u32>(32u));
    var var_2 = Struct_2(arg_1.d, arg_1.a.b, select(func_3(), !vec3<bool>(arg_0.x, any(arg_1.a.c), true), any(arg_1.a.c)), all(select(select(arg_0, arg_0, select(vec2<bool>(arg_0.x, true), vec2<bool>(false, arg_0.x), true)), arg_1.c, vec2<bool>(arg_1.c.x && arg_0.x, !arg_1.a.b.b))), any(!vec4<bool>(!arg_1.c.x, true, all(vec4<bool>(arg_1.b.b.b, arg_1.a.b.b, arg_0.x, false)), false)));
    return arg_1;
}

fn func_1(arg_0: Struct_5, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_4 {
    return func_4(select(!select(select(arg_0.b.c, vec2<bool>(arg_2.d, arg_0.a.c.x), true), arg_2.c.yy, vec2<bool>(true, true)), vec2<bool>(arg_0.a.b.c.x, !(!arg_0.b.a.d)), func_2(_wgslsmith_f_op_f32(select(1074f, arg_3.a.x, arg_2.c.x)), select(u_input.c, arg_0.b.d, arg_0.c.a.b.b)) || (u_input.b != ~24844u)), Struct_4(arg_0.a.a, arg_2, select(select(arg_2.c.zy, vec2<bool>(true, arg_2.e), true), !(!arg_0.c.c), func_3().x), 55710i, arg_0.b.e));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: u32, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_add_vec4_u32((abs(vec4<u32>(4294967295u, 4294967295u, arg_1.e, u_input.b)) & _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(4294967295u, 43072u, arg_2, arg_1.e)), vec4<u32>(64294u, arg_1.e, u_input.a.x, arg_1.e))) | (~(~vec4<u32>(arg_1.e, u_input.d.x, arg_2, u_input.d.x)) << (vec4<u32>(arg_1.e, _wgslsmith_div_u32(u_input.d.x, 43225u), arg_1.e, func_4(vec2<bool>(false, false), Struct_4(Struct_2(-2147483647i, Struct_1(vec2<f32>(-746f, 261f), false), vec3<bool>(false, arg_1.a.c.x, arg_1.b.d), true, false), Struct_2(u_input.c, arg_1.a.b, arg_1.b.c, true, arg_1.a.d), vec2<bool>(true, arg_1.c.x), -8688i, 37947u)).e) % vec4<u32>(32u))), abs(max(vec4<u32>(arg_2, ~24668u, countOneBits(0u), _wgslsmith_clamp_u32(u_input.a.x, u_input.b, 31094u)), ~vec4<u32>(arg_2, 67576u, 1u, 1u))));
    let var_1 = select(vec4<bool>(1u >= _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, arg_2), vec3<u32>(arg_1.e, 3844u, u_input.b)), all(!vec4<bool>(arg_1.a.b.b, true, arg_1.b.e, false)) | !arg_1.b.d, func_1(Struct_5(func_4(vec2<bool>(arg_1.a.b.b, false), arg_1), Struct_4(Struct_2(-1i, arg_1.a.b, arg_1.b.c, arg_1.b.b.b, arg_1.a.b.b), Struct_2(20556i, arg_1.b.b, arg_1.b.c, arg_1.b.b.b, arg_1.c.x), vec2<bool>(true, true), arg_3, 7848u), Struct_4(arg_1.a, arg_1.a, arg_1.c, arg_1.b.a, 18820u)), 19957i, arg_1.a, Struct_1(vec2<f32>(1311f, arg_1.b.b.a.x), arg_1.e != arg_2)).a.e, all(!select(arg_1.b.c.zz, vec2<bool>(true, arg_1.c.x), arg_1.c))), select(select(!(!vec4<bool>(false, arg_1.b.d, false, false)), vec4<bool>(true, arg_1.a.b.a.x < 453f, true, true), !select(vec4<bool>(true, arg_1.b.d, false, arg_1.a.c.x), vec4<bool>(arg_1.a.e, arg_1.a.e, false, arg_1.b.c.x), arg_1.a.d)), !(!select(vec4<bool>(false, arg_1.c.x, arg_1.b.d, arg_1.b.c.x), vec4<bool>(arg_1.c.x, true, true, false), true)), select(!select(vec4<bool>(true, false, arg_1.b.b.b, true), vec4<bool>(arg_1.a.b.b, true, false, true), false), select(select(vec4<bool>(arg_1.c.x, true, arg_1.a.d, false), vec4<bool>(arg_1.b.b.b, arg_1.a.c.x, false, arg_1.c.x), vec4<bool>(false, arg_1.a.d, false, false)), vec4<bool>(arg_1.b.e, true, true, arg_1.c.x), vec4<bool>(arg_1.a.c.x, arg_1.a.c.x, false, arg_1.b.d)), arg_1.c.x)), arg_1.c.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(149f, _wgslsmith_f_op_f32(-arg_1.a.b.a.x), all(select(vec4<bool>(false, false, var_1.x, true), var_1, var_1.x))))));
    var var_3 = any(select(vec3<bool>(func_3().x, _wgslsmith_sub_i32(arg_1.a.a, 44825i) <= (i32(-1i) * -1i), any(!vec4<bool>(true, false, arg_1.a.c.x, true))), select(vec3<bool>(select(var_1.x, true, true), var_1.x, arg_1.a.b.b && var_1.x), select(vec3<bool>(true, true, arg_1.b.b.b), select(arg_1.a.c, vec3<bool>(arg_1.b.e, var_1.x, arg_1.b.d), vec3<bool>(arg_1.b.d, var_1.x, false)), !vec3<bool>(var_1.x, false, true)), false), vec3<bool>(arg_1.c.x, !var_1.x, true)));
    var_3 = !arg_1.b.e & any(arg_1.a.c);
    return select(false, func_2(var_2, arg_1.a.a), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(false | !func_5(_wgslsmith_f_op_f32(-538f * -774f), func_1(Struct_5(Struct_4(Struct_2(u_input.e, Struct_1(vec2<f32>(-465f, -223f), false), vec3<bool>(false, true, false), false, true), Struct_2(-17446i, Struct_1(vec2<f32>(-712f, -685f), false), vec3<bool>(true, false, true), true, false), vec2<bool>(false, true), 2147483647i, u_input.d.x), Struct_4(Struct_2(-727i, Struct_1(vec2<f32>(-490f, 109f), false), vec3<bool>(false, true, true), false, false), Struct_2(u_input.e, Struct_1(vec2<f32>(985f, -566f), false), vec3<bool>(true, true, false), false, true), vec2<bool>(true, true), 62860i, u_input.b), Struct_4(Struct_2(u_input.e, Struct_1(vec2<f32>(-1042f, -117f), false), vec3<bool>(true, true, true), false, true), Struct_2(u_input.e, Struct_1(vec2<f32>(-1000f, 363f), false), vec3<bool>(false, false, true), false, false), vec2<bool>(true, true), u_input.e, 1u)), u_input.e, Struct_2(u_input.e, Struct_1(vec2<f32>(1000f, -124f), true), vec3<bool>(false, true, true), true, false), Struct_1(vec2<f32>(1321f, -680f), true)), 4294967295u, _wgslsmith_clamp_i32(u_input.e, 2147483647i, u_input.e)));
    var var_1 = 4294967295u;
    var_1 = 41401u;
    var var_2 = _wgslsmith_mod_vec4_u32(((firstTrailingBit(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 34506u)) >> (vec4<u32>(26992u, 1u, u_input.d.x, 1u) % vec4<u32>(32u))) & min(~vec4<u32>(u_input.d.x, 4294967295u, u_input.b, 25937u), select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b), vec4<u32>(37321u, u_input.b, u_input.a.x, u_input.a.x), vec4<bool>(var_0, var_0, true, var_0)))) ^ firstLeadingBit((vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.a.x) << (vec4<u32>(34214u, 52913u, 47159u, u_input.a.x) % vec4<u32>(32u))) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 68102u, 1u), vec4<u32>(1u, 1u, 1u, 82199u))), ~((vec4<u32>(u_input.d.x, 31051u, u_input.a.x, u_input.a.x) ^ ~vec4<u32>(u_input.b, 21953u, 0u, u_input.d.x)) & firstLeadingBit(vec4<u32>(29754u, u_input.a.x, 4294967295u, u_input.a.x))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(809f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-875f + func_1(Struct_5(Struct_4(Struct_2(u_input.e, Struct_1(vec2<f32>(1984f, -1182f), false), vec3<bool>(true, false, true), var_0, true), Struct_2(u_input.c, Struct_1(vec2<f32>(1458f, 1130f), var_0), vec3<bool>(true, var_0, false), var_0, var_0), vec2<bool>(var_0, false), 2147483647i, 0u), Struct_4(Struct_2(1665i, Struct_1(vec2<f32>(-505f, -297f), true), vec3<bool>(true, true, var_0), false, true), Struct_2(u_input.c, Struct_1(vec2<f32>(930f, -1000f), true), vec3<bool>(false, var_0, true), var_0, var_0), vec2<bool>(var_0, true), -25289i, 56721u), Struct_4(Struct_2(-1i, Struct_1(vec2<f32>(-1041f, -1000f), false), vec3<bool>(var_0, false, false), var_0, true), Struct_2(u_input.e, Struct_1(vec2<f32>(1395f, 1406f), var_0), vec3<bool>(var_0, true, var_0), var_0, false), vec2<bool>(true, false), u_input.e, u_input.d.x)), u_input.e, Struct_2(0i, Struct_1(vec2<f32>(-345f, 112f), var_0), vec3<bool>(false, false, var_0), var_0, var_0), Struct_1(vec2<f32>(-1427f, 419f), false)).a.b.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(269f))))), vec4<bool>(!(!(var_0 || var_0)), var_0, all(vec2<bool>(false, var_0)) || var_0, true), true);
    var var_4 = vec2<i32>(0i, u_input.e >> (abs(_wgslsmith_div_u32(var_2.x, 0u)) % 32u)) << ((vec2<u32>(27729u, var_2.x) ^ vec2<u32>(~u_input.a.x << (countOneBits(21600u) % 32u), 27856u)) % vec2<u32>(32u));
    let var_5 = u_input.c;
    var_2 = ~(~vec4<u32>(1u, ~4294967295u, 23627u, ~countOneBits(9999u)));
    var_1 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b | reverseBits(_wgslsmith_div_u32(10006u, var_2.x)), _wgslsmith_mod_u32(~_wgslsmith_add_u32(var_2.x, 1u), reverseBits(var_2.x)), _wgslsmith_sub_u32(~0u, 1u)), ~(~select(_wgslsmith_clamp_u32(var_2.x, u_input.b, var_2.x), 1u, true)), ~26334i, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(func_4(vec2<bool>(false, var_3.b.x), Struct_4(Struct_2(2147483647i, Struct_1(vec2<f32>(var_3.a, var_3.a), var_3.b.x), var_3.b.xzw, false, true), Struct_2(var_5, Struct_1(vec2<f32>(1206f, var_3.a), true), vec3<bool>(false, true, var_0), true, var_3.b.x), vec2<bool>(false, var_0), -1i, var_2.x)).b.b.a.x)))), _wgslsmith_f_op_f32(ceil(-349f)), 338f), i32(-1i) * -1i);
}

