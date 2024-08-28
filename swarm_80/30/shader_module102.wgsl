struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<bool>;

var<private> global2: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(false, false, false));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> vec3<f32> {
    var var_0 = Struct_2(true, Struct_1(max(~(~vec4<u32>(global0.c.a.x, 59439u, 0u, u_input.d)), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, u_input.b, u_input.d, 4294967295u), vec4<u32>(global0.c.c, 1u, 7711u, global0.b.c), vec4<u32>(4294967295u, 1u, global0.c.a.x, global0.c.c)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0.x, 49176u, arg_0.x), global0.c.a, global0.b.a))), arg_1, 27331u), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.c, 83371u, 0u, 6619u), min(max(vec4<u32>(global0.b.a.x, 59714u, arg_0.x, 51399u), vec4<u32>(4294967295u, 2107u, 47497u, u_input.d)), ~global0.b.a), vec4<u32>(_wgslsmith_div_u32(0u, global0.b.a.x), max(arg_0.x, u_input.b), 56757u, select(u_input.b, 38712u, global0.a))), u_input.e.x, global0.b.c), _wgslsmith_div_vec3_i32(vec3<i32>(0i, 0i, _wgslsmith_div_i32(19516i ^ arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_1, -7343i, u_input.a), vec4<i32>(global0.c.b, -1i, 21959i, u_input.a)))), global0.d), 2147483647i << (reverseBits(select(~30567u, abs(arg_0.x), !global0.a)) % 32u));
    var var_1 = !vec3<bool>(global0.a, global0.a, any(select(!vec3<bool>(var_0.a, true, global1.x), vec3<bool>(global1.x, var_0.a, true), vec3<bool>(true, global1.x, global0.a))));
    global0 = Struct_2(var_0.a, Struct_1(global0.c.a >> (reverseBits(var_0.c.a | vec4<u32>(4294967295u, 4294967295u, global0.c.a.x, arg_0.x)) % vec4<u32>(32u)), ~(~(var_0.b.b & 3031i)), min(abs(max(u_input.c, 16928u)), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(56020u, 0u)), vec2<u32>(var_0.c.a.x, u_input.c)))), Struct_1(countOneBits(var_0.c.a), global0.c.b, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c, 5924u | arg_0.x, _wgslsmith_mod_u32(u_input.d, 40621u)), ~max(arg_0.x, 0u))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, _wgslsmith_clamp_i32(~global0.d.x, u_input.e.x, -21242i), select(u_input.a, ~var_0.d.x, all(vec3<bool>(true, var_1.x, global0.a)))), vec3<i32>(firstLeadingBit(abs(var_0.e)), abs(22059i), abs(var_0.b.b) ^ ~2147483647i)), var_0.e);
    var var_2 = global0.b;
    let var_3 = Struct_3(Struct_2(!any(select(global2[_wgslsmith_index_u32(arg_0.x, 1u)], vec3<bool>(var_1.x, true, false), true)), var_0.b, global0.c, u_input.e, min(abs(global0.b.b) << (~u_input.d % 32u), abs(var_0.d.x))), var_0.b, _wgslsmith_f_op_f32(-1f));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-752f, var_3.c, var_3.c)))))))));
}

