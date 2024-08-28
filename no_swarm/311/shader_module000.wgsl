struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> bool {
    var var_0 = Struct_1(!select(arg_1.a, arg_3.c.a, arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_1.b, 1309f, false)), -1000f)), arg_0.x) - _wgslsmith_f_op_f32(arg_0.x - arg_3.e.b)), !(!vec3<bool>(!arg_1.a.x, true, !arg_3.c.a.x)));
    var_0 = Struct_1(vec4<bool>(!select(false, var_0.c.x, arg_1.a.x), all(!(!vec3<bool>(arg_3.b.a.x, arg_1.a.x, false))), any(select(vec3<bool>(arg_3.c.a.x, true, false), arg_3.c.a.zwz, vec3<bool>(false, arg_3.e.a.x, true))) & true, select(var_0.c.x, false, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1492f) - var_0.b) * arg_3.c.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.c.b))))), arg_1.a.ywx);
    var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * 1080f)))))), select(vec3<bool>(true, any(vec4<bool>(var_0.c.x, arg_1.c.x, var_0.a.x, false)) || true, true), select(arg_1.c, !var_0.c, false), all(arg_1.a)));
    let var_1 = Struct_1(!arg_3.e.a, -533f, vec3<bool>(var_0.c.x, true, arg_3.e.a.x));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1469f), arg_0.x)), -259f);
    return arg_1.a.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    let var_0 = vec2<i32>(-16893i, u_input.b);
    var var_1 = select(select(vec2<bool>(true, !(arg_0.x && arg_0.x)), select(select(select(arg_0, vec2<bool>(false, true), arg_0.x), !vec2<bool>(true, arg_0.x), true), vec2<bool>(arg_0.x || arg_0.x, true), any(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), select(!(!vec2<bool>(arg_0.x, true)), vec2<bool>(true, arg_0.x & arg_0.x), select(vec2<bool>(true, true), vec2<bool>(arg_0.x, arg_0.x), true))), arg_0, true);
    let var_2 = !arg_0;
    let var_3 = Struct_2(Struct_1(select(select(!vec4<bool>(true, false, true, arg_0.x), !vec4<bool>(var_1.x, var_2.x, var_1.x, false), !vec4<bool>(arg_0.x, true, true, arg_0.x)), !(!vec4<bool>(false, var_2.x, false, var_1.x)), select(!vec4<bool>(true, arg_0.x, true, var_2.x), !vec4<bool>(true, true, var_1.x, false), var_2.x & var_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-742f, -1000f)), 1f)))), vec3<bool>(true, false, select(var_2.x, func_3(vec3<f32>(1395f, -836f, 403f), Struct_1(vec4<bool>(var_1.x, arg_0.x, true, false), 1000f, vec3<bool>(true, true, false)), vec4<i32>(-34332i, -2147483647i, var_0.x, -1i), Struct_2(Struct_1(vec4<bool>(var_2.x, var_1.x, false, var_2.x), 500f, vec3<bool>(var_1.x, arg_0.x, true)), Struct_1(vec4<bool>(false, true, true, var_2.x), 430f, vec3<bool>(false, var_2.x, var_1.x)), Struct_1(vec4<bool>(var_2.x, false, var_2.x, true), 696f, vec3<bool>(var_2.x, false, true)), u_input.c, Struct_1(vec4<bool>(arg_0.x, var_2.x, false, true), -895f, vec3<bool>(false, var_2.x, var_2.x)))), true))), Struct_1(select(vec4<bool>(all(var_2), var_2.x, true, true), select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(var_1.x, true, true, false), !vec4<bool>(false, true, true, arg_0.x)), vec4<bool>(any(vec3<bool>(arg_0.x, false, arg_0.x)), true, !var_2.x, var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -532f), vec3<bool>(all(select(vec3<bool>(true, var_1.x, false), vec3<bool>(var_2.x, true, true), vec3<bool>(true, false, arg_0.x))), var_1.x, var_2.x)), Struct_1(select(!(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), select(vec4<bool>(true, var_1.x, false, arg_0.x), select(vec4<bool>(false, false, var_2.x, var_1.x), vec4<bool>(true, false, var_2.x, true), vec4<bool>(var_1.x, false, var_1.x, true)), select(vec4<bool>(false, true, var_2.x, var_1.x), vec4<bool>(false, var_2.x, var_2.x, true), var_2.x)), func_3(vec3<f32>(1394f, 794f, 653f), Struct_1(vec4<bool>(false, var_2.x, true, arg_0.x), -316f, vec3<bool>(false, false, false)), ~vec4<i32>(1i, var_0.x, -51730i, var_0.x), Struct_2(Struct_1(vec4<bool>(var_1.x, false, false, var_2.x), -1494f, vec3<bool>(false, var_1.x, false)), Struct_1(vec4<bool>(true, var_1.x, var_1.x, true), -1000f, vec3<bool>(var_1.x, var_1.x, true)), Struct_1(vec4<bool>(var_1.x, arg_0.x, var_1.x, false), 552f, vec3<bool>(var_1.x, false, var_2.x)), u_input.d.yxw, Struct_1(vec4<bool>(false, arg_0.x, true, false), 1000f, vec3<bool>(var_2.x, false, false))))), -913f, select(vec3<bool>(true, var_2.x | arg_0.x, true), !select(vec3<bool>(false, false, var_1.x), vec3<bool>(arg_0.x, false, true), var_2.x), all(vec3<bool>(var_1.x, var_1.x, true)) | all(arg_0))), u_input.d.zzz, Struct_1(!vec4<bool>(true, false, all(arg_0), false | var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-505f * -479f)), select(vec3<bool>(var_1.x | arg_0.x, var_0.x > u_input.b, arg_0.x), vec3<bool>(var_0.x == -2242i, all(vec3<bool>(var_1.x, false, true)), true | arg_0.x), select(select(vec3<bool>(true, false, true), vec3<bool>(var_1.x, arg_0.x, var_2.x), var_1.x), vec3<bool>(false, arg_0.x, true), true))));
    var_1 = select(var_2, select(vec2<bool>(all(vec3<bool>(var_2.x, var_2.x, var_3.c.c.x)), true), !var_3.c.a.xy, !arg_0), all(select(select(var_2, !var_2, var_3.b.c.yy), var_2, true)));
    return Struct_1(!var_3.a.a, _wgslsmith_f_op_f32(floor(var_3.a.b)), select(!var_3.b.a.xxz, select(vec3<bool>(16109i == u_input.b, !var_2.x, true), var_3.b.c, select(select(var_3.a.a.ywx, var_3.c.a.wyx, true), vec3<bool>(var_3.a.a.x, false, false), var_3.e.a.wzw)), select(select(var_3.a.a.wzw, var_3.a.c, any(vec2<bool>(true, true))), vec3<bool>(true, func_3(vec3<f32>(var_3.b.b, var_3.a.b, var_3.e.b), Struct_1(var_3.e.a, var_3.c.b, vec3<bool>(true, var_1.x, true)), vec4<i32>(16881i, -1i, var_0.x, 2147483647i), Struct_2(var_3.c, var_3.c, Struct_1(var_3.a.a, -420f, vec3<bool>(var_3.c.c.x, arg_0.x, var_3.c.a.x)), var_3.d, var_3.a)), true), vec3<bool>(func_3(vec3<f32>(-972f, 544f, var_3.a.b), var_3.a, vec4<i32>(u_input.b, 1i, -50379i, u_input.b), var_3), true, var_1.x))));
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_2(func_2(vec2<bool>(true, true), _wgslsmith_mult_u32(u_input.d.x & ~0u, 4397u)), func_2(select(select(func_2(vec2<bool>(true, true), 105561u).a.zy, vec2<bool>(false, false), u_input.e > u_input.d.x), select(vec2<bool>(true, true), vec2<bool>(true, true), true), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false))), _wgslsmith_mod_u32(countOneBits(61947u), 27751u)), Struct_1(vec4<bool>(any(vec3<bool>(true, true, true)), true, any(func_2(vec2<bool>(true, false), 31545u).c.zx), true), 1f, func_2(func_2(vec2<bool>(false, false), ~u_input.d.x).a.yy, 4294967295u).a.zyz), vec3<u32>(~u_input.d.x >> ((u_input.c.x << (_wgslsmith_div_u32(u_input.d.x, u_input.e) % 32u)) % 32u), ~u_input.e, abs(65344u)), Struct_1(!vec4<bool>(any(vec4<bool>(false, true, false, false)), true, select(true, false, false), true), _wgslsmith_f_op_f32(-977f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(270f - -429f) * -1233f)), !func_2(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), _wgslsmith_dot_vec2_u32(vec2<u32>(14260u, 81860u), vec2<u32>(4744u, u_input.d.x))).c));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-161f)));
    var var_2 = func_2(vec2<bool>(var_0.a.c.x, !any(func_2(vec2<bool>(var_0.a.a.x, false), 61309u).c.xz)), _wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.d.x, 4294967295u, 23861u, 5048u), vec4<u32>(u_input.e, var_0.d.x ^ 1424u, _wgslsmith_mod_u32(1u, u_input.d.x), max(var_0.d.x, u_input.c.x)))));
    let var_3 = -vec4<i32>(select(_wgslsmith_sub_i32(firstLeadingBit(32454i), i32(-1i) * -1i), -8220i, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -730f, var_2.b)), Struct_1(vec4<bool>(true, var_0.e.c.x, var_0.b.a.x, false), -111f, var_2.c), ~vec4<i32>(-22529i, -15158i, u_input.a, 11698i), Struct_2(Struct_1(var_0.a.a, var_2.b, var_2.a.wxx), Struct_1(var_2.a, var_0.b.b, var_2.a.xxw), var_0.b, var_0.d, Struct_1(vec4<bool>(var_0.a.c.x, false, var_0.c.a.x, true), -1000f, var_2.c)))), ~u_input.a, u_input.a, ~(i32(-1i) * -2147483647i));
    let var_4 = true;
    return !var_2.a.xw;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = func_2(vec2<bool>(!(arg_3.x || arg_0) || all(vec3<bool>(arg_0, true, true)), max(countOneBits(-16331i), -1i) >= ~_wgslsmith_clamp_i32(u_input.b, 57854i, 0i)), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.e, 4294967295u), 7758u));
    global0 = var_0.b <= -317f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-182f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_2) + -984f))));
    let var_2 = select(func_2(arg_1, ~(~39821u)).c.zz, !(!arg_3), select(select(func_1(), func_2(!arg_1, _wgslsmith_div_u32(u_input.e, u_input.e)).c.yy, true), var_0.c.xy, arg_1.x));
    var_0 = func_2(func_1(), min(_wgslsmith_div_u32(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 22162u, u_input.d.x), u_input.d.zxz)), _wgslsmith_mod_u32(_wgslsmith_div_u32(~51302u, u_input.e), ~(0u << (u_input.e % 32u)))));
    return func_2(!select(func_1(), var_0.c.xx, !all(var_0.a.xyy)), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (!(u_input.a < u_input.b) || true) | select(false, true, true);
    var var_0 = Struct_1(!vec4<bool>(true, all(vec2<bool>(true, true)), true, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-744f, _wgslsmith_f_op_f32(287f + _wgslsmith_f_op_f32(trunc(260f))))))), !(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true)));
    let var_1 = Struct_2(Struct_1(!var_0.a, 160f, var_0.c), func_4(!(!var_0.c.x), vec2<bool>(all(vec3<bool>(false, false, var_0.a.x)) || var_0.a.x, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + var_0.b) * -974f), func_1()), func_4(var_0.a.x, !var_0.a.yz, -1000f, func_4(1u != u_input.c.x, var_0.c.yz, _wgslsmith_f_op_f32(-1220f - 137f), var_0.a.yw).c.xy), _wgslsmith_add_vec3_u32(~u_input.c, u_input.c) << (u_input.c % vec3<u32>(32u)), Struct_1(select(vec4<bool>(false, u_input.a != u_input.a, var_0.a.x | var_0.c.x, var_0.a.x), var_0.a, !var_0.c.x), var_0.b, var_0.a.ywx));
    var_0 = func_2(var_1.a.a.wz, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d));
    var var_2 = vec2<i32>(select(u_input.b, -1i, !var_1.b.a.x), countOneBits(u_input.a) & u_input.b);
    var var_3 = max(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, var_2.x), vec3<i32>(31372i, var_2.x, 0i)), _wgslsmith_div_i32(var_2.x, var_2.x), firstLeadingBit(u_input.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(22167i, var_2.x, -38044i), min(vec3<i32>(0i, -15381i, -2147483647i), vec3<i32>(1i, u_input.b, var_2.x))))), select(~(~(~vec3<i32>(var_2.x, u_input.b, var_2.x))), -(~countOneBits(vec3<i32>(1i, -12598i, var_2.x))), _wgslsmith_sub_u32(~var_1.d.x, ~u_input.d.x) <= ~(~var_1.d.x)));
    var_3 = vec3<i32>(_wgslsmith_div_i32(-2147483647i, abs(u_input.b)), _wgslsmith_mult_i32(1i, ~(i32(-1i) * -40027i)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(var_2.x, u_input.b, -1i, var_3.x)) & vec4<i32>(var_2.x, -9379i, var_3.x, 12823i), select(abs(vec4<i32>(var_3.x, 1i, u_input.b, var_3.x)), vec4<i32>(4614i, 0i, var_2.x, var_3.x), true)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, _wgslsmith_sub_i32(var_2.x, var_3.x), var_2.x, -u_input.b), min(max(vec4<i32>(10152i, var_3.x, var_2.x, 8049i), vec4<i32>(0i, -2147483647i, 15070i, var_2.x)), vec4<i32>(u_input.b, var_3.x, -1i, u_input.a)))));
    var_3 = vec3<i32>(_wgslsmith_sub_i32(~firstTrailingBit(0i), u_input.a), _wgslsmith_div_i32(firstTrailingBit(firstLeadingBit(u_input.a) ^ -var_3.x), ~(-(i32(-1i) * -30527i))), _wgslsmith_div_i32(countOneBits(_wgslsmith_dot_vec2_i32(var_3.xz, var_3.yz)), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~vec3<i32>(u_input.a, -40698i, 2147483647i) | _wgslsmith_div_vec3_i32(vec3<i32>(var_3.x, var_2.x, u_input.b), vec3<i32>(var_2.x, var_3.x, 0i))));
}

