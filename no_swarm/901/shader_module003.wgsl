struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(2147483647i, -1745i, 0i, i32(-2147483648), 1i, i32(-2147483648), 1i, -1i, -32768i, 63705i, -58825i, 8628i, -27058i, 34991i, 0i, 1i, 2147483647i, 1i, 2147483647i, 5716i, -35713i, i32(-2147483648), 0i, -30925i);

var<private> global1: u32;

var<private> global2: f32 = -1988f;

var<private> global3: vec4<f32> = vec4<f32>(-1000f, -1000f, 1028f, 432f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = 5185i;
    global1 = 42922u;
    let var_1 = countOneBits(_wgslsmith_mult_vec2_u32(~u_input.a.yw, ~(vec2<u32>(1u, 13599u) << (countOneBits(vec2<u32>(1u, u_input.e)) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, -1000f, -1381f, global3.x), vec4<f32>(-1558f, arg_0, arg_0, 313f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1237f, 698f, -517f, global3.x)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false)))));
    var var_3 = u_input.a.xyz << (_wgslsmith_mod_vec3_u32(select(vec3<u32>(1u, u_input.e, _wgslsmith_add_u32(var_1.x, 4294967295u)), ~u_input.a.zxw, true), ~(~select(vec3<u32>(u_input.c, 1u, 82067u), vec3<u32>(u_input.c, var_1.x, 21247u), vec3<bool>(false, true, true)))) % vec3<u32>(32u));
    return _wgslsmith_add_u32(_wgslsmith_div_u32(firstTrailingBit(firstLeadingBit(1u & var_3.x)), ~select(u_input.c, ~4294967295u, true)), 81236u);
}

fn func_2(arg_0: vec4<i32>) -> vec4<f32> {
    global3 = vec4<f32>(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(-459f + global3.x)), -176f, 1000f, -780f);
    global1 = ~func_3(162f);
    let var_0 = _wgslsmith_f_op_vec3_f32(global3.xyx + _wgslsmith_f_op_vec3_f32(abs(global3.wwy)));
    global1 = abs(_wgslsmith_clamp_u32(~u_input.e, countOneBits(u_input.a.x), u_input.e));
    var var_1 = -2180f;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(sign(-999f)), var_0.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -3088f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1634f, global3.x, var_0.x, global3.x) * vec4<f32>(global3.x, var_0.x, 1116f, -1028f)))) - vec4<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), global3.x, _wgslsmith_f_op_f32(global3.x + 1322f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * global3.x), _wgslsmith_f_op_f32(141f - global3.x), _wgslsmith_f_op_f32(global3.x - -728f), var_0.x), vec4<f32>(_wgslsmith_div_f32(global3.x, -1620f), var_0.x, _wgslsmith_div_f32(-587f, -1090f), global3.x)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_3) -> i32 {
    let var_0 = countOneBits(vec3<u32>(arg_2.a.a.c, ~select(_wgslsmith_sub_u32(arg_2.a.c.x, 4294967295u), abs(arg_0.x), all(vec2<bool>(arg_2.a.e, true))), arg_0.x));
    var var_1 = select(vec4<bool>(!arg_2.a.e, all(vec2<bool>(arg_2.a.e, any(vec2<bool>(arg_2.a.e, arg_2.a.e)))), false, -2147483647i < _wgslsmith_dot_vec4_i32(-vec4<i32>(-14185i, u_input.d, 2147483647i, global0[_wgslsmith_index_u32(u_input.e, 24u)]), vec4<i32>(u_input.d, 25994i, 1i, arg_2.a.d.x))), vec4<bool>(false, arg_2.a.e, false, _wgslsmith_f_op_f32(-1635f - 832f) < _wgslsmith_f_op_f32(arg_2.a.a.b.x * _wgslsmith_f_op_f32(-1120f * global3.x))), true || all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(arg_2.a.e, arg_2.a.e)), !vec2<bool>(arg_2.a.e, false), all(vec3<bool>(arg_2.a.e, arg_2.a.e, false)))));
    return _wgslsmith_div_i32(_wgslsmith_sub_i32(-global0[_wgslsmith_index_u32(~(1u | arg_2.a.c.x), 24u)], ~(-26701i)), -1i);
}

