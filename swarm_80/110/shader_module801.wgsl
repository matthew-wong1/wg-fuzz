struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
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

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = vec4<i32>(-31080i, ~min(-countOneBits(13762i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, arg_0.d, -18046i), vec4<i32>(-10663i, arg_0.d, -1i, u_input.b))), -arg_0.d, -30270i);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2347f))))));
    let var_2 = arg_0;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1657f), _wgslsmith_div_f32(1550f, var_2.a.x)))), 634f));
    var var_3 = max(global0.d, _wgslsmith_mod_u32(u_input.a.x, max(~39638u, _wgslsmith_mod_u32(global0.c, ~0u))));
    return 0u;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(arg_0.a)), abs((~global0.a.yyy >> (arg_0.b % vec3<u32>(32u))) ^ ~select(arg_0.b, vec3<u32>(0u, 0u, 3099u), arg_0.c.e)), Struct_1(~global0.a, true, arg_0.c.a.x, ~arg_0.b.x | max(~global0.d, ~arg_0.c.c), global0.e), arg_0.d);
    var var_1 = Struct_2(var_0.a, ~(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(global0.d, 4294967295u, global0.d)), firstTrailingBit(global0.a.xwz)) << (_wgslsmith_clamp_vec3_u32(var_0.c.a.ywz, vec3<u32>(55190u, 4294967295u, var_0.b.x), arg_0.b >> (arg_0.c.a.wxz % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_1(vec4<u32>(func_3(var_0), 36134u, global0.c, countOneBits(min(1u, 49728u))), global0.e, arg_1, firstTrailingBit(abs(38435u)), !(!(arg_1 < arg_1))), 57775i);
    var var_2 = vec3<u32>(67241u & arg_1, var_1.b.x, 1u);
    var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1102f, -926f, 1239f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_0.a.x, var_1.a.x)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(trunc(-112f))), var_0.a, var_1.c.b))), select(_wgslsmith_mult_vec3_u32(select(global0.a.yxx ^ vec3<u32>(4294967295u, 1u, 25695u), arg_0.b << (arg_0.c.a.zxy % vec3<u32>(32u)), vec3<bool>(false, false, false)), vec3<u32>(max(arg_0.b.x, global0.c), firstTrailingBit(var_0.b.x), 4294967295u)), select(~firstLeadingBit(var_1.c.a.xzw), select(_wgslsmith_clamp_vec3_u32(global0.a.ywy, vec3<u32>(u_input.a.x, arg_1, var_2.x), global0.a.yxz), arg_0.b, true), any(!vec2<bool>(var_1.c.e, arg_0.c.e))), !vec3<bool>(!var_0.c.b, true, all(vec4<bool>(global0.e, false, true, var_0.c.b)))), arg_0.c, -max(~2175i, var_1.d));
    let var_3 = Struct_1(~vec4<u32>(~global0.a.x << (33296u % 32u), ~_wgslsmith_clamp_u32(1u, 1u, var_0.b.x), _wgslsmith_mod_u32(abs(u_input.a.x), reverseBits(1u)), var_1.b.x), any(!select(select(vec3<bool>(false, false, var_1.c.e), vec3<bool>(false, false, var_1.c.e), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), false)), global0.c, countOneBits(_wgslsmith_add_u32(71355u, 72900u)), any(select(select(vec2<bool>(true, true), vec2<bool>(false, var_1.c.e), vec2<bool>(var_1.c.e, global0.b)), !select(vec2<bool>(false, global0.b), vec2<bool>(arg_0.c.b, true), true), select(vec2<bool>(false, var_1.c.e), !vec2<bool>(true, global0.e), arg_0.c.b))));
    return Struct_1(arg_0.c.a >> (vec4<u32>(countOneBits(_wgslsmith_div_u32(69578u, var_0.b.x)), ~(~24212u), ~var_2.x & ~18141u, var_0.c.d) % vec4<u32>(32u)), false, _wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(56560u, 0u)) & abs(vec2<u32>(arg_1, arg_0.c.d)), global0.a.zw), global0.c, arg_0.d >= var_1.d);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = vec4<bool>(true, true, all(!(!(!vec2<bool>(global0.b, global0.e)))), !all(select(select(vec3<bool>(global0.e, false, true), vec3<bool>(true, global0.e, false), true), !vec3<bool>(false, global0.b, true), 8667i <= arg_3)));
    let var_1 = 12590u;
    global0 = func_2(Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1127f, -688f, arg_1))))), ~_wgslsmith_clamp_vec3_u32(~global0.a.wxw, _wgslsmith_sub_vec3_u32(global0.a.wyy, global0.a.yzw), firstTrailingBit(global0.a.xww)), Struct_1(~(~vec4<u32>(global0.c, u_input.a.x, u_input.a.x, var_1)), var_0.x && true, _wgslsmith_sub_u32(global0.d | global0.c, _wgslsmith_div_u32(u_input.a.x, 4294967295u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d, 35376u, 97179u, 26671u), global0.a), all(vec2<bool>(true, true))), ~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, arg_0.x), vec2<i32>(u_input.b, u_input.b)), ~77260i)), ~16087u | _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global0.c, global0.a.x, 1u)), global0.a.ywz));
    global0 = Struct_1(global0.a, true, ~(~(_wgslsmith_sub_u32(var_1, var_1) >> (var_1 % 32u))), 75282u, global0.b);
    let var_2 = vec2<u32>(_wgslsmith_div_u32(u_input.a.x, var_1), abs(var_1));
    return func_2(Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(182f, arg_1, 1173f)))))), vec3<u32>(~_wgslsmith_mult_u32(8501u, 1u), 66909u, ~(19219u | var_2.x)), func_2(Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1150f, arg_1, 1793f), vec3<f32>(397f, 693f, arg_1))), vec3<u32>(global0.c, global0.c, 83768u), func_2(Struct_2(vec3<f32>(964f, arg_1, 1305f), vec3<u32>(4294967295u, 4294967295u, u_input.a.x), Struct_1(vec4<u32>(var_2.x, var_1, 4294967295u, global0.a.x), global0.b, 23273u, 64521u, false), arg_3), 13285u), _wgslsmith_sub_i32(1i, arg_2)), ~(~u_input.a.x)), -12922i), firstTrailingBit(102835u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.a.x, ~(_wgslsmith_mod_u32(min(0u, 1u), _wgslsmith_div_u32(79870u, u_input.a.x)) ^ 4294967295u));
    let var_1 = -u_input.b ^ u_input.b;
    global0 = func_1(~select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1, var_1, 2147483647i), vec4<i32>(2147483647i, u_input.b, 59656i, 1i)), var_1), countOneBits(vec2<i32>(-21127i, -2147483647i)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1, -1i);
    let var_2 = 0u;
    var var_3 = global0.b;
    var_3 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1486f, -1630f)))));
}

