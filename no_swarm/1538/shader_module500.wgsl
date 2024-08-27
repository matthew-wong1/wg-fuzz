struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> vec2<bool> {
    let var_0 = arg_1.b.x;
    let var_1 = any(select(select(arg_1.b, vec4<bool>(!arg_3.x, true, all(vec2<bool>(false, false)), any(arg_1.b)), vec4<bool>(false, all(vec2<bool>(arg_1.b.x, var_0)), false || arg_3.x, arg_1.c)), !select(arg_1.b, !arg_1.b, -769f == arg_1.a), !arg_1.b));
    var var_2 = true;
    let var_3 = _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.c.yz >> (u_input.c.ww % vec2<u32>(32u)), min(vec2<u32>(u_input.c.x, arg_2), u_input.c.yw)), abs(~vec2<u32>(1u, 0u))) | u_input.c.yx;
    let var_4 = arg_1;
    return select(vec2<bool>(false, var_1), vec2<bool>(!any(vec3<bool>(arg_3.x, true, true)), select(true, any(select(arg_1.b.xxy, var_4.b.yww, true)), !any(arg_1.b.zx))), !arg_3.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a, arg_0.b, !arg_0.c, _wgslsmith_mult_i32(u_input.a, -(~_wgslsmith_mult_i32(u_input.a, 1i))));
    var var_1 = select(!func_3(~4294967295u, arg_0, ~abs(u_input.c.x), vec2<bool>(all(arg_0.b.xw), true)), arg_0.b.ww, false);
    var_1 = vec2<bool>(var_1.x, true);
    var_1 = !vec2<bool>(true && any(vec2<bool>(arg_0.b.x, false)), !all(arg_0.b) || true);
    var var_2 = func_3(u_input.c.x, var_0, ~_wgslsmith_sub_u32(4294967295u, ~(u_input.c.x >> (u_input.c.x % 32u))), !var_0.b.xx);
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -2053f;
    let var_1 = func_2(Struct_1(var_0, !(!func_2(Struct_1(arg_1.a, arg_1.b, false, -25593i)).b), select(true, any(vec2<bool>(false, arg_0.c)), !arg_1.b.x), -21957i));
    var var_2 = vec4<i32>(u_input.a, _wgslsmith_mult_i32(1i, select(~(~arg_1.d), var_1.d, !any(arg_0.b))), -28631i, abs(0i));
    let var_3 = !all(func_3(3034u, Struct_1(_wgslsmith_f_op_f32(-var_1.a), vec4<bool>(var_1.b.x, var_1.b.x, false, true), false, _wgslsmith_mult_i32(arg_1.d, var_1.d)), select(44775u, u_input.c.x, false) >> (~u_input.c.x % 32u), select(vec2<bool>(false, arg_1.c), arg_1.b.xz, vec2<bool>(arg_0.c, false))));
    var var_4 = firstLeadingBit(-(~(-1i)));
    return Struct_1(_wgslsmith_f_op_f32(-arg_1.a), select(select(select(func_2(arg_1).b, vec4<bool>(false, arg_0.c, true, true), arg_1.b), vec4<bool>(false, !arg_0.b.x, true, true), (u_input.b >= 0u) || !var_1.c), vec4<bool>(any(!vec4<bool>(false, true, arg_1.b.x, false)), false, all(vec3<bool>(true, false, false)), all(!arg_0.b.zz)), select(arg_0.b, arg_0.b, all(!arg_1.b.zwy))), true, -41050i);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>) -> f32 {
    var var_0 = 4641u;
    var var_1 = arg_0;
    var_0 = 1u;
    var var_2 = vec3<bool>(true, arg_1.x != true, arg_0.c);
    var_2 = !vec3<bool>(false, all(func_4(Struct_1(-2344f, vec4<bool>(arg_0.c, false, true, true), arg_0.b.x, -5694i), Struct_1(1108f, vec4<bool>(var_1.c, true, arg_0.c, false), false, arg_2.x)).b.zwz) | all(arg_0.b), func_2(func_4(Struct_1(1120f, vec4<bool>(var_2.x, var_1.b.x, var_1.c, false), false, 0i), arg_0)).c);
    return _wgslsmith_f_op_f32(-1477f + arg_0.a);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = func_4(arg_0, arg_1);
    let var_1 = (~firstTrailingBit(vec3<i32>(2147483647i, arg_1.d, 2147483647i)) >> (vec3<u32>(~u_input.b, firstLeadingBit(1u), ~u_input.c.x) % vec3<u32>(32u))) | firstTrailingBit(arg_3);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(-arg_2.a));
    var var_3 = true;
    var var_4 = func_2(func_4(Struct_1(var_0.a, !(!arg_2.b), var_0.b.x, u_input.a ^ countOneBits(u_input.a)), Struct_1(-2054f, arg_2.b, any(select(vec2<bool>(false, arg_0.b.x), vec2<bool>(arg_1.c, arg_2.b.x), arg_2.b.x)), max(-1i, arg_2.d | -1i))));
    return func_4(func_4(func_4(Struct_1(var_2.x, vec4<bool>(false, arg_2.c, arg_2.c, var_0.c), false & arg_2.c, 1i), Struct_1(-421f, select(vec4<bool>(true, var_0.b.x, var_0.b.x, false), vec4<bool>(true, true, var_4.c, var_0.c), false), func_2(Struct_1(-400f, arg_0.b, true, -2147483647i)).b.x, var_4.d)), Struct_1(var_4.a, vec4<bool>(1i > arg_1.d, !arg_0.c, !var_4.c, true), true, 0i)), arg_2);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_6(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), vec4<bool>(false, any(vec4<bool>(false, false, true, true)), false, true), any(vec4<bool>(true, true, true, true)), 38518i), Struct_1(_wgslsmith_f_op_f32(func_5(func_4(func_2(Struct_1(1237f, vec4<bool>(true, false, true, true), false, u_input.a)), func_2(Struct_1(arg_0, vec4<bool>(false, true, false, true), false, 5895i))), vec3<bool>(true, false, true), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(-15430i, u_input.a), vec2<i32>(6967i, u_input.a), vec2<bool>(false, false)), vec2<i32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(2147483647i, 1i))))), !func_4(func_2(Struct_1(670f, vec4<bool>(false, true, true, false), true, 0i)), func_2(Struct_1(arg_0, vec4<bool>(false, false, false, true), false, u_input.a))).b, _wgslsmith_f_op_f32(-arg_0) > _wgslsmith_f_op_f32(-1244f - _wgslsmith_f_op_f32(arg_0 * arg_0)), abs(firstTrailingBit(-1i))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -344f), select(vec4<bool>(false, true, all(vec4<bool>(false, false, false, true)), u_input.a >= u_input.a), vec4<bool>(22875u >= u_input.c.x, true, true, true), true), all(vec3<bool>(false, true, select(true, false, false))), max(u_input.a | u_input.a, _wgslsmith_sub_i32(-1i, 29704i)) | -2147483647i), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -1i, i32(-1i) * -10829i, ~0i), ~firstLeadingBit(vec3<i32>(-8182i, u_input.a, u_input.a)), min(~vec3<i32>(0i, u_input.a, -39446i), ~vec3<i32>(-1i, u_input.a, 0i))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(-43961i, 2147483647i, u_input.a)), -vec3<i32>(u_input.a, 2147483647i, u_input.a)), (vec3<i32>(u_input.a, -2147483647i, 21071i) ^ vec3<i32>(u_input.a, u_input.a, u_input.a)) >> (~u_input.c.wyw % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(0i, 54360i, -2147483647i)), abs(vec3<i32>(-2147483647i, u_input.a, -31395i))) << (vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), u_input.b) % vec3<u32>(32u))));
    var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-arg_0)) * 407f), select(vec4<bool>(true, true, true, true), func_4(func_4(Struct_1(159f, var_0.b, true, -32292i), Struct_1(201f, vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), true, var_0.d)), func_2(Struct_1(-258f, vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.c), var_0.b.x, var_0.d))).b, select(vec4<bool>(false, true, var_0.c, var_0.b.x), vec4<bool>(var_0.c, false, var_0.b.x, false), true)), true, u_input.a));
    var var_1 = func_2(Struct_1(-576f, select(vec4<bool>(true, all(var_0.b), true, var_0.b.x), select(!vec4<bool>(true, var_0.c, false, var_0.c), select(vec4<bool>(var_0.c, false, var_0.c, var_0.c), vec4<bool>(var_0.c, true, var_0.b.x, var_0.b.x), var_0.b), !var_0.b.x), !any(vec2<bool>(var_0.b.x, var_0.c))), !((u_input.a < 1i) || true), 1i));
    let var_2 = vec3<i32>((abs(-56520i) & ~_wgslsmith_mult_i32(19954i, var_1.d)) | 3616i, var_0.d, func_2(func_2(func_2(Struct_1(-438f, var_1.b, false, u_input.a)))).d);
    var_0 = func_6(func_4(func_4(func_4(Struct_1(arg_0, vec4<bool>(true, true, var_1.c, var_0.b.x), var_0.c, 1i), func_6(Struct_1(arg_0, vec4<bool>(var_0.b.x, var_0.c, false, true), true, var_0.d), Struct_1(-1000f, vec4<bool>(var_1.b.x, true, false, var_1.c), false, -1i), Struct_1(119f, vec4<bool>(var_1.b.x, true, var_0.c, true), true, -1i), vec3<i32>(13868i, var_0.d, -23629i))), Struct_1(var_0.a, var_1.b, true, -1i)), Struct_1(_wgslsmith_f_op_f32(-1995f * -1433f), var_0.b, true, max(8048i, ~var_0.d))), func_6(Struct_1(var_1.a, select(func_2(Struct_1(2061f, vec4<bool>(true, var_1.c, var_1.c, true), var_1.b.x, var_0.d)).b, func_2(Struct_1(arg_0, var_0.b, var_0.c, u_input.a)).b, var_1.c), true, 0i), func_2(Struct_1(355f, vec4<bool>(false, var_1.b.x, var_1.b.x, false), any(vec3<bool>(var_0.c, var_0.c, false)), -var_1.d)), func_2(Struct_1(983f, var_0.b, var_0.b.x, _wgslsmith_mod_i32(u_input.a, var_0.d))), var_2), func_4(func_4(func_4(func_6(Struct_1(var_0.a, vec4<bool>(false, false, var_1.b.x, var_0.b.x), true, var_0.d), Struct_1(646f, vec4<bool>(true, false, false, var_1.b.x), var_1.b.x, 31887i), Struct_1(arg_0, vec4<bool>(var_0.c, var_1.c, var_0.b.x, true), var_0.b.x, var_1.d), vec3<i32>(u_input.a, 40519i, 25279i)), func_4(Struct_1(1434f, var_0.b, true, u_input.a), Struct_1(arg_0, var_0.b, true, var_1.d))), func_6(Struct_1(var_0.a, var_0.b, var_0.b.x, var_1.d), Struct_1(arg_0, var_1.b, false, u_input.a), Struct_1(arg_0, vec4<bool>(var_0.b.x, false, var_1.b.x, var_0.b.x), true, -2147483647i), var_2)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-988f, var_1.a)), var_1.b, any(vec2<bool>(var_1.b.x, var_1.b.x)), u_input.a)), ~firstTrailingBit(~var_2));
    return func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1007f)))), !vec4<bool>(func_4(Struct_1(arg_0, vec4<bool>(true, false, true, false), true, 0i), Struct_1(var_0.a, vec4<bool>(var_0.b.x, true, false, var_1.b.x), var_0.c, 1i)).c, u_input.a >= var_1.d, var_0.c, var_1.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) >= _wgslsmith_f_op_f32(-var_1.a), -24709i << (max(0u, 1u) % 32u)));
}

