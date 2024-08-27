struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-798f, 568f, -644f, 664f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_2(7353u, Struct_1(vec3<bool>(true, select(arg_0.c.a.x, true, arg_2.d >= arg_2.b), _wgslsmith_f_op_f32(-arg_0.c.e.x) != _wgslsmith_f_op_f32(-global0.x)), countOneBits(_wgslsmith_sub_i32(1i, arg_2.b)), true, -(~_wgslsmith_mod_i32(-2147483647i, 15186i)), _wgslsmith_f_op_vec2_f32(arg_0.b.e * vec2<f32>(_wgslsmith_f_op_f32(round(global0.x)), global0.x))), Struct_1(!arg_0.c.a, 65889i, arg_2.a.x, ~(-min(20792i, arg_2.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(978f, _wgslsmith_f_op_f32(arg_0.b.e.x + 1000f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.e * vec2<f32>(554f, 1000f)), vec2<f32>(arg_2.e.x, arg_0.b.e.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.c.e.x, 2491f, -1392f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.e.x, 207f, -1000f, 2344f) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.e.x, arg_0.b.e.x, 721f, -1088f), vec4<f32>(global0.x, arg_0.b.e.x, 471f, arg_0.b.e.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-478f, -591f, arg_0.c.e.x, var_0.b.e.x) + vec4<f32>(global0.x, var_0.c.e.x, 1000f, arg_0.b.e.x))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f) - _wgslsmith_f_op_f32(f32(-1f) * -549f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.e.x - -700f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(533f)) - _wgslsmith_f_op_f32(-1063f + -2488f))))), _wgslsmith_f_op_f32(f32(-1f) * -1445f), -406f, -121f);
    var var_1 = select(select(vec2<bool>(var_0.b.a.x, arg_0.b.c), vec2<bool>(!var_0.b.a.x, arg_2.e.x == _wgslsmith_div_f32(global0.x, arg_2.e.x)), any(vec3<bool>(true, true, false || arg_0.c.c))), !select(var_0.b.a.xx, arg_0.c.a.zy, vec2<bool>(false, arg_0.c.c)), select(select(vec2<bool>(all(vec3<bool>(arg_2.c, arg_2.c, var_0.c.a.x)), false), !select(vec2<bool>(false, false), vec2<bool>(false, arg_2.c), vec2<bool>(var_0.b.a.x, false)), select(arg_2.a.yz, !vec2<bool>(arg_0.b.a.x, arg_2.c), select(vec2<bool>(false, false), arg_0.c.a.xx, true))), vec2<bool>(select(all(arg_0.c.a), true, true), false), !vec2<bool>(arg_2.a.x, true | arg_2.c)));
    let var_2 = select(~_wgslsmith_mult_vec2_i32(vec2<i32>(abs(var_0.c.d), _wgslsmith_div_i32(arg_2.b, -74612i)), vec2<i32>(_wgslsmith_clamp_i32(-1i, -2147483647i, -16405i), 21584i)), firstTrailingBit(vec2<i32>(-arg_0.c.d, 0i) << (_wgslsmith_div_vec2_u32(vec2<u32>(27017u, var_0.a), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), arg_1.xx)) % vec2<u32>(32u))), vec2<bool>(arg_0.b.c, var_0.c.a.x));
    return ~(~89578u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -267f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_2.e.x)))), _wgslsmith_f_op_f32(arg_0.e.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e.x - 733f) + _wgslsmith_div_f32(arg_1.b.e.x, arg_2.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e.x * _wgslsmith_f_op_f32(abs(arg_2.e.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1457f, arg_1.c.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.e.x + -584f)), _wgslsmith_f_op_f32(ceil(-641f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, arg_1.b.e.x, -178f, arg_1.c.e.x) * vec4<f32>(-493f, 1929f, global0.x, -385f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-175f, -739f, -1628f, 365f)))), true && select(false, true, arg_2.a.x)))));
    var var_0 = Struct_2(u_input.a.x & ~(~_wgslsmith_add_u32(11985u, arg_1.a)), Struct_1(!vec3<bool>(arg_2.c, all(vec4<bool>(true, false, arg_1.c.c, true)), arg_0.a.x), firstTrailingBit(-55133i), true, abs(arg_1.b.b) << (~_wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.a.x) % 32u), arg_2.e), Struct_1(arg_1.b.a, select(arg_1.b.b, -11864i, true), !arg_0.c, -1i, vec2<f32>(arg_1.c.e.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1424f))))));
    var var_1 = abs(vec3<u32>(arg_1.a, ~_wgslsmith_mod_u32(u_input.a.x, arg_1.a), abs(4294967295u) & ~var_0.a) >> (u_input.b % vec3<u32>(32u)));
    var var_2 = Struct_1(vec3<bool>(true, any(select(var_0.b.a, !arg_1.c.a, vec3<bool>(false, true, var_0.b.a.x))), ~firstLeadingBit(3857u) != (var_1.x ^ _wgslsmith_dot_vec2_u32(var_1.zx, vec2<u32>(1u, 4294967295u)))), arg_2.d, !all(select(!vec4<bool>(arg_1.c.c, false, true, false), !vec4<bool>(var_0.c.c, false, arg_0.a.x, arg_2.c), !vec4<bool>(arg_0.a.x, true, false, false))), 3598i, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(942f, var_0.c.e.x) + 1245f))), arg_1.c.e.x));
    return vec3<bool>(any(select(vec4<bool>(any(vec4<bool>(true, true, var_0.c.c, var_2.c)), any(vec4<bool>(false, false, false, var_2.a.x)), !arg_1.c.a.x, arg_2.e.x >= arg_0.e.x), vec4<bool>(var_2.a.x, true, true, true), all(vec2<bool>(var_2.a.x, false)))), !var_2.c, !(!all(!arg_0.a)));
}

