struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-327f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = vec2<f32>(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0, var_0)))), 1000f));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-804f, var_0) - _wgslsmith_f_op_vec2_f32(-var_1)), var_1))));
}

fn func_2(arg_0: u32, arg_1: u32) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1336f, -1218f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-465f, 556f) - vec2<f32>(-320f, 496f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()))), any(select(vec2<bool>(true, false), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-871f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(607f, 566f))), -217f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-476f, -877f, 520f), vec3<f32>(154f, -629f, 1671f)))), 18867u == _wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstTrailingBit(arg_1), arg_1), 4294967295u, 51176u), vec4<i32>(2147483647i, i32(-1i) * -2147483647i, 2147483647i, 0i));
    var_0 = Struct_1(vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-140f + 1094f)), _wgslsmith_f_op_f32(f32(-1f) * -1021f)))), true & var_0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(156f - 179f), _wgslsmith_f_op_f32(select(1830f, var_0.a.x, var_0.b)), _wgslsmith_f_op_f32(min(var_0.c.x, var_0.a.x)))))), var_0.b, vec4<i32>(~abs(u_input.c), -14581i, -1i, 1i));
    let var_1 = var_0.e.yw;
    let var_2 = Struct_3(arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x)))), var_0.c.x)), max(u_input.b << ((vec2<u32>(arg_1, 10804u) << (~vec2<u32>(arg_1, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), -vec2<i32>(1i, u_input.a.x)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-535f, var_0.a.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 314f) + var_0.c.zx)), abs(var_1.x) > (u_input.a.x | -4682i), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -1820f, 218f) * vec3<f32>(1149f, -1497f, -540f)))), var_0.b, vec4<i32>(-50235i, 2147483647i << (arg_0 % 32u), var_1.x, u_input.b.x ^ 32568i)), Struct_1(var_0.a, false, vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), 1286f, var_0.c.x), var_0.e.x != 0i, firstTrailingBit(vec4<i32>(12778i, var_1.x, 0i, 10834i))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-661f, 1000f))) - var_0.a), any(select(vec3<bool>(var_0.b, true, false), vec3<bool>(var_0.b, var_0.d, true), false)), vec3<f32>(_wgslsmith_f_op_f32(select(var_0.a.x, var_0.c.x, var_0.b)), _wgslsmith_f_op_f32(min(-222f, var_0.a.x)), -1180f), any(vec3<bool>(false, true, var_0.b)) && var_0.b, ~var_0.e), Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1070f, var_0.a.x), _wgslsmith_f_op_vec2_f32(exp2(var_0.a)))), var_0.d, var_0.c, var_0.e.x != 2147483647i, abs(~u_input.a))));
    return !(!select(select(!vec2<bool>(var_2.d.d.b, var_2.d.d.b), select(vec2<bool>(false, true), vec2<bool>(true, var_2.d.b.b), var_2.d.d.b), !vec2<bool>(false, var_2.d.b.b)), select(vec2<bool>(var_2.d.d.b, var_2.d.c.d), !vec2<bool>(var_2.d.d.b, var_2.d.d.b), vec2<bool>(true, var_2.d.a.d)), var_2.d.c.d));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1000f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -659f))), arg_1.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(270f, -404f, 331f))), vec3<f32>(_wgslsmith_f_op_f32(756f + 1102f), 273f, 662f)), true || (!arg_1.x != true), vec4<i32>(u_input.b.x, 1i, -1i, -2147483647i)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1751f, -1000f) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(748f, -884f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(826f, -714f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(513f, -464f)))), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(932f, 1057f, -129f))), true, vec4<i32>(0i, -22054i, -27366i, ~abs(u_input.c))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-909f, -2133f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1400f, -1124f))))), !((true | arg_1.x) & true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-670f, -362f, -144f), vec3<f32>(-1000f, 190f, 900f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2500f, 1053f, 612f)), !vec3<bool>(false, arg_1.x, arg_1.x))))), false, u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-252f, -2032f) * vec2<f32>(-1157f, 1000f))))), !(!func_2(1759u, 4294967295u).x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 385f)), -1905f, 1f), true, select(min(arg_0, -vec4<i32>(-2147483647i, 1i, -921i, arg_0.x)), _wgslsmith_sub_vec4_i32(~u_input.a, u_input.a ^ vec4<i32>(u_input.b.x, 39339i, arg_0.x, u_input.a.x)), all(select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, true, arg_1.x), vec4<bool>(true, arg_1.x, false, arg_1.x))))));
    let var_1 = false;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.c.yy - var_0.c.a)), true, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-655f, var_0.c.c.x) + -1070f), _wgslsmith_f_op_f32(min(540f, 1997f)), -1198f))), select(all(vec2<bool>(!var_0.a.b, var_0.d.b)), var_1, !var_1), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, arg_0.x, 1i, arg_0.x), _wgslsmith_mult_vec4_i32(arg_0, vec4<i32>(u_input.b.x, 13632i, u_input.c, 47826i))) >> (~(~vec4<u32>(1u, 4294967295u, 0u, 4294967295u)) % vec4<u32>(32u)), abs(_wgslsmith_add_vec4_i32(select(u_input.a, arg_0, var_0.a.d), -vec4<i32>(arg_0.x, var_0.c.e.x, 2147483647i, var_0.c.e.x)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + 942f);
    var_0 = Struct_2(var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(step(var_2.c.zx, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -207f), var_0.a.a.x))), all(!(!vec4<bool>(false, arg_1.x, var_0.d.d, false))), var_0.d.c, func_2(~2590u, 1u).x, var_2.e), var_0.d, Struct_1(vec2<f32>(-1968f, var_0.d.c.x), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d.c)) - _wgslsmith_f_op_vec3_f32(abs(var_0.d.c))), all(vec3<bool>(true, select(arg_1.x, true, var_2.d), arg_1.x)), var_0.b.e));
    return 14354u;
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(firstLeadingBit(u_input.a), vec3<bool>(all(func_2(4294967295u, 76360u)), true, _wgslsmith_f_op_f32(select(-563f, -1607f, false)) >= -422f)) < ~reverseBits(reverseBits(4294967295u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-2227f, -3213f)))), 180f)), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1026f), _wgslsmith_f_op_f32(sign(-595f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -851f)), 1f)), all(vec3<bool>(var_0, func_2(firstLeadingBit(0u), 1u).x, true)), u_input.a);
    let var_2 = var_1.d;
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a, _wgslsmith_f_op_vec2_f32(var_1.c.xx * vec2<f32>(1000f, 1031f))))), all(!vec2<bool>(var_1.d, true)), vec3<f32>(-261f, _wgslsmith_f_op_f32(f32(-1f) * -122f), -1617f), var_0, _wgslsmith_mod_vec4_i32(var_1.e, -(~(u_input.a | vec4<i32>(u_input.c, var_1.e.x, -18948i, -2147483647i)))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-763f, -1000f) - vec2<f32>(var_1.c.x, var_1.c.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.a.x, -1000f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1149f, -938f))))));
    return Struct_2(Struct_1(var_1.c.yx, select(var_1.b, true, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, var_1.a.x))), var_1.b, vec4<i32>(max(_wgslsmith_mod_i32(2147483647i, 2522i), firstLeadingBit(-16487i)), ~var_1.e.x, var_1.e.x, _wgslsmith_dot_vec2_i32(var_1.e.xy, vec2<i32>(var_1.e.x, u_input.c)))), Struct_1(vec2<f32>(var_3.x, _wgslsmith_f_op_f32(round(-836f))), true, var_1.c, var_0, -(~var_1.e & u_input.a)), Struct_1(var_3, var_1.d, var_1.c, true, countOneBits(vec4<i32>(var_1.e.x, u_input.a.x, u_input.b.x, var_1.e.x))), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-634f, var_1.c.x)))), var_0, var_1.c, var_1.d, ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~_wgslsmith_sub_u32(~14760u, _wgslsmith_clamp_u32(30368u, 1u, 57997u))) | _wgslsmith_mult_u32((_wgslsmith_mod_u32(86484u, 34381u) >> (1u % 32u)) >> (1u % 32u), 1u);
    var var_1 = Struct_3(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1333f), 1005f)) + _wgslsmith_f_op_f32(ceil(593f))), _wgslsmith_mult_vec2_i32(~_wgslsmith_clamp_vec2_i32(u_input.b ^ u_input.b, firstLeadingBit(u_input.a.xw), u_input.b >> (vec2<u32>(var_0, var_0) % vec2<u32>(32u))), ~vec2<i32>(_wgslsmith_add_i32(u_input.b.x, 2147483647i), _wgslsmith_clamp_i32(u_input.a.x, -1i, 2147483647i))), func_1());
    let var_2 = any(!select(vec2<bool>(all(vec4<bool>(var_1.d.a.d, false, false, false)), false), vec2<bool>(true, true), !(!vec2<bool>(var_1.d.d.d, var_1.d.b.b))));
    var_1 = Struct_3(var_0, func_1().b.c.x, vec2<i32>(_wgslsmith_sub_i32(-var_1.d.d.e.x, ~u_input.a.x), ~28651i), Struct_2(func_1().c, func_1().a, func_1().c, var_1.d.c));
    let var_3 = firstLeadingBit(vec3<u32>(var_0, firstTrailingBit(58774u), ~69704u));
    var var_4 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_4.b.c.x), _wgslsmith_f_op_f32(abs(var_1.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-457f, var_4.a.c.x), var_4.c.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d.d.a) * var_4.d.c.yz))));
}

