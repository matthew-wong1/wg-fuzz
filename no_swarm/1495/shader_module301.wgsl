struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: Struct_1,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
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

var<private> global0: vec4<f32>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> f32 {
    var var_0 = select(!(!global1.zwz), vec3<bool>(!(!(global1.x != global1.x)), any(vec4<bool>(true, true, true, true)), !global1.x), vec3<bool>(global1.x, !(!(!global1.x)), !global1.x));
    return _wgslsmith_div_f32(arg_3.x, arg_3.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<bool>) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-969f, _wgslsmith_f_op_f32(f32(-1f) * -1397f)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -345f)), _wgslsmith_f_op_f32(round(-483f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(20124i, -2147483647i, u_input.c.x, 1i), arg_0.b.x, reverseBits(vec3<i32>(arg_0.c.a.x, 1i, arg_0.a)), vec2<f32>(-914f, global0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), -312f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1048f) - arg_0.c.b)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, 1267f, global0.x), vec4<f32>(global0.x, 1000f, global0.x, -941f), vec4<bool>(true, arg_2, true, false))))))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x * global0.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - arg_0.d.d.x))));
    global1 = select(select(select(vec4<bool>(true, global1.x || false, true, !arg_3.x), select(!vec4<bool>(arg_3.x, arg_2, true, global1.x), vec4<bool>(arg_3.x, arg_3.x, false, true), !vec4<bool>(arg_2, arg_3.x, global1.x, global1.x)), vec4<bool>(arg_2, !arg_3.x, arg_3.x & arg_3.x, true)), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(global1.x, false, false, false))), false & arg_3.x), select(vec4<bool>(true, all(!vec4<bool>(true, arg_2, arg_2, false)), (arg_0.d.a.x << (18851u % 32u)) == ~(-5343i), false), vec4<bool>(_wgslsmith_f_op_f32(exp2(global0.x)) != arg_0.d.d.x, select(global1.x, !global1.x, true & arg_2), 5229i <= -u_input.a.x, global1.x), !select(vec4<bool>(global1.x, true, false, arg_3.x), vec4<bool>(arg_3.x, arg_2, global1.x, arg_2), !vec4<bool>(false, true, true, arg_2))), vec4<bool>(!global1.x, arg_2 && ((arg_0.b.x | 14537u) < ~15553u), false && (_wgslsmith_f_op_f32(floor(global0.x)) == _wgslsmith_f_op_f32(-global0.x)), !any(select(vec4<bool>(global1.x, global1.x, arg_2, false), vec4<bool>(arg_3.x, false, false, true), arg_2))));
    let var_1 = Struct_3(arg_0.c.a.x, arg_0.d.d.x, arg_0.d.c);
    return Struct_3(abs(_wgslsmith_clamp_i32(var_1.a, abs(abs(arg_0.d.a.x)), var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-960f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-966f))) - -614f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> vec4<bool> {
    return vec4<bool>(global1.x, global1.x, !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -761f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.c.b, 461f, global1.x)))), true);
}

