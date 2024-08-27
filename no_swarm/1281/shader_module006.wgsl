struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = !(firstLeadingBit(arg_3.a.b) >= ~(4294967295u << (_wgslsmith_sub_u32(arg_0.x, 4294967295u) % 32u)));
    var_0 = all(!(!(!(!vec3<bool>(arg_3.a.a, false, false)))));
    let var_1 = arg_3;
    var_0 = arg_3.a.a;
    var var_2 = countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~var_1.a.b, arg_3.a.b), var_1.a.b | arg_1.x, _wgslsmith_mult_u32(53915u, 27737u) >> (~u_input.c % 32u), _wgslsmith_mod_u32(reverseBits(1u), _wgslsmith_mod_u32(61147u, u_input.b))), _wgslsmith_add_vec4_u32(arg_0, vec4<u32>(arg_0.x, var_1.a.b, arg_0.x, 37747u)) >> (arg_0 % vec4<u32>(32u))));
    return arg_0;
}

fn func_2() -> Struct_2 {
    var var_0 = ~vec4<u32>(countOneBits(u_input.c) ^ u_input.b, 27988u, ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(17555u, 4294967295u, u_input.b, u_input.c)), func_3(vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c), vec2<u32>(u_input.b, u_input.c), u_input.a.x, Struct_2(Struct_1(false, u_input.b)))), 8042u);
    let var_1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(4921u), 1u, ~(~63125u), 0u), min(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, u_input.b, var_0.x, 4294967295u), vec4<u32>(var_0.x, 4294967295u, 912u, 35410u), vec4<u32>(1u, u_input.b, 4294967295u, 64650u))), ~min(vec4<u32>(u_input.c, 30091u, var_0.x, u_input.b), vec4<u32>(4294967295u, 26702u, var_0.x, 33920u))));
    var_0 = var_1;
    var_0 = var_1;
    var_0 = var_1;
    return Struct_2(Struct_1(true, var_0.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: bool, arg_3: vec3<u32>) -> vec2<bool> {
    let var_0 = vec2<bool>(all(!(!select(vec4<bool>(true, arg_2, arg_1, arg_2), vec4<bool>(arg_1, true, arg_1, true), arg_0.x))), false);
    var var_1 = func_2();
    var var_2 = !var_1.a.a;
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1031f, 1149f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-318f, -591f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(487f, 1090f)), arg_0.yz)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-387f, 236f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-693f, -997f)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -2641f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1411f, 694f) - vec2<f32>(119f, -1182f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1004f, -702f), vec2<f32>(2336f, 656f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-789f, -274f)))))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 6283i), vec2<i32>(select(~(-10750i), u_input.a.x, true), ~select(u_input.a.x, u_input.a.x, var_0.x))));
    let var_4 = ~vec3<i32>(_wgslsmith_dot_vec2_i32(var_3.c, firstTrailingBit(var_3.c)), -46213i, -51263i);
    return !arg_0.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(false, 4294967295u));
    let var_1 = vec3<bool>(!(true & any(func_1(vec3<bool>(false, var_0.a.a, true), true, false, vec3<u32>(u_input.b, var_0.a.b, 3470u)))), any(!(!vec2<bool>(false, var_0.a.a))), true);
    var var_2 = var_1.x;
    var_0 = func_2();
    var var_3 = func_2();
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -851f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-814f)), -181f), 1000f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1167f, _wgslsmith_div_f32(107f, -599f), _wgslsmith_f_op_f32(f32(-1f) * -351f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-405f, 1000f, -608f), vec3<f32>(2567f, 621f, -1404f)) + vec3<f32>(423f, -1161f, 775f))))));
    var var_5 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, _wgslsmith_f_op_f32(max(720f, -2103f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-178f)), -584f), vec2<f32>(_wgslsmith_f_op_f32(round(var_4.x)), 1f))), firstLeadingBit(~abs(u_input.a)));
    let var_6 = func_2().a;
    var var_7 = ~(vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(var_5.c.x, u_input.a.x, -1i) ^ vec3<i32>(u_input.a.x, u_input.a.x, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_4.x, 1884f, var_5.b.x) + vec4<f32>(-717f, 156f, -1000f, var_5.b.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(794f + var_5.b.x), _wgslsmith_f_op_f32(-265f - 1166f), _wgslsmith_div_f32(var_5.b.x, var_5.a.x), -159f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(452f, -871f, -573f, 424f) * vec4<f32>(var_4.x, var_5.a.x, -254f, 1000f)))), any(!vec4<bool>(var_6.a, false, false, true)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-803f, var_5.b.x, 407f, -1453f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1063f, -221f, 125f, -1000f) + vec4<f32>(var_5.b.x, -1000f, var_5.b.x, -562f))), vec4<f32>(_wgslsmith_f_op_f32(max(-1823f, var_5.b.x)), var_4.x, _wgslsmith_f_op_f32(var_5.b.x + -470f), var_4.x), var_3.a.a))), (vec3<i32>(-3737i, min(var_5.c.x, -2147483647i), -2147483647i) | firstTrailingBit(vec3<i32>(-37160i, var_5.c.x, -4452i))) | vec3<i32>(_wgslsmith_div_i32(min(1i, -2147483647i), ~2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, 2147483647i, 0i), vec4<i32>(var_7.x, -40177i, -1i, var_5.c.x) | vec4<i32>(u_input.a.x, var_5.c.x, var_7.x, var_5.c.x)), ~var_5.c.x));
}