fn func_7(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = func_6(Struct_1(1060f, select(vec4<bool>(arg_0.x | false, false, true, select(true, arg_0.x, arg_2.b.x)), vec4<bool>(true, !arg_2.c, func_3(0u, Struct_1(-1539f, vec4<bool>(arg_2.c, arg_2.b.x, false, true), false, -2147483647i), 3841u, arg_2.b.zz).x, true), true), true, -func_2(arg_2).d), func_6(Struct_1(-581f, vec4<bool>(true, true, false, !arg_0.x), any(vec2<bool>(arg_2.c, true)), max(-2147483647i, func_6(arg_2, arg_2, Struct_1(-1747f, vec4<bool>(true, arg_0.x, true, true), arg_0.x, arg_1), vec3<i32>(u_input.a, 12107i, 9149i)).d)), arg_2, arg_2, vec3<i32>(~arg_2.d, firstTrailingBit(~(-1i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_2.d, arg_2.d, -1i, arg_1), firstLeadingBit(vec4<i32>(arg_2.d, u_input.a, -96269i, arg_2.d))))), Struct_1(arg_2.a, arg_2.b, false && func_2(Struct_1(-426f, arg_2.b, arg_2.b.x, -8079i)).b.x, _wgslsmith_mod_i32(~2147483647i, func_1(-1000f).d) | (func_4(arg_2, arg_2).d ^ -2147483647i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, -2147483647i), ~countOneBits(vec2<i32>(u_input.a, arg_2.d))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(select(811i, arg_1, true), arg_2.d), 9223i), _wgslsmith_div_i32(-14022i, i32(-1i) * -2147483647i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1031f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.a)) + arg_2.a))))));
    let var_2 = func_6(arg_2, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.a, 1000f)) * -1844f))), vec4<bool>(false, u_input.b < 24787u, any(vec3<bool>(false, true, arg_0.x)), false), all(select(!vec3<bool>(var_0.b.x, arg_2.c, false), var_0.b.yzy, var_0.b.wzz)), 1i), var_0, vec3<i32>(arg_2.d, i32(-1i) * -58340i, -65401i) & abs(~vec3<i32>(-25619i, u_input.a, arg_2.d) & _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, var_0.d, arg_1), vec3<i32>(-57259i, 0i, var_0.d), vec3<i32>(65407i, 27718i, 0i))));
    var var_3 = countOneBits(max(~vec4<i32>(arg_1, 19908i, -2147483647i, -52582i), select(vec4<i32>(-2147483647i, -1i, 0i, 73369i), vec4<i32>(var_2.d, var_0.d, var_0.d, u_input.a), true)) ^ firstLeadingBit(vec4<i32>(arg_2.d, var_2.d, -19937i, 0i) << (u_input.c % vec4<u32>(32u)))) ^ vec4<i32>(-27178i, ~firstLeadingBit(i32(-1i) * -1i), arg_1, u_input.a);
    let var_4 = var_3.x;
    return vec4<i32>(-2147483647i, _wgslsmith_mult_i32(arg_1, ~(_wgslsmith_dot_vec3_i32(var_3.xwz, var_3.wyx) << (_wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.c.ww) % 32u))), func_4(Struct_1(975f, !func_4(var_2, Struct_1(1739f, var_2.b, var_0.b.x, var_3.x)).b, true, _wgslsmith_add_i32(var_0.d, var_2.d)), func_6(Struct_1(-452f, select(arg_2.b, var_0.b, vec4<bool>(false, arg_0.x, arg_0.x, true)), var_0.c, var_0.d), Struct_1(_wgslsmith_div_f32(var_1.x, var_0.a), select(vec4<bool>(false, false, var_0.c, false), var_0.b, arg_2.c), var_0.c, -37386i), var_2, -var_3.www ^ vec3<i32>(42880i, -10469i, var_2.d))).d, var_3.x);
}

