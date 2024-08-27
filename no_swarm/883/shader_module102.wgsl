struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, false, true);

var<private> global1: Struct_5 = Struct_5(Struct_1(vec4<i32>(2147483647i, -1i, 0i, -1i), vec4<bool>(false, false, false, false)), vec2<bool>(false, false), true, Struct_4(Struct_1(vec4<i32>(-30567i, 2147483647i, -13626i, -1i), vec4<bool>(true, false, true, false))), -684f);

var<private> global2: Struct_4 = Struct_4(Struct_1(vec4<i32>(0i, 91305i, 56203i, 2147483647i), vec4<bool>(false, false, true, false)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_4) -> vec3<u32> {
    var var_0 = Struct_3(Struct_2(global1.e, Struct_1((vec4<i32>(u_input.c, arg_2, -1i, 9978i) ^ vec4<i32>(-44104i, -2147483647i, 0i, global2.a.a.x)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, 3199u, u_input.b.x, 85548u)) % vec4<u32>(32u)), !select(arg_3.a.b, global1.d.a.b, global2.a.b)), select(-firstLeadingBit(vec4<i32>(-1i, u_input.c, 40034i, -2147483647i)), _wgslsmith_sub_vec4_i32(-vec4<i32>(1i, arg_3.a.a.x, 2147483647i, global2.a.a.x), select(vec4<i32>(arg_3.a.a.x, arg_3.a.a.x, -23401i, -39i), vec4<i32>(global1.a.a.x, -17148i, arg_2, -4276i), arg_1.x)), true)), vec3<u32>(~firstTrailingBit(40105u), 0u, max(u_input.b.x, firstTrailingBit(~0u))));
    let var_1 = var_0.a.b.a.x;
    global2 = global1.d;
    let var_2 = arg_3.a.a.x;
    var var_3 = var_0.a;
    return _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.b.x), ~var_0.b.x), vec3<u32>(u_input.a, u_input.b.x, var_0.b.x ^ 17036u)), abs(abs(countOneBits(~var_0.b))));
}

fn func_2(arg_0: Struct_3) -> i32 {
    var var_0 = !all(global1.a.b);
    var_0 = global1.a.b.x;
    var var_1 = global1.d;
    let var_2 = select(~(vec3<i32>(arg_0.a.b.a.x, 4809i, global2.a.a.x) & select(vec3<i32>(u_input.c, global2.a.a.x, global1.d.a.a.x), -vec3<i32>(-2147483647i, 1i, var_1.a.a.x), !arg_0.a.b.b.yyz)), ~vec3<i32>(select(global1.d.a.a.x, global1.d.a.a.x, global2.a.b.x), -3875i, -2147483647i) << (max(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, arg_0.b.x, 14923u), vec3<u32>(u_input.a, 39713u, arg_0.b.x)), ~func_3(vec2<f32>(arg_0.a.a, global1.e), global1.d.a.b.wz, arg_0.a.c.x, Struct_4(arg_0.a.b))) % vec3<u32>(32u)), vec3<bool>(true, firstLeadingBit(arg_0.b.x) < ~(~12686u), !(_wgslsmith_f_op_f32(-arg_0.a.a) != _wgslsmith_f_op_f32(arg_0.a.a * arg_0.a.a))));
    let var_3 = Struct_2(-903f, arg_0.a.b, countOneBits(global1.a.a));
    return abs(-abs(select(var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.b.a.x, arg_0.a.c.x, global2.a.a.x, -1i), vec4<i32>(var_1.a.a.x, 31482i, var_3.b.a.x, arg_0.a.b.a.x)), true)));
}

fn func_1() -> Struct_5 {
    global2 = Struct_4(global1.a);
    var var_0 = vec2<i32>(global1.a.a.x, (i32(-1i) * -2147483647i) | _wgslsmith_add_i32(func_2(Struct_3(Struct_2(-1172f, Struct_1(global2.a.a, vec4<bool>(false, global0[_wgslsmith_index_u32(36041u, 3u)], global2.a.b.x, global0[_wgslsmith_index_u32(981u, 3u)])), global2.a.a), vec3<u32>(15657u, u_input.a, 1u))), 2147483647i)) << (u_input.b % vec2<u32>(32u));
    global2 = global1.d;
    var var_1 = max(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, 0u), 44990u & u_input.b.x) >> (_wgslsmith_mult_u32(countOneBits(0u), u_input.b.x) % 32u), ~u_input.a, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(47753u, ~u_input.b.x | u_input.a, u_input.a), max(vec3<u32>(1u, countOneBits(8052u), _wgslsmith_div_u32(4614u, u_input.b.x)), ~(vec3<u32>(0u, 0u, u_input.a) ^ vec3<u32>(35769u, 0u, u_input.b.x))), ~countOneBits(~vec3<u32>(57784u, 57952u, 72022u))));
    global2 = Struct_4(Struct_1(-(~global1.d.a.a), global2.a.b));
    return Struct_5(Struct_1(~vec4<i32>(-u_input.c, 1i, u_input.c, _wgslsmith_add_i32(11143i, global2.a.a.x)), vec4<bool>(all(vec2<bool>(false, false)), all(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], global2.a.b.x)), global0[_wgslsmith_index_u32(0u, 3u)], true || all(vec2<bool>(global2.a.b.x, global2.a.b.x)))), select(global2.a.b.yx, select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, 0u), 3u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 31384u), 3u)]), vec2<bool>(true, true)), true), global1.b.x, Struct_4(Struct_1(~(-vec4<i32>(var_0.x, global2.a.a.x, u_input.c, -8603i)), !(!vec4<bool>(global2.a.b.x, true, true, global1.a.b.x)))), 985f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global1 = func_1();
    global0 = array<bool, 3>();
    var var_0 = ~vec2<i32>(19324i, 233i);
    let var_1 = _wgslsmith_f_op_f32(floor(global1.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-146f + 1258f)), var_1, _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_1().e))), _wgslsmith_f_op_f32(global1.e * _wgslsmith_f_op_f32(-var_1)), 4294967295u);
}

