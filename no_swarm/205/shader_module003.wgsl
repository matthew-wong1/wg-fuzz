struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    let var_0 = Struct_2(vec3<i32>(i32(-1i) * -1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-11804i, -6157i, 19564i, 3478i), ~vec4<i32>(-1i, 1i, 1i, -40127i)), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_add_i32(-39670i, -2559i)), min(firstTrailingBit(-2147483647i), -50584i))));
    global0 = array<u32, 27>();
    let var_1 = ~var_0.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-641f * -596f), -692f));
    let var_3 = min(~u_input.c.x, 8066u);
    return _wgslsmith_sub_i32(-var_0.a.x, var_1);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: f32) -> Struct_3 {
    let var_0 = Struct_5(!vec2<bool>(abs(-1319i) == func_3(), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-911f)), _wgslsmith_div_f32(arg_2, -639f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(arg_2 + arg_1.x)), 1879f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.wzz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 245f, 481f) * vec3<f32>(-883f, arg_2, arg_1.x)) * vec3<f32>(arg_1.x, arg_2, arg_1.x)))));
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    let var_1 = vec3<u32>(4294967295u, _wgslsmith_sub_u32(u_input.c.x, 0u), _wgslsmith_mult_u32(98571u >> ((countOneBits(u_input.c.x) ^ global0[_wgslsmith_index_u32(~4294967295u, 27u)]) % 32u), arg_0.x));
    var var_2 = ~u_input.b;
    return Struct_3(!var_0.a.x, !any(select(vec3<bool>(var_0.a.x, false, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, false))) | var_0.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_5 {
    let var_0 = Struct_1(-1080f, vec4<i32>(arg_1, ~arg_1, arg_1, -min(1i, select(114819i, arg_1, true))), true);
    let var_1 = !vec3<bool>(var_0.c & arg_0.a, !arg_0.a, arg_0.b);
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    return Struct_5(select(select(var_1.yx, var_1.zz, true), vec2<bool>(true, 61154i <= _wgslsmith_dot_vec2_i32(var_0.b.xw, var_0.b.xy)), !select(var_1.yx, !var_1.zx, var_1.zy)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, -116f) - vec3<f32>(var_0.a, 172f, -1297f)))))))));
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(func_2(vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(1u | firstLeadingBit(global0[_wgslsmith_index_u32(u_input.c.x, 27u)]), 27u)], min(global0[_wgslsmith_index_u32(0u, 27u)], u_input.b) << (u_input.b % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(500f, -1221f, 558f, 1055f)), vec4<f32>(-424f, -326f, 1486f, 2114f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-829f, -1000f, 129f, 1154f))))), -492f), -1i);
    var var_1 = Struct_4(func_2((u_input.a << (~vec3<u32>(7762u, u_input.b, 4294967295u) % vec3<u32>(32u))) | u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-514f, -1000f, 340f, var_0.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<f32>(var_0.b.x, -553f, 859f, 802f)), vec4<f32>(var_0.b.x, 273f, var_0.b.x, -286f), true))), _wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(trunc(var_0.b.x))))), -712f);
    global0 = array<u32, 27>();
    var_1 = Struct_4(Struct_3(true, false), func_4(func_2(~(~u_input.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(503f, var_1.b, var_0.b.x, var_1.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1673f, var_0.b.x, var_1.b, -307f))), -1280f), -1i).b.x);
    global0 = array<u32, 27>();
    return func_2(u_input.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_1.b, -1173f, var_1.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, 140f, var_0.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, -200f, var_1.b, var_1.b) * vec4<f32>(1110f, var_0.b.x, 466f, -448f))) - vec4<f32>(_wgslsmith_div_f32(var_1.b, 440f), var_1.b, -140f, var_1.b))), _wgslsmith_f_op_f32(ceil(var_1.b)));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_3 {
    global0 = array<u32, 27>();
    let var_0 = all(select(select(!vec4<bool>(true, arg_0.b, false, false), !select(vec4<bool>(true, arg_0.a, arg_0.b, false), vec4<bool>(arg_0.a, false, arg_0.b, arg_0.a), vec4<bool>(false, arg_0.b, false, arg_0.a)), all(vec2<bool>(false, arg_0.b)) | arg_0.a), vec4<bool>(!(arg_0.b && false), false, arg_0.b, !(arg_0.a | arg_0.b)), arg_0.a));
    var var_1 = ~4294967295u;
    let var_2 = Struct_5(func_4(arg_0, (_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(-11726i, 8001i)) ^ (i32(-1i) * -46942i)) << (u_input.b % 32u)).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1483f, 337f, -183f), vec3<f32>(1000f, -1138f, 1035f)))))));
    var var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(~arg_1.x, 83242u, 34722u)), ~64902u, 2325u, arg_1.x);
    return Struct_3(func_2(var_3.wwx, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_2.b.x)), _wgslsmith_div_f32(var_2.b.x, 233f))), 878f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b.x))), 1092f), var_2.b.x).a, any(vec3<bool>(!(var_0 != false), var_2.a.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(-875f, -605f, true)), _wgslsmith_f_op_f32(sign(-365f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(253f, 666f) + vec2<f32>(1018f, -116f)) * vec2<f32>(723f, -1433f)), true)) - vec2<f32>(_wgslsmith_f_op_f32(1f + -975f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(167f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(132f, -355f) - vec2<f32>(-825f, 185f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1670f, -792f) * vec2<f32>(487f, -887f)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1478f, 710f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1031f, -923f))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1327f), vec2<f32>(335f, 1702f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1196f, 155f) - vec2<f32>(2091f, -845f)))))));
    let var_1 = func_5(func_1(), _wgslsmith_div_vec3_u32(~select(u_input.a, ~u_input.c, func_4(Struct_3(true, true), -1i).a.x), reverseBits(abs(min(u_input.c, u_input.a)))));
    let var_2 = ~(~vec2<u32>(~(54044u << (u_input.b % 32u)), global0[_wgslsmith_index_u32(21295u, 27u)]));
    let var_3 = Struct_1(func_4(Struct_3(true, true), _wgslsmith_clamp_i32(1i, -61745i, _wgslsmith_mod_i32(~(-5897i), 2147483647i >> (1u % 32u)))).b.x, vec4<i32>(max(i32(-1i) * -46056i, reverseBits(~0i)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(func_3(), _wgslsmith_div_i32(-55559i, 36292i)), -(~2147483647i), 86739i), _wgslsmith_sub_i32(-abs(12049i), 1i), i32(-1i) * -1i), !any(vec2<bool>(true, var_1.b)));
    var var_4 = var_3;
    var var_5 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(276f, var_0.x))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(428f, -936f) - vec2<f32>(1000f, var_0.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_4.a, var_4.a), vec2<f32>(var_4.a, 965f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-543f, var_0.x))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1756f, var_3.a)))), vec2<f32>(var_3.a, _wgslsmith_f_op_f32(-var_4.a)), vec2<bool>(true, select(var_3.c, var_4.c, false)))))));
    global0 = array<u32, 27>();
    let var_6 = firstLeadingBit(max(~(~(~u_input.a.x)), _wgslsmith_div_u32(firstLeadingBit(abs(global0[_wgslsmith_index_u32(30744u, 27u)])), ~43327u >> (select(global0[_wgslsmith_index_u32(4294967295u, 27u)], 5600u, var_3.c) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(var_4.b.zzx, var_4.b.ywz), vec3<i32>(var_4.b.x, var_4.b.x, var_4.b.x)), i32(-1i) * -(1i >> (min(1u, 14398u) % 32u)), _wgslsmith_f_op_f32(-var_5.x));
}

