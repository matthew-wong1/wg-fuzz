struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = ~u_input.a.x;
    var_0 = _wgslsmith_div_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, ~reverseBits(u_input.a.x) << (u_input.a.x % 32u), ((u_input.a.x << (u_input.a.x % 32u)) ^ ~u_input.a.x) & 42396u));
    let var_1 = Struct_1(select(select(vec3<bool>(true, u_input.a.x < u_input.a.x, true), vec3<bool>(true, any(vec3<bool>(false, true, true)), true), vec3<bool>(all(vec2<bool>(false, false)), false, true)), vec3<bool>(true, false, !any(vec4<bool>(false, false, true, false))), vec3<bool>(true, true, true)), vec4<i32>(reverseBits(firstTrailingBit(i32(-1i) * -37427i)), 0i, -reverseBits(-2147483647i), abs(1i)), vec2<bool>(true, true));
    let var_2 = Struct_3(Struct_2(vec3<bool>(any(vec3<bool>(false, var_1.a.x, var_1.a.x)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1451f, _wgslsmith_f_op_f32(421f + 1058f))), vec4<f32>(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1277f - -265f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1315f) + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1792f, -1000f))), Struct_1(select(vec3<bool>(var_1.c.x, var_1.c.x, var_1.a.x), var_1.a, !var_1.a), ~vec4<i32>(var_1.b.x, -28669i, -10567i, 2147483647i) & vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), var_1.a.zx)), !var_1.a.xx, var_1.b.x, var_1.b.x, var_1.b.x);
    return var_1.a;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(select(func_3(), vec3<bool>(!any(vec3<bool>(true, false, true)), true, false), true), _wgslsmith_f_op_f32(ceil(-537f)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-514f - 2133f), -294f), -444f, _wgslsmith_f_op_f32(floor(-131f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1911f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1912f, -122f, -105f, 1575f)))))), Struct_1(select(vec3<bool>(all(vec3<bool>(false, false, true)), false, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), true), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(0i, 0i, -67747i, -10862i)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -22468i, 9900i, -1i), vec4<i32>(-13817i, 33288i, -2147483647i, 9i), vec4<i32>(-15437i, 2147483647i, -2286i, 1i)), reverseBits(vec4<i32>(-2147483647i, -4906i, 50852i, -1i))), vec4<i32>(0i, countOneBits(-29327i), 1i >> (1u % 32u), 1i)), vec2<bool>(true, true)));
    var var_1 = abs(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(abs(countOneBits(var_0.d.b)), var_0.d.b << (vec4<u32>(u_input.a.x, u_input.a.x, 0u, 125018u) % vec4<u32>(32u))), vec4<i32>(-var_0.d.b.x, 1i, 1i, abs(_wgslsmith_dot_vec2_i32(var_0.d.b.yy, var_0.d.b.wy)))));
    var var_2 = ~(-(~(-5033i & var_1.x)));
    let var_3 = vec4<i32>(-38341i, _wgslsmith_mult_i32(16174i, var_1.x), var_1.x, 1i ^ ~_wgslsmith_dot_vec2_i32(~vec2<i32>(-11775i, 1i), -var_0.d.b.wz));
    var var_4 = _wgslsmith_sub_vec2_u32(u_input.a.yz, abs(u_input.a.yx));
    return Struct_2(!vec3<bool>(true, var_0.d.a.x, false & all(var_0.d.a.yy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-260f, -374f, !(var_3.x > 45099i)))), var_0.c, var_0.d);
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    let var_0 = 4294967295u;
    var var_1 = Struct_4(_wgslsmith_div_vec2_u32(vec2<u32>(var_0, _wgslsmith_clamp_u32(u_input.a.x, 97314u, ~u_input.a.x)), vec2<u32>(40010u, min(var_0 | var_0, reverseBits(u_input.a.x)))), Struct_1(func_2().d.a, select(arg_0.d.b, -vec4<i32>(arg_0.d.b.x, 7721i, 50746i, arg_0.d.b.x), all(vec2<bool>(false, arg_0.d.c.x)) && (arg_0.d.c.x || arg_0.d.c.x)), vec2<bool>(u_input.a.x > ~u_input.a.x, arg_0.a.x)), !vec2<bool>(true, any(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.d.c.x))), Struct_2(select(arg_0.d.a, arg_0.a, ~(-34312i) < abs(arg_0.d.b.x)), arg_0.b, _wgslsmith_f_op_vec4_f32(abs(arg_0.c)), Struct_1(arg_0.a, firstTrailingBit(vec4<i32>(0i, arg_0.d.b.x, arg_0.d.b.x, -27621i)), vec2<bool>(any(vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.d.c.x)), all(vec3<bool>(true, arg_0.a.x, false))))));
    var var_2 = arg_0.c;
    var_1 = Struct_4(~_wgslsmith_clamp_vec2_u32(reverseBits(u_input.a.zy), max(vec2<u32>(var_1.a.x, var_1.a.x), u_input.a.yx | vec2<u32>(var_0, 21682u)), vec2<u32>(_wgslsmith_mod_u32(1u, u_input.a.x), 1u)), var_1.d.d, vec2<bool>(!(!arg_0.d.c.x), all(select(!arg_0.a, !arg_0.a, arg_0.b <= -1200f))), Struct_2(var_1.b.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.d.b)) * var_1.d.c.x), 425f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.c.x), _wgslsmith_f_op_f32(var_2.x * arg_0.c.x), var_2.x, _wgslsmith_f_op_f32(sign(1411f)))), Struct_1(arg_0.a, abs(vec4<i32>(-72863i, var_1.b.b.x, 2111i, arg_0.d.b.x)), arg_0.d.c)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_2().c.yy));
    return Struct_3(arg_0, arg_0.a.zy, var_1.b.b.x, max(var_1.d.d.b.x, ~2147483647i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-var_1.d.d.b.x, i32(-1i) * -4312i, abs(-8656i)), vec3<i32>(12826i, 7565i, arg_0.d.b.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_i32(-(~arg_3.b.xz), vec2<i32>(countOneBits(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(~arg_1, arg_1, arg_1 | arg_1, -38282i), vec4<i32>(38735i, abs(arg_3.b.x), 2147483647i, ~arg_1))));
    var_0 = (-select(45090i, 4397i, false) & select(-_wgslsmith_mult_i32(-1i, arg_1), _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_3.b.x, -2147483647i), max(0i, arg_3.b.x)), (arg_1 >= arg_3.b.x) || false)) | (-1i >> (u_input.a.x % 32u));
    var var_1 = arg_3.a.x;
    var var_2 = func_4(func_2());
    var var_3 = Struct_4(vec2<u32>(1u, u_input.a.x), arg_3, arg_3.a.xx, var_2.a);
    return Struct_2(vec3<bool>(arg_0.x & arg_3.a.x, all(vec3<bool>(all(var_2.b), select(false, arg_0.x, arg_3.a.x), !var_3.d.a.x)), true), _wgslsmith_div_f32(var_3.d.b, arg_2), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -321f, 838f, 417f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-497f, 1024f, arg_2, 1359f))), _wgslsmith_f_op_vec4_f32(exp2(var_3.d.c)))), Struct_1(var_2.a.d.a, firstLeadingBit(arg_3.b) << ((_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 10531u, 57761u), vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 82432u, var_3.a.x, u_input.a.x), vec4<u32>(1u, 15294u, var_3.a.x, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)), !var_2.a.d.a.yx));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec3<f32>) -> i32 {
    let var_0 = ~(reverseBits(~vec4<u32>(6340u, 1u, u_input.a.x, u_input.a.x)) << (_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u)), vec4<u32>(~u_input.a.x, 43585u, ~u_input.a.x, _wgslsmith_div_u32(0u, u_input.a.x))) % vec4<u32>(32u)));
    let var_1 = vec4<bool>(true, func_1(vec2<bool>(func_2().a.x, any(select(vec4<bool>(arg_1.b.x, arg_1.b.x, false, arg_0.a.x), vec4<bool>(false, arg_1.b.x, arg_0.d.c.x, arg_0.a.x), vec4<bool>(true, true, false, arg_1.b.x)))), arg_0.d.b.x, arg_0.c.x, func_4(func_2()).a.d).d.c.x, all(select(!(!vec4<bool>(arg_1.b.x, false, arg_1.b.x, false)), select(select(vec4<bool>(arg_0.a.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(true, arg_0.a.x, false, false), vec4<bool>(arg_0.d.c.x, false, false, false)), vec4<bool>(arg_0.d.a.x, false, arg_1.b.x, false), vec4<bool>(arg_1.b.x, true, arg_1.b.x, arg_1.b.x)), vec4<bool>(any(vec4<bool>(true, arg_0.d.a.x, false, arg_0.d.c.x)), false, arg_0.a.x | arg_0.d.a.x, arg_0.a.x))), arg_1.b.x);
    return abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-15669i, 24993i, arg_1.a, 2147483647i), arg_0.d.b), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 55889i, -10352i, arg_1.a), arg_0.d.b)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_1.a, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-19336i, 0i, -2147483647i), arg_0.d.b.xyw)) << (var_0.x % 32u)));
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: vec2<i32>, arg_3: i32) -> vec3<bool> {
    var var_0 = Struct_4(vec2<u32>(~9709u, 1u), Struct_1(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), vec4<i32>(1i ^ arg_3, _wgslsmith_div_i32(arg_1, -2147483647i), -1i, -61178i), vec2<bool>(true, true)), vec2<bool>(true, true), Struct_2(func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(vec2<bool>(false, true), -5677i, -1237f, Struct_1(vec3<bool>(true, false, true), vec4<i32>(13062i, -3972i, arg_2.x, -20479i), vec2<bool>(true, false))).b)), func_4(func_4(Struct_2(vec3<bool>(false, false, false), 1696f, vec4<f32>(-858f, 1000f, -1616f, 1461f), Struct_1(vec3<bool>(true, false, false), vec4<i32>(arg_2.x, arg_1, 0i, -15923i), vec2<bool>(false, false)))).a).a.c, func_4(Struct_2(vec3<bool>(false, false, false), -1534f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(623f, -831f, -647f, 202f), vec4<f32>(751f, -1982f, -1000f, -247f), vec4<bool>(false, false, true, false))), func_4(Struct_2(vec3<bool>(false, false, true), 1571f, vec4<f32>(-1683f, 298f, 437f, 699f), Struct_1(vec3<bool>(false, true, false), vec4<i32>(arg_1, arg_3, -92066i, arg_2.x), vec2<bool>(false, true)))).a.d)).a.d));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1959f, -931f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_4(var_0.d).a.c.x, _wgslsmith_f_op_f32(-var_0.d.b)))), func_2().b, _wgslsmith_f_op_f32(-var_0.d.c.x));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d.c.zzz - var_0.d.c.xxx)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.b), 203f);
    return select(func_3(), func_2().a, var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(2147483647i, select(func_6(~1u, func_5(func_1(vec2<bool>(true, true), -27636i, 289f, Struct_1(vec3<bool>(false, true, false), vec4<i32>(1i, 34047i, 43475i, -2147483647i), vec2<bool>(false, true))), Struct_5(1i, vec3<bool>(true, true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(617f, 337f, 1430f))), _wgslsmith_mod_vec2_i32(~vec2<i32>(0i, 45683i), func_1(vec2<bool>(false, false), 64325i, -559f, Struct_1(vec3<bool>(false, true, false), vec4<i32>(2147483647i, 9622i, -9984i, 79953i), vec2<bool>(false, false))).d.b.xz), _wgslsmith_div_i32(0i, -1i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, false, false)), true, true)), vec3<bool>(true, true, true)));
    var_0 = Struct_5(_wgslsmith_add_i32(-1i, ~var_0.a >> (abs(~u_input.a.x) % 32u)), !vec3<bool>(func_4(Struct_2(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), -1448f, vec4<f32>(132f, 223f, 378f, -1081f), Struct_1(var_0.b, vec4<i32>(var_0.a, 15785i, 62183i, 36358i), vec2<bool>(false, var_0.b.x)))).a.d.c.x, any(func_2().a), var_0.b.x));
    let var_1 = Struct_1(var_0.b, vec4<i32>(var_0.a << (~41662u % 32u), var_0.a, 2147483647i, var_0.a), var_0.b.zx);
    var_0 = Struct_5(-(~max(var_0.a, -2147483647i)), vec3<bool>(!func_6(1u, abs(8878i), -var_1.b.xy, _wgslsmith_dot_vec4_i32(var_1.b, var_1.b)).x, u_input.a.x <= ~_wgslsmith_clamp_u32(u_input.a.x, 1u, 1u), var_1.c.x));
    var_0 = Struct_5(var_0.a, !var_0.b);
    var_0 = Struct_5(max(2147483647i, -11970i), !var_1.a);
    let var_2 = vec4<u32>(~_wgslsmith_div_u32(~firstTrailingBit(u_input.a.x), _wgslsmith_mult_u32(u_input.a.x ^ 0u, u_input.a.x)), ~_wgslsmith_div_u32(35278u, 67435u), firstLeadingBit(countOneBits(~u_input.a.x)), countOneBits(u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -856f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1470f)))), -268f, _wgslsmith_f_op_f32(-328f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1000f))))), _wgslsmith_f_op_f32(max(-1922f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -897f) * 1f)))), func_1(select(var_0.b.xy, vec2<bool>(var_1.a.x, all(vec2<bool>(false, true))), !(!var_1.c.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(min(var_1.b.yx, vec2<i32>(var_0.a, var_0.a)), var_1.b.zw), var_1.b.wz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(567f * -291f))), Struct_1(!var_0.b, vec4<i32>(var_0.a, -8024i, -19006i, var_1.b.x) >> (~var_2 % vec4<u32>(32u)), var_1.c)).d.b, vec2<i32>(_wgslsmith_add_i32(-7768i, 2147483647i), var_1.b.x));
}