fn func_1() -> f32 {
    let var_0 = -vec4<i32>(-max(-17511i, 0i) & global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(75294u, 10580u) >> (u_input.a.x % 32u), 24u)], func_4(u_input.a.zwz, _wgslsmith_f_op_vec4_f32(func_2(~vec4<i32>(-1i, -4770i, global0[_wgslsmith_index_u32(u_input.c, 24u)], u_input.b))), Struct_3(Struct_2(Struct_1(vec4<f32>(global3.x, -531f, -1428f, -467f), global3.wz, u_input.e), vec2<u32>(u_input.e, 4294967295u), vec3<u32>(u_input.c, u_input.a.x, 23094u), vec2<i32>(28381i, global0[_wgslsmith_index_u32(u_input.c, 24u)]), false))), -2147483647i >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(22315u, u_input.a.x), countOneBits(4294967295u)) % 32u), ~u_input.b);
    global1 = u_input.c;
    let var_1 = abs(-max(var_0 >> (vec4<u32>(u_input.e, u_input.c, 716u, 16296u) % vec4<u32>(32u)), var_0) >> (~abs(u_input.a) % vec4<u32>(32u)));
    var var_2 = -u_input.b;
    var_2 = i32(-1i) * -5111i;
    return _wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(-1515f + global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(func_1());
    global0 = array<i32, 24>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(22494i, 516i, u_input.d, global0[_wgslsmith_index_u32(u_input.e, 24u)]) & vec4<i32>(global0[_wgslsmith_index_u32(33033u, 24u)], u_input.b, u_input.b, -2147483647i))), vec4<f32>(global3.x, -824f, global3.x, _wgslsmith_f_op_f32(global3.x * global3.x))), global3.zz, u_input.c), (~countOneBits(u_input.a.wx) >> (max(u_input.a.yx, abs(vec2<u32>(1u, 1u))) % vec2<u32>(32u))) | u_input.a.wx, u_input.a.zxz, ~vec2<i32>(func_4(countOneBits(vec3<u32>(37411u, 0u, 46929u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1102f, global3.x, global3.x, global3.x)), Struct_3(Struct_2(Struct_1(vec4<f32>(global3.x, global3.x, global3.x, 1336f), vec2<f32>(1778f, global3.x), u_input.c), vec2<u32>(u_input.e, 1u), u_input.a.zwy, vec2<i32>(-1i, 0i), true))), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 24u)], -19549i), vec2<i32>(-1i, 38545i)) << (_wgslsmith_sub_u32(u_input.c, u_input.a.x) % 32u)), all(select(vec2<bool>(any(vec3<bool>(false, true, true)), -1i == global0[_wgslsmith_index_u32(4074u, 24u)]), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true))));
    let var_1 = select(select(select(select(!vec4<bool>(true, var_0.e, var_0.e, var_0.e), !vec4<bool>(var_0.e, var_0.e, var_0.e, var_0.e), vec4<bool>(var_0.e, var_0.e, var_0.e, var_0.e)), !vec4<bool>(false, var_0.e, var_0.e, true), select(!vec4<bool>(var_0.e, true, var_0.e, true), !vec4<bool>(true, true, var_0.e, false), var_0.e)), !select(select(vec4<bool>(var_0.e, var_0.e, var_0.e, false), vec4<bool>(true, var_0.e, var_0.e, true), vec4<bool>(false, var_0.e, var_0.e, var_0.e)), !vec4<bool>(var_0.e, true, true, false), !var_0.e), vec4<bool>(!any(vec3<bool>(false, var_0.e, var_0.e)), countOneBits(u_input.d) >= countOneBits(global0[_wgslsmith_index_u32(u_input.e, 24u)]), var_0.e, var_0.e)), vec4<bool>(var_0.e, var_0.e, any(vec2<bool>(select(false, false, false), true)), true), all(vec4<bool>(var_0.e, any(vec4<bool>(false, var_0.e, var_0.e, false)) && true, true, !any(vec4<bool>(var_0.e, var_0.e, var_0.e, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global3.yyw, vec3<f32>(1216f, 582f, var_0.a.a.x), var_1.zyw)) + var_0.a.a.zww) + vec3<f32>(579f, _wgslsmith_f_op_f32(-1037f * global3.x), _wgslsmith_f_op_f32(var_0.a.b.x - var_0.a.b.x))) - vec3<f32>(var_0.a.a.x, 818f, _wgslsmith_f_op_f32(select(1000f, -696f, any(vec4<bool>(false, var_1.x, false, var_0.e)))))));
}

