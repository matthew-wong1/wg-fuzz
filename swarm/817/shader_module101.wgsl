struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(2147483647i, 0i), vec2<i32>(1i, 58578i), vec2<i32>(-25237i, i32(-2147483648)), vec2<i32>(-1i, -30030i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(-19333i, 1i), vec2<i32>(-76122i, -1i), vec2<i32>(1i, 65129i), vec2<i32>(-1i, -36429i), vec2<i32>(1i, 22762i), vec2<i32>(2147483647i, 19957i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-29477i, i32(-2147483648)), vec2<i32>(-1i, 27571i), vec2<i32>(-51984i, -1i), vec2<i32>(1i, 31207i), vec2<i32>(7151i, -33601i), vec2<i32>(-41611i, -24472i));

var<private> global1: i32 = 29959i;

var<private> global2: vec4<bool>;

var<private> global3: bool;

var<private> global4: vec3<f32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: f32) -> i32 {
    global0 = array<vec2<i32>, 19>();
    let var_0 = ~_wgslsmith_dot_vec3_u32(abs(~abs(u_input.d)), firstLeadingBit(~(~vec3<u32>(63283u, 94354u, 19991u))));
    var var_1 = Struct_1(~2147483647i | select(1i, ~(u_input.c & u_input.b), all(global2.xxy)), vec4<i32>(9845i, 12392i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 6189i) | vec4<i32>(1046i, u_input.c, -2147483647i, 2147483647i), -vec4<i32>(-2147483647i, u_input.c, u_input.c, -2147483647i)), _wgslsmith_dot_vec2_i32(countOneBits(~global0[_wgslsmith_index_u32(u_input.e, 19u)]), vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, 1i))), vec2<bool>(all(vec4<bool>(global2.x, !arg_0, u_input.e == 58201u, select(global2.x, arg_0, global2.x))), arg_0), abs(_wgslsmith_sub_i32(21254i, -_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.b, u_input.b, u_input.c)))), arg_1);
    let var_2 = var_1.c.x;
    let var_3 = ~abs(select(min(u_input.d, vec3<u32>(var_0, 30903u, 14015u)), firstTrailingBit(u_input.d), vec3<bool>(true, arg_0, var_1.c.x))) << ((firstLeadingBit(u_input.d) << (~u_input.d % vec3<u32>(32u))) % vec3<u32>(32u));
    return -1i;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    global3 = !(_wgslsmith_f_op_f32(-global4.x) == 613f);
    let var_0 = Struct_2(u_input.d, _wgslsmith_mult_vec4_i32(select(~(~vec4<i32>(u_input.a.x, arg_3.x, arg_3.x, arg_3.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, u_input.c, -28854i, -8642i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a.x, arg_2, 2147483647i), vec4<i32>(-25247i, 2147483647i, arg_3.x, arg_3.x))), global2.x), _wgslsmith_div_vec4_i32(vec4<i32>(-26549i, u_input.a.x, -8547i, arg_3.x) >> ((vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.d.x) & vec4<u32>(u_input.d.x, 41678u, u_input.e, u_input.d.x)) % vec4<u32>(32u)), -(vec4<i32>(-1i, u_input.c, -17496i, arg_3.x) >> (vec4<u32>(u_input.e, 0u, u_input.d.x, u_input.d.x) % vec4<u32>(32u))))));
    global4 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1417f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -449f)) - arg_1), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2155f))) - arg_1), -182f, ((global2.x && false) & !global2.x) | any(vec2<bool>(global2.x, global2.x)))));
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(~arg_3.x, arg_2, 2147483647i, func_3(false || global2.x, _wgslsmith_f_op_f32(-global4.x)) & (func_3(global2.x, arg_0.x) & func_3(global2.x, arg_0.x))), select(vec4<i32>(-5131i, -2147483647i, firstLeadingBit(1i), u_input.a.x), var_0.b, !(!(!vec4<bool>(true, global2.x, true, global2.x)))));
    var var_1 = Struct_2(vec3<u32>(3752u, ~var_0.a.x ^ 1u, min(1u, firstTrailingBit(_wgslsmith_mod_u32(var_0.a.x, var_0.a.x)))), min(var_0.b << (_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.a.x, u_input.e, 50184u, 4294967295u), vec4<u32>(var_0.a.x, 41421u, var_0.a.x, var_0.a.x)) % vec4<u32>(32u)), reverseBits(vec4<i32>(-1i) * -var_0.b)));
    return Struct_1(firstTrailingBit(var_0.b.x) & -var_1.b.x, reverseBits(~firstTrailingBit(vec4<i32>(38612i, -1771i, arg_3.x, -2147483647i)) | ((var_1.b | vec4<i32>(u_input.c, 24608i, 1i, -2147483647i)) & abs(var_0.b))), vec2<bool>(true, true), -2147483647i, -1252f);
}