fn func_2() -> f32 {
    let var_0 = !(!func_4(Struct_1(vec3<bool>(false, false, false), -68907i, true, -1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(1419f, -620f) + vec2<f32>(global0.x, global0.x))), Struct_2(func_3(Struct_2(u_input.b.x, Struct_1(vec3<bool>(true, false, false), 0i, true, -1i, vec2<f32>(179f, global0.x)), Struct_1(vec3<bool>(true, false, true), 1i, true, 20851i, global0.yw)), u_input.a, Struct_1(vec3<bool>(false, true, false), 0i, false, 30114i, vec2<f32>(global0.x, global0.x))), Struct_1(vec3<bool>(true, true, false), 44943i, false, -49952i, global0.xx), Struct_1(vec3<bool>(false, false, false), 0i, true, -2147483647i, vec2<f32>(global0.x, -1057f))), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), ~7440i, any(vec2<bool>(true, false)), -2147483647i, _wgslsmith_f_op_vec2_f32(global0.zw * vec2<f32>(global0.x, 199f))), 2147483647i));
    var var_1 = ~vec2<i32>(_wgslsmith_sub_i32(-2147483647i, ~2147483647i), 0i);
    var var_2 = ~u_input.b.x;
    let var_3 = var_0.x;
    var_2 = 30790u;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, global0.x)) - 1473f)))), func_4(Struct_1(!var_0, ~(~var_1.x), true, var_1.x, _wgslsmith_f_op_vec2_f32(global0.zz * global0.xy)), Struct_2(~(~u_input.b.x), Struct_1(func_4(Struct_1(vec3<bool>(var_3, true, var_3), -2147483647i, var_3, var_1.x, vec2<f32>(-990f, 409f)), Struct_2(u_input.b.x, Struct_1(vec3<bool>(var_0.x, true, false), 0i, false, -2147483647i, vec2<f32>(-1536f, global0.x)), Struct_1(var_0, 1i, false, -24106i, vec2<f32>(global0.x, global0.x))), Struct_1(vec3<bool>(false, var_3, true), -2147483647i, true, 1i, global0.yy), var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 2147483647i, var_1.x, var_1.x), vec4<i32>(86782i, var_1.x, var_1.x, -2147483647i)), -1228f <= global0.x, 3823i, global0.zz), Struct_1(!var_0, -var_1.x, var_3, select(var_1.x, 1i, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(835f, -1303f)))), Struct_1(var_0, -(~1i), false, var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global0.xy)))), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 1i), max(vec2<i32>(-15032i, var_1.x) ^ vec2<i32>(-6509i, -2147483647i), vec2<i32>(var_1.x, -58852i)))).x));
}

