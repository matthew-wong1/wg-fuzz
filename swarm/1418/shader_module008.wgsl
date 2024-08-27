struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -46996i;

var<private> global1: vec4<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> i32 {
    let var_0 = 0i & -arg_0.b.a.x;
    let var_1 = _wgslsmith_f_op_f32(floor(417f));
    var var_2 = 31979u | _wgslsmith_div_u32(firstLeadingBit(~select(global1.x, 4294967295u, false)), global1.x);
    var var_3 = var_0;
    global1 = vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(0u & global1.x, 0u >> (global1.x % 32u), abs(global1.x)), 0u), ~1u, ~global1.x, _wgslsmith_sub_u32(global1.x, firstLeadingBit(~global1.x)) ^ 0u);
    return var_0 & ~(-1i);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> vec2<f32> {
    global1 = ~max(vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(0u, 457u)), global1.x, _wgslsmith_dot_vec3_u32(global1.zxz, global1.wxy) & 1u, global1.x), (_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, global1.x, 10303u, global1.x), vec4<u32>(global1.x, global1.x, arg_2.x, 43382u)) ^ vec4<u32>(arg_2.x, global1.x, arg_2.x, 84684u)) | vec4<u32>(_wgslsmith_clamp_u32(40240u, 4294967295u, global1.x), select(4294967295u, arg_2.x, true), firstLeadingBit(55325u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 107343u, arg_2.x, 4294967295u), vec4<u32>(global1.x, 4294967295u, 1u, 0u))));
    var var_0 = Struct_2(!select(select(!vec4<bool>(true, true, false, arg_0), !vec4<bool>(true, false, true, arg_0), select(vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b), vec4<bool>(true, false, arg_0, false), vec4<bool>(arg_1.b, arg_0, false, arg_1.b))), vec4<bool>(select(false, true, true), false, false, true), true), arg_1, !vec4<bool>(_wgslsmith_mult_u32(5344u, 26237u) >= (40236u << (arg_2.x % 32u)), arg_1.b, arg_0, all(select(vec4<bool>(arg_0, arg_1.b, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_1.b))), arg_1);
    global0 = select(-_wgslsmith_div_i32(_wgslsmith_div_i32(arg_3, 63755i), _wgslsmith_dot_vec2_i32(vec2<i32>(14989i, var_0.d.a.x), arg_1.a.xz)) | ~var_0.d.a.x, 10044i, true);
    let var_1 = all(select(var_0.a, vec4<bool>(var_0.c.x, arg_0, true, any(var_0.c)), true));
    let var_2 = arg_1;
    return vec2<f32>(_wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) + 1150f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c * -328f)) * -477f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(744f, _wgslsmith_f_op_f32(-var_2.c)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c - -1752f), _wgslsmith_f_op_f32(sign(var_0.d.c))))));
}

