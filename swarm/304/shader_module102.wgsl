struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1 = Struct_1(-1616f, vec2<f32>(365f, 433f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    global1 = Struct_1(1023f, global1.b);
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global1.a, -958f)), global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-281f, _wgslsmith_f_op_f32(abs(-1000f))) * 312f)));
    var var_2 = _wgslsmith_div_u32(38025u, _wgslsmith_clamp_u32(0u, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.x, abs(80851u), select(global0.x, 525u, true), 0u), arg_0)));
    let var_3 = Struct_1(global1.b.x, global1.b);
    return (abs(u_input.a) | -31478i) & -7228i;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: i32, arg_3: u32) -> f32 {
    global1 = Struct_1(446f, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(1398f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.a - arg_1.x), _wgslsmith_f_op_f32(abs(global1.a))))));
    var var_0 = reverseBits(~_wgslsmith_mod_u32(4294967295u, firstTrailingBit(firstTrailingBit(global0.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(1f, -449f, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(493f)), _wgslsmith_div_f32(-1733f, _wgslsmith_div_f32(arg_1.x, global1.b.x)))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.x, -1356f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -1856f)))) - arg_1.ww))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-1635f - _wgslsmith_f_op_f32(floor(global1.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1303f)))))));
    return global1.a;
}

fn func_2() -> f32 {
    global0 = countOneBits(vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(global0.x, global0.x)), 2018u, ~_wgslsmith_mult_u32(13905u, global0.x), firstTrailingBit(28011u))) & _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, ~global0.x, 69458u, firstTrailingBit(46397u)), abs(vec4<u32>(15504u, 37949u, global0.x, global0.x) | vec4<u32>(44347u, 4294967295u, global0.x, global0.x))), reverseBits(~min(vec4<u32>(28637u, 0u, global0.x, 4294967295u), vec4<u32>(875u, 65193u, global0.x, global0.x))), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x & 2307u, abs(47386u), 11765u, firstTrailingBit(2321u)), ~select(vec4<u32>(global0.x, 1u, 21108u, global0.x), vec4<u32>(global0.x, global0.x, global0.x, 23603u), vec4<bool>(false, true, false, true))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-160f)))) * 942f)), vec2<f32>(741f, _wgslsmith_f_op_f32(func_4(~_wgslsmith_mult_u32(global0.x, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1359f, -903f, -1026f, 1837f)), -11537i | func_3(vec4<u32>(global0.x, global0.x, global0.x, 67054u)), ~abs(167863u)))));
    let var_0 = true;
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(1u, vec4<f32>(-887f, _wgslsmith_div_f32(global1.b.x, global1.b.x), _wgslsmith_f_op_f32(select(global1.b.x, 624f, false)), _wgslsmith_f_op_f32(811f + 1181f)), -u_input.a, 0u))), global1.b);
    let var_1 = Struct_1(410f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_div_f32(global1.a, global1.a))))));
    return global1.b.x;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b.x))), arg_2.b.x, _wgslsmith_f_op_f32(max(arg_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-570f))), _wgslsmith_f_op_f32(func_4(~arg_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 959f, 1104f, arg_2.a)), 17290i, max(global0.x, 20222u)))))), -499f);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -902f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(sign(global1.a)))))), _wgslsmith_f_op_f32(f32(-1f) * -563f), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_1.b.x)), arg_2.b.x)));
    let var_1 = ~_wgslsmith_mult_u32(arg_3.x >> (~(~global0.x) % 32u), 1u);
    let var_2 = arg_2;
    var var_3 = var_2;
    return arg_2;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(-u_input.a, arg_0.x);
    global0 = vec4<u32>(_wgslsmith_dot_vec2_u32(~((vec2<u32>(global0.x, global0.x) ^ vec2<u32>(global0.x, global0.x)) >> ((global0.wy & global0.ww) % vec2<u32>(32u))), global0.xx), abs(_wgslsmith_add_u32(select(global0.x, 94720u, false), 4294967295u)) & 0u, _wgslsmith_add_u32(4294967295u >> (((global0.x ^ 1065u) | ~global0.x) % 32u), ~global0.x), global0.x);
    let var_1 = all(!vec2<bool>(true, !any(vec2<bool>(false, true))));
    var var_2 = func_5(global0.yy, Struct_1(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_vec2_f32(-global1.b)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2, 181f), 184f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(317f + 1688f))))), vec4<u32>(9749u, global0.x, abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(71324u, global0.x), ~global0.x)), global0.x >> (global0.x % 32u)));
    let var_3 = global0.x;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * 934f) + -587f) + 107f)), global1.b);
}

