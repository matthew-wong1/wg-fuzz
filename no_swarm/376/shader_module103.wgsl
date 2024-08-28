struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: u32) -> u32 {
    var var_0 = Struct_1(~(~(select(arg_3, arg_3, false) ^ 1u)), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x) + 454f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1657f))), !(arg_0 == -1i), !(_wgslsmith_div_f32(-724f, -647f) >= arg_2.a.x), all(vec3<bool>(true, true, true))), vec3<bool>(false, !all(vec3<bool>(true, true, true)), all(vec4<bool>(false, true, true, all(vec4<bool>(false, false, false, false))))));
    var var_1 = u_input.a;
    var var_2 = true;
    var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, countOneBits(-1i)), _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(-1i) * -vec2<i32>(67214i, 2147483647i)));
    var var_3 = Struct_1(_wgslsmith_add_u32(~(arg_3 & 52808u) | var_0.a, 97459u), select(select(select(!vec4<bool>(true, var_0.b.x, false, var_0.b.x), !var_0.b, vec4<bool>(var_0.c.x, true, var_0.c.x, true)), var_0.b, !vec4<bool>(var_0.b.x, false, true, false)), !select(!vec4<bool>(var_0.c.x, var_0.b.x, var_0.b.x, true), var_0.b, var_0.c.x), vec4<bool>(select(true, var_0.c.x, var_0.c.x), var_1.x == _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, var_1.x, arg_0, 1i), vec4<i32>(u_input.a.x, var_1.x, -1i, 2147483647i)), true, _wgslsmith_div_i32(2147483647i, 12392i) < arg_0)), vec3<bool>(true, any(vec2<bool>(any(var_0.c.xy), false)), !(!(arg_3 >= var_0.a))));
    return 1u & _wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_1.x, _wgslsmith_dot_vec2_u32(arg_1.yy, vec2<u32>(0u, 4473u)) | ~0u), arg_3, _wgslsmith_div_u32(21173u, arg_3 | 42665u));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(func_3(-24834i, vec3<u32>(16897u, 30064u, 4294967295u), Struct_2(arg_2.a), 4294967295u), 1u, 1u, countOneBits(4294967295u)), abs(vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_div_vec4_u32(abs(countOneBits(vec4<u32>(9319u, 1u, 13779u, 0u))), _wgslsmith_sub_vec4_u32(vec4<u32>(28189u, _wgslsmith_clamp_u32(41851u, 0u, 44266u), abs(1u), select(4294967295u, 54340u, true)), ~vec4<u32>(25724u, 136263u, 0u, 4294967295u))));
    var_0 = firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.x >> (1u % 32u), var_0.x, 1u), _wgslsmith_mod_vec4_u32(reverseBits(~vec4<u32>(0u, var_0.x, var_0.x, 4294967295u)), vec4<u32>(27543u & var_0.x, 4294967295u, ~42563u, var_0.x))));
    var var_1 = arg_2.a.zyx;
    let var_2 = Struct_1(firstTrailingBit(1u & min(88664u, var_0.x)) << (_wgslsmith_mod_u32(1u, ~(~var_0.x)) % 32u), vec4<bool>(!select(false, false, true), true | (firstLeadingBit(44828u) == _wgslsmith_mult_u32(var_0.x, 1u)), true, true), vec3<bool>(false, !(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), var_0.wwz) < (var_0.x ^ var_0.x)), all(vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))))));
    var_1 = arg_2.a.wwx;
    return var_2;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<bool>) -> vec4<bool> {
    let var_0 = -35015i;
    let var_1 = ~(_wgslsmith_sub_vec4_i32(max(vec4<i32>(arg_2, arg_2, 1i, -21431i), vec4<i32>(var_0, -3150i, arg_2, arg_2)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, -81261i, -2147483647i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(22908i, 2147483647i, var_0, u_input.a.x), vec4<i32>(78733i, 2147483647i, 2147483647i, u_input.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0, var_0, var_0, arg_2), vec4<i32>(arg_2, var_0, 7452i, arg_2)))) & vec4<i32>(~u_input.a.x & _wgslsmith_sub_i32(var_0, u_input.a.x), 1i, -1260i, max(1i, ~arg_2)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-798f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1843f * 389f), -1784f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1199f, -363f)) - -1994f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-103f)) + _wgslsmith_f_op_f32(round(-1145f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-948f)), _wgslsmith_f_op_f32(-1589f + 1683f), -173f, -653f))));
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(-var_2.a.x), var_2.a.x, var_2.a.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2082f, -1264f, 634f, var_2.a.x), vec4<f32>(var_2.a.x, var_2.a.x, 549f, var_2.a.x), vec4<bool>(true, arg_1.b.x, arg_3.x, arg_3.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 188f, var_2.a.x, 178f) + var_2.a), _wgslsmith_f_op_vec4_f32(select(var_2.a, vec4<f32>(851f, var_2.a.x, var_2.a.x, -1139f), arg_1.b))))));
    var var_3 = Struct_2(_wgslsmith_div_vec4_f32(var_2.a, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a.x - -498f), _wgslsmith_f_op_f32(ceil(-746f)))), var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.x, var_2.a.x))), var_2.a.x)));
    return vec4<bool>(true, !select(!any(arg_0.wyw), false, false), select(!arg_0.x, true, any(func_2(var_1.zxy << (vec3<u32>(arg_1.a, arg_1.a, 59236u) % vec3<u32>(32u)), _wgslsmith_mult_i32(-63142i, -1i), Struct_2(var_2.a)).c.zz)), !(!select(!arg_1.c.x, true, true)));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = reverseBits(vec3<i32>(u_input.a.x, ~u_input.a.x, select(-24327i, -(~(-2147483647i)), true)));
    let var_1 = -19919i;
    var var_2 = Struct_1(0u, select(select(vec4<bool>(var_1 > u_input.a.x, true, true, false), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))), true), vec4<bool>(true, true, true, true), any(func_4(vec4<bool>(true, true, true, true), func_2(vec3<i32>(4211i, 2147483647i, arg_0.x), -2215i, Struct_2(vec4<f32>(-856f, 1001f, -871f, 824f))), abs(u_input.a.x), func_2(var_0, 53440i, Struct_2(vec4<f32>(335f, 439f, 469f, -151f))).b.zx))), select(select(vec3<bool>(true, true, any(vec2<bool>(true, true))), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), func_2(abs(var_0), arg_0.x, Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(558f, 165f, 989f, 415f))))).b.zyy, all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true))));
    var_2 = func_2(vec3<i32>(1i, var_0.x, _wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(-24371i, firstTrailingBit(var_0.x)))), var_0.x, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-101f, 102f, 1314f, 271f))) - vec4<f32>(1f, 1f, 1f, 1f))));
    var_2 = Struct_1(0u, var_2.b, !(!var_2.b.zyy));
    return Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-478f, 892f, -1127f, -425f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-176f, 1000f, 763f, 860f) + vec4<f32>(340f, -902f, -903f, -2306f)) * _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 168f, 1000f, 696f), vec4<f32>(-1346f, 1316f, 146f, -1243f)))), vec4<f32>(1f, 1f, 1f, 1f)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    var var_0 = func_2(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, _wgslsmith_sub_i32(-670i, u_input.a.x)), ~countOneBits(vec3<i32>(-29682i, u_input.a.x, -29043i)))), -1i, func_1(vec3<i32>(u_input.a.x, _wgslsmith_add_i32(u_input.a.x << (arg_1.a % 32u), 46131i | u_input.a.x), -30198i)));
    var_0 = func_2(-vec3<i32>(u_input.a.x, 2147483647i, _wgslsmith_sub_i32(-69117i, u_input.a.x << (1u % 32u))), u_input.a.x, func_1(select(countOneBits(select(vec3<i32>(u_input.a.x, -323i, 18349i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), true)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -32956i)), vec3<i32>(89578i, 0i, 20957i), reverseBits(vec3<i32>(0i, u_input.a.x, -2147483647i))), vec3<bool>(var_0.b.x | var_0.c.x, false, !var_0.b.x))));
    var var_1 = vec3<f32>(336f, _wgslsmith_div_f32(1038f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(864f)), arg_0.a.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))));
    var var_2 = firstTrailingBit(-vec4<i32>(2147483647i, _wgslsmith_sub_i32(~(-24428i), u_input.a.x & 0i), select(u_input.a.x, 8720i, arg_1.c.x) & 2147483647i, abs(u_input.a.x)));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1017f - 539f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-183f, arg_0.a.x, 2622f), arg_0.a.wzw, vec3<bool>(true, true, false))))))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(vec3<i32>(-8583i & u_input.a.x, -u_input.a.x, func_5(func_1(vec3<i32>(u_input.a.x, -44540i, u_input.a.x)), Struct_1(0u, vec4<bool>(true, true, false, false), vec3<bool>(true, true, false)))));
    let var_1 = !select(vec2<bool>(true, true), func_2(var_0, var_0.x >> (~0u % 32u), Struct_2(vec4<f32>(-1091f, -377f, -1279f, -137f))).b.yx, vec2<bool>(true, true));
    let var_2 = 21729u;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1130f, 1000f, -868f, -1500f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(861f, -2626f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1193f - 170f)), _wgslsmith_f_op_f32(max(600f, -178f)))));
    var var_4 = !func_2(var_0, var_0.x, Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(651f, var_3.x, 866f, -249f))))).b;
    var var_5 = ~reverseBits(max(var_0, var_0));
    var var_6 = Struct_1(select(~0u, var_2 & ~var_2, _wgslsmith_f_op_f32(select(889f, _wgslsmith_f_op_f32(f32(-1f) * -129f), var_4.x)) == _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec4<bool>(!all(!var_4.zzw), var_4.x, !(!(var_1.x | true)), var_1.x), var_4.yyy);
    let x = u_input.a;
    s_output = StorageBuffer(1476f, _wgslsmith_f_op_vec3_f32(-var_3.zxw), _wgslsmith_dot_vec2_i32(~(~u_input.a), abs(vec2<i32>(u_input.a.x, var_0.x))));
}