fn func_2() -> Struct_3 {
    let var_0 = 22583u >> (~global1.x % 32u);
    global0 = -u_input.a;
    global0 = min(-2147483647i, u_input.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(887f - -1547f))) == _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(vec3<i32>(func_3(Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec3<i32>(u_input.a, u_input.a, -86549i), false, 612f), vec4<bool>(true, true, false, true), Struct_1(vec3<i32>(18074i, 1i, -73210i), true, -279f)), vec2<f32>(1000f, 2500f)), -1i, -u_input.a), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(668f)))), vec2<u32>(var_0, var_0), reverseBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(-10287i, u_input.a, -1i), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(2147483647i, 1i, u_input.a))))))));
    global0 = -u_input.a;
    return Struct_3(~_wgslsmith_clamp_u32(~global1.x, global1.x >> (4294967295u % 32u), global1.x) & min(var_0, ~_wgslsmith_dot_vec3_u32(global1.xwz, global1.wyx)), Struct_2(select(vec4<bool>(false, true, all(vec4<bool>(true, true, true, true)), -4018i != u_input.a), vec4<bool>(true, false, true, select(false, false, false)), true), Struct_1(abs(firstLeadingBit(vec3<i32>(u_input.a, -7974i, 2147483647i))), any(vec3<bool>(true, true, true)), 264f), vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true))), true, false, !any(vec4<bool>(true, false, true, true))), Struct_1(select(vec3<i32>(u_input.a, -63860i, 0i), ~vec3<i32>(u_input.a, -65414i, u_input.a), any(vec4<bool>(true, false, false, true))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1521f)))), -977f);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    var var_0 = func_2().a;
    var var_1 = func_2().b;
    let var_2 = Struct_1(firstTrailingBit(arg_1.b.a), var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b.c))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.d.c)) + arg_1.d.c)));
    let var_3 = Struct_3(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(4294967295u, 21093u, arg_0.a, 50829u))), vec4<u32>(~(1763u ^ arg_0.a), global1.x, max(1u, 40176u << (global1.x % 32u)), arg_0.a)), func_2().b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(638f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.c - arg_1.d.c))))));
    var_1 = Struct_2(func_2().b.c, Struct_1(var_1.d.a, false, _wgslsmith_f_op_f32(-arg_1.d.c)), vec4<bool>(true, any(!(!vec4<bool>(true, var_3.b.b.b, var_1.a.x, false))), true, !all(!vec3<bool>(var_3.b.c.x, true, var_3.b.c.x))), var_2);
    return firstTrailingBit(2147483647i);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    let var_0 = -_wgslsmith_mult_i32(-((u_input.a >> (arg_2.a % 32u)) >> (_wgslsmith_dot_vec3_u32(global1.ywz, global1.ywx) % 32u)), ~_wgslsmith_mult_i32(-1i, arg_0.x));
    let var_1 = Struct_2(func_2().b.c, Struct_1(select(reverseBits(vec3<i32>(-2147483647i, -2147483647i, 14479i)), ~arg_1.b.d.a, vec3<bool>(!arg_2.b.b.b, true, arg_2.b.d.c == arg_2.c)), any(vec4<bool>(arg_2.b.b.b, 4294967295u > arg_1.a, all(arg_2.b.a), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b.d.c)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.b.d.c * arg_2.b.b.c), _wgslsmith_f_op_f32(f32(-1f) * -425f), false)))), !arg_1.b.a, Struct_1(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.b.b.a.x, arg_0.x, var_0) & arg_2.b.b.a, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -26429i, 2147483647i), vec3<i32>(arg_0.x, var_0, -1i)), arg_2.b.d.a | arg_2.b.d.a), ~vec3<i32>(var_0, -64778i, arg_1.b.d.a.x)), arg_2.b.b.b, arg_2.b.d.c));
    global1 = ~(~vec4<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(5352u, arg_1.a), _wgslsmith_dot_vec3_u32(global1.wyw, vec3<u32>(global1.x, 4540u, 57299u))), _wgslsmith_sub_u32(21125u, 1u), ~global1.x));
    global0 = u_input.a;
    var var_2 = Struct_3(_wgslsmith_dot_vec3_u32(~select(~global1.zww, ~global1.yxw, arg_2.b.b.b), ~firstLeadingBit(global1.zyx)), arg_1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_2.b.d.c)), _wgslsmith_f_op_f32(arg_2.b.b.c + 157f)))))));
    return false;
}

