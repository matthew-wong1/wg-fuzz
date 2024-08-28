struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<bool>(true, true), 1u), Struct_1(vec2<bool>(true, false), 1u), Struct_1(vec2<bool>(true, true), 37935u), Struct_1(vec2<bool>(true, true), 40030u));

var<private> global1: Struct_3;

var<private> global2: f32;

var<private> global3: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-249f)) - _wgslsmith_f_op_f32(-arg_2.x))))) * _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1376f - -2287f) * arg_2.x))));
    let var_1 = Struct_2(true, !(!arg_1.b));
    var var_2 = Struct_2(true, vec2<bool>(all(select(select(vec3<bool>(true, true, arg_1.a), arg_3.yyy, false), arg_3.yww, false)), any(vec2<bool>(select(true, false, arg_1.b.x), var_1.b.x))));
    global1 = Struct_3(arg_1, var_1);
    let var_3 = Struct_2(!global1.b.b.x, !vec2<bool>(any(vec2<bool>(global1.b.b.x, arg_1.a)), (u_input.d | 7357i) > _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 15549i, 0i, u_input.d), vec4<i32>(u_input.b, u_input.d, -2147483647i, u_input.b))));
    return _wgslsmith_f_op_f32(-arg_2.x);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1159f, 887f, -616f, 1048f) - vec4<f32>(-2567f, 950f, -114f, -122f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(495f, -1438f, 853f, 1151f)))), vec4<bool>(true, true, true, true))));
    let var_0 = -74110i;
    let var_1 = var_0;
    global3 = 1f;
    global1 = Struct_3(Struct_2(!any(vec3<bool>(global1.a.b.x, false, false)), select(select(vec2<bool>(arg_2.a, global1.a.b.x), !arg_2.b, select(arg_2.b, vec2<bool>(true, true), vec2<bool>(false, false))), !(!global1.a.b), global1.a.b.x)), arg_2);
    return 0u;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<bool>, arg_3: bool) -> f32 {
    let var_0 = Struct_1(!vec2<bool>(false, any(vec3<bool>(true, true, true))), ~(~(~u_input.c.x)) << (~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a, 1u), func_2(0u, u_input.b, global1.a, Struct_1(vec2<bool>(true, arg_3), 4294967295u))) % 32u));
    var var_1 = firstTrailingBit(vec3<u32>(var_0.b, 68352u, 1u | (var_0.b | var_0.b))) | _wgslsmith_div_vec3_u32(~(~abs(vec3<u32>(u_input.a, u_input.c.x, var_0.b))), firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, 0u, u_input.c.x), vec3<u32>(u_input.a, u_input.c.x, 34455u))) & ~(vec3<u32>(var_0.b, 0u, 79834u) ^ vec3<u32>(4294967295u, u_input.c.x, 4294967295u)));
    global1 = Struct_3(global1.b, global1.b);
    let var_2 = min(select(max(vec2<u32>(~12915u, ~var_1.x), vec2<u32>(1u, u_input.a) ^ (u_input.c >> (vec2<u32>(13015u, 4294967295u) % vec2<u32>(32u)))), abs(max(vec2<u32>(u_input.c.x, var_1.x), ~vec2<u32>(var_1.x, 0u))), vec2<bool>(true, true)), ~countOneBits(u_input.c));
    let var_3 = u_input.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(any(!(!arg_2.zy)), Struct_2(arg_2.x, vec2<bool>(select(true, global1.a.b.x, arg_3), arg_2.x)), arg_0, !vec4<bool>(!arg_2.x, !global1.b.b.x, true, arg_2.x == false))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(186f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(106280u, select(1206u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 4298u, 20592u, 1u), vec4<u32>(1u, u_input.a, u_input.c.x, 13995u)) >> ((vec4<u32>(u_input.a, 35679u, u_input.a, u_input.c.x) & vec4<u32>(42377u, u_input.c.x, 0u, u_input.a)) % vec4<u32>(32u)), ~vec4<u32>(1u, u_input.c.x, 0u, 0u)), false));
    let var_1 = any(select(select(!(!vec4<bool>(true, global1.b.a, global1.b.a, true)), vec4<bool>(!global1.b.a, true, true, true), all(!global1.a.b)), vec4<bool>(true, true, all(vec2<bool>(global1.a.b.x, global1.a.a)), true), select(vec4<bool>(false, true, 0u <= u_input.c.x, false), !(!vec4<bool>(global1.a.b.x, global1.a.a, global1.a.a, global1.b.b.x)), global1.b.a)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2204f), _wgslsmith_f_op_f32(163f - 1343f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<f32>(-1120f, 383f, 2070f, 1000f), 273f, vec3<bool>(false, global1.a.b.x, true), false))), 508f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-726f + 192f))) - vec4<f32>(_wgslsmith_f_op_f32(-156f * 1466f), _wgslsmith_f_op_f32(f32(-1f) * -417f), 1012f, -277f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1619f, -1956f, 1113f, -116f) + vec4<f32>(349f, -442f, 108f, -281f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(871f, -1987f, 435f, -1705f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1122f, -1315f, 607f, 692f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2002f, 622f, 1000f, -198f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(437f, -605f, 1496f, 230f)))))));
    var_0 = 4294967295u;
    global0 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 1u, u_input.c.x)) << ((vec4<u32>(1u, u_input.c.x, 1u, u_input.c.x) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 5640u) % vec4<u32>(32u))) % vec4<u32>(32u)))), 1u, _wgslsmith_dot_vec2_u32(~abs(firstLeadingBit(u_input.c)), min(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.a), u_input.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.c.x), ~vec2<u32>(u_input.c.x, u_input.c.x), u_input.c))));
}

