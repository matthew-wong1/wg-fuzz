struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
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

var<private> global0: vec3<u32> = vec3<u32>(0u, 0u, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: i32) -> i32 {
    global0 = ~(~(~u_input.c)) | u_input.b;
    var var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-642f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2613f - -2114f) - _wgslsmith_f_op_f32(f32(-1f) * -392f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-357f * 1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) + _wgslsmith_f_op_f32(select(var_0.x, 973f, arg_0)))), var_0.x) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(min(1061f, var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-515f, var_0.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 356f)))))));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.x)))))), 146f), -886f);
    global0 = vec3<u32>(countOneBits(_wgslsmith_sub_u32(u_input.c.x << (0u % 32u), global0.x)), 4294967295u, _wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(global0.x, global0.x) >> (~vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)))) ^ ~_wgslsmith_mod_vec3_u32(min(vec3<u32>(u_input.c.x, u_input.b.x, u_input.c.x), ~u_input.b), u_input.b);
    return select(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 15250i, u_input.d, arg_2), u_input.a) >> (_wgslsmith_mod_u32(u_input.b.x, firstTrailingBit(u_input.c.x << (global0.x % 32u))) % 32u), -arg_2, false);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(!vec3<bool>(false, any(vec4<bool>(true, arg_3.a.a.x, false, false)), arg_1)), arg_3.a, Struct_1(arg_3.b.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(arg_2, _wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(833f, -1147f)))) + _wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(round(arg_2))))), var_0.a.a.yz));
    global0 = u_input.c;
    global0 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 1u, global0.x) & vec3<u32>(_wgslsmith_mult_u32(global0.x, global0.x) & 1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(global0.x, 3468u)), ~global0.x), abs(~global0.x)), firstLeadingBit(~firstLeadingBit(vec3<u32>(u_input.b.x, 0u, 15444u))));
    global0 = ~min(abs(select(vec3<u32>(u_input.b.x, 45271u, u_input.b.x) >> (u_input.c % vec3<u32>(32u)), vec3<u32>(30284u, 30459u, global0.x) ^ u_input.b, true)), _wgslsmith_sub_vec3_u32(~u_input.b ^ vec3<u32>(global0.x, 40214u, 59090u), vec3<u32>(~global0.x, 8752u << (1u % 32u), _wgslsmith_mod_u32(u_input.b.x, 3660u))));
    return arg_3;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = ~(~max(firstTrailingBit(vec2<u32>(64511u, arg_2)), u_input.b.xz)) ^ vec2<u32>(arg_2, max(1u, 77365u));
    global0 = ~(~u_input.c);
    global0 = abs(vec3<u32>(~4294967295u, ~arg_2, _wgslsmith_mult_u32(60246u, firstLeadingBit(_wgslsmith_div_u32(1u, global0.x)))));
    let var_1 = -1154f;
    global0 = u_input.c;
    return func_3(u_input.a.ww, true, vec2<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), arg_0).c;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: bool) -> Struct_1 {
    global0 = u_input.c | _wgslsmith_add_vec3_u32(u_input.b, ~_wgslsmith_add_vec3_u32(vec3<u32>(56723u, global0.x, u_input.c.x), u_input.c));
    var var_0 = func_4(func_3(vec2<i32>((1i & arg_0.x) ^ -2147483647i, func_2(!arg_2, !vec3<bool>(false, true, arg_2), _wgslsmith_mod_i32(9444i, u_input.d))), true, vec2<f32>(357f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-857f * -1000f) - _wgslsmith_f_op_f32(-583f * -1048f))), Struct_2(Struct_1(!vec3<bool>(arg_2, false, false)), Struct_1(!vec3<bool>(arg_2, true, false)), Struct_1(!vec3<bool>(arg_2, true, true)))), vec2<i32>(min(_wgslsmith_mult_i32(-1i, u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.x, u_input.d, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -35219i))), -1i) << (abs(vec2<u32>(~u_input.b.x, 1u)) % vec2<u32>(32u)), ~countOneBits(~1u));
    let var_1 = abs(abs(~(~firstTrailingBit(vec4<u32>(arg_1, 15131u, global0.x, global0.x)))));
    global0 = vec3<u32>(arg_1, u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(reverseBits(var_1.x), abs(65362u), var_1.x ^ 34965u) >> (u_input.c % vec3<u32>(32u))));
    var var_2 = u_input.d;
    return Struct_1(var_0.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    global0 = vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(global0.x, u_input.c.x) & u_input.c.x, 4294967295u), _wgslsmith_div_u32(~81010u, _wgslsmith_dot_vec3_u32(firstTrailingBit(~u_input.b), (u_input.c >> (u_input.b % vec3<u32>(32u))) & select(vec3<u32>(u_input.b.x, 37178u, 27392u), u_input.b, arg_0.a.x))), _wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_mult_vec3_u32(abs(_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(4294967295u, 1u, global0.x))), u_input.c)));
    global0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~(9974u | reverseBits(u_input.b.x)), 32295u, 4294967295u), _wgslsmith_mult_vec3_u32(u_input.c, u_input.c));
    global0 = vec3<u32>(57760u, (select(min(global0.x, 81144u), u_input.c.x, arg_0.a.x) >> (global0.x % 32u)) >> (u_input.b.x % 32u), 88337u);
    let var_0 = -firstTrailingBit(vec3<i32>(abs(~u_input.a.x), -(i32(-1i) * -2147483647i), firstTrailingBit(u_input.d) ^ 0i));
    global0 = u_input.b;
    return _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-u_input.a, u_input.a ^ vec4<i32>(u_input.d, 1i, var_0.x, 0i)), vec4<i32>(1i, func_2(arg_1.c.a.x, arg_0.a, -10051i), var_0.x, 0i)), var_0.x), -8461i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    let var_1 = vec3<i32>(u_input.a.x, func_5(func_1(u_input.a.xy, ~(~1u), true || (global0.x < global0.x)), Struct_2(Struct_1(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), func_3(_wgslsmith_add_vec2_i32(u_input.a.zw, vec2<i32>(var_0, 4589i)), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 907f)), Struct_2(Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false)))).b, func_1(u_input.a.xy, ~4206u, true))), _wgslsmith_mod_i32(i32(-1i) * -54093i, -u_input.a.x));
    var var_2 = firstTrailingBit(u_input.b.x) >= u_input.c.x;
    var var_3 = u_input.c;
    let var_4 = func_3(reverseBits(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -2392i), vec2<i32>(-41135i, u_input.d) >> (global0.zy % vec2<u32>(32u)), ~var_1.yx)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1202f, -458f), -1906f)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1229f, -1889f))), vec2<f32>(1f, 1f)))), Struct_2(Struct_1(select(vec3<bool>(false, true, false), func_3(vec2<i32>(var_0, var_1.x), false, vec2<f32>(-206f, 788f), Struct_2(Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false)))).a.a, vec3<bool>(false, true, false))), Struct_1(vec3<bool>(true, true, true)), Struct_1(func_3(vec2<i32>(var_1.x, u_input.d), true, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-466f, -185f))), func_3(var_1.zy, false, vec2<f32>(282f, 1053f), Struct_2(Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false))))).b.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

