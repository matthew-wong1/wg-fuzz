struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    let var_0 = Struct_2(Struct_1(!vec4<bool>(true, true, arg_0.a.a.x | global0.x, arg_1.a.x)), ((i32(-1i) * -1i) >> (~(u_input.a.x | u_input.a.x) % 32u)) ^ max(u_input.b, countOneBits(~(-1i))), Struct_1(select(vec4<bool>(true, all(arg_1.a.ww), false, all(global0.yyy)), arg_1.a, select(select(arg_0.a.a, arg_0.a.a, vec4<bool>(false, false, false, true)), !vec4<bool>(global0.x, false, false, false), arg_0.a.a.x || false))), Struct_1(arg_1.a), Struct_1(select(!arg_1.a, vec4<bool>(global0.x || global0.x, true, true & arg_0.a.a.x, arg_0.a.a.x), false)));
    var var_1 = reverseBits((~min(vec4<u32>(0u, 1u, u_input.a.x, 36385u), vec4<u32>(0u, 49294u, u_input.a.x, 1u)) << (abs(vec4<u32>(66477u, 4294967295u, u_input.a.x, 0u)) % vec4<u32>(32u))) | _wgslsmith_div_vec4_u32(~(vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x) ^ vec4<u32>(37601u, u_input.a.x, u_input.a.x, 1u)), vec4<u32>(~u_input.a.x, u_input.a.x, ~u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x))));
    var var_2 = vec2<bool>(true, var_0.a.a.x);
    let var_3 = ~countOneBits(min(vec4<u32>(27531u, u_input.a.x, _wgslsmith_mult_u32(1u, 4294967295u), var_1.x << (var_1.x % 32u)), reverseBits(max(vec4<u32>(var_1.x, 0u, 1u, 0u), vec4<u32>(u_input.a.x, 38519u, 1u, 4884u)))));
    let var_4 = -u_input.c.x;
    return !var_0.d.a.x;
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = select(select(select(select(select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(global0.x, arg_0, false, false), vec4<bool>(global0.x, true, false, false)), vec4<bool>(true, arg_0, true, true), vec4<bool>(false, arg_0, global0.x, false)), select(!vec4<bool>(arg_0, false, true, false), !vec4<bool>(arg_0, global0.x, true, arg_0), !vec4<bool>(false, true, global0.x, true)), select(!vec4<bool>(false, false, true, arg_0), !vec4<bool>(global0.x, true, arg_0, arg_0), false)), select(!select(vec4<bool>(false, global0.x, false, arg_0), vec4<bool>(false, global0.x, true, global0.x), arg_0), vec4<bool>(all(vec2<bool>(false, global0.x)), false, true, false), true), true), !(!(!vec4<bool>(false, true, arg_0, global0.x))), select(!(!vec4<bool>(global0.x, global0.x, arg_0, true)), vec4<bool>(true, false, true, any(global0.wwz)), any(global0.xz)));
    var var_1 = _wgslsmith_div_u32(countOneBits(u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(12952u, u_input.a.x, 6616u), vec3<u32>(1u, u_input.a.x, u_input.a.x)), u_input.a.x << (u_input.a.x % 32u)))) > 74963u;
    global0 = vec4<bool>(all(select(vec2<bool>(arg_0, true), !var_0.zy, !(!var_0.x))), var_0.x, all(vec4<bool>(any(vec4<bool>(global0.x, global0.x, true, false)), arg_0, any(vec2<bool>(true, true)), var_0.x)), global0.x);
    let var_2 = Struct_2(Struct_1(select(vec4<bool>(true, var_0.x, global0.x, any(var_0)), !select(vec4<bool>(false, false, false, var_0.x), var_0, vec4<bool>(global0.x, true, false, true)), !select(var_0, vec4<bool>(global0.x, global0.x, arg_0, global0.x), global0.x))), 1i, Struct_1(!vec4<bool>(all(var_0), false, true, false)), Struct_1(vec4<bool>(select(global0.x, true, true) && (u_input.b > -37538i), false, func_3(Struct_3(Struct_1(var_0)), Struct_1(vec4<bool>(true, arg_0, var_0.x, global0.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-508f, 142f, 439f), vec3<f32>(-1013f, -940f, -1000f)))), true)), Struct_1(select(!(!vec4<bool>(true, var_0.x, global0.x, global0.x)), vec4<bool>(true, true, any(vec3<bool>(true, var_0.x, global0.x)), arg_0), false)));
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-431f)), _wgslsmith_f_op_f32(-342f + -272f), _wgslsmith_f_op_f32(abs(250f)))))));
    return Struct_3(var_2.a);
}

