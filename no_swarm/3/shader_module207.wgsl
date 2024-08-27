struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec4<i32>(17985i, 1177i, 2147483647i, 28704i), 48129i), vec4<u32>(45644u, 25747u, 30428u, 72318u), vec4<f32>(210f, -288f, -785f, 923f), Struct_2(vec4<i32>(32696i, -1i, 11915i, i32(-2147483648)), Struct_1(vec4<i32>(2147483647i, 2147483647i, 98i, 25113i), 0i), Struct_1(vec4<i32>(0i, 17091i, -19830i, 58550i), 1774i)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>) -> f32 {
    global0 = Struct_4(global0.a, _wgslsmith_clamp_vec4_u32(global0.b, ~min(vec4<u32>(26269u, 1u, 17163u, 20573u), global0.b), max(global0.b << (abs(global0.b) % vec4<u32>(32u)), global0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(233f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-861f + global0.c.x))), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.c.x, -1049f)))) + _wgslsmith_div_vec4_f32(global0.c, vec4<f32>(_wgslsmith_div_f32(1002f, global0.c.x), -300f, global0.c.x, _wgslsmith_f_op_f32(trunc(-508f))))), Struct_2(global0.a.a, global0.a, global0.a));
    var var_0 = global0.d.c;
    var var_1 = all(vec3<bool>((global0.c.x < -113f) | true, !(!(791u <= global0.b.x)), true));
    let var_2 = _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, var_0.b | _wgslsmith_mult_i32(u_input.d.x, arg_1.x), _wgslsmith_add_i32(arg_1.x, _wgslsmith_mult_i32(arg_1.x, -1i)), ~24069i), -firstLeadingBit(var_0.a));
    var var_3 = Struct_4(global0.d.c, vec4<u32>(_wgslsmith_div_u32(~(~4294967295u), ~(35789u ^ u_input.c.x)), 4294967295u, 0u, arg_0.x), _wgslsmith_f_op_vec4_f32(-global0.c), global0.d);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c.x)) - _wgslsmith_f_op_f32(-var_3.c.x));
}

fn func_2() -> Struct_3 {
    global0 = Struct_4(Struct_1(vec4<i32>(-1659i, _wgslsmith_sub_i32(-6327i, global0.d.a.x), u_input.d.x, u_input.d.x), u_input.d.x), global0.b | vec4<u32>(~(~global0.b.x), _wgslsmith_add_u32(~45095u, _wgslsmith_div_u32(38399u, 1u)), u_input.c.x, ~(~global0.b.x)), vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(func_3(select(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global0.b.x, 1u), u_input.c), ~vec3<u32>(3708u, 1u, global0.b.x), 1006f >= global0.c.x), global0.a.a.zzx << (~u_input.c % vec3<u32>(32u)))), global0.c.x, _wgslsmith_f_op_f32(global0.c.x * global0.c.x)), Struct_2(-countOneBits(global0.d.a), Struct_1(global0.a.a, 65399i), global0.d.b));
    global0 = Struct_4(Struct_1(vec4<i32>(-1i << (global0.b.x % 32u), reverseBits(global0.a.a.x | u_input.d.x), _wgslsmith_mod_i32(global0.d.a.x, _wgslsmith_dot_vec4_i32(global0.a.a, vec4<i32>(global0.a.b, u_input.d.x, global0.a.a.x, global0.a.a.x))), global0.d.b.b), u_input.d.x ^ ~u_input.d.x), ~select(vec4<u32>(countOneBits(1u), global0.b.x, 1u, _wgslsmith_add_u32(global0.b.x, global0.b.x)), ~vec4<u32>(4294967295u, 4294967295u, 1414u, u_input.b.x), global0.a.b == ~(-1i)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c + _wgslsmith_f_op_vec4_f32(-global0.c)), global0.c))), Struct_2(vec4<i32>(2147483647i, _wgslsmith_clamp_i32(2147483647i, firstTrailingBit(global0.a.b), _wgslsmith_add_i32(1i, -4205i)), global0.a.b, firstTrailingBit(min(global0.a.b, -2147483647i))), global0.d.c, global0.a));
    var var_0 = _wgslsmith_div_u32(~4294967295u, ~abs(62899u));
    var var_1 = Struct_4(global0.d.b, ~countOneBits(vec4<u32>(~global0.b.x, ~u_input.b.x, 24858u, u_input.b.x)), global0.c, global0.d);
    var var_2 = 1u;
    return Struct_3(var_1.a, global0.d, _wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_div_f32(var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -165f))), Struct_2(~reverseBits(var_1.d.b.a), Struct_1(var_1.d.c.a, abs(_wgslsmith_sub_i32(var_1.a.b, u_input.d.x))), global0.d.c));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    global0 = Struct_4(arg_0.b.c, vec4<u32>(u_input.b.x, ~firstLeadingBit(_wgslsmith_dot_vec4_u32(global0.b, vec4<u32>(4294967295u, 91036u, global0.b.x, u_input.c.x))), 38522u | (~global0.b.x << (countOneBits(u_input.b.x) % 32u)), ~global0.b.x), vec4<f32>(-219f, arg_1.x, func_2().c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))), 1247f)), func_2().b);
    var var_0 = _wgslsmith_f_op_vec2_f32(-global0.c.wz);
    global0 = Struct_4(func_2().a, _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~global0.b, global0.b, ~global0.b), ~(~vec4<u32>(u_input.c.x, global0.b.x, 52446u, global0.b.x) << (select(vec4<u32>(global0.b.x, 4294967295u, u_input.c.x, 66321u), global0.b, false) % vec4<u32>(32u)))), arg_2, func_2().b);
    let var_1 = vec2<bool>(all(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true))), any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true)))));
    let var_2 = ~countOneBits(-1i);
    return var_0.x;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_f_op_vec3_f32(global0.c.xyx - global0.c.zzw), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, 370f, -657f, 475f)), global0.d.b)) + -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -742f)) * global0.c.x)));
    var var_1 = func_2();
    var var_2 = func_2().b;
    let var_3 = func_2();
    global0 = Struct_4(Struct_1(~(~vec4<i32>(1i, 0i, 0i, u_input.d.x)), var_3.a.b), abs(vec4<u32>(~global0.b.x, ~firstLeadingBit(4294967295u), ~_wgslsmith_div_u32(global0.b.x, u_input.a.x), u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c - global0.c), vec4<f32>(387f, 1837f, var_1.c, 1000f))))), func_2().b);
    return var_3.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(-229f));
    global0 = Struct_4(global0.d.c, _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(91848u, 9914u) << (global0.b.x % 32u), 0u, 0u, _wgslsmith_add_u32(global0.b.x, ~global0.b.x)), ~global0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0 - 738f), var_0, _wgslsmith_div_f32(global0.c.x, var_0), _wgslsmith_f_op_f32(f32(-1f) * -794f))), global0.d);
    var var_1 = var_0;
    var_1 = _wgslsmith_f_op_f32(sign(var_0));
    var var_2 = Struct_2(global0.d.b.a, Struct_1(_wgslsmith_mod_vec4_i32(global0.a.a, global0.a.a), u_input.d.x), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(abs(global0.b), global0.b), ~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(48080u, global0.b.x), ~4294967295u, global0.b.x >> (1891u % 32u), 42353u), reverseBits(vec4<u32>(global0.b.x, 1u, 14448u, global0.b.x))), 372f, 1f);
}

