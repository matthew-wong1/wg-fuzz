struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: bool = false;

var<private> global2: f32 = 1537f;

var<private> global3: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: u32) -> i32 {
    let var_0 = Struct_3(global3.a);
    let var_1 = -min(~u_input.b, vec4<i32>(-var_0.a, global3.a, firstLeadingBit(_wgslsmith_mult_i32(u_input.a.x, 53705i)), -(-59322i | var_0.a)));
    let var_2 = select(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(31901u, 1u)), min(12440u, 31427u)) == arg_1, arg_0, global3.b);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.c.x))));
    global1 = select(false, true, any(!select(select(vec2<bool>(false, true), vec2<bool>(var_2, true), global3.b), select(vec2<bool>(var_2, false), vec2<bool>(true, var_2), vec2<bool>(arg_0, true)), !vec2<bool>(true, global3.b))));
    return var_0.a;
}

fn func_2(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = Struct_1(func_3(-5193i != ~abs(global3.a), 4294967295u), any(select(!(!vec3<bool>(global3.b, true, global3.b)), vec3<bool>(global3.b, false, global3.b), any(select(vec3<bool>(global3.b, false, false), vec3<bool>(false, global3.b, global3.b), false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.c.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1182f - arg_1))), -392f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global3.c - global3.c), global3.c)) - vec3<f32>(_wgslsmith_div_f32(-389f, 862f), _wgslsmith_f_op_f32(-179f + global3.c.x), global3.c.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c.zw, vec2<u32>(71647u, global3.e)), 75344u, 1u), u_input.d) | select(~u_input.d, ~(~u_input.c.zzy), true), _wgslsmith_div_u32(_wgslsmith_div_u32(~global3.d.x, 18204u), _wgslsmith_mult_u32(~abs(0u), _wgslsmith_add_u32(select(40351u, global3.e, false), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e, u_input.e), vec3<u32>(u_input.e, u_input.c.x, global3.e))))));
    let var_1 = var_0;
    var var_2 = select(!vec2<bool>(all(vec2<bool>(false, true)), true), !(!vec2<bool>(var_1.c.x != arg_0, true)), !vec2<bool>(global3.b, var_1.b));
    let var_3 = global3.c.x;
    let var_4 = _wgslsmith_add_vec2_u32(var_1.d.zx | _wgslsmith_sub_vec2_u32(vec2<u32>(267u | var_0.e, global3.e), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 42629u), vec2<u32>(u_input.c.x, 0u)), ~46663u)), min(vec2<u32>(1u, u_input.d.x) ^ _wgslsmith_mod_vec2_u32(var_1.d.zy, var_0.d.xy), ~vec2<u32>(4294967295u, global3.d.x)));
    return abs((_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(12901u, u_input.d.x, 4294967295u), vec3<u32>(var_4.x, 27067u, 0u)), var_4.x) ^ 4294967295u) >> (var_0.d.x % 32u));
}

fn func_1() -> f32 {
    global1 = global3.b;
    global0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.c.x, _wgslsmith_f_op_f32(-global3.c.x))) * 1238f), 1465f);
    let var_0 = max(u_input.b.xzy, -_wgslsmith_mult_vec3_i32(~u_input.b.xwy, select(vec3<i32>(global3.a, -38512i, global3.a), u_input.b.wwx, false))) | ~select(~(~u_input.b.yxw), u_input.b.xzx, vec3<bool>(all(vec4<bool>(true, true, global3.b, false)), global3.b, any(vec4<bool>(global3.b, global3.b, global3.b, false))));
    global1 = all(!select(vec2<bool>(global3.b, global3.b), !(!vec2<bool>(global3.b, global3.b)), select(select(vec2<bool>(global3.b, global3.b), vec2<bool>(global3.b, false), true), vec2<bool>(global3.b, true), any(vec4<bool>(true, false, global3.b, true)))));
    let var_1 = Struct_3(firstLeadingBit(global3.a));
    return global3.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, global3.c.x, global3.c.x, -894f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.c.x, -426f, -107f, -1689f), vec4<f32>(global3.c.x, 518f, -704f, 688f), global3.b))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-312f, 1187f, -1066f, global3.c.x)) + vec4<f32>(global3.c.x, -1000f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(exp2(global3.c.x)))))));
    var var_1 = Struct_3(select(select(2147483647i, _wgslsmith_mult_i32(u_input.a.x ^ global3.a, 51243i | global3.a), all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))), u_input.a.x, true));
    global0 = global3.d.x;
    let var_2 = select(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~abs(u_input.c.xzz), global3.d << (vec3<u32>(u_input.e, global3.d.x, u_input.d.x) % vec3<u32>(32u))), vec3<u32>(~u_input.d.x & ~u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 104892u, 1u, 41217u), u_input.c)), ~global3.e)), select(countOneBits(global3.d.x) & _wgslsmith_add_u32(_wgslsmith_mod_u32(0u, 40608u), max(global3.d.x, global3.e)), 75896u, var_1.a > var_1.a), all(select(vec3<bool>(global3.c.x > -700f, all(vec4<bool>(global3.b, true, global3.b, true)), any(vec3<bool>(global3.b, true, false))), vec3<bool>(true, true, global3.b), vec3<bool>(false, false, global3.b | global3.b))));
    let var_3 = ~vec4<u32>(var_2, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(39273u, 102166u, global3.d.x), global3.d), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.e, 5074u, u_input.e), u_input.c), max(u_input.e, 4294967295u), u_input.c.x)), min(func_2(_wgslsmith_f_op_f32(step(2047f, global3.c.x)), global3.c.x), 1u), ~(~(~4294967295u)));
    var var_4 = false;
    global1 = !(true || ((-2147483647i <= var_1.a) && (global3.b || global3.b))) && !all(vec2<bool>(global3.b, !global3.b));
    global2 = var_0.x;
    var var_5 = ~u_input.c.zxy;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, abs(select(select(vec3<i32>(0i, u_input.a.x, 1631i), u_input.b.yxz, select(vec3<bool>(false, global3.b, true), vec3<bool>(false, true, true), global3.b)), _wgslsmith_mult_vec3_i32(u_input.b.zyw, vec3<i32>(var_1.a, u_input.a.x, global3.a)) << (vec3<u32>(4294967295u, 44794u, 76504u) % vec3<u32>(32u)), true)));
}

