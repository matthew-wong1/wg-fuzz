struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_sub_u32(~reverseBits(_wgslsmith_clamp_u32(4952u >> (arg_0 % 32u), 1u, arg_2.a.c.x & arg_3.a.x)), 127059u);
    let var_1 = Struct_5(arg_3.b, 610f > _wgslsmith_f_op_f32(select(global0.e, 680f, true)));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-898f, _wgslsmith_f_op_f32(-arg_2.a.e)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.a.e + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_2.a.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1491f + arg_3.e) - global0.e)), !(!(!arg_2.a.b.x))))));
    var_2 = _wgslsmith_f_op_f32(global0.e - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global0.d.e)), global0.d.e)));
    global0 = Struct_2(true, global0.b, arg_2.a.b.x, Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.yy, vec2<u32>(arg_3.c.x, 4294967295u), arg_3.a), firstTrailingBit(vec2<u32>(15498u, 1u)) | select(vec2<u32>(u_input.b.x, arg_3.c.x), vec2<u32>(u_input.b.x, arg_3.c.x), vec2<bool>(arg_1.x, global0.a))), arg_1.xx, arg_3.c, u_input.c, arg_2.a.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))));
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(sign(-1163f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1470f))), _wgslsmith_f_op_f32(f32(-1f) * -862f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.e)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.a.e, global0.d.e, arg_3.e, 1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(268f, 499f, arg_2.a.e, global0.e))))))));
}

fn func_4(arg_0: vec4<f32>) -> u32 {
    global0 = Struct_2(true, global0.d, global0.c, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * -458f))), all(vec4<bool>(global0.a, global0.c, global0.b.b.x, false))))));
    let var_0 = firstTrailingBit(-20789i);
    var var_1 = vec3<u32>(abs(global0.d.c.x), _wgslsmith_mod_u32(max(u_input.d, global0.b.a.x | u_input.d), select(min(1u, 1u), 59962u, true)) >> (abs(global0.d.c.x) % 32u), 0u);
    var var_2 = _wgslsmith_add_vec3_u32(~abs(u_input.b), reverseBits(u_input.b));
    let var_3 = vec2<bool>(global0.a, false);
    return _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(u_input.b.x, (18110u >> (0u % 32u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(35004u, 0u), var_1.xy)), abs(abs(var_1.x)) >> (var_1.x % 32u), global0.d.a.x);
}

