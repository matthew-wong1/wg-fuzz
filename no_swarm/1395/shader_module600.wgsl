struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
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

var<private> global0: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> vec4<bool> {
    global0 = Struct_1(arg_0.x, global0.b, u_input.b.x, select(!global0.d, vec2<bool>(arg_1.a.d.x, any(vec3<bool>(true, false, true))), !(!(!global0.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1650f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -618f))));
    var var_0 = arg_1;
    global0 = var_0.a;
    let var_1 = var_0.a.b.x;
    var var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(32840i, 2147483647i, abs(-27210i), abs(-2147483647i)), -(~(vec4<i32>(-1i, u_input.b.x, u_input.c.x, 1i) << (vec4<u32>(arg_0.x, 10289u, arg_1.a.a, 29084u) % vec4<u32>(32u))))), firstLeadingBit(_wgslsmith_add_vec4_i32(-(~vec4<i32>(-46439i, 11510i, global0.c, 1i)), vec4<i32>(1484i, 0i, -u_input.b.x, arg_1.a.c))));
    return select(select(!select(!vec4<bool>(var_0.a.d.x, global0.b.x, true, true), vec4<bool>(global0.b.x, false, false, global0.d.x), true), select(!vec4<bool>(global0.b.x, arg_1.a.d.x, global0.d.x, true), vec4<bool>(all(var_0.a.b), var_0.a.b.x, global0.b.x, true), select(vec4<bool>(false, false, var_0.a.d.x, arg_1.a.b.x), vec4<bool>(global0.b.x, true, false, var_0.a.b.x), vec4<bool>(global0.b.x, true, false, true))), !(!select(vec4<bool>(global0.d.x, global0.b.x, false, var_0.a.b.x), vec4<bool>(true, true, arg_1.a.d.x, true), var_0.a.d.x))), !(!(!vec4<bool>(false, arg_1.a.d.x, true, var_0.a.d.x))), false);
}

