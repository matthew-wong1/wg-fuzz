struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<u32>, arg_3: vec2<u32>) -> i32 {
    var var_0 = vec4<u32>(arg_3.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(countOneBits(arg_2.x), abs(~19353u)), _wgslsmith_div_u32(0u, 1u)), 4294967295u, ~(~reverseBits(arg_3.x)));
    var var_1 = all(select(vec3<bool>(global1.x, any(select(vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(global1.x, true, false, false), vec4<bool>(global1.x, global1.x, global1.x, false))), _wgslsmith_f_op_f32(arg_1 + -1263f) > -1049f), vec3<bool>(true || global1.x, true, !(global1.x & false)), vec3<bool>(1u == ~var_0.x, true, abs(u_input.c.x) < ~(-33538i))));
    let var_2 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(~66649u, ~4294967295u, ~var_0.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, arg_2.x, 88609u), vec3<u32>(57352u, 0u, arg_3.x))), firstTrailingBit(select(vec4<u32>(51534u, var_0.x, arg_3.x, 1u), vec4<u32>(0u, 1u, u_input.a, 1u), vec4<bool>(global1.x, true, global1.x, global1.x)) << (max(vec4<u32>(u_input.a, 5710u, u_input.a, var_0.x), vec4<u32>(0u, u_input.a, arg_2.x, u_input.a)) % vec4<u32>(32u))));
    global0 = ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i >> (1u % 32u), _wgslsmith_mult_i32(-2147483647i, u_input.b.x)) & 5427i, select(u_input.b.x, countOneBits(21i) << (arg_3.x % 32u), false));
    var var_3 = Struct_4(-790f, Struct_2(arg_1), firstLeadingBit(1i));
    return var_3.c;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_3 {
    global0 = _wgslsmith_clamp_i32(func_3(~(i32(-1i) * -4218i), _wgslsmith_f_op_f32(-430f * 1000f), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(167u, 1u))), ~vec2<u32>(13006u, 45288u)), vec2<u32>(4294967295u, u_input.a)), ~u_input.c.x, u_input.b.x);
    global0 = 89404i;
    var var_0 = Struct_5(~u_input.b.x >> (22077u % 32u), reverseBits(_wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_0, -6621i, u_input.c.x), vec3<i32>(-32575i, u_input.c.x, u_input.c.x), global1.x) ^ -vec3<i32>(arg_0, 0i, arg_0), min(vec3<i32>(-8117i, u_input.b.x, -41302i), -vec3<i32>(arg_0, u_input.c.x, arg_0)))), Struct_3(arg_1, abs(~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), select(vec4<u32>(86110u, 0u, u_input.a, 0u), vec4<u32>(15553u, u_input.a, u_input.a, u_input.a), vec4<bool>(global1.x, true, global1.x, false)), ~vec4<u32>(u_input.a, u_input.a, 4294967295u, 75070u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, 431f) + vec2<f32>(arg_1.a, 1012f))))));
    var var_1 = 4294967295u;
    let var_2 = 601f;
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -508f)), var_0.c.b, vec4<u32>(1u, 0u, _wgslsmith_add_u32(48419u, _wgslsmith_mult_u32(min(var_0.c.c.x, var_0.c.b.x), 0u)), ~1u), _wgslsmith_f_op_vec2_f32(-var_0.c.d));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3) -> f32 {
    var var_0 = -2138f;
    var var_1 = arg_1;
    global0 = _wgslsmith_sub_i32(~func_3(arg_0.x, _wgslsmith_f_op_f32(ceil(-220f)), ~vec2<u32>(var_1.c.x, 44311u), arg_1.c.yw), 25717i) >> (~(~countOneBits(_wgslsmith_mult_u32(arg_1.b.x, 4294967295u))) % 32u);
    let var_2 = Struct_1(arg_1.b.x, any(select(!(!vec4<bool>(false, global1.x, global1.x, global1.x)), vec4<bool>(arg_0.x < arg_0.x, global1.x, false & global1.x, global1.x), vec4<bool>(global1.x, true, false, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, var_1.d.x, arg_1.a.a)), vec3<f32>(arg_1.a.a, 1009f, 1182f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_1.d.x, arg_1.d.x) * vec3<f32>(797f, var_1.a.a, 1143f)))))));
    global0 = _wgslsmith_div_i32(arg_0.x << (~0u % 32u), u_input.c.x);
    return -454f;
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(func_4(u_input.b, func_2(u_input.b.x, Struct_2(1276f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-199f - -284f)))))));
    var var_1 = ~_wgslsmith_dot_vec2_u32(select(func_2(-2147483647i, func_2(u_input.c.x, Struct_2(945f)).a).b.xx, vec2<u32>(countOneBits(u_input.a), u_input.a), vec2<bool>(global1.x & false, any(vec2<bool>(true, true)))), vec2<u32>(_wgslsmith_add_u32(u_input.a, 70990u), 1u));
    var_1 = 33039u;
    var_1 = 0u;
    global0 = select(abs(func_3(0i, _wgslsmith_f_op_f32(-var_0.x), vec2<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, 6997u), vec4<u32>(35404u, 26508u, u_input.a, u_input.a))), select(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), global1.x))), -_wgslsmith_sub_i32(countOneBits(2147483647i), 1i), global1.x);
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1031f) + 1222f), func_2(u_input.b.x, func_2(-11483i, func_2(~(-11464i), func_2(u_input.b.x, Struct_2(var_0.x)).a).a).a).a, u_input.b.x);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    let var_0 = arg_1.b;
    var var_1 = select(_wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(62580u, 6932u, u_input.a)) & ~vec3<u32>(arg_3, arg_1.a, 4294967295u), vec3<u32>(1u, ~6747u, 1u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, 32205u), vec2<u32>(41558u, arg_3)) << (u_input.a % 32u), 4294967295u, abs(_wgslsmith_sub_u32(u_input.a, 9230u))), select(!vec3<bool>(arg_1.b, true, true), vec3<bool>(true, !arg_1.b, !arg_1.b), any(select(vec3<bool>(false, global1.x, arg_1.b), vec3<bool>(arg_1.b, false, true), vec3<bool>(true, var_0, false))))) ^ vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(reverseBits(arg_3), countOneBits(u_input.a)), arg_1.a), _wgslsmith_clamp_u32(arg_3, firstTrailingBit(_wgslsmith_div_u32(arg_3, 4294967295u)), ~4294967295u), 4294967295u);
    var var_2 = func_2(max(arg_0.c, 1i), arg_0.b).a;
    global1 = vec2<bool>(!arg_1.b, !(!((global1.x && var_0) || (var_1.x >= arg_3))));
    let var_3 = -vec4<i32>(1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(81690i, arg_0.c, 1i) | vec3<i32>(-1i, u_input.c.x, u_input.c.x)), max(select(vec3<i32>(-1i, -1i, -2147483647i), vec3<i32>(u_input.b.x, -37516i, u_input.c.x), vec3<bool>(false, true, true)), vec3<i32>(u_input.b.x, arg_0.c, u_input.b.x))), u_input.c.x, _wgslsmith_mult_i32(-func_3(u_input.b.x, -1109f, var_1.yz, vec2<u32>(u_input.a, arg_1.a)), ~u_input.c.x));
    return Struct_2(-466f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var var_1 = Struct_3(func_5(func_1(), Struct_1(~_wgslsmith_mult_u32(8564u, u_input.a), all(vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1629f, 431f, 342f))), Struct_2(_wgslsmith_f_op_f32(2041f + _wgslsmith_f_op_f32(f32(-1f) * -1269f))), u_input.a | u_input.a), select(select(~vec4<u32>(71069u, u_input.a, 4294967295u, 4294967295u), abs(vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a)), vec4<bool>(true, global1.x, false, global1.x)) ^ (vec4<u32>(0u, u_input.a, u_input.a, 34439u) << ((vec4<u32>(0u, u_input.a, u_input.a, 0u) << (vec4<u32>(0u, 56405u, 0u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))), min(vec4<u32>(u_input.a, ~4294967295u, 0u >> (u_input.a % 32u), 0u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))), !global1.x), countOneBits(~(~vec4<u32>(46475u, u_input.a, 75394u, u_input.a) & firstTrailingBit(vec4<u32>(97999u, u_input.a, u_input.a, u_input.a)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(~(~u_input.a), 1u, 1u), vec3<u32>(~firstTrailingBit(_wgslsmith_div_u32(4294967295u, 4294967295u)), _wgslsmith_div_u32(2870u, 4294967295u), 1u));
    global0 = select(-select(18858i, u_input.c.x, 133f <= var_1.d.x) >> (func_2(_wgslsmith_clamp_i32(u_input.b.x, func_3(2147483647i, 2017f, vec2<u32>(var_2.x, var_1.b.x), var_2.zx), ~(-2147483647i)), Struct_2(_wgslsmith_f_op_f32(var_1.d.x - var_1.d.x))).c.x % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 1i, 1i), abs(-vec3<i32>(-22602i, u_input.b.x, u_input.b.x))), false);
    var_0 = 4294967295u;
    global0 = -53630i | u_input.c.x;
    var var_3 = reverseBits(~(~(~vec3<u32>(89927u, var_2.x, 39543u)) & var_2));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.x, 1u), vec3<u32>(var_1.b.x, var_3.x, var_2.x))) | _wgslsmith_sub_u32(_wgslsmith_mult_u32(4238u, u_input.a), ~var_1.b.x)));
}

