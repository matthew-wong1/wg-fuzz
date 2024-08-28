struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_div_u32(~min(abs(4294967295u), ~(~arg_1.a)), arg_1.d);
    let var_1 = Struct_3(_wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(select(vec4<u32>(76445u, arg_1.d, 1u, 0u), vec4<u32>(17406u, arg_1.a, 32042u, 0u), false), _wgslsmith_mult_vec4_u32(vec4<u32>(40467u, var_0, 0u, 22204u), vec4<u32>(var_0, var_0, u_input.a, 1u))), vec4<u32>(60102u, u_input.a << ((1u >> (arg_1.d % 32u)) % 32u), 1u, 0u)), ~(~abs(select(vec2<i32>(36891i, 1i), vec2<i32>(-36504i, 2147483647i), vec2<bool>(arg_1.b.x, arg_1.b.x)))), vec3<u32>(~u_input.a << (u_input.a % 32u), 0u, abs(arg_1.a)));
    let var_2 = !arg_1.b.x;
    let var_3 = Struct_3(min(~var_1.a & var_1.a, vec4<u32>(max(_wgslsmith_div_u32(var_1.a.x, arg_1.a), u_input.a | arg_1.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, 1u, 0u), vec4<u32>(18546u, var_0, u_input.a, 43135u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(62691u, 124737u), vec2<u32>(arg_1.a, 43655u)), abs(4294967295u)), 0u)), ~var_1.b, ~(~max(firstTrailingBit(vec3<u32>(34960u, arg_1.a, var_0)), var_1.c)));
    return var_3.c.x;
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<i32>) -> vec4<f32> {
    var var_0 = Struct_3(reverseBits(_wgslsmith_add_vec4_u32(~(vec4<u32>(68074u, arg_0, 28448u, 12577u) & vec4<u32>(15685u, 0u, 0u, u_input.a)), select(vec4<u32>(u_input.a, 1u, 35183u, 3049u), vec4<u32>(1u, arg_0, 4294967295u, 4294967295u) >> (vec4<u32>(arg_0, 4002u, 0u, arg_0) % vec4<u32>(32u)), true))), vec2<i32>(-(1i & arg_2.x), arg_2.x) << (vec2<u32>(abs(~arg_0), ~0u) % vec2<u32>(32u)), firstLeadingBit(min(vec3<u32>(u_input.a, ~28192u, arg_0), vec3<u32>(abs(u_input.a), arg_0, u_input.a & 4294967295u))));
    var_0 = Struct_3(var_0.a, var_0.b, select(vec3<u32>(21996u, 1u, _wgslsmith_div_u32(select(29522u, arg_0, false), _wgslsmith_mult_u32(4294967295u, 0u))), var_0.a.zxz, vec3<bool>(true, !(arg_1.x <= -1253f), true)));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2063f, 637f, -877f, 813f) * vec4<f32>(112f, 193f, -195f, 322f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, -507f, arg_1.x, -321f)))), vec4<f32>(-653f, arg_1.x, -773f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(166f, arg_1.x), arg_1.x, true))))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec3<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.a, vec2<f32>(-879f, 269f), arg_2)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-788f, -701f, -392f, 481f) + vec4<f32>(1732f, -980f, -910f, 1000f))), vec4<f32>(-646f, -1092f, _wgslsmith_f_op_f32(min(210f, -1324f)), _wgslsmith_f_op_f32(select(451f, -1176f, false)))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2069f * -1563f), -176f, _wgslsmith_f_op_f32(select(531f, -1559f, false)), 1f), _wgslsmith_f_op_vec4_f32(func_3(countOneBits(arg_0.a.x), vec2<f32>(264f, -711f), arg_2 << (vec3<u32>(arg_0.a.x, u_input.a, arg_0.c.x) % vec3<u32>(32u))))))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -592f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(291f))) - -983f), var_0.x) + var_0);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = Struct_3(firstTrailingBit(reverseBits(vec4<u32>(3113u, _wgslsmith_div_u32(84641u, arg_2.x), ~u_input.a, ~arg_2.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.c & 1i, -1i), vec2<i32>(firstLeadingBit(14028i), 1i)), min(~arg_2.wxx, ~(~arg_2.wxx)));
    var var_1 = arg_1.b;
    let var_2 = Struct_3(max(_wgslsmith_clamp_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.x, u_input.a, arg_2.x, 1u), var_0.a), var_0.a, true), arg_2, arg_2), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 40556u, 21591u), ~arg_2)), vec2<i32>(~var_0.b.x ^ -reverseBits(0i), firstTrailingBit(firstLeadingBit(var_0.b.x))), arg_2.wwx);
    var_1 = arg_1.b;
    let var_3 = _wgslsmith_add_u32(abs(func_1(vec3<f32>(_wgslsmith_div_f32(238f, -177f), arg_0.x, _wgslsmith_f_op_f32(floor(776f))), Struct_1(1u, vec3<bool>(arg_1.b, arg_1.b, arg_1.b), -742f, ~arg_2.x, arg_0.x), arg_1.a)), _wgslsmith_add_u32(arg_2.x, _wgslsmith_mult_u32(~76765u, 0u)));
    return vec3<bool>(arg_1.b, any(select(!vec4<bool>(arg_1.b, true, false, false), select(vec4<bool>(arg_1.b, false, false, true), vec4<bool>(arg_1.b, false, arg_1.b, false), arg_1.b), !vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b))) | true, any(!(!select(vec3<bool>(arg_1.b, false, arg_1.b), vec3<bool>(false, true, arg_1.b), false))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = Struct_1(1u, !arg_3.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-113f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(790f))))), !arg_1.b.x)), ~(~abs(arg_2.x)), _wgslsmith_f_op_f32(arg_3.c + _wgslsmith_f_op_f32(-1f)));
    let var_1 = arg_1.e;
    var_0 = Struct_1(0u, vec3<bool>(_wgslsmith_f_op_f32(max(arg_3.c, arg_3.e)) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.e * arg_1.e), arg_3.c)), arg_3.b.x, true), -853f, 4294967295u, arg_3.e);
    var var_2 = -2147483647i;
    var var_3 = ~(max(vec3<i32>(i32(-1i) * -13166i, firstTrailingBit(0i), 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 2147483647i, 1i), -vec3<i32>(-1775i, 20130i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 17366i, 30440i), vec3<i32>(2147483647i, 0i, 73338i)))) >> (vec3<u32>(8855u, 1u, 12093u) % vec3<u32>(32u)));
    return Struct_3(select(countOneBits(vec4<u32>(63747u, _wgslsmith_div_u32(4294967295u, 87319u), _wgslsmith_sub_u32(32368u, arg_1.a), ~42653u)), select(reverseBits(firstTrailingBit(vec4<u32>(7049u, 9178u, var_0.d, 0u))), firstLeadingBit(~vec4<u32>(0u, 0u, var_0.a, 23358u)), 1956u >= arg_1.a), !(!any(arg_1.b))), _wgslsmith_sub_vec2_i32(select(var_3.yz, vec2<i32>(abs(var_3.x), var_3.x), vec2<bool>(true, true)), ~var_3.xx), vec3<u32>(~(~(~4294967295u)), abs(arg_1.a), _wgslsmith_div_u32(arg_0, _wgslsmith_mod_u32(~4294967295u, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, (5107u << (u_input.a % 32u)) & u_input.a), abs(vec4<u32>(32724u, 67375u, u_input.a << (u_input.a % 32u), u_input.a))), ~firstLeadingBit(-countOneBits(vec2<i32>(-2147483647i, 1i))), ~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 9964u, 0u) | vec3<u32>(1u, u_input.a, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(25355u, u_input.a, u_input.a), vec3<u32>(21770u, u_input.a, 31410u), vec3<u32>(u_input.a, 1u, u_input.a))), vec3<u32>(~57878u, u_input.a, abs(u_input.a))));
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2209f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -967f))), Struct_1(0u, select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, true), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(185f, 323f)))), _wgslsmith_sub_u32(u_input.a, ~u_input.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -568f), 2016f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(825f, 1208f, 1245f, 142f)), vec4<f32>(-504f, -1508f, -312f, 1332f), vec4<bool>(true, true, false, true)))))) | ~var_0.c.x;
    let var_2 = -min(~(-1i) & (var_0.b.x & -2147483647i), 1i) ^ var_0.b.x;
    var var_3 = _wgslsmith_clamp_u32(~u_input.a, 4294967295u, var_1);
    var_3 = ~reverseBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u << (u_input.a % 32u), 87677u), ~_wgslsmith_sub_u32(11588u, var_1)));
    let var_4 = func_5((~0u | select(4294967295u, _wgslsmith_clamp_u32(u_input.a, var_1, u_input.a), any(vec4<bool>(true, false, true, false)))) ^ 4294967295u, Struct_1(_wgslsmith_div_u32(min(20375u, 0u), 1u), func_4(vec2<f32>(2837f, _wgslsmith_f_op_f32(f32(-1f) * -289f)), Struct_2(_wgslsmith_f_op_vec4_f32(func_2(Struct_3(var_0.a, var_0.b, var_0.c), vec2<i32>(var_2, 2147483647i), vec3<i32>(var_0.b.x, var_0.b.x, 0i))), true, var_0.b.x >> (u_input.a % 32u)), firstTrailingBit(~vec4<u32>(1u, 4294967295u, var_1, var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(335f)) - -670f), reverseBits(_wgslsmith_add_u32(9842u, _wgslsmith_mod_u32(var_1, 1u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-720f, _wgslsmith_f_op_f32(411f - -2111f))))), ~(~select(var_0.c, vec3<u32>(2447u, u_input.a, u_input.a), vec3<bool>(true, false, true))) >> (vec3<u32>(var_1, u_input.a, u_input.a) % vec3<u32>(32u)), Struct_1(u_input.a, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -1000f), vec2<f32>(1073f, 2447f)))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 392f, -805f, 397f)), all(vec3<bool>(false, false, false)), var_0.b.x), var_0.a), 1000f, 1u, _wgslsmith_f_op_f32(f32(-1f) * -461f)));
    var var_5 = Struct_1(21253u, func_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(round(-1525f)), _wgslsmith_f_op_f32(312f + 1225f)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1445f, 506f, 1000f, -1414f)))), true, var_4.b.x), ~abs(select(vec4<u32>(var_1, 67708u, 4294967295u, 4294967295u), vec4<u32>(1u, 30421u, var_4.c.x, 0u), false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-825f + -571f) - 581f))), abs(firstTrailingBit(~var_4.a.x)), -183f);
    var var_6 = _wgslsmith_dot_vec4_i32(min(-vec4<i32>(65837i, firstTrailingBit(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, 2147483647i, var_0.b.x, var_4.b.x), vec4<i32>(-2147483647i, var_0.b.x, 1i, -41546i)), reverseBits(var_0.b.x)), _wgslsmith_mod_vec4_i32(max(-vec4<i32>(var_2, var_2, -3780i, var_2), countOneBits(vec4<i32>(-2147483647i, -16053i, 2147483647i, -2147483647i))), vec4<i32>(-6285i, firstLeadingBit(-1i), -60399i << (u_input.a % 32u), func_5(var_0.c.x, Struct_1(var_0.a.x, vec3<bool>(var_5.b.x, var_5.b.x, true), 126f, var_1, var_5.e), vec3<u32>(1u, 10812u, var_5.a), Struct_1(4294967295u, var_5.b, var_5.e, 58162u, -799f)).b.x))), -reverseBits(vec4<i32>(27399i << (u_input.a % 32u), 39778i >> (u_input.a % 32u), abs(var_2), _wgslsmith_div_i32(var_0.b.x, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(var_4.a), reverseBits(select(vec4<u32>(~var_5.d, ~1350u, _wgslsmith_sub_u32(var_1, var_4.c.x), _wgslsmith_add_u32(var_5.d, 6051u)), ~(~var_4.a), vec4<bool>(true, select(true, var_5.b.x, false), any(vec4<bool>(false, var_5.b.x, false, true)), all(vec3<bool>(true, true, true))))), var_4.b.x, 37111u, select(min(~vec3<i32>(29160i, 1i, 2147483647i), firstTrailingBit(vec3<i32>(-7175i, var_2, -36053i))), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.x, -1i, 33889i), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_4.b.x, var_0.b.x), vec3<i32>(0i, 18865i, 0i))), var_5.b) & -_wgslsmith_sub_vec3_i32(-vec3<i32>(var_4.b.x, var_4.b.x, -2147483647i), -vec3<i32>(var_0.b.x, 22796i, -1i)));
}

