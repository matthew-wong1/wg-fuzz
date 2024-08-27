struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: vec2<i32>;

var<private> global2: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = array<vec2<i32>, 5>();
    global0 = array<vec2<i32>, 5>();
    global2 = u_input.b;
    var var_0 = Struct_1(select(any(vec3<bool>(true, true, true)), true, true), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(815f, -927f, 1131f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(676f, 1296f, 587f), vec3<f32>(873f, 579f, 1000f))))))));
    global2 = u_input.c;
    return Struct_1(var_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b.x, 290f, -918f), vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x))))), _wgslsmith_f_op_vec3_f32(var_0.b - var_0.b)));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    return func_2(13704u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    global2 = ~u_input.b;
    var var_0 = _wgslsmith_add_i32(firstLeadingBit(min(global1.x | global1.x, -4810i)), -23369i) ^ (reverseBits(select(global1.x, global1.x, !arg_3.a)) << ((4294967295u | (47544u | u_input.b)) % 32u));
    var var_1 = ~vec2<u32>(~1u, 0u);
    var var_2 = select(vec4<i32>(24413i, global1.x, max(max(_wgslsmith_mod_i32(global1.x, global1.x), _wgslsmith_sub_i32(1i, -67569i)), global1.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(global1.x, global1.x, 23792i, global1.x), firstLeadingBit(abs(vec4<i32>(-49181i, global1.x, global1.x, 4481i))))), reverseBits(~vec4<i32>(global1.x, global1.x, -global1.x, global1.x ^ global1.x)), arg_3.a);
    let var_3 = vec4<bool>(!(select(true || arg_3.a, true, var_1.x > 1u) | (false | arg_1.x)), func_2(~4294967295u).a, arg_1.x != arg_3.a, arg_1.x);
    return -1710f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-26866i, 4950i);
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1950f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-897f, -422f)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), func_1(true, -1515f))), func_1(any(vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(sign(680f))).b.x), vec3<f32>(1780f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-970f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-337f, -1302f))))), false)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(619f, -509f, 1997f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-184f, 756f, -673f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1456f, -1067f, 246f) + vec3<f32>(1076f, -138f, 1000f))) * vec3<f32>(_wgslsmith_f_op_f32(func_3(vec2<f32>(162f, -769f), vec3<bool>(false, true, false), vec3<bool>(false, true, false), Struct_1(false, vec3<f32>(-1867f, -1414f, -466f)))), _wgslsmith_div_f32(-1385f, -504f), -733f))))));
    global0 = array<vec2<i32>, 5>();
    let var_2 = func_1(select(func_1(true && any(vec4<bool>(true, true, false, false)), _wgslsmith_f_op_f32(-var_1.x)).a, true & all(vec3<bool>(true, true, true)), true), var_1.x);
    global1 = -((vec2<i32>(_wgslsmith_sub_i32(0i, global1.x), 9979i) >> (vec2<u32>(_wgslsmith_mod_u32(4294967295u, 7490u), abs(u_input.c)) % vec2<u32>(32u))) & ~global0[_wgslsmith_index_u32(4294967295u, 5u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>((24212u | u_input.b) << (1u % 32u), u_input.b << (~4294967295u % 32u), abs(u_input.a) << (u_input.b % 32u)) ^ _wgslsmith_div_vec3_u32(~(vec3<u32>(4294967295u, 1u, 38208u) ^ vec3<u32>(1u, 0u, u_input.a)), vec3<u32>(u_input.a, ~32214u, u_input.b)), i32(-1i) * -(~2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 843f, 1000f, var_2.b.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), 379f, -784f, _wgslsmith_f_op_f32(f32(-1f) * -1049f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_2.b.x) - vec4<f32>(-1071f, var_1.x, -581f, 574f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.x))));
}

