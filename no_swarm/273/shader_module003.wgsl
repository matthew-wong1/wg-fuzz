struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec4<f32>(-427f, 436f, 1143f, -1176f), vec2<f32>(-338f, -320f)), Struct_2(true, false, vec3<f32>(-156f, -352f, -632f), Struct_1(vec4<f32>(-777f, 505f, 525f, -980f), vec2<f32>(-251f, 1000f))), vec4<bool>(false, false, false, false), Struct_3(vec2<f32>(-695f, -515f), Struct_2(false, true, vec3<f32>(1000f, 549f, 846f), Struct_1(vec4<f32>(1000f, 2207f, 687f, -387f), vec2<f32>(481f, 861f)))));

var<private> global1: array<i32, 8>;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: vec3<i32> = vec3<i32>(-15961i, 33828i, -8584i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global0.a.b.x)))));
    let var_1 = u_input.a.x;
    var var_2 = false;
    global3 = u_input.d;
    let var_3 = global0.b.d;
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.a.x, -154f, var_3.a.x)))))))));
}

fn func_2() -> Struct_4 {
    var var_0 = false;
    var var_1 = ~vec2<u32>(u_input.c.x, u_input.e);
    var var_2 = any(select(select(vec4<bool>(global0.d.b.b, -118f == global0.d.a.x, true, true), select(vec4<bool>(global2.x, global2.x, global0.c.x, false), select(vec4<bool>(false, global2.x, false, global0.c.x), vec4<bool>(true, true, global2.x, global0.b.a), global2.x), vec4<bool>(global2.x, global0.b.b, true, global2.x)), _wgslsmith_f_op_f32(min(global0.b.d.a.x, global0.b.c.x)) >= _wgslsmith_f_op_f32(max(global0.a.a.x, global0.d.b.c.x))), global0.c, global0.c.x));
    global3 = ~vec3<i32>(31824i, 2147483647i, ~78899i);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d.b.c) - _wgslsmith_f_op_vec3_f32(-global0.b.d.a.zwz))) * global0.d.b.c);
    return Struct_4(global0.d.b.d, global0.b, select(!global0.c, !select(select(vec4<bool>(global0.c.x, true, false, false), global0.c, global0.c), global0.c, !global0.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(420f, -962f) - global0.d.b.d.b.x) != _wgslsmith_div_f32(global0.b.c.x, var_3.x)), global0.d);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_4 {
    var var_0 = u_input.d;
    var var_1 = Struct_2(arg_2.x, all(!vec4<bool>(func_2().d.b.b, arg_2.x, all(vec4<bool>(false, true, arg_3.a, true)), false)), vec3<f32>(_wgslsmith_f_op_f32(global0.a.a.x * global0.d.b.c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_3.d.b.x)))), -340f), func_2().d.b.d);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_3.d.a)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1873f, arg_0.a.a.x, 1451f), global0.b.d.a)), _wgslsmith_f_op_vec4_f32(-var_1.d.a))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_3.d.a), _wgslsmith_div_vec4_f32(var_1.d.a, _wgslsmith_f_op_vec4_f32(min(arg_0.b.d.a, vec4<f32>(arg_0.a.a.x, arg_3.d.b.x, 891f, -912f)))))), true)));
    let var_3 = ~abs(vec2<u32>(u_input.a.x, ~max(14989u, 39751u)));
    let var_4 = ~vec2<u32>(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(65928u, 0u, var_3.x, arg_1.x), u_input.a)) >> (~(~max(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.e, arg_1.x)) << (~vec2<u32>(3317u, 53610u) % vec2<u32>(32u))) % vec2<u32>(32u));
    return arg_0;
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: i32, arg_3: vec3<f32>) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), global0.b.c.x, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.c.x) - _wgslsmith_f_op_f32(abs(arg_3.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - arg_1.d.b.c.x)))), _wgslsmith_f_op_f32(-global0.d.b.c.x));
    var var_1 = func_4(Struct_4(func_4(arg_1, ~vec2<u32>(u_input.c.x, u_input.a.x), global0.c, func_2().d.b).a, arg_1.b, global0.c, func_2().d), _wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.c.x), u_input.a), 23703u), reverseBits((u_input.c.yx ^ vec2<u32>(57640u, 0u)) & max(u_input.a.wy, u_input.c.yz)), u_input.c.yx), global0.c, func_2().d.b).d;
    let var_2 = Struct_5(vec4<bool>(any(global0.c.yzy), all(vec2<bool>(true, global2.x)), true, true), arg_1.d);
    let var_3 = global0.c.yz;
    var var_4 = func_4(func_4(Struct_4(func_2().d.b.d, arg_1.d.b, var_2.a, func_4(func_2(), min(u_input.c.yx, vec2<u32>(1u, u_input.a.x)), vec4<bool>(global0.b.b, false, false, arg_1.c.x), Struct_2(var_2.a.x, global2.x, arg_3, var_2.b.b.d)).d), ~u_input.a.yw, !global0.c, Struct_2(false, true, var_1.b.d.a.xwy, Struct_1(vec4<f32>(1000f, var_0.x, var_0.x, -1634f), vec2<f32>(-646f, -1000f)))), ~u_input.c.yz, !global0.c, Struct_2(var_1.b.a, all(global0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.zyy) - _wgslsmith_f_op_vec3_f32(arg_1.a.a.zzw * arg_1.a.a.xxy))), global0.d.b.d)).d.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(445f + arg_3.x))));
}

