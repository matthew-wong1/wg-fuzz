struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec3<bool>,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -124f)));
    return 65458u;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1048f))), -310f)));
    global0 = !(!(!vec4<bool>(true, any(vec4<bool>(global0.x, global0.x, true, true)), any(vec4<bool>(true, global0.x, global0.x, true)), all(vec4<bool>(true, true, global0.x, false)))));
    let var_1 = abs(-arg_0.x);
    let var_2 = vec3<u32>(firstTrailingBit(~4294967295u), u_input.b.x << (_wgslsmith_sub_u32(~firstTrailingBit(u_input.c.x), abs(func_2(arg_0.x, u_input.c.zx, vec3<f32>(var_0, var_0, -1000f), var_0))) % 32u), 14774u);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, 705f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -1321f) - vec2<f32>(1151f, -454f)))) - vec2<f32>(var_0, var_0)));
    return Struct_2(global0.x, any(!select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, false, true), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), true))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> bool {
    global0 = !vec4<bool>(all(!vec4<bool>(false, global0.x, arg_1.a, true)) | select(true, true, true), any(vec3<bool>(arg_0.b, true, true)), !arg_1.a, true);
    global0 = select(select(select(select(vec4<bool>(false, true, arg_1.a, true), select(vec4<bool>(false, arg_1.b, global0.x, false), vec4<bool>(arg_1.b, true, true, arg_0.a), false), u_input.c.x == 1u), vec4<bool>(any(vec3<bool>(arg_1.a, false, arg_0.b)), true, all(vec3<bool>(global0.x, false, global0.x)), arg_1.a), !(!vec4<bool>(arg_0.b, true, true, global0.x))), vec4<bool>(arg_1.a, all(vec3<bool>(global0.x, arg_0.a, true)), true, !(!arg_0.b)), !arg_1.a), !(!vec4<bool>(arg_2 > 1000f, any(vec4<bool>(arg_0.b, arg_0.a, arg_1.a, global0.x)), select(arg_0.b, global0.x, true), !arg_0.b)), true);
    global0 = select(vec4<bool>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 4294967295u), ~u_input.b.x) <= min(35609u, u_input.c.x), true, true, func_1(~_wgslsmith_div_vec2_i32(u_input.e.xz, u_input.e.zz)).a), vec4<bool>(true, arg_0.a, true, !global0.x), !select(!vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(any(vec4<bool>(false, arg_1.a, arg_0.a, true)), !global0.x, true, select(arg_0.a, false, true)), !(!vec4<bool>(false, global0.x, true, false))));
    global0 = !vec4<bool>(!func_1(u_input.e.zy).b && !arg_1.a, any(select(!global0.zzz, !global0.wwx, all(vec4<bool>(arg_1.a, false, global0.x, arg_1.b)))), true, any(global0.zw));
    var var_0 = vec3<bool>(all(!select(vec4<bool>(true, false, arg_0.a, arg_0.a), select(vec4<bool>(arg_1.b, true, arg_1.a, arg_1.b), vec4<bool>(global0.x, false, arg_1.b, arg_1.a), vec4<bool>(arg_0.a, false, true, false)), all(global0.ywx))), true, !all(vec3<bool>(global0.x != arg_0.b, false, global0.x)));
    return !select(true, arg_0.a, !(!(!global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.c.zyy, u_input.c.zzz)), func_1(vec2<i32>(-1i) * -(u_input.e.zz ^ u_input.e.zz)));
    let var_1 = all(select(vec4<bool>(global0.x & true, global0.x, !all(vec3<bool>(false, false, global0.x)), var_0.b.b && all(vec2<bool>(true, true))), vec4<bool>(all(vec2<bool>(global0.x, false)), func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e.x, 36807i), vec2<i32>(u_input.a, u_input.a))).a, true, !var_0.b.a | !global0.x), select(vec4<bool>(var_0.a >= 0u, true, global0.x, !global0.x), vec4<bool>(true, var_0.b.b, func_3(var_0.b, var_0.b, 178f), all(vec2<bool>(var_0.b.b, var_0.b.a))), vec4<bool>(true, all(global0.xwz), any(vec2<bool>(true, global0.x)), true))));
    let var_2 = true;
    var var_3 = -(~(~_wgslsmith_add_vec2_i32(u_input.e.xz, u_input.e.xx))) & _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, 6138i), u_input.d), 2147483647i), vec2<i32>(-_wgslsmith_mult_i32(1i, u_input.e.x), -5894i), select(-u_input.e.zz, ~vec2<i32>(u_input.d, u_input.d), vec2<bool>(var_0.b.b, true)) << (u_input.c.yz % vec2<u32>(32u)));
    global0 = !vec4<bool>(!all(select(global0.xzz, global0.zxw, false)), var_1, all(select(global0.wyw, vec3<bool>(global0.x, var_0.b.b, var_0.b.a), var_2)) || false, all(!(!vec4<bool>(false, false, var_1, var_0.b.a))));
    var var_4 = 0i;
    var var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-198f, -1407f, 592f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(478f, -967f, -304f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(411f, -913f, -1020f)))), vec3<bool>(!var_1, !global0.x, !var_1)))), _wgslsmith_mod_u32(var_0.a, ~(~_wgslsmith_div_u32(5068u, 34466u))), abs(_wgslsmith_add_i32(u_input.a, 15449i)) ^ _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(var_3.x, -2147483647i, u_input.a, 23984i)), vec4<i32>(-var_3.x, 1i, -15939i, reverseBits(38065i))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.b.x) >> (_wgslsmith_clamp_u32(~(~u_input.c.x), ~30631u, ~(~114285u)) % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a.x, var_5.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_5.a.x)), -193f)), vec4<i32>(u_input.d, max(-var_3.x, ~0i), _wgslsmith_clamp_i32(-var_3.x, 2147483647i, _wgslsmith_clamp_i32(firstLeadingBit(-2147483647i), _wgslsmith_mod_i32(0i, var_3.x), var_5.c)), _wgslsmith_sub_i32(u_input.a, _wgslsmith_add_i32(-var_3.x, u_input.d))), 4294967295u);
}

