struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(-1015f, -899f, -1998f, -1955f, -1220f, -696f, 1000f, -251f, -1170f, -812f, 532f, -1212f, -1042f);

var<private> global1: array<bool, 17> = array<bool, 17>(true, false, true, true, false, false, false, true, true, true, true, false, false, false, false, false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: f32, arg_3: vec4<f32>) -> u32 {
    global0 = array<f32, 13>();
    let var_0 = Struct_1(countOneBits(~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 19584u, 0u), vec3<u32>(u_input.b.x, u_input.a, u_input.a)) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.b.x, 2181u, 4294967295u)))), _wgslsmith_f_op_f32(f32(-1f) * -2252f), !select(!(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], false)), vec2<bool>(false, true), select(vec2<bool>(global1[_wgslsmith_index_u32(74224u, 17u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), vec2<bool>(true, true))), !select(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), vec2<bool>(global1[_wgslsmith_index_u32(countOneBits(0u), 17u)], !global1[_wgslsmith_index_u32(0u, 17u)]), vec2<bool>(false, all(vec2<bool>(false, true)))), vec2<bool>(true, -28436i > firstTrailingBit(1i)));
    global1 = array<bool, 17>();
    return ~abs(4439u);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: bool) -> u32 {
    let var_0 = reverseBits(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, arg_2.b), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(arg_2.b, 4294967295u, u_input.a))), firstTrailingBit(1u & arg_0.a), ~4294967295u, ~4294967295u));
    global0 = array<f32, 13>();
    let var_1 = Struct_1(4294967295u, -351f, vec2<bool>(~_wgslsmith_mod_u32(var_0.x, arg_0.a) >= arg_0.a, global1[_wgslsmith_index_u32(min(firstLeadingBit(0u), countOneBits(_wgslsmith_mod_u32(var_0.x, u_input.a))), 17u)]), !(!(!select(vec2<bool>(arg_3, global1[_wgslsmith_index_u32(arg_2.b, 17u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], arg_3), arg_0.e.x))), select(arg_0.e, vec2<bool>(!global1[_wgslsmith_index_u32(~arg_0.a, 17u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 40003u), arg_2.b), 17u)]), vec2<bool>(!arg_0.c.x, !global1[_wgslsmith_index_u32(~arg_2.b, 17u)])));
    var var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(firstLeadingBit(u_input.b)) & ~u_input.b, _wgslsmith_mult_vec2_u32(abs(var_0.wy ^ vec2<u32>(arg_0.a, arg_0.a)), vec2<u32>(arg_0.a, ~var_1.a)), select(_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(18190u, var_1.a)), u_input.b, !var_1.e.x) << (u_input.b % vec2<u32>(32u))), ~(var_0.ww | ~u_input.b));
    var var_3 = _wgslsmith_clamp_vec4_i32(max(vec4<i32>(u_input.c, -2147483647i, 0i, 2147483647i), countOneBits(vec4<i32>(arg_2.c.x, -1i, arg_2.c.x, arg_2.a.a))) & ~(vec4<i32>(11650i, 1673i, arg_1, arg_2.c.x) | vec4<i32>(arg_2.c.x, -1i, arg_2.a.a, arg_1)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a.a, -u_input.c, arg_1, -29235i), vec4<i32>(min(arg_2.c.x, u_input.c), arg_2.a.a, -1i, arg_1)), vec4<i32>(max(~arg_1, -1i), reverseBits(select(5107i, 2147483647i, false)), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(arg_1, arg_2.c.x)), vec2<i32>(arg_1, 2147483647i) ^ arg_2.c), ~arg_1)) & select(vec4<i32>(_wgslsmith_mod_i32(arg_1, -24427i), select(u_input.c, 9534i, true), -21422i, arg_1) | reverseBits(-vec4<i32>(arg_1, 1i, -52934i, u_input.c)), _wgslsmith_div_vec4_i32(max(countOneBits(vec4<i32>(38766i, -2147483647i, 2646i, u_input.c)), firstTrailingBit(vec4<i32>(arg_1, arg_2.a.a, arg_1, u_input.c))), ~select(vec4<i32>(31140i, u_input.c, -66534i, u_input.c), vec4<i32>(arg_1, u_input.c, arg_1, 24222i), var_1.c.x)), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_2.b, 17u)], arg_3, 1u >= var_1.a, arg_0.e.x), select(!vec4<bool>(true, var_1.e.x, true, arg_3), !vec4<bool>(false, var_1.e.x, false, true), select(var_1.d.x, global1[_wgslsmith_index_u32(var_1.a, 17u)], global1[_wgslsmith_index_u32(arg_0.a, 17u)])), vec4<bool>(arg_0.c.x, true, var_1.d.x, any(vec2<bool>(global1[_wgslsmith_index_u32(arg_2.b, 17u)], arg_3)))));
    return firstLeadingBit(~var_0.x ^ 45576u);
}

