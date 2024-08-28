struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<u32> = vec3<u32>(25413u, 20452u, 0u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: i32, arg_3: bool) -> i32 {
    let var_0 = Struct_3(global0.a, 1u, global0.c, 1158f);
    global0 = var_0;
    return 28607i;
}

fn func_2(arg_0: vec2<u32>) -> vec2<f32> {
    let var_0 = abs(global0.a.a.b) >= abs(max(i32(-1i) * -global0.a.a.b, min(-47704i, u_input.c.x)));
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(abs(global0.c.a.d), _wgslsmith_add_i32(u_input.c.x, 0i), firstLeadingBit(1i), func_3(vec3<f32>(global0.d, global0.d, -746f), global0.b, global0.a.a.b, var_0)) | (vec4<i32>(-1i, 0i, u_input.b, 26551i) >> ((vec4<u32>(global1.x, arg_0.x, u_input.a.x, global1.x) | global0.a.a.a) % vec4<u32>(32u))), ~vec4<i32>(global0.c.a.b | global0.c.a.d, -1i, -1i, _wgslsmith_div_i32(0i, u_input.c.x))), ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.c.x), u_input.c.xz ^ vec2<i32>(2147483647i, global0.c.a.d)), u_input.b, min(u_input.c.x, ~45402i), 1i ^ _wgslsmith_mult_i32(u_input.b, global0.c.a.d)));
    global1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d));
    let var_3 = Struct_2(global0.a.a, !global0.c.b);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(global0.d)), -1474f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(228f, -125f))))) + vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.d)), 1000f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1687f, global0.d), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1024f, global0.d))), vec2<bool>(var_3.b, var_0))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, global0.d) * vec2<f32>(1752f, 497f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-415f, global0.d))))))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    let var_0 = global0.d;
    let var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(~arg_1, -2147483647i, arg_0.a.d), u_input.c.wzy, arg_0.b), vec3<i32>(select(~arg_1, 1i, !global0.a.b), 4183i, 1i)), min(u_input.c.xwz & ~u_input.c.ywx, vec3<i32>(-38521i, global0.a.a.e, _wgslsmith_clamp_i32(1i, -arg_2.d, firstTrailingBit(u_input.b)))));
    let var_2 = 52058i;
    let var_3 = !select(select(vec4<bool>(arg_0.b, true, global0.c.b & arg_0.b, arg_0.b), !vec4<bool>(global0.c.b, global0.a.b, arg_0.b, global0.a.b), !vec4<bool>(arg_0.b, true, arg_0.b, global0.c.b)), !(!vec4<bool>(true, arg_0.b, arg_0.b, true)), global0.d >= _wgslsmith_f_op_f32(step(531f, _wgslsmith_f_op_f32(min(global0.d, -106f)))));
    var var_4 = u_input.a.x;
    return 4294967295u;
}

fn func_1(arg_0: Struct_2) -> i32 {
    global1 = select(vec3<u32>(arg_0.a.c, _wgslsmith_add_u32(_wgslsmith_mod_u32(36393u, u_input.d), 12892u), ~_wgslsmith_add_u32(6927u, 18580u)), _wgslsmith_add_vec3_u32(arg_0.a.a.yzw, ~global0.c.a.a.wzx), select(-25283i <= abs(u_input.c.x), true, global0.a.b)) >> (~u_input.a % vec3<u32>(32u));
    let var_0 = Struct_1(~global0.a.a.a, u_input.c.x, _wgslsmith_mod_u32(~_wgslsmith_div_u32(1282u, ~1u), ~global0.c.a.c), abs(arg_0.a.d), countOneBits(35316i));
    global1 = ~(~(~(~arg_0.a.a.yxz)));
    global1 = vec3<u32>(~33615u, func_4(global0.c, abs(global0.a.a.b), arg_0.a, _wgslsmith_f_op_vec2_f32(func_2(vec2<u32>(110747u, 11292u) >> (vec2<u32>(u_input.d, global1.x) % vec2<u32>(32u))))), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.a.yz, ~vec2<u32>(global0.b, 4294967295u), ~arg_0.a.a.yy), ~(global0.a.a.a.wz & vec2<u32>(global1.x, u_input.a.x)))) << (select(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.c.a.c, 1u), 0u), _wgslsmith_sub_u32(min(30373u, 31870u), global1.x >> (global0.c.a.a.x % 32u)), ~arg_0.a.c), arg_0.a.a.wwz, !vec3<bool>(any(vec3<bool>(arg_0.b, global0.c.b, global0.a.b)), true, false)) % vec3<u32>(32u));
    global0 = Struct_3(Struct_2(arg_0.a, false), firstTrailingBit(1u), Struct_2(Struct_1(select(global0.a.a.a, global0.a.a.a, global0.a.b), u_input.c.x, u_input.a.x, -min(-23992i, 1i), 12754i), arg_0.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.d * _wgslsmith_f_op_f32(-global0.d)))));
    return func_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1740f, -1577f, global0.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, global0.d, 1008f)))))), arg_0.a.c, select(-2147483647i, abs(max(_wgslsmith_clamp_i32(var_0.d, global0.c.a.b, -45471i), _wgslsmith_dot_vec2_i32(u_input.c.zy, u_input.c.xy))), false), all(vec3<bool>(true, !(!global0.c.b), select(1u, u_input.e, arg_0.b) <= _wgslsmith_dot_vec3_u32(arg_0.a.a.zxz, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(func_1(global0.c), 1i);
    var_0 = _wgslsmith_sub_i32(abs(firstTrailingBit(_wgslsmith_sub_i32(-40952i, countOneBits(11071i)))), ~(-_wgslsmith_sub_i32(abs(global0.a.a.b), u_input.c.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, -580f, global0.d))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, 136f, 966f) * vec3<f32>(global0.d, 1000f, global0.d))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-780f, global0.d, global0.d), vec3<f32>(-628f, global0.d, global0.d), vec3<bool>(global0.a.b, false, global0.c.b))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, 965f, -866f))))));
    let var_2 = Struct_1(global0.c.a.a, -_wgslsmith_clamp_i32(11994i, global0.a.a.b, u_input.c.x >> (4294967295u % 32u)) ^ _wgslsmith_clamp_i32(-1i, -22781i, -2147483647i), ~select(~global0.a.a.a.x | (u_input.d << (u_input.a.x % 32u)), _wgslsmith_div_u32(global1.x, 36380u) << (0u % 32u), false), -global0.c.a.b, _wgslsmith_dot_vec4_i32(vec4<i32>(select(global0.a.a.b & -2147483647i, u_input.c.x, true), u_input.c.x << (~global1.x % 32u), global0.c.a.b, global0.a.a.b), u_input.c));
    var_0 = 2147483647i;
    let var_3 = vec3<bool>(true && (all(vec3<bool>(false, true, false)) && true), true, global0.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-728f * -400f)), _wgslsmith_f_op_vec2_f32(func_2(~global1.yx)).x, var_1.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.d, global0.d, global0.d, -2011f), vec4<f32>(1901f, 1000f, var_1.x, var_1.x)))))));
}

