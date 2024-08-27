struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(48417u, 0u, 76720u);

var<private> global1: f32;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: Struct_4;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    let var_0 = -u_input.a.wzy;
    var var_1 = 941u;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -740f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(3052f))), _wgslsmith_f_op_f32(f32(-1f) * -365f))), _wgslsmith_div_i32(var_0.x, u_input.a.x & var_0.x));
    var var_3 = global3.a.b.b;
    var_2 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global3.a.b.b, var_2.a, global2.x))))))), ~((global3.b.b & ~2147483647i) | global3.b.b));
    return var_0.x;
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = vec4<i32>(i32(-1i) * -13611i, firstLeadingBit(func_3()), i32(-1i) * -49876i, ~abs(_wgslsmith_add_i32(global3.a.b.a, global3.b.b)) >> (min(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global3.a.b.d.yzx, vec3<u32>(global0.x, global0.x, 0u)), ~global3.a.b.d.x), _wgslsmith_clamp_u32(~global0.x, 0u, global3.a.b.d.x)) % 32u));
    var_0 = vec4<i32>(var_0.x, 2147483647i, 1i, ~14506i);
    global3 = Struct_4(global3.a, Struct_3(global3.a.b.b, u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(step(global3.a.b.b, global3.b.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1545f))), global3.b.a, global3.a.b.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.a, 969f, 1285f, global3.b.a) + vec4<f32>(-2206f, 2199f, -347f, 860f))))))));
    var var_2 = select(!arg_0.zxy, select(select(select(arg_0.wwx, arg_0.yzy, vec3<bool>(global3.a.a.x, arg_0.x, true)), !select(arg_0.zzx, arg_0.yxw, vec3<bool>(true, true, true)), !select(vec3<bool>(arg_0.x, true, false), vec3<bool>(global2.x, true, global2.x), arg_0.xzz)), !vec3<bool>(true | global3.a.a.x, arg_0.x, global3.a.a.x), !(!select(vec3<bool>(global3.a.a.x, arg_0.x, global3.a.a.x), vec3<bool>(true, true, true), arg_0.zyx))), false);
    return Struct_2(select(vec2<bool>(true, true), vec2<bool>(global2.x, all(!arg_0)), arg_0.x), Struct_1(func_3(), global3.b.a, vec4<i32>(-2147483647i, 1i, ~(~16742i), abs(i32(-1i) * -1i)), vec4<u32>(_wgslsmith_clamp_u32(52525u, 1u, ~global0.x), ~4533u, _wgslsmith_clamp_u32(~39103u, countOneBits(37735u), global3.a.b.d.x >> (global0.x % 32u)), global3.a.b.d.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = arg_0.b.d.x;
    var var_1 = -max(7678i, countOneBits(firstLeadingBit(_wgslsmith_dot_vec2_i32(global3.a.b.c.wy, vec2<i32>(-11515i, arg_0.b.c.x)))));
    let var_2 = arg_0.b;
    let var_3 = false;
    let var_4 = Struct_4(Struct_2(arg_0.a, var_2), global3.b);
    return Struct_4(func_2(vec4<bool>(!(global3.a.a.x && var_3), true, any(!vec4<bool>(arg_0.a.x, true, false, global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -479f) <= arg_2.x)), var_4.b);
}

fn func_5(arg_0: bool, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = u_input.a.x;
    global2 = vec3<bool>(arg_1.a.a.x | false, !func_2(select(!vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(false, false, arg_0, false), vec4<bool>(global3.a.a.x, global2.x, arg_0, arg_0))).a.x, arg_0);
    global1 = _wgslsmith_f_op_f32(select(-1567f, global3.a.b.b, !arg_0));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.b.b * _wgslsmith_f_op_f32(f32(-1f) * -205f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a.b.b + 1000f), 2048f))), _wgslsmith_f_op_f32(ceil(global3.a.b.b)), -1108f, _wgslsmith_f_op_f32(-func_4(func_4(global3.a, vec3<f32>(-270f, arg_1.a.b.b, -1063f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.a, 397f, -268f))).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2138f, global3.a.b.b, -653f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.b.a, global3.a.b.b, arg_1.b.a)))).b.a));
    let var_2 = arg_1.a;
    return vec4<bool>(all(!vec3<bool>(false, select(global3.a.a.x, arg_0, false), true)), global3.a.a.x, global2.x, any(!vec2<bool>(true, -2178f != arg_1.a.b.b)));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = -vec2<i32>(-2147483647i, u_input.a.x);
    var var_1 = select(!vec4<bool>(global2.x, false, false, false && func_2(arg_1).a.x), !arg_1, arg_1);
    var var_2 = -56043i;
    var var_3 = _wgslsmith_f_op_f32(2611f * _wgslsmith_f_op_f32(abs(arg_0.b)));
    global3 = func_4(global3.a, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1429f))), -1793f, _wgslsmith_f_op_f32(-global3.a.b.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-1806f)), global3.a.b.b, _wgslsmith_div_f32(global3.a.b.b, 105f))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.a.b.b, _wgslsmith_div_f32(-1356f, global3.a.b.b), 1345f))));
    return global3.a;
}

