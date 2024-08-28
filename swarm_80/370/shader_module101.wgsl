struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-10849i, 32446i, 21328i);

var<private> global1: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(319f, -1763f), vec2<f32>(1792f, -2116f), vec2<f32>(1281f, -119f), vec2<f32>(333f, 511f), vec2<f32>(1267f, 1347f), vec2<f32>(2410f, 1239f), vec2<f32>(-339f, 282f), vec2<f32>(1449f, 1000f), vec2<f32>(-1174f, 218f), vec2<f32>(-744f, -2355f), vec2<f32>(1113f, -641f), vec2<f32>(-762f, -1522f), vec2<f32>(136f, -235f), vec2<f32>(-530f, 1913f), vec2<f32>(2626f, -861f), vec2<f32>(-1106f, -959f), vec2<f32>(-1000f, 2032f), vec2<f32>(1342f, 238f), vec2<f32>(-1618f, -146f), vec2<f32>(2064f, -234f), vec2<f32>(-1127f, 1327f), vec2<f32>(-163f, -539f), vec2<f32>(681f, -1747f));

var<private> global2: vec4<i32> = vec4<i32>(-11478i, -1i, 1i, -23837i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_sub_vec4_i32(-vec4<i32>(2936i, global2.x, global2.x, global2.x), abs(vec4<i32>(global0.x, u_input.c, 2147483647i, u_input.b)) | vec4<i32>(-799i, -1i, 2147483647i, u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1327f, -448f, -180f) * vec3<f32>(-1417f, -1312f, -1078f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2312f, -1000f, 1366f) * vec3<f32>(-504f, 452f, -652f)))), 0u | ~(u_input.a.x << (1u % 32u)), _wgslsmith_mult_vec2_u32(u_input.a.wx, firstLeadingBit(reverseBits(u_input.a.wy))), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(global2.x >= 26562i, all(vec3<bool>(true, false, false))))), Struct_2(global0.yy, Struct_1(~select(vec4<i32>(0i, global0.x, 0i, 2147483647i), vec4<i32>(-34192i, -13284i, global2.x, global2.x), vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-800f, -115f, 1264f), vec3<f32>(269f, 812f, -521f), true))), ~(~u_input.a.x), u_input.a.zw, vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(80554u, 23u)] - _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 23u)])), true), Struct_2(firstLeadingBit(abs(-vec2<i32>(2147483647i, 2633i))), Struct_1(vec4<i32>(~4229i, _wgslsmith_add_i32(25266i, -35039i), u_input.b, -global2.x), vec3<f32>(1f, 1f, 1f), ~u_input.a.x, firstLeadingBit(u_input.a.zz), vec2<bool>(false, true)), _wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-947f, -557f))), true));
    global2 = select(_wgslsmith_add_vec4_i32(var_0.c.b.a, var_0.a.a), ~_wgslsmith_div_vec4_i32(-countOneBits(vec4<i32>(global0.x, var_0.c.b.a.x, var_0.b.a.x, -16951i)), -_wgslsmith_sub_vec4_i32(var_0.c.b.a, vec4<i32>(-22256i, 2147483647i, u_input.b, global2.x))), vec4<bool>((var_0.a.c > var_0.a.c) | var_0.b.d, true, true, any(select(vec2<bool>(var_0.a.e.x, false), vec2<bool>(true, true), !var_0.c.b.e.x))));
    let var_1 = _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(max(u_input.a.yw, u_input.a.yw), var_0.c.b.d) & ~vec2<u32>(_wgslsmith_mod_u32(64172u, 4294967295u), 1u), vec2<u32>(firstTrailingBit(u_input.a.x | _wgslsmith_add_u32(u_input.a.x, var_0.b.b.d.x)), u_input.a.x));
    var var_2 = -24819i;
    let var_3 = vec2<bool>(true, !(!(var_0.a.e.x | true)));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c.c, vec2<f32>(-1888f, 839f))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, var_1, 4294967295u), abs(vec3<u32>(1u, u_input.a.x, u_input.a.x))), 23u)]), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b.x, 601f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-356f + 293f), _wgslsmith_f_op_f32(1170f + var_0.c.b.b.x)), vec2<f32>(1000f, _wgslsmith_f_op_f32(select(var_0.a.b.x, 676f, true))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, var_0.a.b.x) + var_0.a.b.yy))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: u32) -> Struct_4 {
    global0 = arg_1.a.a.yww;
    var var_0 = Struct_2(abs(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-44747i, arg_1.a.a.x), arg_0.zy), -2147483647i)), arg_1.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3()))))), select(all(vec2<bool>(false, true)), select(true, arg_1.a.e.x || arg_1.a.e.x, arg_1.a.e.x), false) != !(arg_1.a.e.x || any(vec3<bool>(false, arg_1.a.e.x, false))));
    var var_1 = var_0.b.e.x;
    var_1 = (_wgslsmith_f_op_f32(exp2(arg_1.a.b.x)) < var_0.c.x) & ((all(vec3<bool>(false, arg_1.a.e.x, false)) & arg_1.a.e.x) || !any(select(vec4<bool>(var_0.b.e.x, arg_1.a.e.x, true, arg_1.a.e.x), vec4<bool>(true, true, false, true), arg_1.a.e.x)));
    let var_2 = _wgslsmith_f_op_f32(exp2(arg_1.a.b.x));
    return Struct_4(Struct_1(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(33230i, u_input.c, 2147483647i, var_0.b.a.x), vec4<i32>(0i, arg_1.a.a.x, arg_1.a.a.x, arg_0.x)), -var_0.a.x, countOneBits(0i >> (arg_2 % 32u)), var_0.a.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(arg_1.a.b)))), arg_2, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.d.x, arg_2), vec2<u32>(0u, u_input.a.x)), u_input.a.x), max(~vec2<u32>(2161u, u_input.a.x), ~vec2<u32>(72544u, var_0.b.d.x))), !vec2<bool>(var_0.b.e.x, all(vec2<bool>(true, var_0.b.e.x)))));
}

