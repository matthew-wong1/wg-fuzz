struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = _wgslsmith_add_u32(1u, ~(~_wgslsmith_add_u32(23297u, _wgslsmith_clamp_u32(27362u, u_input.a, 33707u))));
    var_0 = (u_input.a ^ _wgslsmith_sub_u32(~4294967295u, u_input.a & _wgslsmith_add_u32(u_input.b, 4294967295u))) ^ _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(57669u, 1398u, 4294967295u)), firstTrailingBit(vec3<u32>(60094u, u_input.b, 4294967295u))), ~select(vec3<u32>(u_input.a, u_input.a, u_input.b) << (vec3<u32>(u_input.b, 9473u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 62045u, 32688u), vec3<u32>(u_input.b, u_input.b, u_input.b)), true));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(round(-715f)));
    var var_2 = !((true | (true | all(vec2<bool>(true, false)))) == any(vec4<bool>(true, true, true, true)));
    let var_3 = var_1.a;
    return min(firstLeadingBit(_wgslsmith_div_i32(select(u_input.e.x, u_input.e.x, arg_0 < global0.a), 6803i)), 2147483647i);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(785f * arg_2))), arg_2)));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: i32) -> Struct_4 {
    global0 = func_3(vec3<f32>(global0.a, 911f, 121f), Struct_1(vec4<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, false)) || false, u_input.b <= ~u_input.a, true), ~0i == ~(~arg_0.x), vec4<i32>(func_2(2471f), 2490i, ~u_input.e.x, _wgslsmith_mult_i32(select(-21615i, -1i, true), _wgslsmith_div_i32(0i, arg_1))), vec2<bool>(true, true & (-468f == global0.a))), _wgslsmith_f_op_f32(exp2(global0.a)));
    let var_0 = Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global0.a)))), u_input.e.wy, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2792f, global0.a))))), vec2<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1729f)))))), select(u_input.e.wx, _wgslsmith_mod_vec2_i32(u_input.e.zx, ~u_input.e.yy) >> ((_wgslsmith_mult_vec2_u32(vec2<u32>(12034u, u_input.b), vec2<u32>(u_input.a, u_input.a)) ^ select(vec2<u32>(46432u, u_input.a), vec2<u32>(82473u, 1u), vec2<bool>(false, true))) % vec2<u32>(32u)), u_input.b > 4294967295u), Struct_1(vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true), 1f <= _wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(floor(941f)))), u_input.e, select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(false, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), any(vec2<bool>(false, true))))));
    global0 = func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(233f, 2075f, global0.a)))))), Struct_1(vec4<bool>(var_0.e.a.x, (-340f > global0.a) || false, -arg_1 < ~var_0.d.x, true), var_0.e.a.x, min(~vec4<i32>(1i, -15619i, 2147483647i, var_0.b.x) | vec4<i32>(u_input.e.x, arg_1, var_0.d.x, arg_2), var_0.e.c), vec2<bool>(var_0.e.b, any(select(vec4<bool>(var_0.e.d.x, var_0.e.d.x, var_0.e.d.x, false), vec4<bool>(true, true, var_0.e.d.x, var_0.e.b), var_0.e.a)))), var_0.c.x);
    return Struct_4(global0.a, firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.e.yw, _wgslsmith_sub_vec2_i32(abs(vec2<i32>(0i, 2147483647i)), _wgslsmith_add_vec2_i32(var_0.d, vec2<i32>(var_0.e.c.x, 1i))), arg_0.zw)), var_0.c, arg_0.yz, var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<i32>(~u_input.d, -_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.c, u_input.e.x), u_input.c, -37590i), -1i, u_input.e.x), -min(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.d, -2314i, u_input.e.x), _wgslsmith_add_vec4_i32(u_input.e, vec4<i32>(-2657i, u_input.e.x, u_input.d, 2147483647i)))), abs(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.c, u_input.d), -1i) ^ 12507i));
    var var_1 = max(u_input.e.x, var_0.e.c.x) & ~(1i << (~u_input.a % 32u));
    var var_2 = select(var_0.e.a.wyw, !vec3<bool>(var_0.e.d.x || var_0.e.b, !(u_input.b == u_input.b), false), var_0.e.a.x);
    var var_3 = false;
    let var_4 = vec4<bool>(func_1(max(var_0.e.c, _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.e.c, vec4<i32>(-28734i, 2147483647i, var_0.b.x, 1i)), vec4<i32>(var_0.d.x, 1i, 1i, u_input.d))), ~_wgslsmith_mod_i32(-30264i, func_2(var_0.a)), -9553i).e.b, false, true || all(func_1(vec4<i32>(u_input.c, 1928i, var_0.e.c.x, -2147483647i), var_0.b.x, _wgslsmith_add_i32(var_0.e.c.x, u_input.e.x)).e.a.wwx), all(!(!vec3<bool>(var_0.e.b, true, false))) | (var_0.c.x != _wgslsmith_f_op_f32(f32(-1f) * -205f)));
    var_3 = var_2.x && true;
    var_2 = var_4.wyy;
    var_1 = u_input.d;
    let var_5 = var_2.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1182f, _wgslsmith_f_op_f32(step(-134f, 1000f))))))), _wgslsmith_mod_vec3_i32(-_wgslsmith_mult_vec3_i32(var_0.e.c.xyx, u_input.e.zzw), -vec3<i32>(-1i, var_0.e.c.x, _wgslsmith_sub_i32(-27052i, u_input.c))), var_0.e.c.xyx);
}