fn func_2() -> u32 {
    global0 = Struct_1(~u_input.d, vec3<bool>(global0.b.x, global0.b.x, global0.b.x), global0.c, !select(vec2<bool>(false, false), select(global0.b.zx, vec2<bool>(global0.b.x, global0.d.x), global0.b.xy), !global0.b.zy), _wgslsmith_div_f32(global0.e, global0.e));
    let var_0 = countOneBits(reverseBits(vec4<u32>(1u, 39665u, 1u, ~(~global0.a))));
    var var_1 = u_input.b.zx;
    var var_2 = select(select(vec4<bool>(true, var_1.x <= reverseBits(-42835i), any(!vec3<bool>(global0.b.x, true, true)), any(select(global0.b.xx, global0.d, global0.d))), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, !any(vec4<bool>(global0.d.x, false, false, global0.b.x))), any(global0.b.xz)), vec4<bool>(global0.d.x, !any(select(vec3<bool>(global0.b.x, global0.d.x, true), vec3<bool>(true, global0.b.x, true), global0.b)), true, any(!func_3(vec4<u32>(var_0.x, 19497u, 32478u, global0.a), Struct_3(Struct_1(global0.a, vec3<bool>(global0.d.x, global0.b.x, global0.b.x), -1757i, global0.d, global0.e), global0.e)))), true);
    var var_3 = ~(~65080u);
    return 4294967295u;
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = 82165u;
    global0 = Struct_1(~3796u, global0.b, -2147483647i, arg_0, _wgslsmith_f_op_f32(-global0.e));
    let var_1 = 139f;
    var_0 = u_input.d;
    var_0 = func_2();
    return Struct_2(Struct_1(max(global0.a, global0.a), global0.b, -(_wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.ww) ^ -global0.c), global0.b.yy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_1)))) + 1287f)), ~countOneBits(~vec2<u32>(u_input.d, u_input.a)) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, global0.a), vec2<u32>(global0.a, u_input.a)), ~60622u) % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(156f))))), var_1), _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(30286u, 71861u, global0.a)), min(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 108048u, 36628u), countOneBits(vec3<u32>(4294967295u, 11784u, global0.a))), vec3<u32>(72608u, u_input.a, global0.a) >> (select(vec3<u32>(2821u, u_input.d, u_input.d), vec3<u32>(4294967295u, 3989u, u_input.d), false) % vec3<u32>(32u)))));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.c, arg_0.c)), _wgslsmith_div_f32(-916f, 481f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.a.e, arg_0.c))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.e - -355f) + 1100f)), 398f)));
    var var_1 = Struct_2(func_1(select(!select(vec2<bool>(true, global0.b.x), arg_0.a.d, global0.b.x), arg_0.a.b.zz, func_3(min(vec4<u32>(u_input.d, u_input.a, 0u, 10576u), vec4<u32>(28381u, 0u, 0u, 83836u)), Struct_3(Struct_1(arg_0.a.a, vec3<bool>(arg_0.a.b.x, global0.b.x, true), 0i, vec2<bool>(false, true), arg_0.c), global0.e)).x)).a, vec2<u32>(u_input.a, global0.a), _wgslsmith_f_op_f32(ceil(global0.e)), ~0u);
    var var_2 = abs(~(~(_wgslsmith_mod_i32(var_1.a.c, 0i) << (firstTrailingBit(u_input.a) % 32u))));
    let var_3 = func_1(arg_0.a.d).a;
    var_1 = Struct_2(arg_0.a, ~reverseBits(var_1.b & ~vec2<u32>(u_input.d, u_input.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(step(-226f, -233f)))), ~(~4294967295u));
    return func_1(func_3(select(firstLeadingBit(vec4<u32>(var_1.d, 0u, var_3.a, 4294967295u) ^ vec4<u32>(27473u, 33615u, 118261u, 4294967295u)), firstTrailingBit(~vec4<u32>(var_3.a, arg_0.b.x, arg_0.d, 1423u)), func_3(~vec4<u32>(5565u, 28263u, 4294967295u, var_3.a), Struct_3(arg_0.a, 716f))), Struct_3(Struct_1(~11923u, var_1.a.b, -2147483647i, vec2<bool>(var_3.b.x, true), _wgslsmith_f_op_f32(global0.e - var_3.e)), _wgslsmith_f_op_f32(round(-142f)))).zw).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-u_input.c.x);
    var var_1 = u_input.d;
    var var_2 = Struct_2(func_4(func_1(vec2<bool>(all(global0.d), global0.b.x)), abs(min(firstLeadingBit(global0.c), -global0.c))), ~(func_1(!vec2<bool>(global0.d.x, false)).b >> (~(~vec2<u32>(1u, global0.a)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(round(global0.e)), ~(~global0.a) >> (func_1(vec2<bool>(true, 582f <= global0.e)).b.x % 32u));
    let var_3 = vec4<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(countOneBits(u_input.b & vec4<i32>(0i, var_2.a.c, 2147483647i, -2147483647i))), u_input.b), func_1(var_2.a.d).a.c, _wgslsmith_clamp_i32(min(~_wgslsmith_mod_i32(-33491i, -14241i), u_input.c.x), abs(-18318i), reverseBits(0i >> ((36252u | global0.a) % 32u))), countOneBits(~_wgslsmith_dot_vec2_i32(-u_input.b.xz, firstLeadingBit(vec2<i32>(0i, u_input.c.x)))));
    let var_4 = _wgslsmith_sub_vec2_i32(vec2<i32>((60316i | _wgslsmith_mult_i32(var_2.a.c, var_2.a.c)) ^ ~(-1i), global0.c), u_input.c.zz);
    var var_5 = _wgslsmith_add_u32(~u_input.d, global0.a);
    var var_6 = Struct_3(var_2.a, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~abs(var_6.a.a) | 1u, 50733u));
}

