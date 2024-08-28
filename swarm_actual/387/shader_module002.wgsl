struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<i32> = vec2<i32>(-1i, 1i);

var<private> global2: Struct_1;

var<private> global3: array<vec4<f32>, 23>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.a.x, global2.a.x)) * _wgslsmith_div_f32(global2.a.x, -1041f)), _wgslsmith_f_op_f32(f32(-1f) * -375f), global2.a.x, global0.b.a.x), _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(u_input.a.x, 23u)] * _wgslsmith_f_op_vec4_f32(trunc(global3[_wgslsmith_index_u32(u_input.a.x, 23u)]))))));
    let var_0 = 1664i;
    global1 = vec2<i32>(-1i) * -abs(firstTrailingBit(-vec2<i32>(arg_2.x, -6534i)));
    var var_1 = arg_1;
    let var_2 = vec4<u32>(arg_1, ~arg_1, ~(~13830u), arg_0.x);
    return Struct_1(global3[_wgslsmith_index_u32(~min(firstTrailingBit(0u), ~arg_0.x >> (~57323u % 32u)), 23u)]);
}

fn func_3(arg_0: Struct_1) -> Struct_4 {
    global2 = Struct_1(vec4<f32>(1184f, _wgslsmith_f_op_f32(arg_0.a.x * -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(417f))), _wgslsmith_div_f32(global0.b.a.x, _wgslsmith_f_op_f32(440f - arg_0.a.x)), global0.c)), _wgslsmith_f_op_f32(floor(global2.a.x))));
    let var_0 = Struct_3(func_2(vec2<u32>(_wgslsmith_mod_u32(0u, 1u), u_input.a.x), abs(~u_input.b) >> (~_wgslsmith_add_u32(1u, u_input.a.x) % 32u), vec4<i32>(global1.x, -u_input.c | global1.x, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 29244i, -2147483647i, 0i), vec4<i32>(20607i, global1.x, u_input.c, u_input.c))), 1i)), countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, u_input.c, -44724i, 20039i) ^ vec4<i32>(-6489i, -2147483647i, -1i, 15980i), abs(vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i))), vec4<i32>(_wgslsmith_div_i32(u_input.c, -2147483647i), -u_input.c, _wgslsmith_add_i32(u_input.c, u_input.c), _wgslsmith_div_i32(-1i, global1.x)))), firstTrailingBit(select(vec2<i32>(u_input.c, -2147483647i | global1.x), vec2<i32>(global1.x << (0u % 32u), firstTrailingBit(2147483647i)), true)));
    let var_1 = Struct_2(func_2(~vec2<u32>(1u, 1u), ~_wgslsmith_sub_u32(max(1u, u_input.a.x), 51199u), -var_0.b), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.a.a, global0.a.a))))), false);
    let var_2 = 4294967295u;
    var var_3 = var_0.b;
    return Struct_4(vec4<bool>(u_input.c <= -select(-1i, u_input.c, global0.c), global0.c, (!var_1.c & var_1.c) | (20714u <= u_input.a.x), true | var_1.c), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.b.a), _wgslsmith_f_op_vec4_f32(global0.b.a - _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(u_input.a.x, 23u)] + vec4<f32>(-1122f, arg_0.a.x, -952f, 1256f))), vec4<bool>(true, all(vec3<bool>(true, global0.c, true)), select(global0.c, true, var_1.c), true)))), func_2(_wgslsmith_add_vec2_u32(vec2<u32>(var_2 << (u_input.a.x % 32u), ~u_input.b), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u)))), 22540u, ~abs(vec4<i32>(u_input.c, var_0.b.x, global1.x, -25203i))), var_0);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>) -> Struct_4 {
    global2 = func_2(reverseBits(select(vec2<u32>(firstTrailingBit(67936u), ~u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 51669u), u_input.a.zz) >> (u_input.a.wy % vec2<u32>(32u)), arg_0.a.xz)), _wgslsmith_sub_u32(1u, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(~global1.x, abs(global1.x) & func_3(arg_0.c).d.b.x, ~_wgslsmith_dot_vec2_i32(arg_0.d.b.ww, arg_0.d.b.xw), -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, _wgslsmith_mod_i32(2147483647i, 20041i), -2147483647i, global1.x), ~(~arg_0.d.b), vec4<i32>(-2558i, arg_0.d.c.x, u_input.c, u_input.c) & _wgslsmith_mult_vec4_i32(arg_0.d.b, arg_0.d.b))));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(909f)), _wgslsmith_f_op_f32(max(-1071f, _wgslsmith_f_op_f32(f32(-1f) * -462f))))) * _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(global0.a.a.x - _wgslsmith_f_op_f32(f32(-1f) * -637f)))), 2637f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.a.x))) - _wgslsmith_f_op_f32(-global0.b.a.x)))));
    var var_1 = -288f;
    let var_2 = vec4<bool>(arg_0.a.x, !(u_input.a.x != _wgslsmith_dot_vec2_u32(~arg_1.yz, vec2<u32>(1u, u_input.a.x))), !((global1.x << (u_input.a.x % 32u)) != 61133i), !any(vec4<bool>(arg_0.a.x, any(arg_0.a.yz), select(global0.c, true, true), global0.c)));
    var var_3 = u_input.b;
    return arg_0;
}

