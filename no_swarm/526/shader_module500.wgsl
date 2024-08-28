struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: Struct_3;

var<private> global2: array<f32, 18>;

var<private> global3: bool = false;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = select(~abs(u_input.a), _wgslsmith_add_u32(u_input.a, 5251u), global0.x);
    global0 = !vec4<bool>(global0.x, true, !select(global1.c, true, true), global0.x);
    let var_1 = (0i | min(global1.b.a, -_wgslsmith_mod_i32(global1.b.a, -51919i))) & ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.a, ~global1.b.a, -4136i, global1.b.a), ~vec4<i32>(-2147483647i, -2430i, global1.b.a, global1.b.a));
    global1 = Struct_3(!vec2<bool>(true, global0.x), Struct_1(firstTrailingBit(~(i32(-1i) * -27432i)), vec3<f32>(_wgslsmith_f_op_f32(-924f + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(trunc(global1.b.b.x)), global1.b.b.x)), global1.b.a >= var_1);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 18u)], -561f, global1.b.b.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.b.b.x, 885f, -283f), global1.b.b)))));
    return !vec4<bool>(false, global0.x, abs(global1.b.a >> (1u % 32u)) >= -_wgslsmith_sub_i32(-1i, 33193i), !(global1.b.b.x <= global2[_wgslsmith_index_u32(max(u_input.a, 1u), 18u)]));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: u32) -> bool {
    var var_0 = !select(vec3<bool>(!global1.a.x, any(vec4<bool>(true, false, false, global0.x)) | global1.a.x, all(vec3<bool>(false, global0.x, true))), select(!vec3<bool>(global1.a.x, global1.c, true), select(!vec3<bool>(global0.x, global0.x, global1.a.x), global0.zxy, !global0.yyz), false), !global0.zxz);
    let var_1 = vec3<u32>(min(u_input.a, 41445u), select(1u, countOneBits(12788u), all(!vec4<bool>(global1.c, false, global0.x, global0.x))), arg_2) ^ vec3<u32>(_wgslsmith_clamp_u32(arg_2 << (4294967295u % 32u), u_input.a, ~_wgslsmith_mod_u32(u_input.a, u_input.a)), abs(49708u), u_input.a >> (~1u % 32u));
    global2 = array<f32, 18>();
    let var_2 = Struct_3(!(!func_3(_wgslsmith_f_op_f32(-452f * -629f)).zx), global1.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, global1.b.a), vec2<i32>(global1.b.a, -1533i)) & max(vec2<i32>(global1.b.a, 2147483647i), vec2<i32>(global1.b.a, global1.b.a)), -_wgslsmith_add_vec2_i32(vec2<i32>(18170i, global1.b.a), vec2<i32>(-2147483647i, global1.b.a))) == reverseBits(_wgslsmith_clamp_i32(86468i, ~global1.b.a, global1.b.a)));
    var_0 = !(!(!(!select(global0.zyx, vec3<bool>(global0.x, false, false), global0.zyx))));
    return global1.a.x;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> vec4<bool> {
    global3 = func_4(arg_1, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.b.b.x, -1000f, -583f, 457f), vec4<f32>(-480f, -1000f, 635f, global2[_wgslsmith_index_u32(u_input.a, 18u)])))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.b.x, -817f, arg_0.a.x, 127f) + vec4<f32>(-713f, -411f, -416f, -1538f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1564f, 1381f, arg_0.a.x)), func_3(1078f)))))), u_input.a);
    let var_0 = global1.b;
    global1 = Struct_3(vec2<bool>(func_4(arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.b.x, 550f, var_0.b.x, global1.b.b.x)), ~1u) || any(vec3<bool>(true, false, true)), func_4(arg_1, vec4<f32>(-1477f, arg_1.a.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 18u)] - -542f), _wgslsmith_f_op_f32(-arg_1.a.x)), 17957u)), global1.b, any(!vec4<bool>(true, false, false, global0.x)) && false);
    var var_1 = global1.b;
    let var_2 = Struct_2(global1.a.x, global1.b, Struct_1(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(0i, var_0.a)), vec2<i32>(-var_0.a, global1.b.a)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(841f - global2[_wgslsmith_index_u32(u_input.a, 18u)]))), -535f)), !(!select(global1.a, global1.a, global1.a.x)));
    return !vec4<bool>(true, all(!select(vec4<bool>(var_2.d.x, false, var_2.d.x, var_2.a), vec4<bool>(true, true, global0.x, true), vec4<bool>(false, var_2.d.x, true, true))), global1.c, false);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    global0 = !func_2(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global1.b.b.yy, vec2<f32>(arg_0.b.x, arg_0.b.x))))), Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global1.b.b.xz, vec2<f32>(-561f, arg_0.b.x)), arg_0.b.zz)));
    var var_0 = global0.x;
    var var_1 = !vec3<bool>(global0.x, !all(!vec4<bool>(true, global0.x, global0.x, global1.a.x)), false);
    let var_2 = _wgslsmith_dot_vec4_u32(~(arg_1 | ~(~vec4<u32>(35163u, arg_1.x, 30884u, u_input.a))), ~_wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(arg_1, arg_1), vec4<u32>(4863u ^ arg_1.x, ~3569u, ~1u, 43892u), ~vec4<u32>(u_input.a, arg_1.x, arg_1.x, u_input.a)));
    global1 = Struct_3(!vec2<bool>(true & all(vec4<bool>(global1.a.x, global0.x, true, global0.x)), var_1.x), global1.b, !global1.a.x);
    return Struct_2(var_2 != arg_1.x, Struct_1(min(countOneBits(~arg_0.a), arg_0.a), vec3<f32>(-746f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2815f) + arg_0.b.x), -1000f)), Struct_1(-43608i, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global1.b.b.x, 1000f)), global2[_wgslsmith_index_u32(var_2, 18u)], -1742f), global1.b.b)), !vec2<bool>(false, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.b, max(~(~vec4<u32>(u_input.a, u_input.a, 25592u, 1u)), firstTrailingBit(vec4<u32>(u_input.a, 2584u, 4294967295u, u_input.a) ^ vec4<u32>(u_input.a, 4294967295u, u_input.a, 18733u))) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 102233u, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(17113u, 1u, 1u, u_input.a), vec4<u32>(99826u, u_input.a, u_input.a, 0u))));
    var var_1 = !(!vec4<bool>(true, _wgslsmith_f_op_f32(global1.b.b.x * var_0.c.b.x) >= func_1(global1.b, vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)).c.b.x, global1.c, global0.x));
    var var_2 = true;
    var var_3 = 4294967295u;
    global2 = array<f32, 18>();
    var_2 = global1.a.x;
    global3 = !func_1(var_0.c, ~(~(~vec4<u32>(4294967295u, u_input.a, u_input.a, 38302u)))).a;
    let var_4 = true;
    var var_5 = vec2<i32>(-1i, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(-(-(~vec2<i32>(-1i, var_5.x)) ^ _wgslsmith_div_vec2_i32(~vec2<i32>(-13100i, var_0.c.a), vec2<i32>(var_0.c.a, global1.b.a))), select(~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(0u, 4294967295u, 1u))), _wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)), min(countOneBits(vec3<u32>(u_input.a, u_input.a, 14687u)), vec3<u32>(u_input.a, 0u, 35270u))), !vec3<bool>(func_3(var_0.c.b.x).x, var_1.x, false)), global1.b.b.x, select(u_input.a, 1u, _wgslsmith_sub_u32(u_input.a, ~1u) < 18052u));
}

