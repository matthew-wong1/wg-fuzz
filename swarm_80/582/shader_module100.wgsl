struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: i32, arg_3: Struct_4) -> vec3<u32> {
    let var_0 = !(~(~u_input.c.x) > _wgslsmith_mod_u32(~15179u, ~1u));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(arg_1, -634f)), 1000f, arg_1)), Struct_1(firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.c.yy, u_input.c.zz) & u_input.c.yx), !vec2<bool>(true, any(arg_3.b.xz)), vec2<i32>(-17928i, countOneBits(-1i)), vec2<i32>(~(-23292i), select(u_input.b.x, ~40563i, any(arg_0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-718f, arg_1, arg_1, 280f)) * _wgslsmith_div_vec4_f32(vec4<f32>(1224f, -1929f, -386f, 830f), vec4<f32>(430f, 149f, -1605f, arg_1))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-414f, arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(568f, arg_1, arg_1, -1000f) - vec4<f32>(-803f, 1207f, -877f, -248f))))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.yzz, u_input.b.wxy) ^ countOneBits(vec3<i32>(-2147483647i, -1i, 17496i)), -abs(vec3<i32>(15921i, arg_2, u_input.a))), ~(-vec3<i32>(arg_2, arg_0.a, u_input.b.x))));
    var var_2 = arg_3;
    var var_3 = !vec4<bool>(false, arg_3.c, var_2.b.x, var_0);
    let var_4 = _wgslsmith_f_op_vec3_f32(-var_1.b.e.wwy);
    return ~vec3<u32>(~(u_input.c.x & var_1.b.a.x), ~1u, 14419u) | (~u_input.c.yxx & select(firstLeadingBit(~u_input.c.zzw), vec3<u32>(1u, 1u, 1u) & select(u_input.c.wyz, u_input.c.zwx, var_2.b), var_3.wzw));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: u32, arg_3: u32) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec3_u32(~min(func_3(Struct_4(1i, vec3<bool>(true, false, false), false), -121f, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-18293i, 0i, u_input.b.x, u_input.b.x)), Struct_4(u_input.a, vec3<bool>(true, true, true), true)), abs(vec3<u32>(u_input.c.x, 89237u, 4294967295u))), ~vec3<u32>(~(~arg_3), ~max(0u, 1u), ~0u | _wgslsmith_add_u32(arg_3, u_input.c.x)));
    var var_1 = (arg_0.x != _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), vec3<i32>(1i, arg_0.x >> (arg_3 % 32u), reverseBits(arg_0.x)))) || (countOneBits(4294967295u) >= ~_wgslsmith_div_u32(countOneBits(arg_2), var_0));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(487f * arg_1), 268f, min(~(~(-1i)), ~(~u_input.a)) < arg_0.x));
    var var_3 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), vec3<bool>(false, true, (-10584i | arg_0.x) >= firstTrailingBit(arg_0.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), true), true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(false, true))), vec3<bool>(!any(vec3<bool>(false, false, true)), (arg_0.x & -19854i) >= max(arg_0.x ^ 1i, 9858i), any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true))));
    return Struct_3(Struct_1(~vec2<u32>(~u_input.c.x, _wgslsmith_mult_u32(arg_2, 0u)), select(!var_3.zx, var_3.zz, -20379i <= _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_0.x), vec2<i32>(0i, -5495i))), min(vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_mult_vec2_i32(arg_0.wy ^ arg_0.zw, vec2<i32>(-2147483647i, u_input.b.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(0i & arg_0.x, abs(-2147483647i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_0.x), -arg_0.xw)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -501f, var_2, -1775f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, -627f, 1000f, -1040f), vec4<f32>(arg_1, arg_1, -1509f, arg_1), var_3.x))))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-arg_0)), arg_2.a, -(~(_wgslsmith_add_i32(1228i, arg_2.a.d.x) | u_input.a)));
    let var_1 = false;
    var_0 = Struct_2(arg_2.a.e.ywx, func_2(-(~(~u_input.b)), 345f, _wgslsmith_mult_u32(1u, ~arg_1.x), ~_wgslsmith_sub_u32(4232u, arg_2.a.a.x)).a, -71552i);
    let var_2 = func_2(vec4<i32>(-38955i, ~_wgslsmith_dot_vec3_i32(reverseBits(u_input.b.zzz), select(u_input.b.xzz, u_input.b.wzx, var_1)), -15429i, 18575i), _wgslsmith_f_op_f32(sign(-954f)), abs(arg_2.a.a.x), 1u >> (1u % 32u));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(890f, arg_2.a.e.x, _wgslsmith_f_op_f32(-var_0.b.e.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_2.a.e.zyz * arg_2.a.e.xyx))) + vec3<f32>(var_0.b.e.x, _wgslsmith_f_op_f32(-var_0.b.e.x), _wgslsmith_f_op_f32(-var_2.a.e.x)))), func_2(vec4<i32>(-2147483647i, var_2.a.d.x, ~_wgslsmith_add_i32(arg_2.a.d.x, arg_2.a.d.x), -1i), -1000f, 17918u, u_input.c.x).a, ~u_input.a | _wgslsmith_sub_i32(var_2.a.d.x, var_0.c));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(600f, -1701f, arg_0) + vec3<f32>(arg_0, arg_2.a.e.x, arg_0)))))), Struct_1(func_2(~u_input.b, _wgslsmith_f_op_f32(var_2.a.e.x + -1600f), reverseBits(var_2.a.a.x), _wgslsmith_mult_u32(var_0.b.a.x, 25407u)).a.a | (~var_0.b.a ^ (vec2<u32>(28860u, var_2.a.a.x) >> (vec2<u32>(var_2.a.a.x, arg_2.a.a.x) % vec2<u32>(32u)))), var_2.a.b, reverseBits(-vec2<i32>(-1i, u_input.b.x)) | -var_0.b.d, -vec2<i32>(var_2.a.c.x, u_input.a) & vec2<i32>(-2147483647i, ~u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -482f), _wgslsmith_f_op_f32(var_2.a.e.x * arg_2.a.e.x), _wgslsmith_f_op_f32(-1000f + arg_2.a.e.x), _wgslsmith_f_op_f32(153f + -1356f)))), var_0.c);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec2<bool>) -> i32 {
    let var_0 = Struct_4(_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 16700i, arg_1.b.d.x, 0i), vec4<i32>(arg_1.b.c.x, -2147483647i, arg_1.c, -1i)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, u_input.b), abs(u_input.b)))), !arg_2.b, true);
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(734f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * arg_1.b.e.x))))));
    let var_2 = var_0;
    var var_3 = Struct_1(vec2<u32>(1u ^ (reverseBits(4294967295u) << (arg_0.b.a.x % 32u)), ~2755u), !vec2<bool>(true, var_0.b.x), abs(vec2<i32>(arg_2.a, _wgslsmith_mult_i32(i32(-1i) * -17752i, select(var_0.a, arg_2.a, arg_1.b.b.x)))), arg_1.b.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1243f, -759f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_1.b.e.x) * -1304f), _wgslsmith_f_op_f32(select(arg_0.b.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1214f), arg_0.b.a.x <= 55319u)))));
    var_3 = arg_0.b;
    return 0i;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1242f)), 357f))), _wgslsmith_f_op_f32(trunc(284f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -623f) + 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1418f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-502f, 988f, 199f), vec3<f32>(1397f, -272f, -1626f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-458f, -590f, 919f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-542f, -1166f, 796f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(493f, 1336f, -1000f)))))), true));
    var var_1 = firstLeadingBit(func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)), vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), ~u_input.c.x, ~36463u, firstTrailingBit(u_input.c.x)), func_2(u_input.b << (u_input.c % vec4<u32>(32u)), var_0.x, 5801u, 1u)), func_4(1000f, u_input.c, Struct_3(Struct_1(u_input.c.xx, vec2<bool>(false, true), u_input.b.xy, vec2<i32>(5916i, u_input.b.x), vec4<f32>(384f, var_0.x, var_0.x, var_0.x)))), Struct_4(u_input.b.x, select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), true), !vec2<bool>(func_4(614f, u_input.c, Struct_3(Struct_1(u_input.c.yz, vec2<bool>(true, true), u_input.b.wz, u_input.b.zy, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))).b.b.x, any(vec4<bool>(false, true, true, true)))));
    var var_2 = -25675i;
    let var_3 = vec3<f32>(var_0.x, 159f, var_0.x);
    var var_4 = ~_wgslsmith_div_vec3_i32(u_input.b.zyz, u_input.b.yyz);
    return Struct_1(max(~(~vec2<u32>(1u, 79135u) << ((vec2<u32>(1u, 59723u) | u_input.c.wz) % vec2<u32>(32u))), ~vec2<u32>(0u, ~57119u)), !select(vec2<bool>(all(vec4<bool>(false, false, true, false)), true), vec2<bool>(any(vec3<bool>(false, true, false)), true), vec2<bool>(true, true)), -(vec2<i32>(var_4.x, _wgslsmith_add_i32(u_input.b.x, -1i)) << (u_input.c.xw % vec2<u32>(32u))), vec2<i32>(1i, _wgslsmith_mult_i32(var_4.x & (0i & var_4.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_4.x, 2147483647i), var_4.zx) << (7671u % 32u))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, -1622f, -385f) - vec4<f32>(var_0.x, var_0.x, var_3.x, -559f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-711f * 168f) - _wgslsmith_f_op_f32(trunc(var_3.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), -971f, _wgslsmith_f_op_f32(330f + -867f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<f32>(-568f, -944f, _wgslsmith_f_op_f32(step(1f, -1306f))), func_1(), ~(-1i));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(130f, _wgslsmith_f_op_f32(389f * var_0.b.e.x), var_0.b.e.x, _wgslsmith_f_op_f32(-605f * var_0.b.e.x)), func_2(abs(~u_input.b), var_0.b.e.x, ~_wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(1u, var_0.b.a.x)), _wgslsmith_add_u32(0u, ~1u)).a.e, vec4<bool>(true, true, var_0.b.b.x, true)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -211f));
    let var_3 = _wgslsmith_div_vec2_f32(func_1().e.zz, var_1.yw);
    var_1 = _wgslsmith_f_op_vec4_f32(select(var_0.b.e, vec4<f32>(-875f, func_4(-872f, firstLeadingBit(u_input.c), Struct_3(func_4(var_1.x, u_input.c, Struct_3(var_0.b)).b)).a.x, -2300f, _wgslsmith_f_op_f32(abs(-199f))), vec4<bool>(any(vec4<bool>(true, true, var_0.b.b.x, true)), true, true, var_0.b.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1831f, -662f, _wgslsmith_div_f32(var_3.x, var_2), _wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_vec3_f32(exp2(func_1().e.wwy)), u_input.c.wyy, u_input.c.zx);
}

