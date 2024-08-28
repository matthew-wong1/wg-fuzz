struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = -2147483647i;
    global0 = arg_0.a.c;
    let var_1 = Struct_2(select(vec3<bool>(true, arg_0.a.c, !arg_0.a.c), !vec3<bool>(!arg_0.b.x, !arg_0.a.c, any(vec3<bool>(true, arg_0.b.x, true))), arg_0.a.b.xzw), false, arg_0.a, Struct_1(vec4<i32>(_wgslsmith_sub_i32(arg_0.a.a.x, 1i), ~(~(-2147483647i)), _wgslsmith_mod_i32(var_0, var_0), _wgslsmith_mod_i32(u_input.a.x, var_0)), vec4<bool>(arg_0.b.x, any(vec3<bool>(arg_0.b.x, true, arg_0.a.c)), arg_0.a.b.x, true), false, u_input.d, u_input.b), !vec3<bool>(arg_0.b.x, !arg_0.b.x & (arg_0.a.b.x & arg_0.a.c), true));
    let var_2 = abs(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(-111513i, var_1.d.a.x, var_0), vec3<i32>(-var_1.d.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, -2764i, -64024i, 9090i), vec4<i32>(var_0, 13910i, -1i, -13693i)), _wgslsmith_div_i32(u_input.a.x, var_1.c.a.x)))));
    let var_3 = arg_0;
    return arg_0.a.b.x;
}

fn func_2() -> vec4<bool> {
    global0 = true;
    var var_0 = any(vec3<bool>(func_3(Struct_3(Struct_1(vec4<i32>(-1i, -49087i, u_input.a.x, -1773i), vec4<bool>(false, false, true, true), true, 0u, 1u), vec2<bool>(true, true))), true, true)) && false;
    var var_1 = !(!vec3<bool>(any(vec4<bool>(true, true, true, true)), true, all(vec4<bool>(true, false, true, true)) | true));
    var var_2 = countOneBits(vec2<i32>(5986i, _wgslsmith_div_i32(~0i, u_input.a.x)));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1183f - -1592f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2387f + 1000f)))))), -561f));
    return !vec4<bool>(false, var_1.x, !any(!vec2<bool>(var_1.x, var_1.x)), false);
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    global0 = !all(func_2());
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -569f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(515f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-2453f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-601f, -906f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1029f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(-1000f, 770f))), -1172f)))), 652f);
    global0 = true;
    var var_1 = Struct_3(Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -19681i, u_input.a.x) & ~vec4<i32>(1i, u_input.a.x, u_input.a.x, 43603i), vec4<i32>(max(-4747i, u_input.a.x), ~23361i, ~u_input.a.x, -2147483647i), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 9575i, 10868i), vec4<i32>(21170i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(0i, 2147483647i, u_input.a.x, 25638i)))), !func_2(), !(!arg_0.x), u_input.d, ~((u_input.b << (0u % 32u)) << (u_input.c.x % 32u))), !(!arg_0.xy));
    global0 = true;
    return Struct_2(vec3<bool>(false, all(select(!arg_0.yx, vec2<bool>(var_1.a.b.x, true), !var_1.b)), false), !(1i >= _wgslsmith_add_i32(var_1.a.a.x, ~var_1.a.a.x)), var_1.a, Struct_1(countOneBits(abs(vec4<i32>(3779i, 0i, var_1.a.a.x, var_1.a.a.x))), vec4<bool>(all(func_2()), any(!arg_0.yx), false, true), var_1.a.c, _wgslsmith_dot_vec4_u32(~max(vec4<u32>(0u, 1u, u_input.c.x, var_1.a.e), vec4<u32>(var_1.a.d, 0u, var_1.a.d, 128578u)), ~abs(vec4<u32>(var_1.a.d, 1u, 37834u, 4294967295u))), _wgslsmith_sub_u32(var_1.a.e, 27817u)), var_1.a.b.zyz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(select(vec2<bool>(true, false), vec2<bool>(false, true), false))), select(vec3<bool>(true, false, select(false, false, false)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))));
    global0 = !any(func_2().yw);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.a.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1208f)) + 1f) * _wgslsmith_f_op_f32(max(-529f, _wgslsmith_f_op_f32(-153f - -1823f)))), _wgslsmith_f_op_f32(109f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-506f, 807f)))), _wgslsmith_mod_vec4_u32(~(abs(vec4<u32>(72063u, 1u, u_input.d, var_0.c.e)) << (countOneBits(vec4<u32>(u_input.b, 0u, var_0.d.e, var_0.d.d)) % vec4<u32>(32u))), abs(~countOneBits(vec4<u32>(var_0.d.e, u_input.c.x, 19589u, 98252u)))), ~u_input.a.x, _wgslsmith_sub_vec4_u32(~(select(vec4<u32>(u_input.b, 37484u, 11483u, 62089u), vec4<u32>(var_0.c.e, 34985u, 26540u, 33537u), var_0.c.b) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c.d, u_input.d, 73380u, var_0.c.d), vec4<u32>(u_input.b, 24666u, u_input.d, 75461u), vec4<u32>(var_0.c.d, 5979u, 80423u, 4276u)) % vec4<u32>(32u))), countOneBits(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.b, var_0.c.e, 26044u, u_input.b)), ~vec4<u32>(var_0.c.e, u_input.c.x, var_0.d.d, var_0.d.e)))));
}

