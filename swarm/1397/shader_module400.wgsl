struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32;

var<private> global2: Struct_2;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_add_i32(select(1i, global2.e, all(vec3<bool>(any(vec3<bool>(global2.b.a, global2.a.a, true)), global2.e <= global2.e, global2.a.a))), select((u_input.a | reverseBits(u_input.a)) << (3324u % 32u), _wgslsmith_clamp_i32(abs(~u_input.b.x), _wgslsmith_add_i32(-8533i, 43857i), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.e, 1i, -2147483647i, -2147483647i), vec4<i32>(u_input.b.x, 12760i, global2.e, global2.e))), all(vec3<bool>(any(vec4<bool>(global2.a.a, true, global2.d.x, false)), 1i > global2.e, true))));
    let var_1 = Struct_2(Struct_1(((global2.d.x || false) & false) || global2.a.a), Struct_1(any(!vec3<bool>(false, global2.b.a, false))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(244f, global2.c.x), vec2<f32>(_wgslsmith_f_op_f32(301f - global2.c.x), _wgslsmith_f_op_f32(floor(1862f))))))), !select(vec2<bool>(all(vec4<bool>(global2.d.x, false, true, global2.b.a)), true), !select(vec2<bool>(global2.b.a, true), vec2<bool>(false, false), global2.a.a), vec2<bool>(global2.b.a, all(vec4<bool>(global2.d.x, global2.d.x, false, global2.a.a)))), ~_wgslsmith_clamp_i32(~(global2.e | -2147483647i), -u_input.b.x, max(abs(var_0), -u_input.a)));
    global2 = var_1;
    return _wgslsmith_clamp_vec2_u32(u_input.c.wz, u_input.c.yw, vec2<u32>(select(1u, 12123u, any(vec3<bool>(var_1.d.x, true, var_1.d.x))) & 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(43053u, u_input.c.x, 14885u, 86394u), u_input.c) | vec4<u32>(4294967295u, 12491u, 1u, 14002u), u_input.c)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<bool>) -> f32 {
    var var_0 = arg_0 >> (reverseBits(min(_wgslsmith_add_vec3_u32(u_input.c.zyz << (vec3<u32>(4294967295u, 1u, 4294967295u) % vec3<u32>(32u)), reverseBits(u_input.c.yzz)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.wyy, u_input.c.zxx), vec3<u32>(u_input.c.x, 75038u, 0u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)))) % vec3<u32>(32u));
    var var_1 = true;
    let var_2 = func_3();
    let var_3 = arg_1;
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_0.x), vec2<i32>(-22589i, var_0.x)) >> (abs(0u) % 32u))), max(-vec2<i32>(0i, firstLeadingBit(global2.e)), countOneBits(vec2<i32>(-49622i, u_input.b.x))));
    return global2.c.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec3<i32>) -> bool {
    var var_0 = global2.a;
    global2 = Struct_2(Struct_1(!(!(!var_0.a))), global2.b, vec2<f32>(global2.c.x, -317f), vec2<bool>(all(!vec3<bool>(global2.d.x, true, global2.d.x)), true), firstTrailingBit(reverseBits(max(~(-30255i), global2.e | -1i))));
    let var_1 = global2.a;
    var_0 = global2.a;
    var var_2 = arg_0.x | func_3().x;
    return global2.d.x && (select(global2.e < -9230i, true, true) == all(vec2<bool>(select(var_1.a, var_1.a, var_1.a), false)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    global0 = any(vec3<bool>(global2.d.x, global2.a.a, func_4(vec3<u32>(reverseBits(u_input.c.x), ~u_input.c.x, ~arg_0.x), vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(func_2(vec3<i32>(-10023i, 2147483647i, 22215i), Struct_1(global2.d.x), vec2<bool>(false, global2.a.a))), _wgslsmith_div_f32(global2.c.x, 122f), _wgslsmith_f_op_f32(-global2.c.x)), true, firstTrailingBit(vec3<i32>(0i, -1i, -40383i)))));
    global2 = Struct_2(global2.b, Struct_1(true), global2.c, select(select(!global2.d, vec2<bool>(false, global2.a.a), !all(vec4<bool>(global2.b.a, false, global2.b.a, global2.a.a))), global2.d, any(select(select(vec4<bool>(global2.d.x, true, global2.b.a, false), vec4<bool>(global2.d.x, global2.b.a, global2.a.a, global2.d.x), false), select(vec4<bool>(global2.b.a, true, true, true), vec4<bool>(false, global2.b.a, true, false), vec4<bool>(global2.a.a, global2.a.a, global2.d.x, global2.d.x)), vec4<bool>(true, true, true, true)))), u_input.a);
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) * global2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.c.x, -895f)) - 658f)), -1072f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(185f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1020f, -555f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1234f))))));
    let var_1 = Struct_1(!(!((0i == global2.e) || true)));
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global2.e, ~(~1i), global2.e), vec4<i32>(i32(-1i) * -2147483647i, min(u_input.b.x, 22262i) & reverseBits(-14437i), 1i, -12665i)) >> (~arg_0.x % 32u);
    return Struct_2(Struct_1(global2.b.a), Struct_1(false), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) + -1000f), global2.c.x))), vec2<bool>(global2.d.x, any(select(select(vec4<bool>(global2.a.a, true, var_1.a, global2.d.x), vec4<bool>(false, var_1.a, false, true), vec4<bool>(true, global2.d.x, false, global2.a.a)), select(vec4<bool>(global2.d.x, global2.d.x, false, true), vec4<bool>(global2.a.a, var_1.a, global2.b.a, var_1.a), var_1.a), select(vec4<bool>(false, var_1.a, var_1.a, false), vec4<bool>(false, true, true, global2.d.x), vec4<bool>(true, var_1.a, var_1.a, var_1.a))))), ~(select(global2.e, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), all(vec4<bool>(var_1.a, global2.d.x, global2.b.a, var_1.a))) | 5092i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~global2.e;
    let var_0 = func_1(u_input.c.yw);
    global1 = -1i;
    global2 = var_0;
    global0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c)), vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x))), !vec2<bool>(func_4(vec3<u32>(36096u, 18853u, u_input.c.x), vec4<f32>(1000f, var_0.c.x, -240f, 1000f), global2.a.a, vec3<i32>(var_0.e, 2147483647i, var_0.e)), true)))));
    var var_2 = _wgslsmith_clamp_i32(func_1(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 38574u), vec2<u32>(u_input.c.x, 0u))) ^ u_input.c.ww).e, -((u_input.a & -11598i) ^ ~(-83353i)), -2147483647i);
    global2 = var_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(790f * var_0.c.x), global2.c.x, _wgslsmith_div_f32(579f, var_1.x)) + vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x - var_1.x), _wgslsmith_f_op_f32(-var_0.c.x), 1562f, _wgslsmith_f_op_f32(min(1000f, global2.c.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(34971u, ~_wgslsmith_dot_vec2_u32(u_input.c.wy ^ u_input.c.xx, vec2<u32>(u_input.c.x, 64664u))), select(max(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 1i, u_input.b.x), min(vec3<i32>(6760i, u_input.a, 53074i), vec3<i32>(0i, 0i, -23038i))), vec3<i32>(~(-42205i), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.e, var_0.e, u_input.b.x, u_input.a), vec4<i32>(-1i, -1i, global2.e, 1i)), 1i)), max(select(_wgslsmith_div_vec3_i32(vec3<i32>(1i, global2.e, -2147483647i), vec3<i32>(0i, var_0.e, 2147483647i)), vec3<i32>(global2.e, 1i, var_0.e), select(vec3<bool>(global2.a.a, var_0.a.a, false), vec3<bool>(true, true, true), true)), select(~vec3<i32>(var_0.e, -7380i, u_input.b.x), -vec3<i32>(-5689i, 0i, var_0.e), true)), all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, var_0.a.a), vec3<bool>(var_0.d.x, false, true)), vec3<bool>(global2.a.a, false, global2.d.x), vec3<bool>(true, global2.b.a, false)))));
}

