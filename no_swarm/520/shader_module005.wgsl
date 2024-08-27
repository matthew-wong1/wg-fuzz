struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_2 = Struct_2(true, vec4<u32>(22929u, 4294967295u, 1u, 1u), vec3<i32>(13764i, 0i, i32(-2147483648)), 44387u, Struct_1(39947u, vec2<i32>(65413i, 2147483647i), false, 0u, vec2<bool>(true, true)));

var<private> global2: vec4<i32> = vec4<i32>(0i, 0i, 0i, -48431i);

var<private> global3: i32 = 50i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: u32, arg_1: f32) -> f32 {
    global1 = Struct_2(1u < _wgslsmith_add_u32(18794u, _wgslsmith_add_u32(1u, u_input.b.x)), vec4<u32>(_wgslsmith_mod_u32(arg_0, 4294967295u), global1.b.x, abs(_wgslsmith_sub_u32(arg_0 << (global1.b.x % 32u), 1u)), 21520u >> (global0.x % 32u)), max(global2.xwx, vec3<i32>(_wgslsmith_div_i32(-47699i, 52266i), ~1i, -18540i) ^ vec3<i32>(select(global2.x, 2308i, false), 1i, max(global2.x, 1i))), ~(~_wgslsmith_mult_u32(38459u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 3503u, 106248u), vec3<u32>(global0.x, arg_0, u_input.c.x)))), global1.e);
    let var_0 = ~global1.b.yy;
    let var_1 = false;
    var var_2 = vec2<bool>(var_1, ((any(vec4<bool>(var_1, false, false, var_1)) & all(vec4<bool>(var_1, var_1, global1.a, false))) | true) == global1.a);
    let var_3 = arg_1;
    return arg_1;
}

fn func_3() -> f32 {
    global0 = ~firstLeadingBit(global1.b.zz);
    var var_0 = countOneBits(vec3<u32>(~59863u, countOneBits(_wgslsmith_add_u32(~u_input.c.x, 64884u)), max(~0u, ~firstLeadingBit(8293u))));
    global2 = vec4<i32>(_wgslsmith_clamp_i32(i32(-1i) * -global2.x, firstTrailingBit(11598i), _wgslsmith_clamp_i32(global2.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 0i, global1.c.x, global1.c.x), _wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, global2.x, global2.x, global1.e.b.x), vec4<i32>(global1.c.x, 37849i, -2147483647i, -23763i))), _wgslsmith_clamp_i32(7916i, global1.e.b.x & global1.e.b.x, firstLeadingBit(global1.c.x)))), -_wgslsmith_add_i32(1949i, ~_wgslsmith_mod_i32(-29699i, global2.x)), max(_wgslsmith_clamp_i32(global2.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global1.c.x, 2147483647i), global2.xxz), _wgslsmith_dot_vec2_i32(global2.zx, vec2<i32>(-1i, global2.x)) & global1.e.b.x), i32(-1i) * -(27668i << (global0.x % 32u))), ~_wgslsmith_mod_i32(-48153i, -42352i));
    let var_1 = select(select(vec3<bool>(max(global2.x, global2.x) < min(global1.e.b.x, global2.x), select(global1.e.c, global1.a, any(vec4<bool>(true, global1.e.e.x, true, global1.e.e.x))), false), !vec3<bool>(all(vec4<bool>(global1.a, global1.e.e.x, global1.e.e.x, global1.a)), global1.a, global1.a), vec3<bool>(true, true, any(!vec3<bool>(global1.a, global1.a, global1.a)))), vec3<bool>(!global1.a & true, false, global1.e.c), !(!(!vec3<bool>(global1.e.c, global1.a, global1.a))));
    var var_2 = global1.e.e.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_0.x, -404f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>) -> i32 {
    var var_0 = select(~(~(0u << (global1.d % 32u)) ^ select(max(4294967295u, 4294967295u), reverseBits(u_input.a), true)), abs(~_wgslsmith_mod_u32(~45535u, firstLeadingBit(u_input.d.x))), _wgslsmith_f_op_f32(-arg_0.x) == arg_1.x);
    global1 = Struct_2(false, global1.b, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(abs(-1i), reverseBits(-1i), abs(global2.x)), min(~global1.c, reverseBits(global1.c)), vec3<i32>(0i, _wgslsmith_mod_i32(-2147483647i, global2.x), global1.e.b.x)), ~31549u, global1.e);
    var var_1 = arg_1;
    var var_2 = Struct_2(!global1.e.e.x, ~(~vec4<u32>(firstLeadingBit(11812u), ~u_input.b.x, 8358u, global1.e.a)), vec3<i32>(global2.x, 1i << (_wgslsmith_clamp_u32(0u, min(30790u, 1u), global1.b.x) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(~global2.x, global2.x, global1.e.b.x), _wgslsmith_div_vec3_i32(min(vec3<i32>(18537i, -6098i, global1.c.x), vec3<i32>(0i, 22014i, -2147483647i)), vec3<i32>(-1120i, global1.c.x, -1i)))), u_input.c.x, global1.e);
    var var_3 = var_2.e;
    return global1.c.x;
}

