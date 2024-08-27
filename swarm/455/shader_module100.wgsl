struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(0u), Struct_1(1u), Struct_1(0u), Struct_1(4294967295u), Struct_1(1u), Struct_1(0u), Struct_1(0u), Struct_1(4294967295u), Struct_1(1u), Struct_1(75132u), Struct_1(75086u), Struct_1(30732u), Struct_1(4294967295u), Struct_1(1u), Struct_1(28877u), Struct_1(0u), Struct_1(6776u));

var<private> global3: array<vec2<u32>, 15>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<i32>) -> vec4<u32> {
    var var_0 = global2[_wgslsmith_index_u32(17831u >> (~(_wgslsmith_sub_u32(~5903u, u_input.e.x) ^ 43581u) % 32u), 17u)];
    let var_1 = firstLeadingBit(_wgslsmith_add_i32(u_input.b, abs(_wgslsmith_dot_vec2_i32(arg_0.zz, vec2<i32>(-2147483647i, arg_0.x)))) | -31248i);
    let var_2 = 34202i;
    let var_3 = Struct_1(var_0.a);
    global3 = array<vec2<u32>, 15>();
    return (reverseBits(~min(vec4<u32>(var_3.a, 1u, 19716u, var_0.a), vec4<u32>(u_input.e.x, 0u, 0u, u_input.d.x))) | firstLeadingBit(~(vec4<u32>(0u, 14696u, var_0.a, var_0.a) & vec4<u32>(72902u, var_0.a, 30451u, 44202u)))) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(53642u, 0u, u_input.e.x, 44324u ^ var_3.a), ((vec4<u32>(4294967295u, 1u, 1u, 17251u) | vec4<u32>(47770u, 0u, u_input.e.x, u_input.e.x)) ^ vec4<u32>(32624u, var_3.a, var_0.a, var_3.a)) << (vec4<u32>(firstLeadingBit(0u), u_input.e.x, var_3.a << (1u % 32u), max(89228u, u_input.e.x)) % vec4<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = firstLeadingBit(func_2(-(~(-vec4<i32>(u_input.c, u_input.b, 26793i, 71470i)))));
    let var_1 = firstLeadingBit(~(~vec4<u32>(34830u, 4294967295u, 1u, 0u)));
    let var_2 = arg_1;
    global0 = u_input.b | u_input.b;
    global1 = vec2<bool>(global1.x, !arg_0);
    return Struct_1(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!select(vec2<bool>(true, global1.x), vec2<bool>(any(vec2<bool>(global1.x, global1.x)), true || global1.x), vec2<bool>(true, true)));
    var var_0 = abs(81819u);
    global1 = select(vec2<bool>(global1.x, true), vec2<bool>(true, global1.x), !vec2<bool>(global1.x, true));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2390f, -1565f), _wgslsmith_f_op_f32(step(175f, -1374f))))) * _wgslsmith_f_op_f32(-1040f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1720f + -101f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-352f, -149f, global1.x)) + _wgslsmith_f_op_f32(-239f - -678f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1070f) - -896f)))));
    global2 = array<Struct_1, 17>();
    var var_2 = func_1(u_input.c >= 2147483647i, global2[_wgslsmith_index_u32(u_input.d.x, 17u)]);
    var var_3 = Struct_1(reverseBits(firstLeadingBit(func_2(vec4<i32>(1i, 1i, u_input.c, u_input.a.x)).x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_div_i32(u_input.c, -2147483647i), u_input.c), u_input.c, vec2<u32>(min(var_2.a, u_input.d.x), ~var_2.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(814f, -874f, 1435f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-555f, 1590f, 2281f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-584f, -1300f, -835f) - vec3<f32>(-237f, -585f, -1000f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(535f - -1329f), _wgslsmith_f_op_f32(sign(115f)), -355f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-602f, 2596f, 665f) * vec3<f32>(-1000f, 452f, -299f)))))));
}

