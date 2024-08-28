struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<u32, 29> = array<u32, 29>(54277u, 9135u, 4294967295u, 36189u, 100262u, 51181u, 45198u, 0u, 89285u, 68376u, 35483u, 4294967295u, 1u, 4294967295u, 98484u, 1u, 1u, 1u, 0u, 6843u, 95907u, 0u, 26007u, 57745u, 70183u, 0u, 57423u, 109704u, 38836u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    var var_0 = Struct_1(max(u_input.b, _wgslsmith_mult_i32(arg_2.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.d.zw, vec2<i32>(arg_0.a, 1i)), -8525i))), ~firstTrailingBit(-14635i), false);
    global1 = array<u32, 29>();
    return Struct_1(abs(~var_0.b), -var_0.a, arg_2.c);
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = u_input.a.xwy;
    var var_1 = Struct_1(~u_input.d.x, arg_2.x, false);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1468f, arg_1.x, arg_1.x) + arg_1.wxw)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.www) - vec3<f32>(arg_1.x, arg_1.x, -356f))))))));
    var var_3 = firstLeadingBit(var_1.b) | arg_2.x;
    var_3 = 2147483647i;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(-(i32(-1i) * -45444i)), -1i), u_input.d.zy & _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.d.x) >> (~vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)), firstTrailingBit(arg_2.xy) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(66669u, u_input.c), var_0.xy, vec2<u32>(26798u, global1[_wgslsmith_index_u32(u_input.a.x, 29u)])) % vec2<u32>(32u))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = false;
    let var_1 = global0[_wgslsmith_index_u32(~23804u, 20u)];
    let var_2 = max((vec3<i32>(arg_1.b, 6418i, arg_1.a) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(0i, 64134i, arg_1.b), u_input.d.yzx)) << (_wgslsmith_add_vec3_u32(u_input.a.xxz, vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 29u)], u_input.c, u_input.c)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(~abs(vec3<i32>(0i, -1i, -2147483647i)), firstTrailingBit(vec3<i32>(arg_1.a, var_1.b, 1i) ^ u_input.d.wzz))) | (u_input.d.yzw >> (u_input.a.xzy % vec3<u32>(32u)));
    let var_3 = Struct_1(var_1.a, _wgslsmith_mod_i32(arg_0, ~0i), !var_0);
    let var_4 = vec2<bool>(arg_2, true);
    return Struct_1(u_input.b, _wgslsmith_mod_i32(-1i, select(u_input.d.x & -var_1.a, 2147483647i, all(select(vec3<bool>(var_0, true, true), vec3<bool>(false, arg_2, false), vec3<bool>(var_3.c, true, false))))), (!all(vec4<bool>(false, false, false, false)) && true) && !select(arg_2, !var_1.c, var_4.x | false));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_div_i32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1119f, 1588f, -359f, 836f))), u_input.d.yzw, func_2(Struct_1(64901i, u_input.d.x, false), false, global0[_wgslsmith_index_u32(1u, 20u)])) ^ u_input.b, ~38220i), func_2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(22183u, 56719u, global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), ~vec3<u32>(4294967295u, u_input.a.x, 4294967295u)), 29u)], 20u)], !any(vec2<bool>(false, false)), Struct_1(-1i & abs(u_input.b), i32(-1i) * -u_input.b, true)), true);
    var var_1 = i32(-1i) * -u_input.b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -119f))))))));
    var var_3 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 20u)];
    let var_4 = ~(~u_input.a);
    return func_2(func_4(_wgslsmith_dot_vec3_i32(max(~u_input.d.zzx, vec3<i32>(1i, var_3.b, 26476i)), -u_input.d.xxx), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.d.xy, vec2<i32>(2147483647i, u_input.d.x)), var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a, u_input.b, var_0.b), vec3<i32>(-36274i, var_3.a, 34685i))), 73176i, true), !var_0.c), !var_0.c, Struct_1(u_input.b, firstLeadingBit(~(~u_input.d.x)), var_3.c));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    let var_1 = arg_2;
    let var_2 = func_2(func_4(-49458i, func_2(Struct_1(u_input.d.x, u_input.b, all(vec2<bool>(false, var_1.c))), !all(vec4<bool>(arg_3.c, true, true, var_1.c)), Struct_1(_wgslsmith_add_i32(9446i, -6436i), _wgslsmith_div_i32(2147483647i, var_0.b), true)), !(false == arg_3.c)), !(!(!all(vec2<bool>(var_0.c, true)))), Struct_1(var_0.b, firstTrailingBit(~firstLeadingBit(var_1.b)), !var_0.c));
    let var_3 = ~23360u;
    var var_4 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3, 29u)], 29u)]), 29u)], min(global1[_wgslsmith_index_u32(firstTrailingBit(35365u), 29u)], ~12124u)), ~10716u), var_3, _wgslsmith_clamp_u32(u_input.c, var_3, firstLeadingBit(~_wgslsmith_dot_vec2_u32(u_input.a.ww, vec2<u32>(var_3, global1[_wgslsmith_index_u32(u_input.c, 29u)])))), ~0u);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.c, 20u)];
    var var_1 = func_5(-u_input.d.xwy, func_1(), global0[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(11155u, 29u)] ^ _wgslsmith_div_u32(global1[_wgslsmith_index_u32(~u_input.a.x, 29u)], 4294967295u)), 20u)], func_4(4751i, global0[_wgslsmith_index_u32(77581u, 20u)], any(vec4<bool>(false, var_0.c, true, var_0.c)) && all(vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(254f - 377f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(165f))))) + 104f);
    var_1 = ~min(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(7712u, 29u)], 4294967295u, 4299u, 0u), u_input.a), vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(38140u, 29u)], 0u, global1[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 16899u)), u_input.c)), ~firstLeadingBit(0u));
    var var_3 = func_2(func_1(), _wgslsmith_add_u32(_wgslsmith_sub_u32(27269u, ~4294967295u), _wgslsmith_sub_u32(0u, u_input.c) >> (~90375u % 32u)) >= abs(global1[_wgslsmith_index_u32(1u << (u_input.a.x % 32u), 29u)] << (_wgslsmith_mod_u32(u_input.c, u_input.c) % 32u)), func_1());
    var var_4 = !var_0.c;
    var_4 = var_0.c && true;
    var var_5 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b ^ u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + 875f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f)), 481f)), var_3.b, vec3<i32>(var_3.a, var_3.b, -min(~(-13983i), _wgslsmith_dot_vec4_i32(u_input.d, u_input.d))), 36463i);
}

