struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = arg_0;
    let var_1 = 59081u;
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.a.x * arg_0.c.d), 1764f), 6436u, false && (_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1, var_1), 30309u << (var_0.a.b % 32u)) > _wgslsmith_add_u32(reverseBits(var_1), abs(var_1))), -310f);
    let var_3 = Struct_1(arg_0.c.a, _wgslsmith_sub_u32(21253u & min(var_1 << (4294967295u % 32u), _wgslsmith_add_u32(var_2.b, arg_0.c.b)), _wgslsmith_clamp_u32(~4294967295u, var_2.b, 1u)), true, _wgslsmith_f_op_f32(-var_2.a.x));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_2.a)), _wgslsmith_mod_u32(abs(8626u), ~countOneBits(arg_0.c.b)) << (var_0.a.b % 32u), true && ((abs(var_0.b.x) ^ u_input.d.x) <= 56789i), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_0.c.d)))), _wgslsmith_f_op_f32(arg_0.c.a.x - _wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(var_3.a.x + arg_0.c.d)));
    return ~vec3<u32>(0u, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.b, 0u, var_3.b, 9512u), vec4<u32>(28232u, var_2.b, 19783u, 4294967295u)) << (~var_0.c.b % 32u)), ~(~131889u));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_div_u32(~65902u, _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.c.x, 1u)), ~(~1u)));
    global0 = array<vec2<bool>, 32>();
    global0 = array<vec2<bool>, 32>();
    var_0 = _wgslsmith_dot_vec3_u32(u_input.c ^ (func_3(Struct_2(Struct_1(arg_3.a, u_input.c.x, false, 104f), u_input.d.yw, arg_3)) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 58486u, 25868u, arg_3.b), vec4<u32>(9268u, 0u, arg_3.b, arg_3.b)), ~0u, ~13873u) % vec3<u32>(32u))), vec3<u32>(arg_3.b, 10253u, min(arg_3.b, u_input.b.x)) >> (firstLeadingBit(u_input.c) % vec3<u32>(32u)));
    var var_1 = select(select(!(!select(vec4<bool>(arg_3.c, true, arg_3.c, true), vec4<bool>(arg_3.c, true, arg_3.c, arg_3.c), vec4<bool>(arg_3.c, false, arg_3.c, true))), vec4<bool>(true, arg_3.c, any(select(vec3<bool>(arg_3.c, arg_3.c, false), vec3<bool>(false, arg_3.c, arg_3.c), vec3<bool>(arg_3.c, arg_3.c, arg_3.c))), arg_3.c), false), !select(vec4<bool>(true, arg_3.c, true, select(true, true, arg_3.c)), select(select(vec4<bool>(arg_3.c, arg_3.c, arg_3.c, false), vec4<bool>(true, false, true, true), arg_3.c), vec4<bool>(arg_3.c, arg_3.c, arg_3.c, true), arg_3.c), true), !select(vec4<bool>(true, true, true, false), !vec4<bool>(arg_3.c, arg_3.c, true, false), arg_3.c));
    return !vec4<bool>(!arg_3.c, arg_3.c, true, var_1.x);
}

fn func_1() -> vec4<i32> {
    global0 = array<vec2<bool>, 32>();
    global0 = array<vec2<bool>, 32>();
    global0 = array<vec2<bool>, 32>();
    var var_0 = vec4<bool>(select(!(8840u < u_input.b.x), true, ~u_input.d.x == _wgslsmith_mod_i32(u_input.a, -24368i)) & false, all(vec4<bool>(true, false, true, u_input.a >= u_input.d.x)), true, (all(global0[_wgslsmith_index_u32(1u, 32u)]) && (u_input.d.x >= -u_input.a)) && all(vec4<bool>(false, all(vec4<bool>(true, true, true, true)), true, true)));
    var_0 = func_2(~max(13664i, _wgslsmith_clamp_i32(42567i, 13421i, u_input.d.x)), _wgslsmith_mod_i32(-_wgslsmith_mod_i32(11032i, ~0i), _wgslsmith_clamp_i32(-2147483647i, -(~u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, 1i), select(vec3<i32>(-1i, u_input.a, u_input.d.x), vec3<i32>(u_input.a, 0i, 34144i), true)))), ~u_input.d, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-197f, _wgslsmith_f_op_f32(270f * -265f))), 1u, !(!(!var_0.x)), -1537f));
    return u_input.d;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: vec4<i32>) -> i32 {
    global0 = array<vec2<bool>, 32>();
    global0 = array<vec2<bool>, 32>();
    return _wgslsmith_dot_vec4_i32(~u_input.d, vec4<i32>(~2147483647i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(2147483647i, -25432i), arg_3.wy), arg_3.wz), -2147483647i, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(~_wgslsmith_dot_vec3_i32(u_input.d.wzx, u_input.d.zyy), reverseBits(-16788i), _wgslsmith_dot_vec4_i32(max(reverseBits(vec4<i32>(u_input.d.x, -39864i, u_input.d.x, u_input.a)), u_input.d) >> ((min(vec4<u32>(u_input.b.x, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 77476u, 1u, u_input.b.x)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(31484u, u_input.c.x, 4294967295u, 66205u), vec4<u32>(1u, 11240u, 0u, 48923u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(~(-45706i), 12977i), -6566i | u_input.d.x, func_4(u_input.d.x, -516f, true, func_1()), func_1().x)));
    let var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1042f, _wgslsmith_f_op_f32(-370f + -686f))), ~(~(~63057u)), var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -505f), -565f));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-657f - -508f), -839f, _wgslsmith_f_op_f32(-685f * var_2.a.x)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.a.x, -1187f, 175f), vec3<f32>(-252f, var_2.a.x, var_2.a.x)))))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.d)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)))), -1351f));
    var var_4 = ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_2.b, 4294967295u, 35142u, 4294967295u), ~(vec4<u32>(1u, 4294967295u, 25416u, 1u) << (vec4<u32>(84853u, u_input.b.x, 29414u, u_input.b.x) % vec4<u32>(32u)))), firstLeadingBit(~vec4<u32>(u_input.b.x, u_input.c.x, 4409u, u_input.b.x)));
    var_3 = vec3<f32>(var_2.a.x, -1504f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = array<vec2<bool>, 32>();
    var var_5 = ~(u_input.c >> (u_input.c % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * -1034f)), -1272f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(var_3.x + var_2.d), 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, -664f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_3.x)), _wgslsmith_f_op_f32(var_2.a.x - var_3.x)))));
}

