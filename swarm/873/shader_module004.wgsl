struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(true, -19637i, vec4<bool>(true, true, false, true), vec3<bool>(true, true, true), vec4<f32>(-1190f, 1396f, -1000f, -108f)), Struct_1(false, 0i, vec4<bool>(true, true, false, false), vec3<bool>(false, false, false), vec4<f32>(514f, 391f, -460f, -511f)), Struct_1(false, -1i, vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), vec4<f32>(2081f, 1560f, 1092f, -576f)), Struct_1(false, -43411i, vec4<bool>(true, false, true, false), vec3<bool>(false, true, true), vec4<f32>(919f, 1026f, 569f, -285f)), Struct_1(true, -9562i, vec4<bool>(true, false, false, true), vec3<bool>(true, false, true), vec4<f32>(-499f, -1000f, -1598f, -1693f)), Struct_1(false, 48458i, vec4<bool>(true, false, false, true), vec3<bool>(true, false, false), vec4<f32>(2118f, -372f, 498f, 585f)), Struct_1(false, -63422i, vec4<bool>(false, false, false, true), vec3<bool>(false, false, false), vec4<f32>(1000f, -1135f, -400f, 1607f)), Struct_1(true, 22976i, vec4<bool>(false, true, true, false), vec3<bool>(false, false, false), vec4<f32>(1004f, 1090f, 1322f, -109f)), Struct_1(true, -1i, vec4<bool>(true, false, false, true), vec3<bool>(true, true, false), vec4<f32>(289f, -1000f, 1440f, 194f)), Struct_1(false, -1i, vec4<bool>(true, false, true, false), vec3<bool>(false, false, false), vec4<f32>(-1444f, 747f, 1855f, -355f)), Struct_1(false, 0i, vec4<bool>(true, false, true, false), vec3<bool>(true, false, false), vec4<f32>(1944f, 1000f, -1573f, -1100f)), Struct_1(false, 23172i, vec4<bool>(true, true, true, false), vec3<bool>(true, false, false), vec4<f32>(563f, -1995f, -1457f, 921f)), Struct_1(false, -18743i, vec4<bool>(true, true, true, false), vec3<bool>(true, false, false), vec4<f32>(1392f, -1846f, 665f, 472f)), Struct_1(true, i32(-2147483648), vec4<bool>(false, false, true, true), vec3<bool>(false, true, false), vec4<f32>(-616f, 931f, 1601f, 325f)), Struct_1(false, 1i, vec4<bool>(false, false, true, false), vec3<bool>(false, true, false), vec4<f32>(1341f, 655f, -1724f, -1417f)), Struct_1(false, i32(-2147483648), vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), vec4<f32>(-575f, 516f, -3207f, 2006f)), Struct_1(true, -40206i, vec4<bool>(false, true, false, false), vec3<bool>(true, false, false), vec4<f32>(-275f, 615f, 121f, -412f)), Struct_1(false, i32(-2147483648), vec4<bool>(true, false, false, false), vec3<bool>(false, true, true), vec4<f32>(-802f, -522f, 1333f, 1006f)), Struct_1(false, 8444i, vec4<bool>(true, false, true, true), vec3<bool>(true, true, false), vec4<f32>(-630f, 721f, -381f, -957f)), Struct_1(false, 1i, vec4<bool>(false, true, true, true), vec3<bool>(false, true, false), vec4<f32>(495f, 592f, -315f, 1064f)));

