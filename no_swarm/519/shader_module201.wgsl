struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<bool>;

var<private> global2: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> u32 {
    global0 = _wgslsmith_div_vec2_i32(vec2<i32>(53553i, 2147483647i) ^ _wgslsmith_mod_vec2_i32(~(-vec2<i32>(-55972i, global0.x)), vec2<i32>(0i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(arg_0.b, 0i, 19520i, -2147483647i)))), u_input.c.zz);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(408f))))))) * 247f);
    global1 = select(select(select(arg_1.zzx, vec3<bool>(!arg_1.x, arg_0.a.a.x, arg_0.a.a.x), select(arg_1.xxz, vec3<bool>(false, arg_0.a.a.x, true), vec3<bool>(false, arg_1.x, true))), arg_1.ywx, !select(arg_1.x, arg_1.x, false) || true), select(select(select(!arg_1.xyw, select(arg_1.yyx, arg_1.wxx, arg_0.a.a.x), arg_1.xxz), select(!vec3<bool>(true, arg_1.x, arg_0.a.a.x), vec3<bool>(arg_0.a.a.x, arg_1.x, true), vec3<bool>(true, arg_0.a.a.x, global1.x)), false != !arg_0.a.a.x), arg_1.xxx, vec3<bool>(any(arg_0.a.a), all(vec4<bool>(arg_0.a.a.x, global1.x, false, false)), all(vec3<bool>(arg_1.x, global1.x, global1.x)))), !select(vec3<bool>(false, global0.x >= u_input.a.x, arg_0.a.b.x <= 578f), vec3<bool>(!arg_0.a.a.x, true, true), _wgslsmith_mult_i32(-1i, global0.x) <= ~arg_0.c.x));
    var var_1 = Struct_1(select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(arg_1.x, arg_0.a.a.x)), select(arg_0.a.a, vec2<bool>(false, arg_1.x), global1.yz), select(vec2<bool>(false, true), arg_0.a.a, vec2<bool>(arg_0.a.a.x, global1.x))), arg_0.a.a, vec2<bool>(select(arg_1.x, global1.x, arg_1.x), arg_0.a.a.x)), vec2<bool>(!(u_input.a.x < -1i), global1.x)), vec4<f32>(var_0, _wgslsmith_f_op_f32(-var_0), arg_0.a.b.x, -227f), abs(~u_input.d.x));
    return max(~(~36625u), ~firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_1.c, arg_0.a.c), ~vec3<u32>(4294967295u, 4294967295u, 13814u))));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(abs(1u), countOneBits(func_3(Struct_2(Struct_1(arg_0.yz, vec4<f32>(1761f, -1977f, -1019f, -815f), u_input.d.x), 1i, u_input.a.xyw), select(vec4<bool>(false, false, true, false), vec4<bool>(arg_0.x, arg_0.x, true, false), true))), ~(0u ^ u_input.d.x) | select(_wgslsmith_add_u32(u_input.d.x, 0u), ~u_input.d.x, global1.x & arg_0.x), 4294967295u), ~(min(vec4<u32>(0u, 42905u, 4294967295u, arg_2), vec4<u32>(4294967295u, arg_2, u_input.d.x, u_input.d.x)) ^ ~reverseBits(vec4<u32>(u_input.d.x, u_input.d.x, arg_2, 15688u))));
    let var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~(~select(vec3<u32>(29142u, 79530u, 23447u), vec3<u32>(1u, 154571u, arg_2), true)), vec3<u32>(u_input.d.x, ~u_input.d.x, 4294967295u)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(11643u, arg_2, 6130u), _wgslsmith_mult_vec3_u32(vec3<u32>(30242u, arg_2, u_input.d.x), vec3<u32>(17372u, 4294967295u, u_input.d.x))), ~(~vec3<u32>(31524u, arg_2, arg_2))), min(vec3<u32>(5132u, 1u, 77227u) >> (vec3<u32>(57870u, u_input.d.x, 0u) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(arg_2, u_input.d.x, 0u))) << (firstTrailingBit(~vec3<u32>(10281u, arg_2, 59505u)) % vec3<u32>(32u))));
    var_0 = firstTrailingBit(21266u);
    let var_2 = any(select(!vec2<bool>(true, global1.x), select(select(select(vec2<bool>(arg_0.x, false), global1.xz, global1.zz), select(global1.xz, vec2<bool>(false, arg_0.x), vec2<bool>(true, true)), false), vec2<bool>(true & global1.x, global1.x), all(vec4<bool>(arg_0.x, global1.x, true, false))), vec2<bool>(select(global1.x, global1.x, all(global1.zy)), true)));
    global2 = _wgslsmith_div_i32(1i, -13618i);
    return _wgslsmith_f_op_f32(ceil(532f));
}

