struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: f32 = 1000f;

var<private> global2: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<u32>) -> bool {
    global2 = u_input.a.x;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-420f, -978f)), -256f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, -996f), -1506f))) + 720f));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(103f * 1091f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2264f - -604f)))))), -309f);
    var var_1 = Struct_1(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), !all(vec3<bool>(true, true, true)), true), ~abs(vec4<u32>(_wgslsmith_clamp_u32(0u, arg_2.x, arg_2.x), _wgslsmith_mult_u32(1339u, 1u), ~0u, ~arg_2.x)), select(vec4<bool>(all(vec2<bool>(false, true)) | all(vec2<bool>(false, false)), false, true, arg_2.x >= ~2695u), vec4<bool>(true, true, true, true), !(!any(vec2<bool>(false, true)))));
    let var_2 = ~(~var_1.b.x);
    return true;
}

fn func_2(arg_0: vec4<bool>) -> vec4<bool> {
    var var_0 = Struct_1(!arg_0.zxz, vec4<u32>(~u_input.a.x, u_input.a.x, ~(~_wgslsmith_sub_u32(4294967295u, 39682u)), 41140u), arg_0);
    global0 = 2147483647i;
    let var_1 = Struct_1(vec3<bool>(false, false, var_0.c.x), vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(var_0.b.xx, vec2<u32>(u_input.a.x, 28587u))), ~(~0u), _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, u_input.a.x)), select(u_input.a.ww, u_input.a.yz, vec2<bool>(false, var_0.a.x)))), u_input.a.x), !select(var_0.c, var_0.c, arg_0.x));
    var var_2 = min(17381u, var_1.b.x) | var_1.b.x;
    var_0 = Struct_1(select(arg_0.yzy, !arg_0.yxy, !vec3<bool>(func_3(u_input.a.x, vec4<i32>(-60834i, -33227i, 2147483647i, -221i), vec3<u32>(var_1.b.x, u_input.a.x, u_input.a.x)), var_1.c.x != false, true)), var_0.b, !vec4<bool>(all(vec2<bool>(true, false)) | (u_input.a.x > 4294967295u), all(!var_0.c), !all(var_1.a.yz), (i32(-1i) * -1i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(-23229i, 2147483647i, 11851i), vec3<i32>(-1i, -1i, -2147483647i))));
    return select(var_0.c, arg_0, arg_0.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = arg_0;
    let var_1 = var_0;
    var var_2 = arg_0;
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1005f)) + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(406f * _wgslsmith_f_op_f32(f32(-1f) * -1017f))))));
    global1 = -561f;
    return ~(min(firstTrailingBit(vec2<i32>(-19384i, 26472i)), vec2<i32>(2147483647i, arg_2)) & ~_wgslsmith_add_vec2_i32(vec2<i32>(0i, 9480i), vec2<i32>(-24684i, 9494i))) >> (var_2.c.zx % vec2<u32>(32u));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    var var_0 = false;
    global0 = -1i;
    var var_1 = ~func_4(Struct_2(~u_input.a, Struct_1(vec3<bool>(true, true, true), ~u_input.a, vec4<bool>(true, true, true, true)), vec3<u32>(u_input.a.x | u_input.a.x, max(u_input.a.x, arg_0), _wgslsmith_clamp_u32(21123u, 51935u, arg_0))), Struct_1(vec3<bool>(true, true, true), vec4<u32>(~2753u, min(u_input.a.x, arg_0), arg_0 ^ arg_0, ~arg_0), !func_2(vec4<bool>(true, false, true, false))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, ~1i, -19900i, reverseBits(2147483647i)), vec4<i32>(27522i << (u_input.a.x % 32u), _wgslsmith_add_i32(-2147483647i, 1i), 1i, i32(-1i) * -33350i)), Struct_1(vec3<bool>(true, true, true), abs(select(u_input.a, u_input.a, vec4<bool>(true, true, true, false))), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false)));
    var var_2 = select(vec3<bool>(true, func_3(_wgslsmith_sub_u32(~arg_0, u_input.a.x), ~vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), _wgslsmith_sub_vec3_u32(~u_input.a.zzx, firstLeadingBit(vec3<u32>(arg_0, arg_0, arg_0)))), true), func_2(!func_2(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)))).wzx, !any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))));
    let var_3 = !(!vec3<bool>(true, var_2.x, (var_1.x >= var_1.x) | true));
    return _wgslsmith_clamp_vec2_u32(abs(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.zw, ~vec2<u32>(u_input.a.x, u_input.a.x)), ~(~vec2<u32>(u_input.a.x, 9176u)))), ~vec2<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(~u_input.a.xyw, vec3<u32>(29694u, 0u, 4294967295u))), _wgslsmith_clamp_vec2_u32(min(u_input.a.wy, vec2<u32>(abs(33798u), ~4294967295u)), vec2<u32>(23173u, u_input.a.x) ^ ~vec2<u32>(14698u, 0u), firstLeadingBit(abs(vec2<u32>(20793u, 78799u)) ^ select(vec2<u32>(arg_0, 1u), u_input.a.xw, var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(0u);
    global2 = var_0.x;
    global1 = -177f;
    var var_1 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(13774i, -2147483647i, -11943i, -2147483647i)), vec4<i32>(1i, -3478i, -2147483647i, -16461i)), 1i), -vec2<i32>(-14829i, _wgslsmith_clamp_i32(-57934i, 71284i, 0i)) >> (u_input.a.yx % vec2<u32>(32u)), ~vec2<i32>(1i, 1i));
    var var_2 = Struct_2(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), func_3(_wgslsmith_add_u32(14001u, 1u), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x) << (u_input.a % vec4<u32>(32u)), u_input.a.zyw)), vec4<u32>(4294967295u, ~var_0.x, ~31124u & abs(var_0.x), u_input.a.x), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), false, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)))), _wgslsmith_clamp_vec3_u32(~(~select(vec3<u32>(0u, 0u, var_0.x), u_input.a.wxw, vec3<bool>(true, false, false))), ~vec3<u32>(u_input.a.x, 12211u, select(var_0.x, var_0.x, false)), ~(~vec3<u32>(21198u, u_input.a.x, u_input.a.x) ^ u_input.a.yzx)));
    let var_3 = Struct_2(vec4<u32>(var_2.c.x, _wgslsmith_dot_vec4_u32(select(u_input.a, max(var_2.a, vec4<u32>(0u, u_input.a.x, u_input.a.x, var_0.x)), func_2(vec4<bool>(true, var_2.b.c.x, true, var_2.b.a.x))), _wgslsmith_add_vec4_u32(u_input.a | var_2.b.b, select(u_input.a, u_input.a, vec4<bool>(var_2.b.a.x, true, true, false)))), _wgslsmith_dot_vec3_u32(var_2.c, ~vec3<u32>(0u, var_0.x, 1u)), 17852u), var_2.b, vec3<u32>(u_input.a.x, 4294967295u, 24717u));
    var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_1.x, -23001i), -1660i), vec2<i32>(1i & abs(var_1.x), -firstTrailingBit(var_1.x)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-600f, 1000f, 1008f));
    let x = u_input.a;
    s_output = StorageBuffer(-920f, var_1.x);
}

