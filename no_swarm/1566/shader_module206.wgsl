struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool;

var<private> global2: array<f32, 3>;

var<private> global3: i32;

var<private> global4: vec4<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    var var_0 = ~(~(1u | _wgslsmith_mult_u32(global4.x, u_input.c)));
    global2 = array<f32, 3>();
    global3 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.a, global2[_wgslsmith_index_u32(u_input.b.x, 3u)])) + -1449f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0.b.x, 3u)] + arg_0.a), arg_2.a)))));
    var_1 = arg_0.c.x;
    return vec3<i32>(~max(max(u_input.a ^ arg_3, ~u_input.a), -5697i >> (~4294967295u % 32u)), _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_3, 1i), _wgslsmith_div_i32(firstTrailingBit(u_input.a), -20927i)), -(i32(-1i) * 0i));
}

fn func_2() -> vec2<bool> {
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(u_input.a, reverseBits(1i));
    let var_1 = u_input.c;
    var var_2 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.c, ~(~1u)), _wgslsmith_mod_u32(4294967295u, countOneBits(u_input.b.x))), 3u)], global4.yy, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 2095f, global2[_wgslsmith_index_u32(global4.x, 3u)], global2[_wgslsmith_index_u32(0u, 3u)]))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(var_1, 3u)], global2[_wgslsmith_index_u32(u_input.b.x, 3u)], global2[_wgslsmith_index_u32(1u, 3u)])))), _wgslsmith_div_vec4_f32(vec4<f32>(-196f, -2584f, global2[_wgslsmith_index_u32(100571u, 3u)], 1047f), vec4<f32>(global2[_wgslsmith_index_u32(var_1, 3u)], 1035f, global2[_wgslsmith_index_u32(global4.x, 3u)], global2[_wgslsmith_index_u32(u_input.b.x, 3u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(1u, 3u)], -1834f, -314f, 448f))), vec4<f32>(1f, 1f, 1f, 1f))));
    var var_3 = 213f;
    var var_4 = _wgslsmith_div_vec3_i32(abs(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -8478i, u_input.a), vec3<i32>(var_0.x, -2147483647i, var_0.x), func_3(Struct_1(var_2.c.x, vec2<u32>(u_input.c, 0u), var_2.c), true, Struct_1(1647f, vec2<u32>(u_input.b.x, var_1), var_2.c), var_0.x))), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_add_i32(var_0.x, max(var_0.x, var_0.x)), 1i), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(var_0.x, var_0.x, -24585i)) & _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.a), vec3<i32>(-45420i, 0i, var_0.x)), vec3<i32>(-1i) * -vec3<i32>(17007i, -22033i, -2147483647i))));
    return !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<bool>(var_4.x >= -2147483647i, all(vec3<bool>(false, true, true))), true != (var_0.x <= var_0.x)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = vec3<i32>(-(~firstLeadingBit(firstTrailingBit(u_input.a))), 0i, u_input.a);
    var var_1 = select(vec2<bool>(false, 1i < _wgslsmith_sub_i32(~arg_0, select(arg_0, u_input.a, true))), !func_2(), true);
    let var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~2147483647i, _wgslsmith_add_i32(var_0.x, firstLeadingBit(abs(31741i)))), vec2<i32>(-(~(arg_0 >> (4294967295u % 32u))), 2147483647i), _wgslsmith_add_vec2_i32(-vec2<i32>(firstLeadingBit(var_0.x), u_input.a), func_3(arg_2, all(!vec4<bool>(var_1.x, false, var_1.x, false)), arg_1, u_input.a).xy));
    global2 = array<f32, 3>();
    let var_3 = arg_2;
    return any(vec4<bool>(var_1.x, any(!vec4<bool>(var_1.x, false, true, false)), true, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(global4.x, 3u)], 604f, 237f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2[_wgslsmith_index_u32(74551u, 3u)], -344f, -482f) + vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 3u)], global2[_wgslsmith_index_u32(5504u, 3u)], global2[_wgslsmith_index_u32(u_input.c, 3u)], global2[_wgslsmith_index_u32(global4.x, 3u)]))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(284f, global2[_wgslsmith_index_u32(global4.x, 3u)], global2[_wgslsmith_index_u32(global4.x, 3u)], global2[_wgslsmith_index_u32(u_input.c, 3u)])), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1177f, global2[_wgslsmith_index_u32(32357u, 3u)], global2[_wgslsmith_index_u32(u_input.b.x, 3u)], 1603f), vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(global4.x, 3u)], global2[_wgslsmith_index_u32(u_input.c, 3u)], -1000f)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(944f, 1645f, global2[_wgslsmith_index_u32(global4.x, 3u)], 1777f) + vec4<f32>(-1361f, -557f, global2[_wgslsmith_index_u32(91691u, 3u)], global2[_wgslsmith_index_u32(46082u, 3u)])), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 3u)], global2[_wgslsmith_index_u32(1u, 3u)], 1000f, global2[_wgslsmith_index_u32(u_input.b.x, 3u)]), vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 3u)], global2[_wgslsmith_index_u32(global4.x, 3u)], -1000f, -1563f)))), vec4<f32>(-1212f, 448f, 937f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(3714u, 3u)])))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))) * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_0.x)), global2[_wgslsmith_index_u32(~4294967295u, 3u)], func_1(u_input.a, Struct_1(var_0.x, vec2<u32>(75460u, u_input.b.x), vec4<f32>(-160f, -597f, -334f, -143f)), Struct_1(var_0.x, global4.yx, var_0)))))), -692f, var_0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.xx), var_0.yw)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], var_1.x) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, -587f), vec2<f32>(var_0.x, 2213f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.c, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)])), vec2<bool>(true, true)))));
    var var_3 = select(vec4<u32>(u_input.b.x, 4294967295u, 11901u, ~(~(~20953u))), reverseBits(vec4<u32>(global4.x | 33193u, abs(global4.x << (0u % 32u)), _wgslsmith_sub_u32(global4.x, global4.x) >> (countOneBits(48092u) % 32u), _wgslsmith_add_u32(firstLeadingBit(1u), 0u))), select((-1i < u_input.a) | all(vec2<bool>(true, true)), func_1(~(-u_input.a), Struct_1(_wgslsmith_div_f32(-203f, var_2.x), vec2<u32>(1u, 0u), vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 3u)], -285f, global2[_wgslsmith_index_u32(u_input.c, 3u)], var_0.x)), Struct_1(-1413f, global4.wz, var_0)), any(vec2<bool>(true, true))));
    let var_4 = ~global4.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(min(vec3<u32>(global4.x, abs(4294967295u), _wgslsmith_add_u32(global4.x, 0u)), ~_wgslsmith_add_vec3_u32(u_input.b.wxz, vec3<u32>(u_input.c, var_4, global4.x))), ~var_3.zwy), vec2<u32>(~0u, _wgslsmith_sub_u32(var_4, _wgslsmith_add_u32(var_4, max(0u, global4.x)))), global4.wxx, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(var_1.wzz)))));
}

