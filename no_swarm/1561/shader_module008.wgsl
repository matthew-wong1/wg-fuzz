struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    let var_0 = all(select(vec4<bool>(true, any(select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, true, true, false))), true, !(u_input.c.x < u_input.c.x)), arg_0, arg_0.x));
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~u_input.b), u_input.d.zw, vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(u_input.d.ywy, vec3<u32>(u_input.d.x, u_input.a, 48443u)))), vec2<u32>(u_input.a, 118604u) >> (u_input.b % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec4_u32(~(~u_input.d), firstLeadingBit(vec4<u32>(22994u, u_input.a, 1u, u_input.b.x)) & (u_input.d | u_input.d)), select(47044u, ~(~u_input.d.x), true)));
    let var_2 = Struct_1(min(_wgslsmith_mult_vec3_i32(firstTrailingBit(-vec3<i32>(39402i, 17423i, 31296i)), vec3<i32>(-24928i, u_input.c.x, u_input.c.x) ^ vec3<i32>(-2147483647i, u_input.c.x, -1i)), abs(vec3<i32>(abs(1i), -u_input.c.x, firstLeadingBit(u_input.c.x)))), 1u <= u_input.b.x, ~_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.d.yzy, vec3<u32>(4294967295u, 74164u, u_input.d.x)), vec3<u32>(~var_1, _wgslsmith_div_u32(0u, 27128u), var_1 << (u_input.d.x % 32u))), !arg_0.ww);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -398f);
    let var_4 = !vec4<bool>(false, false, true, !(!(-2147483647i <= var_2.a.x)));
    return 2147483647i;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(vec3<i32>(u_input.c.x ^ u_input.c.x, max(arg_1.a.x, -1733i), firstLeadingBit(1i)) << (~(u_input.d.wzy >> (vec3<u32>(64979u, 4294967295u, arg_1.c) % vec3<u32>(32u))) % vec3<u32>(32u)), ~_wgslsmith_mult_i32(1i, arg_0) >= func_3(select(vec4<bool>(false, arg_1.b, true, arg_2.x), vec4<bool>(arg_1.d.x, false, arg_1.b, arg_1.b), true)), ~u_input.a, select(select(!vec2<bool>(true, arg_1.b), vec2<bool>(true, true), arg_2), !select(vec2<bool>(true, false), vec2<bool>(false, arg_2.x), arg_1.d), select(vec2<bool>(arg_2.x, arg_2.x), arg_2, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1535f, -1000f, 1000f, 1000f)))))), -((arg_1.a.x << (u_input.b.x % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, 1u, arg_1.c), u_input.d) % 32u)) | u_input.c.x, Struct_1(arg_1.a, true, ~(~max(0u, 27138u)), arg_2), arg_0);
    let var_1 = Struct_2(Struct_1(min(~arg_1.a, var_0.d.a), true, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~u_input.d, _wgslsmith_mult_vec4_u32(vec4<u32>(45505u, 0u, arg_1.c, u_input.a), vec4<u32>(arg_1.c, 4294967295u, var_0.a.c, 4294967295u))), u_input.d), vec2<bool>(67921u != _wgslsmith_dot_vec4_u32(u_input.d, u_input.d), !arg_1.b & true)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))))), 13898i >> (u_input.d.x % 32u), Struct_1(~vec3<i32>(_wgslsmith_mod_i32(var_0.e, -13658i), select(var_0.c, var_0.c, arg_1.b), firstTrailingBit(0i)), (_wgslsmith_clamp_u32(var_0.a.c, u_input.b.x, var_0.a.c) >> (~0u % 32u)) == countOneBits(abs(u_input.a)), ~(arg_1.c & ~u_input.b.x), select(!(!arg_2), arg_2, true)), u_input.c.x);
    var var_2 = ~(~firstTrailingBit(firstLeadingBit(~u_input.d.ywz)));
    var_2 = u_input.d.yyw;
    let var_3 = vec3<bool>(true, arg_2.x, all(!(!vec4<bool>(true, var_1.d.b, true, true))) || false);
    return _wgslsmith_sub_vec3_i32(min(firstLeadingBit(_wgslsmith_sub_vec3_i32(arg_1.a >> (vec3<u32>(54820u, u_input.a, 4294967295u) % vec3<u32>(32u)), var_1.a.a)), -(~firstTrailingBit(var_0.d.a))), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.a.x & arg_1.a.x, var_1.d.a.x, 8755i), vec3<i32>(firstLeadingBit(29757i), 1i, var_1.c)) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 0u, arg_1.c), vec3<u32>(var_1.d.c, 27447u, 1u) ^ vec3<u32>(55676u, 0u, 53715u)) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = u_input.c.x;
    var var_1 = Struct_2(Struct_1(select(vec3<i32>(max(26817i, 0i), ~arg_1, arg_2 ^ arg_0.a.x), ~max(vec3<i32>(28344i, -1i, u_input.c.x), vec3<i32>(-1i, arg_1, 6521i)), false), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_0.a, vec3<i32>(2147483647i, u_input.c.x, -46909i)), 43549i) > _wgslsmith_clamp_i32(_wgslsmith_mult_i32(2147483647i, 1i), i32(-1i) * -19587i, u_input.c.x), 4294967295u, select(vec2<bool>(arg_0.d.x & false, arg_0.b), !arg_0.d, select(select(vec2<bool>(arg_0.b, arg_0.d.x), vec2<bool>(false, arg_0.b), arg_0.b), arg_0.d, arg_0.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-392f, -1367f, 874f, -516f)))), arg_0.a.x, Struct_1(abs(arg_0.a) & arg_0.a, any(!arg_0.d), select(arg_0.c, ~u_input.a, !(true != arg_0.b)), !vec2<bool>(all(vec3<bool>(false, false, false)), false)), ~(-35182i));
    let var_2 = all(select(!arg_0.d, !select(!vec2<bool>(false, arg_0.d.x), arg_0.d, arg_0.d), any(arg_0.d)));
    var_0 = var_1.e;
    var var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(20974i, _wgslsmith_mult_i32(arg_0.a.x, max(arg_1, arg_1)), u_input.c.x), firstTrailingBit(var_1.a.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -abs(var_1.a.a), arg_0.a));
    return Struct_1(vec3<i32>(_wgslsmith_sub_i32(var_1.c ^ reverseBits(arg_0.a.x), 1i), var_1.e, abs(arg_1 ^ _wgslsmith_div_i32(10468i, arg_2))), reverseBits(select(25769u, var_1.a.c, arg_0.b) >> (1u % 32u)) == ~(~52858u), ~4294967295u, select(!select(vec2<bool>(true, true), select(arg_0.d, vec2<bool>(false, false), var_1.d.d), vec2<bool>(var_1.d.d.x, arg_0.b)), arg_0.d, select(!arg_0.d, select(!var_1.d.d, select(arg_0.d, var_1.d.d, var_2), select(vec2<bool>(true, false), vec2<bool>(false, true), var_1.a.d)), !(false && var_2))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(Struct_1(func_2(91005i << (u_input.b.x % 32u), Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, 17205i), u_input.a >= u_input.d.x, ~0u, select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true))), true, 15856u, vec2<bool>(any(vec2<bool>(false, false)), !all(vec3<bool>(true, true, false)))), ~(-u_input.c.x), firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 4566i, u_input.c.x) << (vec4<u32>(u_input.d.x, 23229u, 35406u, 6951u) % vec4<u32>(32u)), max(vec4<i32>(1i, u_input.c.x, u_input.c.x, -24688i), vec4<i32>(u_input.c.x, -1i, -9144i, u_input.c.x))), u_input.c.x)));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1683f, _wgslsmith_f_op_f32(f32(-1f) * -574f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1654f, -2366f)) + _wgslsmith_f_op_f32(trunc(-420f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2246f - 196f), _wgslsmith_f_op_f32(round(211f)), _wgslsmith_f_op_f32(step(-1000f, 162f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, -726f, 498f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-422f, 367f, var_1.x)))))))));
    var var_2 = var_0.d.x;
    let var_3 = select(var_0.a.x, u_input.c.x >> (var_0.c % 32u), (max(u_input.b.x, abs(u_input.d.x)) << (0u % 32u)) >= _wgslsmith_sub_u32(~firstTrailingBit(u_input.d.x), _wgslsmith_mult_u32(42360u, max(var_0.c, 4294967295u))));
    return Struct_2(func_4(Struct_1(~vec3<i32>(u_input.c.x, u_input.c.x, -1i), false, u_input.a << (u_input.b.x % 32u), var_0.d), u_input.c.x, 0i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(336f, var_1.x, var_1.x, var_1.x)))))), func_2(abs(_wgslsmith_sub_i32(2147483647i, u_input.c.x)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, var_3, 39730i, var_3), vec4<i32>(-2147483647i, u_input.c.x, 28807i, 28695i)), var_0, vec2<bool>(true, true)).x, Struct_1(var_0.a, !var_0.b, ~0u, select(select(select(vec2<bool>(var_0.d.x, true), vec2<bool>(false, false), var_0.b), var_0.d, all(vec3<bool>(true, var_0.d.x, true))), vec2<bool>(true, false != var_0.d.x), select(vec2<bool>(var_0.d.x, var_0.b), vec2<bool>(var_0.b, var_0.d.x), vec2<bool>(var_0.d.x, false)))), var_3);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> vec4<bool> {
    let var_0 = all(select(!(!select(vec3<bool>(arg_1.d.d.x, true, arg_1.a.b), vec3<bool>(true, arg_1.d.d.x, true), arg_0.a.b)), vec3<bool>(!all(arg_0.a.d), all(vec3<bool>(true, true, true)), arg_0.d.b), vec3<bool>(true, select(arg_0.a.c >= arg_3, arg_1.d.d.x, arg_1.a.b | false), false)));
    var var_1 = arg_3;
    var_1 = 48694u;
    var var_2 = ~(~arg_0.a.c) <= arg_0.a.c;
    return vec4<bool>(var_0, !(!any(vec3<bool>(var_0, arg_0.a.b, arg_0.a.d.x))) & all(vec3<bool>(true, true, arg_1.a.d.x && arg_1.d.b)), any(!(!(!vec4<bool>(var_0, arg_1.d.b, true, false)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -reverseBits(u_input.c), u_input.c);
    let var_1 = vec4<u32>(~(~u_input.b.x), ~select(u_input.d.x, reverseBits(~u_input.b.x), all(vec4<bool>(true, true, false, true))), ~u_input.a, u_input.a);
    var var_2 = _wgslsmith_add_i32(24517i, u_input.c.x);
    let var_3 = func_5(func_1(), Struct_2(Struct_1((vec3<i32>(0i, var_0.x, var_0.x) >> (vec3<u32>(20615u, u_input.a, 19270u) % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(u_input.d.zxy, u_input.d.zxw) % vec3<u32>(32u)), func_4(Struct_1(vec3<i32>(u_input.c.x, -1i, var_0.x), false, var_1.x, vec2<bool>(true, true)), -44605i, 16119i).d.x != true, 6794u, vec2<bool>(true, func_1().d.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(582f)), _wgslsmith_f_op_f32(369f - 414f), 1050f, -2272f)), ~u_input.c.x, Struct_1(reverseBits(vec3<i32>(7349i, 2084i, var_0.x) << (vec3<u32>(var_1.x, 2882u, 0u) % vec3<u32>(32u))), select(any(vec2<bool>(false, false)), true, true), u_input.b.x, vec2<bool>(true, all(vec3<bool>(true, true, false)))), func_1().a.a.x), 44984u, u_input.b.x);
    var var_4 = -454f;
    let var_5 = func_1().d;
    let var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-595f * -110f), 265f) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1571f), _wgslsmith_f_op_f32(round(3225f)))) - vec2<f32>(_wgslsmith_f_op_f32(floor(-429f)), _wgslsmith_f_op_f32(f32(-1f) * -1791f))));
    var_2 = ~21368i;
    var_2 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, var_5.a, ~select(var_1, ~(~vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 46447u)), vec4<bool>(true, true, true, !var_5.b)));
}

