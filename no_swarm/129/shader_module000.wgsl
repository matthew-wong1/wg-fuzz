struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1778f, -14678i, vec4<u32>(0u, 1u, 19853u, 1684u), vec4<f32>(-299f, -141f, -1250f, -539f), vec3<bool>(false, false, true)), 925f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = abs((-_wgslsmith_sub_vec2_i32(vec2<i32>(global0.a.b, global0.a.b), vec2<i32>(global0.a.b, -1i)) >> (~global0.a.c.ww % vec2<u32>(32u))) ^ vec2<i32>(i32(-1i) * -2147483647i, 8681i));
    let var_1 = vec3<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))) <= 126f, all(vec4<bool>(any(global0.a.e), global0.a.e.x, global0.a.e.x, true)));
    var var_2 = global0.a;
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(-global0.a.a));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(global0.a.d.x)), _wgslsmith_clamp_i32(var_2.b, -var_0.x, -_wgslsmith_clamp_i32(10712i, -47031i, global0.a.b)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0.a.c.x, var_2.c.x, global0.a.c.x), vec4<u32>(u_input.a.x, var_2.c.x, 60794u, u_input.a.x)) & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(var_2.c.x, 4294967295u)), 0u, min(~var_2.c.x, 1u), _wgslsmith_mult_u32(1u, countOneBits(global0.a.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1401f, -122f, -542f, -201f)))), global0.a.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1391f - 691f), -684f) * var_2.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a), -1102f)))));
    return arg_0;
}

fn func_2() -> f32 {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(global0.a.d.x)), -1i, _wgslsmith_add_vec4_u32(vec4<u32>(0u << (global0.a.c.x % 32u), ~u_input.a.x, global0.a.c.x, 4294967295u), ~(vec4<u32>(global0.a.c.x, global0.a.c.x, u_input.a.x, u_input.a.x) & global0.a.c)), _wgslsmith_f_op_vec4_f32(global0.a.d * global0.a.d), vec3<bool>(true, !global0.a.e.x & !global0.a.e.x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1046f + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(max(global0.a.d.x, global0.b))))), _wgslsmith_f_op_f32(exp2(global0.a.a))));
    let var_0 = Struct_2(Struct_1(global0.a.a, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.a.b, global0.a.b), vec2<i32>(43458i, global0.a.b)) >> (vec2<u32>(u_input.a.x, 13217u) % vec2<u32>(32u)), abs(select(vec2<i32>(18008i, -42537i), vec2<i32>(global0.a.b, global0.a.b), global0.a.e.xx))), vec4<u32>(43975u, u_input.a.x, 38447u | _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), _wgslsmith_sub_u32(max(20262u, u_input.a.x), 0u)), global0.a.d, global0.a.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(459f, 1623f)))));
    let var_1 = global0.a;
    var var_2 = global0.a.d;
    global0 = var_0;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -454f), 1f);
}

