struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<bool, 22>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = all(vec3<bool>(select(all(vec4<bool>(global1[_wgslsmith_index_u32(5753u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(88027u, 22u)], global1[_wgslsmith_index_u32(2236u, 22u)])), all(select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 22u)], false), global1[_wgslsmith_index_u32(0u, 22u)])), global1[_wgslsmith_index_u32(~(~1u), 22u)]), !global1[_wgslsmith_index_u32(~u_input.e.x, 22u)], !(all(vec2<bool>(global1[_wgslsmith_index_u32(9539u, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)])) && global1[_wgslsmith_index_u32(countOneBits(0u), 22u)])));
    return vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-23283i, min(-8305i, 13437i), -1i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(-89054i, -58010i, 2147483647i, -41196i), vec4<i32>(33459i, 1i, -23141i, -2147483647i))), max(_wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, 1i, 13832i, 0i), vec4<i32>(-2147483647i, -1086i, -14166i, 20600i)), vec4<i32>(-2147483647i, min(0i, 48647i), -1i, 1i))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(select(min(vec2<i32>(-1i, 1379i), vec2<i32>(-36553i, 15067i)), -vec2<i32>(1i, -21267i), select(vec2<bool>(var_0, true), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], true), global1[_wgslsmith_index_u32(4294967295u, 22u)])), vec2<i32>(_wgslsmith_div_i32(-11611i, -1i), ~(-23813i))), ~(-64500i)), _wgslsmith_sub_i32(abs(countOneBits(-1i) >> (~u_input.a % 32u)), firstLeadingBit(1i | _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(-35341i, 0i)))), -_wgslsmith_mult_i32(-(~0i), 9024i));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> vec2<bool> {
    global0 = array<Struct_1, 16>();
    let var_0 = ~max(firstLeadingBit(vec4<i32>(-1i, arg_0.c.a.x, arg_2.a.x, arg_0.c.a.x)), func_3()) >> (~vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(4294967295u, 24309u)), _wgslsmith_div_u32(arg_1.a.a.x, ~u_input.d.x), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a.a.x, 0u, arg_0.a.x), vec3<u32>(0u, 4294967295u, arg_0.a.x)), abs(vec3<u32>(0u, u_input.e.x, u_input.e.x))), ~_wgslsmith_div_u32(arg_0.a.x, arg_0.a.x)) % vec4<u32>(32u));
    global1 = array<bool, 22>();
    let var_1 = arg_1;
    global1 = array<bool, 22>();
    return !(!vec2<bool>(!(false | var_1.a.b), true || !arg_1.a.b));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    var var_0 = all(!(!(!func_2(Struct_2(u_input.c, global1[_wgslsmith_index_u32(110562u, 22u)], Struct_1(arg_0.a.c.a)), arg_0, Struct_1(arg_0.a.c.a)))));
    var var_1 = arg_0.a;
    global0 = array<Struct_1, 16>();
    var var_2 = Struct_2(~var_1.a, true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(vec3<u32>(4294967295u, arg_0.a.a.x, var_1.a.x) >> (vec3<u32>(24837u, var_1.a.x, 18461u) % vec3<u32>(32u)))), var_1.a), 16u)]);
    let var_3 = -249f;
    return arg_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> f32 {
    global1 = array<bool, 22>();
    var var_0 = select(select(func_2(func_1(Struct_3(arg_1.a), -1i | arg_1.a.c.a.x).a, arg_1, func_1(func_1(Struct_3(Struct_2(vec3<u32>(57863u, arg_1.a.a.x, 1u), global1[_wgslsmith_index_u32(u_input.c.x, 22u)], global0[_wgslsmith_index_u32(1u, 16u)])), arg_1.a.c.a.x), _wgslsmith_add_i32(62958i, arg_1.a.c.a.x)).a.c), arg_0.zy, arg_1.a.b), vec2<bool>(all(select(select(vec4<bool>(global1[_wgslsmith_index_u32(19174u, 22u)], arg_0.x, false, global1[_wgslsmith_index_u32(arg_1.a.a.x, 22u)]), vec4<bool>(arg_1.a.b, false, global1[_wgslsmith_index_u32(26661u, 22u)], arg_1.a.b), arg_1.a.b), !vec4<bool>(false, false, arg_1.a.b, arg_0.x), true)), all(arg_0.xx)), true);
    var var_1 = vec4<i32>(i32(-1i) * -_wgslsmith_div_i32(0i, firstTrailingBit(2147483647i)), arg_1.a.c.a.x, -12092i, min(_wgslsmith_sub_i32(select(arg_1.a.c.a.x, -8845i, false), _wgslsmith_sub_i32(-52608i, arg_1.a.c.a.x) << (~50658u % 32u)), ~_wgslsmith_add_i32(arg_1.a.c.a.x, arg_1.a.c.a.x)));
    var var_2 = arg_1.a;
    let var_3 = -599f;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 22>();
    global0 = array<Struct_1, 16>();
    var var_0 = _wgslsmith_sub_u32(firstTrailingBit(firstLeadingBit(82104u)), u_input.d.x);
    global0 = array<Struct_1, 16>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_4(vec3<bool>(true, all(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(1u, 22u)])), false), func_1(Struct_3(Struct_2(u_input.c, global1[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(0u, 16u)])), min(2147483647i, 19835i)))), 1096f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2015f, -722f), vec2<f32>(-462f, 829f)), vec2<f32>(1f, 1f))))));
    var var_2 = 6841u;
    var_0 = ~(~_wgslsmith_div_u32(select(u_input.e.x, ~u_input.d.x, func_2(Struct_2(vec3<u32>(35672u, 4294967295u, u_input.e.x), true, global0[_wgslsmith_index_u32(17977u, 16u)]), Struct_3(Struct_2(vec3<u32>(1u, 5124u, u_input.d.x), true, Struct_1(vec3<i32>(41568i, -11663i, -2147483647i)))), global0[_wgslsmith_index_u32(51037u, 16u)]).x), 0u & (u_input.b & u_input.d.x)));
    var var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(~(abs(u_input.b) << (abs(1u) % 32u)), ~u_input.a, _wgslsmith_div_u32(1u << (u_input.b % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.b, 0u), ~vec3<u32>(1u, 1u, 4294967295u))), 4294967295u), vec4<u32>(0u, u_input.c.x, max(u_input.a, ~(~17008u)), ~9671u));
    let var_4 = Struct_2(var_3.wzy, select(true, true, (var_3.x > ~var_3.x) || true), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, ~1u), var_3.x), 16u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-(~var_4.c.a.x) | 1i, _wgslsmith_div_i32(-23221i, var_4.c.a.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-553f, -1509f, var_1.x) * vec3<f32>(1022f, -1059f, 1334f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -513f), 452f, _wgslsmith_f_op_f32(f32(-1f) * -681f))))));
}

