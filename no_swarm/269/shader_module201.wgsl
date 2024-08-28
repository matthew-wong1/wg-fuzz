struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(false, false, true), 20403u, vec3<i32>(31617i, 1i, -1i), Struct_1(1i, vec2<bool>(false, false), vec4<i32>(17582i, 2147483647i, -4676i, -1i), vec2<bool>(true, true)), Struct_2(vec3<f32>(308f, -1680f, 1038f), Struct_1(1i, vec2<bool>(true, true), vec4<i32>(-1i, -6483i, 1194i, -1i), vec2<bool>(false, true))));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>) -> vec3<i32> {
    let var_0 = global0.a.x;
    var var_1 = ~select(countOneBits(-arg_0), ~(~arg_1.e.b.c.x), arg_2.x) << (~4294967295u % 32u);
    let var_2 = Struct_5(Struct_1(~(~(-59669i)), vec2<bool>(arg_2.x, (arg_2.x && false) && false), ~(-_wgslsmith_div_vec4_i32(arg_1.d.c, global0.d.c)), select(arg_2.wz, vec2<bool>(arg_1.e.b.b.x || false, !arg_2.x), false)), !(!arg_2), arg_2.x, !(!(!arg_1.e.b.d)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.e.a.x, -173f)))), global0.e.a.zx));
    let var_4 = arg_1.e;
    return select(vec3<i32>(-1i, -_wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, -2147483647i), var_4.b.a | 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.x, 11403i, arg_1.d.a, var_4.b.a), vec4<i32>(-2147483647i, -2147483647i, global0.d.c.x, global0.d.c.x)) << (~_wgslsmith_sub_u32(global0.b, 10255u) % 32u)), arg_1.d.c.yww, !all(!select(var_2.b, vec4<bool>(arg_2.x, true, arg_1.e.b.d.x, false), var_2.b)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_5) -> u32 {
    var var_0 = Struct_4(~(-abs(global0.e.b.c.x)));
    var var_1 = min(_wgslsmith_mult_u32(0u, 45603u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(14534u, 0u, 27041u)), select(vec3<u32>(1u, global0.b, arg_0.b), vec3<u32>(u_input.a.x, global0.b, arg_0.b), arg_0.d.d.x)), ~arg_0.b)) == ~(~_wgslsmith_add_u32(~95869u, 22747u));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(742f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.e.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.e.a.x, arg_0.e.a.x, true)))), 193f)), 573f, 537f);
    let var_3 = Struct_1(global0.d.c.x, !(!global0.a.yz), vec4<i32>(-21584i, arg_1.x, _wgslsmith_dot_vec4_i32(global0.e.b.c, vec4<i32>(arg_1.x, global0.e.b.a, _wgslsmith_mult_i32(2147483647i, global0.c.x), func_3(arg_2.a.c.x, Struct_3(vec3<bool>(global0.a.x, arg_2.b.x, arg_0.e.b.d.x), global0.b, vec3<i32>(55406i, 2147483647i, 0i), global0.e.b, Struct_2(global0.e.a, Struct_1(arg_0.d.c.x, vec2<bool>(true, false), vec4<i32>(-56283i, arg_2.a.c.x, 0i, global0.c.x), vec2<bool>(arg_0.e.b.d.x, true)))), arg_2.b).x)), 1i), select(arg_2.b.yx, vec2<bool>(!(-626f < global0.e.a.x), any(arg_0.a.zy) & select(arg_0.e.b.b.x, arg_2.d.x, false)), !(any(global0.a.xy) & !arg_0.a.x)));
    global0 = arg_0;
    return ~(~global0.b);
}

