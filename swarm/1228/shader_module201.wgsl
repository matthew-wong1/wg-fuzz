struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10>;

var<private> global1: bool;

var<private> global2: vec2<i32> = vec2<i32>(0i, -1i);

var<private> global3: i32 = 1i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    global0 = array<vec3<bool>, 10>();
    global1 = all(vec3<bool>(!(_wgslsmith_dot_vec4_i32(vec4<i32>(20819i, u_input.a, u_input.b, global2.x), vec4<i32>(global2.x, 31685i, global2.x, 1i)) == _wgslsmith_add_i32(30208i, -10708i)), true & all(!vec4<bool>(arg_0, true, arg_0, true)), select(arg_0, false, _wgslsmith_f_op_f32(trunc(-787f)) > 319f)));
    global2 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(reverseBits(~vec2<i32>(0i, 1i))), vec2<i32>(global2.x, _wgslsmith_mod_i32(max(3233i, u_input.a), -u_input.b)), ~_wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.a, global2.x), vec2<i32>(u_input.a, global2.x), true), ~vec2<i32>(-1i, global2.x))), countOneBits(vec2<i32>(_wgslsmith_mult_i32(0i, u_input.b), i32(-1i) * -46083i) & vec2<i32>(global2.x, i32(-1i) * -46791i)));
    global1 = true;
    var var_0 = 1i;
    return vec4<i32>(-(~(~(i32(-1i) * -1i))), 0i, -1i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(select(-u_input.a, 23582i, !arg_0), 19003i), reverseBits(-1i)));
}

