struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -620f;

var<private> global1: array<bool, 20> = array<bool, 20>(true, false, true, false, false, false, true, true, true, true, false, true, true, true, true, true, false, false, false, true);

var<private> global2: vec3<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    return 9135u;
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = Struct_1(select(!(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(84377u, 20u)], false))), !select(!vec4<bool>(false, false, arg_0.x, global1[_wgslsmith_index_u32(33702u, 20u)]), arg_0, global1[_wgslsmith_index_u32(1u, 20u)]), arg_0), vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(111141u, 2380u), ~(~17989u), 1u), 20u)], true, -2147483647i == _wgslsmith_div_i32(~(-1i), global2.x)));
    global2 = ~_wgslsmith_sub_vec3_i32(abs(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b.x, global2.x, u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, u_input.c), vec3<i32>(global2.x, u_input.a.x, 17353i)))), _wgslsmith_div_vec3_i32(abs(-vec3<i32>(u_input.b.x, global2.x, u_input.b.x)), vec3<i32>(global2.x ^ -1i, _wgslsmith_div_i32(global2.x, -15083i), ~global2.x)));
    let var_1 = global2.x;
    let var_2 = !(global1[_wgslsmith_index_u32(reverseBits(~4294967295u), 20u)] || (global1[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(), 1u), 20u)] && all(!vec2<bool>(global1[_wgslsmith_index_u32(17440u, 20u)], arg_0.x))));
    global2 = max(vec3<i32>(u_input.b.x ^ 9553i, -(1i << (1u % 32u)), 2147483647i), vec3<i32>(~(global2.x | global2.x), 2118i & ~global2.x, 22248i)) << (~vec3<u32>(select(abs(4294967295u), 1u, true), ~1u, 1u) % vec3<u32>(32u));
    return Struct_3(-32619i);
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> vec4<u32> {
    var var_0 = abs(~(~vec3<u32>(1u, 1u, 1u)));
    let var_1 = ~22163u;
    return ~(~select(vec4<u32>(var_1, var_0.x, ~0u, ~var_0.x), _wgslsmith_div_vec4_u32(vec4<u32>(2120u, 14131u, var_0.x, 33797u), vec4<u32>(0u, var_0.x, var_0.x, var_1)) | vec4<u32>(0u, var_1, 0u, 4294967295u), true));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_3) -> f32 {
    var var_0 = arg_1.a.xy;
    var var_1 = ~(~vec2<i32>(arg_3.a, arg_3.a));
    global1 = array<bool, 20>();
    var_1 = ~vec2<i32>(_wgslsmith_sub_i32(arg_3.a << (~18696u % 32u), -max(-1i, 0i)), 2147483647i);
    var var_2 = arg_1;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(367f, _wgslsmith_f_op_f32(select(-677f, -295f, false))))))), -461f));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1876f, 306f, 1000f, 108f) * vec4<f32>(464f, -1267f, 1039f, -720f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1317f), -1129f, 2290f, _wgslsmith_f_op_f32(ceil(487f))), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], true, global1[_wgslsmith_index_u32(4294967295u, 20u)]), !vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 20u)], true, global1[_wgslsmith_index_u32(40798u, 20u)]), all(vec2<bool>(true, true))))))));
    global2 = abs(reverseBits(vec3<i32>(firstTrailingBit(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -8951i, 2147483647i) & vec3<i32>(u_input.b.x, u_input.b.x, 379i), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 0i, 1i), vec3<i32>(u_input.c, u_input.c, -1i))), _wgslsmith_add_i32(countOneBits(-1i), -28091i))));
    var var_1 = abs(vec3<i32>(-36232i, ~select(global2.x & global2.x, abs(u_input.a.x), true), ~(i32(-1i) * -1i)));
    global1 = array<bool, 20>();
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_5(func_4(func_2(vec4<bool>(global1[_wgslsmith_index_u32(68547u, 20u)], true, true, true)), true & !global1[_wgslsmith_index_u32(4294967295u, 20u)]), Struct_1(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 20u)], false, true, global1[_wgslsmith_index_u32(45009u, 20u)]), !vec4<bool>(global1[_wgslsmith_index_u32(59940u, 20u)], true, global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(25825u, 20u)], global1[_wgslsmith_index_u32(52235u, 20u)])), vec4<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(10481u, 20u)], true)), true, !global1[_wgslsmith_index_u32(19623u, 20u)], !global1[_wgslsmith_index_u32(35062u, 20u)])), select(~vec4<u32>(28330u, 4294967295u, 30219u, 63038u), ~vec4<u32>(22928u, 23006u, 1u, 38446u), !vec4<bool>(global1[_wgslsmith_index_u32(1026u, 20u)], false, global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)])), Struct_3(_wgslsmith_mult_i32(-global2.x, _wgslsmith_add_i32(u_input.a.x, global2.x))))), -614f, var_0.x, -465f);
    return func_2(vec4<bool>(true, all(!vec2<bool>(false, global1[_wgslsmith_index_u32(35363u, 20u)])), global1[_wgslsmith_index_u32(reverseBits(43655u), 20u)] | true, global1[_wgslsmith_index_u32(func_3(), 20u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-434f, -1044f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-918f)), _wgslsmith_f_op_f32(sign(484f))))))), _wgslsmith_mult_vec2_u32(~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u))), max(abs(_wgslsmith_div_vec2_u32(vec2<u32>(37384u, 4294967295u), vec2<u32>(35455u, 4294967295u))), vec2<u32>(1u, 1u))));
}

