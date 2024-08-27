struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_4 = Struct_4(false, vec4<f32>(940f, 1613f, -225f, -264f));

var<private> global2: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), 1i, 2147483647i), 1784f, vec2<f32>(-655f, -195f), vec2<u32>(1u, 11604u), vec2<bool>(true, true));

var<private> global3: f32 = -1610f;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<bool> {
    let var_0 = ~22887i;
    let var_1 = select(vec4<bool>(all(select(vec2<bool>(true, true), global2.e, true)) & (664f < _wgslsmith_f_op_f32(exp2(global1.b.x))), global1.a, global1.a, global2.a.x < 14823i), vec4<bool>(!any(vec3<bool>(global2.e.x, true, true)), !(global1.a | global1.a), all(vec4<bool>(true, global2.e.x, true, global2.e.x)), any(!vec4<bool>(true, false, global2.e.x, true))), global1.a);
    var var_2 = select(true, any(select(vec4<bool>(global1.a, global2.e.x, true, 38274i <= global2.a.x), vec4<bool>(true, true, global2.a.x < var_0, var_1.x || false), !vec4<bool>(global1.a, true, global1.a, global1.a))), all(!select(!var_1, var_1, false)));
    global1 = Struct_4(false, vec4<f32>(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-511f + global2.c.x), -1000f, global2.e.x == false))), global2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -754f)));
    var var_3 = Struct_3(_wgslsmith_dot_vec4_i32(-(~(~vec4<i32>(3606i, global2.a.x, -1i, var_0))), min(vec4<i32>(global2.a.x, _wgslsmith_sub_i32(u_input.b, 3554i), select(u_input.b, -2147483647i, global1.a), abs(1378i)), abs(vec4<i32>(-15072i, u_input.b, 35034i, var_0)) | min(vec4<i32>(var_0, global2.a.x, -1i, 1i), vec4<i32>(-32890i, -17451i, u_input.b, global2.a.x)))), 1000f, global2.a, select(var_1, !var_1, select(!(!vec4<bool>(true, var_1.x, global2.e.x, var_1.x)), select(var_1, vec4<bool>(true, var_1.x, true, var_1.x), true), true)));
    return var_1.yw;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32) -> vec3<bool> {
    global1 = Struct_4(!global2.e.x, _wgslsmith_div_vec4_f32(global1.b, global1.b));
    let var_0 = Struct_1(-(vec3<i32>(-1i) * -vec3<i32>(28521i, global2.a.x, 14229i)) << (reverseBits(firstTrailingBit(u_input.c)) % vec3<u32>(32u)), global1.b.x, global2.c, vec2<u32>(arg_2, ~_wgslsmith_dot_vec2_u32(u_input.a.zz, abs(global2.d))), func_3());
    let var_1 = Struct_3(-firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), vec4<i32>(global2.a.x, u_input.b, 1i, 0i))) ^ (_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, global2.a.x, 20121i, u_input.b), vec4<i32>(-9446i, var_0.a.x, var_0.a.x, u_input.b)), global2.a.x, u_input.b) >> (~_wgslsmith_mult_u32(global2.d.x, var_0.d.x) % 32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~u_input.b, 0i, 1i), -(global2.a ^ var_0.a)), _wgslsmith_div_vec3_i32(vec3<i32>(-23013i, max(-1i, -41466i), ~var_0.a.x), global2.a)), vec4<bool>(!(!(var_0.c.x >= var_0.c.x)), true, any(vec3<bool>(true, true, global1.a)) && global1.a, global1.a));
    let var_2 = 32786u;
    var var_3 = Struct_2(global1.b, var_0, !any(!vec3<bool>(false, global2.e.x, global1.a)), var_0, select(select(vec2<bool>(var_0.e.x & global1.a, global2.e.x | global1.a), func_3(), !var_0.e), global2.e, var_1.d.x));
    return vec3<bool>(!all(vec2<bool>(var_0.e.x, any(vec3<bool>(global1.a, var_0.e.x, true)))), true, global1.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.b, _wgslsmith_f_op_f32(global1.b.x + -280f), _wgslsmith_f_op_f32(step(global2.c.x, -881f)), -423f))))), Struct_1(-(~firstLeadingBit(global2.a)), -1067f, vec2<f32>(_wgslsmith_div_f32(-138f, _wgslsmith_f_op_f32(trunc(global2.c.x))), global1.b.x), _wgslsmith_div_vec2_u32(u_input.a.wx, vec2<u32>(~u_input.a.x, arg_2.x & 4294967295u)), !vec2<bool>(select(global1.a, false, global2.e.x), arg_3.x || arg_3.x)), global2.d.x >= u_input.a.x, Struct_1(vec3<i32>(_wgslsmith_div_i32(-arg_1.x, firstLeadingBit(31330i)), global2.a.x, countOneBits(reverseBits(2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(789f * _wgslsmith_f_op_f32(-global2.b))), vec2<f32>(855f, _wgslsmith_f_op_f32(min(global1.b.x, -868f))), ~u_input.c.xx, vec2<bool>(any(arg_0), global2.e.x)), select(vec2<bool>(arg_0.x, any(vec3<bool>(true, global1.a, global1.a))), !func_3(), func_2(_wgslsmith_f_op_f32(-global1.b.x), ~(~u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a.xxz, u_input.a.yzy) & (u_input.c.x & 76485u)).yx));
    var var_1 = ~abs(vec3<i32>(min(-19684i, 1i), arg_1.x, var_0.d.a.x)) | select(vec3<i32>(abs(1i), (arg_1.x ^ arg_1.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global2.d.x, 52890u, 11789u, 0u), vec4<u32>(var_0.b.d.x, 38931u, global2.d.x, 1u)) % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(10639i, -1i), arg_1.x & 0i)), select(vec3<i32>(-1i, u_input.b, firstLeadingBit(u_input.b)), min(-global2.a, select(global2.a, global2.a, arg_0)), true), !arg_0.x);
    let var_2 = arg_3;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d.c.x + global2.b))) * _wgslsmith_f_op_f32(-1877f + _wgslsmith_div_f32(var_0.d.c.x, global2.b)))));
    let var_3 = Struct_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.b.x, _wgslsmith_f_op_f32(-var_0.a.x), true))), abs(min(~var_0.b.d.x, ~u_input.a.x)), ~(~(var_0.d.d.x & 96342u))).x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) - _wgslsmith_f_op_vec4_f32(-global1.b))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2488f))), global1.b.x, var_0.b.b, _wgslsmith_f_op_f32(global2.c.x + -531f))));
    return Struct_3(u_input.b, _wgslsmith_f_op_f32(select(global2.c.x, -625f, global2.e.x)), ~var_0.d.a, !select(select(!vec4<bool>(var_0.c, true, arg_0.x, arg_3.x), !vec4<bool>(global2.e.x, true, false, arg_0.x), all(vec3<bool>(true, var_2.x, false))), !select(vec4<bool>(global2.e.x, arg_0.x, global2.e.x, true), vec4<bool>(true, var_3.a, false, var_3.a), vec4<bool>(global2.e.x, true, true, var_3.a)), vec4<bool>(all(vec4<bool>(arg_0.x, var_3.a, var_0.d.e.x, true)), any(vec3<bool>(arg_0.x, false, var_3.a)), var_2.x, true)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_2(-1383f, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u) >> (vec2<u32>(34771u, global2.d.x) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(global2.d, global2.d)), _wgslsmith_div_u32(~21255u, global2.d.x)), ~u_input.c.x), _wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(global2.a.xz, global2.a.xx), vec2<i32>(abs(u_input.b), _wgslsmith_clamp_i32(33501i, 38984i, 2147483647i))) & (global2.a.xz | global2.a.zy), ~(~vec2<u32>(_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 90942u, 1u, u_input.a.x)))), select(func_3(), func_2(_wgslsmith_f_op_f32(1960f + _wgslsmith_f_op_f32(global1.b.x - global1.b.x)), _wgslsmith_sub_u32(1u | u_input.a.x, 38423u), abs(~u_input.c.x)).xy, vec2<bool>(true, false)));
    let var_1 = vec3<i32>(0i, global2.a.x, 1i);
    var var_2 = u_input.a;
    var var_3 = abs(~func_4(vec3<bool>(true, all(var_0.d.zwz), all(global2.e)), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, global2.a.x), vec2<i32>(u_input.b, var_0.c.x) << (u_input.c.yx % vec2<u32>(32u))), vec2<u32>(~global2.d.x, firstTrailingBit(global2.d.x)), vec2<bool>(true, true)).a);
    var var_4 = vec4<i32>(27034i >> ((~(~u_input.a.x) ^ ~(~20681u)) % 32u), firstTrailingBit(~23644i), ~select(0i, 12610i, true), 2147483647i);
    return Struct_1(-(vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(0i, u_input.b, var_0.c.x))), global1.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global1.b.xx))), abs(var_2.wy), var_0.d.yx);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_1 {
    global1 = Struct_4(all(vec4<bool>(!select(global1.a, global1.a, true), true, !(!arg_0.b.e.x), false)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.b.x - 863f), _wgslsmith_f_op_f32(-global2.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 412f)) - arg_0.b.c.x), arg_0.a.x, -582f));
    var var_0 = select(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(max(u_input.a, vec4<u32>(10934u, 1u, global2.d.x, u_input.c.x)), ~u_input.a), vec4<u32>(u_input.a.x ^ 7518u, _wgslsmith_add_u32(1u, global2.d.x), 1u, countOneBits(arg_0.b.d.x)) | vec4<u32>(global2.d.x, 4294967295u, global2.d.x, global2.d.x)), ~4294967295u, true);
    var var_1 = ~(~abs(arg_0.d.a));
    var var_2 = reverseBits(vec4<i32>(arg_0.b.a.x, firstLeadingBit(-2147483647i), func_4(!vec3<bool>(global2.e.x, arg_0.c, false), ~arg_0.b.a.zy, _wgslsmith_mod_vec2_u32(arg_0.b.d, vec2<u32>(u_input.c.x, u_input.a.x)), arg_1).a, -func_1().a.x)) & _wgslsmith_mult_vec4_i32(~select(vec4<i32>(0i, global2.a.x, -2147483647i, u_input.b), vec4<i32>(arg_0.d.a.x, -41689i, global2.a.x, global2.a.x), vec4<bool>(global2.e.x, global1.a, false, global2.e.x)), vec4<i32>(func_1().a.x, 0i >> (1u % 32u), -u_input.b, -global2.a.x));
    var var_3 = _wgslsmith_f_op_f32(step(248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b.x)) - -291f))));
    return arg_0.d;
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(arg_1.d.c.x * global1.b.x), 764f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.b) - func_4(vec3<bool>(true, false, false), vec2<i32>(global2.a.x, 13680i), vec2<u32>(u_input.c.x, 34344u), vec2<bool>(true, false)).b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-195f, -478f, -711f))))) + _wgslsmith_f_op_vec3_f32(round(global1.b.zww)))));
    var var_2 = arg_1;
    global2 = func_5(Struct_2(vec4<f32>(global2.b, var_2.b.c.x, arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.b)) * _wgslsmith_f_op_f32(f32(-1f) * -1801f))), Struct_1(~vec3<i32>(2147483647i, var_2.d.a.x, u_input.b), func_1().b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b.yy)), vec2<u32>(global2.d.x, 1u), vec2<bool>(var_0, true)), false || (-154f != _wgslsmith_f_op_f32(step(1710f, 168f))), Struct_1(func_1().a, _wgslsmith_f_op_f32(-arg_1.d.c.x), global2.c, u_input.c.yz, !func_5(Struct_2(arg_1.a, var_2.b, global2.e.x, arg_1.b, var_2.e), global2.e).e), !global2.e), !func_5(arg_1, !vec2<bool>(global2.e.x, var_0)).e);
    let var_3 = !(!global2.e);
    return StorageBuffer(~vec2<u32>(_wgslsmith_mod_u32(max(43536u, global2.d.x), countOneBits(43859u)), _wgslsmith_mult_u32(~global2.d.x, 21718u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -1429f;
    var var_0 = global2.b;
    var_0 = -207f;
    let var_1 = 190f;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(929f, _wgslsmith_f_op_f32(global2.b * 1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + var_1))))) - -1093f);
    let var_2 = u_input.a & u_input.a;
    let x = u_input.a;
    s_output = func_6(-(i32(-1i) * -global2.a.x) >> (global2.d.x % 32u), Struct_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.b, _wgslsmith_f_op_f32(global2.c.x - var_1), -586f, global2.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-977f, -482f, 236f, 1000f), vec4<f32>(-517f, global2.c.x, global2.c.x, global1.b.x), vec4<bool>(false, global2.e.x, false, false))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, global1.b.x, global2.c.x, 1024f))))), func_5(Struct_2(vec4<f32>(-2138f, 1156f, var_1, 938f), func_1(), global2.e.x, Struct_1(global2.a, 303f, vec2<f32>(1160f, -293f), vec2<u32>(4294967295u, global2.d.x), vec2<bool>(global1.a, true)), !vec2<bool>(global1.a, false)), vec2<bool>(func_3().x, true)), true | any(vec4<bool>(false, false, true, true)), func_1(), vec2<bool>(true, true)));
}

