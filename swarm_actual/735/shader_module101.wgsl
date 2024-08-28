struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = vec4<f32>(-234f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1216f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-573f, 1082f)))), -334f);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -868f))) - var_0.x), -345f);
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_mult_i32(-(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b.x, u_input.b.x)), ~vec2<i32>(u_input.b.x, u_input.b.x)) | ~1i), u_input.b.x);
    let var_4 = !(!(!((u_input.a ^ u_input.a) <= 43625u)));
    return reverseBits(~_wgslsmith_mod_u32(4294967295u, 0u | u_input.a));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: i32) -> Struct_2 {
    let var_0 = vec2<u32>(_wgslsmith_div_u32((1u ^ u_input.a) & ~func_3(true), u_input.a), 0u);
    let var_1 = Struct_2(arg_1, Struct_1(arg_0.c, vec4<bool>(any(vec2<bool>(true, true)), arg_2.x, false, true), !arg_0.a.b.b.x, abs(1u)), arg_0.a.c);
    let var_2 = _wgslsmith_dot_vec2_i32(var_1.b.a.xw, var_1.b.a.xz);
    var var_3 = -max(var_1.b.a.x, 1i);
    let var_4 = select(!vec3<bool>(arg_0.a.b.c, false, true), arg_0.a.b.b.wyy, arg_2);
    return arg_0.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~arg_1.c.xxw, vec3<u32>(~arg_1.c.x, ~4294967295u, reverseBits(127158u)) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.b.d, arg_1.c.x, u_input.a), vec3<u32>(81955u, u_input.a, 83235u)), arg_1.c.wyz) % vec3<u32>(32u))), ~62144u);
    let var_1 = arg_1.b;
    let var_2 = 33527u;
    var var_3 = select(func_2(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, 1071f, arg_1.a.x)), Struct_1(vec4<i32>(arg_1.b.a.x, arg_0.x, 46257i, 10090i), var_1.b, arg_1.b.b.x, var_0), vec4<u32>(610u, 7310u, var_2, 0u)), _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(arg_1.a.x + 880f)), arg_0, countOneBits(arg_1.c.wz) >> (vec2<u32>(var_0, var_1.d) % vec2<u32>(32u)), max(reverseBits(var_2), _wgslsmith_sub_u32(21383u, var_2))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x), -571f, func_2(Struct_3(arg_1, 316f, vec4<i32>(arg_0.x, -37414i, u_input.b.x, arg_2.x), arg_1.c.wy, arg_1.b.d), arg_1.a, arg_1.b.b.yxz, arg_1.b.a.x).a.x)), select(vec3<bool>(var_0 > 0u, var_1.b.x, !var_1.c), select(!vec3<bool>(arg_1.b.c, arg_1.b.b.x, var_1.c), func_2(Struct_3(Struct_2(arg_1.a, Struct_1(vec4<i32>(u_input.b.x, arg_2.x, arg_2.x, 32497i), arg_1.b.b, true, u_input.a), arg_1.c), 614f, vec4<i32>(u_input.b.x, arg_0.x, -5146i, 2147483647i), arg_1.c.wx, 0u), vec3<f32>(-1520f, 492f, -318f), arg_1.b.b.wwy, -1i).b.b.xyx, var_1.b.x), var_1.b.yyz), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, 1i, 5381i, arg_0.x), vec4<i32>(46225i, -2147483647i, arg_2.x, 1i))).b.b.yy, select(vec2<bool>(true, !var_1.c | true), arg_1.b.b.zx, vec2<bool>(true, select(any(vec3<bool>(arg_1.b.c, var_1.b.x, true)), select(arg_1.b.b.x, arg_1.b.b.x, false), arg_1.b.c))), any(!arg_1.b.b.wx));
    var var_4 = true;
    return 31470i;
}

