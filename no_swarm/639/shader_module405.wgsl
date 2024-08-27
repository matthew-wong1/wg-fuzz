struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> vec3<u32> {
    let var_0 = select(vec3<bool>(true, !(-1171f < _wgslsmith_f_op_f32(sign(482f))), (2147483647i == (u_input.a >> (u_input.b.x % 32u))) & true), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), !(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(4294967295u, 1u)) >= 1u));
    var var_1 = var_0.x;
    let var_2 = Struct_3(select(13821u, 744u, !var_0.x));
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, u_input.c, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(~(-56315i), 2147483647i), max(1i, reverseBits(-25465i)), -(u_input.c << (1u % 32u)), -43906i), vec4<i32>(u_input.a, 1i, u_input.c, -u_input.a) & vec4<i32>(u_input.c, ~u_input.c, -2147483647i, 52686i), ~((vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.c) >> (vec4<u32>(var_2.a, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    let var_3 = Struct_3(u_input.b.x);
    return ~firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.b.x, var_2.a, 4294967295u), vec3<u32>(var_2.a, var_2.a, 1u) << ((vec3<u32>(var_3.a, 1u, u_input.b.x) ^ vec3<u32>(var_3.a, 29215u, 1u)) % vec3<u32>(32u))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    let var_0 = u_input.b.x;
    global0 = -26738i;
    global0 = arg_0.x;
    var var_1 = Struct_1(arg_1.b.d.xz ^ firstTrailingBit(~vec2<u32>(arg_1.d.x, var_0)), arg_1.b.b, arg_1.b.c, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_add_u32(4294967295u, var_0), 1u), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(25850u, 1u, u_input.b.x), vec3<u32>(4294967295u, var_0, 4294967295u)), arg_1.d >> (arg_1.b.d % vec3<u32>(32u)))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, 4294967295u, arg_1.b.a.x), arg_1.d), firstTrailingBit(vec3<u32>(u_input.b.x, 24599u, u_input.b.x))), var_0));
    global0 = u_input.a;
    return ~(var_0 ^ ~_wgslsmith_div_u32(var_1.d.x, u_input.b.x << (arg_1.b.a.x % 32u)));
}

fn func_1() -> f32 {
    let var_0 = ~vec3<u32>(select(83507u, _wgslsmith_dot_vec2_u32(vec2<u32>(10762u, 1u), ~vec2<u32>(4294967295u, u_input.b.x)), false), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 43245u, 49235u), func_2()), func_3(vec3<i32>(-3075i, 0i, 2147483647i), Struct_2(false, Struct_1(vec2<u32>(1u, 24992u), 836f, vec2<i32>(u_input.c, -38254i), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), false, vec3<u32>(1u, 14479u, u_input.b.x)))), reverseBits(u_input.b.x));
    let var_1 = Struct_3(var_0.x);
    let var_2 = countOneBits(vec3<i32>(~(~(~(-2147483647i))), u_input.c, -25057i));
    global0 = _wgslsmith_add_i32(i32(-1i) * -u_input.a, _wgslsmith_div_i32(~(-1i), 30763i));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1103f * -1000f) + 1648f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(139f * -1000f) - -457f)));
    return _wgslsmith_f_op_f32(-var_3.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = true;
    var_0 = false;
    var var_1 = arg_1.d.x;
    var_1 = _wgslsmith_div_u32(~u_input.b.x, _wgslsmith_dot_vec3_u32(~(_wgslsmith_add_vec3_u32(arg_1.d, arg_1.d) ^ vec3<u32>(1u, 4294967295u, 0u)), abs(firstTrailingBit(arg_1.d))));
    return Struct_2(!any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), arg_0, true, arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(vec2<u32>(0u, 1u), _wgslsmith_f_op_f32(func_1()), _wgslsmith_mult_vec2_i32(select(-vec2<i32>(0i, -2147483647i), abs(vec2<i32>(-47875i, u_input.c)), vec2<bool>(true, true)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c) ^ vec2<i32>(92583i, 44034i), min(vec2<i32>(u_input.c, -1i), vec2<i32>(28566i, u_input.c)))), ~(~(vec3<u32>(u_input.b.x, 12938u, 1u) << (vec3<u32>(u_input.b.x, 26871u, 51567u) % vec3<u32>(32u))))), Struct_1(firstTrailingBit(~_wgslsmith_mult_vec2_u32(u_input.b, u_input.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -100f) * _wgslsmith_f_op_f32(floor(226f))))), abs(vec2<i32>(~u_input.c, abs(u_input.a))), max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(24599u, u_input.b.x, u_input.b.x) >> (vec3<u32>(0u, u_input.b.x, 1u) % vec3<u32>(32u))), vec3<u32>(0u | u_input.b.x, u_input.b.x, abs(u_input.b.x)))));
    global0 = -func_4(Struct_1(u_input.b, _wgslsmith_f_op_f32(var_0.b.b + var_0.b.b), ~(-vec2<i32>(0i, var_0.b.c.x)), countOneBits(var_0.d) << (~var_0.b.d % vec3<u32>(32u))), func_4(func_4(var_0.b, var_0.b).b, var_0.b).b).b.c.x;
    let var_1 = _wgslsmith_f_op_f32(func_1());
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(min(-173f, 981f)), _wgslsmith_f_op_f32(f32(-1f) * -260f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 2026f) * vec2<f32>(-1245f, var_0.b.b)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -434f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.b, var_1), vec2<f32>(-1000f, var_0.b.b), vec2<bool>(var_0.c, var_0.a)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-806f, var_0.b.b), vec2<f32>(var_0.b.b, var_1))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b, 488f)))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b, -380f)))))))));
    let var_4 = var_0.b;
    var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_3)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 2414f) * var_3)) * vec2<f32>(_wgslsmith_div_f32(2861f, -158f), 280f))))));
    var var_5 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_div_i32(~30341i, u_input.a), -1i, -u_input.a, -(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -8807i), vec2<i32>(var_0.b.c.x, var_4.c.x)) ^ 0i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-516f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.b - var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -906f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, var_2.x)))) - vec3<f32>(_wgslsmith_f_op_f32(sign(var_4.b)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(select(-353f, -697f, var_0.c)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2580f, -478f, 1000f, 1261f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1, var_1, var_1, var_4.b)))))));
}

