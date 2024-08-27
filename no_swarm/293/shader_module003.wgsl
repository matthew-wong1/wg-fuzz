struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: Struct_4,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true));

var<private> global1: array<vec4<u32>, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_4, arg_3: Struct_4) -> vec3<bool> {
    let var_0 = u_input.d.xy;
    let var_1 = Struct_4(arg_3.a, u_input.b.yy, true);
    var var_2 = 0i;
    let var_3 = ~firstTrailingBit(_wgslsmith_sub_vec2_i32(abs(-vec2<i32>(15727i, 0i)), vec2<i32>(2147483647i, _wgslsmith_sub_i32(var_1.b.x, arg_3.b.x))));
    var var_4 = !any(select(vec2<bool>(var_1.c, false), !select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(false, var_1.a), arg_2.c), select(vec2<bool>(true, arg_3.a), select(vec2<bool>(arg_3.a, var_1.c), vec2<bool>(true, arg_3.a), vec2<bool>(true, var_1.a)), vec2<bool>(var_1.c, false))));
    return vec3<bool>(arg_2.c, var_1.a, all(!(!select(vec2<bool>(arg_3.c, true), vec2<bool>(arg_2.c, true), vec2<bool>(true, false)))));
}

fn func_2() -> vec3<i32> {
    var var_0 = u_input.c.x;
    var var_1 = reverseBits(u_input.c);
    var var_2 = all(select(select(vec3<bool>(true, u_input.d.x <= u_input.a, select(true, false, false)), vec3<bool>(false, true, true), false), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, all(func_3(var_1.x, 264f, Struct_4(false, u_input.c.yx, false), Struct_4(false, var_1.xz, true))), true)));
    let var_3 = func_3(~((u_input.b.x << (u_input.d.x % 32u)) << (46296u % 32u)) >> (max(u_input.d.x, _wgslsmith_div_u32(0u, _wgslsmith_sub_u32(u_input.d.x, u_input.a))) % 32u), -887f, Struct_4(!(~2147483647i < _wgslsmith_sub_i32(u_input.b.x, 28523i)), u_input.c.xy, true | all(select(vec2<bool>(false, false), vec2<bool>(false, false), true))), Struct_4(select(true, !all(global0[_wgslsmith_index_u32(10026u, 19u)]), !select(false, true, false)), var_1.zy, any(global0[_wgslsmith_index_u32(u_input.a, 19u)]))).x;
    var_1 = -(~min(vec3<i32>(2147483647i, ~u_input.c.x, 36493i & u_input.c.x), -abs(vec3<i32>(u_input.c.x, u_input.c.x, var_1.x))));
    return -((~u_input.c >> (~_wgslsmith_add_vec3_u32(u_input.d.wyy, u_input.d.ywz) % vec3<u32>(32u))) ^ u_input.c);
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> vec3<f32> {
    global0 = array<vec4<bool>, 19>();
    let var_0 = select(u_input.b, u_input.c, !arg_1.x) & _wgslsmith_add_vec3_i32(func_2(), vec3<i32>(u_input.c.x, u_input.b.x, _wgslsmith_add_i32(-24680i, _wgslsmith_clamp_i32(-33915i, -1i, u_input.b.x))));
    let var_1 = vec2<bool>(arg_0, !func_3(-42339i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -933f)), Struct_4(false, ~var_0.xx, arg_0), Struct_4(func_3(var_0.x, -607f, Struct_4(true, vec2<i32>(u_input.b.x, var_0.x), arg_0), Struct_4(true, var_0.xz, false)).x, vec2<i32>(0i, var_0.x) | var_0.xz, true)).x);
    global0 = array<vec4<bool>, 19>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 999f)) + _wgslsmith_f_op_f32(ceil(429f))) + -651f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-265f))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-802f, -293f, var_2) * vec3<f32>(var_2, var_2, 2364f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -287f, var_2)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(495f, 434f, -1042f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1921f, -1254f, 172f) - vec3<f32>(1337f, 360f, -399f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(all(vec2<bool>(true, true)), select(global0[_wgslsmith_index_u32(1u, 19u)], vec4<bool>(false, true, false, false), global0[_wgslsmith_index_u32(u_input.d.x, 19u)]))) - vec3<f32>(-787f, -1000f, _wgslsmith_f_op_f32(select(654f, 1000f, true))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-191f + var_0.x)), -545f) * _wgslsmith_f_op_vec3_f32(round(var_0))) * _wgslsmith_f_op_vec3_f32(abs(var_0)));
    global1 = array<vec4<u32>, 19>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(219f, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(ceil(-162f)))) + var_0);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0 * var_0))) * vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(366f)) - -428f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) + _wgslsmith_f_op_f32(sign(-822f))))), _wgslsmith_f_op_vec2_f32(floor(var_0.zz)), firstLeadingBit(vec2<u32>(u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.d.xxw, ~vec3<u32>(1u, u_input.a, u_input.a)))), _wgslsmith_mod_i32(u_input.b.x, 14296i));
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_3.c.x, _wgslsmith_f_op_f32(-var_2.x)))))), var_2, _wgslsmith_dot_vec2_u32(select(~(~var_3.d), ~max(var_3.d, vec2<u32>(0u, u_input.a)), func_3(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(-523f - var_3.b.x), Struct_4(true, u_input.b.yy, true), Struct_4(false, u_input.c.xy, false)).xx), var_3.d));
}

