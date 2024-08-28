struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(-1705f, vec2<f32>(1002f, 563f), true, vec2<i32>(1i, 108124i)), Struct_1(-1062f, vec2<f32>(-465f, -724f), false, vec2<i32>(-25146i, -1i)), Struct_1(1000f, vec2<f32>(-1000f, -1160f), true, vec2<i32>(-52970i, 26763i)), Struct_1(1000f, vec2<f32>(-425f, -602f), false, vec2<i32>(-50603i, 1933i))), Struct_2(Struct_1(-1593f, vec2<f32>(415f, 1180f), false, vec2<i32>(1i, -52230i)), Struct_1(803f, vec2<f32>(-450f, -1283f), true, vec2<i32>(0i, -3349i)), Struct_1(775f, vec2<f32>(1229f, 1386f), true, vec2<i32>(0i, -1i)), Struct_1(205f, vec2<f32>(1000f, -1331f), true, vec2<i32>(-29098i, -1i))), Struct_2(Struct_1(-1529f, vec2<f32>(-1295f, 774f), true, vec2<i32>(38691i, i32(-2147483648))), Struct_1(-202f, vec2<f32>(275f, -896f), false, vec2<i32>(-14467i, 15778i)), Struct_1(-105f, vec2<f32>(655f, -629f), false, vec2<i32>(-20066i, 0i)), Struct_1(856f, vec2<f32>(-898f, -118f), true, vec2<i32>(-42808i, 9264i))), vec2<f32>(353f, 209f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(global0.b.c.b.x - -162f);
    var var_1 = max(u_input.b.x, _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.b, reverseBits(vec3<u32>(0u, 4294967295u, u_input.b.x))), select(vec3<u32>(~15747u, u_input.b.x, u_input.b.x), ~vec3<u32>(0u, 0u, u_input.b.x), !global0.c.d.c)));
    let var_2 = false;
    var var_3 = any(vec3<bool>(1215f != _wgslsmith_f_op_f32(select(378f, global0.a.c.a, all(vec2<bool>(false, global0.a.d.c)))), 530f <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-240f)))), var_2));
    return var_0;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(arg_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -179f) * arg_2.c.b.b.x))), _wgslsmith_f_op_f32(func_3(arg_2.b.a)), -199f, -1766f);
    var var_1 = _wgslsmith_f_op_f32(-arg_0.b.b.x);
    var var_2 = global0.d.x;
    var var_3 = i32(-1i) * -691i;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c.d.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a - var_0.x)))));
    return max(reverseBits(vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(94086u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 17071u, 4294967295u, u_input.b.x)) << (99955u % 32u), 0u, 4294967295u)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(39523u, u_input.b.x, 41992u, 4294967295u), vec4<u32>(41530u, u_input.b.x, 13508u, u_input.b.x)), countOneBits(vec4<u32>(u_input.b.x, 3606u, u_input.b.x, u_input.b.x))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b.x, 1u, u_input.b.x) | vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 7965u), vec4<u32>(4294967295u, 12081u, u_input.b.x, 4294967295u)), vec4<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 1u), u_input.b.x, 1287u)));
}