fn func_2() -> u32 {
    let var_0 = vec4<u32>(4294967295u, 4294967295u, ~76716u, 37339u);
    let var_1 = max(_wgslsmith_mult_vec4_i32(-global0.e.b.c, select(abs(~global0.e.b.c), global0.e.b.c ^ vec4<i32>(65305i, -1i, 37980i, global0.e.b.c.x), !vec4<bool>(false, true, true, global0.a.x))), global0.d.c);
    var var_2 = global0.e.a.zx;
    var var_3 = max(0i, global0.c.x);
    global0 = Struct_3(vec3<bool>(global0.e.b.b.x, _wgslsmith_f_op_f32(502f * _wgslsmith_f_op_f32(-1799f - var_2.x)) > global0.e.a.x, any(!select(vec2<bool>(global0.a.x, global0.e.b.d.x), global0.a.yx, vec2<bool>(global0.a.x, global0.a.x)))), _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(global0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 65030u, u_input.a.x, 46714u), reverseBits(vec4<u32>(4294967295u, 1u, 1u, u_input.a.x))), ~(~var_0.x), 56310u)), var_1.yyy, Struct_1(~2147483647i, !(!vec2<bool>(global0.a.x, global0.d.b.x)), firstLeadingBit(-(vec4<i32>(-1i, var_1.x, var_1.x, 1i) & var_1)), vec2<bool>(false, all(select(vec2<bool>(global0.e.b.d.x, global0.d.d.x), global0.a.zz, false)))), global0.e);
    return func_4(Struct_3(global0.a, ~82235u, func_3(-var_1.x | ~1i, Struct_3(vec3<bool>(global0.a.x, true, global0.a.x), global0.b, select(vec3<i32>(var_1.x, 68740i, var_1.x), vec3<i32>(7962i, var_1.x, var_1.x), global0.a), global0.e.b, Struct_2(vec3<f32>(1000f, 377f, global0.e.a.x), Struct_1(var_1.x, vec2<bool>(global0.a.x, global0.a.x), var_1, global0.e.b.b))), !select(vec4<bool>(global0.d.b.x, false, true, true), vec4<bool>(global0.d.d.x, false, global0.d.b.x, global0.e.b.d.x), false)), global0.d, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(round(-1681f)), _wgslsmith_f_op_f32(trunc(908f)), _wgslsmith_f_op_f32(trunc(global0.e.a.x))), global0.d)), vec3<i32>(global0.d.c.x, -(global0.c.x ^ var_1.x) | -select(global0.e.b.c.x, -73665i, global0.d.b.x), global0.c.x), Struct_5(Struct_1(firstTrailingBit(27657i), vec2<bool>(false, any(vec3<bool>(false, global0.d.d.x, true))), min(var_1, global0.e.b.c), select(global0.a.zy, select(vec2<bool>(global0.a.x, global0.a.x), global0.e.b.b, vec2<bool>(true, global0.a.x)), true)), select(select(vec4<bool>(false, false, true, global0.e.b.d.x), select(vec4<bool>(true, global0.a.x, global0.e.b.d.x, false), vec4<bool>(global0.a.x, global0.e.b.b.x, global0.d.b.x, global0.a.x), vec4<bool>(false, global0.a.x, true, true)), false), vec4<bool>(false, var_1.x == -11426i, global0.a.x, true), global0.d.d.x), false, global0.e.b.d));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = vec3<i32>((i32(-1i) * -_wgslsmith_mod_i32(2147483647i, -2147483647i)) << (func_2() % 32u), firstTrailingBit(global0.d.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-global0.d.a, 15510i, 1i, global0.c.x) | vec4<i32>(-32835i, global0.c.x, -2147483647i, 1i), vec4<i32>(-30703i, _wgslsmith_add_i32(2321i, global0.c.x), global0.d.a, 1i & global0.e.b.a) ^ ~(-vec4<i32>(global0.c.x, global0.d.c.x, -2147483647i, -10476i))));
    let var_1 = 5066i;
    global0 = Struct_3(vec3<bool>(global0.d.d.x, arg_1.x, any(vec2<bool>(true, true))), abs(1u ^ _wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), 10238u)), ~(var_0 | abs(_wgslsmith_add_vec3_i32(var_0, vec3<i32>(-67922i, global0.e.b.a, -2147483647i)))), Struct_1(reverseBits(2147483647i), !vec2<bool>(arg_1.x, true), global0.e.b.c, select(!(!global0.d.b), vec2<bool>(true, global0.e.b.b.x), select(global0.d.b, global0.a.zx, select(vec2<bool>(false, arg_1.x), vec2<bool>(arg_1.x, global0.e.b.d.x), global0.a.zz)))), global0.e);
    let var_2 = global0.d;
    global0 = Struct_3(arg_1, u_input.a.x, _wgslsmith_clamp_vec3_i32(var_2.c.ywz, select(-vec3<i32>(var_1, 15736i, -20619i), vec3<i32>(var_2.c.x & global0.c.x, 19330i, -29407i), 1i >= var_1), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -18203i, var_0.x), _wgslsmith_mult_vec3_i32(var_0, var_0), reverseBits(select(global0.e.b.c.xxw, vec3<i32>(var_1, 27297i, 0i), arg_1.x)))), global0.d, global0.e);
    return Struct_3(!arg_1, 8555u, var_0, Struct_1(-49163i, var_2.d, _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(var_2.c << (vec4<u32>(global0.b, 53696u, global0.b, 4294967295u) % vec4<u32>(32u)), global0.d.c | global0.e.b.c), countOneBits(var_2.c)), var_2.b), global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.a.x - global0.e.a.x)), 1548f), !select(select(global0.a, select(vec3<bool>(global0.a.x, false, global0.e.b.d.x), global0.a, global0.a), select(global0.a, global0.a, vec3<bool>(true, false, false))), !(!global0.a), !select(true, false, global0.d.b.x)));
    global0 = Struct_3(vec3<bool>((true | global0.a.x) | select(true, all(vec4<bool>(global0.e.b.d.x, global0.a.x, false, true)), global0.d.d.x), u_input.a.x <= ~global0.b, false), (_wgslsmith_mult_u32(~u_input.a.x, ~u_input.a.x) ^ firstLeadingBit(47810u)) | global0.b, abs(vec3<i32>(global0.e.b.c.x, -global0.d.c.x, select(countOneBits(11175i), global0.e.b.a, true))), Struct_1(_wgslsmith_dot_vec2_i32(global0.c.xx, abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global0.e.b.c.x), vec2<i32>(global0.e.b.a, global0.c.x)))), !vec2<bool>(true, !global0.d.d.x), reverseBits(~vec4<i32>(global0.c.x, global0.d.c.x, -11121i, global0.e.b.a)), !vec2<bool>(false, global0.e.b.d.x)), func_1(global0.e.a.yx, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.e.a.yy - vec2<f32>(519f, -1455f)) - _wgslsmith_f_op_vec2_f32(-global0.e.a.xy)), global0.a).a).e);
    global0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(step(1030f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-488f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e.a.x, _wgslsmith_f_op_f32(global0.e.a.x + global0.e.a.x)))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(156f, 423f))))), vec3<bool>(global0.d.a <= ~global0.e.b.c.x, any(global0.a), true)).a);
    var var_0 = Struct_5(global0.e.b, select(!vec4<bool>(true, all(vec3<bool>(global0.a.x, global0.a.x, true)), u_input.a.x > 34233u, all(vec4<bool>(global0.d.b.x, true, false, false))), vec4<bool>(true, all(!global0.a), true, global0.e.b.b.x), select(!(!vec4<bool>(false, true, true, global0.e.b.b.x)), vec4<bool>(global0.a.x, true, any(global0.d.d), true), !select(vec4<bool>(false, global0.d.b.x, false, global0.a.x), vec4<bool>(true, true, global0.d.b.x, false), global0.a.x))), !((global0.e.a.x <= _wgslsmith_f_op_f32(f32(-1f) * -420f)) | global0.a.x), vec2<bool>(false, true));
    let var_1 = ~_wgslsmith_mult_u32(4294967295u, ~(~(global0.b ^ global0.b)));
    let var_2 = Struct_4(-var_0.a.c.x);
    var_0 = Struct_5(Struct_1(var_2.a, global0.a.yy, var_0.a.c, vec2<bool>(var_0.b.x, global0.a.x)), !vec4<bool>(!(global0.a.x || true), !global0.e.b.b.x | func_1(vec2<f32>(global0.e.a.x, 208f), var_0.b.xxz).d.b.x, global0.a.x, global0.e.b.d.x), true, select(!select(vec2<bool>(true, false), global0.e.b.d, select(vec2<bool>(global0.d.b.x, false), vec2<bool>(false, global0.a.x), var_0.d)), global0.d.d, vec2<bool>(func_1(global0.e.a.xx, vec3<bool>(global0.d.b.x, false, global0.d.d.x)).a.x | true, true)));
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global0.e.a.yy - _wgslsmith_f_op_vec2_f32(-global0.e.a.zy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1259f, 1324f, global0.e.a.x, var_3.x) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.x, global0.e.a.x, global0.e.a.x, -755f), vec4<f32>(-1314f, var_3.x, global0.e.a.x, -493f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2077f, var_3.x, -1098f, var_3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1596f, global0.e.a.x, -403f, -2929f)), var_0.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 4294967295u), vec3<u32>(1u, 25353u, 1u)) != (21825u >> (global0.b % 32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1109f, global0.e.a.x, -1147f, var_3.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.x, 1000f, var_3.x, var_3.x), vec4<f32>(-1894f, 239f, -1319f, -595f), global0.a.x))))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_3, vec2<f32>(global0.e.a.x, 355f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(462f, global0.e.a.x)))), vec3<bool>(true, !var_0.c, !select(true, true, true))).d.c.zx, u_input.a.x);
}

