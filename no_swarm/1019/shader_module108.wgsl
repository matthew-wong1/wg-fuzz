struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<u32>) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(1059f, _wgslsmith_f_op_f32(-1271f - _wgslsmith_f_op_f32(sign(-787f)))), -1000f), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, -1649f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(283f - _wgslsmith_f_op_f32(min(883f, -687f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-2287f))))), -1263f), !vec4<bool>(true, all(vec3<bool>(true, true, true)), !any(vec2<bool>(false, false)), true), reverseBits(35327i));
    var var_1 = 1u;
    var_1 = 1u;
    let var_2 = var_0;
    let var_3 = var_0;
    return _wgslsmith_sub_vec4_i32(max(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-27666i, -47854i, 52838i, 1i), min(vec4<i32>(var_2.d, var_0.d, 1i, var_2.d), vec4<i32>(var_0.d, var_2.d, var_3.d, 2147483647i))), vec4<i32>(select(var_3.d, 0i, false), 0i, _wgslsmith_clamp_i32(-16733i, -2147483647i, var_0.d), select(3890i, -1i, var_3.c.x)), abs(firstTrailingBit(vec4<i32>(0i, -2147483647i, var_0.d, var_2.d)))), select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -1i, var_0.d, 0i), vec4<i32>(0i, var_2.d, var_0.d, -2147483647i)), vec4<i32>(u_input.a, -1i, 2147483647i, 0i) >> (vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 4294967295u) % vec4<u32>(32u)), var_2.c.x) << (~(~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 34279u)) % vec4<u32>(32u))), ~(-select(vec4<i32>(59209i, -1i, 0i, var_2.d), firstTrailingBit(vec4<i32>(-48132i, var_0.d, 0i, 2147483647i)), vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = !(!vec2<bool>(any(select(vec2<bool>(true, arg_2.c.x), arg_3.c.xx, true)), true));
    var_0 = vec2<bool>(!arg_2.c.x, arg_2.c.x | (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 44678u, 1u)) < _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 1u, 62211u), countOneBits(vec4<u32>(1u, 0u, 1u, 0u)))));
    let var_1 = vec4<i32>(arg_3.d, _wgslsmith_mod_i32(-2147483647i, arg_2.d), _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_2.d, -37578i), arg_0.x), 2147483647i), -332i);
    var_0 = select(select(select(arg_2.c.yx, vec2<bool>(true, true), vec2<bool>(true, !arg_2.c.x)), arg_2.c.wx, arg_3.c.x || true), !arg_2.c.zz, !arg_2.c.yy);
    let var_2 = -_wgslsmith_add_i32(func_3(~vec3<u32>(1u, 1u, 1u)).x, -arg_0.x);
    return false;
}

fn func_2() -> bool {
    return !(!(!func_4(func_3(vec3<u32>(1u, 0u, 4294967295u)), u_input.a, Struct_1(-2488f, vec3<f32>(-476f, 386f, -700f), vec4<bool>(true, false, false, false), 2147483647i), Struct_1(1414f, vec3<f32>(-154f, 954f, -1000f), vec4<bool>(false, true, false, true), u_input.a))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = ~1u;
    var_0 = _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u))), ~61587u), min(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(67308u, 1u), vec2<u32>(4294967295u, 0u)), 1u), 0u)));
    var var_1 = Struct_1(arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b) + arg_2.b), select(!vec4<bool>(false, arg_0, arg_0, true), arg_1.c, select(arg_1.c, arg_2.c, true)), -select(~1i, arg_2.d, func_4(vec4<i32>(-2147483647i, 48817i, arg_2.d, -2147483647i) << (vec4<u32>(10666u, 47648u, 4294967295u, 0u) % vec4<u32>(32u)), abs(arg_1.d), arg_1, Struct_1(arg_1.a, vec3<f32>(-433f, -1283f, arg_1.b.x), vec4<bool>(arg_3.x, true, false, true), arg_2.d))));
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(471f)) - _wgslsmith_f_op_f32(min(arg_1.a, -1606f))) * _wgslsmith_f_op_f32(sign(-232f))))), arg_2.b, vec4<bool>(func_4(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.d, var_1.d, var_1.d, arg_2.d), vec4<i32>(-37840i, u_input.a, -1i, arg_1.d)), min(vec4<i32>(-6098i, arg_2.d, 46413i, -2321i), vec4<i32>(-4027i, arg_2.d, arg_1.d, -3865i))), arg_2.d, Struct_1(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, 1000f, -1830f) * vec3<f32>(arg_1.a, -260f, -1208f)), vec4<bool>(arg_1.c.x, var_1.c.x, true, true), -arg_2.d), arg_2), any(arg_1.c.zzy), arg_1.c.x, true), ~(func_3(~vec3<u32>(55046u, 0u, 66788u)).x << (~(~0u) % 32u)));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec4<u32> {
    var var_0 = vec4<i32>(arg_0.d, u_input.a, arg_0.d, _wgslsmith_mod_i32(u_input.a, -36843i));
    return abs(~(~abs(vec4<u32>(3068u, arg_1, 0u, arg_1)) & vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(23643u, 5925u, 1u), vec3<u32>(arg_1, arg_1, 1u)), _wgslsmith_add_u32(arg_1, 4202u), _wgslsmith_add_u32(2496u, 20537u), arg_1)));
}

