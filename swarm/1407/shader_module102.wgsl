struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: bool) -> vec3<i32> {
    var var_0 = true;
    var var_1 = vec2<i32>(-min(_wgslsmith_mod_i32(~1i, ~(-2147483647i)), -abs(-21786i)), 0i);
    var_1 = vec2<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(36937i, -57138i)), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_1.x, -27300i)))) >> (u_input.b.x % 32u), -var_1.x);
    let var_2 = Struct_3(!(arg_0 || (any(vec3<bool>(true, arg_0, arg_0)) && true)), Struct_2(-(~var_1.x), 149084u, 11009u), !(!vec3<bool>(true, u_input.a == u_input.b.x, true)));
    var var_3 = select(select(select(select(!vec4<bool>(arg_0, false, arg_0, false), select(vec4<bool>(var_2.c.x, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, true, true, false)), false), vec4<bool>(true, var_2.a, arg_0 != arg_0, true), select(arg_0, var_2.c.x, true) | !arg_0), select(vec4<bool>(var_2.a, all(vec4<bool>(var_2.a, true, true, true)), !arg_0, true), select(select(vec4<bool>(false, true, var_2.c.x, false), vec4<bool>(arg_0, var_2.a, var_2.c.x, true), vec4<bool>(false, var_2.a, var_2.c.x, false)), vec4<bool>(false, false, var_2.a, true), all(vec2<bool>(false, arg_0))), vec4<bool>(true, false, true, var_2.c.x)), -33555i <= (_wgslsmith_mult_i32(var_1.x, 2147483647i) | _wgslsmith_add_i32(-40087i, var_1.x))), vec4<bool>(arg_0, arg_0, !(!(var_2.c.x || true)), !arg_0), select(select(select(!vec4<bool>(arg_0, arg_0, true, false), !vec4<bool>(arg_0, false, var_2.c.x, false), true), !select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(true, true, true, arg_0), false), select(!vec4<bool>(true, arg_0, true, false), vec4<bool>(var_2.a, false, true, true), any(vec4<bool>(var_2.a, true, true, false)))), select(select(vec4<bool>(arg_0, var_2.a, arg_0, arg_0), select(vec4<bool>(var_2.c.x, arg_0, arg_0, arg_0), vec4<bool>(true, var_2.a, true, var_2.c.x), var_2.a), select(vec4<bool>(var_2.a, var_2.c.x, var_2.c.x, var_2.c.x), vec4<bool>(arg_0, true, var_2.a, var_2.c.x), arg_0)), vec4<bool>(true, var_2.a, !var_2.a, select(arg_0, true, true)), all(vec4<bool>(false, true, true, var_2.a)) || any(var_2.c)), select(vec4<bool>(var_2.c.x, any(vec4<bool>(var_2.a, var_2.a, true, false)), false, true), vec4<bool>(var_2.c.x, any(var_2.c.yy), any(vec2<bool>(true, var_2.a)), arg_0 || arg_0), var_2.a)));
    return vec3<i32>(74942i & var_2.b.a, i32(-1i) * -9131i, 28114i);
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(352f, arg_0))));
    let var_1 = -(~_wgslsmith_mod_vec3_i32(func_3(select(false, true, false)), _wgslsmith_clamp_vec3_i32(vec3<i32>(35362i, -43049i, -14537i), vec3<i32>(-26127i, -6323i, -1i), vec3<i32>(-2589i, 2147483647i, -12093i)) ^ func_3(true)));
    let var_2 = vec2<bool>(true, true);
    var var_3 = Struct_3(var_2.x, Struct_2(var_1.x, ~u_input.b.x, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, 12850u, 0u)), ~select(u_input.b, vec3<u32>(u_input.a, 1u, 6595u), var_2.x))), !vec3<bool>(true, var_2.x, select(var_2.x, var_2.x, true)));
    var var_4 = var_0;
    return Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_1.x, -10909i), var_3.b.a, 3210i, var_1.x) & vec4<i32>(var_1.x & var_1.x, _wgslsmith_add_i32(-9766i, var_1.x), var_1.x, var_3.b.a), -min(reverseBits(vec4<i32>(var_3.b.a, var_1.x, 0i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, var_1.x, -1i, -8348i), vec4<i32>(13741i, 11860i, var_3.b.a, var_3.b.a)))), u_input.a, u_input.a);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(u_input.b.x, ~(~_wgslsmith_div_u32(4294967295u, u_input.b.x))) | min(abs(60450u), u_input.b.x);
    var var_1 = abs(58040u);
    var_1 = ~_wgslsmith_mult_u32(~4294967295u, 20551u);
    var_1 = u_input.a & 71954u;
    var_1 = ~4294967295u;
    return func_2(-1254f);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = !(_wgslsmith_div_f32(-1306f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, 495f), _wgslsmith_div_f32(-1691f, -122f)))) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1154f + -1037f), 1f, true)));
    let var_1 = ~1u;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(-505f)), -110f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -509f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f)));
    var_0 = true;
    var var_3 = 1u << (~min(select(countOneBits(arg_0.c), ~1u, false), ~arg_0.b) % 32u);
    return Struct_3(!all(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false))), Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 15346i), min(vec2<i32>(-72126i, arg_0.a.x), arg_0.a.xw), ~vec2<i32>(0i, 2147483647i)), func_3(select(true, false, true)).yz), 4294967295u, ~u_input.a), !(!vec3<bool>(var_1 > 0u, false, true)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = -vec3<i32>(func_2(_wgslsmith_f_op_f32(-476f + _wgslsmith_f_op_f32(ceil(-2925f)))).a.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_1.a.x, 7971i), -(~(-13496i))), select(_wgslsmith_add_i32(~arg_1.a.x, arg_1.a.x), 28186i, true));
    var var_1 = abs(arg_1.a.wzx);
    return _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(min(-arg_1.a, vec4<i32>(var_1.x, arg_1.a.x, 2147483647i, 25209i) >> (vec4<u32>(u_input.b.x, 0u, 1u, arg_0.b.b) % vec4<u32>(32u))), abs(_wgslsmith_sub_vec4_i32(arg_1.a, vec4<i32>(var_0.x, -1i, 1i, var_0.x))), ~arg_1.a)), max(arg_1.a, vec4<i32>(_wgslsmith_mod_i32(arg_1.a.x, 0i), max(arg_1.a.x, var_0.x), var_1.x, arg_1.a.x ^ arg_1.a.x) | _wgslsmith_sub_vec4_i32(arg_1.a & arg_1.a, -vec4<i32>(-2452i, 17139i, var_0.x, arg_1.a.x))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(func_1(-413f).a, arg_1.a), vec4<i32>(~(-9821i), func_2(1206f).a.x, 2147483647i, -2147483647i), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(-57690i, var_0.x, 1i, -2147483647i), arg_1.a), max(vec4<i32>(var_1.x, var_0.x, -1i, arg_1.a.x), vec4<i32>(var_0.x, 0i, var_1.x, arg_1.a.x)), firstTrailingBit(arg_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_i32(func_5(func_4(func_1(698f)), Struct_1(func_1(-841f).a, u_input.b.x | 1u, func_1(-922f).b)), vec4<i32>(0i, ~(-2251i), ~13522i, -_wgslsmith_mult_i32(0i, -1i))), u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mult_u32(~u_input.b.x, countOneBits(u_input.a))));
    var var_1 = -(~_wgslsmith_mod_i32(var_0.a.x, i32(-1i) * -2147483647i));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-659f, 348f, 1404f))), vec3<f32>(1591f, 206f, 747f))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-124f, -144f, 1000f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1303f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(1000f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1011f, 885f, -448f) - vec3<f32>(237f, -371f, 1392f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(287f, 1820f, 729f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-600f, 1000f, 286f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(353f, 892f, -791f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-401f)), _wgslsmith_f_op_f32(max(123f, 189f)), -132f)), true)));
    var var_3 = true;
    let var_4 = func_4(func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1136f)), -472f))));
    var var_5 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<i32>(_wgslsmith_add_i32(55390i, -var_0.a.x), _wgslsmith_add_i32(1i, var_0.a.x))));
}

