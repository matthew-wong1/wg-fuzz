struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 31364u;

var<private> global1: array<vec3<u32>, 4>;

var<private> global2: array<vec4<i32>, 2>;

var<private> global3: f32;

var<private> global4: i32 = 1i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_mult_vec4_i32(~vec4<i32>(1i, abs(-2147483647i), ~(-12437i), -64082i), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b.x ^ _wgslsmith_dot_vec2_u32(u_input.b.zw, vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b.x), 2u)] & vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(40659u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)]), firstLeadingBit(global2[_wgslsmith_index_u32(0u, 2u)])), u_input.a, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(51163i, -2147483647i, 0i))));
    let var_1 = vec4<u32>(u_input.b.x, ~max(u_input.b.x, 86250u), firstLeadingBit(_wgslsmith_div_u32(~(u_input.b.x << (u_input.b.x % 32u)), ~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x))), 12114u);
    let var_2 = Struct_2(Struct_1(u_input.b.x, abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, var_0.x), -u_input.a))));
    var var_3 = u_input.a;
    var var_4 = !select(vec4<bool>(any(vec2<bool>(true, false)), false, false == (var_1.x < 0u), true), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), true), true));
    return ~firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(var_2.a.a, 1u) << (_wgslsmith_mod_u32(var_2.a.a, 0u) % 32u), var_2.a.a));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> Struct_2 {
    global3 = -1157f;
    var var_0 = u_input.b.wzz;
    global0 = 1u << (_wgslsmith_dot_vec2_u32(~(~min(vec2<u32>(u_input.b.x, 17707u), vec2<u32>(arg_0.a, 27900u))), ~func_3()) % 32u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-761f, -183f, _wgslsmith_f_op_f32(f32(-1f) * -376f))))));
    var var_2 = Struct_3(Struct_2(Struct_1(~66196u, _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, 0i, arg_0.b), ~arg_0.b))), select(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -415f) != _wgslsmith_f_op_f32(trunc(795f)), true), vec2<bool>(all(vec4<bool>(true, true, true, true)), false), select(any(vec4<bool>(false, true, true, false)), !all(vec4<bool>(true, false, true, true)), !any(vec2<bool>(false, true)))));
    return var_2.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<f32>) -> i32 {
    var var_0 = true;
    let var_1 = arg_2;
    var_0 = -61420i != u_input.a;
    let var_2 = ~(1u >> ((u_input.b.x | func_3().x) % 32u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.x, 710f, !(var_1.b.x | false))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-947f, _wgslsmith_f_op_f32(-arg_3.x))))));
    return _wgslsmith_mod_i32(-1i, arg_0.a.b);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> i32 {
    global1 = array<vec3<u32>, 4>();
    var var_0 = u_input.b & u_input.b;
    var_0 = ~u_input.b;
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3.x, 1f, arg_3.x, _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(237f, arg_3.x, arg_3.x, 309f) - vec4<f32>(arg_3.x, 317f, -380f, -256f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3.x, -1064f, arg_3.x, arg_3.x), vec4<f32>(-392f, arg_3.x, 617f, -204f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x))), vec4<bool>(var_1, true, true, var_1))) + vec4<f32>(264f, _wgslsmith_f_op_f32(max(-693f, arg_3.x)), -1358f, _wgslsmith_f_op_f32(round(-117f)))))));
    return arg_0;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global4 = abs(i32(-1i) * -1i) | firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_mult_i32(-arg_0.x, -u_input.a), (1i | u_input.a) & (u_input.a | -36100i)));
    var var_0 = _wgslsmith_dot_vec3_u32(~((global1[_wgslsmith_index_u32(u_input.b.x, 4u)] ^ global1[_wgslsmith_index_u32(u_input.b.x, 4u)]) << (vec3<u32>(20365u, u_input.b.x, 4294967295u) % vec3<u32>(32u))), u_input.b.yxz) == (~(~u_input.b.x) | ~countOneBits(58655u | u_input.b.x));
    var_0 = all(!select(vec2<bool>(all(vec3<bool>(false, false, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), true));
    var var_1 = vec4<i32>(2808i, -u_input.a, 48549i, countOneBits(arg_0.x));
    let var_2 = true;
    return Struct_1(~(~24743u) << (u_input.b.x % 32u), func_5(_wgslsmith_clamp_i32(-2147483647i, func_4(func_2(Struct_1(u_input.b.x, var_1.x), vec3<f32>(289f, -1007f, 1013f), u_input.a), func_2(Struct_1(1u, 17211i), vec3<f32>(-626f, -118f, -1883f), 0i).a, Struct_3(Struct_2(Struct_1(0u, 2147483647i)), vec2<bool>(false, var_2)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-469f, 478f, 1000f, -1353f), vec4<f32>(-1680f, -803f, 220f, 1000f), vec4<bool>(var_2, true, true, false)))), u_input.a), Struct_1(~max(41433u, u_input.b.x), 50881i >> (~u_input.b.x % 32u)), Struct_2(Struct_1(1u, u_input.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(261f)), 512f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-458f, 1699f), vec2<f32>(1247f, 650f)))))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = !vec2<bool>(any(vec3<bool>(true, true, true)), true && (func_2(arg_1.a, vec3<f32>(-525f, -369f, 108f), arg_1.a.b).a.b > arg_0.b));
    global2 = array<vec4<i32>, 2>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1346f))))));
    let var_2 = Struct_3(func_2(func_2(func_1(vec2<i32>(arg_1.a.b, u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1443f, 645f)), -countOneBits(13117i)).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -609f, 583f) * vec3<f32>(-299f, -1327f, var_1.x))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, 162f, var_1.x)))), -17323i), select(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false)), 0i >= arg_0.b), vec2<bool>(true, all(!vec4<bool>(false, var_0.x, false, false))), select(select(!vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, var_0.x), 2147483647i >= u_input.a), vec2<bool>(arg_0.b > arg_1.a.b, any(vec2<bool>(var_0.x, false))), true)));
    var_0 = select(select(select(!vec2<bool>(false, var_0.x), var_2.b, all(select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true), false))), vec2<bool>(var_2.b.x | !var_2.b.x, !any(vec2<bool>(false, var_2.b.x))), true), var_2.b, false);
    return StorageBuffer(16923i, var_1, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_1(vec2<i32>(~(~(-11169i)), 2147483647i)), func_2(Struct_1(u_input.b.x, 1095i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1377f, -1738f, -759f), vec3<f32>(-304f, 413f, -984f))))), func_2(Struct_1(~0u, countOneBits(-45906i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1870f, -362f, -871f), vec3<f32>(-388f, -1068f, -1453f)))), u_input.a).a.b));
}

