struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32;

var<private> global2: f32 = 655f;

var<private> global3: Struct_2;

var<private> global4: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: f32) -> vec4<i32> {
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_2, 1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2))))), true));
    let var_0 = Struct_1(vec2<i32>(u_input.a, abs(1i) >> (_wgslsmith_mod_u32(1u, 1u >> (arg_1 % 32u)) % 32u)));
    var var_1 = Struct_2(-firstTrailingBit(-vec3<i32>(var_0.a.x, -5080i, global3.e.a.x)), Struct_1(vec2<i32>(var_0.a.x, -(i32(-1i) * -2147483647i))), global3.e, global3.d, global3.c);
    let var_2 = Struct_1(~_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.c.a.x, var_1.a.x) << (u_input.c % vec2<u32>(32u)), var_0.a), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.d), var_1.e.a)));
    global1 = 2147483647i;
    return _wgslsmith_div_vec4_i32(vec4<i32>(global3.e.a.x, 1i, min(var_1.a.x, ~2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.a.x, 2378i, var_2.a.x), vec4<i32>(1i, 34304i, 0i, 8166i) >> (vec4<u32>(75516u, 4294967295u, 4294967295u, arg_1) % vec4<u32>(32u))) | _wgslsmith_mult_i32(1i, -65663i)), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-70090i, var_1.a.x, -1i, 2147483647i), vec4<i32>(var_2.a.x, 84792i, -74204i, 0i), -vec4<i32>(2721i, 27241i, 11047i, -2147483647i)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(52143i, global3.d.a.x, -2147483647i, global3.b.a.x), vec4<i32>(-20853i, u_input.a, -1i, 0i), true), _wgslsmith_clamp_vec4_i32(vec4<i32>(-14205i, global3.a.x, -2147483647i, 24917i), vec4<i32>(-2147483647i, u_input.d, var_2.a.x, var_1.a.x), vec4<i32>(49801i, var_2.a.x, u_input.d, -25750i)))), ~select(vec4<i32>(15453i, 3966i, u_input.a, 0i), vec4<i32>(var_2.a.x, -1i, 1i, u_input.d), vec4<bool>(false, false, arg_0, true)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c.x, 1u, u_input.c.x, 147u), ~vec4<u32>(66608u, arg_1, arg_1, arg_1)) % vec4<u32>(32u))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> vec4<i32> {
    let var_0 = vec4<i32>(1i & ~(-arg_1.x), 13139i, global3.c.a.x, firstTrailingBit(307i)) ^ func_3(global4.x, u_input.c.x >> (_wgslsmith_mod_u32(firstTrailingBit(0u), 11696u) % 32u), 135f);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1669f))));
    let var_2 = firstLeadingBit(firstLeadingBit(vec3<u32>(8450u, 77681u, ~select(u_input.b, u_input.c.x, global4.x))));
    var var_3 = 32831u;
    global1 = _wgslsmith_sub_i32(2147483647i, (_wgslsmith_mod_i32(2147483647i, 73850i & arg_0.b.a.x) << (1u % 32u)) | _wgslsmith_div_i32(u_input.a, -38604i));
    return vec4<i32>(firstLeadingBit(~func_3(global4.x, u_input.c.x & 18187u, -681f).x), _wgslsmith_dot_vec2_i32(select(arg_0.e.a, vec2<i32>(arg_0.a.x, -4810i), vec2<bool>(false, false)), max(vec2<i32>(-53496i, -51330i), select(vec2<i32>(1i, 2147483647i), arg_1.xy, false))) >> (_wgslsmith_mod_u32(reverseBits(~u_input.c.x), _wgslsmith_add_u32(0u, 8711u)) % 32u), select(abs(_wgslsmith_mod_i32(-1i, global3.d.a.x) >> ((14215u | var_2.x) % 32u)), ~(-2147483647i << (_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) % 32u)), false), -1i);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(~_wgslsmith_clamp_vec4_i32(func_2(arg_2, arg_2.a), func_3(global4.x, arg_0.x, -115f), max(vec4<i32>(arg_1, 2147483647i, -71520i, 2147483647i), vec4<i32>(global3.b.a.x, global3.e.a.x, global3.d.a.x, 1i))), _wgslsmith_add_vec4_i32(-vec4<i32>(-52163i, arg_1, 1i, u_input.a), func_3(true, arg_0.x, -220f)) << (~_wgslsmith_mult_vec4_u32(arg_0, vec4<u32>(u_input.c.x, 53071u, u_input.b, 0u)) % vec4<u32>(32u)), func_2(Struct_2(arg_2.a, global3.b, arg_2.c, global3.c, Struct_1(vec2<i32>(-38890i, 0i))), vec3<i32>(global3.e.a.x, 2147483647i, arg_1)) | ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, arg_2.d.a.x, global3.a.x, arg_2.a.x), vec4<i32>(65480i, u_input.a, u_input.a, -169i))), vec4<i32>(~(~global3.c.a.x & countOneBits(103i)), ~(global3.d.a.x << (19800u % 32u)), func_2(arg_2, arg_2.a).x >> (1u % 32u), global3.b.a.x));
    var var_1 = 1u;
    var_1 = ~(~u_input.b);
    global2 = 1f;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(972f, 141f), false))), -264f)) - -1219f);
    return Struct_1(vec2<i32>(_wgslsmith_mod_i32(~(2147483647i << (arg_0.x % 32u)), var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(7659i, u_input.d << (0u % 32u), min(u_input.a, -30534i), _wgslsmith_add_i32(global3.b.a.x, arg_2.c.a.x)), vec4<i32>(u_input.d, abs(global3.d.a.x), ~var_0.x, func_3(global4.x, 1u, var_2).x))));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = vec4<i32>(firstLeadingBit(func_3(global4.x, ~u_input.c.x, 776f).x), abs(arg_1.x), arg_2.e.a.x, -26203i);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-453f)) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1131f * -534f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -233f)))));
    let var_1 = ~(~1u);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(1642f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1731f)), _wgslsmith_f_op_f32(floor(1643f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-158f + 532f))))), 352f);
    let var_3 = global4.x || true;
    return func_1(firstLeadingBit(vec4<u32>(arg_0, arg_0, 0u, u_input.c.x) >> (vec4<u32>(_wgslsmith_add_u32(arg_0, 0u), _wgslsmith_add_u32(u_input.b, 0u), ~1u, u_input.c.x) % vec4<u32>(32u))), min(arg_1.x & -_wgslsmith_clamp_i32(arg_2.b.a.x, -1i, 1i), firstTrailingBit(_wgslsmith_div_i32(arg_2.a.x << (0u % 32u), -1i))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(abs(global3.a), func_4(u_input.b, _wgslsmith_mult_vec3_i32(global3.a, reverseBits(~global3.a)), Struct_2(vec3<i32>(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.d, global3.a.x), vec4<i32>(global3.b.a.x, 1i, u_input.a, 30340i)), 2429i >> (u_input.b % 32u)), func_1(~vec4<u32>(1u, u_input.c.x, 1532u, 0u), global3.b.a.x | global3.a.x, Struct_2(global3.a, global3.d, global3.b, Struct_1(global3.d.a), Struct_1(vec2<i32>(1i, u_input.a)))), func_1(vec4<u32>(u_input.b, 69346u, 43551u, 4294967295u) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), -1i, Struct_2(global3.a, Struct_1(global3.a.zz), global3.b, global3.c, Struct_1(global3.e.a))), func_1(select(vec4<u32>(27608u, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.b, 39873u, u_input.c.x, u_input.b), global4.x), global3.d.a.x, Struct_2(vec3<i32>(global3.e.a.x, global3.b.a.x, u_input.d), global3.d, Struct_1(vec2<i32>(5735i, u_input.d)), global3.b, Struct_1(vec2<i32>(global3.b.a.x, 1i)))), Struct_1(min(global3.a.xz, global3.e.a)))), func_1(~(~(vec4<u32>(0u, 7855u, 1u, 22446u) & vec4<u32>(33303u, 1u, u_input.b, 1u))), (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 12398i, u_input.d), vec3<i32>(global3.a.x, 34549i, u_input.d)) << (abs(73u) % 32u)) | 35356i, Struct_2(vec3<i32>(13903i, _wgslsmith_sub_i32(0i, u_input.a), u_input.d), Struct_1(vec2<i32>(0i, 2147483647i)), Struct_1(vec2<i32>(-1i, u_input.d)), global3.d, Struct_1(~global3.d.a))), Struct_1(~(~vec2<i32>(1i, 14467i)) >> (~u_input.c % vec2<u32>(32u))), global3.d);
    global2 = 945f;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1473f))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1581f)) - 1056f));
    var var_3 = -_wgslsmith_mod_vec4_i32(~(~select(vec4<i32>(global3.c.a.x, -2147483647i, var_0.a.x, 53737i), vec4<i32>(-2147483647i, -2147483647i, 6418i, 1i), vec4<bool>(false, true, global4.x, global4.x))), -select(vec4<i32>(global3.a.x, u_input.a, 2147483647i, -15305i) & vec4<i32>(-55686i, u_input.d, global3.e.a.x, 60963i), ~vec4<i32>(0i, -1i, global3.b.a.x, var_0.b.a.x), vec4<bool>(global4.x, global4.x, true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(3240u | u_input.c.x, u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(372f, var_1, 628f, 1777f) - vec4<f32>(1000f, -978f, 329f, 1002f)), vec4<f32>(565f, -555f, var_1, var_1), !global4.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-311f, -1196f, var_1, var_1)))))), global3.d.a, var_3.x);
}