fn func_2(arg_0: bool) -> Struct_3 {
    global1 = array<bool, 17>();
    var var_0 = Struct_3(Struct_2(-u_input.c), _wgslsmith_sub_u32(max(~u_input.b.x >> (~4294967295u % 32u), (u_input.b.x & 1u) | ~u_input.a), min(15588u, reverseBits(~0u))), vec2<i32>(u_input.c, -min(u_input.c, -32168i)) | (vec2<i32>(-1i) * -(~vec2<i32>(-22589i, u_input.c))), global0[_wgslsmith_index_u32(func_4(Struct_1(~u_input.b.x ^ func_3(-34159i, vec2<i32>(u_input.c, u_input.c), 995f, vec4<f32>(444f, 1057f, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a, 13u)] + 1479f), vec2<bool>(false, true), select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 17u)], arg_0), select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], arg_0)), false), select(vec2<bool>(true, true), !vec2<bool>(arg_0, true), 2147483647i == u_input.c)), -6916i, Struct_3(Struct_2(firstLeadingBit(-46504i)), abs(1u >> (u_input.b.x % 32u)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-32584i, -2489i), vec2<i32>(u_input.c, -1i)), -vec2<i32>(47736i, 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 13u)] + global0[_wgslsmith_index_u32(0u, 13u)]) - 1807f)), false), 13u)]);
    global1 = array<bool, 17>();
    let var_1 = var_0.b >= (func_4(Struct_1(222u, _wgslsmith_f_op_f32(step(787f, 691f)), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 17u)], true), vec2<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.a, 17u)]), vec2<bool>(global1[_wgslsmith_index_u32(11145u, 17u)], true)), vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.b, 17u)]), select(vec2<bool>(arg_0, true), vec2<bool>(false, global1[_wgslsmith_index_u32(52661u, 17u)]), false)), abs(-var_0.a.a), Struct_3(Struct_2(7784i), _wgslsmith_sub_u32(6391u, u_input.a), vec2<i32>(-46518i, u_input.c), -856f), global1[_wgslsmith_index_u32(~u_input.a, 17u)]) | 1u);
    var_0 = Struct_3(var_0.a, 11977u, var_0.c, _wgslsmith_f_op_f32(1f - 1796f));
    return Struct_3(Struct_2(~(u_input.c ^ u_input.c)), 1u, _wgslsmith_div_vec2_i32(var_0.c, firstTrailingBit(var_0.c)), -601f);
}

fn func_1() -> bool {
    var var_0 = func_2(!global1[_wgslsmith_index_u32(u_input.b.x, 17u)]);
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_0.b, ~func_4(Struct_1(48995u, -1299f, vec2<bool>(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(var_0.b, 17u)]), vec2<bool>(true, false), vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 17u)])), 11005i, Struct_3(var_0.a, u_input.a, vec2<i32>(var_0.c.x, 2147483647i), var_0.d), global1[_wgslsmith_index_u32(u_input.b.x & 10510u, 17u)])), 13u)];
    return all(select(vec2<bool>(global1[_wgslsmith_index_u32(var_0.b, 17u)], global1[_wgslsmith_index_u32(11394u, 17u)]), vec2<bool>(false, false), vec2<bool>(select(any(vec2<bool>(global1[_wgslsmith_index_u32(var_0.b, 17u)], false)), !global1[_wgslsmith_index_u32(u_input.a, 17u)], true), !all(vec2<bool>(false, false)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_add_i32(~_wgslsmith_mult_i32(u_input.c, -4633i), u_input.c), -2147483647i);
    let var_1 = ~vec3<u32>(_wgslsmith_add_u32(12492u >> (u_input.b.x % 32u), 20229u), firstTrailingBit(4294967295u), ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, 65688u, u_input.a, 71162u)), countOneBits(vec4<u32>(4294967295u, 4294967295u, 0u, 1u))));
    let var_2 = 8392u;
    global1 = array<bool, 17>();
    global1 = array<bool, 17>();
    return func_2(false | (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.a), var_1) < var_2));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 17>();
    let var_0 = !(!vec3<bool>(select(any(vec2<bool>(true, true)), true, u_input.c < u_input.c), true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(58760u), ~u_input.a), 17u)]));
    global0 = array<f32, 13>();
    let var_1 = any(var_0.yy);
    let var_2 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1192f, global0[_wgslsmith_index_u32(100731u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)], 688f))) * vec4<f32>(global0[_wgslsmith_index_u32(19532u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)], 1399f, global0[_wgslsmith_index_u32(u_input.a, 13u)])) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(6445u, 13u)], global0[_wgslsmith_index_u32(9946u, 13u)], -314f, global0[_wgslsmith_index_u32(34558u, 13u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], -688f, global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], 516f, 101f, global0[_wgslsmith_index_u32(6843u, 13u)]) * vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(6998u, 13u)], -1000f)))) * vec4<f32>(-1000f, 1106f, 830f, 1590f)), select(vec4<bool>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(25108u, 13u)]) < _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(79529u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)])), select(all(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 17u)], var_0.x)), global0[_wgslsmith_index_u32(u_input.a, 13u)] > global0[_wgslsmith_index_u32(u_input.a, 13u)], false), var_1, func_1()), select(select(select(vec4<bool>(false, var_1, false, global1[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<bool>(var_1, false, true, false), global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 17u)], var_0.x, true, false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(49998u, 17u)], var_1)), !vec4<bool>(false, false, var_1, var_1), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(49175u, 17u)], var_1, true), vec4<bool>(var_1, false, true, global1[_wgslsmith_index_u32(u_input.a, 17u)]), global1[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 17u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), var_0.x)), true), vec2<bool>(_wgslsmith_f_op_f32(-func_2(var_0.x).d) <= -2078f, ~(~u_input.b.x) < u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2.b, 13u)] - var_2.d), 3518u, max(countOneBits(~firstTrailingBit(vec4<u32>(var_2.b, 38346u, 1u, 47690u))), abs(vec4<u32>(max(80331u, 1u), ~u_input.a, ~var_2.b, 1u))), firstTrailingBit(19262i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1938f, -547f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], var_2.d), vec2<f32>(-769f, -202f)))))));
}