fn func_1() -> f32 {
    let var_0 = global1.e;
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(0u, 1160f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(ceil(-655f)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1558f, -137f, -1499f)))))), vec4<f32>(604f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1248f, 1000f)))), 499f, _wgslsmith_f_op_f32(f32(-1f) * -702f)));
    let var_2 = Struct_2(false, ~(~u_input.c), global2.yxz | (_wgslsmith_add_vec3_i32(vec3<i32>(-22764i, global1.c.x, var_0.b.x), vec3<i32>(49547i, var_1, 1i)) >> (vec3<u32>(~7857u, reverseBits(global0.x), _wgslsmith_mult_u32(76823u, 9976u)) % vec3<u32>(32u))), 4294967295u, Struct_1(u_input.a, -_wgslsmith_add_vec2_i32(select(vec2<i32>(global1.c.x, -1i), vec2<i32>(var_0.b.x, var_0.b.x), var_0.e.x), global2.zw), !all(vec2<bool>(false, global1.e.e.x)), 1u, var_0.e));
    let var_3 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a, global0.x, var_2.b.x), ~firstLeadingBit(~vec3<u32>(36698u, 77578u, var_0.d)));
    let var_4 = Struct_2(firstLeadingBit(~_wgslsmith_clamp_u32(36241u, var_3.x, 0u)) != 0u, firstLeadingBit(_wgslsmith_mod_vec4_u32(u_input.c, ~vec4<u32>(43004u, var_2.d, 1u, global0.x))) & vec4<u32>(~(var_3.x << (4294967295u % 32u)), global1.d, ~(var_0.d & 4294967295u), (31871u & u_input.a) >> ((20905u | global1.d) % 32u)), vec3<i32>(0i, _wgslsmith_sub_i32(var_1, -77042i), var_0.b.x), _wgslsmith_div_u32(max(u_input.d.x, 12559u), firstLeadingBit(_wgslsmith_sub_u32(var_0.a, ~var_3.x))), var_2.e);
    return 628f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c.xy >> (abs(vec2<u32>(countOneBits(4294967295u), 0u)) % vec2<u32>(32u));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-913f + 1781f) - _wgslsmith_f_op_f32(sign(-554f)))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1028f + 602f))), _wgslsmith_div_f32(_wgslsmith_div_f32(645f, -325f), _wgslsmith_f_op_f32(func_1())))), 833f)));
    global1 = Struct_2((global2.x <= (_wgslsmith_dot_vec4_i32(vec4<i32>(-17026i, 29988i, -35171i, 0i), vec4<i32>(-1i, global1.c.x, 1171i, 0i)) ^ 486i)) | (~u_input.a == 1u), abs(vec4<u32>(global0.x, global0.x, reverseBits(23262u), _wgslsmith_mod_u32(reverseBits(0u), ~u_input.d.x))), reverseBits(~abs(vec3<i32>(-1i, global2.x, global2.x)) ^ vec3<i32>(global2.x, -19699i, global2.x | 0i)), ~(~(reverseBits(1358u) ^ _wgslsmith_mult_u32(global0.x, u_input.b.x))), Struct_1(9036u, ~(-vec2<i32>(global1.e.b.x, -1i)), global1.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(min(u_input.c, vec4<u32>(u_input.b.x, u_input.c.x, 0u, global0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(14342u, 1u, global0.x, global0.x), vec4<u32>(4294967295u, 0u, 1u, 4294967295u))), _wgslsmith_dot_vec4_u32(u_input.c & vec4<u32>(4294967295u, u_input.c.x, global0.x, u_input.c.x), global1.b | vec4<u32>(global0.x, 37516u, 106421u, 100646u))), !vec2<bool>(any(global1.e.e), global1.b.x < 6899u)));
    var var_1 = Struct_2(!(!global1.e.c), global1.b, vec3<i32>(-reverseBits(global1.c.x), -max(global2.x & 2147483647i, ~(-12701i)), func_4(vec3<f32>(_wgslsmith_f_op_f32(func_3()), var_0, _wgslsmith_f_op_f32(2379f + var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-935f, var_0, var_0, -515f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, var_0, var_0, var_0), vec4<f32>(727f, var_0, var_0, var_0)))))), ~_wgslsmith_add_u32(global1.b.x, select(~62774u, 1u, true)), Struct_1(global0.x, ~vec2<i32>(_wgslsmith_clamp_i32(2147483647i, 2147483647i, global1.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global2.x, global2.x, global2.x), vec4<i32>(-2147483647i, -7381i, global1.e.b.x, 2147483647i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1986f, -1000f)))) >= _wgslsmith_div_f32(-1268f, -234f), ~1u, global1.e.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-(global1.c.x & global1.e.b.x), global1.e.b.x), 36714u, _wgslsmith_div_vec4_u32(vec4<u32>(select(global0.x, select(u_input.d.x, u_input.c.x, global1.e.c), global1.a & global1.a), ~(~4294967295u), firstLeadingBit(0u), 1u), vec4<u32>(var_1.d, 45775u, _wgslsmith_mod_u32(~66133u, 4354u), global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-342f)) * _wgslsmith_f_op_f32(-274f - _wgslsmith_f_op_f32(ceil(var_0)))));
}

