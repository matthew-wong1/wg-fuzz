struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(firstTrailingBit((vec4<u32>(u_input.c, u_input.c, 25297u, 22995u) << (vec4<u32>(4294967295u, u_input.c, 1u, u_input.c) % vec4<u32>(32u))) >> (reverseBits(vec4<u32>(u_input.c, 1u, 4294967295u, u_input.c)) % vec4<u32>(32u))) << (~max(~vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), vec4<u32>(u_input.c, u_input.c, 39591u, u_input.c)) % vec4<u32>(32u)), ~(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u), vec4<u32>(u_input.c, 36725u, 4294967295u, u_input.c)), max(vec4<u32>(0u, 36919u, u_input.c, 50033u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), true)), vec4<u32>(77410u, 1u, u_input.c, ~(~0u)));
    global0 = ~(~var_0.x);
    var var_1 = Struct_2(26378i);
    var var_2 = Struct_1(-12149i, !any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), true)), _wgslsmith_div_vec3_i32(-(~(-vec3<i32>(arg_0.a, 2147483647i, 3731i))), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a, var_1.a, u_input.b) & _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 4761i, arg_0.a), vec3<i32>(u_input.a, u_input.b, arg_0.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a, u_input.b, 42901i) & vec3<i32>(arg_0.a, arg_0.a, arg_0.a), ~vec3<i32>(arg_0.a, 0i, 18128i)))), u_input.c);
    let var_3 = Struct_1(var_2.c.x, true, vec3<i32>(arg_0.a, _wgslsmith_mod_i32(_wgslsmith_div_i32(38264i, -5433i), -(i32(-1i) * -8237i)), 2910i), _wgslsmith_dot_vec4_u32(min(~vec4<u32>(var_2.d, 3021u, 52469u, var_2.d), var_0), vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(1247u), var_2.d), ~(~var_0.x), 21252u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(26713u, 69351u)), var_0.xy))));
    return var_3.d;
}

fn func_4(arg_0: Struct_1) -> u32 {
    global0 = arg_0.d;
    var var_0 = !all(select(!vec3<bool>(arg_0.b, arg_0.b, arg_0.b), select(!vec3<bool>(arg_0.b, arg_0.b, false), !vec3<bool>(arg_0.b, false, false), select(vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(false, false, arg_0.b), arg_0.b)), vec3<bool>(arg_0.b, true, any(vec3<bool>(false, true, false)))));
    return 2033u;
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<u32>(1u & max(u_input.c, 125519u), countOneBits(u_input.c), u_input.c);
    let var_1 = vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(~var_0.x, ~77755u), ~u_input.c), func_4(Struct_1(1i, true, vec3<i32>(-1i) * -vec3<i32>(0i, -18862i, u_input.d.x), func_3(Struct_2(14139i)))));
    let var_2 = 1i;
    var var_3 = _wgslsmith_f_op_f32(floor(166f));
    var var_4 = select(select(vec2<bool>(true, true), vec2<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true))), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), !all(vec4<bool>(true, true, true, true))), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), true)), !(~u_input.b < var_2) && true);
    return Struct_1(_wgslsmith_sub_i32(u_input.a, 2147483647i >> (u_input.c % 32u)), var_4.x, vec3<i32>(var_2, ~1i | (select(u_input.a, var_2, var_4.x) | var_2), -var_2 & u_input.b), ~firstTrailingBit(41882u));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<u32>) -> f32 {
    var var_0 = func_2();
    var_0 = Struct_1(1i, false, abs(select(min(var_0.c, var_0.c) & var_0.c, -(~var_0.c), false)), (~arg_1.x ^ ~(~u_input.c)) << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(96863u, _wgslsmith_div_u32(23048u, arg_0)), _wgslsmith_add_u32(49636u, u_input.c) | _wgslsmith_div_u32(25683u, arg_2.x)) % 32u));
    global0 = 0u;
    var_0 = Struct_1(-(~min(var_0.a, 2147483647i)), true, vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0.a, var_0.c.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.a, u_input.d.x, u_input.b, u_input.b), vec4<bool>(var_0.b, true, var_0.b, true)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, var_0.c.x, -1i, -25855i), vec4<i32>(var_0.c.x, 70725i, var_0.c.x, var_0.c.x))) >> (_wgslsmith_div_u32(~54266u, func_3(Struct_2(-25949i))) % 32u), -115i, var_0.a), ~10058u);
    var_0 = Struct_1(var_0.c.x, !var_0.b, ~var_0.c, ~(~(~(~88029u))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1163f + -290f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(402f, 1956f))) + 1f), any(!select(!vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, true), true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.c;
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c, vec2<u32>(30732u, u_input.c), vec4<u32>(u_input.c, 39696u, u_input.c, 0u)))), _wgslsmith_f_op_f32(690f + _wgslsmith_f_op_f32(420f + 332f))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -907f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-403f, 434f))))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-712f, 889f, false)), _wgslsmith_f_op_f32(565f + -2005f))), vec2<f32>(1f, 1f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_0.x, -1176f), vec3<f32>(var_0.x, -858f, -1200f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, -827f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-183f, 664f, 1045f) - vec3<f32>(var_0.x, 407f, var_0.x))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1675f, 1000f, -535f), vec3<f32>(var_0.x, var_0.x, 1529f)), vec3<f32>(var_0.x, 610f, 547f)))))))));
    let var_2 = var_1.x;
    global0 = ~(max(abs(_wgslsmith_mult_u32(0u, 11086u)), 1u) ^ _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c, u_input.c)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, 0u)) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))));
    let var_3 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(~max(30241i, u_input.b), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b, -9028i), func_2().c.x), u_input.a, u_input.a), vec4<i32>(15857i, _wgslsmith_sub_i32(-7605i, -40801i) << (u_input.c % 32u), abs(u_input.b), ~1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, 9036i, -27426i, var_3.a), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(var_1.zx, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(869f, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-158f, var_1.x) - var_1.yz), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true))))), vec2<i32>(~2495i, 18627i), ~u_input.c, vec2<i32>(~(-u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, ~u_input.d.x, _wgslsmith_mod_i32(u_input.b, -2147483647i), var_3.a & -2147483647i), -vec4<i32>(var_3.a, var_3.a, -1i, u_input.b) & vec4<i32>(u_input.a, u_input.a, u_input.d.x, u_input.a))));
}