fn func_1() -> Struct_1 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * _wgslsmith_f_op_f32(trunc(global0.x))) + _wgslsmith_f_op_f32(func_2())) + 1f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, -614f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2())))))), 1505f, global0.x);
    let var_0 = Struct_2(17796u, Struct_1(vec3<bool>(true, true, true), 1i, false, _wgslsmith_div_i32(-62546i << (u_input.a.x % 32u), countOneBits(67545i)) | -22655i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(671f, 778f) - vec2<f32>(global0.x, global0.x)), global0.ww))))), Struct_1(vec3<bool>(true, true, true), 1i, !(all(vec4<bool>(true, false, true, true)) && true), -(~(-1i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.wz)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1194f) + global0.ww), _wgslsmith_f_op_vec2_f32(-global0.wy)), vec2<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(true, false)))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-705f, var_0.b.e.x, -527f, -396f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1620f, 1204f, var_0.b.e.x, var_0.c.e.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1269f, global0.x, -1413f)), !var_0.b.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.e.x, global0.x, var_0.b.e.x, -581f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1234f, global0.x, global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-991f, global0.x)), _wgslsmith_f_op_f32(var_0.c.e.x + global0.x))), -1070f, -1000f, global0.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-122f, 754f, 1034f, var_0.b.e.x)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.e.x, global0.x, -740f, 409f))))))));
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(var_0.c.e.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, 744f)) * global0.x)), global0.x);
    return Struct_1(!vec3<bool>(var_0.b.c, (4294967295u | var_0.a) == ~u_input.a.x, (var_0.b.c | var_0.b.c) & false), -(i32(-1i) * 0i), any(select(!vec4<bool>(true, var_0.b.c, var_0.b.c, var_0.c.a.x), vec4<bool>(true, var_0.c.a.x && true, true, true), false)), _wgslsmith_clamp_i32(1i, var_0.c.d << ((_wgslsmith_clamp_u32(1058u, u_input.a.x, var_0.a) << (~var_0.a % 32u)) % 32u), 1i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.c.e, _wgslsmith_f_op_vec2_f32(var_0.b.e - vec2<f32>(global0.x, 1192f)))) + var_0.c.e), _wgslsmith_f_op_vec2_f32(global0.wx - var_0.c.e), var_0.b.a.x)));
}

