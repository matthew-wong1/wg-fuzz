struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 12480u, 51163u, 17494u), true, false, -340f), vec3<bool>(true, true, true))), Struct_3(Struct_2(Struct_1(vec4<u32>(27235u, 1u, 54720u, 0u), false, true, 328f), vec3<bool>(false, true, false))), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 31245u, 726u), true, true, 1000f), vec3<bool>(true, false, true))), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 22014u, 80879u, 33637u), false, false, -1000f), vec3<bool>(true, false, false))), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 1u, 1u, 1u), false, false, 783f), vec3<bool>(true, true, false))), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 1u, 11091u, 83995u), false, false, 1239f), vec3<bool>(false, true, false))), Struct_3(Struct_2(Struct_1(vec4<u32>(10782u, 13024u, 52255u, 5124u), true, false, -1000f), vec3<bool>(true, true, false))), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 4468u), false, true, -158f), vec3<bool>(true, true, false))), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), true, false, -420f), vec3<bool>(true, true, true))), Struct_3(Struct_2(Struct_1(vec4<u32>(38228u, 1u, 4294967295u, 1u), false, true, -1179f), vec3<bool>(true, true, false))), Struct_3(Struct_2(Struct_1(vec4<u32>(37586u, 4294967295u, 4294967295u, 21821u), false, false, -383f), vec3<bool>(false, false, false))), Struct_3(Struct_2(Struct_1(vec4<u32>(45298u, 4294967295u, 4294967295u, 75892u), false, false, 105f), vec3<bool>(false, false, true))), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 16643u, 23228u, 1u), true, false, -139f), vec3<bool>(false, false, false))), Struct_3(Struct_2(Struct_1(vec4<u32>(64121u, 82099u, 11055u, 0u), true, true, 607f), vec3<bool>(true, false, true))), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 28495u, 34745u, 281u), false, true, -873f), vec3<bool>(false, true, true))), Struct_3(Struct_2(Struct_1(vec4<u32>(44276u, 105401u, 4294967295u, 0u), false, false, -421f), vec3<bool>(false, false, true))), Struct_3(Struct_2(Struct_1(vec4<u32>(24688u, 1u, 62695u, 1u), true, true, -171f), vec3<bool>(true, true, true))), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 17780u, 48392u, 0u), false, true, -754f), vec3<bool>(true, false, false))), Struct_3(Struct_2(Struct_1(vec4<u32>(60732u, 0u, 89320u, 44430u), true, true, -273f), vec3<bool>(false, false, false))), Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 1u, 10948u), true, false, -523f), vec3<bool>(true, false, false))), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 47747u, 1u, 48037u), false, true, 730f), vec3<bool>(true, true, false))));

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<Struct_2, 28>;

