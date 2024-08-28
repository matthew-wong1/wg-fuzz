struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1566f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(287f, 440f) - _wgslsmith_f_op_f32(660f + arg_1)))), _wgslsmith_f_op_f32(-arg_1)));
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(600f, 397f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-574f, arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-599f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1050f, 1352f) - vec2<f32>(var_0.x, arg_1))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, false)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -1009f)), _wgslsmith_f_op_f32(floor(2660f))))));
    return -4510i;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> u32 {
    var var_0 = u_input.b.x;
    var_0 = arg_1.d.x;
    var var_1 = arg_0.b;
    var var_2 = arg_0.a;
    var_2 = arg_0.a ^ vec4<u32>(arg_1.a.x, ~1u, _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.a.x, 1u), arg_0.a.x), _wgslsmith_div_u32(44965u, firstLeadingBit(1u)));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.c.a.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(3451u, var_2.x), ~27469u, arg_1.c)), arg_0.a.yw);
}

fn func_4(arg_0: i32) -> Struct_2 {
    let var_0 = u_input.a.zz;
    var var_1 = ~_wgslsmith_mod_vec4_u32(reverseBits(reverseBits(vec4<u32>(1u, 0u, 4294967295u, 0u))) << (_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, 22783u, 0u, 1u), vec4<u32>(4294967295u, 7199u, 1u, 4294967295u), vec4<bool>(false, true, false, true)), abs(vec4<u32>(76220u, 4294967295u, 7942u, 1u))) % vec4<u32>(32u)), vec4<u32>(func_3(Struct_4(vec4<u32>(0u, 4294967295u, 64440u, 44805u), vec4<bool>(false, true, false, true)), Struct_2(vec2<u32>(1u, 4294967295u), 1i, 4294967295u, u_input.b), Struct_3(Struct_1(true), Struct_2(vec2<u32>(22099u, 1u), 36073i, 4294967295u, vec4<i32>(arg_0, 5082i, 0i, u_input.b.x)), Struct_2(vec2<u32>(1u, 0u), 30452i, 4294967295u, u_input.b)), 4294967295u), 1u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(47408u, 4294967295u, 0u, 0u), vec4<u32>(77445u, 37481u, 1050u, 0u))) & abs(~vec4<u32>(70857u, 0u, 31640u, 4294967295u)));
    var_1 = vec4<u32>(~select((var_1.x ^ var_1.x) | ~var_1.x, abs(abs(var_1.x)), true), var_1.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, ~4294967295u, _wgslsmith_div_u32(0u, var_1.x), 1u), vec4<u32>(0u, min(var_1.x, 77185u), 74443u, 0u)), abs(select(4294967295u, _wgslsmith_sub_u32(firstLeadingBit(4294967295u), 0u), true)));
    var var_2 = Struct_3(Struct_1(any(vec3<bool>(true, true, true))), Struct_2(~_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(66568u, var_1.x)), var_1.xw), 0i, firstTrailingBit(0u), _wgslsmith_div_vec4_i32(vec4<i32>(51756i, 1i, arg_0, var_0.x), -u_input.b) | _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, u_input.b), -vec4<i32>(40452i, 1i, arg_0, -1i))), Struct_2(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(1u, 42534u)), vec2<u32>(~9908u, select(0u, 90869u, true)), vec2<u32>(4294967295u, ~16401u)), -54228i, abs(countOneBits(min(4294967295u, 25408u))), select(u_input.b, vec4<i32>(-1i) * -u_input.b, true)));
    var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, ~_wgslsmith_add_u32(0u, ~0u), _wgslsmith_add_u32(var_2.b.a.x, ~reverseBits(17642u)), ~_wgslsmith_dot_vec3_u32(var_1.yyx, vec3<u32>(var_1.x, 4294967295u, 55810u))), abs(~vec4<u32>(var_1.x, var_2.b.c, var_1.x, 77198u) | ~min(vec4<u32>(4294967295u, var_2.b.c, var_2.b.c, 36801u), vec4<u32>(var_2.b.a.x, 3002u, 1u, var_2.b.c))), ~(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_2.c.a.x, 4294967295u), vec4<u32>(77945u, 22077u, 4294967295u, var_1.x))) >> (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u)), vec4<u32>(var_1.x, 1u, var_2.c.a.x, var_2.b.c)) % vec4<u32>(32u))));
    return var_2.b;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_mod_i32(-(~arg_0), ~func_2(vec2<u32>(13607u, 19667u), -268f, 9178i)) | (-1i << (func_3(Struct_4(vec4<u32>(0u, 31081u, 59255u, 84360u), vec4<bool>(false, false, true, true)), Struct_2(vec2<u32>(1939u, 21807u), -1i, 4294967295u, u_input.b), Struct_3(Struct_1(true), Struct_2(vec2<u32>(0u, 0u), 6337i, 0u, vec4<i32>(arg_0, -25035i, -1i, -2147483647i)), Struct_2(vec2<u32>(0u, 12208u), u_input.a.x, 4294967295u, vec4<i32>(-72683i, arg_0, u_input.a.x, -1i))), ~4294967295u) % 32u)));
    var var_1 = 25438u;
    var var_2 = Struct_2(vec2<u32>(0u, ~func_3(Struct_4(vec4<u32>(var_0.c, var_0.c, var_0.c, 4294967295u), vec4<bool>(true, true, false, true)), Struct_2(vec2<u32>(var_0.c, 4294967295u), var_0.b, 2714u, u_input.b), Struct_3(Struct_1(false), Struct_2(vec2<u32>(4294967295u, var_0.a.x), arg_0, var_0.c, u_input.b), var_0), ~26362u)), _wgslsmith_clamp_i32(u_input.b.x, arg_0, ~arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.a, func_4(1i).a), _wgslsmith_div_u32(49843u, _wgslsmith_mod_u32(var_0.c, var_0.a.x)), var_0.a.x, _wgslsmith_clamp_u32(0u, var_0.c, 23286u)), countOneBits(vec4<u32>(52126u, var_0.a.x, var_0.c, var_0.c) >> (vec4<u32>(4294967295u, var_0.c, var_0.a.x, var_0.a.x) % vec4<u32>(32u))) ^ ((vec4<u32>(69308u, 1u, var_0.a.x, var_0.c) ^ vec4<u32>(var_0.c, var_0.c, 91151u, 3474u)) >> (vec4<u32>(var_0.c, var_0.a.x, 70154u, var_0.c) % vec4<u32>(32u)))), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -24529i, ~(-2147483647i), 42201i, arg_0), -vec4<i32>(u_input.a.x, 29073i, 2147483647i, arg_0)), select(vec4<i32>(func_4(var_0.d.x).d.x, 0i, _wgslsmith_sub_i32(var_0.d.x, u_input.a.x), ~0i), var_0.d, true)));
    var_1 = 52080u;
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_add_u32(var_2.c, _wgslsmith_clamp_u32(0u, select(87740u, 4294967295u, true), ~var_2.c)), _wgslsmith_div_u32(~(~0u), ~var_2.a.x) ^ 1u);
    return Struct_1(true);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * -825f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -120f))), _wgslsmith_f_op_f32(-1f))), -1318f));
    let var_1 = Struct_4(~vec4<u32>(14004u, arg_3, _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_3, 1u), _wgslsmith_mod_u32(arg_3, 43959u)), ~arg_3), select(!select(vec4<bool>(true, arg_0.a, false, false), select(vec4<bool>(true, arg_0.a, arg_2.a, false), vec4<bool>(arg_0.a, arg_2.a, arg_0.a, arg_0.a), vec4<bool>(true, false, arg_0.a, true)), !vec4<bool>(arg_0.a, true, arg_0.a, arg_2.a)), vec4<bool>(!arg_0.a | arg_2.a, false, all(vec3<bool>(arg_2.a, arg_2.a, arg_2.a)) != !arg_0.a, true), arg_2.a));
    var var_2 = -621f;
    let var_3 = var_1.a.x;
    var var_4 = -914f;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_5(func_1(u_input.b.x), -firstLeadingBit(vec2<i32>(u_input.b.x, -1i) | vec2<i32>(2147483647i, u_input.a.x)), func_1(_wgslsmith_mult_i32(u_input.a.x, u_input.b.x)), _wgslsmith_clamp_u32(~1u, ~(~84380u), min(1u, 4294967295u))), Struct_2(vec2<u32>(~1u, _wgslsmith_clamp_u32(0u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(7524u, 48649u, 41524u, 14626u), vec4<u32>(32u, 3701u, 4294967295u, 4294967295u)))), -32858i, ~4294967295u, u_input.b), Struct_2(max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 27562u), vec2<u32>(1u, 0u), vec2<u32>(18570u, 58599u)), select(vec2<u32>(1u, 1u), ~vec2<u32>(0u, 4294967295u), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))), ~u_input.b.x, min(4294967295u, ~(~1u)), _wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(u_input.b, u_input.b), select(vec4<i32>(30233i, u_input.b.x, 43538i, -2147483647i), vec4<i32>(-61814i, u_input.a.x, u_input.a.x, 30333i) >> (vec4<u32>(19355u, 4294967295u, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)))));
    var var_1 = ~select(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.c, var_0.c.a.x, var_0.c.a.x), vec3<u32>(var_0.c.a.x, var_0.b.c, 53130u)) | vec3<u32>(4294967295u, var_0.c.a.x, 25752u), _wgslsmith_add_vec3_u32(select(vec3<u32>(var_0.b.a.x, 1u, 41553u), vec3<u32>(var_0.b.a.x, 44375u, 18307u), vec3<bool>(true, var_0.a.a, var_0.a.a)), firstTrailingBit(vec3<u32>(var_0.b.c, 4294967295u, 4294967295u))), vec3<u32>(countOneBits(var_0.b.c), var_0.c.c, _wgslsmith_div_u32(1u, 54670u))), select(vec3<u32>(var_0.c.c, var_0.c.a.x, var_0.b.a.x) ^ ~vec3<u32>(var_0.c.c, var_0.c.c, var_0.c.c), vec3<u32>(max(56319u, var_0.b.a.x), var_0.c.a.x, firstTrailingBit(0u)), var_0.a.a), var_0.a.a);
    var var_2 = var_0.b;
    let var_3 = Struct_3(var_0.a, Struct_2(var_2.a, -57563i, 68726u, vec4<i32>(u_input.b.x, var_0.c.b, func_2(select(vec2<u32>(var_1.x, var_1.x), var_0.b.a, vec2<bool>(var_0.a.a, var_0.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -1051f), 0i), ~7225i | ~var_2.d.x)), var_0.c);
    var var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(max(firstTrailingBit(0u), 1u));
}

