struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

var<private> global1: i32;

var<private> global2: Struct_5;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_4) -> vec4<f32> {
    let var_0 = arg_0;
    var var_1 = vec2<u32>(var_0.e.c, 1u);
    global1 = firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e.a.x, var_0.e.a.x, abs(var_0.a.x << (70293u % 32u)), i32(-1i) * -arg_1.a.a.x), select(min(-vec4<i32>(global2.a.a.x, -10864i, 23003i, arg_0.a.x), abs(vec4<i32>(-1i, arg_2.b.a.x, 75894i, global2.e.a.x))), (vec4<i32>(arg_0.d.a.x, -1i, var_0.b.a.x, arg_2.b.a.x) ^ vec4<i32>(arg_0.a.x, var_0.e.a.x, arg_1.b.a.x, arg_0.a.x)) >> (u_input.c % vec4<u32>(32u)), true)));
    global1 = -var_0.e.a.x;
    let var_2 = Struct_2(vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(max(505f, _wgslsmith_f_op_f32(floor(-632f))))), arg_2.b, abs(vec2<i32>(i32(-1i) * -46764i, -48110i)), (false && global2.e.d) && any(select(select(vec3<bool>(true, false, arg_0.e.b), vec3<bool>(arg_2.b.d, var_0.e.b, var_0.b.b), vec3<bool>(global2.c, global2.c, arg_0.d.b)), select(vec3<bool>(var_0.d.b, false, true), vec3<bool>(true, arg_1.a.b, true), vec3<bool>(arg_1.b.b, var_0.d.b, false)), var_0.d.b)));
    return vec4<f32>(927f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(686f)))), 1291f), 337f, _wgslsmith_f_op_f32(370f * -1211f));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(466f, _wgslsmith_f_op_f32(f32(-1f) * -1557f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-304f - -137f)), -550f, 362f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(706f, -730f, global2.d.x, global0[_wgslsmith_index_u32(4294967295u, 10u)]) + vec4<f32>(905f, -872f, -1742f, global0[_wgslsmith_index_u32(global2.b.c, 10u)])), vec4<f32>(-1368f, 483f, global0[_wgslsmith_index_u32(56826u, 10u)], global0[_wgslsmith_index_u32(global2.b.c, 10u)]))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-669f, global2.d.x, global0[_wgslsmith_index_u32(4294967295u, 10u)], 922f) - vec4<f32>(global0[_wgslsmith_index_u32(0u, 10u)], global2.d.x, -500f, global2.d.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(2740u, 10u)], -578f, global2.d.x, -330f))))) - _wgslsmith_f_op_vec4_f32(func_3(Struct_3(vec3<i32>(~arg_1, _wgslsmith_sub_i32(global2.a.a.x, arg_1), arg_1), Struct_1(vec2<i32>(-1i, arg_1), global2.c && true, min(global2.b.c, u_input.a), global2.b.b), _wgslsmith_div_vec4_f32(vec4<f32>(-1508f, -1661f, -156f, -1002f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-340f, -568f, global2.d.x, global2.d.x) + vec4<f32>(global0[_wgslsmith_index_u32(1u, 10u)], -827f, global0[_wgslsmith_index_u32(23828u, 10u)], global2.d.x))), Struct_1(global2.e.a, true, 1u ^ u_input.c.x, !global2.a.b), global2.a), Struct_5(global2.e, Struct_1(~vec2<i32>(-4462i, -6978i), false, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, global2.e.c, 21141u), u_input.c.ywz), !global2.b.b), all(vec4<bool>(arg_0, global2.a.d, false, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.x, 722f, 106f)), global2.a), Struct_4(global2.d.zy, global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x))))));
    var var_1 = var_0.x;
    let var_2 = !(1447f >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 10u)])) && true;
    global1 = abs(_wgslsmith_dot_vec4_i32(vec4<i32>(min(global2.e.a.x, -9714i) ^ -arg_1, arg_1, _wgslsmith_sub_i32(~2147483647i, _wgslsmith_mult_i32(global2.e.a.x, -18586i)), 39527i), vec4<i32>(~arg_1, 1i, i32(-1i) * -16433i, -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 17920i), global2.e.a))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(833f)));
    return Struct_5(global2.a, global2.e, arg_0, _wgslsmith_f_op_vec3_f32(-var_0.xyw), Struct_1(vec2<i32>(select(-arg_1, global2.a.a.x, any(vec2<bool>(true, false))), 20360i), arg_0, global2.b.c, any(!vec4<bool>(arg_0, false, false, false))));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_sub_u32(global2.a.c, ~(~abs(reverseBits(56973u))));
    global2 = func_2(global2.b.d, global2.b.a.x & (_wgslsmith_add_i32(_wgslsmith_clamp_i32(-1i, 33254i, global2.b.a.x), global2.b.a.x & global2.e.a.x) & ~_wgslsmith_mult_i32(global2.b.a.x, -2147483647i)));
    let var_1 = vec4<i32>(firstTrailingBit(-25386i), 2295i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(global2.e.a.x, global2.b.a.x) << ((64618u >> (0u % 32u)) % 32u), 1i), global2.a.a), func_2(false, i32(-1i) * -1i).b.a.x);
    let var_2 = Struct_2(global2.d.yy, Struct_1(max(select(vec2<i32>(var_1.x, 0i), global2.b.a, !global2.c), select(vec2<i32>(var_1.x, global2.b.a.x), global2.a.a, vec2<bool>(false, global2.b.b)) & ~vec2<i32>(-3866i, 2147483647i)), !any(!vec4<bool>(global2.c, global2.a.d, false, global2.a.b)), global2.e.c, global2.c), _wgslsmith_sub_vec2_i32(vec2<i32>(min(_wgslsmith_mod_i32(var_1.x, var_1.x), var_1.x), i32(-1i) * -2147483647i), var_1.zz), false);
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(-var_2.b.a.x, 1i, -select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c.x, var_1.x), vec2<i32>(2147483647i, 0i)), i32(-1i) * -12642i, func_2(global2.c, global2.b.a.x).a.d), var_2.b.a.x), -var_1);
    return -7019i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~min(0i, max(func_1(), global2.e.a.x));
    let var_1 = global2.e.c;
    var var_2 = Struct_4(_wgslsmith_div_vec2_f32(global2.d.xz, func_2(true, firstLeadingBit(abs(global2.e.a.x))).d.zz), Struct_1(abs(vec2<i32>(_wgslsmith_sub_i32(global2.b.a.x, -2147483647i), global2.b.a.x << (1u % 32u))), all(vec4<bool>(1413f == global2.d.x, global2.d.x != 1317f, 1000f >= global0[_wgslsmith_index_u32(u_input.c.x, 10u)], true)), ~u_input.a, (global0[_wgslsmith_index_u32(global2.e.c, 10u)] < _wgslsmith_f_op_f32(ceil(-1000f))) | (global2.a.d & true)), global0[_wgslsmith_index_u32(max(~global2.e.c, ~u_input.b.x), 10u)]);
    var_2 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global2.d.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(8929u, global2.b.c), 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)]) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-248f, global2.d.x))))), Struct_1(_wgslsmith_mod_vec2_i32(~(-vec2<i32>(var_2.b.a.x, 1i)), var_2.b.a), var_2.b.d | true, var_2.b.c, true), 785f);
    var var_3 = 896f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.a, global2.d.xz, vec2<bool>(true, false))) - vec2<f32>(global2.d.x, var_2.c)) * global2.d.yx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, -1032f, -199f, var_2.c)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(845f, var_2.a.x, global2.d.x, -1161f))))))), var_2.b.a.x);
}

