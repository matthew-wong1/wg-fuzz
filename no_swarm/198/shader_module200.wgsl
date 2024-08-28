struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(33183u, 0u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>) -> vec2<u32> {
    global0 = vec2<u32>(u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstTrailingBit(global0.x) | global0.x, 0u, firstTrailingBit(u_input.c.x)), ~abs(~28055u)));
    return ~(~(min(u_input.c.yz, vec2<u32>(u_input.c.x, global0.x) << (vec2<u32>(u_input.c.x, u_input.b.x) % vec2<u32>(32u))) | ~(~u_input.c.yz)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_3) -> i32 {
    global0 = func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_2.b, arg_2.b), _wgslsmith_f_op_f32(-arg_2.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-422f, arg_2.b))))));
    let var_0 = ~_wgslsmith_clamp_i32(~(i32(-1i) * -2147483647i), -1i, i32(-1i) * -20034i);
    var var_1 = arg_2.c.c;
    var_1 = select(select(arg_2.c.c, arg_2.a.c, false), !vec4<bool>(any(select(vec3<bool>(false, var_1.x, var_1.x), arg_2.c.c.xww, false)), var_1.x, true, min(global0.x, arg_0.x) != arg_2.c.a.x), select(vec4<bool>(false, any(vec4<bool>(var_1.x, true, var_1.x, arg_2.c.c.x)), all(select(arg_2.a.c.zy, vec2<bool>(arg_2.a.c.x, arg_2.c.c.x), true)), false), select(vec4<bool>(true, true, false, true), arg_2.c.c, var_1.x), select(arg_2.c.c, vec4<bool>(true, var_0 < 9801i, true, arg_2.a.c.x), arg_2.a.c)));
    return var_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_1.x))))));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(func_2(vec3<u32>(4294967295u, arg_2.e.x, arg_2.b.a.x), 58539u, Struct_3(Struct_1(u_input.b.xy, 0i, arg_3.b.c), 886f, Struct_1(vec2<u32>(1u, 359u), 15386i, vec4<bool>(arg_0.x, false, false, false)))), min(0i, arg_3.b.b), 1i, arg_2.b.b), select(-vec4<i32>(arg_3.c.x, arg_2.c.x, -34790i, -13619i), (vec4<i32>(1i, u_input.a.x, -1i, arg_2.b.b) << (u_input.b % vec4<u32>(32u))) >> (vec4<u32>(arg_3.b.a.x, arg_2.b.a.x, 12308u, arg_2.e.x) % vec4<u32>(32u)), !(!vec4<bool>(true, false, arg_3.b.c.x, true)))), vec4<i32>(arg_3.b.b, arg_2.b.b, 9301i, i32(-1i) * -61948i));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: i32) -> vec2<u32> {
    global0 = _wgslsmith_mult_vec2_u32(arg_0.a, vec2<u32>(~101765u, 4294967295u));
    var var_0 = Struct_1(arg_0.a, _wgslsmith_dot_vec4_i32(select(vec4<i32>(func_1(vec3<bool>(true, true, arg_0.c.x), vec2<f32>(1000f, 1669f), Struct_2(u_input.a.zx, arg_0, vec2<i32>(arg_3, 50776i), vec3<bool>(arg_2.x, arg_0.c.x, false), vec2<u32>(1u, 22517u)), Struct_2(u_input.a.yy, arg_0, u_input.a.xx, vec3<bool>(true, arg_2.x, arg_0.c.x), arg_0.a)), min(arg_3, 41315i), reverseBits(arg_3), _wgslsmith_clamp_i32(1i, arg_0.b, u_input.a.x)), min(vec4<i32>(0i, arg_0.b, arg_0.b, arg_0.b) << (u_input.c % vec4<u32>(32u)), select(vec4<i32>(-1i, arg_3, u_input.a.x, 14739i), vec4<i32>(17382i, arg_0.b, -1i, u_input.a.x), false)), select(select(arg_0.c, vec4<bool>(arg_2.x, arg_1.x, arg_1.x, false), false), select(arg_0.c, vec4<bool>(arg_0.c.x, true, arg_2.x, true), arg_0.c), select(vec4<bool>(false, false, arg_1.x, arg_0.c.x), arg_0.c, arg_0.c.x))), select(firstTrailingBit(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, arg_0.b)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(arg_3, -23575i, arg_3, 43353i), vec4<i32>(u_input.a.x, arg_3, 5391i, -4236i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b, 0i, arg_3, arg_0.b), vec4<i32>(-60214i, -2147483647i, -2147483647i, arg_3)), arg_0.c.x & arg_1.x)), !select(arg_0.c, !select(vec4<bool>(arg_1.x, false, arg_0.c.x, false), arg_0.c, arg_0.c), !arg_1.x));
    let var_1 = arg_0.a.x;
    global0 = arg_0.a;
    let var_2 = Struct_1(_wgslsmith_add_vec2_u32(~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(56269u, 51017u), vec2<u32>(u_input.c.x, 0u))), u_input.c.xz), 0i, select(select(!var_0.c, vec4<bool>(true, true, true, true), arg_1.x), vec4<bool>(all(vec2<bool>(true, false)), arg_2.x, 0i >= reverseBits(u_input.a.x), select(false, !arg_1.x, all(vec2<bool>(arg_1.x, false)))), vec4<bool>(true & any(arg_0.c.wxx), any(vec2<bool>(true, arg_1.x)), var_0.c.x, true & all(var_0.c))));
    return ~(~vec2<u32>(arg_0.a.x, 6357u >> (var_1 % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_sub_i32(~(-(~0i)), 40176i);
    global0 = u_input.c.zz;
    var var_1 = select(!(!arg_0.c.zz), !arg_0.c.xx, !select(!arg_0.c.zz, vec2<bool>(arg_0.c.x, all(arg_0.c.yzz)), !vec2<bool>(arg_0.c.x, false)));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-967f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-624f - -1000f) - -1000f)))));
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-670f - -214f) - _wgslsmith_f_op_f32(select(-796f, 691f, true))) - 387f), 891f, -616f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -311f), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -284f)), arg_0.c.x | any(vec4<bool>(false, true, true, false))))), -var_0, firstLeadingBit(u_input.a << (min(abs(u_input.c.zyy), _wgslsmith_mult_vec3_u32(u_input.c.xxz, u_input.c.zwx)) % vec3<u32>(32u))), var_2.a.x, ~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(any(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false))), _wgslsmith_f_op_f32(f32(-1f) * -397f) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-472f)) * _wgslsmith_f_op_f32(f32(-1f) * -352f)))), false, true);
    var var_1 = _wgslsmith_f_op_f32(ceil(-516f));
    let x = u_input.a;
    s_output = func_5(Struct_1(func_4(Struct_1(~u_input.c.yw, _wgslsmith_sub_i32(20673i, u_input.a.x), select(var_0, var_0, false)), select(var_0.yy, !var_0.yw, global0.x != 52203u), vec2<bool>(true, false), func_1(var_0.zwz, _wgslsmith_f_op_vec2_f32(vec2<f32>(1064f, 1496f) + vec2<f32>(-1800f, -192f)), Struct_2(vec2<i32>(-2147483647i, -27549i), Struct_1(vec2<u32>(global0.x, 12479u), 15266i, vec4<bool>(var_0.x, true, var_0.x, false)), u_input.a.yx, var_0.xxy, u_input.b.zy), Struct_2(vec2<i32>(2147483647i, u_input.a.x), Struct_1(vec2<u32>(0u, global0.x), u_input.a.x, vec4<bool>(var_0.x, false, var_0.x, var_0.x)), u_input.a.xx, var_0.wwy, u_input.c.zz))), ~30804i, vec4<bool>(all(vec3<bool>(var_0.x, var_0.x, true)), all(select(var_0.zwz, var_0.zxz, var_0.x)), var_0.x, any(var_0.xz))), 28337u);
}