fn func_7(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 1i;
    var var_1 = u_input.a;
    var_1 = select(~var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, min(arg_2.d, u_input.a) << (29584u % 32u), u_input.a), vec4<i32>(_wgslsmith_clamp_i32(1i, -2147483647i, arg_2.d), ~var_0, arg_2.d, arg_2.d) ^ -(~vec4<i32>(arg_1.d, arg_1.d, var_0, u_input.a))), false);
    var_1 = 0i;
    let var_2 = arg_2.c.x;
    return func_5(!var_2, arg_2, func_5(all(arg_1.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-400f, arg_2.a, 148f)), select(!arg_2.c, !vec4<bool>(arg_2.c.x, false, arg_1.c.x, true), false && arg_2.c.x), -arg_1.d), arg_2, !vec2<bool>(!arg_1.c.x, select(var_2, var_2, false))), arg_2.c.ww);
}

fn func_1(arg_0: u32, arg_1: f32) -> vec3<f32> {
    let var_0 = func_7(func_6(func_5(func_2(), Struct_1(arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 966f, arg_1) + vec3<f32>(arg_1, -364f, -235f)), vec4<bool>(true, true, false, true), _wgslsmith_mult_i32(u_input.a, 4317i)), Struct_1(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-199f, arg_1, 567f)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true), _wgslsmith_mod_i32(u_input.a, -1568i)), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), 79554u, -1530f), Struct_1(arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1696f, -778f, arg_1))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-904f, arg_1, arg_1) - vec3<f32>(arg_1, -404f, 538f)), vec3<f32>(arg_1, -2192f, 628f)))), func_5(true, func_5(arg_1 < arg_1, func_5(true, Struct_1(arg_1, vec3<f32>(arg_1, arg_1, arg_1), vec4<bool>(false, true, true, false), u_input.a), Struct_1(arg_1, vec3<f32>(arg_1, arg_1, 415f), vec4<bool>(true, false, false, false), 2147483647i), vec2<bool>(false, false)), Struct_1(-972f, vec3<f32>(1000f, -228f, arg_1), vec4<bool>(false, false, false, false), u_input.a), vec2<bool>(false, false)), func_5(false, Struct_1(arg_1, vec3<f32>(-467f, arg_1, 1974f), vec4<bool>(false, true, false, false), 50929i), func_5(true, Struct_1(arg_1, vec3<f32>(-2087f, -481f, arg_1), vec4<bool>(false, false, true, true), u_input.a), Struct_1(arg_1, vec3<f32>(815f, arg_1, 1295f), vec4<bool>(true, false, true, false), 2147483647i), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), false)).c, u_input.a), func_5(true, Struct_1(-1903f, vec3<f32>(_wgslsmith_f_op_f32(arg_1 - arg_1), arg_1, 753f), func_5(true, Struct_1(506f, vec3<f32>(537f, -846f, -242f), vec4<bool>(true, false, false, false), u_input.a), Struct_1(arg_1, vec3<f32>(-280f, -594f, arg_1), vec4<bool>(false, true, true, true), u_input.a), select(vec2<bool>(true, true), vec2<bool>(false, false), true)).c, -_wgslsmith_mult_i32(u_input.a, u_input.a)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(961f, arg_1, false)) + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, 2007f, 1019f), vec3<f32>(207f, arg_1, -2048f)))), vec4<bool>(true, true, true, true), _wgslsmith_clamp_i32(-18816i, -u_input.a, func_5(true, Struct_1(-300f, vec3<f32>(316f, arg_1, 907f), vec4<bool>(false, false, true, false), 1i), Struct_1(-499f, vec3<f32>(arg_1, arg_1, 911f), vec4<bool>(true, false, false, false), -1i), vec2<bool>(true, true)).d)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, false)), func_5(false, Struct_1(-1091f, vec3<f32>(-1139f, arg_1, arg_1), vec4<bool>(true, false, true, false), -28368i), func_5(false, Struct_1(arg_1, vec3<f32>(arg_1, arg_1, 1843f), vec4<bool>(false, true, true, false), 5214i), Struct_1(-906f, vec3<f32>(2129f, 186f, 1155f), vec4<bool>(true, false, false, false), 0i), vec2<bool>(true, true)), vec2<bool>(true, true)).c.yx, ~arg_0 <= arg_0)));
    let var_1 = Struct_1(1356f, _wgslsmith_f_op_vec3_f32(-var_0.b), vec4<bool>((true | !var_0.c.x) | false, any(var_0.c), !(!var_0.c.x), var_0.d >= var_0.d), -2147483647i);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1615f, func_7(~vec4<u32>(arg_0, 70007u, arg_0, 0u), var_1, Struct_1(var_1.b.x, var_1.b, var_1.c, var_0.d)).a, _wgslsmith_f_op_f32(-func_7(vec4<u32>(35610u, arg_0, 4294967295u, 1u), Struct_1(-365f, vec3<f32>(arg_1, 960f, var_0.b.x), vec4<bool>(var_0.c.x, false, false, var_1.c.x), var_0.d), var_0).b.x))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, arg_1));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(682f, 191f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(var_0.a, -485f))) - var_2.zx))));
    let var_4 = var_1;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-298f)) - _wgslsmith_f_op_f32(f32(-1f) * -1088f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1441f, 1528f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-414f + -443f)), 490f) - _wgslsmith_f_op_vec3_f32(func_1(1u, _wgslsmith_div_f32(-907f, _wgslsmith_f_op_f32(ceil(1215f)))))), func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1462f)), _wgslsmith_f_op_f32(max(-1106f, 793f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1371f))), Struct_1(497f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(269f, 1327f, 673f) * vec3<f32>(215f, -903f, 1179f))), vec4<bool>(true, true, true, func_4(vec4<i32>(u_input.a, -31055i, u_input.a, u_input.a), 45057i, Struct_1(-148f, vec3<f32>(-1114f, 896f, -771f), vec4<bool>(false, false, true, true), 9022i), Struct_1(1066f, vec3<f32>(-1102f, 802f, -195f), vec4<bool>(true, false, false, true), -9977i))), _wgslsmith_mult_i32(31791i, 0i)), func_5(func_7(~vec4<u32>(3768u, 27415u, 4294967295u, 1u), Struct_1(-624f, vec3<f32>(-1591f, 630f, -1000f), vec4<bool>(false, false, true, true), u_input.a), Struct_1(-2032f, vec3<f32>(1000f, 548f, -202f), vec4<bool>(false, false, false, true), u_input.a)).c.x, func_7(vec4<u32>(1u, 1u, 1u, 1u), Struct_1(351f, vec3<f32>(-731f, -290f, 460f), vec4<bool>(true, false, true, false), 2147483647i), func_7(vec4<u32>(14944u, 4294967295u, 56872u, 4294967295u), Struct_1(119f, vec3<f32>(1452f, -161f, 2558f), vec4<bool>(true, false, true, true), -2147483647i), Struct_1(-245f, vec3<f32>(-1240f, -425f, -545f), vec4<bool>(false, false, false, true), -31404i))), Struct_1(-770f, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(844f, 506f, 896f))), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true), _wgslsmith_div_i32(32200i, u_input.a)), select(vec2<bool>(false, false), vec2<bool>(true, true), u_input.a <= 2147483647i)), vec2<bool>(_wgslsmith_sub_i32(u_input.a, u_input.a) >= _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), any(vec3<bool>(true, true, false)))).c, u_input.a);
    let var_1 = var_0;
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1341f, var_0.a), -561f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(176f))) * var_1.a)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(var_1.a, var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x))))), !var_0.c, var_0.d);
    var var_3 = vec4<u32>(~abs(49521u), reverseBits(~(~_wgslsmith_mod_u32(1u, 26562u))), ~4472u, ~3876u);
    var_3 = vec4<u32>(~20067u, 24974u, ~max(_wgslsmith_mod_u32(var_3.x >> (var_3.x % 32u), _wgslsmith_mult_u32(30271u, var_3.x)), var_3.x), abs(~var_3.x));
    var_3 = ~vec4<u32>(0u, ~1u ^ ~(~var_3.x), _wgslsmith_add_u32(~(var_3.x & var_3.x), 23521u), _wgslsmith_mult_u32((var_3.x << (var_3.x % 32u)) & ~34966u, _wgslsmith_add_u32(firstTrailingBit(var_3.x), var_3.x)));
    let var_4 = var_1;
    var_3 = vec4<u32>(var_3.x, ~_wgslsmith_mult_u32(1u, var_3.x & 30136u) & min(~var_3.x, ~1u), var_3.x, ~1u);
    var_3 = abs(vec4<u32>(var_3.x, 1u, var_3.x, _wgslsmith_mult_u32(~_wgslsmith_add_u32(4294967295u, var_3.x), ~var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(36277i, firstTrailingBit(33668i)), abs(vec2<i32>(var_4.d, countOneBits(11263i)))));
}

