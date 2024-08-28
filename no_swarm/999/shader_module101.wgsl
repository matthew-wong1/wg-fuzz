struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 27>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> u32 {
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), _wgslsmith_f_op_vec2_f32(global1.a - vec2<f32>(global1.d, 1006f))))))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.wyz, global1.b), vec4<u32>(~global1.c.x, _wgslsmith_clamp_u32(1u, abs(u_input.c.x), _wgslsmith_clamp_u32(~42544u, u_input.a.x, _wgslsmith_div_u32(59320u, u_input.c.x))), ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(64957u, global1.c.x), global1.b.x & 14651u), ~(~_wgslsmith_dot_vec3_u32(global1.b, u_input.a.wyy))), _wgslsmith_f_op_f32(-261f + _wgslsmith_f_op_f32(-arg_1)), ~countOneBits(~26925u) >> (0u % 32u));
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(34538u, 4294967295u, 1u, global1.b.x), firstTrailingBit(global1.c)), _wgslsmith_mult_u32(countOneBits(1843u), _wgslsmith_mod_u32(u_input.c.x, 1u)), countOneBits(global1.e) < ~u_input.a.x), 6792u) << (abs(u_input.c.x) % 32u), 27u)];
    var var_1 = !(!(!vec3<bool>(all(vec3<bool>(false, arg_0.x, true)), arg_0.x, any(arg_0))));
    let var_2 = vec2<i32>(-28292i, firstTrailingBit(48694i));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.d, 1258f, 773f, -403f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(405f, arg_1, 1065f, -1479f) * vec4<f32>(var_0.a.d, global1.d, arg_1, global1.d)), vec4<f32>(arg_1, 1000f, 861f, -1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-143f, 343f, 461f, global1.d), vec4<f32>(1708f, arg_1, var_0.a.a.x, var_0.a.a.x), var_1.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(sign(-540f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.d)), arg_1, 355f));
    return ~firstLeadingBit(1u);
}

fn func_3() -> vec3<i32> {
    let var_0 = ~reverseBits(global1.c.xyw);
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.a, global1.a, false))), vec3<u32>(187u, global1.e >> ((global1.b.x | 1u) % 32u), 1u), select(global1.c, _wgslsmith_mod_vec4_u32(abs(abs(u_input.a)), abs(~u_input.a)), vec4<bool>(false, any(vec4<bool>(true, true, true, true)), false, true)), global1.a.x, global1.e ^ var_0.x);
    var var_1 = firstTrailingBit(~u_input.b.x);
    global0 = all(vec4<bool>(true, true, true, true));
    global2 = array<Struct_2, 27>();
    return abs(vec3<i32>(firstLeadingBit(_wgslsmith_clamp_i32(u_input.b.x, -22451i, u_input.b.x) ^ -u_input.b.x), -1i, u_input.b.x ^ abs(u_input.b.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<i32>) -> vec2<f32> {
    global2 = array<Struct_2, 27>();
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.d), global1.a.x) + _wgslsmith_f_op_vec2_f32(-arg_1.a.a)), _wgslsmith_f_op_vec2_f32(round(arg_1.a.a)), select(vec2<bool>(arg_1.a.a.x != 1874f, true), !vec2<bool>(arg_0.x, true), arg_0))), arg_1.a.c.xxy ^ global1.c.wxy, vec4<u32>(4294967295u, 1u, reverseBits(~u_input.c.x), 4294967295u), arg_1.a.d, arg_1.a.c.x ^ ~arg_1.a.e);
    var var_0 = vec3<bool>(true && !arg_0.x, ~_wgslsmith_dot_vec3_i32(~arg_2, u_input.b) < arg_1.b, arg_1.a.d < arg_1.a.d);
    let var_1 = arg_1.a;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.x * 1284f))), -638f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(303f))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.a.a.x, -2309f), 1f))), all(vec4<bool>(true, !any(vec3<bool>(false, arg_0.x, false)), _wgslsmith_f_op_f32(round(-956f)) == _wgslsmith_f_op_f32(round(1000f)), false))));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1409f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-661f, 284f)), _wgslsmith_f_op_f32(trunc(arg_1.a.d))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global1.a), global1.a)), vec2<f32>(-1217f, _wgslsmith_f_op_f32(floor(var_1.a.x))), var_0.xy))), vec2<f32>(-875f, var_1.d)));
}

