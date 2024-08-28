struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4762u;

var<private> global1: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(14912i, -40238i), vec2<i32>(-5647i, 0i));

var<private> global2: array<i32, 25> = array<i32, 25>(0i, 1i, 10549i, 20331i, i32(-2147483648), i32(-2147483648), 42509i, i32(-2147483648), -6872i, 1i, 1826i, 0i, 1405i, -17634i, 1i, 17598i, -1i, -37425i, -21779i, 38712i, 4907i, 28773i, -59412i, i32(-2147483648), 0i);

var<private> global3: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(23523u, 11896u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(114907u, 57505u), vec2<u32>(0u, 2571u), vec2<u32>(4055u, 4294967295u), vec2<u32>(29209u, 85433u), vec2<u32>(32140u, 4294967295u), vec2<u32>(19100u, 4294967295u), vec2<u32>(96162u, 1u), vec2<u32>(6653u, 45433u), vec2<u32>(134019u, 1u), vec2<u32>(4294967295u, 43367u), vec2<u32>(4294967295u, 1u), vec2<u32>(67824u, 4294967295u), vec2<u32>(49374u, 4294967295u), vec2<u32>(22567u, 1u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global0 = ~(_wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 52030u, 59822u, 29373u)), vec4<u32>(1u, 1u, 1u, 1u)) << (~(1u >> (1u % 32u)) % 32u));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-710f)), _wgslsmith_f_op_f32(f32(-1f) * -1169f));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(454f))));
    let var_2 = ~u_input.c | -vec4<i32>(_wgslsmith_dot_vec4_i32(-u_input.c, u_input.c), 19949i, u_input.e.x, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(1u, 2u)], u_input.c.xw) | abs(u_input.c.x));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) + var_1);
    return _wgslsmith_f_op_f32(-var_1);
}

fn func_2() -> bool {
    let var_0 = u_input.c.x;
    global3 = array<vec2<u32>, 16>();
    global1 = array<vec2<i32>, 2>();
    global1 = array<vec2<i32>, 2>();
    var var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(889f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -605f), -303f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1149f, 493f) - _wgslsmith_f_op_f32(select(-2057f, -1533f, false))))), vec4<f32>(1028f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-517f + -1918f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-787f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2938f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -420f))))));
    return !all(vec2<bool>(true == any(vec4<bool>(true, false, false, true)), true));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: vec3<u32>) -> bool {
    global1 = array<vec2<i32>, 2>();
    return !(!(!func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~select(~vec4<u32>(4294967295u, 10364u, 4294967295u, 0u), vec4<u32>(0u, 68777u, 1u, 11161u), any(vec3<bool>(true, false, true)))) ^ select(min(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(0u, 1u, 6368u, 3958u), vec4<u32>(1u, 14409u, 11415u, 57382u)), max(vec4<u32>(114176u, 114683u, 4294967295u, 67125u), vec4<u32>(4294967295u, 94216u, 4294967295u, 35065u)), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), select(vec4<bool>(true, true, true, all(vec4<bool>(true, true, false, true))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), func_1(vec4<u32>(61343u, 1u, 12609u, 4294967295u), vec3<f32>(-1951f, 1070f, 2766f), vec3<u32>(1u, 15742u, 4294967295u), vec3<u32>(93499u, 41342u, 4294967295u))), vec4<bool>(true, false, any(vec3<bool>(false, true, true)), func_2())));
    let var_1 = Struct_3(Struct_1(~reverseBits(u_input.c.yzw) >> ((var_0.yxx & select(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, 1u, var_0.x), true)) % vec3<u32>(32u)), select(~vec3<u32>(var_0.x, 4294967295u, 16166u), vec3<u32>(~var_0.x, 1u, var_0.x), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), 0u, global2[_wgslsmith_index_u32(~min(var_0.x, var_0.x), 25u)], 0u, vec3<u32>(reverseBits((var_0.x << (var_0.x % 32u)) >> (8214u % 32u)), _wgslsmith_dot_vec2_u32(var_0.xx, vec2<u32>(var_0.x, 96123u)) >> (0u % 32u), abs(firstLeadingBit(max(var_0.x, 18871u)))));
    let var_2 = ~((vec2<u32>(var_1.b, 16713u) << ((firstLeadingBit(var_0.xy) >> (~var_0.ww % vec2<u32>(32u))) % vec2<u32>(32u))) << (var_0.wx % vec2<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1272f, -559f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-839f)), _wgslsmith_f_op_f32(f32(-1f) * -1403f))), -710f));
    var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x * var_3.x), 273f), var_3.x, var_3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_3.x, -381f, true)), var_3.x, var_3.x, var_3.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(267f, var_3.x, 438f, var_3.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-993f, -197f, var_3.x, var_3.x) - vec4<f32>(var_3.x, -743f, -960f, 1671f))))), select(!vec4<bool>(true, all(vec4<bool>(true, false, true, true)), all(vec2<bool>(false, false)), true), vec4<bool>(any(vec4<bool>(false, true, true, false)), !all(vec4<bool>(false, false, true, false)), -u_input.e.x <= 46064i, true), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, false), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), func_1(vec4<u32>(var_0.x, var_1.a.b.x, 4294967295u, var_0.x), vec3<f32>(var_3.x, var_3.x, -711f), var_0.ywz, vec3<u32>(var_1.a.b.x, var_2.x, 0u)))))));
    global1 = array<vec2<i32>, 2>();
    let var_4 = vec3<bool>(false, true, true == (true && any(vec4<bool>(true, true, true, true))));
    var var_5 = var_4.x;
    var var_6 = vec2<bool>(var_4.x, false | (0u >= _wgslsmith_dot_vec2_u32(var_2, ~vec2<u32>(var_2.x, 63453u))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_i32(u_input.c.www, countOneBits(vec3<i32>(u_input.e.x, 13497i, u_input.c.x))), 1i, ~vec3<u32>(var_2.x, ~_wgslsmith_mod_u32(var_1.d, var_1.a.b.x), 0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(521f, 325f, var_3.x, -415f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -2444f, -1455f, var_3.x) * vec4<f32>(-951f, var_3.x, 1533f, -281f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), var_3.x, 1000f, _wgslsmith_div_f32(var_3.x, -543f)))));
}