fn func_4(arg_0: vec3<f32>) -> bool {
    global2 = array<vec3<bool>, 1>();
    var var_0 = Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(global0.b.a.zzy, vec3<u32>(1u, 1u, 1u)), 4294967295u, global0.b.c, _wgslsmith_mult_u32(global0.c.c, 1u) & firstTrailingBit(4294967295u)), _wgslsmith_dot_vec4_i32(-(~(vec4<i32>(-62547i, global0.b.b, -2147483647i, 2147483647i) & vec4<i32>(-22421i, 31307i, global0.c.b, global0.c.b))), select(~vec4<i32>(-1i, 11556i, global0.e, global0.c.b) >> (global0.b.a % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.d.x, global0.d.x, u_input.a, -24552i), vec4<i32>(-1i, -11763i, u_input.e.x, u_input.e.x)), vec4<i32>(u_input.e.x, 4810i, global0.c.b, -23999i), select(vec4<i32>(u_input.a, -1i, 0i, u_input.e.x), vec4<i32>(6560i, u_input.a, -14052i, global0.c.b), true)), select(false, false, any(global2[_wgslsmith_index_u32(4294967295u, 1u)])))), 54053u);
    var var_1 = global0.c;
    var_0 = Struct_1(var_1.a, u_input.e.x, 21811u);
    var var_2 = any(global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(27268u, u_input.d), min(global0.b.a.xw, vec2<u32>(global0.b.a.x, 49841u)))), 1u)]) || global0.a;
    return false;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = 1000f;
    global0 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(firstTrailingBit(arg_2), abs(1u), 1u), global0.c.b))), Struct_1(~vec4<u32>(_wgslsmith_mod_u32(arg_0, 4331u), arg_0 << (arg_2 % 32u), abs(4294967295u), 9194u), ~(-_wgslsmith_mod_i32(-12831i, -2147483647i)), max(firstTrailingBit(45197u), ~arg_0) | ~select(arg_2, global0.c.c, global0.a)), Struct_1(global0.c.a, -25131i ^ select(abs(u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, arg_3.x, 59985i), u_input.e), true), abs(global0.c.a.x)), -vec3<i32>(1i, 34144i, countOneBits(arg_3.x) | firstLeadingBit(arg_3.x)), global0.b.b);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(978f * _wgslsmith_f_op_f32(-var_0)) * -1192f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_1, 893f, any(vec4<bool>(global1.x, global0.a, true, global0.a)) && true)))));
    let var_2 = ~vec3<u32>(u_input.b, 0u, ~u_input.b);
    global1 = vec2<bool>(!(true | any(!vec2<bool>(false, global1.x))), true);
    return Struct_1(vec4<u32>(min(firstTrailingBit(61031u) | 0u, var_2.x), 4516u, ~_wgslsmith_dot_vec2_u32(global0.c.a.xw, global0.b.a.yy), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(4294967295u, arg_2), arg_2)), 0i, ~(arg_2 ^ 0u));
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = arg_2.b;
    let var_1 = vec2<bool>(!(global1.x && (_wgslsmith_div_i32(arg_2.b, -37966i) > arg_2.b)), any(select(select(select(vec4<bool>(true, arg_3.a, global0.a, arg_3.a), vec4<bool>(false, global1.x, arg_3.a, global1.x), vec4<bool>(arg_3.a, global1.x, true, false)), vec4<bool>(false, false, false, global1.x), arg_1.x != 613f), !select(vec4<bool>(arg_3.a, global1.x, true, false), vec4<bool>(true, global0.a, global0.a, arg_3.a), vec4<bool>(true, arg_3.a, true, global1.x)), !select(vec4<bool>(global1.x, global0.a, global1.x, arg_3.a), vec4<bool>(true, arg_3.a, global0.a, true), vec4<bool>(true, true, arg_3.a, global0.a)))));
    var_0 = firstTrailingBit(global0.d.x);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-188f + arg_1.x) * _wgslsmith_f_op_f32(max(538f, arg_1.x))))), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-1961f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1139f))))), arg_1.x);
    let var_3 = Struct_2(all(!vec3<bool>(!global0.a, false, all(var_1))), global0.c, func_2(_wgslsmith_sub_u32(arg_2.c, ~88471u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(trunc(-805f)))) * arg_1.x), arg_2.a.x, firstLeadingBit(vec4<i32>(~17086i, global0.d.x, firstTrailingBit(-1i), _wgslsmith_mod_i32(arg_3.c.b, -27805i)))), vec3<i32>(-1i, firstLeadingBit(i32(-1i) * -2147483647i), 0i), 1i);
    return _wgslsmith_dot_vec4_u32(max(~_wgslsmith_clamp_vec4_u32(global0.c.a, arg_3.c.a, abs(vec4<u32>(35196u, 1u, arg_0, 10057u))), abs(vec4<u32>(_wgslsmith_clamp_u32(1u, 5664u, 20618u), u_input.c & 14436u, ~var_3.c.a.x, u_input.b << (6336u % 32u)))), ~arg_2.a);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_2) -> i32 {
    let var_0 = select(select(select(!global2[_wgslsmith_index_u32(max(4294967295u, 4294967295u), 1u)], vec3<bool>(global0.a & true, true, arg_1), all(select(vec4<bool>(arg_1, false, true, global0.a), vec4<bool>(arg_2.x, arg_1, arg_1, false), true))), global2[_wgslsmith_index_u32(18412u, 1u)], true), global2[_wgslsmith_index_u32(~func_5(_wgslsmith_add_u32(arg_0.x & global0.b.c, max(arg_3.b.c, 4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1006f, 608f, 776f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1208f, -1319f, -1973f) + vec3<f32>(362f, -1457f, 920f))), func_2(_wgslsmith_mod_u32(global0.c.a.x, 0u), _wgslsmith_f_op_f32(-1329f - 2025f), _wgslsmith_mult_u32(2918u, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, arg_3.d.x, arg_3.e), vec4<i32>(u_input.e.x, arg_3.d.x, -1i, -26670i), vec4<i32>(global0.e, 1i, -2147483647i, -1i))), Struct_2(27720i >= arg_3.c.b, func_2(arg_3.b.a.x, 1000f, u_input.d, vec4<i32>(arg_3.e, 0i, -37276i, global0.c.b)), Struct_1(vec4<u32>(1u, 23425u, 37732u, global0.c.c), -2147483647i, arg_0.x), global0.d, _wgslsmith_add_i32(u_input.a, u_input.e.x))), 1u)], true);
    var var_1 = arg_3;
    var var_2 = u_input.c;
    global2 = array<vec3<bool>, 1>();
    var_1 = arg_3;
    return _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-47134i | arg_3.b.b, 2147483647i, _wgslsmith_dot_vec3_i32(var_1.d, arg_3.d), var_1.c.b)), -vec4<i32>(-10702i, 1i, ~1i, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global0.a && (any(vec2<bool>(true, false)) & global0.a), global0.b, Struct_1(~global0.c.a, ~(-(1i | global0.d.x)), 32382u), vec3<i32>(-abs(2147483647i), global0.c.b, ~(~global0.c.b)), ~(-33987i));
    var var_1 = true;
    global0 = Struct_2(var_0.a, global0.b, var_0.b, (vec3<i32>(-1i) * -(~vec3<i32>(u_input.a, -2147483647i, 2147483647i))) << (vec3<u32>(~(~global0.b.a.x), 4294967295u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b, 1u, 0u), 0u)) % vec3<u32>(32u)), ((func_1(global0.c.a.yzy, var_0.a, vec2<bool>(false, global1.x), Struct_2(var_0.a, global0.b, global0.c, vec3<i32>(-51409i, u_input.a, var_0.c.b), -38910i)) ^ -12515i) & _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(u_input.a, 0i, u_input.e.x)), u_input.e.x)) ^ (u_input.a | (_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.e), global0.d.xy) << (~var_0.c.c % 32u))));
    var_1 = !func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1112f, -118f, -1186f)))));
    let var_2 = func_2(select(_wgslsmith_sub_u32(0u, abs(min(1u, u_input.d))), u_input.b, !(true && global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(795f + -257f), -1098f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1444f, 1300f)) + _wgslsmith_f_op_f32(f32(-1f) * -849f)))), global0.c.c, max(vec4<i32>(-u_input.a, abs(u_input.e.x), ~_wgslsmith_add_i32(0i, 20469i), _wgslsmith_dot_vec4_i32(vec4<i32>(-8431i, u_input.a, 1i, 28355i), vec4<i32>(0i, 1i, 51335i, 1i)) & -global0.c.b), vec4<i32>(_wgslsmith_mult_i32(0i, var_0.c.b) << (~global0.b.c % 32u), 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_0.c.b), u_input.e.yz), ~u_input.a)));
    var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.zww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2140f, -608f))))), abs(~(~firstLeadingBit(u_input.b))), u_input.e.yx, -404f);
}