var<private> global3: vec4<f32> = vec4<f32>(2023f, 470f, 110f, -241f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> vec4<f32> {
    var var_0 = select(vec4<bool>(all(vec4<bool>(any(vec4<bool>(true, arg_0.a.c, true, arg_1.x)), true, any(vec4<bool>(arg_1.x, arg_0.b.x, arg_0.b.x, arg_1.x)), false)), _wgslsmith_f_op_f32(arg_0.a.d * _wgslsmith_f_op_f32(-1070f + global3.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), false & arg_0.b.x, arg_0.a.b), vec4<bool>(arg_0.b.x, arg_0.a.c, arg_1.x, arg_0.b.x), !(!select(select(vec4<bool>(arg_1.x, true, arg_0.a.c, true), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_1.x, false), true), vec4<bool>(false, arg_1.x, arg_0.b.x, arg_0.b.x), !vec4<bool>(arg_1.x, false, arg_0.a.b, true))));
    var_0 = !select(vec4<bool>(false, 735f == _wgslsmith_f_op_f32(-global3.x), true, !arg_0.b.x | true), vec4<bool>(true, !var_0.x && (arg_1.x && var_0.x), true, true), vec4<bool>((arg_0.a.c | arg_0.a.b) | true, false, !(!var_0.x), all(!var_0.yx)));
    var var_1 = vec4<u32>(arg_0.a.a.x, _wgslsmith_div_u32(~(abs(4294967295u) ^ ~arg_0.a.a.x), 28711u), _wgslsmith_mod_u32((u_input.a.x & _wgslsmith_mod_u32(14864u, 12287u)) & 53351u, reverseBits(~66142u)), ~_wgslsmith_clamp_u32(23770u, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 21597u), _wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.yx ^ vec2<u32>(42651u, u_input.c))));
    let var_2 = Struct_5(Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 51435u, arg_0.a.a.x, arg_0.a.a.x) >> (arg_0.a.a % vec4<u32>(32u)), all(vec2<bool>(arg_0.a.c, arg_0.a.c)), false, _wgslsmith_f_op_f32(-global3.x)), var_0.xwy)));
    let var_3 = Struct_4(Struct_3(Struct_2(Struct_1(arg_0.a.a << (arg_0.a.a % vec4<u32>(32u)), select(true, true, false), global3.x > 394f, global3.x), !(!var_2.a.a.b))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.a.a.a.d, arg_0.a.d, arg_0.a.d, 721f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 1016f, arg_0.a.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1095f, arg_0.a.d, global3.x, 1085f)))), u_input.d != abs(u_input.d))))) * vec4<f32>(var_3.a.a.a.d, 896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1433f, 156f)) - -192f)), var_2.a.a.a.d));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: f32) -> Struct_2 {
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-885f, global3.x, arg_2, -808f))))));
    global3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(574f, -2292f, global3.x, global3.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1933f, global3.x, arg_2, arg_2))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(vec4<u32>(u_input.a.x, 0u, 15107u, 53320u), true, true, arg_2), vec3<bool>(false, false, false)), vec2<bool>(true, true)))))), vec4<bool>(any(vec2<bool>(true, true)), true, true, _wgslsmith_dot_vec3_u32(arg_0, firstLeadingBit(u_input.a)) < firstTrailingBit(0u))));
    let var_0 = vec4<bool>(true, all(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), any(vec2<bool>(true, true)))), true, (all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false))) | false) | select(true, true, true));
    return Struct_2(Struct_1(vec4<u32>(4294967295u >> (firstTrailingBit(1u) % 32u), ~(~4294967295u), ~(arg_0.x << (u_input.c % 32u)), u_input.c), true, firstTrailingBit(-31824i | u_input.b) > 34237i, arg_2), !select(select(vec3<bool>(true, var_0.x, false), !var_0.xxx, !vec3<bool>(false, var_0.x, true)), !select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), var_0.xzw), select(vec3<bool>(var_0.x, false, var_0.x), !var_0.ywy, all(var_0.ywz))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: f32) -> Struct_3 {
    var var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, func_2(vec3<u32>(4294967295u, 19698u, arg_1.a.a.x), u_input.a.x, arg_0).a.a.x), u_input.a.yx) & u_input.a.zy;
    var var_1 = Struct_2(Struct_1(arg_1.a.a, !(!any(arg_1.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 * arg_0), arg_3)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1956f - arg_0) - _wgslsmith_f_op_f32(global3.x + 672f)), _wgslsmith_f_op_f32(-arg_1.a.d)), vec3<bool>(false, select(arg_1.a.c, true, select(true, true, arg_1.b.x) & (arg_1.a.d == -209f)), true));
    let var_2 = all(!select(vec3<bool>(false, any(vec4<bool>(true, true, var_1.a.c, true)), true), select(select(var_1.b, vec3<bool>(false, arg_1.a.b, arg_1.a.c), arg_1.a.b), select(arg_1.b, var_1.b, vec3<bool>(true, false, var_1.b.x)), var_1.a.c), !arg_1.b));
    var var_3 = var_2;
    let var_4 = Struct_5(global0[_wgslsmith_index_u32(4294967295u, 21u)]);
    return global0[_wgslsmith_index_u32(func_2(~(~(vec3<u32>(var_0.x, 53581u, u_input.a.x) >> (var_1.a.a.yyx % vec3<u32>(32u))) ^ (var_4.a.a.a.a.xzw ^ _wgslsmith_div_vec3_u32(vec3<u32>(var_4.a.a.a.a.x, var_0.x, var_1.a.a.x), arg_1.a.a.wwx))), var_1.a.a.x, 464f).a.a.x, 21u)];
}

