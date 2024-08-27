struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 0u, 3073u, 0u);

var<private> global1: vec4<bool>;

var<private> global2: f32 = 138f;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: i32, arg_3: f32) -> vec4<u32> {
    let var_0 = u_input.b.x;
    let var_1 = true;
    global1 = !(!vec4<bool>(true, !arg_0.x, true, any(global1.ww)));
    var var_2 = -vec2<i32>(countOneBits(-24777i), 1i);
    global2 = _wgslsmith_f_op_f32(step(-1000f, -209f));
    return vec4<u32>(~abs(72633u), max(~25200u, 4294967295u), _wgslsmith_mult_u32(u_input.d.x & ~(u_input.a | u_input.d.x), reverseBits(firstTrailingBit(abs(var_0)))), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(32569u, 4294967295u, 14730u, global0.x) | vec4<u32>(17028u, 1u, 0u, 787u), vec4<u32>(global0.x, global0.x, 1u, u_input.b.x) & vec4<u32>(1u, 1u, u_input.b.x, 104944u), any(vec4<bool>(false, false, global1.x, true))), ~((vec4<u32>(7649u, u_input.a, global0.x, global0.x) | vec4<u32>(global0.x, var_0, 4294967295u, 70940u)) << (select(vec4<u32>(42330u, 1u, 1u, 4294967295u), vec4<u32>(53057u, global0.x, 0u, global0.x), false) % vec4<u32>(32u)))));
}

fn func_2() -> vec4<u32> {
    global0 = ~func_3(select(global1.xzw, vec3<bool>(global1.x, true, global1.x), global1.xyz), vec2<f32>(720f, _wgslsmith_f_op_f32(ceil(-2100f))), u_input.c.x, 333f) << (countOneBits(select(vec4<u32>(u_input.d.x, u_input.a, min(4550u, u_input.d.x), ~0u), ~(~vec4<u32>(0u, global0.x, 91525u, u_input.b.x)), !(!global1.x))) % vec4<u32>(32u));
    global1 = select(vec4<bool>(select(any(vec4<bool>(false, global1.x, false, global1.x)) & any(vec4<bool>(true, global1.x, true, global1.x)), all(select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(global1.x, true, false, global1.x), false)), !any(global1.yw)), false, true, true), vec4<bool>(any(select(!vec4<bool>(global1.x, global1.x, false, false), select(vec4<bool>(false, false, global1.x, false), vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(false, false, global1.x, true)), global1.x)), global1.x, global1.x, all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, global1.x, global1.x), true), select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x), global1.zxy), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, true, true), global1.zzx)))), global1.x);
    let var_0 = !select(!select(global1.yww, !vec3<bool>(true, global1.x, true), any(global1.ywy)), select(select(!vec3<bool>(true, global1.x, true), global1.zxx, global1.x), !select(global1.xzz, global1.xyx, global1.x), global1.x), global1.wxy);
    global1 = select(!select(select(select(vec4<bool>(global1.x, global1.x, var_0.x, false), vec4<bool>(false, true, true, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x)), select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(true, true, global1.x, global1.x), false), !vec4<bool>(true, var_0.x, global1.x, var_0.x)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), var_0.x), global1.x && !var_0.x), !(!select(vec4<bool>(global1.x, false, var_0.x, var_0.x), !vec4<bool>(global1.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false))), firstTrailingBit(-2147483647i) >= -1i);
    global1 = !select(vec4<bool>(true, all(vec2<bool>(var_0.x, var_0.x)), u_input.d.x > u_input.d.x, any(vec2<bool>(var_0.x, true))), !select(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(false, true, global1.x, false), vec4<bool>(false, var_0.x, global1.x, global1.x)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, global1.x), vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(true, true, global1.x, false)), vec4<bool>(global1.x, var_0.x, true, false)), var_0.x);
    return _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.b.x | global0.x, 55883u), global0.x, max(63699u, 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global0.x, 0u, u_input.b.x), min(vec4<u32>(16566u, global0.x, 6945u, 13587u), vec4<u32>(0u, 7026u, global0.x, 42090u)))), ~vec4<u32>(_wgslsmith_sub_u32(~global0.x, 0u), 1u, u_input.b.x, ~global0.x ^ ~24591u));
}

