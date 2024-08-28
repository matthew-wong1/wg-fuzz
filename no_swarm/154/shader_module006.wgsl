struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> bool {
    global1 = !(!(!vec4<bool>(true, global1.x == global1.x, true, any(vec3<bool>(global1.x, true, global1.x)))));
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.a.x))))))));
    let var_2 = ~(-37037i);
    let var_3 = u_input.b;
    return !(!(var_3.x != (i32(-1i) * -20504i)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec4<f32>) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(arg_2.x, global0.b.x), _wgslsmith_f_op_f32(trunc(395f)), 1445f))) * global0.a), vec2<f32>(global0.b.x, global0.b.x));
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-341f, -1172f, global0.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, var_0.b.x, 1687f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.wy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-906f, 2019f))), global1.x))));
    let var_2 = ~(select(~(~u_input.a.x), 1u, global1.x) << (reverseBits(1u) % 32u));
    return vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.b.x, 12284i) ^ vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_mod_vec2_i32(u_input.b.xx, u_input.b.xy)), -vec2<i32>(u_input.b.x, -19141i)), _wgslsmith_div_i32(-37277i, u_input.b.x)), -_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_mod_i32(min(-40374i, u_input.b.x), -u_input.b.x)), _wgslsmith_dot_vec2_i32(u_input.b.yy, vec2<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-27977i, 1i, 1i, u_input.b.x), vec4<i32>(u_input.b.x, 60968i, u_input.b.x, u_input.b.x))), -36082i)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = abs(firstTrailingBit(func_4(vec3<u32>(u_input.c, u_input.c, 1u) ^ abs(u_input.a.wzx), vec4<bool>(func_3(Struct_1(vec3<f32>(472f, var_1.b.x, var_0.a.x), vec2<f32>(global0.b.x, 413f)), var_0, u_input.a.wzw), all(vec2<bool>(global1.x, global1.x)), global1.x, global1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, 496f, -1000f, global0.a.x), vec4<f32>(105f, 131f, 345f, 617f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-479f, 573f, var_1.b.x, var_1.a.x)))))));
    let var_3 = true;
    let var_4 = var_2.x;
    return 17549i;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: i32) -> Struct_1 {
    global1 = select(select(select(!vec4<bool>(global1.x, false, global1.x, global1.x), select(select(vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(true, global1.x, true, false), false), select(vec4<bool>(true, true, true, global1.x), vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(false, global1.x, false, true)), !vec4<bool>(global1.x, true, true, false)), !(!vec4<bool>(true, global1.x, global1.x, global1.x))), vec4<bool>(!(false && global1.x), all(vec2<bool>(global1.x, global1.x)), global1.x, !(u_input.b.x <= -1i)), vec4<bool>(false, global1.x, true, !(global1.x | global1.x))), !vec4<bool>(all(select(global1.wz, vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x))), _wgslsmith_mult_i32(arg_2, -54424i) > arg_0.x, global1.x, true), false);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.b.x)) - _wgslsmith_f_op_f32(abs(global0.b.x))));
    global1 = select(vec4<bool>(true, global1.x, global1.x, true), !(!vec4<bool>(all(global1.wz), global1.x, true, any(vec3<bool>(global1.x, true, global1.x)))), !select(select(vec4<bool>(true, global1.x, true, false), vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(global1.x, true, global1.x, global1.x)), !(!vec4<bool>(false, false, global1.x, global1.x)), true));
    var var_1 = -arg_0.x;
    var var_2 = -_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_1.x, 1i), _wgslsmith_mod_i32(max(arg_1.x, u_input.b.x), u_input.b.x)) ^ _wgslsmith_clamp_i32(arg_0.x, ~1i, arg_0.x ^ firstTrailingBit(arg_0.x));
    return Struct_1(global0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.a.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(873f, global0.b.x)), false)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 1371f), vec2<f32>(global0.b.x, global0.a.x), global1.x))))), global0.a.xz));
}

fn func_1() -> i32 {
    let var_0 = u_input.c;
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-570f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1000f))));
    global0 = func_5(select(-(~vec4<i32>(-1i, -7100i, 2147483647i, 27847i)), ~vec4<i32>(u_input.b.x >> (42147u % 32u), -12187i, 0i, u_input.b.x >> (var_0 % 32u)), any(vec4<bool>(global0.b.x == global0.a.x, true, true, false))), vec3<i32>(func_2(Struct_1(vec3<f32>(global0.a.x, global0.b.x, 709f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(335f, global0.a.x))))), u_input.b.x, _wgslsmith_dot_vec2_i32(select(u_input.b.zz, vec2<i32>(67149i, u_input.b.x), any(vec4<bool>(false, global1.x, global1.x, false))), _wgslsmith_sub_vec2_i32(~u_input.b.xz, vec2<i32>(0i, -1i)))), u_input.b.x);
    var var_1 = 48147u;
    var var_2 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-global0.b));
    return 1549i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(global1.x, global1.x & false, global1.x, false);
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(global0.a, global0.a, vec3<bool>(global1.x, true, false))))))), global0.a.zz);
    var var_1 = vec3<i32>(2147483647i, max(~(abs(36062i) & firstLeadingBit(u_input.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, u_input.b.x, u_input.b.x), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 2147483647i), u_input.b.x, u_input.b.x), vec4<i32>(1i, 1i, func_1(), u_input.b.x))), ~_wgslsmith_div_i32(firstTrailingBit(-353i), 40810i));
    var_1 = -func_4(_wgslsmith_div_vec3_u32(vec3<u32>(~0u, 49654u, ~2751u), ~(~vec3<u32>(u_input.c, 4294967295u, 64492u))), select(vec4<bool>(false, global1.x & global1.x, !global1.x, global1.x), !select(vec4<bool>(false, false, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x), global1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1871f, -147f, global0.b.x, var_0.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(430f, var_0.a.x, -2351f, 310f)))));
    var var_2 = func_5((~select(vec4<i32>(1i, var_1.x, var_1.x, var_1.x), vec4<i32>(-14397i, 2147483647i, -37299i, u_input.b.x), global1.x) ^ (min(vec4<i32>(1052i, 31730i, 2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, -1i)) ^ -vec4<i32>(var_1.x, u_input.b.x, var_1.x, u_input.b.x))) << (abs(_wgslsmith_clamp_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(u_input.a, u_input.a), ~vec4<u32>(u_input.c, u_input.c, u_input.c, 35557u))) % vec4<u32>(32u)), vec3<i32>(var_1.x, _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b.x, 2147483647i, var_1.x, var_1.x), vec4<i32>(40460i, u_input.b.x, u_input.b.x, var_1.x), global1.x), vec4<i32>(18787i, -20468i, u_input.b.x, u_input.b.x))), i32(-1i) * -(~var_1.x)), firstLeadingBit(var_1.x));
    let var_3 = func_5(~(-max(~vec4<i32>(1i, 33144i, -68805i, -1i), vec4<i32>(u_input.b.x, -1i, var_1.x, -17912i))), _wgslsmith_div_vec3_i32(countOneBits(max(-u_input.b, ~vec3<i32>(u_input.b.x, 0i, var_1.x))), u_input.b), firstTrailingBit(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(940f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * var_2.b.x)))))), ~u_input.b & (u_input.b | vec3<i32>(-1i, -12551i, -u_input.b.x)), ~_wgslsmith_sub_u32(4294967295u, u_input.a.x), reverseBits(max(~4294967295u, _wgslsmith_sub_u32(46036u, 35742u)) ^ abs(~u_input.a.x)));
}

