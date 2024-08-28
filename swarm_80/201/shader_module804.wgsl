struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec3<i32>(-31461i, 2147483647i, 0i));

var<private> global1: vec4<i32> = vec4<i32>(-1i, 0i, 12101i, -29193i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = arg_0;
    global1 = abs(vec4<i32>(~countOneBits(var_0.b.x), -2147483647i, arg_1.x, _wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(-42655i, 2147483647i)) ^ ~(-66205i))) << (~(~vec4<u32>(arg_0.a | arg_2.a, 39758u ^ arg_2.a, abs(4294967295u), 0u)) % vec4<u32>(32u));
    var var_1 = _wgslsmith_sub_u32(~firstLeadingBit(u_input.e), arg_2.a);
    let var_2 = Struct_1(abs(0u), arg_0.b & (vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, global1.x, global1.x), global1.yxy, global0.b)));
    global1 = select(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.c.x, 0i, u_input.a.x, 1i) | (u_input.a & vec4<i32>(arg_2.b.x, var_2.b.x, var_0.b.x, -1i)), vec4<i32>(2147483647i, _wgslsmith_clamp_i32(26151i, -1i, 5661i), -6695i, min(-22564i, 247i))), ~(u_input.c & arg_1)), ~vec4<i32>(_wgslsmith_sub_i32(arg_0.b.x, ~(-1i)), ~var_0.b.x, -4752i, -(u_input.a.x | 11155i)), firstTrailingBit(2147483647i) <= ~global0.b.x);
    return ~firstTrailingBit(vec3<i32>(~(-33551i), reverseBits(0i), arg_2.b.x)) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_2.a << (0u % 32u), 22778u), firstLeadingBit(vec3<u32>(1u, arg_0.a, arg_2.a)), vec3<u32>(0u | u_input.e, 0u, ~0u)) % vec3<u32>(32u));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = arg_2;
    global1 = vec4<i32>(_wgslsmith_dot_vec3_i32(abs(var_0.b), firstLeadingBit(vec3<i32>(22430i & global0.b.x, i32(-1i) * -1i, -var_0.b.x))), _wgslsmith_dot_vec3_i32(-u_input.c.xwz, vec3<i32>(arg_1.b.x, _wgslsmith_mod_i32(1i, -27485i), global1.x)), -2147483647i, -2147483647i);
    let var_1 = ~(~vec2<u32>(firstTrailingBit(0u), ~abs(global0.a)));
    let var_2 = global0.b;
    global0 = Struct_1(select(~abs(var_1.x), ~arg_1.a, !(0u < _wgslsmith_add_u32(arg_2.a, 1u))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~global0.b, arg_2.b), -1i), _wgslsmith_mod_i32(var_2.x, global0.b.x), u_input.b.x));
    return vec4<u32>(abs(4294967295u), 18170u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(var_1.x << ((u_input.d ^ 4294967295u) % 32u), ~arg_1.a)), ~global0.a);
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global1 = -(vec4<i32>(-1i) * -u_input.a);
    let var_0 = func_4(all(vec4<bool>(true, false, false, any(vec3<bool>(false, true, false)))) || true, Struct_1(~1u, func_3(Struct_1(~global0.a, global0.b), vec4<i32>(u_input.c.x, ~u_input.c.x, 1i, u_input.c.x >> (global0.a % 32u)), Struct_1(~global0.a, global1.yxx))), Struct_1(~(~_wgslsmith_mod_u32(u_input.d, u_input.e)), vec3<i32>(~(~(-15766i)), 1i, ~select(30251i, 2147483647i, true))));
    let var_1 = Struct_1(66112u, global1.wwz);
    global0 = Struct_1(var_0.x, -global0.b);
    global0 = var_1;
    return vec3<bool>(!all(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), _wgslsmith_add_u32(countOneBits(global0.a & var_1.a), reverseBits(global0.a)) >= 0u, -27449i < _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(min(vec3<i32>(-1i, 1i, var_1.b.x), var_1.b), _wgslsmith_div_vec3_i32(global0.b, global0.b)), firstTrailingBit(global0.b ^ vec3<i32>(2147483647i, 2147483647i, 2147483647i))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = vec2<i32>(i32(-1i) * -((2147483647i >> (global0.a % 32u)) << (countOneBits(5165u) % 32u)), -(-global0.b.x << (~34619u % 32u)));
    var var_2 = Struct_1(firstLeadingBit(~1u), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(u_input.a & vec4<i32>(u_input.c.x, arg_2.x, global0.b.x, arg_2.x), u_input.c) | (i32(-1i) * -15334i), -2706i));
    var var_3 = !any(func_2(642f));
    let var_4 = Struct_1(1u, u_input.c.wxx);
    return var_4;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = -vec2<i32>(global0.b.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(~(-12143i), _wgslsmith_add_i32(u_input.a.x, 90085i)), 0i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, global0.a), vec2<u32>(arg_1.a, arg_1.a)) % 32u)));
    let var_1 = vec2<i32>(reverseBits(33361i), _wgslsmith_mod_i32(1i, countOneBits(32703i)));
    global0 = func_1(-1864f, arg_1.a, countOneBits(_wgslsmith_add_vec4_i32(u_input.a, u_input.a >> (vec4<u32>(u_input.d, arg_1.a, 1u, u_input.d) % vec4<u32>(32u)))) | reverseBits(vec4<i32>(-2147483647i, func_3(arg_1, vec4<i32>(-1i, 1i, var_1.x, global0.b.x), Struct_1(35125u, vec3<i32>(-8930i, -1i, -1i))).x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 6031i), vec2<i32>(-10417i, 28650i)), var_0.x)));
    global0 = Struct_1(~(~firstLeadingBit(0u) >> (~(~global0.a) % 32u)), abs(abs(select(vec3<i32>(global0.b.x, global0.b.x, var_0.x) << (vec3<u32>(u_input.d, global0.a, 27055u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-2735i, var_1.x, -3506i), arg_1.b), 1u < arg_2))));
    let var_2 = all(!select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, false))), true));
    return func_1(_wgslsmith_f_op_f32(-arg_0), select(64393u, ~13375u, func_2(_wgslsmith_f_op_f32(abs(-181f))).x), _wgslsmith_mult_vec4_i32(-vec4<i32>(var_0.x, -2147483647i, 14887i, global0.b.x), -u_input.c) & ~(-firstLeadingBit(u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    var var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1218f, 908f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(393f - -1223f) * 724f), true))), func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1011f)))), ~u_input.d, select(vec4<i32>(global1.x, 1i, global1.x, global1.x) << (vec4<u32>(4294967295u, 5582u, 4294967295u, u_input.d) % vec4<u32>(32u)), ~vec4<i32>(global0.b.x, 2147483647i, u_input.b.x, global1.x), true)), ~u_input.e << (min(1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.e, 0u), 0u)) % 32u));
    var var_2 = !((true || any(vec4<bool>(false, false, true, true))) | !func_2(-957f).x) || true;
    let var_3 = !all(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))));
    var_1 = Struct_1(var_1.a, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(1f, 1u, select(u_input.a.yyw, ~(~var_1.b << (firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, global0.a)) % vec3<u32>(32u))), all(select(select(vec4<bool>(var_3, true, var_3, true), vec4<bool>(false, false, true, var_3), true), !vec4<bool>(true, var_3, false, true), var_3))));
}

