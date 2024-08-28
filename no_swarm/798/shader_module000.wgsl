struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-1000f, Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 37822u), i32(-2147483648), 6062i, vec4<f32>(-415f, -999f, 450f, -117f), false)), Struct_2(Struct_1(vec3<u32>(1u, 28144u, 39934u), 2147483647i, -21079i, vec4<f32>(767f, 1894f, 1000f, 1105f), false)), vec2<u32>(21646u, 1u), Struct_2(Struct_1(vec3<u32>(23155u, 6743u, 1u), 2147483647i, 0i, vec4<f32>(-128f, 137f, 691f, -450f), false)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = select(all(select(vec3<bool>(global0.b.a.e, !global0.e.a.e, global0.c.a.b >= -2147483647i), !select(vec3<bool>(true, true, arg_0.a.e), vec3<bool>(false, true, global0.e.a.e), global0.c.a.e), !(global0.e.a.d.x == global0.e.a.d.x))), true, global0.b.a.e);
    var var_1 = Struct_3(-356f, Struct_2(Struct_1(vec3<u32>(~49892u, arg_0.a.a.x, 16236u), -60423i, 0i, arg_0.a.d, !all(vec3<bool>(false, false, arg_0.a.e)))), arg_0, max(global0.e.a.a.xz, ~global0.b.a.a.zx), global0.e);
    let var_2 = select(vec3<bool>(~1u <= reverseBits(u_input.a.x), any(select(select(vec2<bool>(var_1.b.a.e, true), vec2<bool>(arg_0.a.e, true), vec2<bool>(true, var_1.e.a.e)), !vec2<bool>(arg_0.a.e, global0.b.a.e), select(vec2<bool>(true, false), vec2<bool>(global0.c.a.e, false), vec2<bool>(true, arg_0.a.e)))), !(!var_1.b.a.e != !arg_0.a.e)), vec3<bool>(!var_1.b.a.e, true, all(!select(vec4<bool>(global0.e.a.e, global0.b.a.e, var_1.b.a.e, arg_0.a.e), vec4<bool>(true, arg_0.a.e, arg_0.a.e, true), vec4<bool>(true, false, true, true)))), vec3<bool>(_wgslsmith_f_op_f32(sign(1316f)) >= _wgslsmith_f_op_f32(1441f + _wgslsmith_f_op_f32(abs(global0.e.a.d.x))), ~(~global0.d.x) > arg_0.a.a.x, -1i >= firstLeadingBit(var_1.e.a.b)));
    var var_3 = select(select(var_2.yz, vec2<bool>(true, _wgslsmith_f_op_f32(316f * -1695f) >= _wgslsmith_div_f32(arg_0.a.d.x, 1223f)), !var_2.xy), select(vec2<bool>(_wgslsmith_mod_i32(var_1.b.a.b, 40618i) <= ~(-1i), true), vec2<bool>(var_1.c.a.e, select(48756u > u_input.a.x, true, false & global0.b.a.e)), vec2<bool>(var_2.x, true)), select(vec2<bool>(u_input.b > 0i, any(!vec2<bool>(false, var_1.b.a.e))), !(!(!var_2.zz)), !var_2.xz));
    global0 = Struct_3(_wgslsmith_f_op_f32(abs(arg_0.a.d.x)), Struct_2(Struct_1(u_input.a.yyx, -(~(-14557i)), _wgslsmith_add_i32(global0.c.a.c, _wgslsmith_add_i32(global0.c.a.b, global0.b.a.c)), var_1.c.a.d, var_1.b.a.e)), arg_0, _wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.d, vec2<u32>(0u, u_input.a.x)), ~var_1.b.a.a.zz), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a.a.x, global0.d.x), var_1.e.a.a.xz), vec2<u32>(u_input.a.x, var_1.b.a.a.x)) | _wgslsmith_clamp_vec2_u32(arg_0.a.a.zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.b.a.a.x, u_input.a.x), vec2<u32>(u_input.a.x, var_1.e.a.a.x), u_input.a.xz), u_input.a.zz)), Struct_2(Struct_1(global0.b.a.a, _wgslsmith_div_i32(var_1.b.a.b, 10431i), 2147483647i, vec4<f32>(_wgslsmith_f_op_f32(max(var_1.c.a.d.x, -1319f)), _wgslsmith_f_op_f32(ceil(arg_0.a.d.x)), arg_0.a.d.x, _wgslsmith_f_op_f32(floor(872f))), true)));
    return countOneBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.a.c, var_1.b.a.c, 1i, arg_0.a.b) ^ vec4<i32>(global0.e.a.c, global0.e.a.c, 2147483647i, -37144i), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.e.a.c, -4403i, u_input.b, -20264i), vec4<i32>(u_input.b, 78274i, arg_0.a.b, global0.c.a.c)))) ^ var_1.c.a.b;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> f32 {
    let var_0 = vec4<u32>(1u, u_input.a.x, _wgslsmith_clamp_u32(~79329u, u_input.a.x, 4294967295u), _wgslsmith_add_u32(u_input.a.x, countOneBits(~u_input.a.x))) << (vec4<u32>(global0.c.a.a.x, ~4294967295u, global0.d.x, 1u) % vec4<u32>(32u));
    var var_1 = any(!vec3<bool>(false, arg_0, true));
    var var_2 = func_3(Struct_2(global0.c.a));
    var var_3 = ~_wgslsmith_dot_vec2_u32(reverseBits(u_input.a.zy), abs(~vec2<u32>(73782u, 70368u)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-981f, 1486f, global0.b.a.d.x, 569f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(732f, 147f, 598f, global0.e.a.d.x), global0.e.a.d, !global0.e.a.e))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(869f, _wgslsmith_f_op_f32(step(global0.b.a.d.x, arg_1.x)), _wgslsmith_f_op_f32(max(390f, global0.b.a.d.x)), _wgslsmith_f_op_f32(trunc(244f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, global0.a, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -570f)), 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -960f))))));
    return 1f;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_3 {
    global0 = Struct_3(arg_0.x, Struct_2(global0.c.a), global0.b, ~(vec2<u32>(global0.e.a.a.x, _wgslsmith_mult_u32(88906u, 0u)) << (vec2<u32>(global0.d.x & u_input.a.x, ~global0.b.a.a.x) % vec2<u32>(32u))), global0.c);
    global0 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(all(vec4<bool>(false, global0.b.a.e, true, true)), vec2<f32>(883f, -147f))) * _wgslsmith_f_op_f32(trunc(537f))))), global0.c, Struct_2(Struct_1(~global0.b.a.a, -global0.e.a.c, ~(-37571i) | (u_input.b ^ arg_1), global0.b.a.d, global0.c.a.e && !global0.b.a.e)), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x << (u_input.a.x % 32u), ~u_input.a.x), ~max(countOneBits(u_input.a.wx), vec2<u32>(global0.b.a.a.x, 4294967295u) >> (u_input.a.zx % vec2<u32>(32u)))), global0.b);
    let var_0 = ~1u;
    global0 = Struct_3(global0.e.a.d.x, Struct_2(Struct_1(vec3<u32>(~0u, 1u, ~u_input.a.x), 0i, 0i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global0.c.a.d)) * global0.e.a.d), all(select(vec2<bool>(global0.b.a.e, true), vec2<bool>(true, false), vec2<bool>(global0.b.a.e, true))))), Struct_2(global0.e.a), global0.d, global0.c);
    global0 = Struct_3(-587f, Struct_2(global0.b.a), Struct_2(global0.b.a), vec2<u32>(0u, 4294967295u), global0.b);
    return Struct_3(_wgslsmith_f_op_f32(round(-701f)), global0.c, global0.b, abs(vec2<u32>(~40017u, global0.c.a.a.x) ^ abs(u_input.a.zz << (global0.c.a.a.zy % vec2<u32>(32u)))), Struct_2(Struct_1(global0.e.a.a & global0.e.a.a, u_input.b, ~0i, vec4<f32>(_wgslsmith_f_op_f32(1243f + global0.b.a.d.x), arg_0.x, global0.a, arg_0.x), global0.b.a.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a.d.x, -625f))))), _wgslsmith_clamp_i32(-1i, 6174i, _wgslsmith_dot_vec3_i32((vec3<i32>(global0.b.a.c, u_input.b, 38706i) & vec3<i32>(1i, global0.b.a.b, global0.b.a.b)) << (~vec3<u32>(global0.c.a.a.x, 31391u, 4294967295u) % vec3<u32>(32u)), ~(-vec3<i32>(u_input.b, u_input.b, 1i)))));
    let var_1 = _wgslsmith_clamp_vec4_i32((_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, global0.c.a.b, var_0.b.a.b, -1i), vec4<i32>(global0.c.a.b, -42022i, -1i, global0.e.a.c)) | (_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.e.a.c, 10611i, u_input.b, global0.c.a.c), vec4<i32>(-101290i, u_input.b, var_0.b.a.c, -1i)) >> (u_input.a % vec4<u32>(32u)))) << (_wgslsmith_div_vec4_u32(~vec4<u32>(0u, var_0.c.a.a.x, 62480u, var_0.d.x), max(reverseBits(vec4<u32>(57929u, u_input.a.x, u_input.a.x, var_0.b.a.a.x)), ~u_input.a)) % vec4<u32>(32u)), max(vec4<i32>(-68554i, 1i, u_input.b, _wgslsmith_mult_i32(~18125i, abs(var_0.b.a.b))), countOneBits(-countOneBits(vec4<i32>(var_0.e.a.c, -1i, -27769i, global0.c.a.b)))), -(vec4<i32>(-1i) * -abs(vec4<i32>(-2147483647i, u_input.b, 8184i, 8243i))));
    var var_2 = func_1(var_0.c.a.d.xy, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.e.a.d.xy) * global0.e.a.d.wz)), 0i).c.a.b).b.a;
    var var_3 = all(vec3<bool>(global0.c.a.e, (-var_2.b != ~var_1.x) || (select(var_2.e, var_2.e, var_2.e) | global0.c.a.e), var_2.e));
    var var_4 = _wgslsmith_dot_vec2_u32(global0.d, ~u_input.a.xz) >= ((select(global0.c.a.a.x, 8887u, true) & var_0.e.a.a.x) << (var_2.a.x % 32u));
    global0 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-(~func_3(Struct_2(global0.e.a))));
}

