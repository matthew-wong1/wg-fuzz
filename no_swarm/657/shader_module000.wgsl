struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec4<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, true, true, false, false, false, true, true, true, true, true, false, true, false, true, true, true, true, false, false, false, true, false);

var<private> global1: f32 = 685f;

var<private> global2: vec3<i32>;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> vec3<i32> {
    let var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 23695u, ~18304u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 8802u), vec3<u32>(u_input.a, 14221u, arg_1.x)) << (~vec3<u32>(16423u, u_input.a, arg_0) % vec3<u32>(32u))), vec3<u32>(~_wgslsmith_add_u32(arg_0, arg_1.x), ~countOneBits(4294967295u), ~95424u))), 23u)];
    global2 = select(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(global3.a.b), vec3<i32>(u_input.b.x, global3.a.b.x, -13016i) >> (vec3<u32>(arg_0, 0u, 2609u) % vec3<u32>(32u))), ~vec3<i32>(-1i, global3.a.b.x, -38123i)), _wgslsmith_add_vec3_i32(reverseBits(select(vec3<i32>(2147483647i, u_input.b.x, 33757i), global3.a.b, false)), -u_input.b.zzx), false) | _wgslsmith_mod_vec3_i32(vec3<i32>(global2.x, u_input.b.x ^ (u_input.b.x << (37941u % 32u)), 2801i), vec3<i32>(_wgslsmith_div_i32(28509i, u_input.b.x), ~(~u_input.b.x), 28172i));
    var var_1 = 36580u;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.a.a.x)) + _wgslsmith_f_op_f32(exp2(global3.a.a.x))) * global3.a.a.x));
    global2 = abs(vec3<i32>(2147483647i, -10300i, abs(_wgslsmith_div_i32(global3.a.b.x, -17862i) | _wgslsmith_dot_vec2_i32(u_input.b.yz, global3.a.b.xx))));
    return -_wgslsmith_clamp_vec3_i32(select(global3.a.b, ~u_input.b.xzw, global0[_wgslsmith_index_u32(arg_0 << (~114319u % 32u), 23u)]), ~vec3<i32>(global2.x, firstTrailingBit(2147483647i), max(-39243i, -35041i)), u_input.b.xzw);
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global3.a.c), -1600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.a.x))), func_3(~u_input.a, _wgslsmith_add_vec2_u32(abs(abs(vec2<u32>(1u, u_input.a))), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(39933u, 70562u)) ^ (vec2<u32>(u_input.a, 22502u) >> (vec2<u32>(u_input.a, 18213u) % vec2<u32>(32u))))), global3.a.c);
    var var_1 = u_input.a;
    global0 = array<bool, 23>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f - -281f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global3.a.c, 1000f))));
    global0 = array<bool, 23>();
    return Struct_4(Struct_2(var_0.b.x, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(1676f)), _wgslsmith_f_op_f32(f32(-1f) * -1427f), var_0.c), ~(~global3.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(918f + 2053f))), global2.x, ~_wgslsmith_div_vec2_u32(vec2<u32>(34894u, 1u), vec2<u32>(u_input.a, 4294967295u)), vec3<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(11258u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(5493u, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)])), any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], true)))), vec2<u32>(_wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, 54943u, 72669u) | vec3<u32>(u_input.a, 55832u, 23079u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, 1u), ~vec3<u32>(u_input.a, 24818u, 15808u))), 0u), vec4<u32>(u_input.a, 26707u, ~u_input.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(18986u, u_input.a), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(77987u, u_input.a)))), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.a.a.x, -1837f, var_0.c))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-8524i, var_0.b.x), global2.yy), global3.a.b.x, global3.a.b.x), 760f)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> i32 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a.a.x, -364f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1444f)));
    return max(20739i, 1i);
}

fn func_1(arg_0: i32) -> vec4<f32> {
    global2 = vec3<i32>(reverseBits(_wgslsmith_mult_i32(-firstLeadingBit(u_input.b.x), -(global3.a.b.x & 0i))), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(127f, 819f, global3.a.a.x) * _wgslsmith_div_vec3_f32(global3.a.a, global3.a.a)), vec3<i32>(~global3.a.b.x, global3.a.b.x, global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.c - -1704f))), func_2()), u_input.b.x);
    global2 = abs(max(global3.a.b, global3.a.b));
    global2 = vec3<i32>(_wgslsmith_div_i32(~0i, -9692i), ~(func_3(~1u, vec2<u32>(1668u, 76713u)).x << (4294967295u % 32u)), -1i);
    global1 = _wgslsmith_f_op_f32(-func_2().a.b.c);
    global3 = Struct_3(func_2().a.b);
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1887f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global3.a.a.x, 1803f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-650f, 1869f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.c + 546f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(u_input.b.x)) + vec4<f32>(global3.a.a.x, -1689f, global3.a.a.x, 439f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global3.a.c, global3.a.a.x, global3.a.c, 947f), vec4<f32>(-1000f, global3.a.c, 767f, 1427f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-728f, -1737f, global3.a.a.x, global3.a.c))), vec4<f32>(1000f, global3.a.c, -1243f, global3.a.c), false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_vec2_f32(sign(func_2().a.b.a.zy)), vec2<u32>(~_wgslsmith_div_u32(94940u, u_input.a), 1u));
}

