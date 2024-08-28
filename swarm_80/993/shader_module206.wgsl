struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: u32 = 1u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<u32>) -> bool {
    let var_0 = 0i;
    var var_1 = ~select(arg_2.wwx, reverseBits(_wgslsmith_mod_vec3_u32(~arg_2.ywy, vec3<u32>(0u, 11221u, 46187u) & arg_2.zyz)), global0.zww);
    let var_2 = ~(~_wgslsmith_dot_vec4_i32(max(vec4<i32>(-1i, -1i, var_0, arg_1.b.e.x), vec4<i32>(arg_1.a.b, arg_0.e.x, -103733i, var_0)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.b, 10237i, 2147483647i, -12671i), vec4<i32>(0i, 21079i, arg_1.a.e.x, arg_0.b)))) >= ~reverseBits(2147483647i);
    var var_3 = 1u;
    var var_4 = Struct_3(arg_1.c, Struct_1(true, ~arg_1.c.b, arg_1.a.c, 2263f, _wgslsmith_add_vec2_i32(arg_1.a.e, vec2<i32>(firstLeadingBit(arg_0.b), arg_1.b.b))), arg_1.b);
    return true;
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    global1 = _wgslsmith_dot_vec2_u32(u_input.a, arg_0.xy);
    global1 = u_input.b;
    global0 = select(select(select(vec4<bool>(true, global0.x, true, !global0.x), !vec4<bool>(global0.x, global0.x, global0.x, true), global0.x), select(vec4<bool>(global0.x, true, true, true), !(!vec4<bool>(false, global0.x, global0.x, global0.x)), all(global0.wyz)), all(!(!vec4<bool>(true, global0.x, global0.x, global0.x)))), !select(vec4<bool>(select(false, true, global0.x), global0.x, !global0.x, !global0.x), !vec4<bool>(global0.x, true, global0.x, true), select(!vec4<bool>(global0.x, global0.x, true, global0.x), select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(true, false, global0.x, false), global0.x), any(vec4<bool>(global0.x, true, true, false)))), global0.x);
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_div_f32(1736f, 433f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(761f, 654f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(617f, 1000f)), global0.x & false))) * vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1000f, -215f)))), _wgslsmith_f_op_f32(abs(-1741f)))), Struct_1(false, firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(36295i, -72159i), vec2<i32>(-12448i, 2147483647i)), -vec2<i32>(22917i, 0i))), global0.wy, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-978f, 1721f)), -1809f)))), max(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(61235i, -60034i), vec2<i32>(4757i, 70346i))), vec2<i32>(1i, 1i))), Struct_1(true, 1i, global0.wx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1032f, 1732f))), vec2<i32>(0i, 1i)), ~(~vec4<u32>(u_input.a.x ^ 0u, 0u, 1u, _wgslsmith_add_u32(u_input.b, arg_0.x))), -973f);
    var_0 = Struct_2(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1556f * var_0.a.x) - _wgslsmith_f_op_f32(ceil(var_0.b.d))))), Struct_1(global0.x, ~_wgslsmith_dot_vec4_i32(min(vec4<i32>(2147483647i, var_0.b.e.x, var_0.b.b, -2147483647i), vec4<i32>(var_0.c.b, 2147483647i, var_0.b.e.x, 2147483647i)), vec4<i32>(-8520i, 1i, 0i, var_0.c.b)), global0.wx, -172f, firstTrailingBit(select(var_0.b.e, var_0.c.e >> (arg_0.yx % vec2<u32>(32u)), !vec2<bool>(var_0.c.c.x, true)))), Struct_1(var_0.c.c.x, var_0.c.b, select(vec2<bool>(!var_0.c.c.x, !var_0.b.c.x), select(!global0.zy, var_0.b.c, vec2<bool>(global0.x, var_0.c.a)), global0.x), _wgslsmith_f_op_f32(-2031f * -1088f), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(8078i, var_0.c.b, 2147483647i), vec3<i32>(-33595i, var_0.c.e.x, var_0.c.b)), 33415i)), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.e)) * _wgslsmith_f_op_f32(-492f * _wgslsmith_f_op_f32(sign(var_0.c.d)))));
    return arg_0.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<f32>, arg_3: bool) -> f32 {
    global0 = !(!select(vec4<bool>(all(vec4<bool>(false, false, arg_3, global0.x)), global0.x && true, true, any(arg_0)), !(!vec4<bool>(true, global0.x, true, arg_0.x)), vec4<bool>(func_2(Struct_1(false, -2206i, vec2<bool>(arg_3, global0.x), arg_1, vec2<i32>(66882i, -21155i)), Struct_3(Struct_1(arg_3, -19275i, arg_0.yx, arg_2.x, vec2<i32>(5371i, 1i)), Struct_1(false, -24504i, arg_0.xz, arg_1, vec2<i32>(-2147483647i, -12185i)), Struct_1(true, 0i, arg_0.xx, arg_1, vec2<i32>(-1i, 43887i))), vec4<u32>(u_input.a.x, u_input.a.x, 104990u, 0u)), false && arg_0.x, arg_3, any(vec2<bool>(false, true)))));
    global1 = _wgslsmith_add_u32(23107u, (abs(func_3(vec3<u32>(u_input.a.x, u_input.b, u_input.a.x))) | (_wgslsmith_div_u32(u_input.a.x, u_input.b) & 1u)) << (4294967295u % 32u));
    let var_0 = Struct_2(arg_2.zz, Struct_1(global0.x, abs(_wgslsmith_mult_i32(abs(21778i), 1i)), arg_0.zy, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_2.x)))), countOneBits(firstLeadingBit(-vec2<i32>(1i, -41642i)))), Struct_1(true, -14983i, global0.wx, arg_1, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(33949i, 13501i, -2147483647i, 89619i), vec4<i32>(1i, 1i, 1i, 1i)), 2147483647i)), ~_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, 483u, u_input.a.x, u_input.b)), abs(vec4<u32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.b, 15809u, 45723u, 19577u)) ^ ~(~vec4<u32>(95642u, 4294967295u, u_input.a.x, 0u)), _wgslsmith_f_op_f32(-arg_2.x));
    var var_1 = !select(select(vec4<bool>(false, arg_3, true, var_0.c.a & var_0.c.c.x), select(vec4<bool>(global0.x, arg_0.x, global0.x, var_0.c.a), vec4<bool>(false, var_0.c.c.x, true, arg_0.x), vec4<bool>(global0.x, arg_3, arg_3, arg_0.x)), false), vec4<bool>(false, (var_0.c.a && true) & (global0.x | arg_3), func_2(Struct_1(true, var_0.b.e.x, vec2<bool>(var_0.c.a, arg_0.x), arg_2.x, var_0.c.e), Struct_3(Struct_1(var_0.c.a, var_0.c.e.x, var_0.b.c, 372f, var_0.c.e), var_0.b, Struct_1(false, -2147483647i, var_0.b.c, arg_2.x, vec2<i32>(var_0.c.b, var_0.c.e.x))), var_0.d) | arg_0.x, true), !(!arg_3));
    var_1 = !(!vec4<bool>(true, true, var_1.x, true));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1183f, -1000f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(1u);
    global1 = ~_wgslsmith_mod_u32(u_input.b, 8338u);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2115f)) * _wgslsmith_f_op_f32(1363f - -429f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1271f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(global0.x & global0.x, 4294967295u <= u_input.b, any(vec2<bool>(global0.x, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(821f + 1688f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-325f, -674f, -1395f)), true)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(155f)))))));
    let var_2 = vec4<i32>(min(-14409i, 2147483647i), -countOneBits(~(-1i)), -7i, i32(-1i) * -16748i);
    let var_3 = Struct_2(var_1, Struct_1(select(true, global0.x, false) | true, -max(var_2.x, var_2.x) >> (min(var_0, 27418u) % 32u), vec2<bool>(all(!vec4<bool>(global0.x, global0.x, true, false)), global0.x), -216f, vec2<i32>(var_2.x, var_2.x)), Struct_1((true & global0.x) & (~u_input.a.x <= _wgslsmith_mod_u32(8960u, var_0)), 61214i, !select(select(global0.xy, vec2<bool>(false, global0.x), global0.zw), select(vec2<bool>(global0.x, global0.x), global0.zy, global0.x), any(vec2<bool>(global0.x, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1146f - 448f))))), var_2.yz), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, 52956u, var_0, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.b, u_input.b, var_0)), reverseBits(vec4<u32>(u_input.b, u_input.b, u_input.b, 71017u)), vec4<u32>(u_input.b, ~u_input.a.x, u_input.b, 21388u)) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0, 44480u, u_input.b, u_input.a.x), min(firstLeadingBit(vec4<u32>(67893u, u_input.a.x, var_0, u_input.b)), vec4<u32>(4294967295u, var_0, 4294967295u, var_0))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -581f));
    let var_4 = Struct_1(_wgslsmith_sub_i32(-1i, select(~var_2.x, -2147483647i << (var_0 % 32u), global0.x)) <= ~var_2.x, countOneBits(var_3.b.e.x), var_3.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(select(vec3<bool>(var_3.c.c.x, var_3.c.c.x, false), global0.wwx, vec3<bool>(var_3.b.c.x, var_3.c.a, var_3.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1347f, var_3.e, var_1.x))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, -1891f, -189f), vec3<f32>(var_3.c.d, 159f, 469f)))), global0.x))), vec2<i32>(var_2.x, reverseBits(5920i)));
    let x = u_input.a;
    s_output = StorageBuffer(276f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-807f + _wgslsmith_f_op_f32(-var_3.e)), var_4.d, var_3.c.d)), _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(791f))))))));
}

