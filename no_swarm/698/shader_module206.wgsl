struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global3: Struct_1;

var<private> global4: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(404f, -460f), vec2<f32>(-1076f, -2207f), vec2<f32>(-473f, 499f), vec2<f32>(644f, -941f), vec2<f32>(-665f, -1707f), vec2<f32>(119f, -1718f), vec2<f32>(-932f, 1561f), vec2<f32>(-1000f, -776f), vec2<f32>(425f, 1201f), vec2<f32>(1173f, -383f), vec2<f32>(-441f, -597f), vec2<f32>(-375f, 1675f), vec2<f32>(1006f, -476f), vec2<f32>(2365f, -456f), vec2<f32>(572f, -1000f), vec2<f32>(1307f, -536f), vec2<f32>(207f, -1970f), vec2<f32>(-1003f, 969f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool) -> bool {
    return global3.b;
}

fn func_3(arg_0: u32) -> vec2<i32> {
    return _wgslsmith_mult_vec2_i32(-(~vec2<i32>(global0.d, global0.d) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, arg_0), vec2<u32>(40145u, 0u), vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u))) >> (firstLeadingBit(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.a, arg_0)), ~vec2<u32>(u_input.a, arg_0))) % vec2<u32>(32u)), abs(max((vec2<i32>(global0.d, global3.d) << (vec2<u32>(4294967295u, 16451u) % vec2<u32>(32u))) & vec2<i32>(global1.a, -2147483647i), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(-5685i, global1.a)), vec2<i32>(-26800i, -2147483647i) | vec2<i32>(global0.d, -60846i), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -16814i), vec2<i32>(32760i, -2147483647i))))));
}

fn func_2(arg_0: bool) -> vec2<bool> {
    var var_0 = countOneBits(~1u);
    let var_1 = firstTrailingBit((_wgslsmith_mult_i32(-2147483647i, 0i) | -global1.a) & global3.a) > (41179i >> (u_input.a % 32u));
    global2 = vec4<bool>(arg_0 | global3.c.x, false, !(true && select(global3.b, -3982i != global0.d, false)), min(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a, -2147483647i, global1.d) >> (vec3<u32>(33828u, 24136u, u_input.a) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(59269i, 1i, -2147483647i), vec3<i32>(22171i, -27985i, global1.d))), -global0.d) >= -select(global0.a, -117854i, true));
    let var_2 = ~(-func_3(max(u_input.a, 1u)) & ~(~(-vec2<i32>(global3.d, -2147483647i))));
    global3 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, ~global0.d | ~global0.a), -26889i), !global3.b, global2.ww, ~2147483647i);
    return vec2<bool>(true, ~0i != ~global1.a);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: bool, arg_3: i32) -> i32 {
    global3 = Struct_1(global1.d, global2.x, global2.xw, ~arg_3);
    var var_0 = Struct_1(max(26454i, global0.d), arg_0.x, vec2<bool>(false, any(vec4<bool>(true, arg_0.x, select(arg_0.x, arg_0.x, arg_2), true))), ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(-62090i, 1i), 2147483647i));
    let var_1 = vec3<bool>(global1.c.x | !global0.b, all(vec3<bool>(!(!arg_2), true, false)), true);
    let var_2 = global1.c;
    global4 = array<vec2<f32>, 18>();
    return ~arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<f32>, 18>();
    global4 = array<vec2<f32>, 18>();
    let var_0 = global2.zwy;
    var var_1 = any(vec2<bool>(false, func_1(!global1.b)));
    var var_2 = vec2<i32>(func_4(!(!func_2(false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-225f, _wgslsmith_f_op_f32(108f + -1673f), -1000f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1024f, 426f, -1022f) - vec3<f32>(562f, -608f, 510f))), func_1(all(vec3<bool>(false, true, global1.b))), 1i), global1.a);
    let var_3 = Struct_1(global0.a, all(vec3<bool>(var_2.x <= 52360i, !var_0.x, any(vec3<bool>(global0.b, true, global0.c.x)))) && any(!(!global1.c)), var_0.xx, abs(global3.d));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, i32(-1i) * -1i, reverseBits(vec2<u32>(abs(u_input.a), u_input.a)) << (vec2<u32>(~(10850u & u_input.a), u_input.a) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(491f, -948f, 603f, -504f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(374f, -665f, 536f, -507f), vec4<f32>(-527f, -507f, -1930f, -2316f), vec4<bool>(true, global2.x, false, true))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -964f, 872f, -483f)))) - vec4<f32>(_wgslsmith_f_op_f32(max(-199f, -1446f)), _wgslsmith_f_op_f32(abs(1238f)), _wgslsmith_f_op_f32(-662f * 3420f), _wgslsmith_f_op_f32(min(-538f, 568f))))));
}

