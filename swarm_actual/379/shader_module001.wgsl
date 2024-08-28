struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1544u;

var<private> global1: array<i32, 25> = array<i32, 25>(-42209i, -68316i, -25091i, 5185i, 1848i, i32(-2147483648), 1i, -53933i, i32(-2147483648), 1i, -63249i, 0i, 865i, -20943i, 2147483647i, -72262i, -41094i, -1i, 19707i, 9228i, 16757i, i32(-2147483648), -290i, -46698i, 2147483647i);

var<private> global2: array<bool, 25> = array<bool, 25>(true, true, true, true, true, false, false, false, false, false, true, false, false, true, true, false, false, true, false, true, false, true, true, true, false);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = vec2<u32>(~(~4294967295u), ~0u);
    let var_1 = 38313u;
    var var_2 = Struct_1(true, select(select(vec3<bool>(any(vec3<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 25u)], true)), all(vec4<bool>(global2[_wgslsmith_index_u32(46017u, 25u)], false, false, true)), all(vec2<bool>(false, true))), vec3<bool>(all(vec2<bool>(false, global2[_wgslsmith_index_u32(44997u, 25u)])), !global2[_wgslsmith_index_u32(33092u, 25u)], true), true), vec3<bool>(select(any(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 25u)], true, global2[_wgslsmith_index_u32(var_0.x, 25u)], false)), true, any(vec4<bool>(global2[_wgslsmith_index_u32(6907u, 25u)], true, global2[_wgslsmith_index_u32(var_1, 25u)], false))), !select(true, global2[_wgslsmith_index_u32(24042u, 25u)], false), global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(694u, var_0.x))), 25u)]), select(vec3<bool>(false, false, true), vec3<bool>(any(vec3<bool>(false, false, true)), all(vec4<bool>(false, true, global2[_wgslsmith_index_u32(0u, 25u)], true)), any(vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 25u)], true))), !vec3<bool>(global2[_wgslsmith_index_u32(77856u, 25u)], global2[_wgslsmith_index_u32(var_0.x, 25u)], false))), countOneBits(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1, var_1, 0u), vec3<u32>(var_1, var_1, var_1)) >> ((vec3<u32>(1u, 55043u, var_0.x) >> (vec3<u32>(var_1, 4294967295u, var_1) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    let var_3 = !vec2<bool>(false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~var_0.x, var_0.x, firstLeadingBit(0u)), _wgslsmith_add_vec3_u32(~var_2.c, vec3<u32>(33627u, 1u, var_0.x))), 25u)]);
    let var_4 = vec3<f32>(-844f, 1167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(round(297f))))));
    return _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.x, _wgslsmith_sub_u32(var_0.x, var_1)), ~(_wgslsmith_mult_u32(reverseBits(var_0.x), ~81955u) ^ var_2.c.x), 1u);
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    global1 = array<i32, 25>();
    var var_0 = firstLeadingBit(vec2<i32>(u_input.b.x, ~(~(-global1[_wgslsmith_index_u32(34458u, 25u)]))));
    var var_1 = ~(firstTrailingBit(vec2<u32>(func_3(), 55448u)) >> (arg_0.c.xz % vec2<u32>(32u)));
    let var_2 = ~(~(var_1.x & arg_0.c.x));
    global1 = array<i32, 25>();
    return vec4<i32>(-firstLeadingBit(1i), countOneBits(-countOneBits(reverseBits(0i))), abs(-max(0i, global1[_wgslsmith_index_u32(var_2, 25u)])) ^ 1i, ~u_input.a);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: bool) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), firstTrailingBit(~vec3<u32>(1u, 1u, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(select(85115u, 9727u, arg_2), ~21501u, _wgslsmith_div_u32(41341u, 36346u)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, arg_0.x, 1028f, -1317f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, arg_0.x, 300f, 161f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -986f, arg_0.x, arg_0.x) + vec4<f32>(428f, 440f, 1307f, arg_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-220f, 187f, arg_0.x, arg_0.x)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-958f, -643f, -195f)))))));
    return var_0;
}

fn func_1() -> vec4<i32> {
    global0 = ~_wgslsmith_mult_u32(countOneBits(1u), ~min(32611u << (1u % 32u), 1u));
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1811f, 915f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1463f, -1395f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-983f, 131f)))) - vec2<f32>(1f, 1f)))), vec4<i32>(-1i) * -func_2(Struct_1(false, vec3<bool>(global2[_wgslsmith_index_u32(0u, 25u)], global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(73325u, 25u)]), vec3<u32>(1u, 21461u, 57973u))), true != global2[_wgslsmith_index_u32(~11752u, 25u)]);
    let var_1 = _wgslsmith_f_op_f32(-1000f - var_0.c.x);
    var var_2 = vec2<u32>(min(18777u >> (var_0.a.x % 32u), func_4(_wgslsmith_f_op_vec2_f32(-var_0.c.yy), ~vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], u_input.a), 0u >= var_0.a.x).a.x) >> (4294967295u % 32u), 3185u);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-329f - var_1), _wgslsmith_f_op_f32(f32(-1f) * -472f))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1034f)), -352f), vec2<bool>(select(select(any(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 25u)], true, global2[_wgslsmith_index_u32(var_2.x, 25u)])), all(vec2<bool>(false, false)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(12912u, var_0.a.x, var_0.a.x), 25u)]), true, any(!vec3<bool>(global2[_wgslsmith_index_u32(var_2.x, 25u)], true, global2[_wgslsmith_index_u32(var_2.x, 25u)]))), global2[_wgslsmith_index_u32(1u, 25u)])));
    return -vec4<i32>(u_input.b.x, -global1[_wgslsmith_index_u32(~(4294967295u | var_0.a.x), 25u)], reverseBits(select(global1[_wgslsmith_index_u32(~var_2.x, 25u)], 1i, all(vec2<bool>(false, global2[_wgslsmith_index_u32(var_2.x, 25u)])))), global1[_wgslsmith_index_u32(~(select(var_0.a.x, var_0.a.x, false) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(71587u, 4294967295u, 1u))), 25u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 25>();
    var var_0 = -832f;
    global2 = array<bool, 25>();
    global1 = array<i32, 25>();
    global2 = array<bool, 25>();
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(step(186f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f + 969f)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 2378f))), 839f, -1000f), func_3());
}

