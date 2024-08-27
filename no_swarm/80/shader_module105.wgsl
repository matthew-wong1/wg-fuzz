struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: bool) -> bool {
    global0 = array<vec2<bool>, 15>();
    var var_0 = Struct_1(vec4<bool>(!select(arg_0.b.a.x, all(vec3<bool>(arg_0.a.a.x, false, true)), true), all(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(arg_0.b.d, u_input.c.x), ~1u), 15u)]), arg_2.x, !arg_0.a.a.x), arg_0.b.b, any(!vec3<bool>(arg_3, true, true)), 0u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.d.x)));
    var_1 = -932f;
    let var_2 = var_0.d;
    return abs(-2147483647i) < _wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(-1i, ~_wgslsmith_dot_vec2_i32(arg_1.yx, arg_0.b.b), -2147483647i));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec4<bool>(true, func_3(Struct_2(Struct_1(vec4<bool>(true, arg_0.x, arg_0.x, true), vec2<i32>(29538i, u_input.e.x), arg_0.x, u_input.c.x), Struct_1(vec4<bool>(true, arg_0.x, true, arg_0.x), u_input.e.zz, arg_0.x, 40771u), 566f, vec2<f32>(154f, 195f)), vec3<i32>(u_input.b, 54230i, 5184i), vec4<bool>(true, false, false, false), select(false, arg_0.x, arg_0.x)), any(select(vec2<bool>(true, true), arg_0, vec2<bool>(arg_0.x, arg_0.x))), any(select(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], vec2<bool>(arg_0.x, arg_0.x), arg_0))), u_input.e.zx, all(vec4<bool>(true, true, true, true)) && !arg_0.x, ~(u_input.c.x & u_input.a.x) | 38696u), Struct_1(!(!select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(true, false, arg_0.x, false))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), select(u_input.e.xx, u_input.e.yy, arg_0)) << (select(min(u_input.a.xw, u_input.c), ~vec2<u32>(0u, u_input.a.x), vec2<bool>(true, true)) % vec2<u32>(32u)), select(!select(false, true, arg_0.x), select(false, !arg_0.x, true), true), _wgslsmith_mod_u32(1u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-196f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(865f, 183f))))) - _wgslsmith_f_op_f32(f32(-1f) * -301f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1642f, -634f) - vec2<f32>(-792f, -1619f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -273f)), false)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(534f, 686f) * vec2<f32>(-729f, -1000f)))))));
    var var_1 = vec2<i32>(1147i, ~u_input.e.x);
    let var_2 = var_0.b;
    var var_3 = var_0.a;
    let var_4 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-4662i, var_0.b.b.x, ~(-1i), 3172i), ~(~vec4<i32>(8442i, 0i, var_3.b.x, -2147483647i))) << (_wgslsmith_add_u32(firstLeadingBit(abs(4294967295u)), var_2.d) % 32u), _wgslsmith_div_i32(_wgslsmith_mod_i32(min(var_3.b.x ^ var_3.b.x, ~(-33478i)), ~(~(-1i))), ~(~(~var_3.b.x))), var_3.b.x, 0i);
    return Struct_1(var_2.a, var_0.b.b, var_0.a.c, _wgslsmith_dot_vec3_u32(~(~u_input.a.zzx), u_input.a.www));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1.c;
    let var_1 = Struct_2(func_2(vec2<bool>(true, true)), Struct_1(!select(arg_1.a, func_2(vec2<bool>(arg_0, arg_0)).a, arg_0 | true), u_input.e.zx, true, _wgslsmith_clamp_u32(arg_1.d, select(4294967295u, ~u_input.a.x, !var_0), 1u & ~arg_1.d)), -685f, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -393f))), -117f)), _wgslsmith_f_op_f32(f32(-1f) * -833f)));
    let var_2 = !(any(!select(vec2<bool>(true, var_1.b.c), vec2<bool>(false, false), arg_1.a.yz)) | any(arg_1.a.xzz));
    global0 = array<vec2<bool>, 15>();
    var var_3 = func_2(arg_1.a.zw);
    return _wgslsmith_mult_i32(0i << (_wgslsmith_mult_u32(1u, u_input.c.x) % 32u), ~arg_1.b.x);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: f32) -> f32 {
    var var_0 = u_input.e;
    let var_1 = -(i32(-1i) * -func_4(!arg_0, func_2(vec2<bool>(true, false))));
    var_0 = vec3<i32>(arg_1, -43773i, var_1);
    var var_2 = arg_2 < _wgslsmith_div_f32(798f, -531f);
    var_2 = !(!all(global0[_wgslsmith_index_u32(u_input.a.x, 15u)]) || arg_0);
    return _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2, -582f)))), _wgslsmith_f_op_f32(-arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1(!(_wgslsmith_mult_u32(~u_input.a.x, abs(0u)) <= ~1u), u_input.b, -844f));
    var var_1 = func_2(vec2<bool>(true, true));
    var var_2 = Struct_2(Struct_1(vec4<bool>(!var_1.a.x, var_1.c, true, false), _wgslsmith_add_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(var_1.b.x, 54963i), var_1.b), u_input.e.xx), !(!func_2(global0[_wgslsmith_index_u32(u_input.c.x, 15u)]).a.x), ~var_1.d), Struct_1(var_1.a, vec2<i32>(u_input.e.x, select(var_1.b.x, -u_input.e.x, var_1.a.x)), true, u_input.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(!var_1.c, 1i, -780f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1192f, -1251f) * vec2<f32>(1080f, 179f))))));
    var var_3 = select(!vec4<bool>(var_2.b.a.x, all(func_2(vec2<bool>(true, true)).a.xzw), true || var_1.c, !(var_2.d.x == var_2.c)), select(!(!select(var_2.b.a, vec4<bool>(true, var_2.b.c, var_2.b.c, false), var_1.a)), vec4<bool>(func_2(!var_2.b.a.zz).a.x, true, true, all(vec4<bool>(var_1.a.x, false, false, var_2.a.a.x))), vec4<bool>(true, !(var_1.b.x > u_input.e.x), true, true)), select(var_1.a, var_2.b.a, !(!vec4<bool>(false, var_2.a.c, var_1.a.x, var_2.a.a.x))));
    let var_4 = !vec3<bool>(false, var_3.x, var_2.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(max(var_2.a.b.x ^ (var_2.a.b.x | u_input.b), -2147483647i), -2147483647i), abs(var_1.b.x) >> (var_2.a.d % 32u), min(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-8096i, var_1.b.x)) << (max(u_input.c, u_input.a.zx) % vec2<u32>(32u)), var_1.b & var_2.b.b, abs(~vec2<i32>(u_input.b, 0i))), min(~vec2<i32>(var_2.b.b.x, 25192i), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_1.b.x), vec2<i32>(var_2.b.b.x, -21001i) >> (vec2<u32>(var_1.d, u_input.a.x) % vec2<u32>(32u))))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.b.d, var_1.d), min(u_input.a.wwx, u_input.a.zwy)), 4294967295u, 0u, u_input.c.x));
}