fn func_1() -> u32 {
    var var_0 = global1.x;
    global2 = -48802i;
    global2 = ~global0.x;
    let var_1 = Struct_1(select(select(global1.xx, !global1.yz, global1.x), global1.zx, vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(340f, 365f, -749f, -1343f) + vec4<f32>(-175f, 1705f, -1040f, 446f))), vec4<f32>(-566f, _wgslsmith_f_op_f32(func_2(vec3<bool>(false, global1.x, true), -2147483647i, u_input.d.x)), _wgslsmith_f_op_f32(1000f + -2295f), -668f), global1.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-861f, -121f, 811f, 1593f) + vec4<f32>(485f, 598f, -1642f, 868f)))))), !(!vec4<bool>(global1.x, false, global1.x, false)))), 4294967295u);
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, u_input.d.x >> (~(~var_1.c) % 32u), _wgslsmith_mult_u32(u_input.d.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_1.c, u_input.d.x, 32328u)), vec3<u32>(var_1.c, 50362u, u_input.d.x)))), _wgslsmith_mult_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x) | select(vec3<u32>(u_input.d.x, 1u, 0u), vec3<u32>(var_1.c, 1u, 4294967295u), var_1.a.x)), vec3<u32>(var_1.c, ~(~u_input.d.x), _wgslsmith_div_u32(var_1.c, u_input.d.x) | ~var_1.c)));
    return 18097u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_add_i32(firstTrailingBit(global0.x), -firstLeadingBit(global0.x << (arg_1.a.c % 32u)) << (arg_1.a.c % 32u));
    var var_1 = firstLeadingBit(4294967295u);
    global2 = global0.x ^ _wgslsmith_sub_i32(~_wgslsmith_sub_i32(global0.x, -46958i), _wgslsmith_mod_i32(~countOneBits(43934i), 11820i));
    global0 = vec2<i32>(1i, _wgslsmith_clamp_i32(arg_1.b, -6636i & ~arg_1.b, global0.x));
    global0 = vec2<i32>(arg_1.b, arg_1.c.x) >> (((vec2<u32>(2075u ^ arg_2.c, 0u) << (vec2<u32>(arg_2.c, ~u_input.d.x) % vec2<u32>(32u))) >> (vec2<u32>(arg_0.x, 54181u) % vec2<u32>(32u))) % vec2<u32>(32u));
    return 8138i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(vec4<u32>(_wgslsmith_mult_u32(4294967295u | func_1(), max(u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 77805u, 0u), vec3<u32>(u_input.d.x, u_input.d.x, 1u)))), ~select(0u, u_input.d.x, true), ~u_input.d.x, select(abs(1u), u_input.d.x, any(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, true, global1.x))))), Struct_2(Struct_1(!(!vec2<bool>(global1.x, false)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-160f, 1127f, 2296f, 641f), vec4<f32>(1239f, 617f, 544f, 935f))), abs(1u >> (u_input.d.x % 32u))), max(-3792i, _wgslsmith_sub_i32(41193i, global0.x)), vec3<i32>(42827i, -30222i, -global0.x)), Struct_1(select(global1.zy, select(!global1.xy, global1.xx, global1.yx), vec2<bool>(global1.x, -1i <= global0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(484f, 1000f, -435f, -490f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -620f, 2041f, -1381f)))), u_input.d.x));
    global2 = u_input.b.x;
    var var_0 = Struct_1(global1.xx, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-543f, 1965f, -449f, 419f), vec4<f32>(-330f, 967f, -155f, 393f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(580f, 363f, -1872f, -495f)))))), select(u_input.d.x << ((~0u | _wgslsmith_clamp_u32(4234u, u_input.d.x, 14446u)) % 32u), u_input.d.x, global1.x || global1.x));
    global0 = ~firstTrailingBit(~_wgslsmith_mod_vec2_i32(u_input.a.wz, reverseBits(vec2<i32>(global0.x, global0.x))));
    global1 = vec3<bool>(true, true, true);
    var_0 = Struct_1(!(!vec2<bool>(var_0.c > 48152u, 0u > u_input.d.x)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-744f)))))), _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-175f + -197f)), -1000f, _wgslsmith_f_op_f32(-var_0.b.x)), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(func_4(~(vec4<u32>(var_0.c, 21682u, 1u, u_input.d.x) & vec4<u32>(4294967295u, 3512u, 27077u, 134369u)), Struct_2(Struct_1(var_0.a, vec4<f32>(1381f, var_0.b.x, -920f, 726f), var_0.c), u_input.c.x, u_input.b), Struct_1(select(var_0.a, global1.yy, var_0.a.x), vec4<f32>(var_0.b.x, -515f, var_0.b.x, var_0.b.x), 6728u)), _wgslsmith_dot_vec4_i32(u_input.c >> (_wgslsmith_div_vec4_u32(vec4<u32>(21681u, u_input.d.x, 111836u, var_0.c), vec4<u32>(u_input.d.x, 17507u, var_0.c, u_input.d.x)) % vec4<u32>(32u)), u_input.a)), ~(~vec2<u32>(func_3(Struct_2(Struct_1(vec2<bool>(var_0.a.x, false), var_0.b, 12355u), u_input.a.x, u_input.a.wyw), vec4<bool>(true, false, global1.x, var_0.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), u_input.d))), u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(var_0.b.x, var_0.b.x, 373f, var_0.b.x)))))));
}

