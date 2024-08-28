struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = 1i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    let var_0 = firstTrailingBit(~(~(-1i >> (1u % 32u)))) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~4294967295u), max(firstTrailingBit(vec2<u32>(57278u, arg_1)), firstTrailingBit(vec2<u32>(arg_1, arg_1) ^ vec2<u32>(12060u, arg_1)))) % 32u);
    global0 = u_input.a;
    var var_1 = vec3<bool>(any(vec2<bool>(all(vec3<bool>(true, true, true)), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)))), true, false);
    var var_2 = vec4<f32>(1f, 750f, -303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_3 = firstTrailingBit(var_0);
    return reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~arg_1), ~(~arg_1), 1u), select(~(~vec3<u32>(arg_1, arg_1, arg_1)), countOneBits(vec3<u32>(arg_1, 34925u, arg_1)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(arg_1, 4294967295u, arg_1), vec3<u32>(arg_1, 50444u, 73544u)), false)));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_2(~firstLeadingBit(~firstTrailingBit(0u)), Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, true), !all(vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2377f, -209f, 2999f))))), vec4<i32>(~(0i ^ u_input.a), max(34855i, _wgslsmith_mult_i32(-1i, -29041i)), -1i, 40459i >> (_wgslsmith_mod_u32(0u, 1u) % 32u)), vec3<bool>(true, 4294967295u < func_3(28205i, 37443u), true)), vec3<i32>(_wgslsmith_sub_i32(2147483647i, _wgslsmith_add_i32(u_input.a, u_input.a)), max(reverseBits(~u_input.a), 1i << (1u % 32u)), ~u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(250f, 618f), vec2<f32>(2503f, -732f), vec2<bool>(false, false))), vec2<f32>(-562f, 1146f), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-972f, -346f)))))), firstTrailingBit(1u) & ~(~22979u));
    var var_1 = _wgslsmith_f_op_f32(-891f + 156f);
    var var_2 = Struct_1(vec2<bool>(!(!select(true, false, var_0.b.a.x)), true && var_0.b.d.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-523f, var_0.d.x), _wgslsmith_f_op_f32(var_0.d.x * var_0.b.b.x)) * 1761f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1452f)) + -462f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1377f)) * _wgslsmith_f_op_f32(1016f * var_0.d.x)))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, ~firstLeadingBit(-2147483647i), u_input.a, var_0.b.c.x & min(3056i, -62527i)), var_0.b.c), select(!(!(!vec3<bool>(var_0.b.a.x, false, false))), select(select(vec3<bool>(true, false, true), var_0.b.d, select(var_0.b.d, vec3<bool>(var_0.b.d.x, var_0.b.d.x, false), var_0.b.d.x)), select(!var_0.b.d, vec3<bool>(false, var_0.b.d.x, var_0.b.a.x), select(vec3<bool>(var_0.b.d.x, true, var_0.b.a.x), vec3<bool>(var_0.b.d.x, false, true), false)), select(!vec3<bool>(var_0.b.d.x, var_0.b.a.x, true), !vec3<bool>(var_0.b.d.x, var_0.b.d.x, true), select(var_0.b.d, var_0.b.d, var_0.b.a.x))), true));
    global1 = u_input.a;
    var_0 = Struct_2(_wgslsmith_clamp_u32(var_0.a, max(1u, 1u) >> (func_3(1i, var_0.e) % 32u), ~19612u) << (var_0.e % 32u), Struct_1(var_2.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1008f, -354f, _wgslsmith_f_op_f32(-var_2.b.x)) * _wgslsmith_f_op_vec3_f32(round(var_2.b))), var_2.c, select(var_2.d, select(!vec3<bool>(false, var_0.b.a.x, false), vec3<bool>(var_2.a.x, false, var_2.d.x), all(vec2<bool>(true, var_0.b.a.x))), vec3<bool>(var_0.b.d.x, any(vec4<bool>(true, var_0.b.d.x, var_0.b.d.x, true)), true))), vec3<i32>(-2147483647i, (i32(-1i) * -34393i) << (_wgslsmith_sub_u32(var_0.e, 30964u) % 32u), var_0.c.x) >> (vec3<u32>(4294967295u, var_0.a, var_0.e) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(150f, _wgslsmith_f_op_f32(floor(var_0.d.x)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.b.x, -255f))))))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(3131u, var_0.e), _wgslsmith_sub_u32(1u, var_0.e)), 0u), 16266u));
    return !vec4<bool>(!var_2.d.x, !(_wgslsmith_f_op_f32(min(var_2.b.x, 1242f)) == -436f), -(-3078i ^ var_2.c.x) <= ~(~var_2.c.x), any(var_0.b.a));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<u32>) -> vec3<f32> {
    var var_0 = Struct_2(firstLeadingBit(~arg_2.x), Struct_1(arg_0.zz, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(arg_1 - 1000f), _wgslsmith_f_op_f32(-2233f * arg_1), _wgslsmith_f_op_f32(round(246f))))), min(-(~vec4<i32>(-13591i, -1i, u_input.a, u_input.a)), vec4<i32>(u_input.a, u_input.a, 30513i, firstTrailingBit(u_input.a))), arg_0.wyz), ~_wgslsmith_sub_vec3_i32(-(~vec3<i32>(0i, -2147483647i, u_input.a)), vec3<i32>(-1i, -2147483647i, -48553i) & vec3<i32>(u_input.a, -46451i, u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_1, -550f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1695f)), _wgslsmith_f_op_f32(f32(-1f) * -1034f)))), 29356u);
    var var_1 = Struct_2(var_0.e, Struct_1(arg_0.xy, var_0.b.b, var_0.b.c, arg_0.xzz), var_0.c, vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1)), arg_1), 0u);
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_1.c.zz, ~(vec2<i32>(-1i) * -vec2<i32>(22232i, -10133i))), var_0.c.x);
    var var_3 = Struct_2(~4294967295u, Struct_1(vec2<bool>(false, any(select(var_0.b.d.yy, vec2<bool>(arg_0.x, false), var_0.b.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(-630f * 419f), arg_1)), var_1.b.c, var_1.b.d), var_0.b.c.xyx, var_0.d, 4294967295u);
    global0 = -(_wgslsmith_sub_i32(min(var_1.c.x, 1i), _wgslsmith_dot_vec3_i32(var_1.c | vec3<i32>(-7838i, 22272i, var_1.c.x), -var_3.c)) & ~var_3.c.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1.b.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.b.x, 1000f, var_3.b.b.x))))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    return Struct_1(vec2<bool>(any(!arg_0), any(vec2<bool>(!arg_0.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(func_4(!select(vec4<bool>(true, true, true, true), !vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-305f)))), vec4<u32>(firstLeadingBit(func_3(-2147483647i, 30765u)), ~1u, 4814u, ~1u))), vec4<i32>(-2147483647i, reverseBits(select(_wgslsmith_add_i32(7415i, u_input.a), u_input.a, all(vec3<bool>(arg_0.x, true, arg_0.x)))), _wgslsmith_div_i32(min(u_input.a ^ u_input.a, ~u_input.a), _wgslsmith_mod_i32(-21111i, _wgslsmith_add_i32(-1i, u_input.a))), min(0i, _wgslsmith_sub_i32(-16456i, u_input.a))), vec3<bool>(any(func_2()), (arg_0.x & all(arg_0)) && (true & any(vec2<bool>(arg_0.x, arg_0.x))), !(!any(vec4<bool>(arg_0.x, false, true, arg_0.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global1 = u_input.a;
    var var_0 = Struct_1(func_1(!func_2().yx).d.zx, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(arg_1.b.d.x, false, true, arg_0.d.x), 1622f, vec4<u32>(4294967295u, 4294967295u, arg_3, 1u))).x + arg_2.b.x))), -2632f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(512f, _wgslsmith_f_op_f32(arg_0.b.x - -780f))))), min(vec4<i32>(54611i, _wgslsmith_mod_i32(arg_1.b.c.x, arg_0.c.x), u_input.a, u_input.a ^ reverseBits(2147483647i)), abs(~arg_0.c)), !arg_1.b.d);
    var_0 = func_1(vec2<bool>(var_0.d.x, var_0.d.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(true, arg_2.d.x, arg_2.d.x, arg_2.a.x), -1000f, vec4<u32>(74317u, 35642u, 4294967295u, arg_1.a))).x, -864f, arg_0.b.x, arg_2.b.x)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.b.x, arg_0.b.x, 105f, arg_2.b.x)))))))));
    return Struct_1(!arg_0.d.yy, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.b.x, arg_1.b.b.x), 2099f), _wgslsmith_f_op_vec3_f32(func_4(select(vec4<bool>(arg_0.d.x, arg_2.d.x, false, arg_1.b.d.x), vec4<bool>(arg_2.a.x, false, true, true), vec4<bool>(arg_0.a.x, true, true, var_0.a.x)), _wgslsmith_f_op_f32(abs(arg_2.b.x)), vec4<u32>(0u, arg_1.a, 0u, 11093u))).x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1.d.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.yzz) + arg_2.b)), max(arg_2.c, func_1(func_1(vec2<bool>(false, false)).d.xy).c & arg_2.c), vec3<bool>(true, !var_0.a.x, false));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec3<bool>) -> Struct_2 {
    global1 = firstLeadingBit(0i);
    let var_0 = select(vec4<bool>(false, min(firstLeadingBit(36403u), 1u) > func_3(~60881i, 7555u), !(all(arg_0.d.xy) | !arg_1.x), true), select(!select(func_2(), vec4<bool>(true, arg_0.d.x, true, arg_1.x), true), vec4<bool>(true, arg_0.a.x, all(select(vec3<bool>(true, false, arg_1.x), arg_1, vec3<bool>(arg_0.d.x, arg_0.a.x, false))), false), (u_input.a & -1i) <= _wgslsmith_div_i32(25174i, u_input.a >> (40410u % 32u))), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.d.x, all(vec2<bool>(false, false)), arg_3.x, !(arg_0.c.x > u_input.a)), !(!vec4<bool>(arg_0.d.x, arg_1.x, arg_1.x, true))));
    let var_1 = Struct_2(_wgslsmith_clamp_u32(~0u, reverseBits(abs(1u)), 0u), Struct_1(vec2<bool>(arg_1.x, func_1(vec2<bool>(arg_3.x, arg_3.x)).d.x & !arg_1.x), vec3<f32>(_wgslsmith_f_op_f32(arg_2.x * 1000f), _wgslsmith_div_f32(-318f, 1263f), -2330f), select(-arg_0.c, firstTrailingBit(arg_0.c << (vec4<u32>(1u, 19082u, 51666u, 1255u) % vec4<u32>(32u))), vec4<bool>(all(vec4<bool>(true, var_0.x, false, false)), true, true, arg_1.x)), select(func_5(Struct_1(arg_3.xx, arg_0.b, vec4<i32>(2147483647i, 3199i, 2147483647i, arg_0.c.x), vec3<bool>(arg_3.x, true, var_0.x)), Struct_2(33692u, arg_0, vec3<i32>(-13175i, arg_0.c.x, u_input.a), vec2<f32>(arg_2.x, 959f), 33117u), arg_0, 1u).d, var_0.xzy, vec3<bool>(true, !arg_1.x, var_0.x))), min(arg_0.c.wyz, arg_0.c.yzy), vec2<f32>(-1324f, -1000f), 43871u);
    var var_2 = vec2<bool>(arg_0.d.x || arg_0.a.x, !arg_1.x);
    var var_3 = -func_5(var_1.b, Struct_2(var_1.e, Struct_1(!arg_3.zx, vec3<f32>(-1206f, var_1.d.x, -730f), arg_0.c, vec3<bool>(false, arg_1.x, true)), func_1(vec2<bool>(var_2.x, true)).c.zxy, _wgslsmith_f_op_vec2_f32(arg_2.zy * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-102f, arg_2.x), arg_0.b.zz))), abs(1u)), var_1.b, ~(~34664u)).c.xz;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_1(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), Struct_2(_wgslsmith_sub_u32(~21745u, 0u), Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, true), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-783f, 235f, 263f)), ~vec4<i32>(11493i, -32571i, 75000i, u_input.a), func_1(vec2<bool>(true, false)).d), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.a), vec3<i32>(u_input.a, u_input.a, -31734i)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1640f, 381f))), 4294967295u), Struct_1(select(vec2<bool>(true, true), func_2().zw, func_1(vec2<bool>(true, false)).d.xz), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(611f, -2302f, 920f) + vec3<f32>(-1446f, 2865f, 692f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(943f, 1760f, 1027f))), func_1(vec2<bool>(true, true)).c, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), 1u), func_5(Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 12014i, u_input.a), vec4<i32>(-4723i, 0i, 1i, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(-51774i, 58682i, u_input.a, 1i), vec4<i32>(56287i, -7080i, u_input.a, 2147483647i))), func_2().xxy), Struct_2(_wgslsmith_add_u32(51044u, _wgslsmith_dot_vec2_u32(vec2<u32>(35692u, 0u), vec2<u32>(34979u, 0u))), Struct_1(func_2().yx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1532f, 675f, -1317f)), -vec4<i32>(-1i, 2147483647i, u_input.a, -16365i), vec3<bool>(false, false, false)), vec3<i32>(-2147483647i, u_input.a, 3150i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -308f))), countOneBits(_wgslsmith_add_u32(31545u, 0u))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1057f, 1153f, -956f)) * vec3<f32>(183f, 1301f, -966f)), vec4<i32>(1i, -1i, u_input.a, _wgslsmith_sub_i32(-1i, u_input.a)), func_2().xxz), 3994u).d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-199f, -395f, -1066f), vec3<f32>(-1000f, -1621f, -306f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1425f, -1897f, 482f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2395f, 645f, -1000f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-268f, -1438f, 361f), vec3<f32>(-476f, -1184f, -732f), vec3<bool>(false, false, true))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1541f), -345f, _wgslsmith_f_op_f32(-118f + 136f)))), vec3<bool>(false, true, ~80028u != (_wgslsmith_div_u32(24895u, 4294967295u) & firstTrailingBit(1u))));
    var var_1 = u_input.a;
    var_1 = 1i;
    global1 = 2147483647i;
    var var_2 = !func_2().x;
    var var_3 = vec4<bool>(true, func_2().x, var_0.b.d.x, func_5(func_5(Struct_1(select(var_0.b.a, var_0.b.a, var_0.b.d.zz), var_0.b.b, vec4<i32>(-1i, u_input.a, -16193i, 1i) ^ var_0.b.c, func_1(var_0.b.d.zz).d), Struct_2(var_0.a, func_5(Struct_1(var_0.b.d.xz, vec3<f32>(1507f, 1155f, var_0.d.x), vec4<i32>(-2679i, 2147483647i, 0i, -1i), var_0.b.d), Struct_2(var_0.a, Struct_1(var_0.b.d.zz, var_0.b.b, var_0.b.c, var_0.b.d), vec3<i32>(var_0.b.c.x, 1i, 6264i), var_0.b.b.xx, var_0.a), Struct_1(var_0.b.a, var_0.b.b, var_0.b.c, var_0.b.d), var_0.a), var_0.b.c.xxy, vec2<f32>(-487f, var_0.b.b.x), 38393u), var_0.b, _wgslsmith_mult_u32(44867u, var_0.a)), func_6(Struct_1(select(var_0.b.d.zz, var_0.b.a, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.x, var_0.d.x, -196f) - vec3<f32>(1072f, var_0.d.x, var_0.d.x)), firstLeadingBit(vec4<i32>(2147483647i, 2147483647i, -1i, u_input.a)), vec3<bool>(var_0.b.d.x, false, true)), var_0.b.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.b) * _wgslsmith_f_op_vec3_f32(-var_0.b.b)), select(!var_0.b.d, func_5(Struct_1(vec2<bool>(var_0.b.a.x, var_0.b.a.x), var_0.b.b, var_0.b.c, var_0.b.d), Struct_2(11550u, Struct_1(var_0.b.a, var_0.b.b, var_0.b.c, vec3<bool>(var_0.b.a.x, var_0.b.a.x, false)), vec3<i32>(0i, -1i, u_input.a), vec2<f32>(var_0.b.b.x, var_0.b.b.x), var_0.e), Struct_1(vec2<bool>(true, true), var_0.b.b, var_0.b.c, var_0.b.d), 21840u).d, false)), func_6(func_1(!vec2<bool>(var_0.b.a.x, false)), select(func_1(var_0.b.d.xy).d, var_0.b.d, var_0.b.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(744f, 1209f, var_0.d.x), var_0.b.b, false))), vec3<bool>(var_0.b.d.x, true, true)).b, var_0.e).d.x);
    var_2 = var_0.c.x < var_0.c.x;
    var var_4 = var_0.b;
    var var_5 = Struct_2(func_3(_wgslsmith_div_i32(_wgslsmith_mult_i32(func_1(var_3.wz).c.x, min(0i, -2147483647i)), 2147483647i), var_0.e), var_0.b, abs(_wgslsmith_sub_vec3_i32(var_0.b.c.xzz, firstTrailingBit(var_4.c.xxz))), func_5(var_0.b, Struct_2((4294967295u | var_0.a) ^ max(var_0.e, 40080u), func_6(func_6(Struct_1(var_3.yx, var_4.b, var_0.b.c, vec3<bool>(var_0.b.d.x, true, true)), vec3<bool>(true, true, false), vec3<f32>(767f, 1415f, 2990f), vec3<bool>(var_0.b.d.x, var_3.x, true)).b, vec3<bool>(var_4.a.x, true, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -1875f, var_0.b.b.x)), var_0.b.d).b, _wgslsmith_add_vec3_i32(vec3<i32>(0i, -10785i, var_4.c.x) << (vec3<u32>(0u, var_0.a, var_0.a) % vec3<u32>(32u)), reverseBits(var_4.c.yzx)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_4.b.x, var_0.d.x), _wgslsmith_f_op_vec2_f32(-var_4.b.yz))), ~73741u), Struct_1(var_3.yw, _wgslsmith_f_op_vec3_f32(-func_5(Struct_1(var_4.a, vec3<f32>(var_4.b.x, 170f, 125f), var_4.c, var_3.yxy), Struct_2(var_0.e, Struct_1(vec2<bool>(true, var_3.x), var_0.b.b, var_0.b.c, var_4.d), vec3<i32>(-1i, var_0.c.x, var_0.c.x), vec2<f32>(var_0.d.x, var_4.b.x), 67959u), Struct_1(var_4.d.zx, var_0.b.b, var_0.b.c, vec3<bool>(true, false, false)), var_0.e).b), vec4<i32>(_wgslsmith_div_i32(-6227i, var_4.c.x), min(var_4.c.x, -2147483647i), -2147483647i, -var_4.c.x), !var_3.zww), ~(~(var_0.e ^ var_0.e))).b.zz, ~(var_0.a ^ var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(func_3(u_input.a, var_0.a), ~(~74945u), 7848u) & vec3<u32>(~10486u, ~(~4294967295u), var_0.e));
}

