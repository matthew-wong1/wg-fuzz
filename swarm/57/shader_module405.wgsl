struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: vec4<bool>;

var<private> global2: bool = true;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: bool, arg_3: vec3<bool>) -> u32 {
    global1 = !select(select(select(!vec4<bool>(true, false, false, arg_3.x), !vec4<bool>(arg_0.x, arg_3.x, true, true), select(vec4<bool>(false, arg_3.x, true, false), vec4<bool>(true, arg_2, arg_3.x, true), global1.x)), !select(vec4<bool>(false, global1.x, true, true), vec4<bool>(global0.x, false, false, false), false), false), !(!select(vec4<bool>(arg_0.x, global0.x, true, false), vec4<bool>(false, arg_2, false, arg_3.x), vec4<bool>(arg_0.x, arg_0.x, global1.x, true))), arg_0.x);
    var var_0 = Struct_3(_wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, 1u, 1u, 1u)), ~select(select(vec4<u32>(1u, 1u, 42465u, 0u), vec4<u32>(1u, 1u, 65457u, 29038u), global0.x), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 9895u, 19850u, 1u), vec4<u32>(4294967295u, 25465u, 0u, 90861u)), !vec4<bool>(true, global1.x, true, arg_3.x))), Struct_1(!(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 59554u), vec2<u32>(34801u, 52484u)) == 20350u), 71248u, select(select(!global1.ywx, arg_3, vec3<bool>(true, false, false)), select(select(vec3<bool>(arg_0.x, false, false), global1.ywy, true), vec3<bool>(global1.x, false, arg_0.x), vec3<bool>(false, true, true)), arg_3.x), abs(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, arg_1), vec4<i32>(u_input.a.x, 0i, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, arg_1, -2147483647i))))));
    let var_1 = 1461f;
    let var_2 = Struct_5(abs(~_wgslsmith_mod_vec3_u32(var_0.a.zyz, var_0.a.xwz)), select(select(vec2<bool>(global0.x, false), !global0.zz, true), vec2<bool>(var_0.b.c.x, !(!global0.x)), select(select(select(vec2<bool>(global0.x, false), vec2<bool>(arg_2, var_0.b.a), global0.xx), global1.ww, arg_0.x), select(vec2<bool>(arg_0.x, false), var_0.b.c.yz, select(true, arg_2, var_0.b.a)), !var_0.b.c.x && (arg_0.x == false))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-455f, var_1, var_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1, 1000f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 119f, var_1))))))), true);
    let var_3 = any(select(select(!arg_0, vec3<bool>(true, true & var_0.b.a, all(vec4<bool>(true, true, true, var_2.b.x))), select(vec3<bool>(arg_2, false, false), vec3<bool>(arg_0.x, arg_2, global0.x), global1.wzw)), select(global1.yxw, vec3<bool>(true, arg_0.x, arg_3.x), !vec3<bool>(arg_3.x, arg_2, global0.x)), global1.zzz));
    return ~_wgslsmith_div_u32(min(var_0.b.b, reverseBits(44534u)), ~_wgslsmith_dot_vec2_u32(var_2.a.yz, var_0.a.yy));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>) -> i32 {
    let var_0 = -898f;
    let var_1 = _wgslsmith_add_u32(firstTrailingBit(min(func_3(arg_0, 2147483647i, global0.x, vec3<bool>(true, true, arg_1.x)), 1u)) << (select(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 31511u, 4294967295u), reverseBits(vec3<u32>(4294967295u, 35678u, 4294967295u))), abs(~14181u), select(true, true, true)) % 32u), firstLeadingBit(abs(func_3(vec3<bool>(true, arg_1.x, false), 2147483647i, false, arg_0) | 63471u)));
    var var_2 = 0i;
    global2 = arg_1.x;
    let var_3 = vec2<i32>(~(~u_input.a.x), ~40972i);
    return _wgslsmith_add_i32(_wgslsmith_sub_i32(-23395i, _wgslsmith_add_i32(countOneBits(16163i), var_3.x)), _wgslsmith_mult_i32(1i, 30518i));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3.a == _wgslsmith_f_op_f32(step(-1402f, 1000f));
    global1 = vec4<bool>(arg_1.e.b.a == arg_0.c.d.a, -2147483647i >= func_2(!vec3<bool>(arg_0.d.x, true, false), arg_1.c.d.c), !all(vec3<bool>(global0.x & global1.x, true, arg_0.e.b.a)), true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.c.a * -466f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.c.a))))))));
    var var_2 = arg_0.e.b.c;
    let var_3 = abs(arg_0.c.e.d.x & _wgslsmith_mod_i32(i32(-1i) * -8610i, arg_0.e.b.d.x));
    return 333f;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: u32) -> Struct_1 {
    global2 = all(select(vec2<bool>(true, true), global1.xw, global0.zy));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-925f * _wgslsmith_f_op_f32(-arg_1)));
    global0 = global1.yyx;
    var var_1 = vec4<i32>(~(-u_input.a.x) ^ u_input.a.x, _wgslsmith_sub_i32(-63263i ^ u_input.a.x, u_input.a.x), -2147483647i, countOneBits(~_wgslsmith_mod_i32(u_input.a.x, -467i)));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f)))));
    return Struct_1(23098i != var_1.x, firstTrailingBit(~arg_2), select(select(select(global1.wxz, vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(arg_0, true, global0.x), global0.x)), global1.yyy, !(!vec3<bool>(global0.x, true, global0.x))), global1.ywz, vec3<bool>(true || !global1.x, global1.x, all(vec3<bool>(true, global1.x, true)))), ~((_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, u_input.a.x, 0i), vec4<i32>(var_1.x, 0i, 0i, u_input.a.x)) >> (~vec4<u32>(arg_2, 94707u, 25473u, arg_2) % vec4<u32>(32u))) ^ abs(-vec4<i32>(1i, u_input.a.x, var_1.x, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(all(select(!select(global0.yx, vec2<bool>(true, true), false), select(vec2<bool>(false, global1.x), global0.zx, false), global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_4(vec3<u32>(4294967295u, 21395u, 35706u), vec2<u32>(42308u, 45068u), Struct_2(342f, 1i, Struct_1(global1.x, 6827u, global1.xxz, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(true, 9931u, vec3<bool>(global0.x, global1.x, global0.x), vec4<i32>(-36071i, u_input.a.x, 23393i, u_input.a.x)), Struct_1(global0.x, 1u, vec3<bool>(true, true, global1.x), vec4<i32>(u_input.a.x, -15980i, u_input.a.x, -2147483647i))), vec4<bool>(true, global1.x, true, true), Struct_3(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), Struct_1(global0.x, 0u, vec3<bool>(true, global0.x, global1.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)))), Struct_4(vec3<u32>(4294967295u, 4419u, 0u), vec2<u32>(4294967295u, 21366u), Struct_2(-1092f, 1i, Struct_1(global0.x, 1u, vec3<bool>(global0.x, false, false), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 56654i)), Struct_1(global1.x, 755u, global1.wxy, vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x)), Struct_1(global0.x, 4294967295u, vec3<bool>(false, global1.x, false), vec4<i32>(-1765i, 1i, 30485i, u_input.a.x))), vec4<bool>(global0.x, global1.x, true, global0.x), Struct_3(vec4<u32>(4294967295u, 48143u, 6639u, 16678u), Struct_1(global0.x, 19344u, vec3<bool>(false, true, global1.x), vec4<i32>(u_input.a.x, u_input.a.x, 26247i, u_input.a.x)))), 402f, Struct_2(1459f, u_input.a.x, Struct_1(true, 49164u, global1.yyz, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(global1.x, 14371u, vec3<bool>(false, global1.x, true), vec4<i32>(u_input.a.x, -56751i, u_input.a.x, 0i)), Struct_1(true, 1u, vec3<bool>(global1.x, global0.x, false), vec4<i32>(38964i, -2147483647i, 0i, 0i))))), _wgslsmith_f_op_f32(-766f + -1420f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(vec3<u32>(4294967295u, 18541u, 42079u), vec2<u32>(20379u, 1883u), Struct_2(-1611f, 41632i, Struct_1(global1.x, 24098u, vec3<bool>(true, true, false), vec4<i32>(-2147483647i, -38319i, u_input.a.x, u_input.a.x)), Struct_1(global1.x, 2303u, global1.yyz, vec4<i32>(17633i, -25930i, u_input.a.x, -2147483647i)), Struct_1(global0.x, 15606u, global1.wyy, vec4<i32>(u_input.a.x, u_input.a.x, 0i, 29621i))), vec4<bool>(global0.x, global0.x, true, global0.x), Struct_3(vec4<u32>(31372u, 0u, 2252u, 20244u), Struct_1(false, 14891u, vec3<bool>(true, global0.x, true), vec4<i32>(24394i, -2147483647i, -2147483647i, u_input.a.x)))), Struct_4(vec3<u32>(4294967295u, 46442u, 0u), vec2<u32>(4294967295u, 30525u), Struct_2(526f, -8906i, Struct_1(global0.x, 44463u, global1.ywz, vec4<i32>(-23638i, 3522i, -5787i, -1i)), Struct_1(false, 87701u, vec3<bool>(true, global1.x, global0.x), vec4<i32>(-2147483647i, 27958i, u_input.a.x, 6546i)), Struct_1(true, 0u, vec3<bool>(true, global0.x, false), vec4<i32>(-16676i, u_input.a.x, -52863i, -2749i))), vec4<bool>(true, false, global1.x, true), Struct_3(vec4<u32>(1018u, 1u, 32589u, 4294967295u), Struct_1(true, 0u, vec3<bool>(true, global1.x, global0.x), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -10635i)))), _wgslsmith_f_op_f32(211f - -535f), Struct_2(249f, 1i, Struct_1(global0.x, 19262u, vec3<bool>(global0.x, false, true), vec4<i32>(1i, 9733i, -30476i, u_input.a.x)), Struct_1(global1.x, 0u, vec3<bool>(true, false, global1.x), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 37541i)), Struct_1(global0.x, 4294967295u, vec3<bool>(global0.x, true, true), vec4<i32>(u_input.a.x, u_input.a.x, 0i, -45963i))))))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(0u), 4294967295u, ~1u), vec3<u32>(1u, 1u, 1u)));
    var var_1 = Struct_2(-674f, var_0.d.x, Struct_1(global1.x, var_0.b, !select(var_0.c, var_0.c, vec3<bool>(global1.x, true, true)), -var_0.d), Struct_1(global1.x, ~max(~0u, 8499u ^ var_0.b), func_4(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(547f - 506f) - _wgslsmith_f_op_f32(step(-645f, 1129f))), 64294u).c, var_0.d), Struct_1(var_0.c.x, var_0.b, vec3<bool>(false || var_0.a, !(1i == u_input.a.x), all(!var_0.c)), vec4<i32>(u_input.a.x, abs(0i), -35411i, u_input.a.x)));
    let var_2 = Struct_5(reverseBits(~vec3<u32>(var_0.b, ~11770u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, var_1.d.b), vec2<u32>(var_0.b, 87366u)))), !vec2<bool>(true, var_1.e.d.x >= _wgslsmith_sub_i32(47514i, 17129i)), vec3<f32>(_wgslsmith_f_op_f32(step(-602f, var_1.a)), 402f, -1789f), false);
    let var_3 = var_1.c;
    var var_4 = 1i;
    var var_5 = Struct_3(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, 71270u, var_2.a.x, var_3.b), _wgslsmith_mod_vec4_u32(vec4<u32>(45277u, 21863u, var_1.d.b, 0u), vec4<u32>(var_0.b, 9034u, var_1.d.b, var_3.b))) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, var_1.c.b), vec4<u32>(1u, var_2.a.x, 4294967295u, var_3.b), vec4<u32>(var_3.b, 27116u, 20780u, var_3.b))), var_1.c);
    var_1 = Struct_2(var_1.a, ~(~2147483647i), var_1.e, Struct_1(all(!var_5.b.c) && false, max(~countOneBits(4294967295u), var_1.e.b), select(!select(var_3.c, vec3<bool>(true, true, true), var_5.b.c), select(var_5.b.c, select(var_5.b.c, var_1.e.c, true), vec3<bool>(false, var_2.d, true)), var_5.b.c.x), func_4(any(var_0.c), var_2.c.x, var_1.c.b).d), func_4(!(var_5.a.x == min(1u, var_0.b)), var_1.a, firstTrailingBit(_wgslsmith_add_u32(~0u, var_2.a.x))));
    var var_6 = Struct_5(_wgslsmith_div_vec3_u32(~select(vec3<u32>(var_2.a.x, 57055u, var_0.b), vec3<u32>(var_0.b, var_1.e.b, var_0.b), var_1.e.c), reverseBits(vec3<u32>(var_3.b, 48456u, var_2.a.x)) | ~vec3<u32>(28518u, 0u, var_3.b)) & vec3<u32>(~var_5.a.x, 1u, _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(var_0.b, 4294967295u))), select(vec2<bool>(global1.x, var_5.b.a), select(vec2<bool>(true, true), !vec2<bool>(var_3.c.x, false), !(!var_2.b)), vec2<bool>(any(!vec4<bool>(var_0.a, global1.x, false, var_2.d)), true)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a, 709f, 1903f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(215f, var_1.a, 1106f) + var_2.c))))), var_1.e.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e.d.x, -1i, var_1.e.d.x, -2147483647i), vec4<i32>(var_0.d.x, 35257i, var_3.d.x, -2147483647i)) << (_wgslsmith_mod_u32(firstTrailingBit(61962u), var_6.a.x) % 32u), ~(min(1i, 0i) ^ (var_5.b.d.x << (var_5.a.x % 32u)))), _wgslsmith_mult_vec2_i32(-var_3.d.zz, (firstLeadingBit(vec2<i32>(var_5.b.d.x, -2147483647i)) | firstTrailingBit(var_3.d.zy)) >> (_wgslsmith_mult_vec2_u32(~var_6.a.yz, ~vec2<u32>(var_2.a.x, 31742u)) % vec2<u32>(32u))));
}