fn func_1() -> bool {
    var var_0 = vec3<i32>(-(~_wgslsmith_mod_i32(u_input.a, u_input.a)), u_input.a, ~2147483647i) << (global1.ywy % vec3<u32>(32u));
    let var_1 = !func_6(vec2<i32>(func_5(func_2(), Struct_2(vec4<bool>(true, false, false, false), Struct_1(vec3<i32>(0i, 4562i, u_input.a), false, -1000f), vec4<bool>(true, false, false, true), Struct_1(vec3<i32>(2147483647i, 52820i, -63821i), true, -1203f))), 48138i), Struct_3(45450u, Struct_2(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), Struct_1(vec3<i32>(26136i, u_input.a, -13896i), true, 570f), vec4<bool>(true, true, true, true), func_2().b.b), -455f), Struct_3(17585u, Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec3<i32>(22624i, u_input.a, 12736i), false, 1000f), func_2().b.a, Struct_1(vec3<i32>(var_0.x, -17489i, var_0.x), false, 161f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2329f * -915f), _wgslsmith_f_op_vec2_f32(func_4(true, Struct_1(vec3<i32>(var_0.x, -2147483647i, u_input.a), true, 317f), vec2<u32>(0u, global1.x), 26797i)).x)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1627f) + _wgslsmith_f_op_f32(-1063f - 1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -322f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + -1197f))))), 1000f);
    global0 = -1i;
    let var_3 = !all(!vec3<bool>(true, true, true != var_1));
    return var_1 || true;
}

fn func_7(arg_0: i32, arg_1: bool, arg_2: vec2<bool>) -> i32 {
    global1 = vec4<u32>(global1.x, abs(18978u << (_wgslsmith_div_u32(global1.x, ~46560u) % 32u)), ~select(global1.x, select(global1.x, ~49091u, true), func_1()), _wgslsmith_mult_u32(~reverseBits(func_2().a), global1.x));
    var var_0 = Struct_1(~_wgslsmith_add_vec3_i32(vec3<i32>(abs(2147483647i), u_input.a, ~39771i), select(-vec3<i32>(u_input.a, 1294i, 21290i), _wgslsmith_div_vec3_i32(vec3<i32>(1i, -3269i, u_input.a), vec3<i32>(u_input.a, u_input.a, arg_0)), !vec3<bool>(arg_1, true, false))), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = Struct_1(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_0, var_0.a.x, 28525i) << (_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 4294967295u, 26087u), vec3<u32>(105028u, 0u, global1.x)) % vec3<u32>(32u)), firstLeadingBit(var_0.a) | (vec3<i32>(-2147483647i, -2147483647i, arg_0) ^ vec3<i32>(-2147483647i, 0i, arg_0)), var_0.a), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_div_f32(var_0.c, -306f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -283f)));
    global0 = ~(-(i32(-1i) * -2147483647i));
    var var_2 = func_2().b.d;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(u_input.a, func_1(), !(!(!func_2().b.a.zw)));
    var var_0 = func_2().b.b;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-501f + -210f), 1000f) - var_0.c))));
    var var_2 = Struct_3(~_wgslsmith_div_u32(global1.x, ~(~135629u)), func_2().b, -825f);
    global0 = -_wgslsmith_mult_i32(func_3(Struct_2(vec4<bool>(true, var_2.b.b.b, false, var_2.b.c.x), func_2().b.d, vec4<bool>(true, var_0.b, var_2.b.a.x, var_0.b), func_2().b.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_2.b.b.c)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, 762f) - vec2<f32>(1297f, var_2.c)))), ~(~var_2.b.d.a.x));
    var var_3 = var_2.b.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.b.a.yx, global1.yxx, var_2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.b.c, 139f, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, 344f, -1347f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.b.c, var_2.c, var_0.c))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-576f, 1212f, true)) + _wgslsmith_f_op_f32(var_2.c - var_2.b.d.c)), _wgslsmith_f_op_f32(f32(-1f) * -209f), 795f)), select(vec4<i32>(-reverseBits(0i), -(~u_input.a), var_0.a.x, -2147483647i), _wgslsmith_mod_vec4_i32(~abs(vec4<i32>(u_input.a, 78793i, -2147483647i, 1i)), vec4<i32>(func_2().b.b.a.x, u_input.a, _wgslsmith_add_i32(0i, var_0.a.x), 1i)), select(vec4<bool>(!var_2.b.b.b, var_0.a.x == 0i, true, any(var_2.b.a.wx)), var_2.b.c, vec4<bool>(true, true, any(vec2<bool>(false, var_2.b.b.b)), all(vec2<bool>(false, false))))));
}