fn func_1(arg_0: f32, arg_1: i32) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(select(vec2<bool>(any(vec3<bool>(true, false, true)), true), vec2<bool>(true, true), any(vec2<bool>(false, false)) && false), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), arg_0), ~global1.b.x), 27u)], vec3<i32>(1i, _wgslsmith_dot_vec3_i32(func_3(), ~vec3<i32>(47804i, arg_1, -2147483647i)), 31582i))), select(global1.b, ~global1.b, all(vec2<bool>(true, true))), max(~_wgslsmith_mult_vec4_u32(u_input.a, global1.c), vec4<u32>(min(global1.e, 4294967295u), 0u, ~global1.c.x, 1u)), _wgslsmith_f_op_f32(trunc(-234f)), global1.e);
    var var_1 = global2[_wgslsmith_index_u32((_wgslsmith_mod_u32(0u, ~global1.b.x) & u_input.a.x) & 76336u, 27u)];
    var var_2 = var_1.a;
    global2 = array<Struct_2, 27>();
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(337f, 1299f, arg_0), vec3<f32>(var_2.d, var_1.a.a.x, 2219f))))))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_2.d)))), -276f, -1862f))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !((_wgslsmith_f_op_f32(-2250f - _wgslsmith_f_op_f32(-global1.d)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(629f, 2321f))))) != true);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -322f, global1.d)) * _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(min(global1.a.x, -1641f)), u_input.d.x >> (58997u % 32u)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(global1.d)), -819f, _wgslsmith_f_op_f32(f32(-1f) * -211f)), vec3<f32>(1571f, 1418f, _wgslsmith_f_op_f32(f32(-1f) * -602f))))));
    var var_1 = reverseBits(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(1u, u_input.c.x, firstTrailingBit(9389u), _wgslsmith_add_u32(1u, 0u)) << ((_wgslsmith_div_vec4_u32(vec4<u32>(0u, 70845u, u_input.a.x, global1.e), vec4<u32>(u_input.c.x, 22226u, global1.c.x, global1.e)) << (firstLeadingBit(vec4<u32>(global1.b.x, u_input.c.x, 1u, global1.e)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_2 = ~u_input.b.x;
    var_1 = _wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(0u, 24607u, 4294967295u, global1.c.x)), abs(vec4<u32>(~41542u, 43188u, _wgslsmith_sub_u32(36702u, var_1.x), 4294967295u)));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(978f, var_0.x) * vec2<f32>(global1.d, 1590f))) - global1.a))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(global1.a.x - var_0.x)) - _wgslsmith_div_f32(-167f, 1463f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 1190f)))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3 * _wgslsmith_f_op_vec2_f32(var_3 - var_3))), _wgslsmith_f_op_vec2_f32(global1.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.x, var_0.x))))))), ~(~(u_input.a.wyz >> (vec3<u32>(var_1.x, 13231u, var_1.x) % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(max(vec3<u32>(28831u, global1.b.x, var_1.x), var_1.xwz), u_input.a.wzy) % vec3<u32>(32u))), select(vec4<u32>(firstLeadingBit(max(19961u, u_input.a.x)), 3606u, 4294967295u, var_1.x), u_input.a, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true))), var_3.x, ~(~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b >> (firstLeadingBit(vec3<u32>(4294967295u, firstLeadingBit(48213u), global1.b.x & 37302u)) % vec3<u32>(32u)), global1.c.x, u_input.b.zz, reverseBits(_wgslsmith_div_vec4_u32(u_input.a, _wgslsmith_div_vec4_u32(global1.c, u_input.a))), ~vec2<i32>(~(-69077i), u_input.d.x));
}

