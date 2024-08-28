struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(32726u, 1u, 40192u), vec3<u32>(0u, 45191u, 2623u));

var<private> global2: bool;

var<private> global3: array<vec4<f32>, 30>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    var var_0 = select(select(!select(select(vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(arg_0.x, false, true, true)), vec4<bool>(true, true, false, arg_0.x), select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, false, false))), vec4<bool>(-9899i <= _wgslsmith_div_i32(u_input.a, -33527i), arg_0.x, true, all(select(vec4<bool>(arg_0.x, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x, arg_0.x, false, true)))), vec4<bool>(arg_0.x, true, arg_0.x, any(vec3<bool>(false, false, true)))), !vec4<bool>(select(arg_0.x, true, true), arg_0.x, !(!arg_0.x), false), false);
    var var_1 = Struct_3(Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(51332u, u_input.b.x, 19343u, u_input.b.x), abs(vec4<u32>(global1.a.x, 1u, 18428u, 0u))), reverseBits(~u_input.d), 41036u), global1.b), Struct_2(global1.b, abs(reverseBits(global1.a))), u_input.b.x);
    let var_2 = Struct_2(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(global1.b, ~vec3<u32>(var_1.b.b.x, global1.a.x, global1.b.x)), vec3<u32>(57551u, ~u_input.d, 4294967295u)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.a.a, vec3<u32>(var_1.c, 1u, u_input.b.x) | global1.a), _wgslsmith_add_vec3_u32(min(vec3<u32>(1u, 0u, var_1.a.b.x), global1.a), _wgslsmith_mod_vec3_u32(var_1.b.a, vec3<u32>(17739u, global1.b.x, 4294967295u)))), abs(global1.b)), _wgslsmith_mod_vec3_u32(global1.a, reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_1.c, var_1.a.b.x), var_1.b.b)) >> (firstTrailingBit(reverseBits(vec3<u32>(global1.a.x, var_1.a.a.x, var_1.c))) % vec3<u32>(32u))));
    let var_3 = var_1.a;
    let var_4 = 0u;
    return abs(~_wgslsmith_sub_i32(firstTrailingBit(u_input.a), -u_input.a)) > -u_input.a;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = select(vec4<bool>(4294967295u <= (_wgslsmith_add_u32(4294967295u, u_input.b.x) >> (1u % 32u)), all(!vec2<bool>(arg_0, true)), func_3(vec3<bool>(true, arg_0, true)) & select(arg_0, arg_0, arg_0), true), !select(vec4<bool>(true, arg_0, true, false & arg_0), !(!vec4<bool>(arg_0, false, true, arg_0)), !(!arg_0)), arg_0);
    global1 = Struct_2(global1.a, global1.b);
    global3 = array<vec4<f32>, 30>();
    var var_1 = Struct_4(vec4<u32>(_wgslsmith_sub_u32(42361u, 1u), ~firstLeadingBit(29593u), max(u_input.d, ~global1.a.x), ~7489u | global1.a.x) & _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(75593u, u_input.c, u_input.d, u_input.b.x), vec4<u32>(global1.a.x, global1.b.x, 1u, global1.b.x)), vec4<u32>(~29538u, ~98019u, 1u, _wgslsmith_add_u32(global1.b.x, 113763u))), true, Struct_1(~(~vec4<i32>(u_input.a, -2147483647i, u_input.a, -19703i)), ~global1.a.zy, -_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, -62643i), 48505i)), Struct_1(-(~vec4<i32>(1i, 3496i, 2147483647i, u_input.a)) >> (firstLeadingBit(abs(vec4<u32>(0u, global1.a.x, u_input.c, 0u))) % vec4<u32>(32u)), global1.a.zz, -1i));
    return Struct_3(Struct_2(~(~vec3<u32>(global1.a.x, var_1.d.b.x, global1.b.x)), global1.b), Struct_2(_wgslsmith_mod_vec3_u32(abs(~global1.a), ~global1.b), _wgslsmith_clamp_vec3_u32(firstLeadingBit(firstTrailingBit(vec3<u32>(25928u, u_input.b.x, 0u))), vec3<u32>(global1.a.x >> (4294967295u % 32u), ~global1.b.x, global1.b.x), ~vec3<u32>(23631u, var_1.d.b.x, 99419u))), 46453u);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_mult_i32(50322i, 19284i), u_input.a, u_input.a), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 48217i, u_input.a, u_input.a), ~vec4<i32>(12205i, 1i, u_input.a, 79430i)))), ~(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 10629i) << (vec4<u32>(u_input.d, 5995u, 0u, global1.b.x) % vec4<u32>(32u)), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) << (~_wgslsmith_div_vec4_u32(vec4<u32>(global1.b.x, 0u, arg_0.c, 34029u), vec4<u32>(16601u, u_input.d, u_input.c, arg_0.a.b.x)) % vec4<u32>(32u))));
    let var_1 = func_2(true && (any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)) || func_3(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1206f, -770f, 1221f) + vec3<f32>(592f, -414f, 872f))))) - vec3<f32>(_wgslsmith_f_op_f32(-1612f - _wgslsmith_f_op_f32(947f - -971f)), _wgslsmith_f_op_f32(249f + _wgslsmith_f_op_f32(round(-1080f))), -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-153f, 2574f, 1312f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(109f, -484f, -312f)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))))))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(889f))), -2368f);
    let var_3 = !(!any(vec4<bool>(true, true, true, true)));
    let var_4 = arg_0;
    return var_1.b;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<f32>) -> vec2<i32> {
    let var_0 = Struct_3(func_4(func_2(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 * vec3<f32>(251f, arg_2.x, 129f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1302f, -1089f, 2009f) * vec3<f32>(arg_2.x, arg_2.x, -1147f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1558f, arg_2.x, arg_2.x), arg_2)))), Struct_2(vec3<u32>(4294967295u, ~9161u, u_input.d), global1.a), global1.b.x);
    global2 = all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    var var_1 = select(~(-min(arg_1, ~vec2<i32>(arg_1.x, 2147483647i))), vec2<i32>(2147483647i, u_input.a), vec2<bool>(!(arg_0 == -2147483647i), true));
    var_1 = -vec2<i32>(1i, ~max(i32(-1i) * -1i, firstTrailingBit(u_input.a)));
    var var_2 = Struct_2(vec3<u32>(_wgslsmith_add_u32((global1.a.x >> (var_0.c % 32u)) ^ abs(u_input.b.x), ~(~31279u)), ~u_input.d, global1.b.x), reverseBits(var_0.b.a));
    return _wgslsmith_mult_vec2_i32(arg_1, -vec2<i32>(u_input.a, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec2<bool>(u_input.a >= -1i, true)));
    var_0 = vec2<bool>((global1.a.x ^ countOneBits(~global1.b.x)) == 77833u, true);
    let var_1 = reverseBits(_wgslsmith_sub_vec2_i32(func_1(u_input.a, abs(~vec2<i32>(-13745i, u_input.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1293f, -283f, -1005f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-172f, 1070f, -849f))))), vec2<i32>(u_input.a, -u_input.a) << ((select(u_input.b, global1.a.zx, vec2<bool>(false, var_0.x)) | u_input.b) % vec2<u32>(32u))));
    var var_2 = func_2(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_1, vec2<i32>(2147483647i, -22822i), vec2<i32>(var_1.x, u_input.a)) << (u_input.b % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(-2391i, var_1.x) & var_1)) != -_wgslsmith_mod_i32(0i, -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1366f, 1643f, 105f) - vec3<f32>(-1775f, -150f, -1327f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-104f, -991f, -731f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-615f, 457f, 243f), vec3<f32>(1243f, 1741f, -374f)))))));
    let var_3 = _wgslsmith_f_op_f32(round(1239f));
    let var_4 = Struct_4(vec4<u32>(min(u_input.b.x & global1.b.x, ~0u), 6795u, 23953u, 26160u) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(29832u, u_input.c, 4294967295u, global1.a.x), min(vec4<u32>(1u, global1.b.x, 53464u, var_2.b.b.x), abs(vec4<u32>(var_2.b.a.x, var_2.b.b.x, 0u, 61277u)))), any(select(select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), !vec2<bool>(var_0.x, var_0.x), true && var_0.x)) | all(vec3<bool>(var_3 < var_3, true, true)), Struct_1(_wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, 2147483647i, -1i, -7054i), vec4<i32>(var_1.x, u_input.a, -31463i, var_1.x)), max(vec4<i32>(-2147483647i, 4538i, u_input.a, 18059i), vec4<i32>(-41005i, u_input.a, var_1.x, 2147483647i)) >> (vec4<u32>(1u, 1u, 4294967295u, 2102u) % vec4<u32>(32u))), vec2<u32>(var_2.b.b.x, ~countOneBits(6790u)), _wgslsmith_dot_vec2_i32(var_1, ~(var_1 & vec2<i32>(-11736i, u_input.a)))), Struct_1(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-44650i, 25820i, 0i, u_input.a), max(vec4<i32>(var_1.x, var_1.x, 56634i, var_1.x), vec4<i32>(-40296i, -2017i, -30803i, var_1.x)))), abs(abs(vec2<u32>(1u, var_2.a.b.x))) ^ _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.b.a.x, global1.b.x), global1.b.yz, u_input.b), var_2.b.b.xy), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3, 433f) * 143f), 754f)), min(global1.b.x ^ var_4.d.b.x, 23017u), var_4.d.a.zy, var_4.d.b.x, _wgslsmith_f_op_f32(-var_3));
}

