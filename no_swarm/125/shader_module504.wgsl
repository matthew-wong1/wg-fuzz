struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<f32>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(1u, 1u, 5647u, 4294967295u, 12487u, 31349u, 75702u, 4294967295u, 69493u, 18179u, 4294967295u, 0u, 23086u, 1955u, 4294967295u, 4294967295u, 31307u, 35345u, 4294967295u, 5191u, 14022u, 4294967295u, 0u, 66869u, 99223u);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(true, _wgslsmith_div_vec2_i32(abs(vec2<i32>(~arg_0.b.x, _wgslsmith_add_i32(4072i, -2147483647i))), vec2<i32>(u_input.c.x, arg_2.b.x | u_input.c.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -973f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.c.x, 1978f)), 688f) * 705f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) + -1000f) + 1f)), false, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(arg_2.e, vec2<u32>(~u_input.e.x, u_input.d.x)), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(15451u, u_input.b), arg_2.e, arg_2.e), vec2<u32>(1u, _wgslsmith_sub_u32(143u, global1.e.x)), select(vec2<bool>(arg_0.a, true), vec2<bool>(false, arg_0.d), vec2<bool>(global1.a, false)))));
    var var_1 = arg_2;
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(144f, 727f)), 1451f));
    var_0 = Struct_1(!var_0.a, vec2<i32>(abs(-4874i) >> (~_wgslsmith_clamp_u32(arg_0.e.x, 77676u, var_1.e.x) % 32u), 0i), arg_2.c, var_1.a, _wgslsmith_add_vec2_u32(~abs(vec2<u32>(arg_1.x, 27896u)), var_0.e & ~countOneBits(u_input.d)));
    return !select(!(!vec4<bool>(true, false, arg_0.a, false)), select(vec4<bool>(false, true, true, true), !select(vec4<bool>(true, true, false, arg_0.a), vec4<bool>(arg_2.a, true, true, var_0.a), vec4<bool>(false, var_0.d, true, var_0.d)), !global1.a), !(!(!arg_2.a)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    var var_0 = ~u_input.a;
    let var_1 = all(!func_3(arg_0, ~select(vec4<u32>(6205u, global0[_wgslsmith_index_u32(arg_2, 25u)], 43521u, 55451u), vec4<u32>(global2.e.x, global2.e.x, arg_2, 4294967295u), true), Struct_1(true, vec2<i32>(global2.b.x, 21418i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, 2356f, 439f)), true, vec2<u32>(arg_2, 41316u) >> (global2.e % vec2<u32>(32u)))));
    let var_2 = select(firstLeadingBit(39968u & arg_0.e.x), firstTrailingBit(~4294967295u), arg_0.d);
    var var_3 = var_2;
    global1 = arg_0;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1390f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(exp2(global2.c.x))))))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x - global2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(true, vec2<i32>(1655i, u_input.c.x), vec3<f32>(500f, 1049f, global1.c.x), global2.d, vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(17791u, 25u)])), vec4<bool>(global2.d, true, false, true), 39328u)) - _wgslsmith_f_op_f32(-global1.c.x)))) + 1257f));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.c.x, global2.c.x, -1186f, global2.c.x))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-241f, global2.c.x, global2.c.x, global2.c.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.c.x, global1.c.x, 1277f, 1000f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, 608f, -1237f, global2.c.x) - vec4<f32>(-901f, -1057f, global1.c.x, -956f))))), select(global2.a | false, global1.a || global2.d, global2.d) & any(vec4<bool>(global2.a, global1.a, true, global1.d)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-102f, -603f, -564f, -2196f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(366f, global2.c.x, -606f, global1.c.x), vec4<f32>(1523f, 744f, -615f, global1.c.x))), select(vec4<bool>(global2.d, global1.a, global2.a, global1.a), vec4<bool>(true, global2.a, true, true), vec4<bool>(global1.a, global1.a, global1.d, false)))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2700f, global1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -775f), 1286f))), all(!select(vec3<bool>(false, global1.d, true), vec3<bool>(false, global1.a, global1.d), global1.d)))));
    var var_2 = Struct_1(func_3(Struct_1(any(!vec3<bool>(global2.d, false, global1.a)), global2.b, global2.c, false, vec2<u32>(4294967295u ^ u_input.d.x, 0u)), abs(abs(~vec4<u32>(global2.e.x, arg_0, global0[_wgslsmith_index_u32(1u, 25u)], 2450u))), Struct_1(!global1.d, vec2<i32>(~1i, 0i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2458f, -359f, var_1.x) * var_1.xxy), true, _wgslsmith_clamp_vec2_u32(~global2.e, vec2<u32>(9783u, 22278u), global1.e ^ vec2<u32>(global1.e.x, u_input.d.x)))).x, vec2<i32>(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1.b.x), global1.b)), -29387i), vec3<f32>(_wgslsmith_f_op_f32(-global2.c.x), -1031f, global1.c.x), true, global1.e);
    var var_3 = min(1u, ~(firstTrailingBit(u_input.e.x) ^ ~global1.e.x)) == 1u;
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.c.x, global1.c.x, global2.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1489f * _wgslsmith_f_op_f32(-var_1.x)), var_2.c.x), 379f));
    return Struct_1(true, u_input.c, _wgslsmith_f_op_vec3_f32(var_2.c * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.c) - vec3<f32>(var_2.c.x, _wgslsmith_div_f32(var_4.x, global2.c.x), _wgslsmith_div_f32(var_2.c.x, var_4.x)))), global2.d, select(u_input.e, var_2.e, !(!select(vec2<bool>(true, global2.a), vec2<bool>(true, true), vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 25>();
    let var_0 = func_1(0u);
    let var_1 = vec2<f32>(global2.c.x, 1248f);
    var var_2 = var_0;
    let var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~(~vec3<u32>(44040u, var_0.e.x, 550u)) << (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.e.x, 1u, 1u), vec3<u32>(global1.e.x, 1u, global1.e.x)), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.e.x, 25u)], 25u)], 4294967295u), select(99622u, u_input.a, false)) % vec3<u32>(32u)), firstTrailingBit(abs(vec3<u32>(global1.e.x, 45124u, 28818u))) & firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(var_0.e.x, 25u)], 56475u, 33811u))), _wgslsmith_div_vec3_u32(((vec3<u32>(0u, 4294967295u, global2.e.x) | vec3<u32>(4294967295u, 24118u, global1.e.x)) >> (vec3<u32>(0u, 1u, var_2.e.x) % vec3<u32>(32u))) << (min(select(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8634u, 25u)], 25u)], 0u, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(70237u, 25u)], u_input.e.x, 4294967295u), false), ~vec3<u32>(u_input.b, u_input.b, 54748u)) % vec3<u32>(32u)), vec3<u32>(1u, _wgslsmith_mod_u32(4294967295u, 4294967295u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 25u)], 25u)], var_2.e.x, var_2.e.x), vec4<u32>(49681u, global2.e.x, 0u, 4294967295u)) % 32u), ~6885u)));
    let var_4 = Struct_1(var_2.c.x <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global2.c.x)))))), vec2<i32>(~1i, _wgslsmith_dot_vec2_i32(abs(~global1.b), -abs(vec2<i32>(2147483647i, -659i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c))))), var_0.a, ~(~global1.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.c.x)) * global1.c.x))), abs(_wgslsmith_sub_i32(min(_wgslsmith_sub_i32(var_2.b.x, global1.b.x), -18115i), 0i | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1095i, -2147483647i, var_0.b.x), vec4<i32>(var_2.b.x, var_4.b.x, 54365i, 28237i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1))), var_0.c.x);
}

