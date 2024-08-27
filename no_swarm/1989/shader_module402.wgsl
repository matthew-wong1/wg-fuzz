struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, 113f, 924f, 633f);

var<private> global1: Struct_1 = Struct_1(vec4<f32>(225f, 1015f, -278f, 371f), 2147483647i, vec2<f32>(1096f, -717f), vec2<bool>(true, true), 7508i);

var<private> global2: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true));

var<private> global3: Struct_1 = Struct_1(vec4<f32>(1033f, 1118f, -2144f, -1000f), -8910i, vec2<f32>(-104f, 366f), vec2<bool>(true, true), 7112i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    global2 = array<vec4<bool>, 13>();
    var var_0 = vec3<u32>(arg_0.x, ~u_input.a.x, 14602u);
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global1.a + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1320f)), global3.a.x), _wgslsmith_f_op_f32(-533f * _wgslsmith_f_op_f32(f32(-1f) * -1239f)), -470f, _wgslsmith_f_op_f32(858f * global3.c.x)))));
    var_0 = (u_input.a.yyz >> (arg_0 % vec3<u32>(32u))) >> (vec3<u32>(abs(var_0.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, arg_0.x, 75603u, 6600u), ~u_input.a), u_input.a), reverseBits(firstTrailingBit(var_0.x))) % vec3<u32>(32u));
    var_0 = vec3<u32>(abs(arg_0.x), min(var_0.x, ~1u), ~(~arg_0.x | var_0.x)) << (~vec3<u32>(~(~25920u), u_input.a.x, 16783u) % vec3<u32>(32u));
    return !vec3<bool>(false, !global1.d.x, true);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = arg_3;
    var var_1 = arg_3.a;
    let var_2 = u_input.a.x;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.c.x)) + _wgslsmith_f_op_f32(f32(-1f) * -559f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))), -856f, _wgslsmith_f_op_f32(ceil(arg_3.a.x))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global2 = array<vec4<bool>, 13>();
    global2 = array<vec4<bool>, 13>();
    let var_0 = vec3<bool>(false, false & !global3.d.x, false);
    global0 = _wgslsmith_f_op_vec4_f32(func_4(firstLeadingBit(firstLeadingBit(abs(-vec4<i32>(u_input.c, -1i, global3.b, global3.b)))), select(global1.b, -5414i, (743f != _wgslsmith_f_op_f32(ceil(-103f))) || !(!global1.d.x)), select(var_0, vec3<bool>(false, true, select(true, true, false)), !func_3(~u_input.a.wxw)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.a.x, -103f, 1327f, -178f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global1.c.x, global1.a.x, -357f)))), -17937i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, -1787f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(301f, 1000f)), var_0.zx)), _wgslsmith_f_op_vec2_f32(select(global0.wx, _wgslsmith_f_op_vec2_f32(-global3.a.yw), all(vec3<bool>(var_0.x, global3.d.x, var_0.x)))))), vec2<bool>(global3.d.x, true), 0i)));
    global2 = array<vec4<bool>, 13>();
    return Struct_1(global1.a, abs(~(_wgslsmith_div_i32(-41229i, global1.b) ^ ~global1.b)), _wgslsmith_f_op_vec2_f32(global3.c - _wgslsmith_f_op_vec2_f32(-global1.a.zx)), select(select(!(!vec2<bool>(global3.d.x, false)), global1.d, !(!var_0.x)), !(!select(global3.d, vec2<bool>(false, true), var_0.x)), func_3(select(_wgslsmith_mult_vec3_u32(u_input.a.xyz, u_input.a.zzx), vec3<u32>(u_input.a.x, 6555u, u_input.a.x), global1.d.x)).zx), -countOneBits(global3.b));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<u32>) -> f32 {
    let var_0 = Struct_1(global3.a, _wgslsmith_mult_i32(~(-54143i), 14077i), vec2<f32>(_wgslsmith_f_op_f32(sign(2054f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(floor(global0.x)))))), select(!func_3(u_input.a.yyy).yy, func_3(u_input.a.wyz).xz, any(!arg_0)), func_2(min(~u_input.a.x >> (arg_3.x % 32u), arg_3.x)).e);
    let var_1 = arg_1.c.x;
    var var_2 = func_2(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.zy, firstLeadingBit(vec2<u32>(arg_3.x, 17465u)))) & abs(4441u));
    var var_3 = var_0;
    var var_4 = vec4<i32>(-9288i >> (_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(~arg_3.x, ~0u)) % 32u), global3.b, i32(-1i) * -global1.e, var_0.e);
    return var_2.a.x;
}

