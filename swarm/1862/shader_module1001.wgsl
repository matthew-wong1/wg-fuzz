struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = 0i;

var<private> global2: vec4<u32> = vec4<u32>(326u, 3485u, 29850u, 1917u);

var<private> global3: vec4<bool>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = !arg_2.a.x;
    global3 = select(select(!(!vec4<bool>(arg_1.b.x, false, arg_2.a.x, true)), vec4<bool>(true, _wgslsmith_f_op_f32(abs(1316f)) > _wgslsmith_f_op_f32(trunc(-328f)), !(arg_0.b.x & false), any(select(arg_0.b, vec3<bool>(arg_0.a.x, global3.x, arg_2.a.x), arg_0.b))), arg_2.b.x), vec4<bool>(true, true, select(arg_2.b.x, !(arg_3 >= -2147483647i), ~arg_2.c.x > arg_3), arg_2.b.x), select(!vec4<bool>(!arg_2.b.x, !global3.x, true, arg_2.c.x != -27083i), select(vec4<bool>(true, arg_0.b.x && global3.x, !arg_2.a.x, true), select(select(vec4<bool>(true, false, global3.x, true), vec4<bool>(arg_2.a.x, arg_1.a.x, false, true), arg_1.a.x), !vec4<bool>(false, arg_1.a.x, false, arg_0.a.x), vec4<bool>(global3.x, false, true, true)), !(arg_1.b.x == arg_1.b.x)), all(vec4<bool>(false, arg_2.b.x, any(vec2<bool>(true, true)), true))));
    global1 = -79834i;
    let var_1 = ~firstTrailingBit(~reverseBits(u_input.c));
    let var_2 = any(vec3<bool>(arg_2.b.x, !(abs(arg_1.c.x) >= abs(1i)), true));
    return _wgslsmith_div_f32(765f, -820f);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_dot_vec3_i32(u_input.e.ywz, vec3<i32>(-1i, -u_input.d.x, _wgslsmith_dot_vec4_i32(u_input.e, ~(-u_input.e))));
    let var_1 = vec4<bool>(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, false, global3.x), u_input.d), Struct_1(global3.zxw, vec3<bool>(false, global3.x, false), vec2<i32>(var_0, u_input.a.x)), Struct_1(global3.yxz, vec3<bool>(global3.x, true, false), u_input.d), ~var_0)) * -1131f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(270f + -1037f) * -1550f), global3.x);
    global0 = true;
    let var_2 = Struct_1(global3.zxz, vec3<bool>(select(any(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.zy)), any(select(vec4<bool>(var_1.x, true, false, false), var_1, var_1.x)), false), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 64991u, u_input.b.x, 28347u), vec4<u32>(u_input.b.x, 1u, 21349u, u_input.c)) > ~4294967295u, false), -_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(1i, var_0)), vec2<i32>(-1i, var_0)), min(u_input.e.xw, u_input.a.zx) ^ u_input.e.xw));
    var var_3 = var_1;
    return global2.x;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(global3.xwz, select(select(global3.zyz, !select(vec3<bool>(global3.x, true, false), vec3<bool>(global3.x, false, global3.x), global3.x), !(!vec3<bool>(true, global3.x, global3.x))), global3.wzw, vec3<bool>(global3.x, (u_input.a.x != 2147483647i) == global3.x, global3.x & any(vec4<bool>(global3.x, global3.x, false, true)))), vec2<i32>(-1i, u_input.d.x));
    global1 = 1i;
    let var_1 = u_input.e.xxz;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1339f + -526f)), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * 223f)))))), -555f);
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(var_2.yy));
    return _wgslsmith_sub_u32(func_2() << ((u_input.c | ~(~global2.x)) % 32u), ~(~reverseBits(global2.x << (u_input.c % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<bool>(!global3.x, !(!global3.x) & false, !all(vec4<bool>(true, true, true, true)), false);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -1000f, -1378f), vec3<f32>(804f, 384f, -1495f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1650f, -239f, 171f))))))) * vec3<f32>(1f, 1f, 1f));
    var var_1 = Struct_1(vec3<bool>(true, true, !(!(!global3.x))), !global3.wzy, reverseBits(countOneBits(vec2<i32>(u_input.a.x, 40673i))) >> (global2.zz % vec2<u32>(32u)));
    global0 = true;
    let var_2 = ((u_input.b.x != func_1()) & false) & (4482i != var_1.c.x);
    let var_3 = abs(countOneBits(~(~vec2<u32>(global2.x, u_input.c))));
    var var_4 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(17765u, u_input.b.x), global2.wx)), var_3), abs(~_wgslsmith_add_u32(u_input.b.x >> (0u % 32u), 1u)), u_input.b.x, reverseBits(~1u));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -383f)))))) - _wgslsmith_f_op_f32(var_0.x - 274f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(var_1.c >> (vec2<u32>(var_3.x, var_4.x) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(var_1.c, max(vec2<i32>(u_input.e.x, 33554i), vec2<i32>(u_input.e.x, -51291i)))), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(min(u_input.a.yz, u_input.d), vec2<i32>(-301i, var_1.c.x)), max(-vec2<i32>(36889i, 28747i), u_input.d | vec2<i32>(-20188i, var_1.c.x)))), min(-u_input.e, firstTrailingBit(vec4<i32>(0i, u_input.d.x, -20148i, var_1.c.x) | _wgslsmith_mult_vec4_i32(u_input.e, vec4<i32>(var_1.c.x, var_1.c.x, u_input.a.x, var_1.c.x)))), select(vec2<u32>(4294967295u, 1u), vec2<u32>(global2.x, 90005u), global3.x), u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yx * var_0.zx)));
}

