struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(0u, 0u, 56258u, 0u, 1u, 4294967295u, 35949u, 34099u, 4294967295u, 1u);

var<private> global1: Struct_4 = Struct_4(false, Struct_2(Struct_1(vec2<u32>(108222u, 0u), 272f, false, false), vec4<i32>(1i, 0i, -1i, -1i), 0u), vec3<u32>(34065u, 1u, 55850u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    var var_0 = Struct_1(((global1.c.zz ^ _wgslsmith_add_vec2_u32(vec2<u32>(32103u, 2986u), global1.c.zy)) & (u_input.e << ((vec2<u32>(global1.c.x, arg_1.c.x) | global1.c.yz) % vec2<u32>(32u)))) & firstLeadingBit(select(vec2<u32>(1u, 92823u), ~arg_2.a.a, all(vec2<bool>(global1.b.a.d, global1.b.a.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * global1.b.a.b))))), arg_1.a && arg_1.b.a.d, true);
    global1 = Struct_4(true, global1.b, vec3<u32>(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(var_0.a.x, ~3027u)), 10u)], 1u, _wgslsmith_mult_u32(abs(global1.b.a.a.x), firstLeadingBit(4294967295u)) & ~abs(0u)));
    let var_1 = arg_2.a;
    var var_2 = ~(~(~u_input.e.x));
    var_2 = ~(_wgslsmith_dot_vec3_u32(global1.c, countOneBits(_wgslsmith_mod_vec3_u32(arg_1.c, vec3<u32>(14816u, global0[_wgslsmith_index_u32(arg_2.a.a.x, 10u)], arg_2.a.a.x)))) << (31819u % 32u));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.a.b, arg_0.x) - _wgslsmith_f_op_f32(-var_1.b));
}

