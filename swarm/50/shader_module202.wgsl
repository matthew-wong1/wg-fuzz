struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(12263i, 25670i, i32(-2147483648));

var<private> global1: vec2<f32> = vec2<f32>(1371f, 1000f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<i32>) -> vec4<f32> {
    var var_0 = Struct_4(vec2<bool>(~(~u_input.c) > abs(abs(u_input.c)), !select(true, any(vec2<bool>(true, true)), true)), ~(-14612i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(step(global1.x, 676f)), global1.x, global1.x) * vec4<f32>(_wgslsmith_f_op_f32(-1904f - global1.x), _wgslsmith_f_op_f32(select(global1.x, global1.x, true)), _wgslsmith_f_op_f32(abs(-899f)), _wgslsmith_f_op_f32(677f * global1.x)))), Struct_1(vec3<i32>(_wgslsmith_sub_i32(u_input.b, _wgslsmith_add_i32(global0.x, 1i)), arg_0.x, u_input.b), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), any(vec4<bool>(true, false, false, false)))), ~firstLeadingBit(u_input.c), max(reverseBits(vec2<i32>(u_input.a, 22607i)), vec2<i32>(1i, global0.x))));
    var_0 = Struct_4(!vec2<bool>(var_0.a.x, !var_0.d.b.x), 45261i ^ min(54042i, var_0.d.d.x), var_0.c, var_0.d);
    global0 = abs(vec3<i32>(global0.x, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-333i, arg_0.x)), firstTrailingBit(vec2<i32>(u_input.b, 2901i))) ^ ~_wgslsmith_clamp_i32(2147483647i, global0.x, global0.x), -23452i));
    global0 = ~(~reverseBits(-vec3<i32>(arg_0.x, 1i, -3529i)) >> (countOneBits(vec3<u32>(10907u, firstLeadingBit(u_input.c), 1u)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_div_i32(arg_0.x, _wgslsmith_clamp_i32(var_0.d.a.x, 2147483647i, 1i) & abs(~(-22898i))) >> (u_input.c % 32u);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2456f, _wgslsmith_f_op_f32(trunc(-184f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(300f, 338f)) + global1.x), 877f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-134f, -1419f, -176f, global1.x), vec4<f32>(global1.x, 750f, 1358f, 732f)), _wgslsmith_f_op_vec4_f32(-var_0.c)))));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, -1151f, arg_0.a.x, -1173f) - vec4<f32>(800f, 1638f, global1.x, 2129f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 1864f) * vec4<f32>(global1.x, arg_0.a.x, -848f, -240f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-207f, 860f, 1128f, arg_0.a.x), vec4<f32>(2075f, global1.x, -1946f, -776f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(-vec3<i32>(1i, 10696i, u_input.a)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-1188f * 774f), _wgslsmith_f_op_f32(231f + global1.x), _wgslsmith_f_op_f32(max(-506f, 1124f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-595f, -1411f, var_0.x, arg_0.a.x)))), vec4<bool>(global1.x > global1.x, all(vec4<bool>(true, false, false, arg_1)), arg_1, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1686f, 1000f, global1.x, global1.x), vec4<f32>(399f, var_0.x, 1000f, 1000f))))), any(select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1))) & arg_1))));
    let var_1 = i32(-1i) * -(~(-_wgslsmith_mult_i32(u_input.b, 0i)));
    var var_2 = vec3<bool>(any(!select(select(vec4<bool>(arg_1, false, false, true), vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(false, true, false, false)), vec4<bool>(arg_1, true, true, false), !vec4<bool>(arg_1, arg_1, arg_1, arg_1))), arg_1 || (~2526i < _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(74522i, global0.x, -1i, -1i)), vec4<i32>(-46928i, global0.x, 0i, -2147483647i))), all(select(!vec3<bool>(arg_1, false, false), vec3<bool>(true, true, true), !select(vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, true, true), false))));
    var var_3 = !var_2.x;
    return !(!(select(true, true, true) || true));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: f32) -> vec3<i32> {
    global0 = firstLeadingBit(select(vec3<i32>(arg_1.x, -31774i, -1i), countOneBits(vec3<i32>(-1i) * -vec3<i32>(global0.x, -54142i, global0.x)), func_2(Struct_2(vec2<f32>(1788f, arg_0), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) | vec4<u32>(6958u, u_input.c, u_input.c, u_input.c)), all(vec3<bool>(true, false, false)))));
    var var_0 = all(vec4<bool>(true, true, true, false));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-888f, 1133f)));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(914f, -1653f)))))), arg_2);
    let var_1 = -1673f;
    return -reverseBits(vec3<i32>(~reverseBits(global0.x), firstLeadingBit(0i), 10357i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-448f + _wgslsmith_div_f32(global1.x, global1.x)))));
    global0 = abs(~vec3<i32>(global0.x, _wgslsmith_mult_i32(27058i, u_input.a), -2147483647i)) >> ((~(vec3<u32>(u_input.c, u_input.c, u_input.c) | _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c, 0u), vec3<u32>(0u, u_input.c, u_input.c))) << (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, 79943u), _wgslsmith_mod_vec3_u32(vec3<u32>(103681u, u_input.c, 1u), vec3<u32>(u_input.c, u_input.c, u_input.c))), vec3<u32>(u_input.c & 30923u, ~1u, countOneBits(4294967295u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(340f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) - -1422f)) + vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x)))))));
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1221f), -1239f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-834f * global1.x)))));
    global1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -1267f)) + _wgslsmith_f_op_f32(global1.x - global1.x)), -1000f)));
    let var_0 = vec2<u32>(26878u, u_input.c);
    var var_1 = Struct_3(vec2<f32>(global1.x, -218f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1957f))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(func_1(292f, global0.zy, _wgslsmith_f_op_f32(abs(global1.x))), vec3<i32>(~0i, -1i, _wgslsmith_mult_i32(global0.x, u_input.b))), abs(-vec3<i32>(27993i, global0.x, -14218i)) | max(-vec3<i32>(30973i, -2147483647i, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(1430i, global0.x, 1819i), vec3<i32>(-1i, u_input.a, -65032i)))));
    var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_1.a.x)), var_1.b, any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-616f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), true)))), vec3<i32>(firstTrailingBit(1i), 36670i, _wgslsmith_mod_i32(reverseBits(_wgslsmith_div_i32(5349i, var_1.c.x)), global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, u_input.b), global0.zx)) << (var_0 % vec2<u32>(32u)), _wgslsmith_dot_vec2_i32(firstTrailingBit(min(global0.zx, vec2<i32>(var_1.c.x, -1i))), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-18688i, -73191i), vec2<i32>(global0.x, u_input.a)), var_1.c.xy)) ^ -_wgslsmith_sub_i32(var_1.c.x, 4268i));
}

