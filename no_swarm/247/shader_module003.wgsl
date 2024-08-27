struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<bool>(true, true & !all(vec3<bool>(true, true, true)), true);
    let var_1 = Struct_3(vec2<bool>(!var_0.x && true, any(!select(vec2<bool>(var_0.x, true), var_0.zz, var_0.xy))), !select(select(!vec2<bool>(var_0.x, var_0.x), !var_0.xz, var_0.x), select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(true, false), var_0.xx, var_0.x), var_0.xx), vec2<bool>(var_0.x, true)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-781f, -449f, 461f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(134f, 2442f, 698f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(399f, 847f, 437f))))));
    let var_2 = var_1;
    let var_3 = var_1;
    let var_4 = max(u_input.a.x, u_input.a.x);
    return var_3.c;
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(~_wgslsmith_div_u32(u_input.a.x, 62398u), reverseBits(~(u_input.a.x << (55266u % 32u)))), 1u, min(abs(_wgslsmith_sub_u32(65936u, u_input.a.x)), 0u));
    let var_1 = arg_0.d;
    var var_2 = _wgslsmith_sub_u32(30159u, ~(~24240u));
    var var_3 = 36956i;
    var var_4 = Struct_2(var_1.a.x, false, func_2(), vec3<u32>(~u_input.a.x, abs(max(var_0.x, 38614u)), _wgslsmith_sub_u32(~var_0.x, select(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), var_0.yy), false))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * -646f))) - _wgslsmith_f_op_f32(ceil(562f)))))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = vec2<u32>(countOneBits(firstTrailingBit(reverseBits(abs(0u)))), countOneBits(u_input.a.x));
    var_0 = u_input.a.zy;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(floor(arg_0)), !any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), func_2(), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(40494u, 0u, 24916u) ^ ~vec3<u32>(54125u, var_0.x, 1u), vec3<u32>(10913u, u_input.a.x, 25363u)), _wgslsmith_div_vec3_u32(abs(u_input.a), u_input.a & u_input.a)));
    var var_2 = 0i;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(715f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -124f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), any(vec2<bool>(var_0.x >= ~12779u, !(!var_1.b))), var_1.c, vec3<u32>(var_0.x, _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_1.d.x, 0u, 47061u, var_0.x) | vec4<u32>(0u, 4294967295u, var_1.d.x, var_1.d.x), vec4<u32>(var_0.x, 70112u, u_input.a.x, 98833u) | vec4<u32>(8666u, var_1.d.x, 16257u, var_1.d.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(1u, var_1.d.x)), select(11940u, 2485u, true), max(var_1.d.x, 43545u), 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, firstTrailingBit(var_0.x), 4294967295u), select(u_input.a, vec3<u32>(var_1.d.x, var_0.x, 1u), vec3<bool>(var_1.b, var_1.b, true)))));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * -1000f))), true, Struct_1(var_3.c.a), ~(~(~vec3<u32>(var_3.d.x, 1u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(2108f, func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(vec2<bool>(true, true), vec2<bool>(true, true), Struct_1(vec3<f32>(-1095f, -1000f, 1441f)), Struct_1(vec3<f32>(451f, -184f, 1911f))))) - 879f), _wgslsmith_f_op_f32(f32(-1f) * -993f)), _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(4005i, u_input.b) | vec2<i32>(u_input.b, u_input.b)), vec2<i32>(~(-4811i), _wgslsmith_mod_i32(0i, 15472i)))), _wgslsmith_div_i32(~u_input.b, u_input.b), vec3<bool>(all(vec2<bool>(true, true)), func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1374f)))), u_input.b, vec2<i32>(-57202i, -12771i)).b, true), func_3(-696f, 24324i, countOneBits(_wgslsmith_div_vec2_i32(-vec2<i32>(-21431i, 2147483647i), vec2<i32>(13997i, u_input.b)))).c);
    var var_1 = !(!select(select(!var_0.d, select(vec3<bool>(var_0.d.x, true, var_0.b.b), vec3<bool>(false, var_0.b.b, var_0.b.b), true), vec3<bool>(var_0.b.b, var_0.b.b, var_0.d.x)), vec3<bool>(u_input.b >= 1i, !var_0.d.x, false), var_0.d));
    let var_2 = ~vec2<i32>(-2147483647i, max(u_input.b, _wgslsmith_clamp_i32(~(-1i), -1i, max(-2147483647i, 2147483647i))));
    let var_3 = vec4<u32>(~var_0.b.d.x, _wgslsmith_div_u32(26404u, ~(1u << (u_input.a.x % 32u))), u_input.a.x, ~u_input.a.x);
    var_1 = var_0.d;
    let var_4 = -_wgslsmith_sub_vec4_i32(~(-vec4<i32>(var_2.x, 0i, u_input.b, u_input.b)) ^ vec4<i32>(-22934i, var_2.x >> (var_0.b.d.x % 32u), var_0.c, var_2.x), ~reverseBits(vec4<i32>(2147483647i, 0i, -2147483647i, 56874i)));
    let var_5 = firstLeadingBit(~0u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_i32(2147483647i, 1i)), var_3.zyz, _wgslsmith_f_op_f32(floor(var_0.e.a.x)), 19502i, min(var_3, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, ~11779u, var_5 >> (var_5 % 32u), var_0.b.d.x), min(vec4<u32>(var_5, 1u, u_input.a.x, var_5), _wgslsmith_add_vec4_u32(var_3, vec4<u32>(var_5, 1u, var_0.b.d.x, var_5))))));
}

