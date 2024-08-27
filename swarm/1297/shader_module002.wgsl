struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: array<vec4<f32>, 11>;

var<private> global2: vec4<u32>;

var<private> global3: vec4<f32> = vec4<f32>(469f, 2031f, -684f, -1265f);

var<private> global4: i32 = -63592i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    let var_0 = -1000f;
    var var_1 = false & all(select(vec3<bool>(arg_2.a, !arg_3.b.a, arg_3.b.a), select(select(vec3<bool>(false, true, true), vec3<bool>(arg_3.d.x, arg_2.a, arg_2.a), false), !vec3<bool>(arg_2.a, false, arg_3.d.x), arg_2.a & arg_3.d.x), select(!vec3<bool>(arg_2.a, arg_3.d.x, arg_2.a), vec3<bool>(true, true, arg_3.d.x), select(vec3<bool>(false, false, arg_3.d.x), vec3<bool>(false, arg_3.d.x, arg_2.a), arg_3.d.x))));
    global0 = array<f32, 15>();
    let var_2 = !(true || !all(vec3<bool>(true, arg_3.d.x, true))) && false;
    let var_3 = global1[_wgslsmith_index_u32(31026u, 11u)];
    return 21638u;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<i32>) -> Struct_2 {
    global2 = vec4<u32>(~16478u, global2.x, global2.x | func_3(_wgslsmith_f_op_vec3_f32(global3.zzw * global3.zxy), arg_2.x, Struct_1(arg_1 && arg_1, _wgslsmith_div_u32(arg_0, arg_0), ~(-2147483647i), 0u, 12409i), Struct_4(~vec4<u32>(arg_0, 1u, arg_0, 104789u), Struct_1(arg_1, arg_0, -17783i, global2.x, 35289i), vec2<i32>(2147483647i, -3658i), vec2<bool>(true, true))), abs(reverseBits(~4858u)) & global2.x);
    global3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-961f * global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1000f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.x, global0[_wgslsmith_index_u32(global2.x, 15u)])))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-779f - -400f)))))), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(597f + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1789f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 15u)]))))));
    global1 = array<vec4<f32>, 11>();
    global4 = 15025i;
    global2 = firstTrailingBit(vec4<u32>(20291u, _wgslsmith_add_u32(1u, global2.x), ~(~_wgslsmith_sub_u32(global2.x, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~global2.x, _wgslsmith_dot_vec3_u32(global2.zwz, vec3<u32>(0u, 34787u, global2.x))), ~global2.wz)));
    return Struct_2(global0[_wgslsmith_index_u32(~42105u, 15u)]);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: vec2<f32>) -> i32 {
    global0 = array<f32, 15>();
    global1 = array<vec4<f32>, 11>();
    let var_0 = vec4<bool>(true, any(vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), select(true, all(vec2<bool>(false, true)), u_input.c < -1i), false, u_input.c <= u_input.c)), !all(vec3<bool>(true, true, true)), any(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, false, any(vec2<bool>(true, false))))));
    let var_1 = var_0.zwy;
    global0 = array<f32, 15>();
    return 17921i;
}

fn func_1(arg_0: f32) -> vec3<u32> {
    let var_0 = global3.www;
    var var_1 = ~u_input.b;
    var var_2 = func_4(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-458f, _wgslsmith_f_op_f32(-global3.x))), var_0.x))), func_2(31410u, true, vec3<i32>(var_1.x ^ -2147483647i, -34091i, (-20333i << (global2.x % 32u)) >> (~78244u % 32u))), _wgslsmith_f_op_f32(select(var_0.x, 823f, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 15u)]))))));
    global4 = -31294i;
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.x + -1134f), _wgslsmith_f_op_f32(f32(-1f) * -1316f), true)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, 1u, 4294967295u), 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -867f) - global3.x), var_0.x)));
    return _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(max(abs(global2.xwy) ^ (global2.xww & global2.www), global2.wzx), vec3<u32>(~_wgslsmith_mult_u32(global2.x, 0u), ~global2.x, 4294967295u)), _wgslsmith_mod_vec3_u32(max(reverseBits(~vec3<u32>(global2.x, 13077u, 1u)), firstLeadingBit(global2.wxz) << (global2.yxz % vec3<u32>(32u))), countOneBits(~(vec3<u32>(47756u, 4294967295u, global2.x) ^ vec3<u32>(global2.x, global2.x, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~_wgslsmith_div_u32(global2.x, global2.x), ~(~22686u), _wgslsmith_mult_u32(global2.x >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, global2.x), ~28817u) % 32u), global2.x));
    var_0 = ~min(func_1(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(26497u, 15u)]))), ~global2.yzz | vec3<u32>(global2.x, var_0.x, var_0.x)) << (global2.xzw % vec3<u32>(32u));
    global0 = array<f32, 15>();
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, firstLeadingBit(select(-2147483647i, -34026i, false) | _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), u_input.b))), min(0i, abs(_wgslsmith_add_i32(u_input.c, ~1i))));
    let var_2 = Struct_3(Struct_1(-290f >= _wgslsmith_f_op_f32(select(func_2(49838u, false, vec3<i32>(var_1, -2147483647i, u_input.b.x)).a, _wgslsmith_f_op_f32(1384f * global3.x), true)), 0u, u_input.a.x ^ abs(-2147483647i), global2.x, -(~func_4(Struct_2(816f), Struct_2(global0[_wgslsmith_index_u32(global2.x, 15u)]), global0[_wgslsmith_index_u32(4294967295u, 15u)], vec2<f32>(global3.x, global0[_wgslsmith_index_u32(var_0.x, 15u)])))), Struct_2(global3.x), 6431u, Struct_1(true, ~0u >> (var_0.x % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, var_1, 9756i) ^ vec3<i32>(-2147483647i, var_1, 2147483647i), vec3<i32>(u_input.c, -1i, var_1) | _wgslsmith_mult_vec3_i32(vec3<i32>(var_1, 50117i, var_1), vec3<i32>(0i, var_1, -1i))), var_0.x, u_input.b.x));
    global1 = array<vec4<f32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_mod_u32(var_2.d.b << (var_2.d.b % 32u), 1u), global2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(28691u, 11u)], global1[_wgslsmith_index_u32(51256u, 11u)], var_2.d.a)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(549f, 928f, var_2.b.a, var_2.b.a), global1[_wgslsmith_index_u32(1u, 11u)])), vec4<f32>(695f, -664f, var_2.b.a, -755f), var_2.a.a))))), abs(min(1u, _wgslsmith_mod_u32(4294967295u ^ var_2.a.d, var_2.a.d & 81563u))), -_wgslsmith_sub_i32(u_input.b.x, abs(i32(-1i) * -2467i)));
}