fn func_4(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-117f - _wgslsmith_f_op_f32(f32(-1f) * -1189f)), Struct_1(_wgslsmith_div_u32(~27251u, min(arg_0.x, global0.x)) >> (~(arg_0.x >> (u_input.d.x % 32u)) % 32u), global1.zyw), 491f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1571f, 1014f, global1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_mult_vec2_u32(global0.yy, func_3(!select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, false, false), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-157f, 1205f)), -abs(14123i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1196f)))).wz));
    var var_1 = ~global0.xxz;
    var var_2 = vec3<f32>(_wgslsmith_div_f32(2099f, var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -148f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1493f * var_0.a) + _wgslsmith_f_op_f32(sign(var_0.a))) - 422f))));
    var var_3 = ~1u;
    global1 = !vec4<bool>(select(any(vec4<bool>(false, var_0.b.b.x, true, var_0.c)), !all(vec3<bool>(true, true, global1.x)), false), true | global1.x, all(select(vec4<bool>(global1.x, false, var_0.c, true), vec4<bool>(var_0.b.b.x, global1.x, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.c, var_0.b.b.x, var_0.c, global1.x), vec4<bool>(var_0.c, var_0.b.b.x, true, true)))), false);
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = select(vec4<bool>(any(select(vec3<bool>(arg_1, false, arg_0.b.b.x), vec3<bool>(false, false, false), vec3<bool>(false, global1.x, arg_0.c))), !arg_3, any(global1.yyy), true || (arg_0.a < _wgslsmith_f_op_f32(sign(-461f)))), vec4<bool>(global1.x, arg_1, arg_2.x == -_wgslsmith_div_i32(1i, arg_2.x), arg_1), false);
    var var_1 = arg_0;
    let var_2 = Struct_3(Struct_2(711f, Struct_1((21911u | u_input.d.x) << (u_input.d.x % 32u), !select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, true, false), false)), true, func_4(vec4<u32>(func_4(vec4<u32>(var_1.b.a, 1u, u_input.a, 1u)).b.a, abs(u_input.d.x), arg_0.d.x, ~var_1.b.a)).d), var_0.wx);
    let var_3 = vec3<u32>(select(1u, 3207u, var_2.b.x), u_input.a, global0.x ^ 58712u);
    var var_4 = Struct_1(var_2.a.b.a, !vec3<bool>(!(!arg_1), !(!arg_1), true));
    return Struct_1(0u, select(func_4(~func_2()).b.b, select(arg_0.b.b, select(!var_1.b.b, select(var_0.zyx, var_4.b, var_4.b.x), vec3<bool>(true, true, true)), all(vec3<bool>(var_1.c, arg_0.c, false))), !select(select(arg_0.b.b, vec3<bool>(false, true, false), vec3<bool>(false, arg_3, false)), vec3<bool>(global1.x, global1.x, global1.x), func_4(vec4<u32>(var_4.a, var_3.x, 4294967295u, var_1.d.x)).b.b)));
}

