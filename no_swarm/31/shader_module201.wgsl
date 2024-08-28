struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 18> = array<i32, 18>(6223i, -12692i, 1i, i32(-2147483648), 52830i, -24711i, -17941i, -38730i, -1i, -1582i, -1i, -1i, 0i, 0i, -3240i, 2147483647i, 2147483647i, 0i);

var<private> global2: Struct_1 = Struct_1(vec3<u32>(4294967295u, 31135u, 0u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec3<f32> {
    let var_0 = select(select(vec2<bool>(true | any(vec4<bool>(true, false, true, true)), !(u_input.a.x <= global1[_wgslsmith_index_u32(91466u, 18u)])), vec2<bool>(true, true), vec2<bool>(true, true)), !vec2<bool>(true, (706f <= global0.x) & all(vec3<bool>(false, true, true))), any(vec2<bool>(any(vec4<bool>(true, true, true, true)), false)));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-885f, _wgslsmith_f_op_f32(sign(-722f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -522f))), _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_0.zyx))));
    global1 = array<i32, 18>();
    let var_1 = false;
    let var_2 = Struct_1(_wgslsmith_mult_vec3_u32(global2.a, select(~countOneBits(global2.a), vec3<u32>(~0u, ~u_input.c.x, 30818u), any(select(vec3<bool>(var_1, var_1, var_0.x), vec3<bool>(false, var_0.x, false), false)))));
    return arg_0.zwx;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global1 = array<i32, 18>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -877f))))) + _wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-632f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1259f)) - _wgslsmith_f_op_f32(round(201f))), global0.x))));
    let var_0 = firstLeadingBit(vec2<i32>(~(-1i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.c << (global2.a.xx % vec2<u32>(32u))), 18u)])) >> (~max(reverseBits(firstTrailingBit(vec2<u32>(23839u, global2.a.x))), global2.a.xy) % vec2<u32>(32u));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, 2280f, _wgslsmith_f_op_f32(f32(-1f) * -451f)))));
    let var_1 = _wgslsmith_div_i32(~countOneBits(-2147483647i), min(_wgslsmith_mod_i32(0i, reverseBits(u_input.d.x)), -global1[_wgslsmith_index_u32(max(48358u, u_input.c.x), 18u)])) >> (reverseBits(select(global2.a.x, u_input.b, true)) % 32u);
    return Struct_1(global2.a);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, _wgslsmith_f_op_f32(ceil(-363f)), _wgslsmith_f_op_f32(-1000f - arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 686f, global0.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1195f, -277f))))));
    let var_1 = func_2(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * -398f), -749f));
    let var_2 = -(~2147483647i);
    global1 = array<i32, 18>();
    let var_3 = ~(~abs(select(vec4<u32>(1u, arg_2.a.x, arg_2.a.x, 30626u), vec4<u32>(arg_2.a.x, arg_1.a.x, 10825u, 106927u), arg_3)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 18>();
    global2 = Struct_1(vec3<u32>(_wgslsmith_add_u32(u_input.b, ~global2.a.x) | _wgslsmith_mod_u32(reverseBits(u_input.c.x), ~u_input.c.x), u_input.b, ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b, global2.a.x), 11343u << (global2.a.x % 32u))));
    var var_0 = u_input.b;
    global2 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(global0.x, global0.x))), Struct_1(abs(_wgslsmith_mod_vec3_u32(abs(global2.a), select(global2.a, vec3<u32>(global2.a.x, u_input.b, 105450u), false)))), Struct_1(~vec3<u32>(~0u, ~0u, _wgslsmith_sub_u32(1u, 0u))), false);
    var var_1 = vec4<bool>(!all(vec2<bool>(u_input.c.x < u_input.c.x, true)), any(vec3<bool>(true, any(vec3<bool>(true, true, true)), max(u_input.b, global2.a.x) != ~global2.a.x)), true, _wgslsmith_f_op_f32(-1319f + -339f) <= _wgslsmith_f_op_f32(select(366f, global0.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(select(_wgslsmith_div_i32(u_input.d.x, u_input.a.x) & global1[_wgslsmith_index_u32(global2.a.x & 61062u, 18u)], -13991i & (21161i << (u_input.c.x % 32u)), -1000f >= _wgslsmith_f_op_f32(abs(global0.x))), ~(-2147483647i), -global1[_wgslsmith_index_u32(u_input.b, 18u)]), vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_div_f32(123f, global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(950f, global0.x)))), 2284f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2111f), 1272f) * vec2<f32>(1374f, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, global0.x, 295f), vec4<f32>(global0.x, -442f, -316f, -151f), vec4<bool>(true, var_1.x, true, var_1.x))))).x)), ~(~global2.a), 1000f);
}

