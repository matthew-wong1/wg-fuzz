struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global1: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(0i, Struct_2(vec3<u32>(1147u, 0u, 2062u), vec2<bool>(true, true), 16920i, 1u), 787f, vec3<bool>(true, true, false), vec3<i32>(-12897i, i32(-2147483648), -16935i)), Struct_4(i32(-2147483648), Struct_2(vec3<u32>(59205u, 8618u, 41152u), vec2<bool>(true, false), -18703i, 21685u), 604f, vec3<bool>(true, true, false), vec3<i32>(13678i, 2147483647i, 0i)), Struct_4(1i, Struct_2(vec3<u32>(4294967295u, 1u, 20098u), vec2<bool>(false, true), 15848i, 0u), -1146f, vec3<bool>(true, true, false), vec3<i32>(i32(-2147483648), 1i, 1i)), Struct_4(1i, Struct_2(vec3<u32>(47053u, 23989u, 42664u), vec2<bool>(true, false), i32(-2147483648), 0u), -778f, vec3<bool>(true, true, false), vec3<i32>(337i, -53900i, i32(-2147483648))), Struct_4(0i, Struct_2(vec3<u32>(54437u, 50958u, 70717u), vec2<bool>(true, false), i32(-2147483648), 47786u), 991f, vec3<bool>(false, false, false), vec3<i32>(2147483647i, 49186i, -1i)), Struct_4(2192i, Struct_2(vec3<u32>(1u, 0u, 4294967295u), vec2<bool>(false, false), 0i, 0u), 634f, vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), 20940i, -1i)), Struct_4(2147483647i, Struct_2(vec3<u32>(0u, 32446u, 1940u), vec2<bool>(false, true), 2147483647i, 14124u), -223f, vec3<bool>(true, true, false), vec3<i32>(12362i, i32(-2147483648), 2147483647i)), Struct_4(-3789i, Struct_2(vec3<u32>(0u, 1u, 0u), vec2<bool>(true, true), -54957i, 87320u), 2424f, vec3<bool>(true, true, true), vec3<i32>(73315i, 1i, 2147483647i)), Struct_4(1i, Struct_2(vec3<u32>(34008u, 51257u, 4294967295u), vec2<bool>(false, false), -64368i, 4294967295u), -552f, vec3<bool>(true, false, false), vec3<i32>(-67762i, 1i, 2147483647i)), Struct_4(-9883i, Struct_2(vec3<u32>(36205u, 0u, 1u), vec2<bool>(false, true), -40462i, 1u), -911f, vec3<bool>(false, true, true), vec3<i32>(1i, 0i, -1i)), Struct_4(0i, Struct_2(vec3<u32>(101441u, 23053u, 0u), vec2<bool>(false, true), 4770i, 1u), 482f, vec3<bool>(true, false, false), vec3<i32>(7267i, i32(-2147483648), i32(-2147483648))));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> vec2<i32> {
    var var_0 = firstTrailingBit(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.a, 10158u), vec3<u32>(18462u, 1u, global0.x)), firstTrailingBit(59324u), _wgslsmith_clamp_u32(39702u, 47382u, global0.x), min(u_input.a, 13146u)), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(0u, 22860u, u_input.a, 4294967295u)), select(vec4<u32>(41686u, 31573u, 8369u, 30427u), vec4<u32>(5268u, u_input.a, 48845u, 0u), vec4<bool>(false, false, true, true))), vec4<u32>(0u ^ global0.x, u_input.a, u_input.a, 1u)), vec4<u32>(u_input.a, ~global0.x, firstTrailingBit(u_input.a), u_input.a >> (1u % 32u)) >> ((vec4<u32>(u_input.a, 1u, global0.x, u_input.a) | select(vec4<u32>(1u, 1u, global0.x, 1u), vec4<u32>(1u, 1u, 0u, u_input.a), false)) % vec4<u32>(32u)), select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xz) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_0.zy - vec2<f32>(-1524f, -1161f)), _wgslsmith_f_op_vec2_f32(arg_0.yz + vec2<f32>(307f, arg_0.x)))))));
    var var_2 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(~18091u, var_0.x, u_input.a, ~38276u), ~vec4<u32>(4294967295u, 0u, 54398u, 25470u)), min(_wgslsmith_mod_u32(firstTrailingBit(905u), 23891u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~4294967295u, global0.x), 63843u)));
    global1 = array<Struct_4, 11>();
    let var_3 = Struct_4(~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-17832i, 0i, -15012i), vec3<i32>(1i, -1i, -1i)), ~27444i, 32766i >> (global0.x % 32u)), _wgslsmith_sub_i32(-31892i >> (var_0.x % 32u), abs(-47871i))), Struct_2(var_0.zww, !(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)), -1i, countOneBits(var_0.x)), -288f, !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), -vec3<i32>(-(~8785i), ~(-2147483647i), -min(46539i, 22475i)));
    return var_3.e.xy;
}