fn func_6(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = 4294967295u;
    let var_1 = func_5(global0.zx, func_5(vec2<u32>(67456u, arg_1), Struct_1(arg_0.a, global1.b), arg_0, max(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, global0.x, global0.x, 1u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), ~vec4<u32>(85602u, 1u, 4294967295u, global0.x))), Struct_1(_wgslsmith_f_op_f32(min(924f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -977f), _wgslsmith_f_op_f32(799f * arg_0.a)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global1.b)), _wgslsmith_f_op_vec2_f32(floor(global1.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(536f, global1.b.x), global1.b, true)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.b.x)))))), vec4<u32>(_wgslsmith_add_u32(49298u, _wgslsmith_dot_vec2_u32(global0.yw, vec2<u32>(4294967295u, arg_1))), _wgslsmith_add_u32(1u, ~4294967295u >> (1u % 32u)), ~abs(0u) << (_wgslsmith_mult_u32(global0.x & 38762u, 21782u | global0.x) % 32u), 7008u));
    let var_2 = func_5(~vec2<u32>(52536u, _wgslsmith_clamp_u32(~global0.x, countOneBits(0u), arg_1 >> (arg_1 % 32u))), Struct_1(-995f, var_1.b), func_5(firstLeadingBit(~firstLeadingBit(global0.xx)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a, -1347f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a, -1213f)))))), func_5(~vec2<u32>(arg_1, 62354u) << (_wgslsmith_mult_vec2_u32(global0.zz, vec2<u32>(0u, 46284u)) % vec2<u32>(32u)), func_1(vec2<i32>(u_input.a, -17848i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), arg_0.b.x), Struct_1(_wgslsmith_f_op_f32(-global1.a), global1.b), _wgslsmith_add_vec4_u32(abs(vec4<u32>(global0.x, global0.x, 4294967295u, 26114u)), ~vec4<u32>(global0.x, 1u, arg_1, 51618u))), ~(vec4<u32>(0u, 84335u, global0.x, global0.x) ^ (vec4<u32>(global0.x, 1u, 1u, 1u) & vec4<u32>(global0.x, global0.x, 4294967295u, global0.x)))), vec4<u32>(_wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(arg_1, 4294967295u), min(arg_1, 1u)) << (4294967295u % 32u), ~select(1u, abs(0u), true), ~_wgslsmith_add_u32(_wgslsmith_div_u32(global0.x, 87103u), ~global0.x), max(~global0.x, ~arg_1) << (abs(~global0.x) % 32u)));
    global1 = func_1(~select(~vec2<i32>(1i, u_input.a) ^ vec2<i32>(73331i, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(43244i, 2147483647i), vec2<i32>(u_input.a, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(-21935i, u_input.a), vec2<i32>(15559i, u_input.a))), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), vec2<i32>(u_input.a, ~_wgslsmith_div_i32(u_input.a ^ 1i, reverseBits(-24573i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(551f - -2357f), 922f)));
    return _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(44841u, _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1, 1u), 28689u))), _wgslsmith_clamp_vec2_u32(global0.xx, _wgslsmith_mod_vec2_u32(reverseBits(~vec2<u32>(arg_1, arg_1)), global0.wy), select(firstLeadingBit(vec2<u32>(13142u, 0u)), ~global0.xx, true) | _wgslsmith_mult_vec2_u32(abs(global0.wy), ~global0.ww)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.a);
    global0 = _wgslsmith_mod_vec4_u32(min(vec4<u32>(~min(1u, 4294967295u), global0.x, global0.x, func_6(func_1(vec2<i32>(u_input.a, -29557i), vec2<i32>(-2934i, u_input.a), global1.b.x), _wgslsmith_sub_u32(global0.x, global0.x))), (~vec4<u32>(14059u, 4963u, 2735u, 1u) ^ vec4<u32>(global0.x, global0.x, 4294967295u, global0.x)) & min(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 0u, 4294967295u, global0.x), vec4<u32>(18318u, global0.x, global0.x, 83698u)), firstTrailingBit(vec4<u32>(0u, global0.x, 26367u, global0.x)))), vec4<u32>(_wgslsmith_mod_u32(~(~global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), ~vec4<u32>(global0.x, 0u, 92825u, 38364u))), abs(~0u) & ~_wgslsmith_sub_u32(global0.x, global0.x), global0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, global0.x, global0.x, global0.x), ~vec4<u32>(31271u, 1u, 14390u, global0.x) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0.x, 4294967295u, global0.x), vec4<u32>(29536u, 33756u, global0.x, global0.x)))));
    var var_1 = abs(~(-(u_input.a & (u_input.a | -1i))));
    var var_2 = -vec2<i32>(~(-(u_input.a & 2147483647i)), ~(~(-2147483647i) | (u_input.a | -1i)));
    let var_3 = false;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(round(func_1(-reverseBits(vec2<i32>(-55100i, var_2.x)), vec2<i32>(var_2.x >> (global0.x % 32u), ~var_2.x), global1.b.x).a)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.b.x)))), -1177f));
    var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, var_2.x), abs(min(min(vec2<i32>(u_input.a, var_2.x), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, 1i) >> (global0.ww % vec2<u32>(32u))))), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(var_2.x, 0i, 1i, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -15105i), vec4<i32>(var_2.x, -2147483647i, var_2.x, var_2.x))), vec4<i32>(var_2.x << (global0.x % 32u), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, -31444i), vec2<i32>(var_2.x, u_input.a)), ~12941i)), ~(-14216i)), vec2<i32>(u_input.a, var_2.x));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_f_op_f32(var_4.b.x - var_4.a)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(106f + 177f), _wgslsmith_f_op_f32(abs(global1.b.x)))), var_3)));
    let var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(941f, _wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.b.x - var_6.b.x) * func_1(vec2<i32>(var_2.x, 2147483647i), vec2<i32>(-1i, u_input.a), 203f).a))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(global1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-590f, var_6.a) + _wgslsmith_f_op_f32(trunc(992f))), var_4.b.x))), _wgslsmith_f_op_f32(func_1(_wgslsmith_mult_vec2_i32(-vec2<i32>(-2147483647i, var_2.x), ~vec2<i32>(var_2.x, 0i)), vec2<i32>(select(-39729i, -11407i, false), var_2.x), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1246f + -1057f))).b.x + _wgslsmith_f_op_f32(step(1571f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - var_5.a), _wgslsmith_f_op_f32(var_6.b.x - var_6.a), select(var_3, var_3, true)))))), u_input.a, countOneBits(vec4<i32>(-1i) * -reverseBits(vec4<i32>(u_input.a, -27798i, 2147483647i, var_2.x))));
}