fn func_1(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(func_2(global0.a, Struct_1(733f, arg_0, global0.b.b.c, vec2<i32>(global0.b.b.d.x, u_input.a.x)), Struct_3(Struct_2(Struct_1(400f, global0.b.d.b, false, vec2<i32>(-26927i, u_input.a.x)), Struct_1(arg_0.x, global0.c.d.b, false, global0.a.b.d), Struct_1(global0.a.c.a, vec2<f32>(arg_0.x, arg_0.x), global0.a.c.c, vec2<i32>(global0.a.d.d.x, u_input.a.x)), global0.b.c), global0.b, Struct_2(global0.b.b, global0.c.c, global0.a.b, global0.a.b), vec2<f32>(836f, global0.a.b.a))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 0u, 4294967295u, u_input.b.x), vec4<u32>(38129u, 1u, u_input.b.x, u_input.b.x)) << ((vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x) | vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.b.x)) % vec4<u32>(32u))), ~max(~(~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 1u)), vec4<u32>(u_input.b.x, 1u, ~u_input.b.x, ~4294967295u)));
    var var_1 = global0.c.a;
    global0 = Struct_3(Struct_2(Struct_1(441f, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(875f, global0.d.x)))), true, vec2<i32>(_wgslsmith_mod_i32(50894i, var_1.d.x), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, var_1.d.x, -2147483647i)))), global0.a.b, Struct_1(1352f, vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global0.a.d.b.x)), any(vec4<bool>(var_1.c, true, false, var_1.c)), abs(u_input.a.yz ^ vec2<i32>(u_input.a.x, global0.c.d.d.x))), Struct_1(_wgslsmith_f_op_f32(-arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(-global0.b.b.b.x), _wgslsmith_f_op_f32(-814f * -1200f)), !any(vec3<bool>(var_1.c, global0.b.b.c, global0.b.c.c)), vec2<i32>(_wgslsmith_mult_i32(var_1.d.x, 0i), -45487i))), Struct_2(Struct_1(308f, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a, arg_0.x))), any(select(vec3<bool>(global0.a.d.c, var_1.c, var_1.c), vec3<bool>(false, true, true), false)), u_input.a.zy), global0.b.a, Struct_1(global0.a.d.a, _wgslsmith_f_op_vec2_f32(step(var_1.b, vec2<f32>(global0.d.x, -930f))), true, _wgslsmith_mod_vec2_i32(~vec2<i32>(-15327i, -1i), firstLeadingBit(vec2<i32>(global0.a.d.d.x, var_1.d.x)))), global0.c.a), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.a.a * global0.b.d.a)), _wgslsmith_f_op_vec2_f32(abs(global0.a.d.b)), true, global0.b.a.d ^ u_input.a.zx), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -770f)), var_1.b, !(!global0.c.d.c), vec2<i32>(_wgslsmith_sub_i32(0i, 1i), var_1.d.x)), Struct_1(_wgslsmith_f_op_f32(var_1.a - -980f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, 1000f) + var_1.b)), any(select(vec4<bool>(true, true, var_1.c, global0.c.c.c), vec4<bool>(var_1.c, global0.c.c.c, false, false), var_1.c)), vec2<i32>(0i, -7931i)), global0.b.b), global0.b.b.b);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))), arg_0, true, ~vec2<i32>(global0.c.c.d.x ^ max(-57079i, 5241i), 1i));
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_0.x * global0.c.b.b.x), vec2<f32>(_wgslsmith_f_op_f32(round(1400f)), _wgslsmith_div_f32(var_1.a, 1189f)), any(!vec3<bool>(true, var_1.c, var_1.c)), -var_1.d & (vec2<i32>(-19872i, global0.b.d.d.x) >> (vec2<u32>(51387u, 1414u) % vec2<u32>(32u)))), global0.a.a, Struct_1(-1000f, var_1.b, var_1.c, min(vec2<i32>(u_input.a.x, global0.b.a.d.x), vec2<i32>(var_1.d.x, u_input.a.x))), Struct_1(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x)))), _wgslsmith_f_op_vec2_f32(exp2(global0.a.b.b)), any(!vec4<bool>(true, false, global0.a.a.c, false)), ~vec2<i32>(global0.b.a.d.x, u_input.a.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * var_1.a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_div_f32(global0.c.a.a, -1000f)), select(any(vec2<bool>(true, false)), all(vec3<bool>(var_1.c, global0.c.a.c, true)), !global0.a.a.c), ~countOneBits(u_input.a.xx)), Struct_1(global0.b.d.b.x, global0.b.a.b, true, global0.c.d.d), global0.b.a, global0.c.a), Struct_2(Struct_1(907f, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-529f, 640f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.d.b.x, var_1.b.x) - vec2<f32>(443f, -314f)), !vec2<bool>(true, var_1.c))), select(true & global0.b.a.c, arg_0.x != var_1.a, true || var_1.c), _wgslsmith_mod_vec2_i32(~vec2<i32>(global0.b.b.d.x, 0i), ~vec2<i32>(global0.c.b.d.x, 1i))), Struct_1(1103f, vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + 137f), _wgslsmith_f_op_f32(global0.a.a.b.x - -419f)), true, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, global0.b.c.d.x), _wgslsmith_add_vec2_i32(global0.a.b.d, var_1.d))), Struct_1(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(var_1.b.x * 144f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1462f, 100f)), false, ~u_input.a.yz), Struct_1(global0.a.c.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-380f, 965f)) - _wgslsmith_f_op_vec2_f32(exp2(var_1.b))), !global0.a.d.c, u_input.a.zz)), var_1.b);
    return vec3<bool>((true | global0.a.b.c) | var_2.b.a.c, all(vec2<bool>(true, !(var_1.c == true))), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = vec2<u32>(4294967295u, 1u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(842f, arg_1.b.d.a), 1662f) - arg_1.a.b.a)), global0.d, arg_1.c.d.c, firstLeadingBit(-(~(~arg_3.c.b.d))));
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_1.c.d.a), vec2<f32>(global0.b.d.b.x, _wgslsmith_f_op_f32(ceil(arg_2.x))), arg_3.b.d.c, firstLeadingBit(~vec2<i32>(-11897i, u_input.a.x))), Struct_1(global0.c.b.a, var_1.b, true, select(vec2<i32>(-2147483647i, global0.b.b.d.x), ~var_1.d, all(vec3<bool>(arg_1.b.a.c, arg_1.a.a.c, global0.c.d.c)))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -684f))), vec2<f32>(-1000f, 1271f), true, ~(vec2<i32>(u_input.a.x, global0.a.b.d.x) ^ vec2<i32>(-13445i, -2147483647i))), arg_3.b.a), Struct_2(Struct_1(1f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.b.b.b + vec2<f32>(arg_2.x, arg_1.a.d.a))), arg_3.a.b.c, -vec2<i32>(1i, arg_1.a.d.d.x)), arg_1.b.b, arg_1.c.c, Struct_1(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(-703f, global0.b.a.b.x))), global0.b.d.b, var_1.c, ~firstTrailingBit(vec2<i32>(var_1.d.x, global0.b.c.d.x)))), Struct_2(Struct_1(arg_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d - vec2<f32>(-769f, 1127f))), arg_1.a.d.c, max(vec2<i32>(arg_3.a.d.d.x, arg_1.b.d.d.x), u_input.a.xy)), Struct_1(303f, vec2<f32>(_wgslsmith_f_op_f32(-arg_3.d.x), _wgslsmith_f_op_f32(1089f * arg_1.d.x)), any(!vec4<bool>(global0.c.d.c, var_1.c, true, false)), -u_input.a.yy & firstLeadingBit(arg_1.b.d.d)), arg_1.a.b, Struct_1(var_1.b.x, vec2<f32>(-303f, var_1.b.x), any(vec2<bool>(global0.c.c.c, arg_3.a.a.c)) || false, select(_wgslsmith_mult_vec2_i32(arg_1.a.b.d, arg_1.a.c.d), arg_3.b.d.d, !vec2<bool>(arg_0.x, true)))), arg_3.b.a.b);
    var_1 = var_2.b.c;
    let var_3 = select(var_1.c, arg_3.b.a.c, (1u < _wgslsmith_dot_vec2_u32(vec2<u32>(82374u, var_0.x) >> (vec2<u32>(19007u, 0u) % vec2<u32>(32u)), u_input.b.zx)) & !(var_1.b.x > _wgslsmith_div_f32(arg_3.b.c.a, arg_2.x)));
    return StorageBuffer(_wgslsmith_mult_u32(52142u >> (1u % 32u), _wgslsmith_clamp_u32(u_input.b.x, select(44959u, var_0.x, false), u_input.b.x) >> (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u)), _wgslsmith_f_op_f32(select(var_1.a, arg_3.c.c.a, all(arg_0))), vec3<u32>(58460u, ~(~83310u), var_0.x), var_1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(!(!func_1(vec2<f32>(1763f, global0.b.b.b.x))), Struct_3(Struct_2(Struct_1(-1058f, global0.a.b.b, global0.c.b.d.x <= u_input.a.x, vec2<i32>(0i, 47041i) ^ u_input.a.xx), global0.b.c, Struct_1(global0.c.c.b.x, _wgslsmith_f_op_vec2_f32(sign(global0.d)), !global0.a.b.c, ~vec2<i32>(2147483647i, -8349i)), global0.c.b), Struct_2(global0.a.c, Struct_1(global0.b.a.a, global0.d, true, u_input.a.zy), global0.a.a, Struct_1(global0.b.b.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.b.b.x, global0.b.c.b.x) + global0.a.b.b), true, ~vec2<i32>(global0.c.d.d.x, -1i))), global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(global0.c.d.b, vec2<f32>(-1000f, -1067f), vec2<bool>(false, true))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a.b.b * global0.a.c.b)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, global0.b.d.b.x, _wgslsmith_div_f32(global0.a.a.b.x, -1000f), 154f) - vec4<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-global0.b.c.b.x), _wgslsmith_f_op_f32(-global0.b.a.b.x), _wgslsmith_f_op_f32(-global0.c.c.b.x))))), Struct_3(global0.b, global0.a, Struct_2(global0.c.b, global0.a.d, global0.c.c, global0.a.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b.b.x, _wgslsmith_div_f32(-808f, 776f)))));
}

