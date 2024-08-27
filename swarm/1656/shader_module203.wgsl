struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(Struct_1(true, -8416i, vec2<u32>(12223u, 4294967295u)), -279f, 15919u, Struct_1(false, -14696i, vec2<u32>(34990u, 35312u)), vec3<i32>(0i, 2147483647i, 4585i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> bool {
    let var_0 = Struct_2(global1.d, global1.b, _wgslsmith_sub_u32(30575u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, global0.c.x)), vec2<u32>(global1.d.c.x, _wgslsmith_div_u32(u_input.c, u_input.c)))), global1.a, _wgslsmith_div_vec3_i32(vec3<i32>(~(~global1.e.x), i32(-1i) * -22004i, 1i << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.c, global1.d.c.x), vec3<u32>(1u, global1.c, global0.c.x)) % 32u)), ~vec3<i32>(arg_0, max(global1.a.b, -1i), -1i)));
    var var_1 = firstTrailingBit(var_0.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + 2699f)), _wgslsmith_f_op_f32(-var_0.b), -1551f) + _wgslsmith_f_op_vec3_f32(arg_1.wyz * arg_1.yzw));
    let var_3 = Struct_1(global1.a.a, -1i, min(global0.c, _wgslsmith_sub_vec2_u32(~(global1.d.c << (var_0.d.c % vec2<u32>(32u))), min(vec2<u32>(17495u, 35017u), global1.d.c) >> (~global0.c % vec2<u32>(32u)))));
    var_1 = 0u;
    return false;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = vec3<i32>(~(-2147483647i), firstLeadingBit(max(-_wgslsmith_clamp_i32(-43608i, u_input.b.x, global1.e.x), 2147483647i >> (firstLeadingBit(10481u) % 32u))), firstTrailingBit(firstTrailingBit(-1i)));
    var var_1 = Struct_3(-2012f, Struct_1((!global1.a.a && func_3(arg_0.x, vec4<f32>(187f, -963f, 290f, global1.b))) && true, ~var_0.x, vec2<u32>(u_input.c, ~_wgslsmith_clamp_u32(u_input.c, 31217u, 8073u))));
    var var_2 = global1.a;
    let var_3 = _wgslsmith_sub_i32(1i, ~(i32(-1i) * -_wgslsmith_clamp_i32(1141i, -14245i, var_2.b)));
    var_2 = Struct_1(!((arg_1.x && global0.a) | var_2.a), select(global0.b, var_1.b.b, false & any(vec3<bool>(true, true, true))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(11535u, 0u) >> (var_1.b.c % vec2<u32>(32u)), var_1.b.c & vec2<u32>(var_2.c.x, 4294967295u), (var_2.c >> (vec2<u32>(42205u, u_input.c) % vec2<u32>(32u))) >> (vec2<u32>(2935u, var_2.c.x) % vec2<u32>(32u))));
    return var_1.b;
}

