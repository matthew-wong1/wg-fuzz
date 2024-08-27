struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: Struct_2,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(31768u), Struct_1(2311u), Struct_1(105733u), Struct_1(1u), Struct_1(28238u), Struct_1(4294967295u), Struct_1(1u), Struct_1(65810u), Struct_1(54909u), Struct_1(0u), Struct_1(0u), Struct_1(0u), Struct_1(30281u), Struct_1(4294967295u), Struct_1(0u), Struct_1(4294967295u), Struct_1(1u), Struct_1(45367u), Struct_1(1u), Struct_1(0u));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec3<bool>) -> f32 {
    var var_0 = arg_0.b;
    var var_1 = Struct_4(Struct_3(select(vec3<bool>(all(arg_2), arg_0.a.x, all(vec3<bool>(arg_2.x, false, arg_2.x))), vec3<bool>(!arg_2.x, arg_1 == 4294967295u, true), -26502i >= u_input.d), abs(abs(arg_1) | ~60668u), arg_0.c, !select(select(vec4<bool>(arg_2.x, arg_2.x, false, true), vec4<bool>(arg_0.a.x, arg_2.x, false, true), arg_0.d), arg_0.d, arg_2.x), _wgslsmith_add_vec2_u32(arg_0.e, reverseBits(~vec2<u32>(49664u, 5890u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c.a * _wgslsmith_f_op_vec3_f32(-arg_0.c.a)) - vec3<f32>(1316f, -110f, -865f))), _wgslsmith_div_u32(arg_1, ~arg_0.e.x), Struct_1(1u), Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(4672u, arg_1, u_input.b) ^ ~vec3<u32>(u_input.b, 126240u, 1u), (vec3<u32>(arg_1, u_input.b, arg_0.e.x) & vec3<u32>(4294967295u, 23857u, 3902u)) ^ firstTrailingBit(vec3<u32>(78075u, 0u, 44699u)))));
    let var_2 = -select(-30429i, _wgslsmith_add_i32(abs(7932i), u_input.c), !all(arg_0.d)) > u_input.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c.a.x, var_1.b.x), vec2<f32>(arg_0.c.a.x, arg_0.c.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.a.c.a.x, -658f))) - _wgslsmith_f_op_vec2_f32(abs(arg_0.c.a.zy))))));
    global0 = array<Struct_1, 20>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1303f)))))) - -541f);
}

fn func_4(arg_0: bool, arg_1: f32) -> vec4<i32> {
    let var_0 = select(select(select(vec4<bool>(true, u_input.b != 78267u, u_input.b > u_input.b, arg_0 || false), vec4<bool>(arg_0, true, true, arg_0 || arg_0), arg_0), vec4<bool>(!all(vec2<bool>(arg_0, true)), true, select(true, true, arg_0) && any(vec4<bool>(arg_0, arg_0, arg_0, true)), arg_0), select(vec4<bool>(all(vec2<bool>(false, true)), arg_0, any(vec3<bool>(arg_0, arg_0, true)), any(vec3<bool>(arg_0, true, true))), select(!vec4<bool>(false, arg_0, arg_0, false), !vec4<bool>(arg_0, false, arg_0, arg_0), select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, arg_0, false, arg_0), false)), vec4<bool>(true == arg_0, true, !arg_0, !arg_0))), select(vec4<bool>(any(vec4<bool>(false, arg_0, true, true)), arg_0 & (true && arg_0), _wgslsmith_f_op_f32(1325f - arg_1) > arg_1, true), !vec4<bool>(any(vec2<bool>(false, false)), all(vec4<bool>(false, false, arg_0, arg_0)), !arg_0, all(vec3<bool>(arg_0, arg_0, false))), select(!vec4<bool>(arg_0, arg_0, arg_0, true), !(!vec4<bool>(true, true, true, arg_0)), true)), arg_0);
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_1 = var_0;
    var var_2 = arg_1;
    return vec4<i32>(u_input.a.x, countOneBits(18150i), 30117i, -1i);
}

