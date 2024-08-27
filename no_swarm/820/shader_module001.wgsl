struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 18> = array<u32, 18>(61018u, 6831u, 0u, 2139u, 0u, 4294967295u, 5525u, 4294967295u, 17200u, 0u, 1u, 78225u, 4294967295u, 4294967295u, 40939u, 0u, 55646u, 75314u);

var<private> global2: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-1000f, -179f, -495f, 279f), vec4<f32>(-1191f, 1200f, 512f, -1084f), vec4<f32>(778f, -465f, -805f, -1229f), vec4<f32>(-510f, 1647f, 1000f, 2068f), vec4<f32>(1020f, -508f, -179f, -328f), vec4<f32>(1654f, 147f, 1000f, 1132f), vec4<f32>(378f, 716f, -110f, 874f), vec4<f32>(2377f, 234f, -1014f, 602f), vec4<f32>(-115f, 239f, 701f, -132f), vec4<f32>(449f, 734f, -883f, 481f), vec4<f32>(-436f, -1000f, 1157f, 894f), vec4<f32>(1292f, 415f, -1239f, 363f), vec4<f32>(1000f, 130f, -1066f, 1565f), vec4<f32>(1000f, -2611f, -2358f, 629f), vec4<f32>(-431f, 442f, -2050f, 212f), vec4<f32>(-1000f, -1701f, 1000f, 230f), vec4<f32>(-972f, 663f, -1238f, -500f), vec4<f32>(210f, -606f, -370f, -251f), vec4<f32>(1719f, 1189f, -768f, -1000f), vec4<f32>(981f, -1000f, 997f, -128f), vec4<f32>(224f, 284f, -1000f, -481f), vec4<f32>(257f, -2339f, -503f, 419f), vec4<f32>(-735f, 1000f, -951f, -777f), vec4<f32>(176f, -1169f, 1000f, -289f), vec4<f32>(1000f, 1811f, 711f, -483f), vec4<f32>(1273f, 1646f, 257f, 3835f));

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(578f, vec2<u32>(4294967295u, 4294967295u)), Struct_2(229f, vec2<u32>(4294967295u, 1636u)), Struct_2(-777f, vec2<u32>(4972u, 4294967295u)), Struct_2(-226f, vec2<u32>(1u, 14221u)), Struct_2(1190f, vec2<u32>(0u, 1u)), Struct_2(-1000f, vec2<u32>(45852u, 1u)));

