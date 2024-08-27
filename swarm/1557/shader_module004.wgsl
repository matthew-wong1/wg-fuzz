struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32>;

var<private> global2: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<bool>) -> u32 {
    var var_0 = global1.x;
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(260f + -1186f)) * global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-515f * global0.c) * 1115f)), _wgslsmith_div_f32(729f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c))))), arg_0, -u_input.b.xwy);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global1.x)))) + -1000f))), -576f);
    let var_1 = countOneBits(~(vec4<i32>(-1i) * -(~vec4<i32>(-1i, global0.d, u_input.b.x, 0i))));
    var var_2 = Struct_1(global1.x, all(vec2<bool>(select(false, all(global2[_wgslsmith_index_u32(1u, 2u)]), true & global0.b), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x)))))), ~var_1.x, global0.e);
    return ~(~select(min(~u_input.a.x, ~u_input.a.x), firstLeadingBit(min(33778u, u_input.a.x)), false));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec3<f32> {
    let var_0 = arg_0;
    let var_1 = vec2<u32>(~_wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, 0u, 0u), vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x))), vec4<u32>(u_input.a.x, u_input.a.x & 4294967295u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x)), ~u_input.a.x);
    let var_2 = var_0;
    let var_3 = _wgslsmith_mult_vec2_u32(select(vec2<u32>(58726u, ~u_input.a.x), vec2<u32>(64917u, func_3(~(-2147483647i), !vec4<bool>(true, false, var_2.b, arg_0.b), global2[_wgslsmith_index_u32(abs(var_1.x), 2u)])), select(!vec2<bool>(global0.b, arg_0.b), !vec2<bool>(global0.b, true), true)), firstTrailingBit(~u_input.a));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(625f)), 526f, true)))), any(vec3<bool>(false, 12022u > u_input.a.x, all(vec3<bool>(true, var_2.b, true)))) && false, _wgslsmith_f_op_f32(global0.c * arg_1.c), countOneBits(min(2147483647i, ~global0.d)), -var_2.e);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(545f, _wgslsmith_f_op_f32(floor(-1000f)), any(vec4<bool>(var_4.b, arg_1.b, var_0.b, var_2.b))))), var_2.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1212f))))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(arg_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-354f, global0.a), -277f, _wgslsmith_f_op_f32(605f + global1.x)))), vec3<f32>(_wgslsmith_f_op_f32(sign(-942f)), global1.x, _wgslsmith_f_op_f32(arg_1.a + arg_1.c))));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -861f), -327f), global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1102f * -141f))))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a + arg_1.c), _wgslsmith_f_op_f32(1081f - global1.x))) + _wgslsmith_f_op_f32(exp2(global0.c)))), arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-527f)))))), _wgslsmith_mod_i32(-(arg_1.e.x | _wgslsmith_clamp_i32(global0.d, u_input.b.x, -77487i)), ~global0.e.x), vec3<i32>(-14979i, abs(-arg_1.e.x), arg_1.d));
    var var_1 = ~arg_0;
    var_1 = _wgslsmith_mod_u32(countOneBits(u_input.a.x), firstTrailingBit(_wgslsmith_mod_u32(44917u << (firstTrailingBit(arg_0) % 32u), 1u & arg_0)));
    return _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global1.x), 1146f, any(global2[_wgslsmith_index_u32(~(u_input.a.x | u_input.a.x), 2u)]))), _wgslsmith_f_op_f32(-481f + _wgslsmith_f_op_f32(func_1(8497u, Struct_1(_wgslsmith_f_op_f32(global0.c - global1.x), all(global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), global0.a, u_input.b.x, vec3<i32>(-1i, global0.d, -1i) << (vec3<u32>(0u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), select(vec3<bool>(true, false, false), vec3<bool>(false, false, global0.b), global0.b || true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, global1.x)));
    let var_0 = -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global0.e.zx, vec2<i32>(-1i, -u_input.b.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global0.e.zz, u_input.b.xz), firstLeadingBit(~vec2<i32>(u_input.b.x, 40370i))));
    global0 = Struct_1(global1.x, any(vec4<bool>(global0.b, global0.b, false, true)), global1.x, -(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global0.e.x, u_input.b.x, -42004i), 0i, 0i) & 0i), u_input.b.yxx);
    var var_1 = _wgslsmith_f_op_f32(-2689f * global0.c);
    global2 = array<vec2<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -51591i, abs(1i)), global0.e.xx << (u_input.a % vec2<u32>(32u))), reverseBits(25451i ^ ~u_input.b.x)));
}