fn func_1(arg_0: bool) -> vec4<i32> {
    var var_0 = abs(~vec3<u32>(u_input.a.x, 2503u, u_input.a.x));
    var var_1 = func_2(reverseBits(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.c, u_input.b, global2.x), ~global2.zyz, _wgslsmith_div_vec3_i32(-global2.xxw, global2.yzw))), Struct_4(Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(-1249i, -1i, 58783i, global0.x) << (u_input.a % vec4<u32>(32u)), vec4<i32>(-2147483647i, global0.x, -52291i, global0.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(591f, -2367f, -345f)))), 1u, _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, 53461u)), vec2<u32>(14436u, 7800u)), !(!vec2<bool>(arg_0, arg_0)))), 46594u);
    let var_2 = Struct_2(~vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(-6941i, global2.x), _wgslsmith_mod_i32(0i, 2147483647i)), i32(-1i) * -44615i), func_2(abs(vec3<i32>(-60961i, -1513i, -1i)) & (_wgslsmith_sub_vec3_i32(vec3<i32>(7088i, -2147483647i, 10748i), vec3<i32>(-1i, global2.x, global0.x)) ^ global2.xyz), func_2(select(vec3<i32>(1i, 28267i, u_input.b) ^ vec3<i32>(global2.x, global0.x, var_1.a.a.x), vec3<i32>(u_input.b, global2.x, 2147483647i) & vec3<i32>(var_1.a.a.x, u_input.c, 2147483647i), true), func_2(vec3<i32>(-9728i, 26144i, -31001i), func_2(vec3<i32>(u_input.c, 1i, 1i), Struct_4(Struct_1(vec4<i32>(-1i, 5369i, 30825i, u_input.b), var_1.a.b, u_input.a.x, var_0.zz, vec2<bool>(arg_0, true))), u_input.a.x), u_input.a.x), ~(~42672u)), ~u_input.a.x).a, global1[_wgslsmith_index_u32(~var_1.a.c, 23u)], arg_0);
    var_1 = Struct_4(func_2(_wgslsmith_mod_vec3_i32(~var_1.a.a.yzz, ~(-global2.zwy)), func_2(vec3<i32>(firstTrailingBit(2147483647i), abs(10231i), _wgslsmith_div_i32(0i, global2.x)), func_2(vec3<i32>(-63471i, var_1.a.a.x, global2.x), func_2(vec3<i32>(var_2.b.a.x, u_input.c, global2.x), Struct_4(var_1.a), u_input.a.x), var_2.b.c), 39413u), 54450u).a);
    var var_3 = select(vec3<bool>(arg_0, false, arg_0), !select(select(vec3<bool>(true, true, true), !vec3<bool>(arg_0, var_2.b.e.x, var_1.a.e.x), true), select(select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, true, var_2.b.e.x), vec3<bool>(true, var_1.a.e.x, arg_0)), select(vec3<bool>(false, arg_0, var_2.b.e.x), vec3<bool>(true, false, false), arg_0), var_1.a.e.x), !(!vec3<bool>(arg_0, false, true))), select(select(vec3<bool>(false, false, true), vec3<bool>(var_2.b.c < u_input.a.x, all(vec4<bool>(true, var_2.b.e.x, false, true)), var_2.b.e.x), vec3<bool>(true, true, true)), vec3<bool>(false, false, var_2.d), select(select(!vec3<bool>(false, arg_0, true), !vec3<bool>(true, true, arg_0), select(vec3<bool>(var_2.d, arg_0, arg_0), vec3<bool>(false, arg_0, var_1.a.e.x), vec3<bool>(var_2.b.e.x, true, true))), select(vec3<bool>(false, var_2.d, true), vec3<bool>(var_2.b.e.x, false, false), arg_0), false)));
    return firstLeadingBit(var_2.b.a);
}