fn func_1(arg_0: f32) -> vec2<f32> {
    var var_0 = !global3.d.x;
    var_0 = true;
    var var_1 = vec2<bool>(global1.d.x, _wgslsmith_f_op_f32(func_5(select(!vec3<bool>(global3.d.x, true, global3.d.x), vec3<bool>(false, global3.d.x, global3.d.x), false), func_2(~u_input.a.x), true, u_input.a.xx | vec2<u32>(1u, 46147u))) == _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2556f + 1486f))));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), global1.a.x, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1075f * 203f))), _wgslsmith_mod_i32(-1i, -countOneBits(u_input.d.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1675f, -254f))))), _wgslsmith_f_op_vec2_f32(min(global1.a.xw, global1.a.zy))), func_2(max(1u, u_input.a.x)).d, -_wgslsmith_mult_i32(~global1.e, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global1.e, global3.e), u_input.b.yw), u_input.d)));
    var var_3 = ~_wgslsmith_mod_vec3_i32(-(~u_input.b.xwx), u_input.b.zzy);
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-571f - _wgslsmith_f_op_f32(global1.a.x * arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(964f)) - 289f)), vec2<f32>(_wgslsmith_f_op_f32(global0.x - 216f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(countOneBits(u_input.b), _wgslsmith_mult_i32(-9451i, 11249i), !vec3<bool>(global1.d.x, false, var_1.x), Struct_1(vec4<f32>(var_2.a.x, global0.x, arg_0, global1.c.x), 2989i, var_2.c, vec2<bool>(var_1.x, var_2.d.x), 2147483647i))).x)), global1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, _wgslsmith_div_f32(global1.a.x, global1.c.x), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -269f))), _wgslsmith_f_op_vec4_f32(select(global3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.a.x, -411f, global0.x, global0.x)))), !global1.d.x)), all(global2[_wgslsmith_index_u32(max(0u, u_input.a.x), 13u)]))), 1i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(global1.a.x)))), _wgslsmith_f_op_vec2_f32(-global0.yy)), func_3(select(u_input.a.www, ~abs(vec3<u32>(14301u, u_input.a.x, u_input.a.x)), global3.d.x)).zz, 24859i);
    var var_1 = !vec3<bool>(true, all(func_3(u_input.a.xxw)), true);
    var var_2 = var_0;
    let var_3 = vec2<bool>(true, true);
    let var_4 = u_input.a.x;
    let var_5 = Struct_1(var_0.a, _wgslsmith_add_i32(_wgslsmith_sub_i32(global1.e | -15908i, _wgslsmith_dot_vec3_i32(vec3<i32>(-28504i, 37172i, var_2.e), vec3<i32>(83i, 2147483647i, -1i))) | var_2.b, -1i), global1.a.zy, select(global1.d, select(func_2(~var_4).d, !vec2<bool>(var_1.x, global3.d.x), true), all(select(select(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)], vec4<bool>(var_0.d.x, var_3.x, true, var_0.d.x)), !vec4<bool>(true, false, true, var_3.x), false))), _wgslsmith_sub_i32(global1.e, firstLeadingBit(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.b.wx), select(u_input.d, vec2<i32>(u_input.b.x, -2147483647i), global1.d.x)))));
    global2 = array<vec4<bool>, 13>();
    let var_6 = select(vec3<u32>(max(_wgslsmith_dot_vec3_u32(u_input.a.yzz, vec3<u32>(u_input.a.x, 12492u, 1u)), ~1u), ~var_4, 1u), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_4, 2500u, u_input.a.x), ~(vec3<u32>(var_4, u_input.a.x, var_4) >> (u_input.a.zxw % vec3<u32>(32u)))), ~(~u_input.a.zxz)), all(vec3<bool>(true, false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(4294967295u, var_4), var_6.xy, var_3.x));
}