fn func_1(arg_0: vec3<i32>) -> vec3<f32> {
    let var_0 = -_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0.x ^ arg_0.x, _wgslsmith_add_i32(arg_0.x, u_input.b.x)), -1i) > func_4(_wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.x, -27316i, 24691i, -2147483647i) & (vec4<i32>(arg_0.x, -2147483647i, -1i, u_input.b.x) >> (vec4<u32>(u_input.a, 101806u, 5377u, u_input.a) % vec4<u32>(32u))), vec4<i32>(countOneBits(56370i), 0i, ~1i, -u_input.b.x)), func_2(Struct_3(Struct_2(vec3<f32>(-1444f, -350f, 1357f), Struct_1(vec4<i32>(-1i, arg_0.x, 37332i, 0i), vec4<bool>(true, false, false, true), false, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u)), -960f, _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -29353i, u_input.b.x, arg_0.x), vec4<i32>(arg_0.x, -2147483647i, -26274i, 50496i)), vec2<u32>(62135u, 6372u) ^ vec2<u32>(u_input.a, 91664u), ~1u), vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, -493f)), -1828f, _wgslsmith_div_f32(545f, -631f)), vec3<bool>(any(vec3<bool>(false, false, true)), true, true), arg_0.x), u_input.b.zz, ~(-vec4<i32>(-10820i, u_input.b.x, arg_0.x, 1i)));
    let var_1 = _wgslsmith_div_u32(~47132u, u_input.a);
    var var_2 = select(func_2(Struct_3(func_2(Struct_3(Struct_2(vec3<f32>(-363f, 1000f, 215f), Struct_1(vec4<i32>(-1i, arg_0.x, 9565i, 22920i), vec4<bool>(var_0, true, true, false), true, var_1), vec4<u32>(var_1, var_1, u_input.a, u_input.a)), 1024f, vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x), vec2<u32>(var_1, 1u), var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1976f, -292f, 785f)), !vec3<bool>(var_0, var_0, var_0), select(u_input.b.x, 41538i, false)), _wgslsmith_f_op_f32(f32(-1f) * -474f), -vec4<i32>(arg_0.x, 2147483647i, 0i, u_input.b.x) | vec4<i32>(arg_0.x, u_input.b.x, -2147483647i, u_input.b.x), ~vec2<u32>(u_input.a, u_input.a), min(var_1, firstTrailingBit(0u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1476f, 624f, 589f)))), !vec3<bool>(true, !var_0, !var_0), max(2147483647i, ~(5462i >> (u_input.a % 32u)))).b.b, vec4<bool>(11007i < ~max(arg_0.x, 17684i), _wgslsmith_mod_u32(u_input.a, var_1) >= firstLeadingBit(func_3(false)), var_0, var_0), !(!var_0));
    var_2 = !vec4<bool>((any(vec3<bool>(false, var_0, var_0)) && var_0) | var_2.x, var_2.x || (true | func_2(Struct_3(Struct_2(vec3<f32>(1030f, -2488f, 309f), Struct_1(vec4<i32>(0i, -2147483647i, 21762i, u_input.b.x), vec4<bool>(false, false, true, true), true, 4294967295u), vec4<u32>(u_input.a, 1u, 6005u, var_1)), 2059f, vec4<i32>(-35270i, 2147483647i, arg_0.x, u_input.b.x), vec2<u32>(var_1, 0u), 72317u), vec3<f32>(-566f, -1000f, -762f), vec3<bool>(var_0, true, true), arg_0.x).b.b.x), var_0, var_2.x);
    var_2 = vec4<bool>(1u < u_input.a, (max(~42777u, var_1) & u_input.a) >= _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, var_1), ~_wgslsmith_mod_vec2_u32(vec2<u32>(45181u, 0u), vec2<u32>(var_1, 0u))), !(_wgslsmith_f_op_f32(trunc(-932f)) <= func_2(Struct_3(Struct_2(vec3<f32>(394f, 666f, 635f), Struct_1(vec4<i32>(arg_0.x, u_input.b.x, arg_0.x, u_input.b.x), vec4<bool>(true, var_0, false, var_2.x), var_2.x, 6591u), vec4<u32>(u_input.a, 89893u, 22826u, u_input.a)), -132f, vec4<i32>(arg_0.x, arg_0.x, u_input.b.x, u_input.b.x), vec2<u32>(u_input.a, u_input.a), 59665u), vec3<f32>(-870f, -1072f, -1637f), var_2.xwy, 2147483647i).a.x), var_0);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(122f, -361f, -249f)) * vec3<f32>(322f, 880f, 1044f)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(692f, -654f, -1686f))), _wgslsmith_div_vec3_f32(vec3<f32>(-688f, 568f, -1431f), vec3<f32>(231f, 963f, -247f)))))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<bool>) -> bool {
    return true;
}