fn func_1() -> Struct_3 {
    global0 = func_2(vec4<i32>(-2147483647i, -20818i, max(-_wgslsmith_clamp_i32(global0.b, 1i, 16555i), abs(-20283i)), ~4115i), vec2<bool>(false, all(!select(vec3<bool>(false, false, global0.a), vec3<bool>(true, false, global0.a), vec3<bool>(global1.a.a, false, true)))));
    global0 = global1.d;
    global1 = Struct_2(func_2(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-17002i, global1.a.b, -2147483647i, global1.d.b)), u_input.a | vec4<i32>(-2147483647i, 24543i, u_input.b.x, global0.b)), ~(u_input.a << (vec4<u32>(global0.c.x, 0u, 1u, 0u) % vec4<u32>(32u)))), vec2<bool>(4294967295u >= u_input.c, func_3(u_input.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(137f, global1.b, -1765f, -743f) - vec4<f32>(global1.b, global1.b, -1000f, -1256f))))), 873f, global1.a.c.x, func_2(vec4<i32>(global0.b, global1.a.b & firstTrailingBit(global0.b), u_input.a.x, global0.b), !vec2<bool>(!global1.d.a, global1.a.a)), vec3<i32>(_wgslsmith_mod_i32(countOneBits(global0.b << (u_input.c % 32u)), -19223i), -u_input.b.x, 1i));
    var var_0 = vec4<bool>(false, true & !(_wgslsmith_add_i32(global1.e.x, global1.a.b) < u_input.b.x), all(vec2<bool>(all(select(vec3<bool>(global1.d.a, global0.a, global1.d.a), vec3<bool>(false, true, true), false)), func_2(vec4<i32>(u_input.b.x, 2147483647i, global1.e.x, u_input.a.x), vec2<bool>(true, global1.a.a)).a)), false && all(select(select(vec2<bool>(global0.a, false), vec2<bool>(global1.a.a, true), vec2<bool>(false, true)), !vec2<bool>(global0.a, false), vec2<bool>(global1.d.a, global0.a))));
    let var_1 = !vec4<bool>(344f > _wgslsmith_f_op_f32(-global1.b), reverseBits(45994u) > global0.c.x, !var_0.x, _wgslsmith_add_u32(~global1.d.c.x, 61284u) > ~global0.c.x);
    return Struct_3(global1.b, global1.a);
}

fn func_4(arg_0: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_f32(160f - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1669f) * _wgslsmith_f_op_f32(f32(-1f) * -352f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(650f, -330f, arg_0.b.a)), _wgslsmith_f_op_f32(arg_0.a + -268f))), arg_0.a));
    var var_1 = -(global1.e.yy ^ _wgslsmith_mult_vec2_i32(~(~u_input.a.xw), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.b, 12754i), select(vec2<i32>(1i, global0.b), u_input.a.wz, true))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - arg_0.a) + 1f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -557f), _wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(241f * _wgslsmith_f_op_f32(-arg_0.a))))), global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-arg_0.a)) * 144f) * _wgslsmith_f_op_f32(global1.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(ceil(-2191f))))), -642f);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1333f), _wgslsmith_div_f32(-1000f, arg_0.a))));
    let var_4 = var_2;
    return !(!global1.d.a);
}

fn func_5(arg_0: bool, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_2(func_1().b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global1.b))), global0.c.x, Struct_1(true, ~(~global1.e.x), ~_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 0u), ~vec2<u32>(global0.c.x, global1.c))), vec3<i32>(_wgslsmith_dot_vec4_i32(abs(u_input.a) & (u_input.a ^ vec4<i32>(-2147483647i, global0.b, global1.a.b, global1.a.b)), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 0i, global0.b, global0.b), u_input.a))), -abs(-1i), ((u_input.a.x >> (global1.a.c.x % 32u)) >> (min(u_input.c, u_input.c) % 32u)) | (-1i & global0.b)));
    var var_1 = global1.b;
    var var_2 = -_wgslsmith_mult_i32(0i, -4061i);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2262f, global1.b));
    var var_3 = !(var_0.d.c.x < ~(~(~global1.a.c.x)));
    return Struct_3(326f, Struct_1(_wgslsmith_f_op_f32(sign(-480f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b, var_0.b)) - _wgslsmith_f_op_f32(ceil(1630f))), _wgslsmith_clamp_i32(var_0.e.x & global0.b, abs(12310i), -1i | global1.e.x) & (1i << (1u % 32u)), var_0.d.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1()), !select(vec4<bool>(false, true, true, true), vec4<bool>(global0.a, global0.a, global0.a & global0.a, any(vec2<bool>(global1.a.a, false))), true));
    let var_1 = global0.b;
    global0 = var_0.b;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), global1.b, _wgslsmith_f_op_f32(sign(global1.b)));
    let var_3 = func_4(func_1());
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_i32(_wgslsmith_div_i32(abs(2147483647i), -var_0.b.b), ~firstLeadingBit(1i), ~var_0.b.b & abs(u_input.a.x))), -global0.b << (~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, var_0.b.c.x), global0.c)) % 32u));
}

