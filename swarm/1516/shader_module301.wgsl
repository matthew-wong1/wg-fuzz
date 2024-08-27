struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(520f - _wgslsmith_f_op_f32(round(arg_0))), Struct_1(vec3<bool>(any(vec3<bool>(false, arg_1.a.x, false)), true, any(vec4<bool>(false, arg_1.a.x, arg_1.a.x, arg_1.a.x)) & all(arg_1.a)), arg_1.c, arg_1.b), Struct_1(arg_1.a, vec4<i32>(min(arg_1.c.x, _wgslsmith_clamp_i32(-1i, 20095i, u_input.a)), 21879i, u_input.a, u_input.a), arg_1.c), arg_1.c.zw);
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1204f)) + -645f), Struct_1(vec3<bool>(true || all(vec3<bool>(false, false, true)), any(select(vec2<bool>(var_0.c.a.x, true), vec2<bool>(arg_1.a.x, var_0.c.a.x), vec2<bool>(var_0.b.a.x, true))), true), _wgslsmith_mod_vec4_i32(firstLeadingBit(arg_1.b), ~vec4<i32>(13676i, var_0.c.b.x, 11398i, 1i)), ~var_0.c.c), var_0.b, vec2<i32>(var_0.c.b.x, select(var_0.d.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.c.x, arg_1.b.x), vec2<i32>(var_0.d.x, 1i)), arg_1.a.x)));
    var_0 = Struct_2(arg_0, arg_1, arg_1, vec2<i32>(-1i) * -(var_0.c.c.yx << (_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 30809u)) % vec2<u32>(32u))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1111f - 365f) * _wgslsmith_f_op_f32(-arg_0))), -856f)), arg_1, Struct_1(var_0.c.a, _wgslsmith_mod_vec4_i32(arg_1.b, arg_1.b), vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -8742i, -var_0.d.x), -25248i, var_0.b.b.x, ~arg_1.c.x)), reverseBits(vec2<i32>(arg_1.c.x, 1i) | vec2<i32>(~var_0.d.x, firstTrailingBit(-1i))));
    let var_1 = vec3<u32>(~13443u, _wgslsmith_mod_u32(0u, 1u), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(50678u, 1u), vec2<u32>(76074u, 3317u), true) & vec2<u32>(0u, 1u), vec2<u32>(1u, 5011u)));
    return select(select(select(vec2<bool>(!arg_1.a.x, select(true, false, var_0.b.a.x)), vec2<bool>(arg_1.a.x, false), any(!vec3<bool>(false, arg_1.a.x, true))), select(select(vec2<bool>(false, arg_1.a.x), select(vec2<bool>(false, true), vec2<bool>(true, var_0.b.a.x), var_0.b.a.xx), var_0.c.a.xy), vec2<bool>(true, true), arg_1.b.x > _wgslsmith_dot_vec3_i32(vec3<i32>(-45388i, var_0.c.c.x, arg_1.c.x), vec3<i32>(var_0.d.x, 2147483647i, 1i))), ~(~var_1.x) < 11183u), select(!vec2<bool>(true, arg_1.a.x), !(!select(vec2<bool>(false, false), arg_1.a.zz, var_0.b.a.xy)), false), arg_1.a.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: i32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = ~(~reverseBits(select(vec4<u32>(arg_3.x, arg_3.x, 4294967295u, arg_3.x) << (vec4<u32>(arg_3.x, arg_3.x, arg_3.x, 32473u) % vec4<u32>(32u)), ~vec4<u32>(arg_3.x, 0u, arg_3.x, 4294967295u), !vec4<bool>(arg_0.b.a.x, true, false, arg_0.b.a.x))));
    let var_1 = Struct_3(Struct_1(vec3<bool>(arg_0.c.a.x, arg_0.b.a.x, arg_0.a <= _wgslsmith_f_op_f32(arg_0.a - 344f)), arg_0.b.b, min(countOneBits(arg_0.b.b), max(vec4<i32>(2147483647i, -4852i, -1i, u_input.a), _wgslsmith_div_vec4_i32(arg_0.b.b, arg_0.c.b)))), countOneBits(_wgslsmith_add_vec2_u32(min(select(vec2<u32>(80227u, arg_3.x), vec2<u32>(arg_3.x, 85649u), arg_0.b.a.xy), var_0.yx), ~vec2<u32>(arg_3.x, arg_3.x))), Struct_2(arg_0.a, arg_0.c, Struct_1(vec3<bool>(true, false, false), arg_0.b.b, _wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.a, -8058i, arg_0.b.c.x, 1i), arg_0.c.b, arg_0.b.a.x), max(vec4<i32>(0i, arg_1.x, arg_0.d.x, arg_0.c.c.x), arg_0.c.c))), vec2<i32>(-2147483647i, -65104i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1573f, _wgslsmith_f_op_f32(228f + 170f)))), _wgslsmith_div_vec2_f32(vec2<f32>(1371f, -491f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.a, arg_0.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, -356f)))), arg_0.c.a.x || false)));
    var var_2 = select(vec2<i32>(20021i, -arg_2), (vec2<i32>(~10551i, arg_1.x) << ((~arg_3 ^ (vec2<u32>(4294967295u, 1u) ^ var_0.xz)) % vec2<u32>(32u))) ^ -vec2<i32>(1i, arg_1.x), select(var_1.a.a.yx, func_3(var_1.c.a, Struct_1(select(arg_0.b.a, vec3<bool>(true, false, var_1.c.b.a.x), arg_0.c.a), select(arg_0.c.c, var_1.c.c.c, vec4<bool>(var_1.c.c.a.x, var_1.a.a.x, true, false)), vec4<i32>(u_input.a, 0i, arg_1.x, u_input.a))), select(!(!vec2<bool>(true, var_1.a.a.x)), vec2<bool>(!arg_0.b.a.x, true), true)));
    let var_3 = var_1.c.b;
    var var_4 = _wgslsmith_dot_vec4_i32(vec4<i32>((i32(-1i) * -21408i) | (u_input.a | arg_2), ~arg_0.d.x, -10315i, firstLeadingBit(u_input.a)), arg_0.c.b) & _wgslsmith_sub_i32(~(-abs(0i)), _wgslsmith_sub_i32(-22337i, u_input.a));
    return arg_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> Struct_3 {
    let var_0 = arg_1.b;
    var var_1 = select(vec4<bool>(arg_1.a == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(arg_1.a + arg_2))), true, arg_1.b.a.x, var_0.a.x), !select(vec4<bool>(false, arg_0.a.x, false, arg_1.b.a.x), vec4<bool>(true, select(false, false, false), all(arg_1.c.a.xy), func_3(arg_1.a, Struct_1(vec3<bool>(var_0.a.x, true, var_0.a.x), vec4<i32>(arg_1.c.b.x, 2147483647i, arg_1.d.x, 24851i), var_0.c)).x), select(!vec4<bool>(arg_1.b.a.x, true, arg_0.a.x, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, var_0.a.x, arg_0.a.x, arg_1.b.a.x), false), true)), arg_1.b.a.x && true);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.a * arg_2)))))));
    var_1 = vec4<bool>(true || var_0.a.x, _wgslsmith_f_op_f32(var_2 - 1f) <= _wgslsmith_f_op_f32(-var_2), var_1.x, arg_1.b.a.x);
    let var_3 = -1428f;
    return Struct_3(var_0, ~firstTrailingBit(vec2<u32>(4294967295u, arg_3)), Struct_2(var_3, func_2(arg_1, reverseBits(arg_1.c.b.wxy & vec3<i32>(-2147483647i, var_0.b.x, var_0.b.x)), -select(var_0.b.x, arg_0.c.x, var_1.x), abs(~vec2<u32>(arg_3, arg_3))), func_2(Struct_2(_wgslsmith_f_op_f32(round(1000f)), var_0, Struct_1(arg_1.c.a, vec4<i32>(13539i, u_input.a, u_input.a, 0i), vec4<i32>(arg_1.c.b.x, 0i, arg_0.b.x, -1i)), ~arg_0.b.wy), -arg_1.b.c.yyx, -13722i, ~vec2<u32>(arg_3, arg_3) | vec2<u32>(1u, 1u)), -var_0.c.yz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-730f, -380f), vec2<f32>(578f, arg_2))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2, -1077f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-689f, -350f) * vec2<f32>(-1802f, 912f))))));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> vec4<u32> {
    var var_0 = ~(~(~abs(arg_1))) | 39987u;
    var var_1 = ~(~vec4<u32>(_wgslsmith_mult_u32(func_4(arg_0.a, Struct_2(-345f, Struct_1(vec3<bool>(true, true, arg_0.a.a.x), vec4<i32>(arg_0.a.c.x, 1i, arg_0.c.b.b.x, 2147483647i), vec4<i32>(arg_0.a.c.x, arg_0.a.b.x, u_input.a, 44277i)), arg_0.c.c, arg_0.c.c.c.zw), -388f, 1u).b.x, _wgslsmith_mult_u32(0u, 58322u)), 0u, 1u, arg_0.b.x));
    let var_2 = func_3(-1238f, arg_0.a);
    var_0 = ~(~var_1.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1953f, arg_0.d.x, -304f, arg_0.d.x) + vec4<f32>(-712f, 262f, 1019f, arg_0.d.x))), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.d.x)), 1666f, arg_0.d.x, -320f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, 466f, -712f, arg_0.c.a)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d.x, arg_0.d.x, -414f, -989f), vec4<f32>(467f, arg_0.d.x, arg_0.c.a, arg_0.c.a))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_0.d.x, 1467f, arg_0.d.x)))));
    return vec4<u32>(0u, arg_0.b.x, ~1u, arg_1);
}