fn func_6(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = func_2(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1830f, arg_0.x, arg_1) + arg_0.wwx) - arg_0.wwy), Struct_1(vec4<i32>(u_input.b.x, arg_2.x, u_input.b.x, 7613i), !vec4<bool>(true, false, arg_3.x, false), true, _wgslsmith_add_u32(u_input.a, 25892u)), vec4<u32>(func_3(false), u_input.a, abs(u_input.a), func_2(Struct_3(Struct_2(arg_0.zxy, Struct_1(vec4<i32>(-14442i, 13567i, u_input.b.x, -2147483647i), vec4<bool>(false, arg_3.x, arg_3.x, false), arg_3.x, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), arg_1, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec2<u32>(4294967295u, 32149u), u_input.a), vec3<f32>(arg_0.x, arg_0.x, arg_1), vec3<bool>(arg_3.x, false, arg_3.x), 5341i).b.d)), -1022f, vec4<i32>(arg_2.x, func_2(Struct_3(Struct_2(vec3<f32>(arg_0.x, arg_1, 506f), Struct_1(vec4<i32>(2594i, 27405i, -1i, -995i), vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x), arg_3.x, u_input.a), vec4<u32>(4294967295u, 1u, 13011u, u_input.a)), 709f, vec4<i32>(-1699i, -1i, u_input.b.x, -96389i), vec2<u32>(29380u, u_input.a), 13997u), vec3<f32>(arg_0.x, -862f, arg_0.x), !arg_3.yxy, u_input.b.x | 1i).b.a.x, ~(u_input.b.x ^ u_input.b.x), 1i), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(11999u, u_input.a)) << (vec2<u32>(u_input.a, abs(69556u)) % vec2<u32>(32u)), reverseBits(u_input.a) & 5520u), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -474f) - _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), arg_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1266f, arg_0.x, arg_3.x)))), _wgslsmith_f_op_f32(abs(arg_1))), !(!arg_3.zww), _wgslsmith_add_i32(-u_input.b.x, -2147483647i)).b.a.zxx;
    var_0 = min(-u_input.b, vec3<i32>(_wgslsmith_mod_i32(reverseBits(var_0.x), -5251i) & -(var_0.x >> (59686u % 32u)), (arg_2.x | -2147483647i) >> (~u_input.a % 32u), 20115i));
    var var_1 = select(func_2(Struct_3(func_2(Struct_3(Struct_2(arg_0.xww, Struct_1(vec4<i32>(2147483647i, u_input.b.x, 1i, var_0.x), vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), arg_3.x, 45056u), vec4<u32>(1u, u_input.a, 38598u, u_input.a)), 1401f, vec4<i32>(-1i, 1i, -3267i, arg_2.x), vec2<u32>(4294967295u, u_input.a), 4294967295u), _wgslsmith_f_op_vec3_f32(arg_0.yzw + vec3<f32>(arg_0.x, -350f, 1273f)), arg_3.xxz, u_input.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-197f, -352f)))), vec4<i32>(-1i, min(-34194i, -2147483647i), -2147483647i, ~45433i), countOneBits(vec2<u32>(u_input.a, u_input.a)), u_input.a), vec3<f32>(_wgslsmith_f_op_f32(floor(func_2(Struct_3(Struct_2(vec3<f32>(1127f, arg_0.x, arg_1), Struct_1(vec4<i32>(var_0.x, -236i, 0i, arg_2.x), arg_3, arg_3.x, u_input.a), vec4<u32>(u_input.a, u_input.a, 85782u, 2154u)), 750f, vec4<i32>(arg_2.x, 44823i, 2147483647i, 15760i), vec2<u32>(1u, 56740u), 0u), vec3<f32>(-462f, arg_1, arg_0.x), arg_3.xyw, var_0.x).a.x)), 1053f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(2108f)), _wgslsmith_f_op_f32(abs(arg_1))))), arg_3.ywx, _wgslsmith_div_i32(_wgslsmith_div_i32(func_4(vec4<i32>(11217i, 939i, -1i, -2147483647i), Struct_2(arg_0.zwz, Struct_1(vec4<i32>(-35056i, var_0.x, 2147483647i, 5000i), arg_3, arg_3.x, u_input.a), vec4<u32>(u_input.a, 66491u, 0u, 20704u)), u_input.b.yy, vec4<i32>(var_0.x, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.x), 0i)).b.b.zzx, arg_3.xxz, false);
    let var_2 = func_2(Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-421f - -1700f), _wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(-460f - 680f)), func_2(Struct_3(Struct_2(arg_0.xzw, Struct_1(vec4<i32>(u_input.b.x, 43406i, var_0.x, var_0.x), arg_3, var_1.x, u_input.a), vec4<u32>(3817u, u_input.a, 4401u, 1u)), 1945f, vec4<i32>(-35624i, 2946i, 16666i, var_0.x), vec2<u32>(u_input.a, 66819u), 0u), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, 154f), arg_0.zxz), select(arg_3.xwy, arg_3.wyw, true), firstLeadingBit(arg_2.x)).b, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 10826u, 30644u, 70783u) ^ vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 31967u, u_input.a))), arg_1, _wgslsmith_mult_vec4_i32(~(-vec4<i32>(2147483647i, var_0.x, u_input.b.x, -23153i)), ~(~vec4<i32>(-47997i, u_input.b.x, arg_2.x, var_0.x))), vec2<u32>(~func_3(arg_3.x), u_input.a), abs(reverseBits(1u) & (u_input.a ^ 0u))), arg_0.wyz, !vec3<bool>(!arg_3.x | (u_input.a == u_input.a), !all(arg_3.zy), arg_3.x), 34647i).b;
    var var_3 = arg_0.x;
    return func_2(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_0.x, -664f) - vec3<f32>(arg_0.x, -707f, -564f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 403f, arg_1))), func_2(Struct_3(Struct_2(vec3<f32>(arg_1, arg_0.x, arg_1), Struct_1(vec4<i32>(-22332i, arg_2.x, u_input.b.x, var_0.x), arg_3, true, 51270u), vec4<u32>(u_input.a, var_2.d, 4294967295u, 18797u)), arg_1, var_2.a, vec2<u32>(u_input.a, u_input.a), var_2.d), _wgslsmith_f_op_vec3_f32(sign(arg_0.zzx)), var_2.b.xzz, -19382i >> (u_input.a % 32u)).b, vec4<u32>(var_2.d, 7151u, 4294967295u, 57402u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(61491u, u_input.a, var_2.d, 1u), vec4<u32>(34545u, 44235u, 1u, 27811u)) % vec4<u32>(32u))), arg_0.x, abs(var_2.a), ~firstTrailingBit(~vec2<u32>(u_input.a, 1u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.d, u_input.a, var_2.d) ^ countOneBits(vec3<u32>(var_2.d, u_input.a, 113094u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.d, 65949u, 1u) << (vec3<u32>(var_2.d, 29834u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, 4294967295u, 4294967295u)))), _wgslsmith_f_op_vec3_f32(-arg_0.yzx), arg_3.xwy, reverseBits(abs(2147483647i))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = func_6(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1009f, -256f, 2171f, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1176f, 501f, -720f, 867f)))))), _wgslsmith_f_op_f32(step(263f, _wgslsmith_f_op_f32(f32(-1f) * -1064f))), vec2<i32>(0i, 0i), vec4<bool>(false, true, var_0 >= 1u, func_5(select(vec4<i32>(13715i, u_input.b.x, -1061i, 15420i) << (vec4<u32>(73853u, var_0, 0u, var_0) % vec4<u32>(32u)), -vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x), false), Struct_2(_wgslsmith_f_op_vec3_f32(func_1(vec3<i32>(u_input.b.x, -11765i, u_input.b.x))), func_2(Struct_3(Struct_2(vec3<f32>(2026f, 360f, -2255f), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, -2839i, 1i), vec4<bool>(true, true, true, true), true, 2181u), vec4<u32>(var_0, u_input.a, u_input.a, 74748u)), -862f, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 23211i), vec2<u32>(4294967295u, 4294967295u), 0u), vec3<f32>(-401f, 426f, 288f), vec3<bool>(true, true, true), u_input.b.x).b, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, var_0, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)))));
    var var_2 = vec3<u32>(countOneBits(0u), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1.d, ~var_0, ~var_0), ~(~var_1.d)), 38992u);
    var var_3 = Struct_3(func_2(Struct_3(func_2(Struct_3(Struct_2(vec3<f32>(177f, -841f, -786f), Struct_1(vec4<i32>(-2147483647i, 2147483647i, -16868i, var_1.a.x), vec4<bool>(true, false, var_1.b.x, var_1.c), false, 90845u), vec4<u32>(12778u, var_2.x, 40057u, 0u)), -316f, vec4<i32>(u_input.b.x, -1i, var_1.a.x, -8004i), var_2.xz, 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(1093f, 1300f, -488f) * vec3<f32>(-963f, 208f, -479f)), !var_1.b.ywy, _wgslsmith_clamp_i32(2147483647i, 10987i, u_input.b.x)), -484f, var_1.a, ~_wgslsmith_div_vec2_u32(vec2<u32>(18182u, 27292u), var_2.xy), var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(161f, -1011f, -4015f)))), vec3<bool>(func_5(vec4<i32>(var_1.a.x, var_1.a.x, u_input.b.x, u_input.b.x), Struct_2(vec3<f32>(1157f, 555f, -374f), Struct_1(vec4<i32>(0i, 40110i, var_1.a.x, var_1.a.x), vec4<bool>(false, var_1.b.x, var_1.c, false), var_1.b.x, u_input.a), vec4<u32>(0u, var_1.d, u_input.a, 4294967295u)), var_1.b.wyw), var_1.c, false), _wgslsmith_mult_i32(var_1.a.x, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(2147483647i, u_input.b.x, -1i))) >> (0u % 32u)), -936f, var_1.a, _wgslsmith_add_vec2_u32(var_2.zx, vec2<u32>(13352u, ~_wgslsmith_mod_u32(var_0, 1u))), func_6(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-183f, -341f, 391f, -1373f))), vec4<f32>(_wgslsmith_f_op_f32(-2882f - 1383f), 1322f, _wgslsmith_f_op_f32(trunc(-1281f)), _wgslsmith_f_op_f32(f32(-1f) * -170f)), !(!var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(func_2(Struct_3(Struct_2(vec3<f32>(-1000f, -1763f, -316f), var_1, vec4<u32>(1u, 4294967295u, var_1.d, 1u)), 1000f, var_1.a, vec2<u32>(0u, 51860u), var_1.d), vec3<f32>(-1395f, -560f, -526f), var_1.b.zyy, 32647i).a.x))), u_input.b.zx, var_1.b).d);
    let var_4 = func_2(Struct_3(func_2(Struct_3(Struct_2(vec3<f32>(181f, var_3.b, -128f), var_1, var_3.a.c), _wgslsmith_f_op_f32(max(var_3.a.a.x, -191f)), var_3.a.b.a << (vec4<u32>(var_1.d, 0u, 30260u, var_2.x) % vec4<u32>(32u)), vec2<u32>(1u, var_0), _wgslsmith_add_u32(0u, 10158u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, -610f, 793f) + vec3<f32>(var_3.a.a.x, -315f, 264f)), vec3<bool>(all(var_3.a.b.b.zx), true, true), -_wgslsmith_mod_i32(2147483647i, 2917i)), _wgslsmith_f_op_f32(f32(-1f) * -781f), ~(-vec4<i32>(var_3.c.x, -44971i, -1i, u_input.b.x)), var_2.xy, var_2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(608f, -1000f))), _wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(f32(-1f) * -907f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.a.a.x)) - _wgslsmith_f_op_f32(var_3.b - -335f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(var_3.a.a)), _wgslsmith_f_op_vec3_f32(var_3.a.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, var_3.b, 947f))), select(!var_1.c, var_0 == var_1.d, all(vec2<bool>(false, var_3.a.b.b.x)))))), !(!var_3.a.b.b.wzz), -var_3.c.x ^ (i32(-1i) * -2147483647i));
    var var_5 = _wgslsmith_add_i32(-var_3.c.x, select(var_1.a.x, var_1.a.x, func_5(vec4<i32>(var_1.a.x, func_2(Struct_3(Struct_2(var_4.a, var_4.b, vec4<u32>(u_input.a, var_1.d, 12903u, 4294967295u)), 274f, vec4<i32>(var_4.b.a.x, -1i, var_1.a.x, var_3.c.x), var_4.c.yz, 2892u), vec3<f32>(var_3.a.a.x, -653f, var_3.a.a.x), var_3.a.b.b.zyw, var_1.a.x).b.a.x, var_1.a.x, var_4.b.a.x), func_2(Struct_3(Struct_2(vec3<f32>(-170f, var_4.a.x, 1321f), Struct_1(vec4<i32>(-5424i, 25739i, 0i, u_input.b.x), vec4<bool>(true, false, false, var_3.a.b.c), var_1.c, var_1.d), var_3.a.c), var_3.b, vec4<i32>(var_3.a.b.a.x, u_input.b.x, var_1.a.x, var_3.a.b.a.x), var_4.c.zy, var_4.b.d), _wgslsmith_f_op_vec3_f32(func_1(vec3<i32>(var_3.a.b.a.x, var_4.b.a.x, 1i))), var_3.a.b.b.xxz, var_4.b.a.x), vec3<bool>(2147483647i <= var_1.a.x, false && var_1.c, false | var_3.a.b.b.x))));
    let var_6 = ~firstTrailingBit(func_2(Struct_3(Struct_2(var_3.a.a, var_3.a.b, var_4.c), 779f, countOneBits(var_3.a.b.a), vec2<u32>(0u, var_0), countOneBits(41495u)), var_4.a, select(!vec3<bool>(true, var_4.b.b.x, var_3.a.b.c), vec3<bool>(var_4.b.b.x, var_4.b.c, false), vec3<bool>(false, true, false)), _wgslsmith_dot_vec4_i32(var_3.a.b.a, vec4<i32>(37251i, var_3.c.x, 3892i, -2147483647i))).b.a);
    var var_7 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.d, 0u, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(~u_input.a, _wgslsmith_dot_vec4_u32(var_3.a.c, vec4<u32>(var_3.e, 20772u, var_0, 6389u))), var_2.x), _wgslsmith_div_i32(func_2(Struct_3(Struct_2(vec3<f32>(-3047f, var_3.a.a.x, 1005f), var_1, var_3.a.c), -668f, firstLeadingBit(var_4.b.a), _wgslsmith_mult_vec2_u32(var_3.a.c.wy, var_2.xx), 4806u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(var_1.a.zzx))), !var_1.b.xww, -1747i).b.a.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, var_6.x, 12887i), -30998i) ^ ~func_2(Struct_3(var_4, 969f, vec4<i32>(var_1.a.x, 14126i, 2147483647i, u_input.b.x), var_2.yz, 42779u), vec3<f32>(var_4.a.x, 1618f, 1347f), var_1.b.yyx, -11534i).b.a.x), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_add_vec3_i32(abs(u_input.b), _wgslsmith_clamp_vec3_i32(var_1.a.yzy, ~vec3<i32>(var_4.b.a.x, 14090i, -44451i), vec3<i32>(13285i, -19564i, var_3.c.x) >> (var_3.a.c.www % vec3<u32>(32u)))))).x);
}