fn func_8(arg_0: f32, arg_1: vec4<i32>, arg_2: u32) -> f32 {
    let var_0 = 21849i;
    var var_1 = Struct_1(arg_0, func_4(func_6(func_1(-1407f), Struct_1(arg_0, vec4<bool>(false, false, false, false), true, u_input.a), func_2(Struct_1(2583f, vec4<bool>(true, true, false, false), true, -27554i)), arg_1.xyx), func_6(func_1(-1025f), func_4(func_2(Struct_1(103f, vec4<bool>(false, true, true, true), false, -1i)), Struct_1(-642f, vec4<bool>(false, true, true, true), false, 2147483647i)), Struct_1(-136f, select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true), true, _wgslsmith_div_i32(arg_1.x, -2147483647i)), vec3<i32>(46910i, 0i, abs(-16262i)))).b, true & any(func_6(func_2(Struct_1(arg_0, vec4<bool>(true, false, true, false), true, 2147483647i)), func_4(Struct_1(989f, vec4<bool>(true, true, true, true), true, var_0), Struct_1(711f, vec4<bool>(true, true, false, false), false, -5511i)), Struct_1(arg_0, vec4<bool>(true, false, false, true), true, var_0), countOneBits(vec3<i32>(4595i, arg_1.x, -27133i))).b), -(func_6(func_6(Struct_1(-160f, vec4<bool>(false, false, false, false), true, 35330i), Struct_1(arg_0, vec4<bool>(true, false, true, false), true, arg_1.x), Struct_1(642f, vec4<bool>(true, false, true, true), false, var_0), arg_1.wzx), func_2(Struct_1(-3554f, vec4<bool>(true, false, false, false), true, -1i)), func_4(Struct_1(2413f, vec4<bool>(false, false, true, false), true, -8709i), Struct_1(arg_0, vec4<bool>(true, false, false, true), false, arg_1.x)), vec3<i32>(arg_1.x, 0i, -1i)).d >> (0u % 32u)));
    let var_2 = func_2(func_6(func_1(581f), func_1(_wgslsmith_f_op_f32(-func_2(Struct_1(975f, vec4<bool>(false, var_1.c, var_1.c, true), var_1.b.x, 0i)).a)), Struct_1(arg_0, vec4<bool>(select(var_1.c, true, var_1.c), true, func_6(Struct_1(var_1.a, var_1.b, var_1.c, u_input.a), Struct_1(629f, vec4<bool>(var_1.b.x, false, true, true), var_1.c, 15271i), Struct_1(-981f, vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false), true, -41807i), arg_1.wyy).b.x, false & var_1.c), !(8073u != arg_2), (u_input.a & 2147483647i) ^ _wgslsmith_add_i32(u_input.a, -2147483647i)), arg_1.yxw));
    var var_3 = var_2;
    var var_4 = func_2(var_2);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1485f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - 1373f)) + 547f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_8(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-514f)) - _wgslsmith_f_op_f32(204f - _wgslsmith_f_op_f32(ceil(2023f)))))), max(vec4<i32>(~u_input.a, -2147483647i, 1i, u_input.a << (u_input.c.x % 32u)) ^ func_7(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), u_input.a, func_1(528f)), _wgslsmith_mod_vec4_i32(vec4<i32>(-7575i, u_input.a, _wgslsmith_sub_i32(-2147483647i, 0i), func_4(Struct_1(-255f, vec4<bool>(false, false, false, true), false, -69325i), Struct_1(-133f, vec4<bool>(false, true, true, true), true, u_input.a)).d), _wgslsmith_div_vec4_i32(~vec4<i32>(-24318i, u_input.a, 2147483647i, u_input.a), -vec4<i32>(-1i, u_input.a, -1i, 2147483647i)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.c.xww, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 1u), _wgslsmith_add_vec3_u32(u_input.c.xzw, u_input.c.yxx))), _wgslsmith_mult_u32(firstTrailingBit(u_input.b), u_input.b))));
    var var_1 = vec3<bool>(func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(25084u, u_input.b), ~_wgslsmith_mult_vec2_u32(u_input.c.yz, vec2<u32>(u_input.b, 22700u))), Struct_1(func_6(func_1(var_0), Struct_1(var_0, vec4<bool>(true, false, false, true), true, -1i), func_2(Struct_1(var_0, vec4<bool>(false, false, false, true), true, 0i)), -vec3<i32>(u_input.a, u_input.a, u_input.a)).a, vec4<bool>(true, true, true, true), !(var_0 < var_0), u_input.a), max(~_wgslsmith_dot_vec3_u32(u_input.c.xwx, vec3<u32>(1u, u_input.c.x, u_input.c.x)), 1u), vec2<bool>(true, true)).x, true, !all(vec3<bool>(true, true, all(vec4<bool>(true, false, false, true)))));
    var_1 = vec3<bool>(select(false, var_1.x, func_6(Struct_1(_wgslsmith_f_op_f32(-var_0), func_4(Struct_1(661f, vec4<bool>(var_1.x, var_1.x, true, false), var_1.x, u_input.a), Struct_1(var_0, vec4<bool>(false, false, var_1.x, true), var_1.x, 2147483647i)).b, !var_1.x, u_input.a), Struct_1(func_1(var_0).a, func_6(Struct_1(-225f, vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), true, 0i), Struct_1(var_0, vec4<bool>(true, false, true, false), var_1.x, u_input.a), Struct_1(var_0, vec4<bool>(var_1.x, false, true, var_1.x), var_1.x, 2147483647i), vec3<i32>(2147483647i, -7399i, 0i)).b, true, -1i), func_6(func_4(Struct_1(var_0, vec4<bool>(false, var_1.x, true, true), false, -2147483647i), Struct_1(-1000f, vec4<bool>(false, var_1.x, false, false), var_1.x, u_input.a)), Struct_1(-2260f, vec4<bool>(var_1.x, var_1.x, false, true), var_1.x, 1i), func_1(542f), vec3<i32>(1i, 20321i, 879i)), _wgslsmith_sub_vec3_i32(max(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 25163i, u_input.a)), vec3<i32>(1i, 17500i, u_input.a) & vec3<i32>(1i, -3108i, 48601i))).b.x), (var_1.x || var_1.x) && var_1.x, true);
    var var_2 = u_input.c;
    var_2 = ~vec4<u32>(40907u, _wgslsmith_div_u32(4294967295u, max(5205u, var_2.x) & var_2.x), ~min(45781u, _wgslsmith_sub_u32(37938u, u_input.c.x)), select(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 0u), 11727u), ~u_input.c.x, false));
    let var_3 = func_1(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(func_6(Struct_1(-371f, vec4<bool>(var_1.x, var_1.x, var_1.x, true), var_1.x, -24112i), Struct_1(-787f, vec4<bool>(var_1.x, false, true, var_1.x), var_1.x, 2147483647i), Struct_1(var_0, vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x, u_input.a), vec3<i32>(u_input.a, 1i, u_input.a)).a))))));
    var var_4 = reverseBits(_wgslsmith_mult_i32(abs(0i), _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(19277i, -2147483647i), vec2<i32>(var_3.d, var_3.d)), ~(-3669i))));
    var_1 = !vec3<bool>(false, func_2(func_4(func_6(var_3, Struct_1(-922f, var_3.b, var_3.c, var_3.d), Struct_1(-1085f, var_3.b, var_1.x, 1i), vec3<i32>(18699i, u_input.a, var_3.d)), Struct_1(var_3.a, vec4<bool>(var_1.x, true, var_1.x, true), true, 1i))).c, any(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-1310f, u_input.c.yy & (var_2.zw & var_2.zz), _wgslsmith_dot_vec4_u32(u_input.c, u_input.c));
}

