struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(false, 383f, vec3<bool>(false, false, true)), Struct_1(true, -153f, vec3<bool>(false, true, false)), Struct_1(false, 710f, vec3<bool>(false, false, true)), Struct_1(false, 2073f, vec3<bool>(true, false, true)), Struct_1(false, -1604f, vec3<bool>(false, false, false)), Struct_1(false, 1969f, vec3<bool>(true, false, false)), Struct_1(false, -187f, vec3<bool>(true, true, true)), Struct_1(true, 161f, vec3<bool>(false, true, false)), Struct_1(false, -688f, vec3<bool>(true, true, false)), Struct_1(false, 1490f, vec3<bool>(false, true, true)), Struct_1(true, -1460f, vec3<bool>(true, true, false)), Struct_1(false, 737f, vec3<bool>(true, false, true)), Struct_1(false, -897f, vec3<bool>(true, false, true)), Struct_1(true, 1000f, vec3<bool>(true, true, true)));

var<private> global2: u32;

var<private> global3: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(23226u, 1u, 29565u, 1u), vec4<u32>(1u, 0u, 7859u, 42054u), vec4<u32>(50440u, 72883u, 4294967295u, 4294967295u), vec4<u32>(0u, 757u, 0u, 51666u), vec4<u32>(1u, 85019u, 1u, 4294967295u), vec4<u32>(54695u, 17545u, 21539u, 1u), vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<u32>(11858u, 11290u, 32036u, 0u), vec4<u32>(64823u, 1u, 30345u, 2414u), vec4<u32>(11629u, 40913u, 869u, 0u), vec4<u32>(94613u, 4294967295u, 24803u, 10689u), vec4<u32>(33739u, 31461u, 4686u, 46844u), vec4<u32>(7354u, 27668u, 1u, 0u), vec4<u32>(0u, 1u, 1u, 38253u), vec4<u32>(0u, 83714u, 1u, 29740u), vec4<u32>(64565u, 1u, 4294967295u, 44883u), vec4<u32>(1u, 4294967295u, 0u, 4691u), vec4<u32>(4294967295u, 4294967295u, 22211u, 0u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global2 = 0u | ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(5775u, 6073u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)]) ^ select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27074u, 30u)], 30u)], 122441u, arg_0.a)), 30u)], 30u)];
    var var_0 = vec4<i32>(19480i, countOneBits(max(-reverseBits(2147483647i), -1i)), u_input.a.x, _wgslsmith_add_i32(u_input.c.x, (firstLeadingBit(u_input.a.x) << ((global0[_wgslsmith_index_u32(4294967295u, 30u)] ^ global0[_wgslsmith_index_u32(9555u, 30u)]) % 32u)) ^ firstTrailingBit(firstLeadingBit(u_input.c.x))));
    let var_1 = global1[_wgslsmith_index_u32(0u ^ global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~54560u, ~70358u, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(28328u, global0[_wgslsmith_index_u32(30801u, 30u)]), 30u)]), reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(26671u, 30u)], _wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(7974u, 30u)]), global0[_wgslsmith_index_u32(49559u >> (global0[_wgslsmith_index_u32(0u, 30u)] % 32u), 30u)]))), 30u)], 14u)];
    global0 = array<u32, 30>();
    let var_2 = Struct_1(false, -850f, select(vec3<bool>(var_1.a & false, var_1.a, arg_0.c.x), arg_0.c, arg_0.c.x));
    return !vec4<bool>(select(!var_1.a, !(false && arg_0.a), arg_0.c.x | (var_1.c.x | true)), ~(u_input.b.x << (global0[_wgslsmith_index_u32(30516u, 30u)] % 32u)) <= u_input.c.x, all(vec4<bool>(true, !arg_0.a, var_1.c.x, var_1.a)), arg_0.a);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    global3 = array<vec4<u32>, 18>();
    global3 = array<vec4<u32>, 18>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1254f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))));
    var var_1 = select(arg_1.c, select(vec3<bool>(all(vec3<bool>(arg_1.c.x, false, false)), 4294967295u < ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(754u, 30u)], 30u)], 30u)], 30u)], 30u)], 30u)], 30u)], arg_1.a), arg_1.c, !vec3<bool>(arg_1.a, arg_1.a, !arg_1.c.x)), arg_1.a);
    let var_2 = global0[_wgslsmith_index_u32(9434u, 30u)];
    return !func_3(Struct_1(!(u_input.c.x > u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_1.b), !select(vec3<bool>(true, true, true), arg_1.c, vec3<bool>(var_1.x, var_1.x, false))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> u32 {
    let var_0 = arg_1.x;
    var var_1 = !vec3<bool>(any(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1000f)), global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(15172u, 30u)], 14u)], _wgslsmith_f_op_f32(abs(arg_1.x)))), true, any(vec4<bool>(true, true, true, true)));
    let var_2 = global1[_wgslsmith_index_u32(arg_2.x, 14u)];
    let var_3 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(~arg_2.x, 30u)]), 30u)], 14u)];
    global0 = array<u32, 30>();
    return firstTrailingBit(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(countOneBits(1u >> (~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)]) % 32u)), ~_wgslsmith_add_u32(~12305u, ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(91272u, 30u)], global0[_wgslsmith_index_u32(42816u, 30u)])));
    let var_1 = vec2<i32>(u_input.a.x, ~select(-1i, _wgslsmith_sub_i32(u_input.b.x, u_input.c.x), true)) | _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(-27963i, -56572i), vec2<i32>(u_input.c.x, u_input.a.x) << (vec2<u32>(9990u, 1u) % vec2<u32>(32u)))), u_input.a.xx);
    let var_2 = _wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(4294967295u, var_0), 64047u, firstLeadingBit(~var_0), 53406u), global3[_wgslsmith_index_u32(~func_1(vec4<i32>(var_1.x, -1i, 1i, 7563i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1408f, 940f)), _wgslsmith_div_vec2_u32(vec2<u32>(124196u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(13632u, 30u)], 9479u))), 18u)]), 18u)]);
    let var_3 = false;
    global3 = array<vec4<u32>, 18>();
    let var_4 = _wgslsmith_clamp_vec2_i32(-(~max(-vec2<i32>(u_input.c.x, -2147483647i), vec2<i32>(var_1.x, -1i) >> (vec2<u32>(var_2.x, 0u) % vec2<u32>(32u)))), vec2<i32>(2147483647i, 36912i), abs(~max(~vec2<i32>(u_input.b.x, -1i), firstLeadingBit(vec2<i32>(-2147483647i, u_input.c.x)))));
    let var_5 = !(!vec3<bool>(any(vec3<bool>(var_3, var_3, true)), true, true));
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(857f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(758f, -443f, var_3)) - _wgslsmith_f_op_f32(1926f * 976f)) * _wgslsmith_f_op_f32(abs(-1316f))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(_wgslsmith_sub_i32(min(75822i, u_input.c.x), 48324i << (var_0 % 32u)), firstTrailingBit(-34658i)), ~(vec2<i32>(var_4.x, 22282i) >> (var_2.wy % vec2<u32>(32u)))));
}