fn func_5(arg_0: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, global0.x, -667f, 2090f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1591f, arg_0.e.x, arg_0.e.x, 102f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, -154f, global0.x, arg_0.e.x))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1534f, 1000f, arg_0.e.x, global0.x) - vec4<f32>(arg_0.e.x, -597f, arg_0.e.x, global0.x))))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(max(global0.x, arg_0.e.x)))))), -1059f, 490f, 256f);
    let var_0 = _wgslsmith_sub_u32(1u & u_input.a.x, min(~(~u_input.a.x), u_input.a.x));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.x - arg_0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.e.x, arg_0.e.x))) - 178f)), -863f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-984f))));
    global0 = vec4<f32>(-909f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1257f, global0.x))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(global0.x + arg_0.e.x))), 2306f, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(432f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e.x + -1213f) + _wgslsmith_f_op_f32(arg_0.e.x * global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x)))), _wgslsmith_f_op_f32(trunc(global0.x)));
    return all(!select(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false), !(!vec4<bool>(arg_0.a.x, false, false, arg_0.c)), !vec4<bool>(arg_0.c, false, false, true)));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_2(30304u, Struct_1(vec3<bool>(!arg_0.c, any(select(vec4<bool>(arg_2, true, arg_0.c, false), vec4<bool>(arg_0.c, arg_2, true, true), vec4<bool>(arg_0.a.x, arg_0.a.x, false, true))), false), select(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, arg_0.b, 17244i, arg_0.d), vec4<i32>(0i, arg_0.b, 2147483647i, arg_0.b)), abs(62467i), true), !arg_2, -23074i, arg_0.e), arg_0);
    let var_1 = countOneBits(u_input.a.x ^ u_input.b.x);
    var var_2 = vec3<bool>(var_0.c.d > (_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_1, arg_0.b, arg_0.d), _wgslsmith_div_i32(var_0.c.d, 15650i)) >> (~23829u % 32u)), !arg_0.a.x, any(vec4<bool>(all(vec3<bool>(false, arg_0.c, var_0.b.a.x)), false, arg_0.a.x, true)));
    let var_3 = func_1().a;
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(446f, 1538f, arg_3, 1037f) + vec4<f32>(arg_0.e.x, var_0.c.e.x, -432f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -638f, arg_3, -196f))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_3), 2109f, -1765f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.e.x), 1715f, false))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, 1327f, 352f))))))));
    return Struct_2(_wgslsmith_add_u32(~10596u, var_1) ^ 31397u, func_1(), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), vec3<bool>(true, true, true), func_5(func_1())), 2046i, true & any(vec4<bool>(true, true, true, false)), _wgslsmith_dot_vec2_i32(-countOneBits(vec2<i32>(0i, 28880i)), vec2<i32>(-35777i, -5256i) << (u_input.b.zz % vec2<u32>(32u))), global0.yx), abs(min(countOneBits(58882i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 51831i, -1i, -2147483647i) >> (vec4<u32>(30922u, u_input.b.x, 61277u, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(2147483647i, 36131i, 0i, 16337i)))), true, _wgslsmith_f_op_f32(ceil(global0.x)));
    var var_1 = func_6(var_0.c, var_0.b.d, var_0.b.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1346f - var_0.b.e.x), _wgslsmith_f_op_f32(f32(-1f) * -310f)))), _wgslsmith_f_op_f32(global0.x + global0.x))));
    let var_2 = Struct_2(var_0.a, func_6(func_6(Struct_1(func_1().a, 1i, 38515u < var_0.a, var_1.b.b, _wgslsmith_f_op_vec2_f32(var_0.b.e * vec2<f32>(var_0.b.e.x, global0.x))), -30834i, var_0.b.c, _wgslsmith_f_op_f32(sign(1375f))).c, _wgslsmith_mult_i32(1672i, var_1.c.b), u_input.a.x <= 56384u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-141f * var_0.c.e.x)), _wgslsmith_f_op_f32(-global0.x))).c, var_0.b);
    var_1 = func_6(Struct_1(func_6(func_1(), 1i, countOneBits(var_1.c.d) >= var_0.c.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.b.e.x))))).b.a, var_2.c.d, any(vec2<bool>(var_0.b.c, any(var_2.c.a.yz))), var_0.b.b, vec2<f32>(1294f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1273f + var_1.b.e.x)))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(13667i >> (1u % 32u), var_2.b.b), 879i, firstLeadingBit(var_1.b.d)), _wgslsmith_sub_i32(-(7415i << (1u % 32u)), ~28811i)), true, 2869f);
    var var_3 = ~firstLeadingBit(vec2<i32>(20509i, var_2.b.b) >> (vec2<u32>(firstTrailingBit(var_0.a), func_3(var_2, vec3<u32>(var_2.a, var_2.a, var_1.a), var_0.b)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1041f, -1952f, 1144f, -697f))), vec4<f32>(-1086f, var_2.c.e.x, var_1.c.e.x, var_2.b.e.x)) - vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -159f), _wgslsmith_f_op_f32(abs(var_0.b.e.x)), 1f)) * vec4<f32>(func_1().e.x, global0.x, _wgslsmith_f_op_f32(max(var_2.c.e.x, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(139f + global0.x) - -269f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.c.e.x, var_1.b.e.x, 1172f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1952f, 140f, var_0.b.e.x, global0.x))), vec4<bool>(func_5(var_1.b), any(var_2.b.a), var_0.b.a.x, var_0.b.a.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(-189f)), _wgslsmith_f_op_f32(1000f * 2082f), 905f, _wgslsmith_f_op_f32(-var_0.c.e.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(745f, -337f, var_0.c.e.x, var_0.c.e.x), vec4<f32>(var_0.c.e.x, var_2.c.e.x, var_2.c.e.x, -107f), false)) + vec4<f32>(-1068f, global0.x, var_2.b.e.x, var_1.c.e.x))))), reverseBits(0u), max(-(~(-vec4<i32>(-5094i, 1i, var_0.b.d, var_2.c.d))), vec4<i32>(-44596i, 35856i, var_0.b.d, abs(1i))));
}

