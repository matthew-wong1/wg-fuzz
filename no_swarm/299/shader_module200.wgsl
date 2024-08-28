struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<i32>(6164i, 8345i), vec4<bool>(false, true, true, false), false);

var<private> global1: Struct_3 = Struct_3(Struct_1(16073i), vec4<u32>(77278u, 4294967295u, 42832u, 11648u));

var<private> global2: array<f32, 15> = array<f32, 15>(119f, -669f, -121f, 905f, -821f, -346f, -712f, 176f, -1285f, -1581f, 818f, -1992f, 860f, 1333f, 115f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> vec4<bool> {
    global2 = array<f32, 15>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~min(arg_1, _wgslsmith_clamp_u32(1u, arg_1, global1.b.x)), 15u)]));
    var var_1 = max(arg_1 & 19214u, ~abs(~(global1.b.x << (19061u % 32u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-283f, 308f))) - vec2<f32>(964f, var_0))))));
    var_2 = vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), -1588f, true)) - -1196f)));
    return vec4<bool>(false, !(!any(global0.b)) & !global0.b.x, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(~49120u, 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(219f - 1053f) - _wgslsmith_f_op_f32(var_2.x - global2[_wgslsmith_index_u32(0u, 15u)])), _wgslsmith_f_op_f32(sign(var_2.x)) > var_0)) != -536f, arg_2);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: u32) -> vec2<f32> {
    let var_0 = u_input.c.xz;
    var var_1 = -925f;
    global0 = Struct_4(vec2<i32>(-_wgslsmith_dot_vec2_i32(select(u_input.c.xz, vec2<i32>(global1.a.a, global0.a.x), arg_0.x), _wgslsmith_clamp_vec2_i32(u_input.c.xy, var_0, vec2<i32>(0i, var_0.x))), -2147483647i), func_3(arg_1.a, arg_3, global0.c), (2660u | _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, 1u), global1.b.yzw))) == 0u);
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(775f, global2[_wgslsmith_index_u32(4294967295u, 15u)], 817f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(18828u, 15u)], 525f, global2[_wgslsmith_index_u32(49956u, 15u)]), vec3<f32>(-924f, -956f, -763f), vec3<bool>(arg_0.x, global0.b.x, global0.b.x))))))));
    let var_3 = ~(~60988u);
    return _wgslsmith_f_op_vec2_f32(-var_2.xy);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> i32 {
    var var_0 = global1.a;
    let var_1 = global0.b.yy;
    global1 = Struct_3(Struct_1(i32(-1i) * -2147483647i), max(~((vec4<u32>(4294967295u, 12350u, 0u, 5928u) ^ global1.b) >> (firstTrailingBit(vec4<u32>(16623u, 1u, global1.b.x, arg_2.x)) % vec4<u32>(32u))), vec4<u32>(4294967295u, arg_2.x, 36502u, 1u)));
    var_0 = Struct_1(-25966i);
    let var_2 = select(vec2<bool>(!global0.b.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.b.x, 61322u), 15u)]) <= _wgslsmith_f_op_f32(ceil(530f))), select(global0.b.wy, !select(!vec2<bool>(false, global0.c), select(global0.b.zy, global0.b.zw, true), vec2<bool>(false, global0.b.x)), global0.b.ww), !vec2<bool>(global0.b.x, true));
    return _wgslsmith_mod_i32(1i, ~(~countOneBits(-7699i)));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = vec2<u32>(global1.b.x, _wgslsmith_div_u32(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(global1.b.x, global1.b.x), global1.b.x, firstTrailingBit(32386u)), 60257u));
    let var_1 = Struct_2(vec4<u32>(52757u, global1.b.x, ~58099u & ~(var_0.x << (var_0.x % 32u)), abs(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.x, global1.b.x), ~68461u, var_0.x))), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-312f, _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(global1.b.x, 15u)])), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, global2[_wgslsmith_index_u32(global1.b.x, 15u)]) + vec2<f32>(arg_0, 1633f)) + _wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(false, global0.c, false), Struct_3(Struct_1(global1.a.a), global1.b), global1.b.yx, global1.b.x)))), ~global1.b.wy | global1.b.wy));
    var var_2 = arg_2.a;
    let var_3 = var_1;
    let var_4 = _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(~(var_0.x >> (firstTrailingBit(13678u) % 32u)), 15u)], 891f));
    return Struct_1(-56783i);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> Struct_4 {
    global1 = arg_1;
    let var_0 = Struct_4(~(~(~vec2<i32>(u_input.c.x, 2147483647i))), !(!(!global0.b)), false);
    let var_1 = func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1261f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(729f, 1089f, true))))))), !var_0.b.www, func_1(_wgslsmith_f_op_f32(f32(-1f) * -661f), global0.b.xxz, func_1(_wgslsmith_f_op_f32(trunc(-971f)), vec3<bool>(select(var_0.b.x, true, false), !global0.b.x, var_0.b.x), global1.a, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(4294967295u, 15u)])) <= -128f), !var_0.b.x), false);
    global2 = array<f32, 15>();
    global1 = arg_1;
    return var_0;
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4) -> Struct_2 {
    var var_0 = -global1.a.a;
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.b.zy, ~global1.b.wz), 15u)];
    let var_2 = Struct_2(~(vec4<u32>(~global1.b.x, global1.b.x ^ 0u, global1.b.x, global1.b.x) & global1.b), 1138i);
    var var_3 = global1.a;
    var_0 = ~(-21049i);
    return Struct_2(vec4<u32>(global1.b.x, 34917u, var_2.a.x, ~1u), ~arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~38660u;
    var var_1 = func_6(func_5(vec4<f32>(2019f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(global1.b.x, 15u)])))), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1.b.x, 15u)], -499f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, global2[_wgslsmith_index_u32(global1.b.x, 15u)], global0.c)))), Struct_3(func_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 15u)] - global2[_wgslsmith_index_u32(0u, 15u)]), global0.b.yzy, global1.a, 0u >= var_0), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 65623u, var_0), vec3<u32>(4294967295u, var_0, var_0)), global1.b.x, global1.b.x >> (24659u % 32u), 4294967295u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 15u)]), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0, abs(global1.b.x)), 15u)], true)), ~(_wgslsmith_sub_u32(22573u, var_0) << (18137u % 32u))), 1i, Struct_4(firstTrailingBit(global0.a), vec4<bool>(false, global0.c, false, !global0.b.x), any(select(!global0.b.zx, global0.b.zx, func_3(global1.a, 6225u, true).yw))));
    var var_2 = global1.b.www;
    var var_3 = 768f;
    global2 = array<f32, 15>();
    let var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(28886u, 15u)]), 995f)))));
    var var_5 = vec2<bool>(true, true);
    var_5 = func_3(Struct_1(reverseBits(max(~26479i, i32(-1i) * -43412i))), ~var_2.x, all(!global0.b.wx)).ww;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2667f, 1365f, global2[_wgslsmith_index_u32(~reverseBits(4294967295u), 15u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.a.x, 15u)]), 1448f) * global2[_wgslsmith_index_u32(global1.b.x, 15u)]))), ~select(vec2<u32>(24401u, 93461u) & var_1.a.ww, vec2<u32>(var_2.x, var_1.a.x), func_5(vec4<f32>(-536f, global2[_wgslsmith_index_u32(var_0, 15u)], -1000f, 510f), Struct_3(Struct_1(global1.a.a), vec4<u32>(4294967295u, var_1.a.x, var_1.a.x, global1.b.x)), global2[_wgslsmith_index_u32(82080u, 15u)], var_1.a.x).b.zw) ^ _wgslsmith_sub_vec2_u32(select(_wgslsmith_div_vec2_u32(var_1.a.yz, vec2<u32>(global1.b.x, var_2.x)), ~var_2.zy, !global0.b.zw), vec2<u32>(_wgslsmith_mult_u32(var_2.x, var_1.a.x), select(156189u, var_2.x, global0.b.x))), select(var_0, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0, var_0, 27522u), vec3<u32>(1u, 4294967295u, var_1.a.x) >> (vec3<u32>(global1.b.x, 4294967295u, 22947u) % vec3<u32>(32u))), false));
}

