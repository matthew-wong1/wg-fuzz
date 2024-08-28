struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<i32> {
    let var_0 = !select(select(select(vec4<bool>(false, false, global0.c.b.a, global0.c.c.a), vec4<bool>(true, true, false, global0.c.c.a), select(vec4<bool>(false, false, global0.c.b.a, global0.a.a), vec4<bool>(global0.c.c.a, true, true, true), true)), select(!vec4<bool>(global0.a.a, global0.c.c.a, false, true), vec4<bool>(global0.a.a, true, false, global0.a.a), global0.a.a), all(select(vec2<bool>(true, global0.a.a), vec2<bool>(global0.c.c.a, true), global0.c.c.a))), !select(select(vec4<bool>(false, false, global0.a.a, global0.a.a), vec4<bool>(global0.c.b.a, global0.a.a, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(global0.c.c.a, false, global0.c.b.a, false), vec4<bool>(global0.a.a, false, global0.a.a, true), global0.c.b.a), global0.a.a), true);
    global0 = Struct_4(Struct_1(global0.c.b.a, select(~vec4<i32>(-1i, -742i, -50356i, global0.a.b.x), vec4<i32>(-8755i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.b.b.x, global0.c.b.b.x), vec2<i32>(67003i, global0.a.b.x)), i32(-1i) * -13676i, 1i), vec4<bool>(any(vec4<bool>(global0.c.b.a, global0.c.b.a, false, var_0.x)), global0.c.c.a | global0.a.a, var_0.x, true))), ~global0.b, global0.c);
    global0 = Struct_4(global0.a, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(global0.b, vec4<u32>(u_input.a.x ^ u_input.a.x, select(4294967295u, u_input.a.x, true), _wgslsmith_mod_u32(global0.c.a, 0u), global0.c.a)), global0.b), Struct_2(0u, Struct_1(true, global0.a.b), global0.a, 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.c.e.x, 405f), vec2<f32>(global0.c.e.x, global0.c.e.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.e.x, 405f)))) * global0.c.e)));
    var var_1 = abs(min(global0.c.b.b.yyz, global0.a.b.zzz));
    global0 = Struct_4(Struct_1(false, select(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(global0.c.c.b, vec4<i32>(16434i, global0.c.d, var_1.x, global0.c.c.b.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.c.c.b.x, global0.c.b.b.x, -26254i, global0.a.b.x), vec4<i32>(-45683i, 3273i, global0.c.c.b.x, 76750i))), vec4<i32>(-2147483647i, 31149i, global0.a.b.x << (19143u % 32u), -var_1.x), !(!vec4<bool>(true, var_0.x, false, global0.a.a)))), vec4<u32>(global0.b.x, firstLeadingBit(~firstTrailingBit(104861u)), 21673u >> (~_wgslsmith_sub_u32(u_input.a.x, 0u) % 32u), global0.c.a), Struct_2(1u, global0.c.c, global0.a, -_wgslsmith_dot_vec3_i32(firstTrailingBit(global0.c.b.b.xyz), vec3<i32>(var_1.x, 17296i, global0.c.b.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.e)))));
    return select(abs(_wgslsmith_add_vec4_i32(abs(global0.c.c.b), vec4<i32>(-17036i, -28387i, var_1.x, -7833i) & global0.a.b)), -vec4<i32>(3108i & var_1.x, 0i, -9110i, _wgslsmith_dot_vec4_i32(vec4<i32>(5180i, 0i, -21312i, 1i), vec4<i32>(var_1.x, 1i, var_1.x, -23240i))), var_0) ^ _wgslsmith_mod_vec4_i32(-(global0.c.c.b >> ((global0.b >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4653u) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<i32>(global0.a.b.x, -(~31461i), reverseBits(2147483647i), _wgslsmith_mod_i32(17725i, 33497i)));
}

fn func_2() -> Struct_3 {
    global0 = Struct_4(Struct_1(true != (global0.c.c.a != true), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(global0.c.b.b.x, 0i, 1i, global0.c.b.b.x), global0.a.b)), ~_wgslsmith_clamp_vec4_u32(global0.b, _wgslsmith_mult_vec4_u32(vec4<u32>(9904u, u_input.a.x, 4294967295u, 7780u), vec4<u32>(77702u, 4294967295u, 9830u, 0u)), vec4<u32>(79048u, 806u, global0.c.a, 0u)) >> (reverseBits(~vec4<u32>(global0.c.a, 1u, u_input.a.x, global0.c.a)) % vec4<u32>(32u)), Struct_2(~u_input.a.x, global0.a, global0.c.b, -(_wgslsmith_sub_i32(-1i, global0.c.b.b.x) | global0.a.b.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1196f, global0.c.e.x), vec2<f32>(597f, global0.c.e.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.e.x, -145f)))))));
    var var_0 = abs(_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(global0.b.xz, vec2<u32>(u_input.a.x, 4120u)), u_input.a.zz));
    var_0 = select(u_input.a.yx, u_input.a.zx, false);
    var var_1 = vec4<u32>(1u, _wgslsmith_clamp_u32(30171u, _wgslsmith_sub_u32(_wgslsmith_div_u32(global0.c.a, global0.c.a), _wgslsmith_mod_u32(u_input.a.x, global0.b.x)), 7531u) >> (var_0.x % 32u), min(global0.b.x, _wgslsmith_dot_vec2_u32(select(u_input.a.xz, u_input.a.yx << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), vec2<bool>(true, global0.a.a)), ~vec2<u32>(5535u, u_input.a.x))), global0.c.a);
    let var_2 = Struct_3(Struct_2(79989u, global0.c.b, Struct_1(true, _wgslsmith_mod_vec4_i32(func_3(), min(vec4<i32>(global0.c.b.b.x, 31028i, 1i, global0.a.b.x), global0.a.b))), 0i, global0.c.e), Struct_2(u_input.a.x, global0.c.b, Struct_1(true, vec4<i32>(-1i, ~0i, global0.c.b.b.x & global0.c.b.b.x, -global0.a.b.x)), global0.a.b.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global0.c.e.x * global0.c.e.x), _wgslsmith_f_op_f32(global0.c.e.x * 283f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-668f, -607f)), select(vec2<bool>(global0.c.c.a, false), vec2<bool>(true, true), true)))));
    return Struct_3(Struct_2(0u, Struct_1(_wgslsmith_f_op_f32(select(var_2.b.e.x, -763f, global0.a.a)) <= 459f, global0.c.b.b), Struct_1(global0.a.a, _wgslsmith_div_vec4_i32(global0.c.b.b, vec4<i32>(var_2.a.b.b.x, global0.a.b.x, var_2.b.c.b.x, -73041i)) << (~vec4<u32>(0u, 0u, var_1.x, var_0.x) % vec4<u32>(32u))), -(-global0.c.c.b.x ^ -2147483647i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-641f, global0.c.e.x))), _wgslsmith_div_vec2_f32(vec2<f32>(global0.c.e.x, var_2.b.e.x), _wgslsmith_f_op_vec2_f32(abs(var_2.a.e))), -1099f <= _wgslsmith_f_op_f32(var_2.b.e.x * var_2.a.e.x)))), Struct_2(0u, var_2.a.b, global0.a, i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2164f, -2066f))))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<bool>) -> vec4<f32> {
    global0 = arg_1;
    global0 = Struct_4(Struct_1(!arg_0.b.b.a, vec4<i32>(firstLeadingBit(_wgslsmith_clamp_i32(2147483647i, -38594i, arg_0.b.c.b.x)), 33025i, 0i, func_2().a.b.b.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(20580u, 1u), 0u, arg_0.a.a), select(arg_1.b, ~vec4<u32>(0u, u_input.a.x, 4294967295u, 53421u), true | arg_0.a.c.a)) | arg_1.b, Struct_2(_wgslsmith_div_u32(global0.b.x, 19425u), func_2().b.b, func_2().b.b, ~42647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1398f, arg_0.b.e.x) - arg_1.c.e) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.e.x, arg_1.c.e.x))))));
    let var_0 = u_input.a.xy;
    let var_1 = true;
    global0 = arg_1;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.c.e.x, true || !arg_0.a.c.a)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -1551f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(288f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.c.e.x), _wgslsmith_f_op_f32(round(arg_0.a.e.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.e.x + _wgslsmith_f_op_f32(-2742f * -1022f)) + arg_1.c.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * func_2().a.e.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = !vec3<bool>(true, !(global0.a.b.x != -global0.c.c.b.x), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1798f, global0.c.e.x, -1598f, 560f) - vec4<f32>(global0.c.e.x, global0.c.e.x, global0.c.e.x, -892f)) + vec4<f32>(264f, 136f, global0.c.e.x, global0.c.e.x))), vec4<f32>(806f, _wgslsmith_f_op_f32(max(1479f, -2040f)), -230f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1857f + global0.c.e.x)))))), _wgslsmith_f_op_vec4_f32(func_4(func_2(), Struct_4(func_2().b.b, ~(global0.b >> (vec4<u32>(25037u, 842u, u_input.a.x, 29810u) % vec4<u32>(32u))), Struct_2(firstTrailingBit(1u), Struct_1(false, vec4<i32>(-40132i, 32614i, -2147483647i, global0.a.b.x)), func_2().a.c, ~21751i, _wgslsmith_f_op_vec2_f32(global0.c.e - vec2<f32>(global0.c.e.x, global0.c.e.x)))), var_0)), any(select(!(!vec3<bool>(false, var_0.x, false)), vec3<bool>(!global0.c.c.a, all(var_0), any(vec3<bool>(true, true, true))), max(global0.a.b.x, 0i) <= global0.c.b.b.x))));
    return func_2().a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(func_1(), abs(reverseBits(~global0.b)), Struct_2(_wgslsmith_div_u32(_wgslsmith_add_u32(~4930u, ~global0.b.x), u_input.a.x), Struct_1(true, _wgslsmith_clamp_vec4_i32(global0.c.b.b, global0.c.c.b, vec4<i32>(-37028i, -3796i, global0.c.d, global0.c.d) ^ global0.a.b)), global0.a, _wgslsmith_sub_i32(1i, 23062i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(370f, global0.c.e.x), _wgslsmith_f_op_f32(-global0.c.e.x)), vec2<f32>(-630f, global0.c.e.x)))));
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.e.x, 693f, global0.c.e.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.e.x, global0.c.e.x, global0.c.e.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.e.x, -1000f, -996f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1570f, global0.c.e.x, global0.c.e.x)))))));
    var var_1 = global0.a.b.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(484f, global0.c.e.x, -783f, global0.c.e.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 2624f, var_0.x, -686f) - vec4<f32>(var_0.x, var_0.x, 1753f, global0.c.e.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.e.x, -224f, var_0.x, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -158f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c.e.x), _wgslsmith_f_op_f32(step(global0.c.e.x, -771f)))), global0.c.e.x, _wgslsmith_f_op_f32(max(var_0.x, 1000f)))))));
    var var_3 = vec3<i32>(global0.a.b.x, global0.c.b.b.x, _wgslsmith_add_i32(~select(0i, -47748i, true), 1i));
    let var_4 = !vec4<bool>(all(vec4<bool>(true, true, !global0.c.c.a, true)), true, global0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x))) <= global0.c.e.x);
    let var_5 = ~global0.c.b.b.x;
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1088f) + 281f) - _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(global0.c, global0.c), Struct_4(global0.c.c, vec4<u32>(4199u, global0.b.x, u_input.a.x, global0.c.a), global0.c), vec3<bool>(global0.c.c.a, false, var_4.x))).x, _wgslsmith_f_op_f32(f32(-1f) * -406f))) * var_2.x));
    var_1 = 18083i;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