fn func_4(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = firstLeadingBit(select(vec2<i32>(_wgslsmith_sub_i32(abs(arg_0.a.b), -1i), global0.a.b), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2020i, global0.a.b), vec2<i32>(-1i, -1i)), vec2<i32>(-2147483647i, arg_0.a.b), abs(vec2<i32>(global0.a.b, global0.a.b))) | (-vec2<i32>(2147483647i, 29062i) ^ firstLeadingBit(vec2<i32>(global0.a.b, 2147483647i))), false));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b)))) - -733f), 449f);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), -4611i, ~(_wgslsmith_add_vec4_u32(u_input.a, u_input.a) << ((arg_0.a.c >> (vec4<u32>(u_input.a.x, global0.a.c.x, 29363u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1324f, global0.a.a, arg_0.b, var_1.x)))), arg_0.a.d), select(vec3<bool>(select(false, global0.a.e.x, arg_0.a.e.x), arg_0.a.e.x, global0.a.e.x), select(!arg_0.a.e, select(global0.a.e, vec3<bool>(arg_0.a.e.x, true, global0.a.e.x), false), !vec3<bool>(global0.a.e.x, false, arg_0.a.e.x)), !(!vec3<bool>(arg_0.a.e.x, true, global0.a.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-577f + _wgslsmith_f_op_f32(-arg_0.b)))));
    global0 = arg_0;
    var var_2 = arg_0;
    return vec2<i32>(-2147483647i, -2147483647i);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = reverseBits(((-vec4<i32>(arg_0.b, 559i, arg_1.x, global0.a.b) | _wgslsmith_div_vec4_i32(vec4<i32>(global0.a.b, -15666i, arg_1.x, arg_1.x), vec4<i32>(-76521i, arg_1.x, arg_1.x, 33680i))) & abs(vec4<i32>(arg_1.x, arg_0.b, global0.a.b, arg_0.b))) ^ _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(31987i, global0.a.b, arg_0.b, -2147483647i), vec4<i32>(13622i, arg_0.b, -22992i, arg_1.x)), vec4<i32>(arg_0.b, arg_1.x, 48809i, 21819i)), min(vec4<i32>(arg_1.x, 2147483647i, global0.a.b, global0.a.b), ~vec4<i32>(global0.a.b, 11326i, global0.a.b, -1i))));
    var var_1 = Struct_2(global0.a, arg_0.d.x);
    let var_2 = !(!select(vec4<bool>(global0.a.e.x, true, var_1.a.e.x, arg_0.e.x), select(vec4<bool>(true, true, arg_0.e.x, false), !vec4<bool>(false, true, global0.a.e.x, arg_0.e.x), arg_0.e.x), any(!vec4<bool>(arg_0.e.x, true, arg_0.e.x, global0.a.e.x))));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -133f), var_1.a.b, vec4<u32>(arg_0.c.x, select(var_1.a.c.x, 0u, false) | u_input.a.x, global0.a.c.x, _wgslsmith_dot_vec4_u32(var_1.a.c, vec4<u32>(1u, 1u, global0.a.c.x, 4294967295u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2264f, arg_0.a, arg_0.d.x, var_1.b)))), !var_1.a.e), _wgslsmith_f_op_f32(min(-111f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(765f - arg_0.a))))))));
    let var_3 = global0.a;
    return Struct_2(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-618f + var_1.a.a)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1669f), -705f)))));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    global0 = func_5(global0.a, ~func_4(Struct_2(Struct_1(-826f, global0.a.b, global0.a.c, global0.a.d, vec3<bool>(global0.a.e.x, global0.a.e.x, false)), _wgslsmith_f_op_f32(func_2()))));
    let var_0 = all(vec4<bool>(false, select(select(global0.a.e.x & global0.a.e.x, !global0.a.e.x, all(vec3<bool>(false, global0.a.e.x, true))), global0.a.e.x, !all(vec3<bool>(false, true, global0.a.e.x))), false, !any(global0.a.e)));
    let var_1 = _wgslsmith_div_vec2_i32(~(-_wgslsmith_add_vec2_i32(~vec2<i32>(5791i, global0.a.b), vec2<i32>(global0.a.b, global0.a.b))), select(vec2<i32>(global0.a.b >> (u_input.a.x % 32u), func_4(Struct_2(Struct_1(164f, 19484i, global0.a.c, arg_0, global0.a.e), global0.a.a)).x), _wgslsmith_div_vec2_i32(max(vec2<i32>(-1i, global0.a.b), vec2<i32>(global0.a.b, -2147483647i)), firstTrailingBit(vec2<i32>(global0.a.b, global0.a.b))), false) & func_4(Struct_2(global0.a, _wgslsmith_f_op_f32(max(-1623f, arg_0.x)))));
    global0 = Struct_2(func_5(Struct_1(_wgslsmith_f_op_f32(min(global0.a.a, _wgslsmith_f_op_f32(trunc(-663f)))), countOneBits(1i), vec4<u32>(18285u, reverseBits(global0.a.c.x), global0.a.c.x, 192367u), _wgslsmith_f_op_vec4_f32(abs(global0.a.d)), vec3<bool>(any(vec3<bool>(global0.a.e.x, var_0, global0.a.e.x)), true, global0.a.e.x | true)), func_4(func_5(func_5(Struct_1(460f, 1i, vec4<u32>(41546u, global0.a.c.x, 10362u, global0.a.c.x), arg_0, global0.a.e), vec2<i32>(var_1.x, var_1.x)).a, func_4(Struct_2(global0.a, -137f))))).a, arg_0.x);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.x), global0.a.b, u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.a.a, global0.b), _wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(-global0.b), -1565f)), select(select(global0.a.e, !global0.a.e, vec3<bool>(global0.a.e.x, true, global0.a.e.x)), !select(global0.a.e, vec3<bool>(var_0, false, var_0), global0.a.e), true)), global0.b);
    return global0.a.c.x;
}