fn func_5(arg_0: u32, arg_1: Struct_5) -> Struct_3 {
    var var_0 = arg_1.a.a.a.a;
    var var_1 = _wgslsmith_div_f32(arg_1.a.a.a.d, _wgslsmith_f_op_f32(449f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-699f + global3.x)) - _wgslsmith_f_op_f32(-global3.x))));
    var var_2 = reverseBits(_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(0i, u_input.d, u_input.d)), select(-vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.d, u_input.d, u_input.b)), vec3<i32>(-30199i, u_input.b, 0i)), !select(vec3<bool>(true, false, arg_1.a.a.b.x), vec3<bool>(arg_1.a.a.b.x, false, false), true))));
    var_0 = ~vec4<u32>(firstTrailingBit(var_0.x), _wgslsmith_clamp_u32(arg_1.a.a.a.a.x, _wgslsmith_mult_u32(4294967295u, u_input.c), var_0.x << (1u % 32u)), 0u, ~33823u);
    var var_3 = Struct_1(vec4<u32>(func_4(322f, func_2(vec3<u32>(u_input.c, 0u, arg_1.a.a.a.a.x), 0u, arg_1.a.a.a.d), vec3<i32>(min(u_input.b, -23754i), _wgslsmith_sub_i32(70077i, u_input.b), u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(vec4<u32>(var_0.x, 70056u, 7719u, arg_0), arg_1.a.a.b.x, arg_1.a.a.a.c, global3.x), arg_1.a.a.b), vec2<bool>(true, false))).x + arg_1.a.a.a.d)).a.a.a.x, arg_1.a.a.a.a.x, ~u_input.c, ~(~_wgslsmith_clamp_u32(arg_0, 0u, 4294967295u))), !arg_1.a.a.b.x, arg_1.a.a.b.x, _wgslsmith_f_op_f32(-func_2(vec3<u32>(~0u, ~50274u, ~arg_1.a.a.a.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, arg_0, arg_0), func_4(427f, global2[_wgslsmith_index_u32(0u, 28u)], vec3<i32>(1i, 21557i, u_input.d), -1096f).a.a.a.wwz), -811f).a.d));
    return func_4(1672f, Struct_2(Struct_1(var_3.a, arg_1.a.a.a.b, !arg_1.a.a.a.c, -1353f), select(!(!vec3<bool>(false, var_3.c, var_3.b)), arg_1.a.a.b, true)), firstTrailingBit(max(abs(reverseBits(vec3<i32>(u_input.d, u_input.d, 1i))), vec3<i32>(u_input.b, 21420i, -2147483647i) & ~vec3<i32>(u_input.b, 45254i, u_input.b))), _wgslsmith_div_f32(arg_1.a.a.a.d, _wgslsmith_f_op_f32(-arg_1.a.a.a.d)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: f32) -> Struct_5 {
    let var_0 = Struct_5(func_5(~u_input.a.x, Struct_5(func_4(-462f, func_2(vec3<u32>(u_input.a.x, arg_1.a.a.a.a.x, u_input.a.x), u_input.c, -441f), max(vec3<i32>(-2147483647i, -57198i, 23187i), vec3<i32>(-5427i, u_input.d, u_input.d)), 2307f))));
    var var_1 = _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(max(-39263i, -25117i), 37757i, ~u_input.b, _wgslsmith_div_i32(u_input.b, 61142i))), ~(~vec4<i32>(0i, u_input.b, u_input.b, 1i))) ^ vec4<i32>(_wgslsmith_sub_i32(2147483647i, _wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, u_input.b)))), _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, u_input.d), vec4<i32>(6360i, 5684i, 24290i, u_input.b)), abs(min(vec4<i32>(34155i, u_input.d, u_input.b, u_input.b), vec4<i32>(-2147483647i, u_input.b, 3183i, u_input.b)))), 8309i, ~abs(2147483647i));
    global0 = array<Struct_3, 21>();
    return Struct_5(func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.a.a.a.d, _wgslsmith_f_op_f32(var_0.a.a.a.d - global3.x)))), Struct_2(func_2(abs(vec3<u32>(64471u, 3661u, arg_1.a.a.a.a.x)), _wgslsmith_add_u32(var_0.a.a.a.a.x, 39764u), 1481f).a, vec3<bool>(2147483647i < u_input.d, true, arg_1.a.a.b.x)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(30414i, -35116i, 2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, var_1.x, var_1.x), vec3<i32>(var_1.x, 2147483647i, -2147483647i))), firstLeadingBit(var_1.xwz), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-429f)) * -1177f)));
}