fn func_1(arg_0: f32) -> vec3<u32> {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 590f, global4.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1600f, -335f), _wgslsmith_f_op_f32(-global4.x), true)))), _wgslsmith_f_op_f32(317f * arg_0), ~(-1i), ~u_input.a);
    let var_1 = vec2<i32>(1i, ~(~(~(-1i))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0, 1000f)))), _wgslsmith_f_op_f32(227f + _wgslsmith_f_op_f32(floor(1026f))), _wgslsmith_f_op_f32(ceil(func_2(vec4<f32>(arg_0, global4.x, arg_0, 1034f), -328f, -22385i, u_input.a).e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1386f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-1000f, global4.x), global4.x, _wgslsmith_f_op_f32(arg_0 * var_0.e), global4.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(902f, -2289f, arg_0, -107f), _wgslsmith_div_vec4_f32(vec4<f32>(-1930f, -1223f, -647f, var_0.e), vec4<f32>(989f, -955f, 1378f, 1000f)))), var_0.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.e, global4.x, global4.x, -739f), vec4<f32>(-1354f, 508f, 606f, -1205f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -540f, 212f, var_0.e) * vec4<f32>(-1372f, global4.x, -842f, var_0.e)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, var_0.e, arg_0, -234f), vec4<f32>(323f, -1000f, arg_0, global4.x))))) + vec4<f32>(-650f, -171f, 219f, -2058f)));
    global2 = select(!(!vec4<bool>(!var_0.c.x, global2.x && global2.x, global2.x, false)), !vec4<bool>(func_2(_wgslsmith_f_op_vec4_f32(var_2 - var_2), arg_0, var_1.x << (u_input.e % 32u), ~u_input.a).c.x, var_0.c.x, true, false), select(select(select(!vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, false), vec4<bool>(false, false, var_0.c.x, var_0.c.x)), vec4<bool>(!var_0.c.x, all(vec2<bool>(true, false)), true, global2.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.c.x, global2.x, true), true)), select(!select(vec4<bool>(global2.x, var_0.c.x, global2.x, false), vec4<bool>(false, global2.x, global2.x, true), vec4<bool>(true, false, global2.x, var_0.c.x)), select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(false, true, true, var_0.c.x), !var_0.c.x), true), select(select(select(vec4<bool>(global2.x, true, true, var_0.c.x), vec4<bool>(var_0.c.x, global2.x, true, true), true), select(vec4<bool>(var_0.c.x, global2.x, true, false), vec4<bool>(global2.x, false, var_0.c.x, false), vec4<bool>(global2.x, true, false, global2.x)), all(global2.xxw)), vec4<bool>(all(vec3<bool>(global2.x, global2.x, global2.x)), all(global2.yxw), false, true && global2.x), select(!vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, false), !vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x), !vec4<bool>(true, false, var_0.c.x, global2.x)))));
    global3 = select(true & global2.x, true, any(!select(!vec4<bool>(global2.x, global2.x, true, global2.x), select(vec4<bool>(global2.x, true, false, var_0.c.x), vec4<bool>(global2.x, true, false, true), true), vec4<bool>(true, global2.x, global2.x, false))));
    return _wgslsmith_div_vec3_u32(u_input.d, ~_wgslsmith_sub_vec3_u32(u_input.d, min(_wgslsmith_sub_vec3_u32(u_input.d, vec3<u32>(1u, u_input.e, 4294967295u)), reverseBits(vec3<u32>(u_input.e, 4294967295u, u_input.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(global4.x), abs(vec4<i32>(u_input.c, u_input.c, -47559i, u_input.b) | vec4<i32>(2147483647i, 0i, u_input.b, u_input.b)) >> (~select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, u_input.e, 0u, u_input.d.x), vec4<u32>(0u, 14096u, 4294967295u, u_input.d.x)), select(vec4<u32>(1u, u_input.d.x, u_input.e, 58772u), vec4<u32>(1u, 1u, 0u, 61440u), vec4<bool>(global2.x, global2.x, false, false)), global2.x) % vec4<u32>(32u)));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1054f, _wgslsmith_f_op_f32(trunc(-1557f)), global4.x, _wgslsmith_f_op_f32(global4.x - global4.x)))), 1751f, reverseBits(countOneBits(2147483647i)), vec3<i32>(_wgslsmith_sub_i32(var_0.b.x, u_input.c) | countOneBits(-1i), _wgslsmith_add_i32(~var_0.b.x, -max(0i, u_input.a.x)), ~var_0.b.x));
    var_0 = Struct_2(min(var_0.a, var_0.a), ~(~(~vec4<i32>(1i, var_0.b.x, var_1.a, 1i))));
    let var_2 = ~var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(2544f, max(vec3<i32>(-2147483647i, u_input.b, var_0.b.x) << ((~u_input.d & ~vec3<u32>(27894u, var_0.a.x, 3940u)) % vec3<u32>(32u)), var_0.b.yyy));
}