fn func_2() -> f32 {
    var var_0 = Struct_2(countOneBits(vec3<u32>(~_wgslsmith_add_u32(4294967295u, u_input.a), ~(~46502u), ~(~global0.x))), vec2<bool>(true, true), -(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, -1i), 1i)), _wgslsmith_sub_u32(u_input.a, 0u));
    global1 = array<Struct_4, 11>();
    var_0 = Struct_2(~vec3<u32>(abs(~1u), _wgslsmith_sub_u32(global0.x, global0.x), _wgslsmith_mod_u32(firstLeadingBit(1u), _wgslsmith_div_u32(u_input.a, 4294967295u))), var_0.b, _wgslsmith_dot_vec2_i32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(455f, -1000f, -1801f), vec3<f32>(-514f, -1000f, 520f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(708f, -1819f, 102f))))), ~vec2<i32>(var_0.c, 1i)), 18674u);
    global1 = array<Struct_4, 11>();
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1311f)) * _wgslsmith_f_op_f32(round(-648f)))), 489f))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1298f);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_4) -> u32 {
    global0 = arg_1.b.a.yz;
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), _wgslsmith_div_f32(1131f, -480f)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-984f, var_0.x)))))))));
    var var_1 = ~reverseBits(max(arg_1.b.a.zz, vec2<u32>(24883u, countOneBits(66653u))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(367f, arg_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1282f, -1693f)))) + vec2<f32>(_wgslsmith_f_op_f32(1227f * var_0.x), var_0.x))), ~1u);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec2<u32>(func_1(vec2<i32>(-2147483647i, 20867i), Struct_4(2147483647i, Struct_2(vec3<u32>(1u, global0.x, global0.x), vec2<bool>(true, false), 2147483647i, 0u), 627f, vec3<bool>(true, true, true), vec3<i32>(2147483647i, -51622i, 0i))), u_input.a) >> (min(vec2<u32>(~1u, 4294967295u), vec2<u32>(71470u, 1u)) % vec2<u32>(32u)));
    global1 = array<Struct_4, 11>();
    global0 = var_0;
    global1 = array<Struct_4, 11>();
    var var_1 = 0i;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(225f, 2489f) * vec2<f32>(179f, 1776f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(185f, -353f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 855f) - vec2<f32>(140f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-847f, 1333f) * vec2<f32>(248f, 524f)), select(vec2<bool>(false, true), vec2<bool>(false, true), false))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-994f, 646f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1085f, -856f), vec2<f32>(1217f, 1000f))))), 73840u);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, var_2.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1744f, 782f)))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), all(vec2<bool>(true, false))))) - vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.a.x, -1347f)) + -1000f))), abs(min(_wgslsmith_div_u32(~var_0.x, _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(var_2.b, var_2.b))), ~u_input.a >> (~global0.x % 32u))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(var_2.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_3.a))))), 0u);
    var var_5 = vec4<u32>(_wgslsmith_div_u32(1u, 1u) << (_wgslsmith_sub_u32(1u, 1u) % 32u), u_input.a, ~(~select(u_input.a, _wgslsmith_mult_u32(0u, var_3.b), true)), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(max(-1i, 2147483647i));
}