fn func_6(arg_0: vec4<u32>, arg_1: f32) -> Struct_3 {
    let var_0 = _wgslsmith_mult_u32(arg_0.x, abs(~_wgslsmith_add_u32(~arg_0.x, _wgslsmith_mult_u32(0u, 66607u))));
    var var_1 = Struct_3(func_4(Struct_1(vec3<bool>(true, true, true), vec4<i32>(u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, 1i), -2147483647i, u_input.a), ~(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a) >> (vec4<u32>(15281u, arg_0.x, 0u, var_0) % vec4<u32>(32u)))), func_4(Struct_1(vec3<bool>(true, false, false), vec4<i32>(u_input.a, 0i, -49300i, 2244i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -4010i, u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a))), func_4(func_4(Struct_1(vec3<bool>(true, false, true), vec4<i32>(2147483647i, 50371i, u_input.a, u_input.a), vec4<i32>(33066i, 30522i, 41337i, u_input.a)), Struct_2(arg_1, Struct_1(vec3<bool>(false, false, true), vec4<i32>(u_input.a, u_input.a, -24630i, u_input.a), vec4<i32>(u_input.a, -35433i, u_input.a, u_input.a)), Struct_1(vec3<bool>(false, true, true), vec4<i32>(23005i, u_input.a, u_input.a, 65807i), vec4<i32>(u_input.a, u_input.a, 1i, -5083i)), vec2<i32>(-40655i, u_input.a)), -1000f, 1u).c.c, func_4(Struct_1(vec3<bool>(true, false, false), vec4<i32>(u_input.a, -3649i, 0i, u_input.a), vec4<i32>(u_input.a, 0i, 10559i, u_input.a)), Struct_2(arg_1, Struct_1(vec3<bool>(true, false, false), vec4<i32>(u_input.a, 48091i, u_input.a, u_input.a), vec4<i32>(u_input.a, 45722i, 2147483647i, u_input.a)), Struct_1(vec3<bool>(true, false, false), vec4<i32>(u_input.a, -5644i, 29626i, u_input.a), vec4<i32>(-1i, -121i, u_input.a, u_input.a)), vec2<i32>(-2147483647i, u_input.a)), 235f, 73851u).c, _wgslsmith_f_op_f32(-581f + -538f), firstTrailingBit(arg_0.x)).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))), ~var_0).c, arg_1, arg_0.x & var_0).c.b, arg_0.xy, func_4(func_2(Struct_2(_wgslsmith_f_op_f32(-arg_1), func_4(Struct_1(vec3<bool>(true, false, false), vec4<i32>(0i, 1i, u_input.a, u_input.a), vec4<i32>(16777i, u_input.a, 2147483647i, u_input.a)), Struct_2(-2714f, Struct_1(vec3<bool>(true, false, true), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 24675i, u_input.a)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(-5946i, 1i, -17739i, -2426i), vec4<i32>(0i, u_input.a, 7859i, 0i)), vec2<i32>(u_input.a, u_input.a)), arg_1, 4294967295u).a, func_4(Struct_1(vec3<bool>(false, false, false), vec4<i32>(u_input.a, 36833i, u_input.a, -30033i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_2(529f, Struct_1(vec3<bool>(false, true, false), vec4<i32>(-33396i, -2147483647i, 4520i, u_input.a), vec4<i32>(1i, -1i, u_input.a, 2147483647i)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(u_input.a, u_input.a, u_input.a, -5725i), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)), vec2<i32>(u_input.a, 2147483647i)), -1774f, arg_0.x).c.c, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, u_input.a))), vec3<i32>(u_input.a, u_input.a, -2147483647i), -1i | func_4(Struct_1(vec3<bool>(true, false, false), vec4<i32>(u_input.a, u_input.a, -31431i, -23852i), vec4<i32>(-17169i, u_input.a, u_input.a, -2041i)), Struct_2(arg_1, Struct_1(vec3<bool>(false, false, true), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(u_input.a, 2147483647i, u_input.a, 1i), vec4<i32>(u_input.a, -43615i, u_input.a, u_input.a)), vec2<i32>(0i, u_input.a)), -862f, arg_0.x).c.d.x, func_4(Struct_1(vec3<bool>(false, false, true), vec4<i32>(11611i, -2147483647i, -2147483647i, u_input.a), vec4<i32>(104691i, 42017i, u_input.a, 0i)), func_4(Struct_1(vec3<bool>(true, true, false), vec4<i32>(u_input.a, u_input.a, -2147483647i, -33141i), vec4<i32>(-1i, 6956i, 0i, 0i)), Struct_2(1218f, Struct_1(vec3<bool>(false, false, true), vec4<i32>(u_input.a, 29262i, 0i, u_input.a), vec4<i32>(11381i, u_input.a, u_input.a, 62821i)), Struct_1(vec3<bool>(true, true, false), vec4<i32>(32617i, u_input.a, u_input.a, u_input.a), vec4<i32>(-1i, u_input.a, -15647i, -11784i)), vec2<i32>(1i, 0i)), arg_1, 86693u).c, -192f, arg_0.x).b), Struct_2(_wgslsmith_div_f32(258f, 272f), func_2(func_4(Struct_1(vec3<bool>(false, true, false), vec4<i32>(32705i, 0i, 42004i, 1i), vec4<i32>(-14790i, -838i, u_input.a, u_input.a)), Struct_2(-468f, Struct_1(vec3<bool>(false, false, false), vec4<i32>(-23811i, 0i, u_input.a, u_input.a), vec4<i32>(17331i, 1i, 1i, 0i)), Struct_1(vec3<bool>(true, false, true), vec4<i32>(-59356i, 2147483647i, 2147483647i, u_input.a), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)), vec2<i32>(0i, u_input.a)), arg_1, var_0).c, vec3<i32>(u_input.a, u_input.a, u_input.a), ~(-2147483647i), vec2<u32>(arg_0.x, 31601u)), func_4(func_4(Struct_1(vec3<bool>(true, false, false), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-1i, -24727i, 2147483647i, 1i)), Struct_2(arg_1, Struct_1(vec3<bool>(false, false, true), vec4<i32>(u_input.a, u_input.a, u_input.a, -16689i), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)), Struct_1(vec3<bool>(true, false, false), vec4<i32>(-19257i, u_input.a, -2147483647i, u_input.a), vec4<i32>(12315i, -1i, 0i, u_input.a)), vec2<i32>(9198i, u_input.a)), 397f, 8153u).c.b, func_4(Struct_1(vec3<bool>(true, false, false), vec4<i32>(-2510i, u_input.a, u_input.a, -14486i), vec4<i32>(-2147483647i, -2147483647i, u_input.a, 0i)), Struct_2(arg_1, Struct_1(vec3<bool>(false, true, true), vec4<i32>(u_input.a, 31539i, 0i, -2147483647i), vec4<i32>(u_input.a, 1i, u_input.a, 1i)), Struct_1(vec3<bool>(true, false, true), vec4<i32>(19915i, -2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, -365i, u_input.a, -2147483647i)), vec2<i32>(1i, u_input.a)), arg_1, arg_0.x).c, _wgslsmith_div_f32(1483f, arg_1), ~6125u).c.c, _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(-28635i, 2147483647i)), -vec2<i32>(u_input.a, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2046f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1)))), 94638u).c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(func_4(Struct_1(vec3<bool>(false, true, false), vec4<i32>(56663i, u_input.a, 52705i, -2147483647i), vec4<i32>(u_input.a, -50991i, 0i, 48014i)), Struct_2(arg_1, Struct_1(vec3<bool>(true, false, false), vec4<i32>(-33134i, u_input.a, 2351i, 2147483647i), vec4<i32>(32251i, 2147483647i, u_input.a, u_input.a)), Struct_1(vec3<bool>(true, true, false), vec4<i32>(-10012i, u_input.a, 18574i, u_input.a), vec4<i32>(-2147483647i, 2147483647i, u_input.a, u_input.a)), vec2<i32>(u_input.a, u_input.a)), -212f, arg_0.x).c.a))), arg_1));
    let var_2 = var_1.b.x;
    var_1 = func_4(func_2(func_4(func_4(func_2(Struct_2(arg_1, var_1.c.b, Struct_1(var_1.a.a, var_1.a.c, var_1.c.c.b), vec2<i32>(u_input.a, -27461i)), vec3<i32>(u_input.a, -50901i, -16452i), u_input.a, var_1.b), Struct_2(304f, var_1.a, Struct_1(vec3<bool>(true, var_1.c.b.a.x, true), vec4<i32>(0i, -2147483647i, var_1.c.d.x, var_1.a.c.x), vec4<i32>(-2147483647i, u_input.a, -2147483647i, -2147483647i)), vec2<i32>(var_1.a.c.x, var_1.a.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -147f), var_1.b.x).c.b, Struct_2(_wgslsmith_f_op_f32(-1633f + 994f), Struct_1(vec3<bool>(false, var_1.a.a.x, var_1.a.a.x), vec4<i32>(var_1.a.b.x, u_input.a, -3515i, -41545i), var_1.c.c.b), var_1.c.b, var_1.c.d), 1115f, abs(4294967295u)).c, _wgslsmith_mult_vec3_i32(var_1.a.b.wwx, vec3<i32>(_wgslsmith_mod_i32(var_1.a.c.x, -1i), var_1.a.b.x, _wgslsmith_sub_i32(-7814i, var_1.a.b.x))), _wgslsmith_mod_i32(23469i, ~0i), vec2<u32>(~15974u, 4294967295u)), var_1.c, 474f, 1u);
    var var_3 = func_4(var_1.c.c, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1))), ~(~_wgslsmith_mod_u32(var_0, _wgslsmith_sub_u32(5585u, var_1.b.x)))).d.x;
    return Struct_3(Struct_1(func_2(var_1.c, max(vec3<i32>(var_1.a.c.x, -2147483647i, u_input.a), ~var_1.a.c.xxx), ~var_1.c.c.c.x, var_1.b).a, vec4<i32>(-func_4(var_1.c.c, Struct_2(530f, Struct_1(var_1.a.a, vec4<i32>(var_1.a.c.x, u_input.a, var_1.c.d.x, var_1.c.d.x), var_1.c.c.b), Struct_1(var_1.c.b.a, var_1.a.b, vec4<i32>(2147483647i, u_input.a, -1i, 1i)), var_1.c.c.c.xw), -541f, 32985u).a.c.x, u_input.a, _wgslsmith_dot_vec2_i32(func_2(Struct_2(597f, var_1.a, Struct_1(var_1.a.a, vec4<i32>(var_1.a.c.x, var_1.c.c.b.x, var_1.a.c.x, 0i), vec4<i32>(-1i, var_1.a.c.x, 46507i, var_1.a.b.x)), var_1.a.c.wy), var_1.a.b.xxw, -2147483647i, vec2<u32>(4294967295u, arg_0.x)).b.xz, -var_1.c.d), u_input.a), -(~abs(var_1.a.b))), var_1.b, func_4(func_2(func_4(var_1.c.c, var_1.c, arg_1, 85300u).c, max(vec3<i32>(var_1.a.c.x, u_input.a, 45846i), -var_1.a.c.zzy), func_2(var_1.c, abs(vec3<i32>(u_input.a, 13296i, -1i)), 1i, var_1.b).c.x, vec2<u32>(arg_0.x, 30650u) >> (vec2<u32>(var_0, 48408u) % vec2<u32>(32u))), var_1.c, _wgslsmith_f_op_f32(sign(-1990f)), ~firstLeadingBit(~arg_0.x)).c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.a, var_1.c.a)), _wgslsmith_div_vec2_f32(vec2<f32>(1660f, var_1.c.a), var_1.d)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_1)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, arg_1), var_1.d, var_1.c.b.a.zy)), var_1.c.c.a.x && true))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.a, 676f))), 1395f)));
}