fn func_1() -> Struct_1 {
    var var_0 = 1u;
    var var_1 = func_2(false);
    global0 = !select(func_2(global0.x || select(false, false, false)).a.a, var_1.a.a, vec4<bool>(select(false, true, true) | global0.x, global0.x, all(vec3<bool>(var_1.a.a.x, var_1.a.a.x, global0.x)) | true, select(var_1.a.a.x, false, true) & !global0.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(1638f, 1813f), -1116f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-399f, 1395f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1367f, 376f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-978f, -221f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-519f, 592f), _wgslsmith_f_op_f32(select(-327f, -1282f, global0.x))))), true));
    return func_2(all(vec2<bool>(true, any(var_1.a.a)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(firstLeadingBit(select(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 0u, 0u), false)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(1i <= u_input.c.x, true, !global0.x)) << ((select(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(u_input.a.x, 1165u, u_input.a.x)), vec3<u32>(u_input.a.x ^ u_input.a.x, 68695u, 0u), !select(vec3<bool>(global0.x, false, true), vec3<bool>(false, global0.x, true), true)) << (_wgslsmith_clamp_vec3_u32(max(~vec3<u32>(0u, 4294967295u, 1u), select(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(0u, 33911u, 1u), vec3<bool>(global0.x, true, false))), ~(~vec3<u32>(u_input.a.x, u_input.a.x, 22589u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 92585u, 19318u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var_0 = ~vec3<u32>(max(select(u_input.a.x, var_0.x, true), u_input.a.x), u_input.a.x, ~abs(_wgslsmith_clamp_u32(u_input.a.x, var_0.x, 41023u)));
    global0 = select(!(!vec4<bool>(false, !global0.x, any(global0.yx), true)), select(vec4<bool>(select(global0.x, global0.x, true) | any(vec2<bool>(true, global0.x)), any(!vec3<bool>(false, false, global0.x)), !(!global0.x), all(vec2<bool>(true, true))), vec4<bool>(!(u_input.c.x < -5309i), false, true, !global0.x), false), global0.x);
    var var_1 = Struct_2(func_1(), -1i ^ max(-1i, u_input.c.x >> (min(1u, 27319u) % 32u)), func_1(), Struct_1(select(!vec4<bool>(true, global0.x, false, false), select(!vec4<bool>(false, global0.x, global0.x, global0.x), select(vec4<bool>(true, global0.x, true, false), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, true, global0.x, true)), any(global0.yy)), vec4<bool>(!global0.x, true, true, 8300i >= u_input.c.x))), Struct_1(func_2(!(u_input.a.x != 0u)).a.a));
    let var_2 = Struct_1(vec4<bool>(!all(global0.yyy), true, (~u_input.a.x ^ max(var_0.x, 104721u)) >= ~19636u, true));
    var var_3 = reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, _wgslsmith_mod_i32(var_1.b, -62101i), var_1.b, u_input.c.x), _wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.b, 0i, var_1.b, 14170i), vec4<i32>(-1i, u_input.c.x, var_1.b, 2965i), var_2.a.x), vec4<i32>(2147483647i, -28706i, -2891i, -2147483647i))), _wgslsmith_dot_vec3_i32(vec3<i32>(5172i, u_input.c.x, -4502i), abs(vec3<i32>(var_1.b, -41811i, -74950i))) << (~0u % 32u), countOneBits(min(_wgslsmith_clamp_i32(0i, -2147483647i, u_input.c.x), 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(737f, 1715f) - _wgslsmith_f_op_f32(f32(-1f) * -1058f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -659f)), 531f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(682f, -486f, -1249f, -1295f) + vec4<f32>(649f, -3048f, 1480f, -522f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(966f + -829f)), 415f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(789f + -308f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(sign(-233f))))));
}