fn func_6(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_4) -> bool {
    var var_0 = arg_3.a.a.a;
    var var_1 = ~6821u;
    var var_2 = arg_3;
    var var_3 = all(!select(func_1(func_2(u_input.a, 0u, arg_0.a.a.a.d).b.yx, Struct_4(Struct_3(Struct_2(arg_2.a.a, arg_2.a.b))), global3.x).a.a.b.yz, vec2<bool>(all(arg_2.a.b), false), !select(var_2.a.a.b.zz, arg_2.a.b.xy, var_0.b)));
    var_0 = func_1(arg_2.a.b.yx, Struct_4(arg_0.a), _wgslsmith_f_op_f32(-213f - _wgslsmith_f_op_f32(ceil(-260f)))).a.a.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 21>();
    global3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(420f, 476f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * -578f)), -504f, true)), 223f)));
    var var_0 = select(!(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))), vec2<bool>(true, false), select(vec2<bool>(any(vec4<bool>(true, true, true, true)), func_6(func_1(vec2<bool>(false, false), Struct_4(global0[_wgslsmith_index_u32(24350u, 21u)]), global3.x), ~vec4<u32>(u_input.c, u_input.c, 0u, 1u), Struct_3(global2[_wgslsmith_index_u32(u_input.a.x, 28u)]), Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(46389u, 1u, 0u, 16123u), true, false, global3.x), vec3<bool>(true, false, false)))))), select(!func_5(30061u, Struct_5(global0[_wgslsmith_index_u32(u_input.c, 21u)])).a.b.yz, vec2<bool>(true, true), true), vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_3(func_1(vec2<bool>(true, true), Struct_4(global0[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_f_op_f32(func_1(func_4(global3.x, global2[_wgslsmith_index_u32(u_input.c, 28u)], vec3<i32>(2147483647i, u_input.b, 0i), 1000f).a.b.yx, Struct_4(Struct_3(global2[_wgslsmith_index_u32(u_input.c, 28u)])), global3.x).a.a.a.d * 710f)).a.a, !vec2<bool>(false, all(func_2(vec3<u32>(u_input.c, u_input.c, u_input.c), u_input.c, 636f).b)))).x;
    var_0 = select(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1712f))), global2[_wgslsmith_index_u32(1u, 28u)], vec3<i32>(abs(u_input.d), u_input.b | 2147483647i, -u_input.b) ^ (vec3<i32>(u_input.d, u_input.b, 2147483647i) << ((u_input.a >> (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u))), global3.x).a.b.zy, func_4(func_2(func_2(u_input.a, u_input.c, 135f).a.a.yww >> (vec3<u32>(65631u, u_input.c, u_input.a.x) % vec3<u32>(32u)), u_input.a.x, _wgslsmith_f_op_f32(floor(global3.x))).a.d, Struct_2(Struct_1(vec4<u32>(1u, 0u, u_input.a.x, 81149u), true, false, global3.x), !select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, true), var_0.x)), reverseBits(min(abs(vec3<i32>(0i, u_input.b, u_input.b)), vec3<i32>(15076i, u_input.b, -40966i))), _wgslsmith_f_op_f32(-global3.x)).a.b.xy, false);
    var var_2 = global3.wwz;
    var var_3 = -278f;
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + 511f) - 1291f) - _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-229f)) * _wgslsmith_f_op_f32(550f - global3.x))))))));
    var_0 = vec2<bool>(u_input.c > 4294967295u, true);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global3.x, 530f)), -1729f, !var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1367f, var_4, _wgslsmith_f_op_f32(var_2.x * 1048f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2297f, -473f, var_4, var_2.x) - vec4<f32>(var_4, var_4, -1336f, var_2.x)))));
}

