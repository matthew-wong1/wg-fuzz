struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global2: u32 = 51314u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    global0 = array<vec2<bool>, 28>();
    let var_0 = Struct_2(u_input.d);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-359f, _wgslsmith_f_op_f32(1000f * 1000f), true)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-911f)) * _wgslsmith_f_op_f32(select(1406f, -248f, true))) * -201f) * -109f));
    let var_2 = _wgslsmith_f_op_f32(sign(var_1));
    var var_3 = _wgslsmith_div_i32(-2147483647i, countOneBits(_wgslsmith_mult_i32(u_input.b, -_wgslsmith_mod_i32(u_input.b, var_0.a))));
    return Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, u_input.d), vec2<i32>(arg_0, -2147483647i))), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.a, arg_0), -vec2<i32>(u_input.b, -60847i)), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(arg_0, arg_0)), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 3527i), vec2<i32>(u_input.d, -2147483647i)))), vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_0, 2147483647i, -1i, 2147483647i)), vec4<i32>(u_input.b, -46621i, var_0.a, var_0.a)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = global1.wwy;
    global2 = arg_0.x;
    var_0 = select(select(vec3<bool>(global1.x && true, true, true), select(select(select(global1.xww, vec3<bool>(var_0.x, var_0.x, var_0.x), false), vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, true, global1.x)), !vec3<bool>(var_0.x, true, true), !all(var_0.yz)), select(vec3<bool>(all(vec3<bool>(var_0.x, false, var_0.x)), all(vec4<bool>(false, true, global1.x, false)), false), select(global1.xxx, !global1.yxy, select(var_0.x, true, global1.x)), true)), !select(!global1.wxy, !select(global1.wyz, vec3<bool>(var_0.x, true, global1.x), false), global1.x), vec3<bool>(!any(vec3<bool>(true, true, true)), false, var_0.x));
    let var_1 = func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.d, arg_2.a, u_input.b), vec4<i32>(arg_1.a, 0i, 21614i, arg_1.a)), -(u_input.d | 0i)), min(countOneBits(vec2<i32>(77882i, arg_1.a)), -vec2<i32>(u_input.d, 74211i) >> (vec2<u32>(0u, arg_0.x) % vec2<u32>(32u)))), ~vec2<u32>(_wgslsmith_clamp_u32(u_input.c, _wgslsmith_sub_u32(u_input.a.x, 59687u), _wgslsmith_div_u32(u_input.c, arg_0.x)), ~4294967295u));
    global1 = !(!vec4<bool>(global1.x, var_0.x, select(var_0.x == var_0.x, true, all(global1.yyw)), !global1.x));
    return var_0.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<vec2<bool>, 28>();
    var var_0 = Struct_2(-arg_0.x);
    return vec4<bool>(func_3(~(vec4<u32>(u_input.c, 1u, 4294967295u, 12763u) >> (vec4<u32>(u_input.c, u_input.c, 4294967295u, 16004u) % vec4<u32>(32u))), Struct_2(arg_1.a.x), Struct_2(-_wgslsmith_mod_i32(arg_0.x, arg_0.x))), false, all(select(select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), !vec4<bool>(false, false, true, global1.x)), vec4<bool>(2147483647i < u_input.b, true, global1.x, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, true, true, global1.x)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 28>();
    global2 = _wgslsmith_add_u32(abs(~(28787u ^ ~u_input.c)), ~(~(~44635u) << (~(~0u) % 32u)));
    global1 = select(select(select(func_2(~vec2<i32>(u_input.b, u_input.d), func_1(-2147483647i, u_input.a.xz)), vec4<bool>(global1.x, global1.x, select(false, global1.x, global1.x), any(vec2<bool>(global1.x, true))), true), vec4<bool>(true, func_3(vec4<u32>(u_input.c, 25730u, 57575u, u_input.a.x) | vec4<u32>(0u, u_input.a.x, u_input.c, u_input.c), Struct_2(-27820i), Struct_2(33125i)), func_2(~vec2<i32>(u_input.b, u_input.b), Struct_1(vec2<i32>(0i, -26616i))).x, true), _wgslsmith_div_u32(19595u, 29099u) >= ~(~u_input.a.x)), vec4<bool>(abs(1i) <= -_wgslsmith_sub_i32(2147483647i, u_input.d), true, false, true), vec4<bool>(true, true, global1.x, !(!global1.x)));
    let var_0 = firstLeadingBit(~u_input.a);
    global0 = array<vec2<bool>, 28>();
    var var_1 = select(func_2(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.d, -9978i), -vec2<i32>(16682i, 9785i), countOneBits(vec2<i32>(u_input.d, -1i))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, -26768i), vec2<i32>(1i, 2147483647i)), vec2<i32>(-14004i, 63143i), -vec2<i32>(u_input.b, u_input.d))), func_1(_wgslsmith_div_i32(abs(20874i), ~u_input.d), reverseBits(vec2<u32>(1u, 16595u)))).xx, global1.zw, global1.x);
    var var_2 = _wgslsmith_sub_u32(94299u ^ ~_wgslsmith_dot_vec3_u32(countOneBits(var_0), ~var_0), ~(var_0.x | var_0.x) >> (43255u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f)), 1f), vec2<i32>(-2147483647i, 2147483647i), u_input.a);
}

