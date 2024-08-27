struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = select(!vec3<bool>(arg_0, arg_0, !(!arg_0)), select(vec3<bool>(true & any(vec4<bool>(true, arg_0, false, false)), true, arg_0), !(!(!vec3<bool>(false, true, arg_0))), select(!(!vec3<bool>(false, arg_0, false)), vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, true)), vec3<bool>(arg_0, true, false)))), vec3<bool>(select(true, all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0))), !select(arg_0, false, arg_0)), !arg_0, !arg_0));
    var var_1 = ~(-(~_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, arg_2.c, u_input.a), vec3<i32>(u_input.a.x, -32426i, arg_2.b))));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-118f - _wgslsmith_div_f32(-211f, arg_1))), -442f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(671f, arg_1, arg_1, 1464f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(192f, 1400f, 1000f, 710f), vec4<f32>(arg_1, arg_1, 177f, -1460f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 803f, -1521f, arg_1) - vec4<f32>(arg_1, 1679f, arg_1, arg_1))))))));
    var var_3 = arg_2.c;
    var var_4 = Struct_3(var_0, Struct_1(arg_2.a, -max(-31034i, 2147483647i), vec3<i32>(1i, u_input.a.x, u_input.a.x)), reverseBits(vec3<u32>(1u, 1u, 1u)), Struct_2(vec4<u32>(1u, 1u, 1u, 1u)), abs(_wgslsmith_clamp_u32(~4294967295u, ~1102u, abs(0u)) >> (~(~1u) % 32u)));
    return _wgslsmith_dot_vec2_u32(countOneBits(~var_4.c.xz), ~select(var_4.d.a.xy >> (var_4.c.zy % vec2<u32>(32u)), ~vec2<u32>(27052u, 1u), true));
}

fn func_4(arg_0: u32) -> vec4<u32> {
    let var_0 = false;
    let var_1 = Struct_3(vec3<bool>(all(vec4<bool>(all(vec3<bool>(var_0, true, false)), true, true, var_0)), all(!vec4<bool>(false, true, var_0, true)), var_0), Struct_1(_wgslsmith_sub_i32(u_input.a.x, 0i), u_input.a.x, _wgslsmith_mod_vec3_i32(-(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<i32>(-12069i, u_input.a.x, 668i)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), u_input.a))), ~vec3<u32>(~1u, 31293u, ~51313u), Struct_2(vec4<u32>(reverseBits(arg_0), _wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0, arg_0), _wgslsmith_sub_u32(arg_0, 20464u)), 1u | arg_0, _wgslsmith_div_u32(2073u, arg_0))), 50191u);
    var var_2 = ~var_1.b.a;
    let var_3 = arg_0;
    var var_4 = var_1.b.b;
    return var_1.d.a >> (~(~select(~var_1.d.a, _wgslsmith_add_vec4_u32(var_1.d.a, var_1.d.a), select(vec4<bool>(false, false, var_1.a.x, var_1.a.x), vec4<bool>(false, true, true, true), var_0))) % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> vec4<u32> {
    var var_0 = -791f;
    var var_1 = any(arg_0.a);
    var_1 = all(arg_0.a.yz);
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-1135f - _wgslsmith_f_op_f32(trunc(363f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(290f)))))))));
    var var_3 = arg_0.c.xy;
    return func_4(func_3(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * 188f) - _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(trunc(-103f)))), arg_0.b));
}

