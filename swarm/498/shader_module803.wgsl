struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), 67251i, 1u, vec2<i32>(12492i, 1i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_1.x, -284f, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-537f, arg_1.x, -1029f, 1571f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, arg_1.x, 482f, 1682f), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -555f), vec4<bool>(true, false, global0.a.x, global0.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1623f, arg_1.x, -243f, arg_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)))), any(vec3<bool>(arg_0.d.x != -1i, any(vec3<bool>(arg_0.a.x, false, global0.a.x)), !arg_2.a.x))))));
    let var_1 = Struct_1(vec2<bool>(false, min(_wgslsmith_clamp_i32(arg_2.b, arg_0.b, 2147483647i), firstLeadingBit(arg_2.b)) == global0.d.x), 28346i, ~arg_0.c, _wgslsmith_div_vec2_i32((arg_2.d | ~arg_0.d) & vec2<i32>(~0i, -arg_0.d.x), global0.d));
    global0 = Struct_1(arg_0.a, 6469i, var_1.c, -arg_2.d);
    let var_2 = -611f;
    var var_3 = var_1.a.x;
    return _wgslsmith_dot_vec2_u32(~firstTrailingBit(select(vec2<u32>(85643u, 4294967295u), min(u_input.a, u_input.a), select(arg_2.a, var_1.a, vec2<bool>(var_1.a.x, arg_2.a.x)))), ~(u_input.a ^ ~_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(0u, arg_0.c))));
}

fn func_2() -> vec3<u32> {
    let var_0 = ~firstTrailingBit(~(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)) & vec3<u32>(u_input.a.x, ~u_input.a.x, countOneBits(47007u)));
    var var_1 = global0.a;
    let var_2 = min(vec4<u32>(u_input.a.x, func_3(Struct_1(global0.a, 83015i, 1u, global0.d), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-737f, -352f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1815f, 369f)))), Struct_1(vec2<bool>(true, var_1.x), -global0.d.x, _wgslsmith_mod_u32(12770u, global0.c), ~global0.d)), reverseBits(global0.c << (global0.c % 32u)) << (global0.c % 32u), 17449u), vec4<u32>(_wgslsmith_mod_u32(var_0.x, _wgslsmith_dot_vec3_u32(var_0, var_0)) & _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(var_0.x, 52029u)), var_0.x, 0u, global0.c));
    var var_3 = Struct_1(vec2<bool>(!global0.a.x, select(false, any(select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, global0.a.x), var_1.x)), !var_1.x)), ~(-min(~global0.b, 7196i << (global0.c % 32u))), 59577u, -vec2<i32>(1i, global0.b) >> (~(~(~vec2<u32>(u_input.a.x, 50534u))) % vec2<u32>(32u)));
    var var_4 = 1u;
    return ~select(~var_2.wyy, max(var_0, vec3<u32>(firstLeadingBit(var_3.c), var_2.x, 11511u)), any(vec4<bool>(false, true, true, var_3.c > global0.c)));
}