var<private> global4: array<vec2<i32>, 18>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, arg_2.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * 597f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a - arg_0.a)))));
    let var_1 = vec4<u32>(arg_3.c, countOneBits(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(5740u, arg_2.b.x, 15260u), _wgslsmith_clamp_u32(arg_0.b.x, arg_3.c, arg_3.c)))), ~arg_1.b.x, arg_1.b.x);
    let var_2 = arg_3;
    global3 = array<Struct_2, 6>();
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1118f, 299f, var_0) + vec3<f32>(-1408f, arg_1.a, var_2.a.x)) - vec3<f32>(arg_3.a.x, -737f, arg_1.a)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(var_2.a.xwy)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, 514f, var_2.a.x), vec3<f32>(var_2.a.x, -245f, var_0)))), var_2.e)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.a.xzy + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(620f, var_0, 1330f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_1.a, 2121f) * vec3<f32>(var_0, 2341f, -1000f)))))));
    return arg_2.a;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec4<u32> {
    global2 = array<vec4<f32>, 26>();
    let var_0 = !vec4<bool>(true, arg_1.e.x, 13928i >= ~arg_2.b, arg_2.c != min(arg_0, arg_2.c << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.c, 18u)], 18u)] % 32u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(1501f - 708f), -558f, _wgslsmith_f_op_f32(-450f + 937f), _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(arg_2.c, 6u)], Struct_2(arg_1.a.x, vec2<u32>(arg_1.c, arg_0)), Struct_2(arg_2.a.x, vec2<u32>(4294967295u, arg_0)), arg_1))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_2.a), global2[_wgslsmith_index_u32(arg_1.c, 26u)], all(vec4<bool>(arg_2.e.x, var_0.x, true, false)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_1.a, vec4<f32>(-696f, 507f, arg_2.a.x, arg_2.a.x)))))), -1i, arg_2.c, true, !vec3<bool>(var_0.x, any(select(vec2<bool>(true, arg_2.e.x), var_0.yw, false)), 1f <= arg_3));
    global2 = array<vec4<f32>, 26>();
    var var_2 = arg_0;
    return countOneBits(vec4<u32>(0u, firstTrailingBit(global1[_wgslsmith_index_u32(~78598u, 18u)]) | firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(26884u, global1[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<u32>(13254u, arg_2.c))), arg_2.c, 22958u));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: vec4<i32>) -> Struct_2 {
    global0 = true;
    let var_0 = firstLeadingBit(~(~(~func_2(7636u, Struct_1(arg_2, -2147483647i, 5816u, false, vec3<bool>(true, false, false)), Struct_1(vec4<f32>(1476f, arg_1.x, arg_0.a, arg_0.a), -1i, 4294967295u, false, vec3<bool>(false, true, false)), 1225f))));
    let var_1 = max(1i, u_input.a);
    global0 = true;
    global0 = !all(vec2<bool>(true, true)) || (firstLeadingBit(var_0.x) > _wgslsmith_add_u32(_wgslsmith_mod_u32(0u, var_0.x ^ 86918u), ~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.b.x, 18u)], 18u)] >> (38233u % 32u))));
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    return global1[_wgslsmith_index_u32(~(~32444u), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(func_4(-859f, func_1(Struct_2(-1460f, vec2<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)])), vec3<f32>(-465f, -903f, 589f), vec4<f32>(-188f, -1000f, 419f, -271f), vec4<i32>(-1i, u_input.b.x, u_input.a, u_input.b.x)), vec3<f32>(-574f, 603f, -888f)), 18u)], func_4(_wgslsmith_f_op_f32(max(1243f, 509f)), Struct_2(-781f, vec2<u32>(41040u, 1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 241f, 920f) - vec3<f32>(1234f, 221f, 465f))), ~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 4294967295u)), 18u)] != ~(~16706u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(502f, -112f, true)) + 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -856f) + _wgslsmith_f_op_f32(sign(903f)))) > -1164f, true);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(2786f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-2356f)))), _wgslsmith_f_op_f32(f32(-1f) * -1177f));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(42675u, 26u)] - vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1642f), 162f, _wgslsmith_f_op_f32(734f * var_1.x))))), ~abs(-36172i), ~_wgslsmith_mult_u32(27224u, 1u), !(all(vec3<bool>(true, true, true)) != !(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)] != 1u)), select(!(!var_0), !var_0, select(var_0, !var_0, !var_0)));
    var var_3 = func_1(func_1(global3[_wgslsmith_index_u32(~39877u, 6u)], _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(372f)), var_1.x, _wgslsmith_f_op_f32(-var_2.a.x)))), vec4<f32>(-672f, var_2.a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, var_2.a.x), _wgslsmith_f_op_f32(var_1.x + var_2.a.x)), _wgslsmith_f_op_f32(-var_1.x)), vec4<i32>(var_2.b, 61784i, -1i, var_2.b)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -546f)), _wgslsmith_f_op_f32(abs(-559f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-981f, _wgslsmith_f_op_f32(func_3(Struct_2(var_2.a.x, vec2<u32>(0u, 0u)), Struct_2(var_1.x, vec2<u32>(var_2.c, 4294967295u)), Struct_2(1613f, vec2<u32>(var_2.c, global1[_wgslsmith_index_u32(var_2.c, 18u)])), Struct_1(vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, 497f), u_input.b.x, 80732u, var_2.e.x, vec3<bool>(true, var_2.e.x, var_2.e.x)))), _wgslsmith_f_op_f32(var_1.x + var_2.a.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.c << (global1[_wgslsmith_index_u32(29954u, 18u)] % 32u), 18u)], 18u)], 26u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 912f, 263f, var_1.x))))), vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -u_input.b.x), -global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.c, 18u)], 18u)] >> (vec2<u32>(var_2.c, var_2.c) % vec2<u32>(32u))), ~u_input.c, var_2.b));
    global2 = array<vec4<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(-39816i, -var_2.b)), u_input.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1425f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * 178f))))), ~(-6826i), _wgslsmith_f_op_vec3_f32(max(var_2.a.yxz, vec3<f32>(482f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + 383f))))));
}

