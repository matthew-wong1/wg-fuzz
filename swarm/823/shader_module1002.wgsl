struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8>;

var<private> global1: array<Struct_2, 19>;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> i32 {
    global0 = array<vec2<bool>, 8>();
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.c.b.c, _wgslsmith_div_f32(310f, 412f))));
    let var_1 = 1i;
    var var_2 = arg_0;
    var var_3 = Struct_4(var_2.e.b, Struct_2(all(vec4<bool>(arg_1, true, any(vec4<bool>(true, false, true, var_2.a.a)), arg_1)), arg_0.e.b), all(!vec3<bool>(arg_0.e.a, false, arg_1)), global1[_wgslsmith_index_u32(~(~(~u_input.b.x)), 19u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(1544f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.c), var_2.c.b.c)))));
    return ~(-19132i);
}

fn func_2() -> Struct_3 {
    global2 = Struct_1(vec3<i32>(global2.a.x, _wgslsmith_add_i32(1i, _wgslsmith_sub_i32(func_3(Struct_3(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global2.b.zz, Struct_2(false, Struct_1(global2.b.wyw, global2.b, -1393f)), global2.b.wyy, Struct_2(false, Struct_1(global2.b.zwx, vec4<i32>(global2.b.x, -14711i, global2.b.x, 1i), 876f))), true, global2.b.x), global2.a.x << (u_input.a.x % 32u))), -84272i ^ global2.a.x), min(global2.b ^ ~global2.b, vec4<i32>(0i, ~2115i, 19262i, global2.b.x)) & -max(global2.b, select(global2.b, vec4<i32>(28918i, 1i, -1i, global2.b.x), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_f32(global2.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.c))))));
    var var_0 = Struct_4(Struct_1(min(vec3<i32>(func_3(Struct_3(Struct_2(false, Struct_1(vec3<i32>(global2.b.x, 1i, global2.a.x), global2.b, -1041f)), vec2<i32>(global2.a.x, 54182i), Struct_2(true, Struct_1(vec3<i32>(global2.a.x, 25948i, -10085i), vec4<i32>(global2.a.x, global2.b.x, global2.b.x, -1234i), -290f)), global2.b.zww, global1[_wgslsmith_index_u32(u_input.b.x, 19u)]), true, global2.a.x), func_3(Struct_3(Struct_2(true, Struct_1(vec3<i32>(31479i, global2.b.x, -7841i), global2.b, 726f)), vec2<i32>(2147483647i, 39560i), Struct_2(false, Struct_1(global2.b.zyy, vec4<i32>(global2.b.x, 1i, 0i, 2147483647i), 1007f)), vec3<i32>(global2.b.x, -2147483647i, 8428i), Struct_2(false, Struct_1(vec3<i32>(-2147483647i, -2147483647i, -11494i), vec4<i32>(global2.b.x, -1i, global2.b.x, global2.b.x), global2.c))), false, -1i), 2147483647i), global2.a), min(vec4<i32>(global2.b.x, global2.b.x, -23001i, global2.b.x) | select(vec4<i32>(global2.b.x, global2.b.x, 0i, 1595i), global2.b, false), _wgslsmith_add_vec4_i32(vec4<i32>(37779i, global2.a.x, -44288i, global2.b.x), select(global2.b, vec4<i32>(77293i, global2.a.x, 2147483647i, global2.a.x), false))), _wgslsmith_f_op_f32(global2.c - global2.c)), global1[_wgslsmith_index_u32(countOneBits(53056u), 19u)], false, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, firstTrailingBit(u_input.b.x) >> (1u % 32u)), 19u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1367f, 1078f) - vec2<f32>(-674f, global2.c)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-650f, 392f) + vec2<f32>(global2.c, 1202f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, 726f))))));
    var var_1 = firstTrailingBit(1u);
    var_1 = u_input.a.x;
    let var_2 = ~countOneBits(u_input.b.x) ^ ~(~4294967295u);
    return Struct_3(Struct_2((u_input.b.x < ~1u) | false, Struct_1(~(~vec3<i32>(var_0.d.b.a.x, 4119i, global2.a.x)), _wgslsmith_add_vec4_i32(-var_0.a.b, vec4<i32>(0i, 1i, global2.a.x, global2.b.x)), var_0.b.b.c)), -vec2<i32>(-1i << (u_input.b.x % 32u), _wgslsmith_add_i32(_wgslsmith_add_i32(global2.a.x, var_0.b.b.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(32781i, 66018i), global2.a.yz))), Struct_2(any(select(select(vec4<bool>(var_0.c, var_0.c, true, false), vec4<bool>(var_0.b.a, var_0.b.a, true, true), var_0.d.a), vec4<bool>(true, var_0.c, var_0.b.a, true), all(vec3<bool>(false, var_0.d.a, var_0.d.a)))), Struct_1(-vec3<i32>(-1i, 45942i, global2.b.x), vec4<i32>(2147483647i, -40850i, var_0.b.b.b.x, var_0.d.b.b.x), 127f)), global2.b.xxx, Struct_2(var_0.b.a, var_0.b.b));
}

fn func_1(arg_0: vec3<bool>) -> bool {
    let var_0 = global2.a.x;
    global0 = array<vec2<bool>, 8>();
    let var_1 = func_2();
    var var_2 = Struct_4(Struct_1(var_1.d, vec4<i32>(0i, 0i, min(var_1.e.b.b.x, ~(-2147483647i)), var_1.e.b.b.x), global2.c), Struct_2(func_2().c.a, var_1.e.b), any(arg_0), func_2().a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global2.c)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.a.b.c, var_1.e.b.c)))))));
    let var_3 = firstTrailingBit(u_input.a.x);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(false, true, false, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, func_1(vec3<bool>(false, true, false)), true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), all(vec3<bool>(true, true, false)))), !vec4<bool>(select(10189u <= u_input.a.x, true, any(vec4<bool>(true, true, false, false))), true, true, !(1000f != global2.c)));
    global1 = array<Struct_2, 19>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-global2.c) == 926f, Struct_1(vec3<i32>(-global2.b.x >> (20427u % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(60371i, global2.a.x), vec2<i32>(global2.b.x, global2.b.x)), _wgslsmith_mult_i32(global2.a.x, global2.a.x)), global2.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -20025i, _wgslsmith_add_i32(global2.a.x, -14847i), firstLeadingBit(global2.a.x), global2.a.x), global2.b, global2.b), _wgslsmith_f_op_f32(-global2.c)));
    var var_2 = abs(global2.b.x);
    let var_3 = reverseBits(firstLeadingBit(var_1.b.a));
    var var_4 = global2.b.xyz;
    let var_5 = vec3<u32>(1u, u_input.b.x, abs(~(~u_input.b.x >> (~u_input.a.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-global2.c), global2.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(315f, -257f) * vec2<f32>(-1041f, -772f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, var_1.b.c) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(141f, var_1.b.c)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, -677f)))));
}