fn func_1() -> bool {
    var var_0 = Struct_4(func_6(global3.a.b, func_5(false || !global3.a.a.x, func_4(func_2(vec4<bool>(true, global3.a.a.x, global3.a.a.x, true)), vec3<f32>(-862f, 1056f, 1075f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-570f, 245f, 2292f)))), min(_wgslsmith_clamp_vec2_i32(~vec2<i32>(global3.a.b.a, -1i), abs(vec2<i32>(-1i, u_input.a.x)), u_input.a.xz), -min(global3.a.b.c.zy, global3.a.b.c.xy))), Struct_3(-220f, global3.a.b.c.x));
    var var_1 = Struct_4(var_0.a, func_4(global3.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-347f))), _wgslsmith_div_f32(-1000f, -983f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -240f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.a, 1838f, global3.a.b.b) * vec3<f32>(global3.b.a, -744f, -458f)) + vec3<f32>(217f, global3.a.b.b, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.b, 1810f, var_0.b.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-809f, global3.a.b.b, 898f) * vec3<f32>(global3.a.b.b, 615f, -1480f))), true))).b);
    var_0 = Struct_4(func_4(func_4(func_4(func_4(var_0.a, vec3<f32>(global3.b.a, -1032f, -290f), vec3<f32>(global3.a.b.b, 144f, var_0.a.b.b)).a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.b.b, var_1.a.b.b, var_0.a.b.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a, -473f, -1206f))).a, vec3<f32>(-1000f, var_1.b.a, _wgslsmith_f_op_f32(f32(-1f) * -268f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1547f, -2949f, var_1.a.b.b), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(720f, 181f, 510f))))).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(336f, 2548f, global3.b.a))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2863f * var_1.b.a), _wgslsmith_f_op_f32(ceil(1692f))), 1000f, -427f)).a, var_0.b);
    let var_2 = func_4(var_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-554f, global3.a.b.b, var_1.a.b.b) - vec3<f32>(-382f, var_0.a.b.b, var_0.b.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a, 1000f, global3.b.a) * vec3<f32>(global3.b.a, global3.b.a, -407f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2071f, -1410f, var_0.b.a), vec3<f32>(-1983f, 311f, -886f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-437f, global3.a.b.b, global3.a.b.b))), vec3<f32>(396f, _wgslsmith_f_op_f32(ceil(-1197f)), _wgslsmith_f_op_f32(-global3.a.b.b)), vec3<bool>(true, var_0.a.b.c.x > var_0.b.b, false)))), vec3<f32>(255f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.b - 970f) * 482f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1099f) * 195f)), var_0.b.a)).a;
    return false;
}