fn func_5(arg_0: Struct_4, arg_1: f32) -> Struct_2 {
    let var_0 = vec3<i32>(countOneBits(_wgslsmith_clamp_i32(arg_0.d.b.x, -global1.x, ~(-32622i))), func_3(arg_0.d.a).d.c.x, reverseBits(func_4(func_3(global0.b), min(u_input.a.zzx, u_input.a.www)).d.b.x) << (1u % 32u));
    let var_1 = true;
    let var_2 = arg_0.d;
    return Struct_2(global0.a, global0.a, true);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>) -> vec2<i32> {
    var var_0 = u_input.a.x;
    global0 = func_5(func_4(func_3(func_2(u_input.a.zw, 4294967295u, _wgslsmith_mult_vec4_i32(arg_0, arg_0))), _wgslsmith_add_vec3_u32(firstLeadingBit(u_input.a.zzx), u_input.a.yxx)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(482f, global0.b.a.x)), _wgslsmith_f_op_f32(-func_2(countOneBits(vec2<u32>(19261u, u_input.b)), firstTrailingBit(4294967295u), -vec4<i32>(global1.x, -1i, global1.x, arg_0.x)).a.x)));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1602f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a.x + global2.a.x)))), -1028f, -568f));
    var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a.wy, ~u_input.a.xz), u_input.b);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(global2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1115f), 1231f);
    return abs(_wgslsmith_mod_vec2_i32(arg_1.xy, arg_1.yy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<i32>(_wgslsmith_clamp_i32(-50325i, ~u_input.c | global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 2147483647i), vec2<i32>(u_input.c, global1.x)) ^ 0i), 19501i, _wgslsmith_div_i32(-2898i, _wgslsmith_div_i32(1i, global1.x)), 44924i >> (~_wgslsmith_mod_u32(u_input.a.x, u_input.b) % 32u)), _wgslsmith_mult_vec3_i32(~(~_wgslsmith_add_vec3_i32(vec3<i32>(-77081i, u_input.c, 1i), vec3<i32>(41176i, global1.x, global1.x))), min((vec3<i32>(-17307i, 33828i, u_input.c) << (vec3<u32>(21488u, u_input.b, u_input.b) % vec3<u32>(32u))) | (vec3<i32>(0i, 2147483647i, u_input.c) & vec3<i32>(global1.x, u_input.c, 0i)), -vec3<i32>(u_input.c, -99863i, -66373i))));
    var var_1 = Struct_5(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.b, 15955u), u_input.a.yx, vec2<bool>(false, global0.c)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 67608u), u_input.a.wx)), vec2<u32>(u_input.b, 1u))), abs(~(~(~1u))), vec4<i32>(-49290i, global1.x, var_0.x, ~global1.x));
    var var_2 = global0.b.a;
    var var_3 = func_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -789f), global2.a.x) - vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(trunc(368f)), var_2.x, func_3(global0.b).b.a.x)))).d.a.a.zx;
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, 1000f, 351f, var_2.x), global0.b.a)))), max(vec4<i32>(i32(-1i) * -32265i, ~var_0.x, var_1.c.x, min(firstTrailingBit(0i), var_1.c.x)), firstLeadingBit(var_1.c)), _wgslsmith_mod_vec2_i32(vec2<i32>(84643i, i32(-1i) * -37450i), ~max(func_4(Struct_4(vec4<bool>(true, true, global0.c, global0.c), global0.a, Struct_1(vec4<f32>(284f, global0.b.a.x, global2.a.x, var_2.x)), Struct_3(global0.a, vec4<i32>(global1.x, -1i, var_0.x, global1.x), var_1.c.zx)), vec3<u32>(u_input.b, u_input.b, u_input.a.x)).d.c, var_1.c.xw)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.c, _wgslsmith_add_vec2_u32(u_input.a.zw, ~u_input.a.xx));
}

