struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-1253f, -528f, -1000f, -1011f), vec4<f32>(-843f, 197f, -221f, -711f), vec4<f32>(-851f, -1543f, -852f, 779f), vec4<f32>(-611f, 404f, 375f, -1717f), vec4<f32>(1930f, -394f, -211f, 330f), vec4<f32>(533f, 450f, 614f, -2081f), vec4<f32>(702f, -1844f, -1000f, 1397f), vec4<f32>(1248f, 497f, -1000f, 927f));

var<private> global1: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(0u, 54148u), vec2<u32>(4294967295u, 61638u), vec2<u32>(20716u, 95397u), vec2<u32>(6720u, 7323u), vec2<u32>(4294967295u, 0u), vec2<u32>(90645u, 25702u), vec2<u32>(12687u, 1u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 18384u), vec2<u32>(0u, 24638u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(45843u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 0u));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<f32, 2> = array<f32, 2>(-340f, 908f);

var<private> global4: vec4<f32> = vec4<f32>(-676f, 1276f, 763f, 1000f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(37644u, 2u)])));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-795f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + -780f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~arg_0.x, 8u)] - vec4<f32>(2248f, var_0.a, 1000f, 1540f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(trunc(-790f)), 1249f, arg_2.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-287f, global3[_wgslsmith_index_u32(arg_0.x, 2u)], global4.x, var_0.a))), select(any(vec3<bool>(global2.x, true, false)), any(select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(true, false, global2.x), true)), true))));
    global1 = array<vec2<u32>, 15>();
    global0 = array<vec4<f32>, 8>();
    global3 = array<f32, 2>();
    return ~vec3<u32>(min(u_input.b.x << (1u % 32u), arg_0.x << (abs(u_input.b.x) % 32u)), 21718u, arg_0.x);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = countOneBits(_wgslsmith_mult_vec3_u32((vec3<u32>(u_input.b.x, 82904u, u_input.b.x) ^ vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) >> (func_3(vec2<u32>(11748u, 1u), global4.wy, arg_0) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 41577u), vec3<u32>(23917u, 0u, u_input.b.x)))) ^ vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(63213u, u_input.b.x)), select(u_input.b, vec2<u32>(29973u, u_input.b.x), global2.x)), _wgslsmith_sub_u32(u_input.b.x, 21060u)), u_input.b.x);
    global4 = global0[_wgslsmith_index_u32(var_0.x, 8u)];
    var var_1 = _wgslsmith_mod_i32(reverseBits(~firstTrailingBit(4671i >> (u_input.b.x % 32u))), 2147483647i);
    var var_2 = -min(_wgslsmith_sub_vec3_i32(firstTrailingBit(abs(vec3<i32>(u_input.c, -20279i, u_input.c))), vec3<i32>(u_input.a, -29487i, 0i) >> (vec3<u32>(4294967295u, 1u, 0u) % vec3<u32>(32u))), min(abs(~vec3<i32>(u_input.a, -2147483647i, u_input.c)), vec3<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(1635i, 7048i, u_input.a, u_input.a), vec4<i32>(u_input.c, u_input.a, u_input.a, -46922i)), 43232i)));
    var var_3 = vec2<i32>(~_wgslsmith_sub_i32(u_input.a, -(~(-2147483647i))), 17704i);
    return func_1();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-462f, -1312f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_2.x, global3[_wgslsmith_index_u32(4294967295u, 2u)])))))));
    var var_1 = ~(-firstTrailingBit(countOneBits(vec2<i32>(u_input.a, -2147483647i)) & vec2<i32>(27283i, u_input.a)));
    global2 = select(!vec2<bool>(true, all(!vec3<bool>(false, true, global2.x))), !(!select(vec2<bool>(true, true), !vec2<bool>(global2.x, global2.x), any(vec2<bool>(global2.x, global2.x)))), u_input.c >= -_wgslsmith_sub_i32(1i, ~var_1.x));
    var var_2 = ~(~u_input.b.x);
    var var_3 = !select(select(vec3<bool>(any(vec2<bool>(false, global2.x)), global2.x, global2.x && global2.x), !(!vec3<bool>(false, global2.x, true)), vec3<bool>(global2.x | global2.x, global2.x, arg_2.x < arg_2.x)), select(!(!vec3<bool>(false, true, global2.x)), !select(vec3<bool>(true, true, global2.x), vec3<bool>(global2.x, global2.x, false), global2.x), all(select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, false, true)))), !(!(!vec3<bool>(true, true, global2.x))));
    return ~select(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 26846i), vec2<i32>(-1i) * -vec2<i32>(u_input.c, 2147483647i)), -1i & _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1.x, 1i), var_1.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 8>();
    global2 = !vec2<bool>(!global2.x, true);
    let var_0 = 45701i;
    let var_1 = ~(-1i);
    global1 = array<vec2<u32>, 15>();
    let var_2 = reverseBits(~func_4(func_2(func_1(), global3[_wgslsmith_index_u32(20949u, 2u)], global2.x), func_1(), vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], _wgslsmith_div_f32(-457f, global3[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_f_op_f32(abs(global4.x)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(abs(4294967295u), 2u)]) * -839f));
    var var_4 = ~(0u << (u_input.b.x % 32u));
    global0 = array<vec4<f32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 838f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(446f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], var_3))) + -2164f), any(!vec2<bool>(global2.x, false)) || true)), vec4<i32>(-1i, var_1, var_2, var_1), _wgslsmith_add_vec2_i32((vec2<i32>(2147483647i, u_input.c) << ((vec2<u32>(0u, 4294967295u) << (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u))) & vec2<i32>(var_2, firstTrailingBit(var_2)), max(vec2<i32>(-1i, _wgslsmith_div_i32(-2459i, var_1)), vec2<i32>(max(var_1, -2147483647i), 0i))));
}