fn func_2() -> vec2<u32> {
    global0 = array<vec3<bool>, 10>();
    let var_0 = Struct_1(firstLeadingBit(~1u), ~(~vec4<u32>(~4294967295u, 1455u, 1u, ~4294967295u)), -countOneBits(-(~global2.x)));
    let var_1 = _wgslsmith_mod_vec4_i32(-reverseBits(func_3(false) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, var_0.c, -2257i, u_input.b), vec4<i32>(-22985i, var_0.c, 2147483647i, -32014i))), _wgslsmith_add_vec4_i32(max(-(~vec4<i32>(var_0.c, var_0.c, 3807i, global2.x)), ~max(vec4<i32>(-1i, global2.x, var_0.c, global2.x), vec4<i32>(global2.x, 28292i, var_0.c, -2147483647i))), vec4<i32>(-67651i, 25245i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, 31291i), firstTrailingBit(vec3<i32>(-1i, var_0.c, -59881i))), _wgslsmith_dot_vec2_i32(func_3(true).xz, vec2<i32>(2147483647i, u_input.b)))));
    let var_2 = Struct_3(Struct_2(~(~var_0.b.x), var_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1553f, -326f), -194f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-827f, -757f) + vec2<f32>(-153f, 784f)))), var_0.a), true);
    global1 = var_2.b;
    return abs(~countOneBits(~var_0.b.yy) ^ vec2<u32>(61633u | var_0.b.x, ~firstLeadingBit(1u)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_5 {
    let var_0 = func_2();
    let var_1 = select(!(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), vec2<bool>(any(vec3<bool>(true, false, false)) & true, false), false);
    global3 = firstLeadingBit(i32(-1i) * -40489i);
    global2 = select(arg_0, vec2<i32>(~(_wgslsmith_dot_vec2_i32(arg_0, arg_0) | abs(1i)), countOneBits(max(-arg_0.x, -u_input.a))), var_1);
    global2 = min(reverseBits(countOneBits(~arg_0)), arg_0);
    return Struct_5(reverseBits(vec4<i32>(i32(-1i) * -1i, min(-52529i, 1i), _wgslsmith_clamp_i32(arg_0.x, u_input.a, 27228i), _wgslsmith_div_i32(arg_0.x, -2147483647i))) << (firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 43226u) & vec4<u32>(var_0.x, var_0.x, 45356u, 29515u), vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u) ^ vec4<u32>(4294967295u, var_0.x, 51609u, 1u))) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: Struct_4, arg_3: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2387f), _wgslsmith_f_op_f32(-241f - arg_2.e.a.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e.a.c.x + -338f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.e.a.c.x) * 924f))));
    var var_1 = ~1u;
    global1 = any(select(select(!select(vec2<bool>(arg_2.d, arg_2.d), arg_2.b, arg_2.b), select(arg_2.b, vec2<bool>(true, true), false), arg_2.b), select(select(arg_2.b, vec2<bool>(false, false), true), !(!vec2<bool>(true, arg_2.d)), true), arg_2.d));
    var var_2 = reverseBits(_wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(-1i, ~arg_2.a)) << (~(~6340u) % 32u));
    var var_3 = arg_2.e;
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(4294967295u, 1u, 4294967295u >> (countOneBits(~17344u) % 32u), 0u);
    var var_1 = Struct_4(~(func_4(func_1(vec2<i32>(2147483647i, 0i)), 65929u, Struct_4(u_input.a, vec2<bool>(false, false), true, true, Struct_3(Struct_2(1u, Struct_1(48592u, vec4<u32>(131836u, var_0.x, var_0.x, 4294967295u), global2.x), vec2<f32>(451f, 3697f), 4294967295u), true)), _wgslsmith_mult_vec4_u32(var_0, vec4<u32>(1u, 1u, var_0.x, var_0.x))) ^ -(~24449i)), vec2<bool>(true, true), any(select(vec4<bool>(true, global2.x <= 1i, true, true), vec4<bool>(false, global2.x <= global2.x, true, true), true)), true, Struct_3(Struct_2(var_0.x, Struct_1(~67387u, _wgslsmith_mod_vec4_u32(var_0, vec4<u32>(var_0.x, 0u, var_0.x, 41428u)), -35919i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1018f, 113f)), vec2<f32>(2145f, -647f)), ~var_0.x ^ ~var_0.x), any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_2 = vec3<f32>(var_1.e.a.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -584f))), 998f);
    let var_3 = !vec4<bool>(var_1.d, var_1.d, false, false);
    let var_4 = var_1.c;
    var var_5 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.e.a.d, ~0u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_1.e.a.d, var_0.x, var_0.x, var_0.x)), ~var_0)), select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 20033u, 34534u), ~var_1.e.a.b.b.xyz, ~var_0.ywx), var_0.zwz, !select(true, var_1.c, true)), select(abs(~vec3<u32>(1u, 30508u, var_1.e.a.a)), vec3<u32>(0u, var_0.x, 23611u), all(!var_3)));
    var var_6 = ~max(select(vec3<i32>(u_input.a, u_input.a, 1i), -vec3<i32>(26711i, 14975i, var_1.e.a.b.c) << (_wgslsmith_mult_vec3_u32(vec3<u32>(20501u, var_1.e.a.d, var_5.x), vec3<u32>(var_5.x, var_0.x, var_0.x)) % vec3<u32>(32u)), var_1.c), -vec3<i32>(firstLeadingBit(global2.x), abs(-2147483647i), firstLeadingBit(global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(713f, 819f, -1157f, 308f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_2.x, var_1.e.a.c.x)), -140f, _wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(var_1.e.a.c.x * var_1.e.a.c.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.e.a.c.x, 713f, var_1.e.a.c.x, 930f), vec4<f32>(var_2.x, -577f, var_1.e.a.c.x, var_2.x)))))), _wgslsmith_div_vec3_f32(var_2, var_2), ~(-var_6.yx), vec4<f32>(_wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), var_1.e.a.c.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(var_1.e.a.c.x - -714f)))), var_1.e.a.c.x, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.a.c.x) + _wgslsmith_f_op_f32(abs(var_2.x))), var_1.e.a.c.x, var_2.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.a.c.x, var_2.x, -273f) + vec3<f32>(-123f, var_2.x, var_2.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1395f, var_1.e.a.c.x, 113f) - _wgslsmith_div_vec3_f32(vec3<f32>(-1953f, var_1.e.a.c.x, -1616f), vec3<f32>(1622f, var_1.e.a.c.x, var_2.x))))));
}