fn func_2(arg_0: Struct_5) -> i32 {
    let var_0 = vec4<u32>(func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(countOneBits(u_input.b.x), vec3<bool>(arg_0.a.x, global0.d.b.x, false), Struct_4(global0.d), Struct_1(global0.b.c, vec2<bool>(global0.a, false), global0.b.c, global0.d.d, -1398f)))))), select(abs(max(select(global0.d.c.x, 27025u, false), 1u)), select(global0.d.a.x, _wgslsmith_div_u32(~39293u, global0.d.a.x), any(!arg_0.a)), global0.b.b.x), 0u, global0.d.c.x);
    global0 = Struct_2(true, Struct_1(u_input.b.yx | _wgslsmith_add_vec2_u32(vec2<u32>(1u, 95741u), global0.d.a), vec2<bool>(any(vec3<bool>(false, arg_0.a.x, false)), global0.a & (global0.b.e >= global0.b.e)), _wgslsmith_add_vec2_u32(u_input.b.yx, vec2<u32>(39747u, 4294967295u)) | vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.c.x, var_0.x, 1u), vec3<u32>(1602u, 4369u, 87601u))), ~1i, -1000f), (true & (arg_0.b | !global0.d.b.x)) && any(arg_0.a), Struct_1(var_0.xz, vec2<bool>(any(!arg_0.a), true), _wgslsmith_mod_vec2_u32(~u_input.b.xy, vec2<u32>(global0.b.c.x, u_input.b.x)), u_input.c, -414f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1296f + global0.d.e), _wgslsmith_f_op_f32(floor(782f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.e) - global0.b.e), false)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) + -2193f)) + 1043f);
    global0 = Struct_2(false, global0.b, any(select(vec4<bool>(false, true, select(global0.c, true, arg_0.b), true | global0.d.b.x), !(!vec4<bool>(false, true, global0.b.b.x, false)), global0.d.b.x)), global0.b, -1666f);
    var var_2 = Struct_2(!arg_0.b, global0.b, global0.b.b.x, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b.e)))))));
    return -_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a.x, _wgslsmith_div_i32(-3506i, 2147483647i), u_input.a.x, max(-37098i, u_input.a.x)), ~vec4<i32>(-18149i, -30021i, -38233i, global0.d.d) | vec4<i32>(u_input.a.x, u_input.c, 16382i, u_input.c)) ^ _wgslsmith_add_i32(abs(u_input.a.x), 2147483647i);
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_1 {
    global0 = arg_2.c;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(339f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-704f)) - _wgslsmith_f_op_f32(f32(-1f) * -658f)))));
    var var_1 = arg_1.x;
    var_1 = true;
    var var_2 = vec3<i32>(arg_2.e.x, ~(-35103i), u_input.a.x);
    return global0.d;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> i32 {
    var var_0 = -536f;
    var var_1 = ~_wgslsmith_add_u32(u_input.d, u_input.d);
    var var_2 = global0.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e, var_2.e, global0.b.e, global0.e) * vec4<f32>(global0.d.e, -1410f, global0.d.e, global0.e)) - vec4<f32>(var_2.e, -1428f, global0.b.e, global0.e))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -2100f, global0.d.e, 522f)))))));
    var var_4 = Struct_3(func_5(-18133i ^ func_2(Struct_5(global0.b.b, var_2.b.x)), vec3<bool>(false, select(true, true, any(var_2.b)), !all(vec4<bool>(global0.a, true, false, var_2.b.x))), Struct_3(global0.d, false, Struct_2(arg_1, global0.b, true, Struct_1(vec2<u32>(global0.b.c.x, 1286u), global0.b.b, vec2<u32>(u_input.d, u_input.b.x), -17980i, global0.b.e), -413f), Struct_2(var_2.b.x, global0.b, false, Struct_1(vec2<u32>(0u, 0u), vec2<bool>(arg_1, global0.c), global0.b.a, u_input.c, var_3.x), var_3.x), vec2<i32>(global0.b.d, _wgslsmith_mult_i32(26742i, u_input.a.x)))), global0.b.b.x, Struct_2(false, global0.d, all(vec2<bool>(all(vec3<bool>(var_2.b.x, var_2.b.x, false)), true && var_2.b.x)), Struct_1(_wgslsmith_div_vec2_u32(reverseBits(global0.b.a), _wgslsmith_mult_vec2_u32(u_input.b.xz, arg_0.yz)), vec2<bool>(true, true), global0.d.a, var_2.d, var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -958f)), Struct_2(!all(vec4<bool>(true, true, true, true)), Struct_1(func_5(-2147483647i & var_2.d, select(vec3<bool>(false, false, var_2.b.x), vec3<bool>(true, global0.c, var_2.b.x), vec3<bool>(false, true, true)), Struct_3(global0.b, true, Struct_2(false, global0.b, var_2.b.x, Struct_1(arg_0.zy, global0.d.b, arg_0.yx, global0.b.d, -1457f), var_2.e), Struct_2(var_2.b.x, global0.d, false, Struct_1(vec2<u32>(4294967295u, global0.d.c.x), global0.d.b, global0.b.a, var_2.d, -620f), var_3.x), u_input.a.xy)).c, !func_5(-2147483647i, vec3<bool>(true, false, var_2.b.x), Struct_3(global0.d, true, Struct_2(arg_1, Struct_1(var_2.c, vec2<bool>(var_2.b.x, false), vec2<u32>(26732u, 24152u), global0.b.d, var_2.e), false, Struct_1(u_input.b.xx, vec2<bool>(true, arg_1), u_input.b.xx, var_2.d, 1000f), var_2.e), Struct_2(false, global0.b, var_2.b.x, global0.d, var_2.e), vec2<i32>(-2147483647i, -5302i))).b, global0.b.a, 22192i, global0.b.e), var_2.b.x, global0.b, _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_sub_vec2_i32(u_input.a.zz, vec2<i32>(0i, func_2(Struct_5(global0.d.b, true)) & ~(-2147483647i))));
    return reverseBits(-global0.d.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = u_input.d;
    var_0 = func_1(max(vec3<u32>(_wgslsmith_mult_u32(select(4294967295u, 18522u, true), 0u), abs(4294967295u), 0u), u_input.b), global0.b.b.x);
    let var_2 = !select(select(vec3<bool>(true, true, true), !(!vec3<bool>(false, global0.a, true)), func_5(-u_input.a.x, vec3<bool>(true, true, true), Struct_3(Struct_1(global0.b.c, global0.b.b, u_input.b.yx, global0.d.d, global0.b.e), global0.c, Struct_2(true, global0.d, global0.d.b.x, global0.b, global0.e), Struct_2(global0.c, global0.d, true, Struct_1(vec2<u32>(22621u, 4294967295u), global0.b.b, u_input.b.yy, global0.b.d, global0.b.e), 575f), u_input.a.xz)).b.x), select(!(!vec3<bool>(global0.b.b.x, global0.c, global0.d.b.x)), !(!vec3<bool>(global0.c, false, true)), !select(vec3<bool>(false, false, global0.a), vec3<bool>(global0.c, false, global0.d.b.x), vec3<bool>(true, false, global0.b.b.x))), any(!vec4<bool>(global0.d.b.x, global0.c, true, false)) || !(global0.b.e == global0.d.e));
    global0 = Struct_2(var_2.x, Struct_1(global0.b.a, select(!(!global0.d.b), !vec2<bool>(true, var_2.x), true), _wgslsmith_mult_vec2_u32(global0.d.a, vec2<u32>(u_input.b.x, ~var_1)), abs(2147483647i), 455f), _wgslsmith_add_i32(u_input.a.x << (select(74104u, 0u, false) % 32u), 13447i) < 1i, func_5(-1i, vec3<bool>(true, false, all(!var_2)), Struct_3(global0.b, false, Struct_2(var_2.x & false, func_5(global0.b.d, var_2, Struct_3(global0.b, false, Struct_2(true, Struct_1(vec2<u32>(var_1, var_1), vec2<bool>(false, false), global0.d.a, global0.b.d, global0.b.e), true, global0.d, global0.d.e), Struct_2(var_2.x, Struct_1(u_input.b.xz, vec2<bool>(var_2.x, false), global0.b.c, 13788i, global0.b.e), false, Struct_1(vec2<u32>(u_input.d, 0u), vec2<bool>(true, false), vec2<u32>(31185u, var_1), -28849i, global0.e), global0.d.e), vec2<i32>(u_input.c, -5011i))), all(vec4<bool>(true, global0.d.b.x, true, true)), global0.b, 447f), Struct_2(any(vec4<bool>(global0.a, true, var_2.x, true)), Struct_1(vec2<u32>(0u, 0u), global0.b.b, global0.d.a, -20467i, global0.e), false, global0.d, _wgslsmith_f_op_f32(global0.e - global0.e)), u_input.a.zx)), _wgslsmith_f_op_f32(abs(global0.e)));
    var_0 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global0.d.e, _wgslsmith_f_op_f32(func_5(countOneBits(-34365i), var_2, Struct_3(Struct_1(u_input.b.zy, global0.d.b, vec2<u32>(var_1, u_input.b.x), global0.d.d, 1129f), false, Struct_2(false, Struct_1(vec2<u32>(3826u, u_input.b.x), global0.b.b, global0.d.a, global0.d.d, global0.b.e), global0.d.b.x, global0.d, -636f), Struct_2(global0.a, global0.d, true, Struct_1(vec2<u32>(var_1, 0u), var_2.zy, global0.d.c, -2147483647i, -619f), global0.b.e), vec2<i32>(9240i, 72572i))).e + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2272f * global0.b.e), _wgslsmith_f_op_f32(-global0.e))))), firstLeadingBit(~abs(global0.b.c.x)), max(vec4<i32>(9591i, _wgslsmith_dot_vec3_i32(u_input.a >> (u_input.b % vec3<u32>(32u)), vec3<i32>(2147483647i, -2147483647i, global0.b.d)), -global0.d.d, -abs(1i)), vec4<i32>(0i, 0i, 1i, u_input.a.x)), 4294967295u << (global0.d.c.x % 32u));
}

