struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(false, false, true, true, true, false, false, true, true, true, false, false, true, false, false, false, true, true, false, true, true, false, true, true, true, false, false, true, false, false);

var<private> global1: vec3<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> i32 {
    global0 = array<bool, 30>();
    let var_0 = ~62786u;
    return u_input.b.x;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_add_i32(u_input.b.x ^ -_wgslsmith_mult_i32(u_input.b.x >> (81397u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.a.x, arg_0.c, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, 38188i, 1039i))), arg_0.c);
    var_0 = 28575i;
    let var_1 = select(global1.yy, vec2<bool>(true, arg_1.a > u_input.a.x), global1.xy);
    let var_2 = Struct_1(abs(countOneBits(firstTrailingBit(min(1u, arg_1.a)))));
    let var_3 = arg_2;
    return Struct_2(vec4<i32>(-63649i, _wgslsmith_sub_i32(1i << (var_3.a % 32u), min(arg_0.a.x, -29604i)), arg_0.c | u_input.b.x, abs(select(arg_0.c, _wgslsmith_div_i32(56525i, u_input.b.x), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.a.x), 30u)]))), 1000f, ~(i32(-1i) * -1i));
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.a.x;
    var var_1 = func_3(Struct_2(-vec4<i32>(func_2(), u_input.b.x & u_input.b.x, _wgslsmith_mult_i32(-1i, 12919i), u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_sub_i32(-u_input.b.x, u_input.b.x) | countOneBits(_wgslsmith_mult_i32(u_input.b.x, -12651i))), Struct_1(u_input.a.x), Struct_1(u_input.a.x));
    let var_2 = _wgslsmith_add_vec4_u32(firstLeadingBit(reverseBits(abs(vec4<u32>(u_input.a.x, 18897u, 13819u, u_input.a.x)))), u_input.a);
    global1 = vec3<bool>(all(vec4<bool>(global1.x, true, any(global1.xz), !global0[_wgslsmith_index_u32(1u, 30u)])), any(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(52223u, 30u)], false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)]))) && true, select(!(!global0[_wgslsmith_index_u32(u_input.a.x, 30u)] | (global0[_wgslsmith_index_u32(var_2.x, 30u)] | global0[_wgslsmith_index_u32(u_input.a.x, 30u)])), !(false && global0[_wgslsmith_index_u32(49404u, 30u)]) & (_wgslsmith_f_op_f32(var_1.b * var_1.b) <= var_1.b), global0[_wgslsmith_index_u32(4294967295u, 30u)]));
    global1 = !(!select(vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(129386u, 30u)], false, false)), select(global0[_wgslsmith_index_u32(21360u, 30u)], global0[_wgslsmith_index_u32(var_2.x, 30u)], false), true), vec3<bool>(false, !global1.x, false), vec3<bool>(true, select(global1.x, global0[_wgslsmith_index_u32(23463u, 30u)], global1.x), true)));
    return Struct_2(var_1.a ^ max(max(func_3(Struct_2(vec4<i32>(u_input.b.x, 8987i, -28022i, var_1.a.x), var_1.b, -2147483647i), Struct_1(68240u), Struct_1(u_input.a.x)).a, vec4<i32>(var_1.a.x, -2147483647i, 5319i, u_input.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.x, var_1.a.x, 1i, u_input.b.x), ~vec4<i32>(26813i, -2147483647i, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-751f, _wgslsmith_f_op_f32(exp2(var_1.b)), global0[_wgslsmith_index_u32(1u, 30u)]))))), ~(-53368i) >> (var_2.x % 32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_2) -> vec3<u32> {
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    var var_0 = Struct_1(arg_1);
    let var_1 = -653f;
    global1 = select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 30u)], false, global1.x), select(vec3<bool>(!global1.x, false, false), vec3<bool>(46750u != arg_1, !global1.x, !select(false, true, true)), true && all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]))), true);
    return _wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(arg_1, ~var_0.a), countOneBits(~0u), countOneBits(27832u)), u_input.a.wxw);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = Struct_1(4294967295u);
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    var var_1 = abs(vec4<u32>(8118u, ~(~u_input.a.x), _wgslsmith_div_u32(arg_0.x, 4294967295u), 1u));
    var var_2 = vec3<bool>(~(firstTrailingBit(var_1.x) | (u_input.a.x & arg_2.a)) == abs(_wgslsmith_mult_u32(~50356u, max(var_1.x, 36739u))), true, global1.x);
    return StorageBuffer(~arg_1.x, vec4<f32>(1021f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2270f)), 256f, !var_2.x)), 1f, func_1().b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~1u);
    let x = u_input.a;
    s_output = func_5(func_4(-(~u_input.b & vec3<i32>(u_input.b.x, 2147483647i, 0i)), ~(~(~var_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), func_1()), _wgslsmith_add_vec3_i32(vec3<i32>(func_3(Struct_2(vec4<i32>(u_input.b.x, 2147483647i, 1i, 17760i), 527f, u_input.b.x), Struct_1(var_0.a), Struct_1(var_0.a)).c, -2147483647i, 2147483647i), vec3<i32>(-1i, (61625i << (var_0.a % 32u)) ^ -u_input.b.x, _wgslsmith_mod_i32(-11522i & u_input.b.x, u_input.b.x))), Struct_1(~4294967295u ^ u_input.a.x));
}

