struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
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

var<private> global0: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(Struct_4(2092f, false)), Struct_5(Struct_4(158f, true)), Struct_5(Struct_4(-665f, true)), Struct_5(Struct_4(1149f, false)), Struct_5(Struct_4(-692f, false)), Struct_5(Struct_4(402f, true)), Struct_5(Struct_4(-664f, false)), Struct_5(Struct_4(-937f, true)), Struct_5(Struct_4(881f, true)), Struct_5(Struct_4(131f, false)), Struct_5(Struct_4(442f, false)), Struct_5(Struct_4(1854f, true)), Struct_5(Struct_4(-882f, false)), Struct_5(Struct_4(-894f, true)), Struct_5(Struct_4(-1967f, true)), Struct_5(Struct_4(1868f, true)), Struct_5(Struct_4(1361f, true)), Struct_5(Struct_4(1036f, false)), Struct_5(Struct_4(453f, true)), Struct_5(Struct_4(1456f, false)), Struct_5(Struct_4(187f, true)), Struct_5(Struct_4(-1735f, false)), Struct_5(Struct_4(-1848f, false)), Struct_5(Struct_4(-331f, false)), Struct_5(Struct_4(-581f, false)), Struct_5(Struct_4(-1587f, false)), Struct_5(Struct_4(823f, false)), Struct_5(Struct_4(-216f, true)), Struct_5(Struct_4(-1087f, false)), Struct_5(Struct_4(1236f, true)), Struct_5(Struct_4(-148f, false)), Struct_5(Struct_4(102f, false)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = select(!(!(!select(vec4<bool>(false, arg_0.b.c.x, true, true), vec4<bool>(true, arg_0.b.b.x, true, arg_0.b.c.x), false))), vec4<bool>(any(vec4<bool>(true, true, u_input.b <= u_input.a.x, 21136u >= u_input.a.x)), true, !(!(arg_0.b.b.x | arg_0.b.b.x)), true), any(select(!vec3<bool>(arg_0.b.a, true, false), arg_0.b.c, arg_0.b.c)));
    global0 = array<Struct_5, 32>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(-337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-639f))))), -1078f, _wgslsmith_div_f32(1000f, -1317f));
    var var_2 = !any(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(var_0.x, false, var_0.x, false), true), vec4<bool>(false, false, false, var_0.x), var_0.x));
    let var_3 = arg_0.b;
    return var_1;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> Struct_4 {
    global0 = array<Struct_5, 32>();
    var var_0 = abs(_wgslsmith_mod_u32(firstLeadingBit(min(arg_1.x, 27861u)) ^ arg_1.x, u_input.a.x));
    let var_1 = Struct_3(!all(vec2<bool>(select(false, false, true), true)), Struct_2(4294967295u, Struct_1(true, vec2<bool>(true, true), vec3<bool>(true, true, true)), 1i >> (~(arg_1.x ^ u_input.a.x) % 32u), _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(-5909i), -1i, _wgslsmith_clamp_i32(u_input.c, u_input.c, 2147483647i), u_input.c | 47080i), vec4<i32>(reverseBits(-6526i), ~u_input.c, u_input.c, ~arg_0)), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(~u_input.a.x, Struct_1(true, vec2<bool>(true, false), vec3<bool>(true, true, true)), ~arg_0, -vec4<i32>(arg_0, -15079i, 1i, arg_0), vec3<f32>(1f, 1f, 1f))))));
    return Struct_4(-598f, true);
}

