struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec3<i32>) -> vec4<i32> {
    var var_0 = arg_0;
    let var_1 = abs(-8004i);
    var_0 = Struct_1(~vec4<i32>(-18167i, countOneBits(_wgslsmith_dot_vec3_i32(arg_0.a.yxz, arg_3)), var_1, ~(u_input.a << (u_input.d.x % 32u))), arg_2, vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1 << (10864u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.x, -80136i), arg_3.zy), 75848i), -arg_0.c.yxw), _wgslsmith_sub_i32(-2147483647i, -_wgslsmith_mod_i32(2147483647i, arg_3.x)), u_input.a));
    var_0 = arg_0;
    var_0 = arg_0;
    return arg_0.c;
}

fn func_2(arg_0: f32) -> vec4<f32> {
    let var_0 = vec2<bool>(~(~(~u_input.e.x)) >= ~7568u, false);
    var var_1 = Struct_1(((~vec4<i32>(u_input.a, u_input.a, 0i, u_input.a) << (~vec4<u32>(2640u, 24747u, 4294967295u, 66722u) % vec4<u32>(32u))) << (vec4<u32>(u_input.c.x, u_input.e.x ^ u_input.e.x, 43169u >> (1u % 32u), _wgslsmith_add_u32(15450u, 25286u)) % vec4<u32>(32u))) & firstTrailingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(66125i, u_input.a, 34379i, u_input.a), ~vec4<i32>(2147483647i, -2147483647i, u_input.a, u_input.a))), _wgslsmith_f_op_f32(abs(715f)), vec4<i32>(0i, u_input.a, (u_input.a | select(u_input.a, u_input.a, true)) ^ ~u_input.a, 0i));
    let var_2 = Struct_1(~func_3(Struct_1(_wgslsmith_sub_vec4_i32(var_1.c, vec4<i32>(u_input.a, u_input.a, -21977i, u_input.a)), _wgslsmith_div_f32(arg_0, 564f), -var_1.a), u_input.b.x, -678f, _wgslsmith_sub_vec3_i32(reverseBits(var_1.c.zxw), var_1.a.yxw & vec3<i32>(-23858i, 30912i, 1i))), -1401f, select(vec4<i32>(29368i, -(~var_1.a.x), firstTrailingBit(reverseBits(1i)), -min(-2147483647i, u_input.a)), var_1.a, any(!vec4<bool>(false, var_0.x, var_0.x, true)) == (_wgslsmith_f_op_f32(max(161f, 2545f)) < _wgslsmith_f_op_f32(sign(arg_0)))));
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1031f * -1563f) * _wgslsmith_f_op_f32(-arg_0)), vec4<i32>(-1i, 22181i, ~_wgslsmith_div_i32(-u_input.a, 2147483647i), -1i));
    var var_4 = vec2<u32>(u_input.d.x, reverseBits(~(~u_input.d.x)));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-891f, 435f, -1421f, -486f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1610f, var_2.b, var_1.b, var_1.b)))))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = select(!arg_2, any(!select(vec3<bool>(true, true, true), vec3<bool>(arg_2, arg_2, false), !arg_2)), true);
    var var_1 = arg_0;
    var var_2 = ~1i;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -1078f) - _wgslsmith_f_op_f32(ceil(var_1.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b - var_1.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + -493f) * -886f))));
    let var_4 = _wgslsmith_div_u32(u_input.c.x, (_wgslsmith_mult_u32(~26036u, u_input.c.x) | ~4294967295u) & ~firstLeadingBit(u_input.b.x));
    return Struct_1(func_3(arg_0, ~reverseBits(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), ~(~vec3<i32>(1i, 1i, var_1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.x, -1186f)) - 149f), var_1.c);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_4(Struct_1(arg_1.c, 115f, arg_1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(1040f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-905f, 2367f, 729f, arg_0.b))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, 1199f, -1601f) - vec4<f32>(arg_1.b, arg_0.b, arg_1.b, 153f)))))), true);
    var var_1 = func_4(func_4(func_4(func_4(Struct_1(vec4<i32>(1i, 3629i, arg_1.a.x, 32214i), -146f, var_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-492f, var_0.b, arg_1.b, arg_1.b) * vec4<f32>(351f, arg_0.b, -214f, arg_1.b)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1526f, arg_0.b, -590f, 166f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_1.b, arg_0.b, arg_0.b))), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(floor(var_0.b)), _wgslsmith_f_op_f32(select(arg_0.b, arg_1.b, false)), _wgslsmith_f_op_f32(var_0.b - -1000f)))), all(!select(vec2<bool>(false, false), vec2<bool>(false, true), false))), vec4<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.b, -1826f), arg_0.b)), 265f, -2893f), false);
    var_1 = func_4(func_4(func_4(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1170f, 374f, var_0.b, -1195f)) * vec4<f32>(1174f, -115f, arg_1.b, var_1.b)), true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_1.b, 697f, arg_0.b)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-781f, 840f, var_1.b, arg_1.b))), true)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b, 274f, 671f, var_1.b)))))), true);
    var_1 = arg_0;
    var_1 = arg_1;
    return Struct_1(vec4<i32>(2147483647i, 7489i, -arg_1.c.x, _wgslsmith_dot_vec2_i32(var_0.c.wy, vec2<i32>(firstLeadingBit(var_0.a.x), ~13316i))), var_1.b, -(~func_3(Struct_1(var_0.a, var_1.b, var_1.a), 4294967295u, var_1.b, var_1.c.xzx) >> (u_input.c % vec4<u32>(32u))));
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<i32> {
    let var_0 = u_input.a;
    let var_1 = 0u;
    let var_2 = arg_2;
    var var_3 = false;
    var_3 = true;
    return _wgslsmith_div_vec4_i32((~_wgslsmith_mod_vec4_i32(arg_2.a, vec4<i32>(-22106i, u_input.a, u_input.a, u_input.a)) & vec4<i32>(_wgslsmith_add_i32(-62315i, 1i), firstLeadingBit(-1i), _wgslsmith_mult_i32(var_0, -2147483647i), -1i)) >> (vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, u_input.d.x), abs(u_input.c.x)), u_input.b.x, arg_1.x >> (_wgslsmith_add_u32(arg_1.x, u_input.e.x) % 32u), u_input.b.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(func_1(arg_2, Struct_1(-arg_2.a, _wgslsmith_f_op_f32(arg_0 - -840f), _wgslsmith_mod_vec4_i32(arg_2.c, vec4<i32>(arg_2.c.x, arg_2.c.x, u_input.a, -1i)))).c, vec4<i32>(-1i, 0i, _wgslsmith_div_i32(-53364i, var_2.a.x), u_input.a)));
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = select(_wgslsmith_div_vec4_i32(-vec4<i32>(-6724i, arg_1.c.x >> (u_input.e.x % 32u), u_input.a, arg_1.c.x ^ u_input.a), _wgslsmith_div_vec4_i32(var_0.c, var_0.c)), _wgslsmith_mult_vec4_i32(~firstLeadingBit(arg_1.c), min(arg_1.a, vec4<i32>(-1i) * -var_0.a)), _wgslsmith_f_op_f32(var_0.b + arg_0) > 1771f);
    var_1 = vec4<i32>(_wgslsmith_mult_i32(-(~1i), -max(var_0.c.x, u_input.a)), ~(-_wgslsmith_add_i32(-39178i, abs(var_0.c.x))), -39275i, func_4(func_4(func_1(func_1(Struct_1(arg_1.a, var_0.b, vec4<i32>(2147483647i, u_input.a, var_0.a.x, u_input.a)), Struct_1(var_0.c, arg_3.b, var_0.c)), func_1(arg_1, arg_3)), vec4<f32>(_wgslsmith_f_op_f32(round(311f)), -329f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_vec4_f32(func_2(arg_0)).x), true), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.b * var_0.b), _wgslsmith_f_op_f32(ceil(arg_0)), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(418f, arg_1.b))), _wgslsmith_div_f32(-1593f, _wgslsmith_f_op_f32(round(arg_1.b))), -584f), true).a.x);
    let var_2 = Struct_1(_wgslsmith_div_vec4_i32(arg_1.c, var_0.a & _wgslsmith_sub_vec4_i32(~vec4<i32>(arg_2, 18154i, arg_2, -21713i), vec4<i32>(var_0.c.x, u_input.a, 1862i, arg_1.a.x))), arg_3.b, func_4(arg_1, _wgslsmith_f_op_vec4_f32(func_2(func_4(Struct_1(vec4<i32>(-24810i, var_0.a.x, var_0.a.x, 63953i), -1116f, var_0.a), vec4<f32>(846f, var_0.b, arg_1.b, 959f), true).b)), false || (var_0.c.x >= arg_3.c.x)).c & _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 2147483647i, 2147483647i, firstLeadingBit(2147483647i)), _wgslsmith_sub_vec4_i32(arg_1.a, -var_0.a)));
    var_0 = func_1(arg_3, func_4(Struct_1(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b * -666f) * _wgslsmith_f_op_f32(sign(arg_3.b))), func_1(Struct_1(arg_3.a, arg_1.b, vec4<i32>(var_1.x, -50750i, var_2.c.x, -2147483647i)), Struct_1(var_0.c, var_0.b, arg_3.a)).a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-567f, arg_1.b, arg_3.b, 140f), vec4<f32>(-1000f, var_2.b, 594f, 1884f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-159f, arg_1.b, arg_1.b, arg_3.b) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.b, arg_3.b, -1215f, arg_3.b)))), select(true, true, true) && true)), true));
    return arg_1;
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = var_0;
    var_1 = Struct_1(vec4<i32>(2147483647i | _wgslsmith_div_i32(_wgslsmith_div_i32(1i, var_0.a.x), -6607i), _wgslsmith_dot_vec4_i32(arg_0.c >> (u_input.c % vec4<u32>(32u)), var_0.a), arg_0.c.x, firstTrailingBit(~_wgslsmith_mult_i32(u_input.a, -21301i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(-var_1.b))) * var_0.b), func_3(func_1(arg_0, arg_0), ~(~u_input.c.x), func_4(Struct_1(vec4<i32>(0i, -8827i, -2147483647i, var_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, var_0.b, -480f, -1477f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(475f, arg_0.b, arg_0.b, var_0.b)))), !all(vec2<bool>(true, true))).b, vec3<i32>(~(arg_0.c.x ^ var_0.c.x), abs(-var_0.c.x), -_wgslsmith_clamp_i32(0i, var_0.a.x, var_1.a.x))));
    let var_2 = ~_wgslsmith_sub_i32(-1i & _wgslsmith_div_i32(_wgslsmith_add_i32(var_0.a.x, arg_0.a.x), 0i), var_1.c.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1851f + 437f), var_1.b) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, var_0.b), vec2<f32>(arg_0.b, 1000f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.b, var_0.b), vec2<f32>(-2898f, arg_0.b)))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, 1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(662f, -574f) * vec2<f32>(-2361f, -493f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-192f, var_1.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, var_0.b) * vec2<f32>(-1169f, -1000f))))));
    return func_6(_wgslsmith_f_op_f32(-var_3.x), var_0, func_4(var_0, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b, var_3.x, 1000f, arg_0.b), vec4<f32>(-1581f, 105f, var_0.b, arg_0.b), vec4<bool>(false, false, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, 1000f, var_1.b)), vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(max(var_0.b, -2074f)), _wgslsmith_f_op_f32(round(var_0.b)), arg_0.b, var_3.x))), all(vec3<bool>(true, false, true)) & true).c.x, Struct_1(vec4<i32>(-1i) * -vec4<i32>(28493i, 36481i, var_0.c.x, arg_0.a.x), -682f, arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1133f, -910f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1656f))))));
    var_0 = -249f;
    let var_1 = func_7(func_6(_wgslsmith_div_f32(244f, 236f), Struct_1(func_5(_wgslsmith_f_op_f32(round(1000f)), vec2<u32>(1u, 1u), func_1(Struct_1(vec4<i32>(-2147483647i, u_input.a, u_input.a, 2147483647i), -1005f, vec4<i32>(-7925i, u_input.a, 19410i, u_input.a)), Struct_1(vec4<i32>(-16899i, u_input.a, 0i, -2147483647i), 1851f, vec4<i32>(-5609i, u_input.a, 10561i, -2147483647i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1065f, -128f, 885f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(612f * 732f)), vec4<i32>(u_input.a & 4276i, ~u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_i32(-(~u_input.a), ~firstTrailingBit(0i)), Struct_1(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (u_input.c % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(-177f + -387f))).x, vec4<i32>(~(-13964i), _wgslsmith_sub_i32(u_input.a, u_input.a), -39158i, u_input.a))));
    var var_2 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b))) + -1985f) < _wgslsmith_f_op_f32(f32(-1f) * -563f), !all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), true)));
    let var_3 = var_1;
    var_2 = vec2<bool>(!all(!vec4<bool>(true, var_2.x, var_2.x, var_2.x)) || (all(select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, false, var_2.x), var_2.x)) || var_2.x), !var_2.x);
    var_2 = select(select(select(!(!vec2<bool>(var_2.x, true)), select(!vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, var_2.x), !vec2<bool>(false, var_2.x)), var_2.x), select(vec2<bool>(var_2.x, any(vec4<bool>(var_2.x, true, var_2.x, false))), vec2<bool>(false, !var_2.x), vec2<bool>(true || var_2.x, u_input.e.x >= 1u)), var_2.x), select(!(!select(vec2<bool>(var_2.x, true), vec2<bool>(true, var_2.x), var_2.x)), !select(select(vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, false)), vec2<bool>(var_2.x, var_2.x), var_2.x), true), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, 2491f, -1943f), vec3<f32>(var_1.b, 123f, var_3.b))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.b, var_3.b, var_3.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_1.b, var_1.b)))), any(select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(var_2.x, true, true), vec3<bool>(false, var_2.x, var_2.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1950f, 1000f, var_1.b), vec3<f32>(603f, var_3.b, 910f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-116f, -1100f, 380f), vec3<f32>(-666f, 332f, 396f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.b, var_1.b, var_3.b)))))));
}