fn func_2() -> vec4<u32> {
    let var_0 = select(true, !global1.a, global1.b.a.c);
    let var_1 = _wgslsmith_div_vec4_i32(global1.b.b, select(vec4<i32>(41226i, _wgslsmith_sub_i32(-53045i << (1u % 32u), -global1.b.b.x), 1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global1.b.b.x, 2147483647i), vec3<i32>(-2147483647i, -27210i, -1i))), countOneBits(vec4<i32>(global1.b.b.x, u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, global1.b.b.x), _wgslsmith_sub_i32(-1i, 36416i))), var_0));
    global0 = array<u32, 10>();
    global1 = Struct_4(var_0, Struct_2(Struct_1(firstLeadingBit(u_input.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.a.b * global1.b.a.b) + _wgslsmith_f_op_f32(min(1000f, 320f))), global1.b.a.d, (1i == global1.b.b.x) && select(false, global1.b.a.c, false)), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(1i, 0i, var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.x, u_input.b.x, 1i), vec4<i32>(var_1.x, global1.b.b.x, var_1.x, u_input.a.x)), -var_1.x, ~2147483647i), vec4<i32>(~var_1.x, i32(-1i) * -39820i, 16268i, 2147483647i)), min(~global0[_wgslsmith_index_u32(global1.c.x, 10u)], ~4184u)), global1.c);
    let var_2 = Struct_1(~vec2<u32>(global1.b.c, u_input.e.x), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.b.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(197f, global1.b.a.b)) * _wgslsmith_div_f32(-1308f, global1.b.a.b))), 524f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-728f, global1.b.a.b, global1.b.a.b, global1.b.a.b))))), Struct_4(global1.a & false, global1.b, abs(vec3<u32>(global0[_wgslsmith_index_u32(58982u, 10u)], global1.c.x, 59701u))), Struct_2(global1.b.a, _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, u_input.b.x, 0i, u_input.b.x), u_input.a), ~1u), ~(-vec2<i32>(u_input.a.x, 2147483647i)))) >= _wgslsmith_f_op_f32(func_3(vec4<f32>(-1369f, -461f, _wgslsmith_f_op_f32(global1.b.a.b - 1415f), _wgslsmith_div_f32(1066f, global1.b.a.b)), Struct_4(var_0 & false, global1.b, vec3<u32>(14660u, global1.b.c, 0u)), Struct_2(global1.b.a, select(vec4<i32>(var_1.x, -2147483647i, global1.b.b.x, global1.b.b.x), vec4<i32>(u_input.b.x, u_input.a.x, -1i, 2147483647i), var_0), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 10u)], 14850u), global1.b.a.a)), global1.b.b.yy)), true);
    return _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(10479u ^ global1.b.a.a.x, global1.b.a.a.x | u_input.c, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(3507u, 10u)], 7204u), 1u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(35111u, global0[_wgslsmith_index_u32(global1.c.x, 10u)], 0u, 11443u), vec4<u32>(1u, 6425u, u_input.d, 0u))), _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(52053u, 15598u, u_input.d, u_input.d), vec4<u32>(u_input.e.x, var_2.a.x, var_2.a.x, 1u)), min(vec4<u32>(0u, 103453u, 33109u, global1.b.c), vec4<u32>(4294967295u, 62599u, 6960u, 0u)) << ((vec4<u32>(4212u, global1.c.x, 1u, 4294967295u) | vec4<u32>(1u, 28606u, 23120u, 1u)) % vec4<u32>(32u)))), vec4<u32>(firstTrailingBit(~4294967295u), ~1u, 5145u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstLeadingBit(u_input.d), 1u), 4294967295u, global1.c.x)));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    var var_0 = -_wgslsmith_sub_i32(-1i, u_input.b.x);
    var var_1 = max(_wgslsmith_clamp_vec4_i32(~(global1.b.b & vec4<i32>(0i, global1.b.b.x, global1.b.b.x, u_input.b.x)), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a.x, 2147483647i, global1.b.b.x, u_input.b.x), global1.b.b), -(vec4<i32>(0i, 1i, global1.b.b.x, u_input.a.x) & u_input.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, global1.b.b.x, global1.b.b.x, 0i), vec4<i32>(1i, u_input.b.x, ~1i, 6579i << (global0[_wgslsmith_index_u32(17783u, 10u)] % 32u)), select(min(u_input.a, u_input.a), global1.b.b, !vec4<bool>(false, arg_0.x, true, global1.a)))) >> (func_2() % vec4<u32>(32u));
    var_0 = ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, global1.b.b.x), ~(~vec2<i32>(0i, -46640i))));
    let var_2 = Struct_4(true, Struct_2(global1.b.a, vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b.x, global1.b.b.x, var_1.x), _wgslsmith_mult_i32(-1i, global1.b.b.x)), var_1.x, 2147483647i, _wgslsmith_div_i32(-26405i, var_1.x | 2147483647i)), max(_wgslsmith_mult_u32(~1u, _wgslsmith_mod_u32(global1.b.c, global1.c.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(3069u, global0[_wgslsmith_index_u32(0u, 10u)], global1.b.a.a.x), vec3<u32>(global1.b.a.a.x, 0u, global1.c.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 4294967295u, global0[_wgslsmith_index_u32(0u, 10u)]), vec3<u32>(global1.b.c, 13858u, global1.b.c))))), vec3<u32>(~1u, select(4294967295u, 0u, all(vec4<bool>(true, arg_0.x, false, true))), ~1u));
    var var_3 = Struct_1(global1.c.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b.a.b)))), any(vec4<bool>(false, !arg_0.x, !(!var_2.a), !any(arg_0.yx))), any(!select(vec4<bool>(global1.a, true, global1.b.a.d, arg_0.x), select(vec4<bool>(false, var_2.a, global1.b.a.d, false), vec4<bool>(true, false, global1.b.a.d, true), vec4<bool>(global1.b.a.c, false, false, false)), global1.a)));
    return -671f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    let var_1 = reverseBits(u_input.a.x);
    let var_2 = ~(-vec2<i32>(-global1.b.b.x, -2147483647i));
    global1 = Struct_4((-822f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(var_0.a.c, global1.a, global1.b.a.d))))) | any(select(select(vec4<bool>(true, false, false, var_0.a.d), vec4<bool>(var_0.a.d, false, false, global1.a), vec4<bool>(true, true, true, false)), vec4<bool>(var_0.a.c, global1.b.a.d, false, false), vec4<bool>(true, var_0.a.d, var_0.a.c, true))), Struct_2(global1.b.a, global1.b.b, _wgslsmith_add_u32(1u, u_input.e.x)), abs(_wgslsmith_clamp_vec3_u32(~global1.c, global1.c & vec3<u32>(23955u, 40947u, 1u), global1.c) & func_2().www));
    let var_3 = Struct_2(global1.b.a, vec4<i32>(_wgslsmith_mod_i32(abs(~var_0.b.x), -var_2.x), ~_wgslsmith_sub_i32(global1.b.b.x | var_1, var_0.b.x), firstTrailingBit(-var_0.b.x), ~_wgslsmith_mod_i32(-global1.b.b.x, -u_input.a.x)), _wgslsmith_mult_u32(~((global0[_wgslsmith_index_u32(4294967295u, 10u)] ^ global1.b.a.a.x) >> (1u % 32u)), 37821u));
    global1 = Struct_4(false, Struct_2(Struct_1(u_input.e, var_0.a.b, var_0.a.d, true), _wgslsmith_sub_vec4_i32(abs(var_3.b), global1.b.b), abs(var_0.a.a.x)), global1.c);
    var var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(-804f, firstLeadingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a.x, -36895i, var_1, global1.b.b.x), ~vec4<i32>(-11495i, -9741i, var_1, var_1))));
}