fn func_1() -> vec3<u32> {
    let var_0 = select(vec2<i32>(20556i, global0.d.x), firstLeadingBit(vec2<i32>(max(global0.b, global0.d.x), 48361i)), global0.a);
    return ~func_2();
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_1(vec2<bool>(false, false), arg_1.d.x, 4294967295u, -vec2<i32>(countOneBits(firstTrailingBit(global0.b)), min(-671i, global0.d.x)));
    var var_0 = _wgslsmith_div_u32(arg_0.x, min(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, 21352u), arg_0.x >> (1u % 32u)), _wgslsmith_mult_u32(~global0.c, global0.c)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1.c, ~1u), u_input.a.x)));
    let var_1 = firstTrailingBit(-vec3<i32>(reverseBits(-global0.d.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.d.x, global0.b, -2147483647i), vec3<i32>(1i, 1i, arg_1.b)), ~arg_1.d.x), firstTrailingBit(i32(-1i) * -1i)));
    var var_2 = Struct_1(vec2<bool>(true, !any(vec3<bool>(true, global0.a.x, arg_1.a.x))), 26226i, _wgslsmith_sub_u32(arg_0.x, u_input.a.x), ~(~vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, arg_1.d.x, -2147483647i), select(1i, -6998i, false))));
    var_2 = arg_1;
    return Struct_1(vec2<bool>(!(!(var_2.a.x == global0.a.x)), all(!(!arg_1.a))), ~var_2.b, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.c, global0.c, 88012u, 65053u), vec4<u32>(var_2.c, u_input.a.x, u_input.a.x, var_2.c))), firstLeadingBit(min(vec4<u32>(1u, 49094u, arg_0.x, var_2.c), vec4<u32>(arg_1.c, u_input.a.x, u_input.a.x, arg_0.x)))) | u_input.a.x, vec2<i32>(var_1.x, _wgslsmith_div_i32(-global0.d.x, -2147483647i)));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>) -> StorageBuffer {
    global0 = arg_1;
    global0 = Struct_1(vec2<bool>(true, false), ~arg_1.d.x, _wgslsmith_add_u32(global0.c, firstLeadingBit(~13472u & _wgslsmith_mod_u32(global0.c, global0.c))), arg_1.d);
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~0u, _wgslsmith_clamp_u32(~0u, ~1789u, ~u_input.a.x), _wgslsmith_clamp_u32(arg_1.c, global0.c, 4294967295u)), func_2().x, global0.c), vec3<u32>(u_input.a.x, ~global0.c, ~_wgslsmith_mult_u32(abs(0u), 0u)));
    var var_1 = select(max(arg_2.x, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(4015i, arg_1.d.x, 0i, global0.b)), ~(-vec4<i32>(-6503i, 1i, global0.b, 0i)))), arg_1.d.x, global0.c >= ~func_3(arg_1, vec2<f32>(-1253f, 457f), func_4(vec3<u32>(arg_1.c, global0.c, 0u), Struct_1(vec2<bool>(arg_1.a.x, global0.a.x), global0.b, 0u, global0.d))));
    let var_2 = _wgslsmith_mod_vec4_i32(min(_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_1.b, 436i, arg_1.d.x, -11602i), vec4<i32>(arg_2.x, arg_1.d.x, 25196i, 16353i) & vec4<i32>(arg_1.d.x, arg_1.b, 25398i, 1i)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(-63133i, 10708i, 21760i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-25285i, 2147483647i, arg_2.x, -5194i), vec4<i32>(19294i, arg_2.x, -5142i, arg_2.x), vec4<i32>(arg_2.x, 0i, arg_2.x, -38212i)))) << (firstLeadingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, global0.c, 20685u, var_0.x), vec4<u32>(global0.c, global0.c, 4294967295u, var_0.x) & vec4<u32>(var_0.x, 22442u, u_input.a.x, 54598u), vec4<u32>(123045u, 4294967295u, 122745u, arg_1.c))) % vec4<u32>(32u)), ~max(vec4<i32>(3313i, arg_2.x << (arg_1.c % 32u), _wgslsmith_clamp_i32(global0.d.x, 0i, global0.d.x), _wgslsmith_mod_i32(global0.d.x, arg_2.x)), vec4<i32>(-arg_1.d.x, 2147483647i, _wgslsmith_clamp_i32(global0.d.x, arg_1.b, 59734i), 0i)));
    return StorageBuffer(abs(vec4<i32>(73533i, min(arg_1.d.x, 7372i), ~(i32(-1i) * -731i), arg_1.d.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~13982u, 1u, 1u), ~var_0), vec3<u32>(~func_1().x, select(func_4(vec3<u32>(var_0.x, u_input.a.x, global0.c), arg_1).c, ~4294967295u, arg_1.a.x), 27266u)), ~(~(~vec4<u32>(23334u, u_input.a.x, arg_1.c, u_input.a.x))) >> (reverseBits(~vec4<u32>(0u, arg_1.c, var_0.x, 22978u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(831f + -152f), -1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(931f, -263f, false)), 1353f, _wgslsmith_f_op_f32(1416f + 313f)), vec3<f32>(-156f, -172f, _wgslsmith_div_f32(-1291f, -941f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-660f, 425f, -1451f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(!global0.a, select(global0.a, !global0.a, global0.a), true), abs(6990i) & _wgslsmith_div_i32(global0.b, _wgslsmith_sub_i32(-4518i, global0.b)), reverseBits(countOneBits(u_input.a.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~2147483647i), ~min(vec2<i32>(global0.b, 1i), global0.d)), -2147483647i));
    var var_0 = global0.c;
    var var_1 = vec3<bool>(global0.a.x, all(global0.a), !all(select(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), !vec3<bool>(global0.a.x, global0.a.x, false), !vec3<bool>(global0.a.x, false, global0.a.x))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(927f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) + 177f), global0.a.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1834f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -978f) + _wgslsmith_f_op_f32(sign(339f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, 401f))))));
    let var_3 = vec2<bool>(false, var_1.x);
    var var_4 = _wgslsmith_mult_u32(0u, global0.c);
    let var_5 = select(var_1.xy, vec2<bool>(global0.a.x, !((17135u != u_input.a.x) || true)), var_3);
    let x = u_input.a;
    s_output = func_5(true, func_4(func_1(), Struct_1(select(vec2<bool>(false, var_1.x), global0.a, var_2 < var_2), _wgslsmith_sub_i32(i32(-1i) * -12725i, reverseBits(global0.d.x)), global0.c, _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, global0.d.x), vec2<i32>(global0.d.x, 2147483647i), vec2<i32>(0i, global0.d.x)), global0.d, -global0.d))), global0.d);
}