fn func_4(arg_0: vec4<i32>) -> vec2<bool> {
    let var_0 = !(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true), vec2<bool>(true, true))));
    let var_1 = func_2(select(global2.zww, vec3<i32>(~_wgslsmith_sub_i32(1i, global0.x), -7912i, _wgslsmith_add_i32(~u_input.b, u_input.b)), vec3<bool>(!var_0.x, any(vec2<bool>(true, false)), all(vec3<bool>(false, var_0.x, true)))), Struct_4(Struct_1(firstLeadingBit(_wgslsmith_mod_vec4_i32(arg_0, vec4<i32>(global0.x, -1i, arg_0.x, global2.x))), vec3<f32>(_wgslsmith_f_op_f32(ceil(260f)), _wgslsmith_f_op_f32(-1212f - 1081f), _wgslsmith_f_op_f32(select(748f, -986f, var_0.x))), 1u, _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.wz, vec2<u32>(4294967295u, u_input.a.x)), vec2<u32>(77667u, u_input.a.x) | vec2<u32>(u_input.a.x, u_input.a.x)), vec2<bool>(true, true))), u_input.a.x);
    var var_2 = vec2<u32>(4294967295u, 720u);
    var var_3 = var_0.x;
    let var_4 = Struct_5(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-360f)) + _wgslsmith_div_f32(550f, _wgslsmith_f_op_f32(-var_1.a.b.x))), Struct_2(vec2<i32>(func_1(false).x, 1i), Struct_1(var_1.a.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.b), var_1.a.b), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_mult_u32(1u, var_1.a.c)), vec2<u32>(~7579u, var_2.x), var_0), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(733f * var_1.a.b.x))), !all(select(var_1.a.e, var_0, true))), true, vec2<bool>(true, true != !all(vec2<bool>(false, true))));
    return !(!select(var_4.c.b.e, !vec2<bool>(var_4.c.d, true), any(vec4<bool>(false, false, var_0.x, false))));
}

