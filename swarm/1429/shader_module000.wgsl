struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(1u, 1u, 693u, 0u, 13230u, 4294967295u, 26208u, 84590u, 49909u, 1u, 4294967295u, 1u, 4294967295u, 0u, 1u, 41731u, 4294967295u, 1u, 4294967295u, 0u, 4294967295u, 1u, 11232u, 48707u, 4294967295u, 73505u, 69805u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn func_3(arg_0: vec4<bool>) -> f32 {
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1616f)) * -1356f), _wgslsmith_f_op_f32(max(315f, _wgslsmith_f_op_f32(trunc(-1082f)))), 327f)));
    global0 = array<u32, 27>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1145f - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -883f))), _wgslsmith_f_op_f32(-405f + _wgslsmith_f_op_f32(var_0.x * 116f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -448f), -1464f)), var_0, !(!(848f < var_0.x)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1698f, var_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1120f)) * var_0.x)), _wgslsmith_f_op_f32(select(var_1.x, -453f, all(arg_0))))) * _wgslsmith_f_op_f32(sign(-942f)));
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    var var_0 = Struct_4(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), !vec2<bool>(all(vec3<bool>(false, false, false)), true), true), Struct_2(vec4<f32>(1090f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x)), _wgslsmith_f_op_f32(min(-414f, -1189f)), _wgslsmith_f_op_f32(func_3(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))))), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(ceil(196f)), 304f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-732f, 1000f, true)), _wgslsmith_f_op_f32(-arg_0.a.x)))), Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(1525f * -548f), -2183f, -135f))), vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 27u)], 52858u, global0[_wgslsmith_index_u32(0u, 27u)]), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], u_input.c.x, u_input.a.x, u_input.a.x)) != ~8099u, !all(vec4<bool>(true, false, false, true)), true, all(vec3<bool>(true, false, false))), Struct_1(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - arg_0.a.x))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b - arg_0.b))), _wgslsmith_f_op_f32(round(1000f)), arg_0.a.x), _wgslsmith_f_op_f32(sign(-1156f))), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.d.x, u_input.b.x, -1i, u_input.d.x) | _wgslsmith_mod_vec4_i32(vec4<i32>(21151i, u_input.d.x, u_input.b.x, -38461i) << (vec4<u32>(0u, 1u, u_input.a.x, u_input.c.x) % vec4<u32>(32u)), vec4<i32>(u_input.d.x, 66322i, -5776i, 33055i) >> (vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], u_input.a.x, u_input.c.x, 58u) % vec4<u32>(32u))), abs((vec4<i32>(19591i, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(global0[_wgslsmith_index_u32(69261u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 1u, 27928u) % vec4<u32>(32u))) ^ max(vec4<i32>(20761i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(2147483647i, u_input.b.x, 1i, -7171i)))));
    return Struct_4(var_0.a, var_0.c, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a.x, -1000f, -1000f, 1505f) - vec4<f32>(var_0.b.a.x, 1000f, 703f, 1592f)) + vec4<f32>(_wgslsmith_f_op_f32(1570f + -892f), _wgslsmith_f_op_f32(1636f - arg_0.b), _wgslsmith_div_f32(133f, var_0.d.b), -1015f)), !var_0.c.b, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1520f, arg_0.b, 1026f), arg_0.a))), -1000f)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(2434f + arg_0.a.x), -1517f)), arg_0.a.x), var_0.e);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec4<u32>) -> u32 {
    var var_0 = select(arg_3, arg_3, arg_2.b.b);
    var_0 = vec4<u32>(abs(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(4294967295u, var_0.x, 1u), var_0.zzw, arg_2.b.b.wzw), var_0.xzz | vec3<u32>(global0[_wgslsmith_index_u32(6870u, 27u)], 18790u, 88097u))), _wgslsmith_mult_u32(~(~_wgslsmith_mult_u32(var_0.x, 4294967295u)), ~arg_3.x), global0[_wgslsmith_index_u32(53734u, 27u)], select(_wgslsmith_div_u32(firstLeadingBit(min(26647u, var_0.x)), ~global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), 1u, arg_2.a.x));
    var var_1 = func_2(func_2(func_2(Struct_1(vec3<f32>(arg_2.d.b, arg_2.d.a.x, arg_2.c.c.b), arg_2.b.c.b)).d).b.c).c;
    var var_2 = reverseBits(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(~16642u, var_0.x, 1u, 1u), vec4<u32>(4019u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(arg_3.x, 27u)], arg_3.x), ~u_input.a.x, 81566u))));
    var_1 = func_2(arg_2.c.c).c;
    return ~(~(~_wgslsmith_div_u32(102084u, select(var_2.x, 16290u, var_1.b.x))));
}

fn func_1(arg_0: vec3<i32>) -> vec4<u32> {
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    var var_0 = ~(~(~reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 46421u, 127549u))) << (_wgslsmith_div_vec4_u32(~select(vec4<u32>(12077u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 1u, global0[_wgslsmith_index_u32(1u, 27u)]), vec4<u32>(65582u, global0[_wgslsmith_index_u32(17932u, 27u)], 23182u, 4294967295u), false), ~select(vec4<u32>(u_input.a.x, 1u, u_input.c.x, 24762u), vec4<u32>(33379u, global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 4294967295u, u_input.a.x), true)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, ~firstLeadingBit(4294967295u), ~func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1102f, 1081f)), vec2<i32>(arg_0.x, arg_0.x), func_2(Struct_1(vec3<f32>(-854f, 295f, 1199f), -1577f)), vec4<u32>(40741u, 21780u, global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)]))), ~vec3<u32>(44208u, 46054u, countOneBits(_wgslsmith_sub_u32(u_input.a.x, 52405u))));
    return vec4<u32>(countOneBits(8495u), _wgslsmith_mod_u32(~32572u, abs(~var_1.x)), u_input.a.x, 79748u & _wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(select(9522u, global0[_wgslsmith_index_u32(var_0.x, 27u)], true), _wgslsmith_div_u32(62843u, 1u), 39982u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1291f, -1481f, -712f, -939f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(363f, -1000f, 906f, 113f) * vec4<f32>(-373f, -314f, 305f, -323f))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -419f), -1192f, 1f, -709f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-729f, 1000f, 698f, -2646f), vec4<f32>(-315f, -491f, -365f, 132f), vec4<bool>(false, true, true, false)))), true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-618f)), _wgslsmith_f_op_f32(455f + 1057f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -829f) * _wgslsmith_f_op_f32(f32(-1f) * -399f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-980f)), _wgslsmith_f_op_f32(abs(-542f))), _wgslsmith_f_op_f32(-692f - _wgslsmith_f_op_f32(ceil(-438f)))))));
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstLeadingBit(global0[_wgslsmith_index_u32(44499u, 27u)]), u_input.a.x), 18032u, 1u) | 4294967295u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.xyx), _wgslsmith_f_op_f32(exp2(var_0.x)));
    global0 = array<u32, 27>();
    var var_3 = ~abs(_wgslsmith_mod_vec4_u32(func_1(vec3<i32>(-14017i, 10568i, 2147483647i)), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 4294967295u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18056u, 27u)], 27u)], 27u)])) >> (abs(vec4<u32>(1u, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], u_input.c.x)) % vec4<u32>(32u)));
    var var_4 = 1408f;
    var var_5 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-281f, var_0.x, var_0.x), vec3<f32>(var_0.x, var_2.a.x, -1581f))) * var_2.a), var_0.yyz, true))), ~abs(vec3<i32>(18321i, firstLeadingBit(u_input.d.x), 37881i)), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.x, 27u)], 27u)]);
}