fn func_6(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1093f));
    global0 = Struct_2(global0.a, global0.a.d.x);
    return func_5(Struct_1(_wgslsmith_f_op_f32(-global0.a.d.x), arg_0.x, u_input.a >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.c.x, global0.a.c.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, arg_1, arg_1)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a.a), -442f, global0.a.d.x, -229f)), vec3<bool>(global0.a.e.x, false, true)), firstLeadingBit(min(~arg_0.wx, select(vec2<i32>(-16640i, arg_0.x), arg_0.xw, false))) & countOneBits(-(vec2<i32>(arg_0.x, arg_0.x) ^ arg_0.wz))).a;
}

fn func_7(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec2<u32>(max(u_input.a.x, _wgslsmith_clamp_u32(0u, ~1u | _wgslsmith_clamp_u32(u_input.a.x, global0.a.c.x, arg_0), u_input.a.x)), ~arg_0);
    var_0 = _wgslsmith_add_vec2_u32(global0.a.c.ww, ~abs(global0.a.c.yy));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.b, _wgslsmith_f_op_f32(round(global0.b)), _wgslsmith_f_op_f32(1f * -276f))))));
    let var_2 = !arg_1.e.x;
    global0 = func_5(arg_1, firstTrailingBit(func_4(func_5(global0.a, ~vec2<i32>(arg_1.b, -1i)))));
    return Struct_2(arg_1, arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(global0.a.c.x, ~global0.a.c.x)), func_6(select(vec4<i32>(global0.a.b | -2147483647i, -1i, select(global0.a.b, global0.a.b, global0.a.e.x), global0.a.b >> (1u % 32u)), -vec4<i32>(0i, 10463i, global0.a.b, 52063i) | vec4<i32>(-2147483647i, -46988i, global0.a.b, global0.a.b), select(!vec4<bool>(true, false, global0.a.e.x, false), select(vec4<bool>(global0.a.e.x, true, global0.a.e.x, global0.a.e.x), vec4<bool>(true, global0.a.e.x, global0.a.e.x, false), global0.a.e.x), global0.a.e.x)), ~(4294967295u >> (func_1(vec4<f32>(-160f, -729f, -1106f, 130f)) % 32u))));
    global0 = Struct_2(global0.a, global0.b);
    var var_0 = func_7(~countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(global0.a.c, global0.a.c), vec4<u32>(57867u, u_input.a.x, u_input.a.x, 1u))), func_6(select(abs(select(vec4<i32>(1i, 1i, -7804i, 1i), vec4<i32>(1i, 0i, 0i, 46377i), vec4<bool>(false, global0.a.e.x, global0.a.e.x, true))), vec4<i32>(_wgslsmith_mult_i32(global0.a.b, -2147483647i), firstLeadingBit(0i), _wgslsmith_mod_i32(-1i, global0.a.b), _wgslsmith_div_i32(global0.a.b, 0i)), (-1039f == global0.a.a) | true), u_input.a.x)).a;
    var var_1 = true;
    var var_2 = select(vec4<u32>(_wgslsmith_dot_vec3_u32(max(func_5(global0.a, vec2<i32>(0i, 42776i)).a.c.wzx, _wgslsmith_mult_vec3_u32(var_0.c.xyx, vec3<u32>(38224u, global0.a.c.x, 27185u))), firstLeadingBit(vec3<u32>(u_input.a.x, var_0.c.x, global0.a.c.x)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, var_0.c.x, 1u), var_0.c.yzy) % vec3<u32>(32u))), firstTrailingBit(u_input.a.x), reverseBits(4294967295u), 38211u), max(reverseBits(vec4<u32>(_wgslsmith_div_u32(0u, var_0.c.x), abs(var_0.c.x), var_0.c.x, _wgslsmith_mult_u32(63117u, 27006u))), _wgslsmith_div_vec4_u32(~firstTrailingBit(vec4<u32>(25827u, u_input.a.x, var_0.c.x, u_input.a.x)), max(var_0.c, vec4<u32>(55040u, 55462u, global0.a.c.x, 24350u)) >> (vec4<u32>(27377u, u_input.a.x, global0.a.c.x, global0.a.c.x) % vec4<u32>(32u)))), false);
    let var_3 = firstTrailingBit(vec4<i32>(-(~13116i), -12706i, global0.a.b << ((u_input.a.x | var_0.c.x) % 32u), 1i));
    var var_4 = 29991u;
    var var_5 = firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(77796u, 2273u, ~u_input.a.x, _wgslsmith_div_u32(~var_2.x, ~var_2.x)), vec4<u32>(1u, 4294967295u, ~(~13244u), func_6(firstLeadingBit(vec4<i32>(global0.a.b, 9986i, var_3.x, -12272i)), abs(67696u)).c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-195f + -1146f));
}

