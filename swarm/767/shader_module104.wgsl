struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, -12562i, 0i);

var<private> global1: i32;

var<private> global2: array<Struct_4, 23>;

var<private> global3: vec2<f32> = vec2<f32>(916f, -773f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_2)), _wgslsmith_f_op_f32(373f * 862f), true));
    global2 = array<Struct_4, 23>();
    let var_1 = u_input.d.x;
    let var_2 = vec2<bool>(any(select(vec4<bool>(arg_1, false, arg_1, !arg_1), select(vec4<bool>(false, true, false, arg_1), vec4<bool>(true, arg_1, arg_1, arg_1), false), !select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(arg_1, false, arg_1, arg_1), arg_1))), !(!(18646i == -u_input.b)));
    global0 = u_input.d;
    return true;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: f32, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec3_u32(abs(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(5341u, arg_0, 42179u), vec3<u32>(34415u, u_input.a, arg_0), vec3<u32>(1u, 28907u, u_input.a)), vec3<u32>(arg_0, u_input.a, 0u)), vec3<u32>(arg_0, 13015u, ~4294967295u))), abs(abs(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (max(vec3<u32>(0u, 0u, arg_0), vec3<u32>(arg_0, 4294967295u, 27498u)) % vec3<u32>(32u)))));
    var var_1 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) * global3.x), -908f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-749f)))), -u_input.b <= -u_input.c, u_input.d << (((vec3<u32>(var_0.x, u_input.a, 1302u) ^ vec3<u32>(4294967295u, var_0.x, 1u)) ^ ~vec3<u32>(4294967295u, arg_0, arg_0)) % vec3<u32>(32u))), select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<bool>(any(vec3<bool>(true, true, true)), firstLeadingBit(1i) <= _wgslsmith_mod_i32(26353i, arg_3.x)), !(46865u >= var_0.x) != false), Struct_1(arg_1.zy, 50609i, true, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(sign(-1243f)), -1000f)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)), true, u_input.d), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_2, -830f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-657f, 993f, 477f)))), true, select(vec3<i32>(0i, u_input.b, abs(-7580i)), select(vec3<i32>(-2147483647i, 33158i, arg_3.x) ^ vec3<i32>(global0.x, global0.x, arg_3.x), ~u_input.d, vec3<bool>(false, false, true)), func_3(select(vec4<u32>(var_0.x, 4294967295u, var_0.x, arg_0), vec4<u32>(var_0.x, 10134u, u_input.a, 53354u), vec4<bool>(false, true, false, true)), u_input.a == 11625u, -1221f))));
    var var_2 = !var_1.b.x;
    var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_1 * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, 1681f) * vec3<f32>(arg_2, 461f, global3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-157f, arg_1.x, 1278f))), false)), !var_1.a.b, ~vec3<i32>(1i, -44450i, -arg_3.x)), var_1.b, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-532f, 415f), var_1.e.a.xx) * var_1.a.a.yy) - _wgslsmith_f_op_vec2_f32(abs(arg_1.xx))), min(-(~1i), ~(-33750i)), true, var_1.d.a), Struct_2(_wgslsmith_f_op_vec3_f32(-var_1.e.a), (0u > ~arg_0) && false, vec3<i32>(20203i, -27204i, var_1.c.b)), var_1.e);
    let var_3 = _wgslsmith_mult_i32(var_1.a.c.x, -select(-_wgslsmith_sub_i32(var_1.d.c.x, 0i), countOneBits(17268i), any(select(vec3<bool>(true, var_1.b.x, var_1.c.c), vec3<bool>(false, false, true), vec3<bool>(var_1.b.x, var_1.c.c, var_1.d.b)))));
    return var_1.e;
}

fn func_1() -> Struct_3 {
    global2 = array<Struct_4, 23>();
    let var_0 = false;
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), -613f), global0.x, var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-153f, global3.x, global3.x))));
    var var_2 = firstTrailingBit(~_wgslsmith_clamp_u32(1u, ~(~1u), (u_input.a | u_input.a) | ~u_input.a));
    global3 = var_1.d.yz;
    return Struct_3(func_2(~(~(~u_input.a)), vec3<f32>(var_1.a.x, global3.x, _wgslsmith_f_op_f32(-global3.x)), -728f, vec2<i32>(-4920i, u_input.d.x) | _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(var_1.b, u_input.b)), select(vec2<i32>(u_input.b, global0.x), global0.yy, true))), select(!(!select(vec2<bool>(var_1.c, true), vec2<bool>(true, true), var_0)), !(!vec2<bool>(true, var_1.c)), !(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x) == _wgslsmith_f_op_f32(-global3.x))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-global3.x)))), select(select(-var_1.b, _wgslsmith_clamp_i32(-14043i, u_input.c, global0.x), var_1.b <= -2147483647i), ~u_input.b, !all(vec4<bool>(var_0, var_0, var_1.c, var_0))), 333f != global3.x, var_1.d), Struct_2(var_1.d, var_1.c, u_input.d ^ firstLeadingBit(u_input.d)), Struct_2(var_1.d, _wgslsmith_f_op_f32(-global3.x) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - var_1.d.x) - _wgslsmith_f_op_f32(select(-1268f, var_1.d.x, false))), ~firstTrailingBit(u_input.d)));
}

fn func_4(arg_0: Struct_3) -> Struct_5 {
    let var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(2705u, 10322u, u_input.a, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(21606u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 33391u, 1u))), ~(vec4<u32>(u_input.a, 0u, u_input.a, 0u) ^ vec4<u32>(16793u, 0u, u_input.a, u_input.a))), ~vec4<u32>(~u_input.a, max(78323u, u_input.a), 4294967295u, min(u_input.a, 30789u))) >> (~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 49433u), vec4<u32>(u_input.a, 39919u, 34024u, 37895u) >> (vec4<u32>(4294967295u, 4294967295u, u_input.a, 1u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    global3 = vec2<f32>(_wgslsmith_f_op_f32(func_2(u_input.a, _wgslsmith_f_op_vec3_f32(round(arg_0.d.a)), global3.x, global0.xy).a.x + global3.x), _wgslsmith_f_op_f32(arg_0.a.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.a.x)))));
    var var_1 = arg_0;
    global3 = arg_0.a.a.zy;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.a.x), arg_0.c.a.x, 648f) + vec3<f32>(1000f, _wgslsmith_div_f32(1251f, 247f), _wgslsmith_f_op_f32(-arg_0.e.a.x))), var_1.c.d));
    return Struct_5(~(~(~select(var_0.yxw, vec3<u32>(27842u, var_0.x, 60696u), true))), func_1().b.x, vec3<bool>(!arg_0.b.x, true, ~var_1.c.b > ~(~0i)), var_1.a, Struct_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.x), 1665f))), _wgslsmith_sub_i32(-48756i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.b), arg_0.a.c)) ^ global0.x, arg_0.d.b, arg_0.e.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.d.a.x, _wgslsmith_f_op_f32(-456f + 1608f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.d.a.zz, var_0.d.a.xz))))), _wgslsmith_dot_vec2_u32(var_0.a.yz, vec2<u32>(~firstTrailingBit(44384u), u_input.a)), -11744i, u_input.d.xy, _wgslsmith_add_u32(u_input.a ^ u_input.a, 45501u));
}

