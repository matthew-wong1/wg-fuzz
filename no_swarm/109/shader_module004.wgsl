struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(3649u, 0u, 14615u, 14606u);

var<private> global1: vec3<u32> = vec3<u32>(0u, 54026u, 1u);

var<private> global2: vec4<f32>;

var<private> global3: array<vec3<bool>, 18>;

var<private> global4: array<i32, 30>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> vec4<bool> {
    return vec4<bool>(!(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b, global4[_wgslsmith_index_u32(global1.x, 30u)]), 1082i) == 36533i), arg_0.x, arg_0.x, arg_0.x);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-452f - 561f), _wgslsmith_f_op_f32(f32(-1f) * -295f), true)), global2.x, _wgslsmith_f_op_f32(-global2.x)), arg_3, arg_3.c.c.zzx);
    let var_1 = arg_3;
    let var_2 = !vec2<bool>(select(all(vec3<bool>(true, arg_0, arg_2)), global0[_wgslsmith_index_u32(48021u, 4u)] > select(var_0.b.c.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59116u, 4u)], 4u)], arg_2), true && arg_3.c.c.x), !arg_2);
    var var_3 = var_0;
    var var_4 = select(arg_1.c.wzw, arg_1.c.xxw, true);
    return arg_1.a;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), -805f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_2.a.x, -1667f)))), -1320f))));
    global3 = array<vec3<bool>, 18>();
    var var_1 = ~func_4(arg_2.c.x, arg_0.c, !any(select(vec2<bool>(arg_2.c.x, arg_2.c.x), arg_0.c.c.yz, true)), Struct_3(~max(0u, 1u), ~41089u, Struct_1(1u, arg_2.b.c.b, func_3(vec2<bool>(arg_0.c.c.x, arg_0.c.c.x)))));
    let var_2 = _wgslsmith_sub_i32(select(-1i, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), 30u)], arg_0.c.c.x), max(u_input.e.x, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(39322u ^ arg_0.a, ~1u) << (~(~48218u) % 32u), 30u)]));
    global4 = array<i32, 30>();
    return Struct_5(Struct_1(firstTrailingBit(0u), ~_wgslsmith_mult_vec2_u32(firstTrailingBit(global1.zy), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, arg_0.c.b.x), arg_3, arg_2.b.c.b)), !select(!vec4<bool>(true, false, arg_2.c.x, arg_2.c.x), vec4<bool>(arg_0.c.c.x, arg_2.c.x, arg_0.c.c.x, false), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))), arg_2.b.c, any(arg_2.c));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5) -> Struct_5 {
    var var_0 = Struct_2(4294967295u, u_input.a.x, global2.xxy, Struct_1(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], countOneBits(_wgslsmith_add_u32(u_input.d.x, 35476u))), ~(~arg_0.b & vec2<u32>(2923u, arg_0.a)), vec4<bool>(arg_1.a.c.x, arg_0.c.x, 2147483647i > (u_input.b ^ global4[_wgslsmith_index_u32(16892u, 30u)]), arg_1.c.c.x)));
    var_0 = Struct_2(firstLeadingBit(_wgslsmith_dot_vec3_u32(countOneBits(u_input.a), u_input.a & vec3<u32>(var_0.a, 0u, global1.x)) ^ firstTrailingBit(min(arg_0.a, u_input.d.x))), _wgslsmith_mult_u32(global1.x << (~global0[_wgslsmith_index_u32(48564u, 4u)] % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 0u), vec2<u32>(u_input.d.x, arg_1.a.a))) & 89922u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-392f, 402f, 951f) + vec3<f32>(2053f, arg_1.b, arg_1.b)) * vec3<f32>(1000f, var_0.c.x, 1000f))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - var_0.c.x), _wgslsmith_f_op_f32(max(2801f, _wgslsmith_f_op_f32(-global2.x))))), Struct_1(~arg_1.a.a, select(arg_0.b, reverseBits(arg_1.a.b), vec2<bool>(all(vec4<bool>(true, arg_1.c.c.x, arg_1.d, true)), var_0.b < arg_0.b.x)), arg_0.c));
    return arg_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3) -> bool {
    global0 = array<u32, 4>();
    var var_0 = func_5(arg_1.c, func_2(Struct_3(_wgslsmith_mult_u32(~global1.x, global1.x), ~0u, arg_1.c), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x - 769f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2189f, global2.x) + global2.x), global2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x)))), Struct_4(_wgslsmith_f_op_vec3_f32(global2.xzz * _wgslsmith_f_op_vec3_f32(vec3<f32>(594f, global2.x, 1247f) * global2.xyz)), Struct_3(~1u, ~4294967295u, Struct_1(4294967295u, global1.zz, arg_1.c.c)), select(arg_1.c.c.wyz, select(arg_1.c.c.wxy, global3[_wgslsmith_index_u32(1u, 18u)], arg_1.c.c.zwy), global3[_wgslsmith_index_u32(arg_0.x, 18u)])), _wgslsmith_sub_vec2_u32(~arg_1.c.b << (u_input.a.yz % vec2<u32>(32u)), global1.zy)));
    var var_1 = Struct_2(~_wgslsmith_add_u32(abs(~arg_0.x), ~max(59765u, 1u)), _wgslsmith_add_u32(~(~(~arg_0.x)), ~_wgslsmith_div_u32(func_4(arg_1.c.c.x, arg_1.c, false, arg_1), u_input.d.x ^ global0[_wgslsmith_index_u32(arg_1.a, 4u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.zww) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.zyz) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_0.b, global2.x))))), arg_1.c);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-292f, _wgslsmith_div_f32(var_0.b, var_1.c.x), 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_1.c.x, var_0.b)))), Struct_3(~(~(~var_0.a.a)), global0[_wgslsmith_index_u32(~func_2(Struct_3(4294967295u, 22252u, Struct_1(56041u, arg_1.c.b, vec4<bool>(arg_1.c.c.x, var_0.d, false, false))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.c.x, var_1.c.x, 1000f, 736f))), Struct_4(var_1.c, Struct_3(69905u, var_0.c.a, Struct_1(44018u, vec2<u32>(u_input.a.x, var_0.a.a), arg_1.c.c)), vec3<bool>(false, var_0.c.c.x, true)), ~vec2<u32>(36545u, arg_0.x)).c.b.x, 4u)], Struct_1((18917u | var_1.b) >> (global1.x % 32u), _wgslsmith_mod_vec2_u32(u_input.a.zy, var_1.d.b) >> (vec2<u32>(14276u, 9835u) % vec2<u32>(32u)), !select(var_1.d.c, arg_1.c.c, var_1.d.c))), !vec3<bool>(true, any(global3[_wgslsmith_index_u32(arg_0.x, 18u)]) || var_0.c.c.x, u_input.e.x > 1i));
    global4 = array<i32, 30>();
    return _wgslsmith_f_op_f32(-func_2(var_2.b, vec4<f32>(-564f, 589f, global2.x, -477f), Struct_4(global2.yzw, Struct_3(97738u, var_1.a, var_0.a), !global3[_wgslsmith_index_u32(var_1.a, 18u)]), ~(~vec2<u32>(u_input.d.x, var_2.b.a))).b) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -728f)), 1016f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(-2147483647i, -1i, 41762i), -u_input.e.x) != (-1i >> (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(u_input.a.x, 1u)), 79661u, global0[_wgslsmith_index_u32(~4294967295u, 4u)] >> (select(27027u, 90397u, true) % 32u)) % 32u));
    let var_1 = Struct_3(global1.x, (abs(u_input.d.x) << (53035u % 32u)) & select(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(57239u, 4u)], 0u), global1.x, any(select(vec3<bool>(false, false, true), global3[_wgslsmith_index_u32(0u, 18u)], false))), Struct_1(0u, reverseBits(min(~vec2<u32>(36549u, 1u), ~u_input.d.yy)), select(vec4<bool>(all(vec3<bool>(false, true, false)), any(vec2<bool>(true, false)), true, func_1(vec4<u32>(78644u, 4294967295u, u_input.a.x, 20518u), Struct_3(25178u, 8433u, Struct_1(5438u, vec2<u32>(23371u, 1159u), vec4<bool>(true, false, true, true))))), select(func_2(Struct_3(0u, 0u, Struct_1(34362u, vec2<u32>(global1.x, global1.x), vec4<bool>(false, true, false, false))), vec4<f32>(global2.x, global2.x, global2.x, global2.x), Struct_4(vec3<f32>(546f, 310f, 1687f), Struct_3(u_input.a.x, 24656u, Struct_1(global1.x, global1.yy, vec4<bool>(false, false, false, true))), vec3<bool>(false, false, false)), vec2<u32>(global1.x, global1.x)).c.c, vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true)), true)));
    var var_2 = vec2<u32>(global0[_wgslsmith_index_u32(~reverseBits(firstTrailingBit(_wgslsmith_mult_u32(26892u, u_input.a.x))), 4u)], 29261u);
    let var_3 = true;
    global4 = array<i32, 30>();
    var var_4 = Struct_4(global2.zzy, var_1, func_2(var_1, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(644f, -277f)), global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global2.x)), Struct_4(global2.zzy, var_1, var_1.c.c.zzx), _wgslsmith_mult_vec2_u32(global1.xx, func_5(func_5(Struct_1(global1.x, vec2<u32>(4294967295u, 4294967295u), var_1.c.c), Struct_5(var_1.c, global2.x, Struct_1(u_input.d.x, vec2<u32>(var_1.b, 1u), vec4<bool>(false, false, true, var_1.c.c.x)), var_1.c.c.x)).a, Struct_5(var_1.c, 1417f, Struct_1(19801u, global1.yx, var_1.c.c), var_1.c.c.x)).a.b)).c.c.wxw);
    let var_5 = _wgslsmith_div_f32(-1516f, var_4.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(~max(~vec2<u32>(var_2.x, 44832u), vec2<u32>(var_2.x, 5023u)), vec2<u32>(95713u, var_1.b)), var_5, -17989i, vec3<f32>(global2.x, -1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.x - var_4.a.x)))))));
}