fn func_7(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_4) -> Struct_4 {
    var var_0 = -vec2<i32>(_wgslsmith_div_i32(-global3.a.b.a, arg_2.a.b.a), min(_wgslsmith_sub_i32(0i, 2147483647i) ^ func_6(Struct_1(global3.a.b.c.x, 1821f, vec4<i32>(1i, 1i, u_input.a.x, global3.b.b), arg_2.a.b.d), vec4<bool>(global3.a.a.x, arg_2.a.a.x, true, true), u_input.a.zy).b.c.x, u_input.a.x));
    var var_1 = arg_2.b;
    global0 = (~(~arg_2.a.b.d.xyx) ^ ~(~global3.a.b.d.zyy)) >> (vec3<u32>(global0.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_2.a.b.d.www, arg_2.a.b.d.wyz), 4294967295u) << (firstLeadingBit(arg_2.a.b.d.x << (global3.a.b.d.x % 32u)) % 32u), _wgslsmith_div_u32(14438u, 4294967295u)) % vec3<u32>(32u));
    var var_2 = -(i32(-1i) * -(~(~0i)));
    global2 = !vec3<bool>(true, all(global2.yx), false);
    return Struct_4(Struct_2(!select(func_4(Struct_2(vec2<bool>(arg_0.x, arg_1), global3.a.b), vec3<f32>(-592f, var_1.a, var_1.a), vec3<f32>(-2309f, arg_2.a.b.b, arg_2.b.a)).a.a, vec2<bool>(true, false), vec2<bool>(global2.x, false)), func_4(Struct_2(arg_2.a.a, arg_2.a.b), vec3<f32>(global3.a.b.b, _wgslsmith_f_op_f32(var_1.a + 429f), _wgslsmith_f_op_f32(-global3.b.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(203f, var_1.a, 966f)) + vec3<f32>(-1372f, arg_2.a.b.b, -832f))).a.b), func_4(arg_2.a, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(func_2(vec4<bool>(false, global2.x, true, false)).b.b, _wgslsmith_f_op_f32(round(303f)), _wgslsmith_f_op_f32(183f * 227f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a, var_1.a, global3.b.a))))), vec3<f32>(_wgslsmith_f_op_f32(-global3.b.a), -568f, _wgslsmith_f_op_f32(-185f - -257f)), true))).b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_7(!(!select(select(vec3<bool>(global3.a.a.x, false, global2.x), vec3<bool>(true, global2.x, global2.x), vec3<bool>(true, global3.a.a.x, false)), vec3<bool>(false, global3.a.a.x, false), func_1())), select(false, global3.a.a.x, !global2.x), Struct_4(func_4(func_2(!vec4<bool>(global3.a.a.x, global2.x, global2.x, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.b.a, global3.a.b.b, global3.a.b.b), vec3<f32>(global3.b.a, global3.a.b.b, global3.b.a), vec3<bool>(global3.a.a.x, true, false)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.b.a, global3.a.b.b, -1569f), vec3<f32>(-1207f, 198f, global3.a.b.b)))).a, Struct_3(_wgslsmith_div_f32(global3.b.a, 1378f), ~reverseBits(u_input.a.x))));
    global3 = func_4(func_2(!vec4<bool>(global2.x | global3.a.a.x, global3.a.a.x, !global3.a.a.x, true)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.b.b, 636f, global3.a.b.b)))), vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), global3.a.b.b, _wgslsmith_f_op_f32(1326f * -1646f)), func_2(select(vec4<bool>(global3.a.a.x, true, false, global2.x), vec4<bool>(false, global2.x, true, false), vec4<bool>(global3.a.a.x, global2.x, global2.x, true))).a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(962f, 1000f, 1459f) + vec3<f32>(-642f, 209f, global3.a.b.b)) - vec3<f32>(-457f, global3.b.a, 1116f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global3.b.a, 2247f), vec3<f32>(global3.a.b.b, -1000f, -1325f)))), false))));
    var var_0 = global3.a.b;
    var var_1 = Struct_4(global3.a, global3.b);
    let var_2 = func_7(!(!(!(!vec3<bool>(global3.a.a.x, global3.a.a.x, global2.x)))), true, Struct_4(func_4(func_7(vec3<bool>(true, var_1.a.a.x, global3.a.a.x), true, Struct_4(var_1.a, Struct_3(1000f, 11197i))).a, vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), 1124f, var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a, 2230f, var_0.b)))).a, func_7(select(vec3<bool>(true, global2.x, var_1.a.a.x), vec3<bool>(var_1.a.a.x, false, global3.a.a.x), vec3<bool>(var_1.a.a.x, false, var_1.a.a.x)), !func_5(false, Struct_4(var_1.a, global3.b)).x, func_7(func_5(true, Struct_4(Struct_2(vec2<bool>(global3.a.a.x, global3.a.a.x), global3.a.b), global3.b)).ywy, false, func_7(vec3<bool>(false, false, global2.x), true, Struct_4(global3.a, global3.b)))).b)).a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~18209u, _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.d.x, ~4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_0.d.x), countOneBits(vec2<u32>(4294967295u, var_0.d.x))), global3.a.b.d.wx >> (vec2<u32>(4294967295u, global3.a.b.d.x) % vec2<u32>(32u))), vec2<u32>(countOneBits(13003u), global0.x)), u_input.a.x, -vec4<i32>(1i, u_input.a.x, -6309i, func_3()), ~(-var_1.a.b.c.x));
}

