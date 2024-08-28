struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    let var_0 = -2352f;
    var var_1 = Struct_3(-16076i);
    var_1 = Struct_3(var_1.a);
    var var_2 = Struct_2(~(~_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(4294967295u, 0u)), firstTrailingBit(vec2<u32>(1u, 4294967295u)), vec2<u32>(1u, 4294967295u))));
    let var_3 = Struct_4(((-vec2<i32>(-1i, var_1.a) & (u_input.a.xy << (vec2<u32>(16551u, 4294967295u) % vec2<u32>(32u)))) & u_input.a.wy) >> (~(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.a.x, var_2.a.x), vec2<u32>(0u, 1u)) & _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_2.a.x), vec2<u32>(var_2.a.x, 0u))) % vec2<u32>(32u)));
    return firstLeadingBit(firstLeadingBit(max(4294967295u, 0u)));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = u_input.a.x != (~(-27157i) & (u_input.a.x & 44959i));
    let var_1 = _wgslsmith_add_i32(i32(-1i) * -27148i, min(countOneBits(u_input.a.x), -18653i) << (~(~40502u) % 32u)) << (func_3(~(u_input.a << (vec4<u32>(arg_0, 0u, arg_0, arg_0) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 0u, arg_0, 37852u), _wgslsmith_mod_vec4_u32(vec4<u32>(19368u, 0u, 29843u, arg_0), vec4<u32>(56337u, 1u, 0u, 0u))) % vec4<u32>(32u))) % 32u);
    var var_2 = -212f;
    let var_3 = -34411i;
    var_2 = -140f;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1093f), _wgslsmith_f_op_f32(max(-487f, 1260f)))))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = vec4<f32>(1223f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-103f - arg_0)), arg_0, _wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0)))), arg_0));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))) - var_0.x), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(abs(212f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(~(~1u))))), _wgslsmith_f_op_f32(-arg_0));
    var var_1 = abs(firstTrailingBit(4294967295u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(19690u)), _wgslsmith_f_op_f32(654f - arg_0), 236f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.yyz, vec3<f32>(1409f, arg_0, arg_0)))))));
    let var_3 = Struct_1(-335f, ~countOneBits(vec4<u32>(7724u, 0u, 33000u, 4294967295u)) << ((min(select(vec4<u32>(1u, 886u, 0u, 30254u), vec4<u32>(1u, 33869u, 26488u, 38015u), true), vec4<u32>(49126u, 33392u, 12995u, 4294967295u)) | ~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), countOneBits(_wgslsmith_div_vec4_i32(-reverseBits(vec4<i32>(0i, u_input.a.x, -1i, arg_3.a)), vec4<i32>(-7481i, -arg_3.a, _wgslsmith_div_i32(u_input.a.x, 11684i), countOneBits(-20784i)))), any(vec4<bool>(arg_1, !all(arg_2.xw), true, arg_1)), 2192f > var_0.x);
    return Struct_1(759f, vec4<u32>(44974u, 1u, 62360u, _wgslsmith_sub_u32(~var_3.b.x, 1u)), u_input.a, true, !any(!arg_2.zy));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    let var_0 = 1u;
    let var_1 = arg_0.c.xyw;
    let var_2 = !(!vec4<bool>(!(true & arg_0.d), true, arg_0.d & false, true));
    var var_3 = func_1(917f, arg_0.e, vec4<bool>(-572f == _wgslsmith_f_op_f32(-arg_0.a), true, false, !any(select(vec2<bool>(arg_0.d, var_2.x), vec2<bool>(var_2.x, true), false))), Struct_3(-14243i));
    let var_4 = select(var_2.wy, !select(vec2<bool>(true, true), !vec2<bool>(arg_0.d, arg_0.d), select(func_1(arg_0.a, false, var_2, Struct_3(-2147483647i)).d, func_1(600f, false, vec4<bool>(true, arg_0.e, var_3.d, false), Struct_3(u_input.a.x)).d, true)), !(!select(arg_0.b.x <= 2160u, select(true, var_3.d, true), var_2.x | var_3.d)));
    return _wgslsmith_add_vec4_u32(var_3.b, arg_0.b);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: u32) -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_mult_vec2_i32(~func_1(1614f, true, vec4<bool>(true, true, true, true), Struct_3(u_input.a.x)).c.wx, abs(vec2<i32>(-1i) * -vec2<i32>(-1i, arg_0.a.x))));
    var var_1 = Struct_3(-19447i);
    var_0 = arg_0;
    var var_2 = Struct_2(countOneBits(arg_1.yw >> (arg_1.ww % vec2<u32>(32u))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-335f + 497f)) - _wgslsmith_div_f32(-1067f, _wgslsmith_f_op_f32(ceil(-288f)))) - _wgslsmith_f_op_f32(1199f - -1415f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1291f))), _wgslsmith_f_op_f32(func_2(_wgslsmith_sub_u32(arg_2 >> (arg_2 % 32u), arg_1.x)))), _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(-2353f))), _wgslsmith_f_op_f32(-128f + -1781f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-137f)) - -961f) * 171f)));
    return Struct_3(~1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(u_input.a.x);
    let var_1 = 19532u;
    var_0 = Struct_3(u_input.a.x);
    let var_2 = _wgslsmith_div_i32(abs(abs(var_0.a)), 2147483647i);
    let var_3 = u_input.a;
    var_0 = func_5(Struct_4(select(vec2<i32>(var_0.a, 2147483647i), abs(u_input.a.zw) >> ((vec2<u32>(var_1, var_1) | vec2<u32>(37934u, 43703u)) % vec2<u32>(32u)), vec2<bool>(all(vec3<bool>(true, true, false)), any(vec2<bool>(true, false))))), _wgslsmith_add_vec4_u32(func_4(func_1(_wgslsmith_f_op_f32(ceil(-1720f)), false, select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true), Struct_3(49458i)), -1000f), ~vec4<u32>(1u, 4294967295u, _wgslsmith_clamp_u32(var_1, 139389u, 43881u), var_1)), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(min(~var_1, firstLeadingBit(1u)) << (reverseBits(countOneBits(16954u)) % 32u), max(~4294967295u, 95151u) >> (var_1 % 32u), var_1), _wgslsmith_add_u32(var_1, var_1), 1782u);
}