fn func_1() -> Struct_3 {
    var var_0 = func_5(func_4(func_2()), true, _wgslsmith_sub_vec2_i32(u_input.c.zy, max(select(vec2<i32>(u_input.c.x, -1i) >> (global0.wy % vec2<u32>(32u)), abs(u_input.c.zx), vec2<bool>(global1.x, global1.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), select(vec2<i32>(2147483647i, 1i), vec2<i32>(u_input.c.x, 0i), global1.x)))), !(true | global1.x));
    let var_1 = global0.xw;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1618f - -624f) + _wgslsmith_f_op_f32(sign(449f))))), 1f, -845f, _wgslsmith_f_op_f32(f32(-1f) * -315f)));
    global1 = !select(select(vec4<bool>(!global1.x, true, true, select(true, var_0.b.x, true)), vec4<bool>(global1.x, func_4(vec4<u32>(30976u, global0.x, 15361u, u_input.a)).c, false, select(global1.x, false, true)), select(vec4<bool>(false, true, global1.x, global1.x), select(vec4<bool>(global1.x, var_0.b.x, false, global1.x), vec4<bool>(false, global1.x, false, var_0.b.x), true), !global1.x)), !select(select(vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(true, true, true, false), false), !vec4<bool>(var_0.b.x, false, global1.x, global1.x), !global1.x), vec4<bool>(!(u_input.c.x <= u_input.c.x), !(!global1.x), global1.x, var_0.b.x));
    let var_3 = select(vec2<u32>(~(~abs(61885u)), ~firstLeadingBit(4294967295u)), vec2<u32>(5145u, func_5(Struct_2(_wgslsmith_f_op_f32(479f + var_2.x), func_4(vec4<u32>(1u, 1u, 1u, var_0.a)).b, true, vec2<u32>(4294967295u, var_1.x) ^ u_input.d), true, vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.zyz, u_input.c.wyy), -1i), true).a), vec2<bool>(u_input.c.x < -1i, var_0.b.x | ((var_1.x > u_input.d.x) && true)));
    return Struct_3(func_4(~vec4<u32>(reverseBits(75262u), global0.x, 1u, ~0u)), global1.xw);
}

fn func_6(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    global1 = select(!vec4<bool>(arg_1.x, global1.x, true, true), !(!(!vec4<bool>(arg_2.b.x, global1.x, arg_2.b.x, true))), !(!(!select(vec4<bool>(true, arg_1.x, global1.x, false), vec4<bool>(arg_2.b.x, false, false, arg_1.x), vec4<bool>(global1.x, arg_2.b.x, true, false)))));
    let var_0 = vec4<i32>(reverseBits(0i), ~0i, u_input.c.x, ~select(26706i | min(u_input.c.x, u_input.c.x), min(-35296i, 9893i) ^ -u_input.c.x, func_4(abs(vec4<u32>(arg_2.a, global0.x, 1u, global0.x))).b.b.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a)) * arg_0.a.a);
}

fn func_7(arg_0: vec2<f32>, arg_1: i32) -> Struct_1 {
    global0 = vec4<u32>(u_input.d.x, (global0.x | global0.x) & ~(~func_3(vec3<bool>(global1.x, global1.x, global1.x), arg_0, 2147483647i, -1523f).x), countOneBits(42476u), u_input.d.x);
    global0 = reverseBits(~(~func_2())) | _wgslsmith_mod_vec4_u32(countOneBits(~vec4<u32>(6998u, 3446u, u_input.a, 69335u)) & vec4<u32>(0u, 7530u, u_input.b.x ^ u_input.d.x, _wgslsmith_dot_vec2_u32(global0.yw, vec2<u32>(u_input.d.x, 4294967295u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 36629u, u_input.d.x, u_input.b.x), vec4<u32>(global0.x, global0.x, global0.x, 0u)));
    var var_0 = func_1().a.a;
    var_0 = arg_0.x;
    global1 = vec4<bool>(!select(!(!global1.x), _wgslsmith_f_op_f32(arg_0.x * arg_0.x) >= _wgslsmith_f_op_f32(-arg_0.x), false), true, true, select(arg_0.x <= func_4(vec4<u32>(0u, u_input.d.x, u_input.a, 4294967295u)).a, all(!select(global1.wwz, vec3<bool>(true, global1.x, global1.x), false)), func_5(func_4(func_2()), all(global1.yx), ~u_input.c.wy, any(select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true)))).b.x));
    return func_4(vec4<u32>(countOneBits(22516u) >> (1u % 32u), 0u, 0u, func_5(Struct_2(arg_0.x, func_1().a.b, global1.x == false, select(vec2<u32>(9689u, u_input.d.x), global0.wx, global1.yw)), any(!vec4<bool>(true, false, global1.x, global1.x)), _wgslsmith_clamp_vec2_i32(u_input.c.xw, u_input.c.yy, countOneBits(u_input.c.xz)), !(true && global1.x)).a)).b;
}