fn func_1() -> f32 {
    let var_0 = ~((vec4<i32>(max(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x | 27280i, 1i) >> ((func_2(Struct_3(vec3<bool>(false, false, false), Struct_1(12583i, 32272i, u_input.a), vec3<u32>(0u, 0u, 1u), Struct_2(vec4<u32>(1u, 4294967295u, 41810u, 37664u)), 12655u), u_input.a.x) >> (firstLeadingBit(vec4<u32>(4294967295u, 41391u, 50064u, 53633u)) % vec4<u32>(32u))) % vec4<u32>(32u))) | abs(vec4<i32>(u_input.a.x, ~u_input.a.x, -1i, _wgslsmith_clamp_i32(-45786i, u_input.a.x, u_input.a.x))));
    var var_1 = 1i;
    var_1 = 47057i;
    var var_2 = Struct_3(vec3<bool>(select(_wgslsmith_f_op_f32(step(1315f, 1973f)) > _wgslsmith_f_op_f32(-401f - -404f), true, true), true, (_wgslsmith_sub_i32(var_0.x, var_0.x) == ~2147483647i) && true), Struct_1(_wgslsmith_mult_i32(-59455i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0.x, -32229i, -1i, 22549i), var_0, false), vec4<i32>(-6829i, 17806i, 1i, u_input.a.x))), 1i, select(var_0.zwz << (~vec3<u32>(0u, 0u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(var_0.zzw | u_input.a, var_0.yzz), vec3<bool>(true, true, true))), vec3<u32>(1u, 5537u, 6994u) << (~_wgslsmith_div_vec3_u32(~vec3<u32>(24543u, 6793u, 31288u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 25718u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(47242u, 4294967295u, 8508u))) % vec3<u32>(32u)), Struct_2(~countOneBits(vec4<u32>(1u, 1u, 1u, 1u))), 61807u);
    var_1 = u_input.a.x & var_2.b.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1153f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1530f - 235f))), _wgslsmith_f_op_f32(min(-234f, _wgslsmith_f_op_f32(f32(-1f) * -1052f))))))));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec4<u32>, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_1(1i << (1u % 32u), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a.x, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -35024i, 14664i, arg_3.x), vec4<i32>(-1i, arg_3.x, -35824i, u_input.a.x)))), u_input.a.x, arg_3.x), ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, u_input.a.x, 1i, 1i), vec4<i32>(arg_3.x, u_input.a.x, arg_3.x, u_input.a.x) | vec4<i32>(-2147483647i, u_input.a.x, 22263i, -1i)), abs(11497i), -_wgslsmith_sub_i32(15889i, arg_3.x)));
    var_0 = Struct_1(-2147483647i, arg_3.x, select(vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(25425i, -26540i), select(vec2<i32>(-1i, 0i), u_input.a.xy, vec2<bool>(false, true))), min(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, -1i, var_0.b, u_input.a.x), vec4<i32>(arg_3.x, u_input.a.x, var_0.c.x, -12961i)), _wgslsmith_mult_i32(var_0.a, arg_3.x))), ((arg_3 << (vec3<u32>(arg_2.x, 47373u, 4294967295u) % vec3<u32>(32u))) >> (~arg_2.xxy % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(arg_3, vec3<i32>(var_0.a, -2147483647i, 2147483647i)), -vec3<i32>(var_0.b, var_0.a, -16436i)), vec3<bool>(select(arg_0, true & arg_0, !arg_0), arg_0, !select(true, true, arg_0))));
    var_0 = Struct_1(_wgslsmith_dot_vec2_i32(arg_3.yx, -firstTrailingBit(vec2<i32>(arg_3.x, var_0.a))) >> (4294967295u % 32u), arg_3.x, max(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, var_0.a, -62655i), vec3<i32>(0i, u_input.a.x, u_input.a.x)), -vec3<i32>(var_0.b, u_input.a.x, 28131i)), ~u_input.a << (vec3<u32>(arg_2.x, 0u, 10245u) % vec3<u32>(32u)), var_0.c), select(var_0.c, select(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(-2147483647i, 0i, var_0.c.x)), vec3<i32>(var_0.b, var_0.b, 2147483647i), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, false), arg_0)), arg_2.x <= _wgslsmith_dot_vec2_u32(arg_2.zw, vec2<u32>(4294967295u, 19306u)))));
    let var_1 = select(arg_2.xxy, firstLeadingBit(func_2(Struct_3(vec3<bool>(arg_0, arg_0, true), Struct_1(arg_3.x, 2147483647i, vec3<i32>(-2147483647i, u_input.a.x, -9342i)), arg_2.www, Struct_2(arg_2), 46193u), u_input.a.x ^ -2147483647i).yyy) << (select(abs(arg_2.xwx) | vec3<u32>(1u, 38972u, arg_2.x), _wgslsmith_clamp_vec3_u32(arg_2.zyy << (arg_2.zyx % vec3<u32>(32u)), vec3<u32>(34439u, 14196u, 71588u), ~vec3<u32>(arg_2.x, 1u, 0u)), arg_0) % vec3<u32>(32u)), select(!(!select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, arg_0))), vec3<bool>(true, false, arg_0), vec3<bool>(true, false || select(arg_0, arg_0, true), true)));
    var_0 = Struct_1(_wgslsmith_sub_i32(-21689i, 22693i), select(2147483647i << (_wgslsmith_div_u32(4294967295u >> (arg_2.x % 32u), ~4294967295u) % 32u), var_0.c.x, !(var_0.a >= u_input.a.x) && true), _wgslsmith_sub_vec3_i32(vec3<i32>(~var_0.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_3.x, 21209i), u_input.a.yx), u_input.a.yz), arg_3.x), vec3<i32>(-1i) * -u_input.a));
    return Struct_2(abs(_wgslsmith_div_vec4_u32(arg_2, _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 132494u, arg_2.x, var_1.x), vec4<u32>(var_1.x, 0u, var_1.x, 0u) >> (arg_2 % vec4<u32>(32u))))));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_1.c.x, 4294967295u), 1u);
    let var_1 = Struct_3(arg_1.a, arg_1.b, vec3<u32>(var_0, abs(_wgslsmith_sub_u32(var_0 << (arg_1.c.x % 32u), arg_1.c.x)), arg_1.c.x), arg_1.d, ~var_0);
    var var_2 = Struct_2(firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec2_u32(arg_1.c.zx, var_1.c.yy), 1u), ~(~var_0), _wgslsmith_dot_vec3_u32(~var_1.c, ~vec3<u32>(3828u, arg_1.d.a.x, 35623u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.x, 1u), vec2<u32>(36280u, 0u)), arg_1.c.x))));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(trunc(1599f)), _wgslsmith_f_op_f32(-198f - _wgslsmith_f_op_f32(arg_0.x + -1994f))), -18523i, -(arg_1.b.c.xz >> (var_2.a.wy % vec2<u32>(32u))), vec2<i32>(-max(-4028i, var_1.b.b), i32(-1i) * -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec3<bool>(_wgslsmith_f_op_f32(select(-1118f, -419f, true)) == _wgslsmith_f_op_f32(f32(-1f) * -544f), any(vec2<bool>(true, true)), true));
    let x = u_input.a;
    s_output = func_6(vec2<f32>(472f, -1200f), Struct_3(select(vec3<bool>(false, true, all(vec2<bool>(false, true))), vec3<bool>(true, select(true, false, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true))), Struct_1(_wgslsmith_mult_i32(2147483647i, u_input.a.x), -10632i, -vec3<i32>(19050i, u_input.a.x, u_input.a.x)), abs(_wgslsmith_add_vec3_u32(select(vec3<u32>(4294967295u, 13857u, 40769u), vec3<u32>(44245u, 31564u, 7380u), vec3<bool>(false, true, true)), ~vec3<u32>(0u, 0u, 1u))), func_5(_wgslsmith_f_op_f32(step(230f, 1000f)) == _wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_f_op_f32(116f - _wgslsmith_f_op_f32(func_1())), reverseBits(~vec4<u32>(4294967295u, 4294967295u, 5944u, 51151u)), u_input.a), 42308u));
}

