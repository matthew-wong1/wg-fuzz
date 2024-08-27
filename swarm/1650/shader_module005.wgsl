struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global0 = array<vec3<f32>, 32>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -1648f) + _wgslsmith_div_f32(arg_0.x, 1637f)))))) * -872f);
    var var_1 = abs(-vec3<i32>(1i, 1i, 1i));
    var var_2 = Struct_3(false);
    var var_3 = var_2.a;
    return ~u_input.a;
}

fn func_2() -> Struct_3 {
    let var_0 = vec3<u32>(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(154f, 736f, -957f, -562f) * vec4<f32>(-1160f, 1103f, -1000f, -822f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(441f, -1000f, 665f, 1000f) * vec4<f32>(-613f, 799f, 373f, 668f))))), u_input.a, u_input.a);
    var var_1 = Struct_3(false);
    var var_2 = countOneBits(2147483647i);
    global0 = array<vec3<f32>, 32>();
    let var_3 = Struct_3(var_1.a);
    return var_3;
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = arg_0.xx;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(587f, -618f) - -1307f), -2009f);
    let var_3 = Struct_3(func_2().a);
    var var_4 = vec3<bool>(true, select(true, true, all(!select(vec4<bool>(false, var_3.a, false, var_3.a), vec4<bool>(var_0.a, var_3.a, var_3.a, var_3.a), vec4<bool>(var_3.a, var_3.a, false, true)))), false);
    return Struct_2(Struct_1(max(~(~vec3<i32>(-40200i, 0i, -15437i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -1i, -7980i) << (arg_0 % vec3<u32>(32u)), vec3<i32>(-16502i, -12071i, -1i))), vec2<u32>(~_wgslsmith_add_u32(1u, var_1.x), var_1.x), vec4<u32>(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(339f, 234f, 1000f, 1000f))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.x, 55893u, 26078u) & vec4<u32>(arg_0.x, u_input.a, 0u, u_input.a), countOneBits(vec4<u32>(u_input.a, 0u, arg_0.x, u_input.a))), _wgslsmith_div_u32(max(var_1.x, var_1.x), 1u), var_1.x), abs(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 11962u, 0u, 100934u), vec4<u32>(u_input.a, u_input.a, arg_0.x, 35450u))))), Struct_1(-vec3<i32>(1i, 35738i, reverseBits(0i)), vec2<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(arg_0.xy), arg_0.zy | vec2<u32>(0u, arg_0.x)), arg_0.x & arg_0.x), (max(vec4<u32>(55793u, 53751u, 41924u, 4294967295u), vec4<u32>(393u, 33725u, 24u, 4294967295u)) ^ (vec4<u32>(u_input.a, arg_0.x, var_1.x, 1u) & vec4<u32>(var_1.x, var_1.x, u_input.a, 29143u))) >> (_wgslsmith_mod_vec4_u32(max(vec4<u32>(4294967295u, var_1.x, var_1.x, arg_0.x), vec4<u32>(58701u, 1u, var_1.x, 21411u)), ~vec4<u32>(arg_0.x, var_1.x, 0u, 1u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_1.x, 81334u, u_input.a), vec4<u32>(43889u, arg_0.x, var_1.x, u_input.a), vec4<u32>(4294967295u, 20994u, 0u, 1u)), vec4<u32>(arg_0.x, 23627u, 4294967295u, u_input.a)), ~(~67442u), 32444u, 1u)), vec3<bool>(_wgslsmith_f_op_f32(-507f + _wgslsmith_f_op_f32(select(-231f, 1000f, var_0.a))) <= 662f, var_4.x, true), _wgslsmith_f_op_f32(abs(402f)), arg_0);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global0 = array<vec3<f32>, 32>();
    var var_0 = vec3<u32>(4294967295u, _wgslsmith_mult_u32(abs(abs(u_input.a)), arg_1), u_input.a);
    var var_1 = func_2();
    let var_2 = !(_wgslsmith_add_i32(abs(56232i), -arg_2.b.a.x) != _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-10450i, arg_2.b.a.x, 1i, 1i)) ^ firstTrailingBit(vec4<i32>(arg_2.b.a.x, 1i, arg_2.a.a.x, 4387i)), ~(~vec4<i32>(arg_2.b.a.x, -66522i, arg_2.a.a.x, 2147483647i))));
    let var_3 = !vec4<bool>(!all(!arg_2.c), any(arg_2.c.zx), false, false);
    return func_1(arg_2.a.d.zwy).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, true)), u_input.a, func_1(vec3<u32>(56752u, _wgslsmith_clamp_u32(u_input.a, 32366u, u_input.a), reverseBits(u_input.a)))), Struct_1((~vec3<i32>(-1i, 2147483647i, 47702i) << ((vec3<u32>(4294967295u, u_input.a, u_input.a) | vec3<u32>(u_input.a, 78181u, 35360u)) % vec3<u32>(32u))) | (-vec3<i32>(-2147483647i, 21300i, -50266i) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, 4685u, u_input.a)) % vec3<u32>(32u))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a)), (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 12430u), vec4<u32>(u_input.a, u_input.a, 43747u, u_input.a)) ^ (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(4294967295u, 1u, 0u, 1u) % vec4<u32>(32u)))) | func_4(vec2<bool>(true, true), 1u, func_1(vec3<u32>(4294967295u, 7367u, u_input.a))).d, func_4(vec2<bool>(true, true), countOneBits(u_input.a), Struct_2(func_4(vec2<bool>(false, false), 64491u, Struct_2(Struct_1(vec3<i32>(11563i, -23198i, -2147483647i), vec2<u32>(u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(0u, 37549u, 4294967295u, u_input.a)), Struct_1(vec3<i32>(46134i, -8552i, 25359i), vec2<u32>(u_input.a, u_input.a), vec4<u32>(u_input.a, 51461u, u_input.a, 59724u), vec4<u32>(1u, 4294967295u, u_input.a, u_input.a)), vec3<bool>(false, true, true), -1927f, vec3<u32>(4294967295u, 70795u, 0u))), Struct_1(vec3<i32>(-43817i, -2147483647i, -2147483647i), vec2<u32>(0u, u_input.a), vec4<u32>(17402u, 1u, 1u, 39620u), vec4<u32>(3408u, u_input.a, u_input.a, 27234u)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), 887f, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 36999u, 7409u), vec3<u32>(u_input.a, u_input.a, u_input.a)))).d), func_1(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(4347u, 0u, 1u), vec3<u32>(u_input.a, 4294967295u, u_input.a)))).c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -146f), true)))), -903f), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), min(~vec3<u32>(52824u, 5914u, u_input.a) & _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(u_input.a, 22531u, u_input.a)), select(abs(vec3<u32>(u_input.a, 3380u, u_input.a)), vec3<u32>(u_input.a, 0u, 0u), vec3<bool>(true, true, true)))));
    var var_1 = -var_0.b.a.x >> (u_input.a % 32u);
    var var_2 = var_0;
    var var_3 = var_0;
    let var_4 = func_1(var_2.b.d.zxy).b;
    global0 = array<vec3<f32>, 32>();
    var_1 = -22990i;
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(vec2<i32>(min(var_2.a.a.x, abs(var_5.b.a.x)), ~1i), min(func_1(var_5.e).a.a.zz, var_3.a.a.yx)), vec3<i32>(-27972i, -1i, -abs(-var_4.a.x)), ~var_5.b.b.x, vec2<i32>(var_4.a.x, var_4.a.x));
}

