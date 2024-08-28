struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), -47014i, -10399i);

var<private> global2: Struct_1;

var<private> global3: vec4<f32> = vec4<f32>(1144f, 242f, 1350f, 1000f);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global1 = max(vec3<i32>(min(max(global1.x, u_input.e), 0i), global1.x, _wgslsmith_add_i32(~(23023i >> (global2.b % 32u)), select(-12117i, _wgslsmith_dot_vec4_i32(vec4<i32>(-26586i, global1.x, u_input.d.x, u_input.d.x), vec4<i32>(1i, 1i, u_input.e, global1.x)), true))), vec3<i32>(0i, global1.x, ~global1.x));
    return global2.a.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), global3.x), global2.a.x, _wgslsmith_f_op_f32(func_3()), global3.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-387f, global2.a.x, _wgslsmith_f_op_f32(ceil(global3.x)), _wgslsmith_div_f32(global2.a.x, global3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global2.a.x, 1000f) - vec4<f32>(global3.x, global2.a.x, global2.a.x, global2.a.x))))));
    var var_1 = arg_1;
    let var_2 = ~vec4<i32>(_wgslsmith_mod_i32(-u_input.e, countOneBits(u_input.e)), ~abs(global1.x), u_input.e, -2403i) >> ((vec4<u32>(~1u, u_input.a, var_1.a.x, firstTrailingBit(3386u) & 4294967295u) << (_wgslsmith_div_vec4_u32(reverseBits(var_1.a), reverseBits(vec4<u32>(31402u, 77421u, arg_1.a.x, 100262u)) >> (vec4<u32>(u_input.a, 37321u, 8182u, 68962u) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    global3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -201f, 173f, global3.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, global3.x, global3.x) - vec4<f32>(global2.a.x, -1817f, 164f, 418f)))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.x * global3.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.x, 985f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global2.a.x))))), _wgslsmith_f_op_f32(-global2.a.x)), vec4<bool>(!arg_2.x, -59389i == var_2.x, !(arg_2.x && arg_2.x) && (true && arg_2.x), arg_2.x)));
    let var_3 = -_wgslsmith_add_vec2_i32(countOneBits(min(vec2<i32>(global1.x, 54092i), vec2<i32>(-1i, global1.x))), vec2<i32>(_wgslsmith_clamp_i32(-17971i, 1i, var_2.x) | _wgslsmith_add_i32(var_2.x, u_input.e), _wgslsmith_div_i32(-13192i, -35975i)));
    return select(!select(vec2<bool>(all(arg_2.wzy), true), vec2<bool>(arg_2.x, all(arg_2.yz)), select(select(vec2<bool>(true, false), vec2<bool>(arg_2.x, arg_2.x), arg_2.zy), vec2<bool>(true, arg_2.x), all(vec4<bool>(arg_2.x, true, false, false)))), select(vec2<bool>(select(arg_2.x, true, arg_2.x | true), arg_2.x && true), arg_2.xx, vec2<bool>(true, true)), any(vec3<bool>(true, !any(vec2<bool>(arg_2.x, true)), arg_2.x)));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = vec2<bool>(any(func_2(firstTrailingBit(vec2<u32>(arg_0, 26834u)), Struct_2(countOneBits(vec4<u32>(4294967295u, arg_3.x, arg_0, 65385u))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), !(!select(true, any(vec3<bool>(true, true, true)), true)));
    var var_1 = countOneBits(vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(arg_2, arg_2)));
    var var_2 = Struct_2(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~abs(vec4<u32>(arg_3.x, 40816u, arg_0, 1u)), ~(~vec4<u32>(arg_0, arg_3.x, 1u, global2.b))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(26587u, global2.c, 24237u, u_input.c), vec4<u32>(u_input.a, 1532u, arg_0, arg_3.x)) & ~vec4<u32>(28750u, 66671u, u_input.a, u_input.c)));
    global1 = ~vec3<i32>(_wgslsmith_mod_i32(global1.x, -1i << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, 21745u, 4294967295u), vec3<u32>(0u, 27585u, u_input.b.x)) % 32u)), ~16423i, ~(-global1.x & (i32(-1i) * -53783i)));
    let var_3 = vec4<u32>(reverseBits(u_input.b.x), _wgslsmith_add_u32(arg_3.x, _wgslsmith_mult_u32(0u, 35129u)), ~_wgslsmith_div_u32(32531u, ~global2.b), 16622u);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a;
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(249f, 564f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(global2.b, global2.a.x, u_input.d, u_input.b.yy)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2.a.x, 827f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x * global2.a.x), _wgslsmith_f_op_f32(select(global2.a.x, -1685f, true)), -508f, 706f))) * vec4<f32>(1421f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -599f))), 2056f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1164f + -1483f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x - global3.x) * var_0.x))));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1283f * -366f), -749f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -197f))))) * vec4<f32>(_wgslsmith_f_op_f32(global2.a.x + 106f), global3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global2.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-322f - global2.a.x))))), _wgslsmith_f_op_f32(-global3.x)));
    let var_1 = global0[_wgslsmith_index_u32(~u_input.b.x, 2u)];
    var var_2 = global0[_wgslsmith_index_u32(u_input.b.x & var_1.b, 2u)];
    let var_3 = -58832i;
    let var_4 = !(reverseBits(~abs(var_3)) < ~max(9603i, -74473i ^ global1.x));
    let var_5 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(var_3, global1.x)), vec2<i32>(~global1.x, abs(-2147483647i)), min(vec2<i32>(-2147483647i, global1.x), vec2<i32>(u_input.e, 1i)) & u_input.d.zy) & ~(_wgslsmith_sub_vec2_i32(vec2<i32>(-8615i, -1i), vec2<i32>(0i, u_input.e)) & _wgslsmith_mod_vec2_i32(vec2<i32>(27457i, var_3), u_input.d.yz)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1560f, 540f, -320f, global2.a.x) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1012f, 1304f, var_1.a.x, -288f), vec4<f32>(global3.x, 1000f, var_1.a.x, var_2.a.x)))))))), _wgslsmith_f_op_f32(f32(-1f) * -831f), 1u, vec2<i32>(-countOneBits(select(-22423i, -12375i, var_4)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, var_3, global1.x, var_3), -vec4<i32>(u_input.e, global1.x, var_3, var_3)) & _wgslsmith_div_i32(global1.x, _wgslsmith_div_i32(var_3, 51277i))));
}