fn func_1() -> i32 {
    var var_0 = func_6(select(~_wgslsmith_mult_vec4_u32(vec4<u32>(84552u, 4294967295u, 59262u, 13752u), vec4<u32>(841u, 1u, 68275u, 4173u)), func_5(func_4(func_2(Struct_2(-595f, Struct_1(vec3<bool>(false, true, true), vec4<i32>(1i, u_input.a, u_input.a, 19463i), vec4<i32>(-42510i, u_input.a, -2147483647i, u_input.a)), Struct_1(vec3<bool>(false, false, false), vec4<i32>(u_input.a, u_input.a, -4207i, u_input.a), vec4<i32>(u_input.a, 40268i, 51992i, u_input.a)), vec2<i32>(38379i, u_input.a)), vec3<i32>(-2147483647i, u_input.a, u_input.a), -2147483647i, vec2<u32>(57406u, 0u)), Struct_2(1076f, Struct_1(vec3<bool>(true, false, true), vec4<i32>(u_input.a, u_input.a, -16448i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_1(vec3<bool>(false, true, true), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec2<i32>(-2147483647i, 2147483647i)), _wgslsmith_f_op_f32(step(501f, 1601f)), 1u), ~1u, any(vec3<bool>(true, true, true)) && true), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(435f + 335f), _wgslsmith_div_f32(137f, -1000f))))))));
    var var_1 = -33073i;
    var_0 = func_4(var_0.a, func_6(select(vec4<u32>(~0u, var_0.b.x, var_0.b.x & 34397u, func_6(vec4<u32>(var_0.b.x, 0u, 1u, 0u), var_0.d.x).b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.b.x, 1u, 9866u), vec4<u32>(4294967295u, 51606u, 0u, var_0.b.x)) & (vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x) | vec4<u32>(0u, 4294967295u, 1u, 4294967295u)), false), _wgslsmith_f_op_f32(f32(-1f) * -1405f)).c, -411f, var_0.b.x);
    var var_2 = !vec4<bool>(true, any(var_0.a.a.zy), all(var_0.c.c.a.zz), (i32(-1i) * -16415i) >= (~54030i ^ func_2(Struct_2(-1108f, Struct_1(vec3<bool>(var_0.c.c.a.x, var_0.c.c.a.x, false), vec4<i32>(-2147483647i, -1413i, 51061i, var_0.c.c.b.x), var_0.a.b), var_0.a, vec2<i32>(-19809i, -23583i)), vec3<i32>(u_input.a, var_0.c.c.b.x, 2147483647i), u_input.a, var_0.b).b.x));
    let var_3 = var_0.d;
    return ~(-(_wgslsmith_dot_vec2_i32(var_0.a.c.yx, ~vec2<i32>(-7554i, u_input.a)) << (4294967295u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = Struct_1(vec3<bool>(true, true, true), ~vec4<i32>(func_1(), u_input.a, _wgslsmith_div_i32(2147483647i, ~u_input.a), 1i & -u_input.a), ~(-vec4<i32>(-25102i, u_input.a & u_input.a, -u_input.a, 2147483647i)));
    let var_2 = vec3<f32>(-156f, _wgslsmith_f_op_f32(946f + -276f), _wgslsmith_f_op_f32(106f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-551f * -2931f))))));
    let var_3 = vec3<i32>(func_1(), ~0i, -6195i);
    let var_4 = -u_input.a;
    let var_5 = func_3(_wgslsmith_f_op_f32(floor(-1056f)), Struct_1(!var_1.a, func_2(Struct_2(_wgslsmith_f_op_f32(sign(1162f)), Struct_1(var_1.a, var_1.c, vec4<i32>(45424i, -58561i, 8045i, var_3.x)), Struct_1(vec3<bool>(false, true, true), var_1.c, var_1.b), _wgslsmith_add_vec2_i32(var_3.xy, var_3.zx)), func_6(vec4<u32>(1u, 1u, 1u, 1u), -372f).c.b.c.yww, -1i, ~vec2<u32>(1u, 1u)).c, ~_wgslsmith_sub_vec4_i32(var_1.b, -vec4<i32>(2147483647i, var_1.b.x, 16674i, u_input.a)))).x;
    let var_6 = max(_wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, -1i, var_3.x, var_3.x), var_1.c), abs(vec4<i32>(_wgslsmith_add_i32(var_4, u_input.a), abs(u_input.a), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, 1i, var_3.x, 1i), var_1.b)))), _wgslsmith_sub_i32(5661i, u_input.a));
    var_0 = 1u;
    var var_7 = Struct_3(Struct_1(vec3<bool>(!(var_2.x != var_2.x), false, all(func_2(Struct_2(286f, Struct_1(vec3<bool>(false, false, true), vec4<i32>(-7945i, var_4, var_4, u_input.a), var_1.c), Struct_1(var_1.a, var_1.b, var_1.b), vec2<i32>(var_3.x, 1713i)), var_3, 0i, vec2<u32>(0u, 1u)).a.zy)), vec4<i32>(reverseBits(0i), u_input.a, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_6, var_6), vec3<i32>(var_4, var_1.c.x, -2147483647i))), var_1.c), _wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(1u, ~34237u), vec2<bool>(2147483647i < var_4, var_1.a.x)), vec2<u32>(1u, 1u)), Struct_2(_wgslsmith_f_op_f32(exp2(1f)), func_4(func_6(_wgslsmith_div_vec4_u32(vec4<u32>(24823u, 1u, 128526u, 0u), vec4<u32>(4294967295u, 62109u, 33474u, 1u)), _wgslsmith_f_op_f32(floor(1110f))).c.b, Struct_2(var_2.x, Struct_1(var_1.a, vec4<i32>(0i, var_1.c.x, var_1.c.x, 0i), vec4<i32>(var_4, var_6, var_4, -1i)), func_6(vec4<u32>(1u, 0u, 83346u, 4294967295u), 943f).a, select(var_3.yy, vec2<i32>(1i, var_1.b.x), var_1.a.zy)), _wgslsmith_f_op_f32(abs(1f)), func_6(vec4<u32>(0u, 72581u, 1u, 0u), -749f).b.x ^ 0u).a, func_6(abs(vec4<u32>(16622u, 1u, 10692u, 1u)), var_2.x).c.c, ~(var_1.b.xw << (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 22992u), vec2<u32>(8275u, 1u)) % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(func_2(Struct_2(_wgslsmith_f_op_f32(select(-232f, var_2.x, false)), Struct_1(var_1.a, var_7.a.c, vec4<i32>(var_1.c.x, 0i, 1i, -3882i)), Struct_1(var_1.a, vec4<i32>(var_7.a.c.x, -13362i, var_3.x, var_7.c.d.x), vec4<i32>(-19278i, var_7.a.c.x, -59662i, var_6)), var_3.zy), ~max(var_1.c.yyy, var_7.c.c.b.wyw), max(u_input.a, u_input.a), var_7.b << (var_7.b % vec2<u32>(32u))).c.yyz), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_7.d.x, var_7.d.x, _wgslsmith_f_op_f32(trunc(-1387f)), -548f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, -538f, var_2.x), vec4<f32>(var_2.x, 886f, var_2.x, -549f)))), vec4<bool>(false, true, !var_5, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_7.c.a, -1990f, var_2.x, -581f), vec4<f32>(949f, 833f, -265f, var_2.x))), _wgslsmith_div_vec4_f32(vec4<f32>(-578f, var_2.x, var_2.x, 110f), vec4<f32>(1410f, var_2.x, var_7.d.x, var_2.x)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1716f, var_2.x, var_2.x, -829f), vec4<f32>(-2049f, var_2.x, var_7.d.x, -1000f))))))), (-func_1() >> (~firstTrailingBit(1u) % 32u)) << (var_7.b.x % 32u));
}

