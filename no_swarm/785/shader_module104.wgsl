struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: array<vec4<u32>, 27>;

var<private> global2: bool = false;

var<private> global3: array<bool, 2>;

var<private> global4: array<vec2<i32>, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    global1 = array<vec4<u32>, 27>();
    let var_0 = Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1197f * -319f))), _wgslsmith_f_op_f32(685f + -223f)), _wgslsmith_add_vec2_u32(vec2<u32>(~(10130u ^ u_input.b), 1u), vec2<u32>(countOneBits(u_input.b ^ u_input.b), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 8580u, 24440u), global1[_wgslsmith_index_u32(u_input.b, 27u)]), global1[_wgslsmith_index_u32(4294967295u, 27u)]))));
    let var_1 = abs(~u_input.b);
    let var_2 = vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 2u)], true, any(global0.yxw));
    global4 = array<vec2<i32>, 4>();
    return true;
}

fn func_2(arg_0: vec2<i32>) -> bool {
    global3 = array<bool, 2>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.b, 2u)];
    global2 = func_3();
    let var_1 = vec4<i32>(24256i, abs(-firstLeadingBit(arg_0.x)), arg_0.x, abs(-max(~(-59461i), _wgslsmith_sub_i32(arg_0.x, -1i))));
    let var_2 = _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_sub_i32(-1i >> (reverseBits(u_input.b) % 32u), 33955i)), min(_wgslsmith_add_i32(u_input.a, ~u_input.c) ^ -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0.x, var_1.x), var_1.yww), -(~_wgslsmith_div_i32(var_1.x, arg_0.x))));
    return func_3();
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    global1 = array<vec4<u32>, 27>();
    global2 = false && func_2(_wgslsmith_sub_vec2_i32(global4[_wgslsmith_index_u32(u_input.b, 4u)], abs(vec2<i32>(u_input.c, arg_1.x))));
    global3 = array<bool, 2>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-238f)), 877f))));
    let var_1 = var_0.x;
    return ~1u | _wgslsmith_add_u32(~arg_2.b.x, u_input.b);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: i32) -> Struct_1 {
    global4 = array<vec2<i32>, 4>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(589f - arg_1), arg_1, _wgslsmith_f_op_f32(step(arg_1, -417f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, -546f, arg_1)))))), abs(~vec2<u32>(1u, 4294967295u)));
    let var_1 = arg_1;
    var var_2 = var_0.a;
    var var_3 = 9802u;
    return Struct_1(var_0.a, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_sub_u32(u_input.b, func_1(Struct_1(vec3<f32>(-1452f, 1599f, 775f), vec2<u32>(u_input.b, 4294967295u)), global4[_wgslsmith_index_u32(~1u, 4u)], Struct_1(vec3<f32>(-1747f, -677f, 100f), vec2<u32>(0u, 32694u)))) | max(33955u, ~(~u_input.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -662f)) + _wgslsmith_f_op_f32(-311f - -217f)), 1893f)), ~u_input.c & -max(i32(-1i) * -1i, -1i));
    var var_1 = vec4<u32>(var_0.b.x, 24960u, ~max(1u, ~0u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b & u_input.b, u_input.b, ~u_input.b, func_4(16248u, -166f, u_input.c).b.x), abs(firstLeadingBit(global1[_wgslsmith_index_u32(1u, 27u)]))), vec4<u32>(u_input.b, func_4(0u, var_0.a.x, -650i).b.x, var_0.b.x, ~(~16863u))));
    var var_2 = _wgslsmith_add_vec3_i32(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -58550i, u_input.a), vec3<i32>(-1i, -1i, u_input.c))) << ((~select(var_1.wwy, vec3<u32>(84903u, 53400u, 0u), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(59755u, 2u)], global3[_wgslsmith_index_u32(1u, 2u)])) & var_1.zww) % vec3<u32>(32u)), countOneBits(vec3<i32>(~u_input.a, -2147483647i, 40157i >> (u_input.b % 32u))) & select(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, 1i, 2147483647i), vec3<i32>(u_input.c, -1i, u_input.a)), vec3<i32>(1i, 65057i, -1i) ^ -vec3<i32>(u_input.c, 1i, u_input.a), !select(global0.wzy, vec3<bool>(global3[_wgslsmith_index_u32(var_0.b.x, 2u)], true, global0.x), global0.zxy)));
    global0 = select(select(vec4<bool>(true, false, _wgslsmith_f_op_f32(var_0.a.x - -289f) >= var_0.a.x, true), select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], global0.x, global0.x, global3[_wgslsmith_index_u32(25856u, 2u)]), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global3[_wgslsmith_index_u32(var_1.x, 2u)])), !vec4<bool>(false, global0.x, global0.x, true), true), select(!vec4<bool>(global3[_wgslsmith_index_u32(var_1.x, 2u)], false, true, global3[_wgslsmith_index_u32(1u, 2u)]), !vec4<bool>(global3[_wgslsmith_index_u32(var_0.b.x, 2u)], false, false, global0.x), true), global3[_wgslsmith_index_u32(u_input.b, 2u)]), all(!vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(var_1.x, 2u)]))), select(select(select(select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(global3[_wgslsmith_index_u32(var_0.b.x, 2u)], false, global0.x, global3[_wgslsmith_index_u32(0u, 2u)]), true), vec4<bool>(global3[_wgslsmith_index_u32(34729u, 2u)], false, global0.x, false), select(vec4<bool>(false, false, false, global0.x), vec4<bool>(global0.x, global0.x, global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(global0.x, global3[_wgslsmith_index_u32(11112u, 2u)], false, global0.x))), !select(vec4<bool>(false, global0.x, false, global3[_wgslsmith_index_u32(var_1.x, 2u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(var_1.x, 2u)], global3[_wgslsmith_index_u32(1u, 2u)], global0.x), vec4<bool>(false, global0.x, global3[_wgslsmith_index_u32(0u, 2u)], false)), func_3()), !select(select(vec4<bool>(true, false, global0.x, global3[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(global0.x, global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(var_1.x, 2u)], global3[_wgslsmith_index_u32(u_input.b, 2u)]), false), !vec4<bool>(global0.x, true, true, false), !global0.x), vec4<bool>(false, !(!global0.x), false, false)), !vec4<bool>(false, !global3[_wgslsmith_index_u32(var_0.b.x, 2u)], _wgslsmith_f_op_f32(f32(-1f) * -1458f) != _wgslsmith_f_op_f32(ceil(var_0.a.x)), func_2(var_2.yy)));
    let var_3 = _wgslsmith_mult_i32(u_input.c, 2147483647i) | 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x);
}

