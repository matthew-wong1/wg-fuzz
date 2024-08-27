struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(false);

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<u32>(0u, 9343u)), Struct_1(vec2<u32>(73765u, 20726u)), Struct_1(vec2<u32>(42669u, 9390u)), Struct_1(vec2<u32>(51125u, 4294967295u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(0u, 38279u)), Struct_1(vec2<u32>(46147u, 1u)), Struct_1(vec2<u32>(9137u, 1u)));

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> vec4<f32> {
    global2 = select(select(arg_1.yw, vec2<bool>(true, select(true, global0[_wgslsmith_index_u32(9836u, 1u)] | true, true)), true & all(vec3<bool>(global2.x, global0[_wgslsmith_index_u32(21267u, 1u)], false))), arg_1.yy, global0[_wgslsmith_index_u32(~max(44533u ^ arg_0.a.x, 30745u), 1u)]);
    var var_0 = abs(u_input.c.x);
    var var_1 = _wgslsmith_f_op_f32(ceil(183f));
    var_0 = u_input.d.x >> (_wgslsmith_mult_u32(reverseBits(max(_wgslsmith_mod_u32(4294967295u, 19808u), max(0u, u_input.b))), u_input.b) % 32u);
    let var_2 = global1[_wgslsmith_index_u32(~arg_2, 8u)];
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1574f, -1255f, -660f, 794f)), vec4<f32>(_wgslsmith_f_op_f32(step(907f, 222f)), _wgslsmith_f_op_f32(639f * -1456f), _wgslsmith_f_op_f32(sign(-129f)), _wgslsmith_f_op_f32(f32(-1f) * -2093f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_div_f32(1000f, 2049f), -829f, -2572f) * vec4<f32>(-315f, 544f, -1516f, -1093f)))) - vec4<f32>(449f, -618f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(544f - -635f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1381f, -1098f)))))));
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    let var_0 = true;
    global2 = vec2<bool>(var_0, global0[_wgslsmith_index_u32(~u_input.a, 1u)]);
    global1 = array<Struct_1, 8>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1((vec2<u32>(u_input.b, 4294967295u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) ^ vec2<u32>(u_input.b, 84837u)), vec4<bool>(false, false, any(vec3<bool>(true, true, true)), !global2.x), ~(~26420u) << (u_input.a % 32u))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(293f, -1388f, 1661f, 1119f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-248f, 1109f, 1627f, -772f), vec4<f32>(801f, -742f, 1388f, -859f)))))));
    let var_2 = vec3<bool>(~_wgslsmith_mod_u32(4294967295u, 0u | u_input.a) == _wgslsmith_add_u32(_wgslsmith_mult_u32(~16462u, 15471u & u_input.a), _wgslsmith_div_u32(105324u, min(40462u, u_input.a))), any(select(select(select(vec4<bool>(arg_0.x, global2.x, global0[_wgslsmith_index_u32(u_input.b, 1u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 1u)], false, global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], false, arg_0.x, true)), select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(0u, 1u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 1u)], var_0, global0[_wgslsmith_index_u32(u_input.a, 1u)]), true), !vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(4294967295u, 1u)])), select(select(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec4<bool>(true, arg_0.x, false, true), vec4<bool>(false, global2.x, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(var_0, var_0, global0[_wgslsmith_index_u32(1u, 1u)], true), global2.x), global0[_wgslsmith_index_u32(u_input.b, 1u)]), vec4<bool>(all(vec4<bool>(false, var_0, false, true)), true, global2.x, false))), all(vec3<bool>(true | !global2.x, all(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], global2.x, true, global2.x)), true)));
    return 10495u;
}

fn func_1(arg_0: f32, arg_1: i32) -> i32 {
    global2 = vec2<bool>(global2.x, global2.x);
    var var_0 = Struct_1(abs(~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, 0u), vec2<u32>(1u, u_input.b) & vec2<u32>(0u, 4294967295u))));
    global1 = array<Struct_1, 8>();
    let var_1 = u_input.d.x << (((max(func_2(vec2<bool>(true, true)), 1u) >> ((_wgslsmith_add_u32(var_0.a.x, var_0.a.x) << (var_0.a.x % 32u)) % 32u)) | (~u_input.a & (u_input.b | ~u_input.a))) % 32u);
    let var_2 = global1[_wgslsmith_index_u32(var_0.a.x & u_input.b, 8u)];
    return -abs(~u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 1>();
    global1 = array<Struct_1, 8>();
    let var_0 = u_input.b << (70407u % 32u);
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(countOneBits(abs(13935i | u_input.d.x)), -_wgslsmith_div_i32(i32(-1i) * -2147483647i, u_input.d.x), func_1(-894f, u_input.c.x)), 34321i);
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~_wgslsmith_sub_u32(select(36992u, 24361u, false), 57514u), ~abs(~u_input.b)), 8u)];
    global0 = array<bool, 1>();
    var var_3 = Struct_1(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -796f));
}