fn func_1() -> Struct_1 {
    global1 = !select(!vec4<bool>(388f <= global0.x, global1.x || true, any(global1.yyz), global1.x == global1.x), vec4<bool>(any(!global1.zz), any(vec4<bool>(false, false, global1.x, global1.x)), all(select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), global1.x)), global1.x), true);
    let var_0 = 989f;
    let var_1 = -1276f;
    global1 = select(!(!vec4<bool>(global1.x, !global1.x, global1.x, false)), select(!select(!vec4<bool>(false, global1.x, global1.x, global1.x), select(vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(true, global1.x, true, global1.x), global1.x), vec4<bool>(false, global1.x, true, global1.x)), select(vec4<bool>(any(global1.zz), global1.x, true, true), !vec4<bool>(true, global1.x, global1.x, global1.x), select(!vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(true, false, true, global1.x), vec4<bool>(global1.x, true, global1.x, false))), select(func_4(Struct_2(u_input.a.x, vec2<u32>(u_input.d, 93210u), Struct_1(u_input.a.xw, var_1, global0.x, global0.zw), Struct_1(u_input.e.zz, global0.x, var_1, global0.yz)), func_2(Struct_2(-1i, u_input.b, Struct_1(u_input.e.zy, 1196f, 325f, vec2<f32>(1556f, global0.x)), Struct_1(u_input.c.xz, var_0, -292f, global0.yz)), vec4<u32>(83487u, 4294967295u, u_input.d, u_input.d), false, vec3<bool>(global1.x, false, false)), Struct_1(vec2<i32>(-17482i, u_input.a.x), var_1, -991f, global0.xz)), !(!vec4<bool>(global1.x, true, false, false)), any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)) & global1.x)), (-900f == _wgslsmith_f_op_f32(round(global0.x))) && select(global1.x, true, all(func_4(Struct_2(0i, u_input.b, Struct_1(vec2<i32>(u_input.a.x, -2147483647i), var_1, var_0, vec2<f32>(1688f, global0.x)), Struct_1(vec2<i32>(1i, 2147483647i), var_0, var_1, global0.zw)), Struct_3(u_input.a.x, 518f, -469f), Struct_1(vec2<i32>(43953i, 13258i), 201f, 1000f, global0.yx)).xwy)));
    let var_2 = Struct_5(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x + -1471f)), Struct_4(!(-1i < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.c.x, -1i), vec3<i32>(-1i, -54151i, u_input.a.x)))), Struct_1(firstLeadingBit(select(vec2<i32>(u_input.c.x, u_input.c.x) ^ vec2<i32>(u_input.c.x, -8395i), u_input.e.yx, !global1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), 350f)), _wgslsmith_div_f32(345f, -717f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1279f, var_0)), _wgslsmith_f_op_vec2_f32(max(global0.ww, global0.zz)))))), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, _wgslsmith_clamp_u32(0u, 12440u, 0u), ~4294967295u), min(~vec3<u32>(u_input.d, 4294967295u, u_input.b.x), abs(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)))), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b.x, 31933u), vec3<u32>(u_input.b.x, 0u, u_input.d)) >> (min(vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(33251u, 1372u, u_input.b.x)) % vec3<u32>(32u)))), firstTrailingBit(countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(7801u, u_input.b.x, 44948u) % vec3<u32>(32u)))) >> (~vec3<u32>(~1u, ~u_input.b.x, 4294967295u) % vec3<u32>(32u)));
    return Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(~_wgslsmith_div_i32(-31194i, var_2.e.x), _wgslsmith_clamp_i32(-41677i, u_input.c.x, firstTrailingBit(-2147483647i))), vec2<i32>(u_input.a.x ^ _wgslsmith_mult_i32(var_2.c.a.x, u_input.c.x), _wgslsmith_add_i32(-var_2.e.x, ~24142i)), -_wgslsmith_mod_vec2_i32(vec2<i32>(17106i, 0i), u_input.c.xy)), var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 916f)) * vec2<f32>(var_2.c.c, 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.c.d - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -722f) + var_2.c.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(21196i, 2147483647i), global0.x, global0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(907f - 2129f), _wgslsmith_f_op_f32(ceil(-601f))) + vec2<f32>(_wgslsmith_f_op_f32(-232f - -539f), -743f)) + global0.wz));
    var_0 = func_1();
    let var_1 = func_2(Struct_2(1i, firstLeadingBit(vec2<u32>(u_input.b.x, u_input.d ^ u_input.b.x)), func_1(), Struct_1(-(~vec2<i32>(u_input.e.x, -25626i)), _wgslsmith_div_f32(-210f, _wgslsmith_f_op_f32(round(-2286f))), -1275f, var_0.d)), reverseBits(vec4<u32>(u_input.b.x << (abs(41390u) % 32u), _wgslsmith_mult_u32(min(1u, u_input.d), ~u_input.d), u_input.b.x, countOneBits(71787u))), func_4(Struct_2(u_input.e.x, u_input.b, Struct_1(max(vec2<i32>(2147483647i, 1702i), vec2<i32>(21511i, 0i)), _wgslsmith_f_op_f32(trunc(496f)), global0.x, var_0.d), func_1()), Struct_3(2147483647i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-var_0.d.x))), Struct_1(-_wgslsmith_div_vec2_i32(vec2<i32>(-56641i, var_0.a.x), vec2<i32>(0i, var_0.a.x)), _wgslsmith_f_op_f32(max(global0.x, var_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -727f) - -296f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.d))))).x, global1.zzy);
    var_0 = func_1();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) - -233f));
}