fn func_8(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_2 {
    global2 = -785f;
    global0 = ~(~vec4<u32>(~58511u, func_4(vec4<u32>(0u, 0u, arg_0.a, 4294967295u)).b.a, ~(~u_input.a), 32252u));
    var var_0 = global0.x;
    let var_1 = Struct_1(~4457u, func_7(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-421f, 1000f), vec2<f32>(-2403f, -1511f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(635f, -1040f), vec2<f32>(909f, -1000f), global1.x))))), 1i).b);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-220f, _wgslsmith_f_op_f32(func_6(Struct_3(Struct_2(1141f, arg_0, false, global0.wx), vec2<bool>(true, arg_0.b.x)), vec3<bool>(true, var_1.b.x, arg_0.b.x), var_1)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1221f - -346f))))), Struct_1(arg_0.a, arg_0.b), !(!func_1().b.x), ~(~firstLeadingBit(func_1().a.d)));
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_7(vec2<f32>(_wgslsmith_f_op_f32(func_6(func_1(), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, true, true), false), func_1().a.b)), -1121f), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(46228i, 2147483647i, u_input.c.x, u_input.c.x), ~u_input.c))), max(select(vec3<i32>(u_input.c.x, 2147483647i, 1674i) & u_input.c.yww, -(~vec3<i32>(-1i, u_input.c.x, -14150i)), (0u < global0.x) || (global1.x | true)), -select(u_input.c.wxz, max(vec3<i32>(u_input.c.x, u_input.c.x, 1i), u_input.c.xwz), func_7(vec2<f32>(-478f, 1523f), u_input.c.x).b)));
    global0 = vec4<u32>(_wgslsmith_mult_u32(global0.x, _wgslsmith_mult_u32(u_input.d.x >> (u_input.a % 32u), 1u)), 1u, var_0.b.a, func_3(select(vec3<bool>(false, true, false & var_0.b.b.x), vec3<bool>(func_5(var_0, global1.x, u_input.c.xy, var_0.b.b.x).b.x, !global1.x, global1.x), func_8(var_0.b, _wgslsmith_mult_vec3_i32(u_input.c.xzz, vec3<i32>(24531i, 31138i, -2147483647i))).b.b.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(759f, 334f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -1942f)), vec2<f32>(1f, 1f)))), u_input.c.x, -1124f).x);
    var var_1 = u_input.c.xx & u_input.c.xw;
    global1 = select(select(vec4<bool>(global1.x, !(!global1.x), all(vec4<bool>(var_0.c, true, false, var_0.c)), any(func_5(Struct_2(2358f, var_0.b, global1.x, global0.wy), global1.x, u_input.c.xy, global1.x).b)), !(!(!vec4<bool>(true, var_0.c, global1.x, global1.x))), (_wgslsmith_f_op_f32(sign(var_0.a)) <= 429f) || !(true & global1.x)), vec4<bool>(!(select(false, var_0.c, global1.x) != func_5(Struct_2(735f, var_0.b, true, var_0.d), true, vec2<i32>(-2147483647i, 2147483647i), var_0.c).b.x), !global1.x, !(!var_0.c) | false, var_0.c), (var_0.c | func_8(var_0.b, u_input.c.wzx).c) & all(vec2<bool>(true, global1.x)));
    var var_2 = func_7(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(131f, -1241f))))), ~min(-var_1.x << (1u % 32u), 13719i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.c.x, var_1.x & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), ~u_input.c.xwx)), vec4<u32>(func_4(vec4<u32>(u_input.d.x, global0.x, 62690u, 3221u)).b.a ^ u_input.b.x, ~u_input.a, ~(~func_4(vec4<u32>(0u, global0.x, var_0.d.x, 4294967295u)).b.a), _wgslsmith_div_u32(32271u << (var_0.b.a % 32u), global0.x) ^ select(_wgslsmith_mod_u32(u_input.b.x, var_2.a), var_2.a, true)), firstTrailingBit(vec2<i32>(-(var_1.x & var_1.x), -1i << (~var_2.a % 32u))), -(-u_input.c.x << ((global0.x >> (abs(10885u) % 32u)) % 32u)), func_4(~(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 45075u, var_2.a, 43633u), vec4<u32>(4294967295u, var_0.d.x, 1u, 59288u)))).a);
}

