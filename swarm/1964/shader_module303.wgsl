struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(i32(-2147483648), 23485i);

var<private> global1: Struct_2;

var<private> global2: array<bool, 22> = array<bool, 22>(true, true, false, false, false, false, true, true, false, false, true, false, true, false, true, true, false, true, false, true, true, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> u32 {
    global0 = array<i32, 2>();
    global1 = Struct_2(821u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1435f * global1.b.x), _wgslsmith_f_op_f32(exp2(global1.b.x)), -590f, -1029f)))));
    global0 = array<i32, 2>();
    var var_0 = Struct_1(true);
    global0 = array<i32, 2>();
    return u_input.a.x;
}

fn func_2() -> Struct_3 {
    global1 = Struct_2(9198u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(119f, global1.b.x, global1.b.x, -699f) * global1.b)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b - vec4<f32>(global1.b.x, 281f, global1.b.x, global1.b.x)) * _wgslsmith_f_op_vec4_f32(-global1.b))))));
    let var_0 = global1.b.x;
    global0 = array<i32, 2>();
    let var_1 = 1481f;
    let var_2 = _wgslsmith_sub_i32(-14456i >> (func_3() % 32u), 0i);
    return Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(~global1.a, 1u), _wgslsmith_mod_u32(global1.a >> (4294967295u % 32u), 2043u), _wgslsmith_mod_u32(select(u_input.a.x, 1u, global2[_wgslsmith_index_u32(45672u, 22u)]), u_input.a.x << (109422u % 32u))), ~(~vec4<u32>(global1.a, u_input.c.x, 40868u, global1.a))), Struct_2(_wgslsmith_sub_u32(firstLeadingBit(~u_input.a.x), firstTrailingBit(~global1.a)), _wgslsmith_f_op_vec4_f32(global1.b + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -1233f, global1.b.x, global1.b.x)))), Struct_1(0u >= global1.a));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_3 {
    global1 = Struct_2(49369u, arg_3.b);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_3.b.x) + _wgslsmith_f_op_f32(-442f * arg_3.b.x))) * arg_1));
    let var_1 = ((_wgslsmith_add_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(arg_3.a, 2u)], -1i, -25457i), vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(0u, 2u)], 1i) ^ u_input.e) ^ u_input.e) >> (firstTrailingBit(~(~u_input.a)) % vec3<u32>(32u))) & abs(vec3<i32>(global0[_wgslsmith_index_u32(arg_3.a, 2u)], -(i32(-1i) * -37948i), u_input.e.x));
    let var_2 = arg_0;
    global0 = array<i32, 2>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(any(!(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(global1.a, 22u)])))), _wgslsmith_div_f32(1415f, _wgslsmith_f_op_f32(-global1.b.x)), select(vec2<bool>(!(global2[_wgslsmith_index_u32(global1.a, 22u)] & global2[_wgslsmith_index_u32(0u, 22u)]), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(select(u_input.a.x, 1u, true), ~0u), 22u)]), select(!vec2<bool>(global2[_wgslsmith_index_u32(global1.a, 22u)], true), vec2<bool>(!global2[_wgslsmith_index_u32(u_input.a.x, 22u)], select(true, false, global2[_wgslsmith_index_u32(0u, 22u)])), vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 22u)] & true)), !(!(-2147483647i > u_input.e.x))), Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, countOneBits(global1.a), global1.a ^ 9073u), firstLeadingBit(u_input.a)), vec4<f32>(1054f, -568f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -507f)), global1.b.x)));
    var var_1 = global1.b.x;
    var var_2 = reverseBits(_wgslsmith_mult_vec2_i32(max(u_input.b.zw, vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(global1.a, 2u)])), _wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(global1.a, 2u)], -11666i), u_input.e.yx)) & u_input.b.wx) & -vec2<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-31479i, global0[_wgslsmith_index_u32(0u, 2u)], 13727i)), u_input.b.zwz), -2147483647i);
    let var_3 = var_0.c;
    var_2 = vec2<i32>(-1i) * -abs(_wgslsmith_div_vec2_i32(u_input.e.xz, _wgslsmith_div_vec2_i32(u_input.b.zy, u_input.e.xy)));
    let var_4 = Struct_2(global1.a, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b.x))))), 1215f, global1.b.x, _wgslsmith_f_op_f32(-var_0.b.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(1u), ~u_input.c, vec4<i32>(firstTrailingBit(countOneBits(var_2.x ^ 2147483647i)), -1i, 1i, u_input.e.x));
}