fn func_5(arg_0: vec2<bool>) -> vec4<i32> {
    global0 = -vec3<i32>(i32(-1i) * -(i32(-1i) * -7879i), ~1i, -_wgslsmith_div_i32(~global0.x, ~global2.x));
    global2 = ~max(vec4<i32>(global0.x, (global0.x ^ 28260i) >> (60183u % 32u), -18037i, u_input.b), vec4<i32>(-global0.x, 1i, ~(-1i), -1i) << (~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 2044u) % vec4<u32>(32u)));
    var var_0 = vec3<bool>(arg_0.x, all(func_2(min(global2.zwx, global2.zyy) & _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 2147483647i, global2.x), vec3<i32>(1i, -39312i, 0i)), func_2(global2.yxw, Struct_4(Struct_1(vec4<i32>(u_input.c, u_input.c, global0.x, -2147483647i), vec3<f32>(-536f, 150f, 1260f), u_input.a.x, vec2<u32>(u_input.a.x, 62521u), arg_0)), u_input.a.x), ~(~u_input.a.x)).a.e), !all(select(select(vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, true, false), false), vec3<bool>(true, arg_0.x, false), all(arg_0))));
    let var_1 = -vec2<i32>(~global2.x, firstTrailingBit(~u_input.b)) | _wgslsmith_add_vec2_i32(select(global2.xz & global2.wx, global0.zy | vec2<i32>(17042i, global0.x), arg_0), _wgslsmith_sub_vec2_i32(vec2<i32>(max(global2.x, 1i), min(1i, -58809i)), vec2<i32>(~u_input.c, _wgslsmith_add_i32(global2.x, -1i))));
    let var_2 = false;
    return vec4<i32>(-2186i, _wgslsmith_mod_i32(u_input.b, -2147483647i | var_1.x), -41048i, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~func_5(func_4(select(func_1(false), _wgslsmith_mod_vec4_i32(vec4<i32>(-4314i, 0i, 2147483647i, 1i), vec4<i32>(39508i, u_input.c, 1864i, u_input.c)), false)));
    var var_0 = Struct_5(all(vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), !(1i >= global0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1518f - _wgslsmith_f_op_f32(f32(-1f) * -1556f))), -811f)), Struct_2(global0.xx, Struct_1(vec4<i32>(global0.x, global2.x, -2147483647i, -61187i) | ~vec4<i32>(global2.x, global2.x, global0.x, global2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-944f, -947f, -809f)), ~u_input.a.x, u_input.a.ww, func_2(global2.wxx << (vec3<u32>(u_input.a.x, 45303u, 1u) % vec3<u32>(32u)), func_2(vec3<i32>(1i, -1i, u_input.b), Struct_4(Struct_1(vec4<i32>(global0.x, 1i, global2.x, u_input.b), vec3<f32>(239f, 141f, -1000f), u_input.a.x, u_input.a.xz, vec2<bool>(true, true))), 1u), ~u_input.a.x).a.e), _wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(-127i, global0.x, -2147483647i), func_2(global2.yzy, Struct_4(Struct_1(vec4<i32>(global2.x, u_input.c, -9358i, 0i), vec3<f32>(-569f, 1176f, 151f), u_input.a.x, u_input.a.xy, vec2<bool>(true, true))), u_input.a.x), ~u_input.a.x).a.b.xx - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-685f, 1000f), vec2<f32>(-909f, 308f)))), true), any(vec2<bool>(true, true)), vec2<bool>(true, true));
    var var_1 = -abs(-21778i) << (u_input.a.x % 32u);
    global0 = ~vec3<i32>(global2.x, ~(-_wgslsmith_add_i32(global2.x, global0.x)), u_input.c);
    var var_2 = global0.x;
    var var_3 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-(~(-2147483647i)), max(_wgslsmith_clamp_i32(global0.x, global0.x, global0.x), _wgslsmith_mod_i32(-29027i, global0.x))), var_0.c.a), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-67381i), _wgslsmith_div_i32(1i, -10820i), var_0.c.a.x), vec3<i32>(u_input.b, 1i, ~(-2147483647i)))));
    let var_4 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(-910f, var_4.a, _wgslsmith_dot_vec4_i32(vec4<i32>((-97223i ^ var_4.b.a.x) >> (79566u % 32u), ~21263i >> (countOneBits(0u) % 32u), abs(_wgslsmith_mod_i32(4692i, global0.x)), -(~689i)), max(var_4.b.a, vec4<i32>(firstTrailingBit(u_input.c), ~0i, _wgslsmith_add_i32(0i, 2147483647i), firstLeadingBit(0i)))), vec2<i32>(u_input.b, var_4.b.a.x), select(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(var_4.a, firstLeadingBit(global0.xy)), vec2<i32>(-1i, -var_3.x)), -func_2(select(vec3<i32>(0i, global2.x, var_3.x), vec3<i32>(54950i, -37239i, var_4.a.x), vec3<bool>(var_4.b.e.x, var_0.d, true)), Struct_4(var_0.c.b), reverseBits(0u)).a.a.ww, var_0.c.b.e));
}