fn func_1() -> vec3<u32> {
    let var_0 = func_2(i32(-1i) * -1i, _wgslsmith_div_vec2_u32(u_input.a.yx, ~min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))));
    global0 = array<Struct_5, 32>();
    var var_1 = Struct_3(false, Struct_2(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.a.x), vec3<u32>(u_input.b, 67150u, 4294967295u)), ~u_input.b), Struct_1(true, select(!vec2<bool>(true, var_0.b), select(vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, false)), true), vec3<bool>(select(false, var_0.b, var_0.b), true, any(vec2<bool>(var_0.b, true)))), u_input.c ^ 2997i, _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-50197i, u_input.c), vec2<i32>(u_input.c, 1i)), u_input.c, u_input.c >> (u_input.a.x % 32u)), vec4<i32>(u_input.c, firstTrailingBit(u_input.c), -u_input.c, countOneBits(u_input.c)), firstTrailingBit(-vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(300f, -861f, var_0.a) + vec3<f32>(var_0.a, 1000f, 1203f)))))));
    let var_2 = any(!(!(!select(vec3<bool>(false, true, true), var_1.b.b.c, var_1.b.b.c))));
    var var_3 = Struct_2(1u, Struct_1(!all(vec4<bool>(false, true, var_0.b, false)) != var_0.b, vec2<bool>(!(var_1.b.b.a && var_2), var_0.b), !var_1.b.b.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-20270i, 76639i, 1i, select(~u_input.c, var_1.b.d.x >> (u_input.b % 32u), false)), var_1.b.d), select(~(~vec4<i32>(u_input.c, u_input.c, var_1.b.c, -18753i)), select(firstTrailingBit(var_1.b.d) & abs(vec4<i32>(u_input.c, -87451i, u_input.c, var_1.b.c)), ~select(var_1.b.d, vec4<i32>(-2147483647i, -15465i, u_input.c, u_input.c), vec4<bool>(var_1.a, false, var_2, var_0.b)), select(select(vec4<bool>(false, var_2, var_1.a, var_2), vec4<bool>(true, false, var_0.b, false), false), !vec4<bool>(true, false, true, var_0.b), 0u <= var_1.b.a)), all(select(select(vec2<bool>(var_0.b, var_2), vec2<bool>(true, var_0.b), var_1.b.b.b), !var_1.b.b.b, select(vec2<bool>(true, true), var_1.b.b.c.zz, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(180f + _wgslsmith_f_op_f32(round(1455f))), var_1.b.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f) * _wgslsmith_f_op_f32(var_0.a * var_1.b.e.x)))));
    return u_input.a.yxy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 32>();
    global0 = array<Struct_5, 32>();
    var var_0 = func_1();
    var var_1 = _wgslsmith_mod_vec3_u32(u_input.a.xyx, vec3<u32>(var_0.x, ~53014u | (var_0.x ^ ~1u), ~0u));
    var_0 = u_input.a.zzy;
    var var_2 = countOneBits(var_1.x);
    let var_3 = select(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), true), vec3<bool>(true, true, true), !all(vec2<bool>(false, false))), !vec3<bool>(u_input.c == u_input.c, any(vec4<bool>(false, true, true, true)), false), vec3<bool>(true, true, true)), vec3<bool>((_wgslsmith_clamp_u32(1u, 32811u, 1u) | _wgslsmith_clamp_u32(0u, 19867u, 8944u)) != countOneBits(var_1.x), false, !(~u_input.c >= _wgslsmith_div_i32(0i, u_input.c))), select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), any(vec3<bool>(false, true, true))), vec3<bool>(true, true, true), true & any(vec4<bool>(false, false, false, true))), vec3<bool>(select(true, true, true), all(vec4<bool>(false, false, true, false)) | false, false), select(vec3<bool>(true, true, true), vec3<bool>(func_2(u_input.c, var_1.yy).b, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), true))));
    global0 = array<Struct_5, 32>();
    var_0 = max(~vec3<u32>(var_1.x, ~var_0.x, var_1.x), vec3<u32>(48824u, ~var_1.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.wzz, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_0.x, 3172u), u_input.a.zxy)), ~abs(u_input.a.wwx))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(func_1().x, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(14238u, var_1.x, var_0.x), vec3<u32>(u_input.b, u_input.b, var_0.x)))));
}