fn func_6(arg_0: f32, arg_1: vec2<i32>, arg_2: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.d.a.x * _wgslsmith_f_op_f32(-arg_2)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))))));
    global2 = global0.c.xx;
    var var_2 = global2.x;
    let var_3 = vec2<u32>(1u, ~_wgslsmith_sub_u32(~(u_input.e | 4294967295u), ~abs(u_input.c.x)));
    return func_4(func_4(Struct_4(global0.a, global0.d.b, select(vec4<bool>(true, false, global2.x, global0.d.b.b), !vec4<bool>(false, global0.d.b.a, global2.x, true), !global0.c), func_4(Struct_4(global0.d.b.d, global0.b, vec4<bool>(global0.b.b, global0.c.x, global0.d.b.b, true), global0.d), ~var_3, vec4<bool>(true, global2.x, global0.d.b.a, global2.x), func_2().d.b).d), max(min(select(vec2<u32>(u_input.a.x, var_3.x), var_3, global0.c.wz), vec2<u32>(var_3.x, 114536u)), countOneBits(u_input.c.yy)), vec4<bool>(true, !any(vec4<bool>(false, global2.x, true, true)), !(!global0.b.b), true || global0.d.b.b), Struct_2(true, any(func_4(Struct_4(global0.a, Struct_2(global0.c.x, false, vec3<f32>(1556f, global0.a.b.x, -820f), global0.a), vec4<bool>(global0.d.b.b, false, global0.d.b.a, global0.d.b.a), Struct_3(vec2<f32>(global0.b.c.x, arg_2), global0.b)), vec2<u32>(u_input.a.x, u_input.a.x), vec4<bool>(global2.x, true, false, true), Struct_2(false, false, global0.a.a.zzy, global0.d.b.d)).c.yxz), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global0.b.c))), func_2().d.b.d)), ~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 13005u), vec2<u32>(var_3.x, u_input.c.x), vec2<u32>(5153u, u_input.c.x)), vec2<u32>(u_input.c.x, var_3.x), !global0.c.xy) | u_input.a.wx, func_4(Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_2, arg_2, arg_2) - global0.a.a), _wgslsmith_f_op_vec3_f32(func_3()).xx), Struct_2(arg_2 != 1080f, func_4(Struct_4(global0.b.d, global0.b, vec4<bool>(true, global0.b.a, global2.x, global2.x), global0.d), vec2<u32>(5817u, var_3.x), vec4<bool>(global0.c.x, true, global0.c.x, global2.x), Struct_2(false, global2.x, global0.a.a.ywx, global0.a)).b.b, _wgslsmith_f_op_vec3_f32(-global0.d.b.c), Struct_1(global0.d.b.d.a, vec2<f32>(arg_0, global0.d.b.c.x))), global0.c, Struct_3(global0.b.c.zx, Struct_2(true, global2.x, global0.b.d.a.zxw, Struct_1(global0.d.b.d.a, global0.d.b.d.b)))), abs(u_input.a.xx), vec4<bool>(global0.d.b.a, ~u_input.c.x == _wgslsmith_add_u32(var_3.x, u_input.c.x), true, global2.x & true), Struct_2(any(func_2().c.wzx), !(true && global2.x), global0.b.d.a.wzw, func_2().d.b.d)).c, global0.d.b).d;
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(~u_input.c.x, min(1u, max(u_input.e, 17697u))), _wgslsmith_add_vec2_u32(u_input.c.zz, ~vec2<u32>(u_input.e, u_input.e)), global0.c.ww), vec2<u32>(31234u, abs(~1u)));
    let var_1 = func_6(arg_0.a.x, select(_wgslsmith_clamp_vec2_i32(-(~u_input.d.xy), vec2<i32>(_wgslsmith_mod_i32(global3.x, 37972i), select(global3.x, -871i, true)), vec2<i32>(global3.x, global3.x)), -countOneBits(vec2<i32>(0i, u_input.b.x) ^ global3.zx), global0.c.wz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1790f) + _wgslsmith_f_op_f32(func_5(true, func_4(func_2(), vec2<u32>(4294967295u, var_0), global0.c, Struct_2(global0.d.b.a, global0.b.a, arg_0.a.zyw, global0.d.b.d)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 2147483647i, 2147483647i, u_input.b.x), vec4<i32>(-23827i, -17567i, 0i, -2147483647i)), global3.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, 838f, -564f))))));
    let var_2 = global2.x;
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(global0.c.zyx);
    var var_1 = _wgslsmith_dot_vec3_i32(func_1(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(695f)), _wgslsmith_f_op_f32(f32(-1f) * -1128f), 564f, -850f), _wgslsmith_f_op_vec2_f32(max(global0.a.b, vec2<f32>(-1146f, -1019f))))), _wgslsmith_mult_vec3_i32(vec3<i32>(32638i, global1[_wgslsmith_index_u32(~33705u, 8u)], -2147483647i), vec3<i32>(6056i, global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.e, 79937u), 8u)], countOneBits(_wgslsmith_div_i32(-12866i, global1[_wgslsmith_index_u32(u_input.a.x, 8u)])))));
    let var_2 = u_input.e;
    var_1 = _wgslsmith_add_i32(select(-(~global3.x), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(40605u, 8u)], reverseBits(global3.x)), true), 1i);
    var var_3 = global2.x;
    global3 = vec3<i32>(~u_input.d.x, select(u_input.d.x, u_input.d.x, global2.x), -26042i);
    global1 = array<i32, 8>();
    var var_4 = _wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-global1[_wgslsmith_index_u32(4294967295u, 8u)], u_input.b.x)), ~((-global3.x >> (1u % 32u)) << (4294967295u % 32u)));
    global2 = select(!vec2<bool>(global0.b.a, global2.x), !(!global0.c.wx), func_2().d.b.b && !global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, 880i, 2147483647i, global1[_wgslsmith_index_u32(10183u, 8u)]), vec4<i32>(global3.x, global1[_wgslsmith_index_u32(u_input.c.x, 8u)], -64094i, 42505i)) >> (u_input.a % vec4<u32>(32u))), -34486i << (~(~(var_2 | 0u)) % 32u));
}