var<private> global1: vec3<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> vec4<u32> {
    var var_0 = global0[_wgslsmith_index_u32(~0u, 20u)];
    global1 = _wgslsmith_f_op_vec3_f32(-var_0.e.xxy);
    var var_1 = var_0.c;
    let var_2 = select(abs(var_0.b), var_0.b, var_0.d.x);
    global0 = array<Struct_1, 20>();
    return ~vec4<u32>(1u << ((countOneBits(u_input.a.x) ^ select(0u, u_input.a.x, true)) % 32u), _wgslsmith_sub_u32(1u, 1u >> (u_input.a.x % 32u)), ~(~_wgslsmith_mult_u32(0u, u_input.a.x)), u_input.a.x << (u_input.a.x % 32u));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec4<f32>) -> f32 {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    global1 = vec3<f32>(-523f, _wgslsmith_f_op_f32(-arg_1.x), 105f);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))) + 1f), _wgslsmith_f_op_f32(-global1.x))));
    return _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -u_input.b == min(u_input.b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2998i, 0i, u_input.b), vec3<i32>(-35795i, u_input.b, 29911i)))));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(arg_3.a, _wgslsmith_clamp_i32(i32(-1i) * -abs(u_input.b), -14867i, -u_input.b), vec4<bool>(true, !all(select(vec2<bool>(false, true), arg_3.d.yz, false)), ~(~u_input.b) > ~(-13149i), arg_3.c.x), vec3<bool>(!(!(u_input.a.x > 0u)), !(any(vec3<bool>(arg_3.c.x, true, true)) & all(vec4<bool>(true, arg_3.c.x, arg_3.c.x, true))), true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_3.e + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_1 + arg_3.e), _wgslsmith_f_op_vec4_f32(arg_3.e * vec4<f32>(arg_1.x, arg_1.x, 359f, 521f))))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(229f * _wgslsmith_f_op_f32(floor(-1433f)))), var_0.e.x, arg_3.e.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * var_0.e.x) - 342f), -1000f))));
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(775f, global1.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f) + -1075f)) * _wgslsmith_f_op_f32(-var_0.e.x)));
    let var_4 = 32721u;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_u32(u_input.a.x, 15519u ^ firstTrailingBit(select(79634u, u_input.a.x, true)));
    var var_1 = true;
    var var_2 = abs(func_3(148f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2338f, global1.x, 564f, 1455f) * vec4<f32>(-936f, global1.x, 1030f, global1.x)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(671f, 258f, 749f, global1.x), vec4<f32>(global1.x, global1.x, global1.x, global1.x)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, global1.x, global1.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, -696f, global1.x, global1.x))), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)))))), func_1(), Struct_1(u_input.b == (i32(-1i) * -711i), u_input.b, vec4<bool>(true, u_input.b == 0i, true, 228f > global1.x), vec3<bool>(true, true, true), vec4<f32>(_wgslsmith_f_op_f32(step(global1.x, 540f)), _wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, false), vec4<f32>(-865f, global1.x, -345f, 557f), vec4<f32>(global1.x, 1491f, 1926f, global1.x))), 760f))));
    var var_3 = Struct_1(true, u_input.b, vec4<bool>(false, all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false, all(vec2<bool>(true, false))), vec3<bool>(!any(vec3<bool>(false, false, true)) | !select(false, true, false), !any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true)), firstLeadingBit(var_0) >= func_3(-273f, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, global1.x, -899f, global1.x))), vec4<u32>(61560u, var_0, 4294967295u, 0u), global0[_wgslsmith_index_u32(u_input.a.x, 20u)]).x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1394f, global1.x, global1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -1004f, global1.x)))))));
    global0 = array<Struct_1, 20>();
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-506f + _wgslsmith_f_op_f32(floor(-645f)))));
    var var_5 = Struct_1(any(vec4<bool>(true, true, true, true)), ~_wgslsmith_mult_i32(min(42469i, -1i), -2147483647i), !vec4<bool>(true, _wgslsmith_f_op_f32(step(-1361f, 180f)) < _wgslsmith_f_op_f32(f32(-1f) * -964f), abs(7607i) < (var_3.b >> (0u % 32u)), all(var_3.c.zxx) | !var_3.d.x), !(!vec3<bool>(any(var_3.c), true, !var_3.a)), var_3.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yw, var_5.e.wy);
}