fn func_2(arg_0: Struct_5) -> f32 {
    var var_0 = func_4(false, _wgslsmith_f_op_f32(func_3(Struct_3(vec3<bool>(arg_0.b.b, all(vec2<bool>(false, true)), true), 4294967295u, Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.a.x, 896f, arg_0.b.a.x), vec3<f32>(arg_0.b.a.x, 936f, arg_0.b.a.x)), false, arg_0.b.c, Struct_1(arg_0.b.c.a)), vec4<bool>(arg_0.d | false, !arg_0.d, arg_0.c < arg_0.b.a.x, false || arg_0.b.b), ~(vec2<u32>(u_input.b, 38691u) >> (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u)))), ~58815u, vec3<bool>(true, arg_0.d, true))));
    let var_1 = Struct_2(vec3<f32>(645f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-531f - arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))), !(any(vec3<bool>(true, arg_0.d, false)) && arg_0.b.b), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u << (arg_0.b.d.a % 32u), select(u_input.b, 45724u, arg_0.b.b), 0u, ~u_input.b), max(vec4<u32>(9397u, 1u, 15331u, arg_0.b.c.a) | vec4<u32>(u_input.b, u_input.b, u_input.b, arg_0.b.d.a), vec4<u32>(4294967295u, 7320u, u_input.b, u_input.b)))), 20u)], arg_0.b.d);
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(u_input.b), 30145u, _wgslsmith_clamp_u32(~arg_0.b.d.a, var_1.c.a, ~var_1.d.a), var_1.d.a), ~(vec4<u32>(arg_0.b.c.a, 36882u, arg_0.b.c.a, u_input.b) & abs(vec4<u32>(4294967295u, 33480u, 37616u, var_1.c.a)))));
    var_0 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, reverseBits(0i), -66944i, ~_wgslsmith_mult_i32(-1i, arg_0.a.x)), countOneBits(vec4<i32>(_wgslsmith_div_i32(countOneBits(u_input.c), u_input.a.x), arg_0.a.x, 1i, reverseBits(reverseBits(u_input.d)))), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -1i, 1i, 37955i >> (arg_0.b.c.a % 32u), -15324i), reverseBits(func_4(arg_0.d, 475f)))));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 61654u, 0u, abs(firstLeadingBit(countOneBits(var_2.a)))), _wgslsmith_div_vec4_u32(~abs(vec4<u32>(4294967295u, 6595u, u_input.b, 32389u)), ~firstTrailingBit(vec4<u32>(var_1.c.a, var_2.a, 1u, arg_0.b.d.a))) | ~countOneBits(abs(vec4<u32>(5474u, u_input.b, arg_0.b.c.a, var_1.d.a)))), 20u)];
    return _wgslsmith_f_op_f32(f32(-1f) * -1449f);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>) -> f32 {
    global0 = array<Struct_1, 20>();
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_5(vec2<i32>(arg_1.x, arg_1.x), Struct_2(arg_0.yzz, false, Struct_1(93225u), Struct_1(0u)), arg_0.x, true))), -1000f)), -1407f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x))));
    var var_1 = true;
    global0 = array<Struct_1, 20>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -469f))), -227f));
    return _wgslsmith_f_op_f32(549f * _wgslsmith_f_op_f32(191f - -150f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(155f + -1206f), _wgslsmith_f_op_f32(max(-1078f, -1031f))), _wgslsmith_f_op_f32(-2100f - _wgslsmith_div_f32(-322f, 413f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(566f * -797f), _wgslsmith_f_op_f32(f32(-1f) * -1582f), true)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1924f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 125f, var_0.x)) + vec3<f32>(375f, var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-791f * var_0.x), var_0.x, _wgslsmith_f_op_f32(func_1(vec4<f32>(-534f, var_0.x, 968f, var_0.x), u_input.a.yx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-522f, var_0.x, var_0.x) * vec3<f32>(-1000f, 713f, 713f))), false)))));
    var var_1 = Struct_1(~u_input.b);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true))) * _wgslsmith_f_op_f32(max(-1611f, 1f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(751f - var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) * _wgslsmith_f_op_f32(floor(var_0.x))))))), _wgslsmith_f_op_f32(-959f - var_0.x), var_0.x);
    let var_3 = Struct_5(_wgslsmith_mod_vec2_i32(select(-vec2<i32>(0i, 13297i), _wgslsmith_add_vec2_i32(-u_input.a.zx, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, u_input.a.x), u_input.a.zy)), vec2<bool>(true, true)), min(vec2<i32>(-1i) * -u_input.a.yz, abs(u_input.a.zx))), Struct_2(_wgslsmith_f_op_vec3_f32(-var_2.wzx), true, Struct_1(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 1u), vec2<u32>(0u, u_input.b)))), global0[_wgslsmith_index_u32(3492u, 20u)]), _wgslsmith_f_op_f32(round(-449f)), select(true, any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~4294967295u), _wgslsmith_mult_i32(0i, var_3.a.x), ~select(~vec3<u32>(1u, u_input.b, var_1.a), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, var_1.a), vec2<u32>(1u, 1u)), var_3.b.d.a, 65251u), vec3<bool>(select(true, true, true), false, 0i <= var_3.a.x)));
}

