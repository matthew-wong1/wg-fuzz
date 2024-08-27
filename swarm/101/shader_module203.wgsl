struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool) -> f32 {
    return _wgslsmith_f_op_f32(-279f * -786f);
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(~2147483647i, _wgslsmith_mult_i32(-28897i, min(~(-41816i), u_input.a.x))), u_input.a.x, firstTrailingBit(1i));
    let var_1 = select(!(!vec4<bool>(select(false, true, false), select(false, true, false), true, true)), vec4<bool>(!(all(vec3<bool>(true, false, false)) || true), -abs(-1i) <= u_input.a.x, all(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false))), true), true);
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(872f, var_0.x, all(vec2<bool>(var_1.x, var_1.x)))), -1000f), _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1530f)) - _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_div_f32(-1457f, _wgslsmith_f_op_f32(-1286f + -1151f)))), vec2<u32>(~u_input.d, 0u), vec3<bool>(false & all(vec3<bool>(var_1.x, false, false)), var_1.x, !select(var_1.x, true, var_1.x)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -395f);
    global0 = all(!var_2.d.yz);
    return -2147483647i;
}

fn func_1(arg_0: u32, arg_1: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(758f, -123f, all(vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_2(-1340f, 6118i, false))))))));
    let var_1 = u_input.a.zy;
    var var_2 = vec4<i32>(var_1.x ^ var_1.x, -abs(u_input.a.x), _wgslsmith_sub_i32(~(~var_1.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.d), vec2<u32>(8361u, 30562u)) % 32u)), func_3(abs(_wgslsmith_add_u32(141987u, 1u)))), countOneBits(_wgslsmith_add_i32(30119i, i32(-1i) * -37465i)));
    let var_3 = vec3<u32>(~arg_0, _wgslsmith_add_u32(1u, u_input.c), 1u);
    let var_4 = Struct_3(vec2<bool>(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), _wgslsmith_div_i32(-1i, var_2.x)) != u_input.a.x, true), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) * -1000f), -771f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), 1176f))));
    return _wgslsmith_add_vec2_u32(vec2<u32>(34153u, _wgslsmith_sub_u32(~383u, ~arg_1 | arg_0)), _wgslsmith_sub_vec2_u32(var_3.yy, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1 >> (var_3.x % 32u), max(1u, 4294967295u)), var_3.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    var var_0 = ~(~max(~vec2<u32>(1u, u_input.b), min(vec2<u32>(u_input.d, u_input.c), vec2<u32>(u_input.c, u_input.d)))) << ((func_1(52278u, _wgslsmith_div_u32(firstLeadingBit(39516u), select(45499u, 63315u, true))) & _wgslsmith_div_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.b, u_input.b)), _wgslsmith_div_vec2_u32(select(vec2<u32>(34340u, 1u), vec2<u32>(u_input.c, 0u), false), abs(vec2<u32>(u_input.b, 44636u))))) % vec2<u32>(32u));
    let var_1 = abs(u_input.c);
    global0 = false;
    var var_2 = reverseBits(-u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, (select(u_input.b, 52399u, false) ^ u_input.b) << (abs(var_1 >> (var_1 % 32u)) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-262f)), -1018f)))), 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1458f, 581f, any(vec2<bool>(false, false)))), 687f))));
}

