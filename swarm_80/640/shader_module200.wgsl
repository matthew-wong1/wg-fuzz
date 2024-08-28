struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
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

var<private> global0: Struct_1 = Struct_1(true, vec3<u32>(1u, 50793u, 47272u), vec4<i32>(42627i, 1i, i32(-2147483648), 30764i), vec4<i32>(-21807i, 0i, 8530i, 1i));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> i32 {
    var var_0 = firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-arg_3, arg_1.a.x), max(_wgslsmith_div_i32(~global0.d.x, 22493i), 39627i), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(global0.d.x, 17192i, arg_3, arg_0)), ~(vec4<i32>(2147483647i, -1i, -27812i, 13388i) ^ global0.c))));
    var_0 = 2147483647i;
    let var_1 = Struct_4(~select(~1i, u_input.d.x, !(!arg_2)), Struct_3(!vec3<bool>(global0.a, false, true), firstTrailingBit(vec3<i32>(-653i, firstTrailingBit(arg_0), 2147483647i)), select(true & global0.a, !(global0.a | global0.a), all(vec2<bool>(global0.a, true)))), Struct_2(arg_1.a ^ _wgslsmith_add_vec2_i32(select(arg_1.a, global0.d.yy, vec2<bool>(false, false)), global0.d.yz), _wgslsmith_div_i32(select(arg_3, _wgslsmith_mult_i32(22201i, u_input.c), any(vec3<bool>(global0.a, arg_2, arg_2))), i32(-1i) * -17363i), global0.d.x), 34838u, Struct_1(!(true & arg_2), u_input.e, ~(~vec4<i32>(u_input.d.x, arg_0, arg_3, 1i)), ~_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(arg_1.c, -973i, u_input.d.x, 13367i)), -global0.c)));
    global0 = Struct_1(select(true, false, var_1.b.a.x), vec3<u32>(20479u >> (~var_1.e.b.x % 32u), abs(u_input.e.x) ^ (var_1.d ^ 0u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 24392u, 4294967295u, 22039u), vec4<u32>(global0.b.x, 1u, u_input.e.x, u_input.e.x)), ~vec4<u32>(0u, 13697u, var_1.e.b.x, 70296u))) | vec3<u32>(~(~0u), _wgslsmith_add_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(66205u, global0.b.x, var_1.e.b.x, 0u), vec4<u32>(1u, 1u, 4294967295u, 7338u))), ~(var_1.d | u_input.a)), var_1.e.d, vec4<i32>(~(-2147483647i) & var_1.c.b, _wgslsmith_dot_vec3_i32(~u_input.d, _wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(-83i, 1i, -26943i))), global0.c.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.c, max(-6137i, arg_0), 2147483647i), 2933i)));
    var var_2 = false;
    return _wgslsmith_div_i32(-firstLeadingBit(_wgslsmith_sub_i32(countOneBits(22183i), arg_3)), 1i);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global0 = Struct_1(global0.a && !(!(!global0.a)), vec3<u32>(4294967295u, arg_0.x, 4294967295u), vec4<i32>(_wgslsmith_sub_i32(-1644i, abs(~1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.c.x, -7977i, 27967i), vec3<i32>(u_input.b, -82307i, u_input.b)), countOneBits(vec3<i32>(u_input.b, 45278i, global0.d.x))), -firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(-4430i, -4348i))), 0i), -vec4<i32>(-11232i, _wgslsmith_dot_vec3_i32(select(global0.d.zxy, vec3<i32>(u_input.c, 1i, 0i), global0.a), global0.d.yyw), -(14933i << (global0.b.x % 32u)), -global0.c.x));
    let var_0 = Struct_2(u_input.d.xz, u_input.c, u_input.b);
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-func_3(global0.c.x, Struct_2(u_input.d.xy, -1i, var_0.c), global0.a, 36099i), var_0.c), 0i);
    var_1 = func_3(max(var_0.a.x, ~(-1i) & global0.c.x), Struct_2(vec2<i32>(~_wgslsmith_mult_i32(u_input.c, var_0.a.x), abs(u_input.b & global0.c.x)), countOneBits(~17349i), firstTrailingBit(0i)), global0.a, var_0.c << (_wgslsmith_sub_u32(30007u, arg_0.x) % 32u));
    let var_2 = vec3<f32>(1f, 517f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-593f, 829f)), _wgslsmith_f_op_f32(427f - -169f), true)))));
    return Struct_1(!global0.a, ~select(vec3<u32>(~arg_0.x, u_input.a, arg_0.x), _wgslsmith_add_vec3_u32(~vec3<u32>(74108u, arg_0.x, 33479u), ~u_input.e), select(vec3<bool>(true, false, global0.a), !vec3<bool>(global0.a, false, true), !vec3<bool>(global0.a, global0.a, true))), vec4<i32>(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, -1i, u_input.d.x, global0.c.x), global0.d)), min(_wgslsmith_sub_i32(0i ^ u_input.d.x, -u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 31572i), ~vec2<i32>(-1i, global0.d.x))), 0i, var_0.b), vec4<i32>(_wgslsmith_mult_i32(-6785i, u_input.c), 43516i, firstLeadingBit(global0.c.x), _wgslsmith_mod_i32(u_input.d.x, var_0.b | -18820i)) ^ (-vec4<i32>(u_input.d.x, var_0.c, global0.c.x, var_0.a.x) << (~select(vec4<u32>(4294967295u, 0u, u_input.e.x, global0.b.x), vec4<u32>(0u, global0.b.x, 0u, arg_0.x), vec4<bool>(false, false, true, true)) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    global0 = func_2(_wgslsmith_mod_vec3_u32(global0.b, global0.b >> (~abs(u_input.e) % vec3<u32>(32u))));
    global0 = Struct_1(global0.a, vec3<u32>(_wgslsmith_mult_u32(1u, ~_wgslsmith_mod_u32(global0.b.x, 26940u)), u_input.e.x, firstTrailingBit(~u_input.a) >> (~abs(4294967295u) % 32u)), ~global0.c, vec4<i32>(global0.c.x, 1i, 1i, i32(-1i) * -31817i));
    var var_0 = global0.b.zz;
    let var_1 = Struct_4(-u_input.b, Struct_3(vec3<bool>(true, _wgslsmith_dot_vec2_u32(u_input.e.yy, vec2<u32>(10553u, 27473u)) == (5928u >> (u_input.e.x % 32u)), !(false && global0.a)), select(~_wgslsmith_div_vec3_i32(global0.d.xwy, vec3<i32>(0i, 0i, u_input.d.x)), -_wgslsmith_div_vec3_i32(global0.d.yxw, u_input.d), all(vec4<bool>(true, true, true, true))), all(select(vec4<bool>(false, global0.a, global0.a, false), vec4<bool>(true, global0.a, true, true), arg_0.x == 1u))), Struct_2(abs(select(min(u_input.d.zx, global0.d.zy), -global0.c.ww, !vec2<bool>(global0.a, true))), global0.d.x, 10741i), _wgslsmith_div_u32(~(~5739u) | global0.b.x, _wgslsmith_div_u32(var_0.x, max(u_input.a, arg_0.x)) | arg_0.x), func_2(~(~vec3<u32>(20170u, 4294967295u, 8097u))));
    var var_2 = 64080u;
    return _wgslsmith_mult_i32(abs(_wgslsmith_div_i32(-28222i, var_1.b.b.x & -65058i)), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, firstLeadingBit(_wgslsmith_div_vec3_u32(~select(global0.b, global0.b, true), abs(countOneBits(u_input.e)))), global0.c, countOneBits(vec4<i32>(_wgslsmith_add_i32(-39493i, global0.c.x), func_1(abs(vec4<u32>(u_input.a, 4294967295u, global0.b.x, global0.b.x))), u_input.c, countOneBits(u_input.b))));
    let var_1 = select(!(!vec4<bool>(func_2(vec3<u32>(59998u, 8036u, var_0.b.x)).a, global0.a, var_0.a, var_0.a)), select(select(vec4<bool>(all(vec3<bool>(var_0.a, global0.a, var_0.a)), true, var_0.a & var_0.a, any(vec4<bool>(global0.a, global0.a, global0.a, true))), vec4<bool>(true, true, var_0.a, !global0.a), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, global0.b.x), vec2<u32>(u_input.a, 1u)) > u_input.e.x), vec4<bool>(func_2(select(u_input.e, vec3<u32>(u_input.a, global0.b.x, 4294967295u), vec3<bool>(false, false, false))).a, var_0.a, global0.a, global0.a), !select(!vec4<bool>(true, global0.a, false, global0.a), vec4<bool>(global0.a, global0.a, true, global0.a), !vec4<bool>(global0.a, false, true, true))), select(!vec4<bool>(true, any(vec4<bool>(var_0.a, var_0.a, true, false)), false, var_0.a == true), !select(select(vec4<bool>(global0.a, false, var_0.a, global0.a), vec4<bool>(true, var_0.a, var_0.a, true), global0.a), select(vec4<bool>(true, false, true, true), vec4<bool>(global0.a, false, false, true), true), all(vec4<bool>(var_0.a, true, global0.a, true))), any(select(select(vec3<bool>(false, true, global0.a), vec3<bool>(var_0.a, global0.a, var_0.a), vec3<bool>(global0.a, true, false)), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(true, global0.a, var_0.a)))));
    let var_2 = ~_wgslsmith_add_u32(firstTrailingBit(4294967295u), ~1u);
    global0 = func_2(~vec3<u32>(abs(~var_0.b.x), 1u, firstTrailingBit(1u)));
    var var_3 = var_0;
    var_3 = func_2(vec3<u32>(select(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_2, global0.b.x), var_3.b.x), ~0u, all(vec4<bool>(true, true, true, true))), 0u & ~var_2, reverseBits(6398u)));
    var var_4 = var_3.c.wwy;
    var_4 = -(~(~firstLeadingBit(var_0.c.wxw) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.d.x, 2147483647i), countOneBits(u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x);
}

