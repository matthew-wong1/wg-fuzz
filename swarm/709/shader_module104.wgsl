struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(2147483647i, 38616i, i32(-2147483648), 42221i, 0i, -1i, 1i, 9012i, -28556i, -14014i, -1810i, 2147483647i, 2147483647i, 34356i, 1i, 55516i, 1i, 1i, 1i, -38436i, 0i, -738i, 0i, -18012i, -1i, 1i, 1i, i32(-2147483648), 1i, i32(-2147483648), 1i, 1i);

var<private> global1: array<u32, 29> = array<u32, 29>(22443u, 1u, 71739u, 1u, 1u, 0u, 4294967295u, 4294967295u, 1u, 4294967295u, 72891u, 32311u, 1u, 44297u, 0u, 37114u, 10827u, 4294967295u, 34535u, 1u, 20551u, 0u, 26762u, 1u, 13820u, 6010u, 4294967295u, 3261u, 16808u);

var<private> global2: Struct_1 = Struct_1(33283u, false, 795f, -32412i);

var<private> global3: array<u32, 2>;

var<private> global4: u32 = 46220u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2233f, 376f, global2.c)) * vec3<f32>(-305f, 715f, global2.c))))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    global0 = array<i32, 32>();
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(arg_1.a, u_input.b), 58468u), select(min(vec2<u32>(4294967295u, u_input.b), vec2<u32>(global3[_wgslsmith_index_u32(66194u, 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55015u, 29u)], 29u)])), ~vec2<u32>(0u, arg_1.a), vec2<bool>(true, true)) ^ countOneBits(select(vec2<u32>(0u, 45454u), vec2<u32>(global2.a, 33442u), vec2<bool>(true, true)))), true, -712f, firstTrailingBit(global2.d));
    var var_1 = -1115f;
    var var_2 = var_0;
    let var_3 = var_0;
    return !arg_1.b;
}

fn func_1(arg_0: bool) -> vec4<u32> {
    global1 = array<u32, 29>();
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(505f - -1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.c, global2.c, 1000f), vec3<f32>(global2.c, global2.c, global2.c))))))));
    var var_1 = Struct_1(1194u, any(!vec3<bool>(func_3(false, Struct_1(4294967295u, global2.b, -224f, u_input.a)), 0u <= global1[_wgslsmith_index_u32(4294967295u, 29u)], global2.d <= -2147483647i)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c)) + -533f)), 31151i);
    var var_2 = vec3<u32>(~_wgslsmith_clamp_u32(88509u, 13058u, u_input.b), 14730u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(global2.a, 73069u) | _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(global3[_wgslsmith_index_u32(0u, 2u)], u_input.b), true), _wgslsmith_sub_vec2_u32(vec2<u32>(50162u, 18163u), vec2<u32>(var_1.a, 0u)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.c - -242f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -836f) * _wgslsmith_div_f32(var_0.x, -122f)))), var_0.x) * var_0);
    return ~(_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global2.a, u_input.b, 1u, var_1.a), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 2u)], 2u)], global3[_wgslsmith_index_u32(0u, 2u)], global2.a, 46847u)), firstTrailingBit(abs(vec4<u32>(var_2.x, 52997u, var_1.a, 56762u)))) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(~global2.a, global3[_wgslsmith_index_u32(var_2.x >> (global2.a % 32u), 2u)], ~global3[_wgslsmith_index_u32(u_input.b, 2u)], countOneBits(global3[_wgslsmith_index_u32(u_input.b, 2u)])), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4291u, 1u), vec2<u32>(u_input.b, 0u)), _wgslsmith_sub_u32(var_1.a, 0u), 45335u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_vec4_u32(func_1(all(!vec2<bool>(global2.b, true))), ~max(~vec4<u32>(1u, u_input.b, global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(36982u, 2u)]), vec4<u32>(0u, u_input.b, global3[_wgslsmith_index_u32(global2.a, 2u)], 4294967295u)));
    var var_1 = min(abs(~vec2<i32>(global0[_wgslsmith_index_u32(1u, 32u)], -1i)), abs(vec2<i32>(52876i, reverseBits(_wgslsmith_add_i32(6896i, -2147483647i)))));
    let var_2 = 975f;
    let var_3 = Struct_1(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 29u)], 29u)], global2.b, _wgslsmith_div_f32(-656f, global2.c), _wgslsmith_clamp_i32(2147483647i, 44942i >> (1u % 32u), u_input.a));
    global1 = array<u32, 29>();
    let var_4 = 2147483647i;
    var var_5 = var_3;
    var var_6 = ~38678u;
    global0 = array<i32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, firstTrailingBit(0u) & ~4294967295u, ~(4294967295u | global1[_wgslsmith_index_u32(global2.a, 29u)]), 4294967295u));
}

