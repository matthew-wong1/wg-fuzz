struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
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

var<private> global0: array<vec4<i32>, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    var var_0 = Struct_2(u_input.a, Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(select(true, true, true), !(19640i != u_input.b), true, true)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -u_input.b, 1i), -u_input.c) ^ u_input.c, u_input.b);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-529f + _wgslsmith_f_op_f32(max(-1770f, -231f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1304f)));
    var var_2 = var_1.x;
    var var_3 = var_0.c;
    var var_4 = vec4<bool>(!(!var_0.b.a.x), all(vec3<bool>(true, true, all(var_0.b.a))), true | (_wgslsmith_f_op_f32(-var_1.x) < var_1.x), var_0.b.a.x);
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = countOneBits(max(vec4<i32>(-_wgslsmith_sub_i32(32395i, 66906i), -1i, u_input.b, _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c.x, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -58502i, -25009i), u_input.c))), ~_wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(u_input.a, 10u)] >> (vec4<u32>(u_input.a, u_input.a, 59671u, u_input.a) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(1u, 10u)])));
    var var_1 = -38571i;
    var_1 = -27469i;
    var var_2 = -2147483647i;
    var var_3 = Struct_2(4294967295u, Struct_1(!vec4<bool>(select(true, false, true), false, func_3(), true)), Struct_1(vec4<bool>(u_input.c.x == -var_0.x, select(true, false, true), true, _wgslsmith_sub_i32(var_0.x, 0i) < u_input.c.x)), u_input.c, firstTrailingBit(var_0.x));
    return Struct_1(select(var_3.b.a, vec4<bool>(false || var_3.b.a.x, (var_3.a << (0u % 32u)) != select(var_3.a, u_input.a, true), var_3.c.a.x, true), var_3.c.a.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: u32, arg_3: vec4<bool>) -> bool {
    let var_0 = func_2();
    global0 = array<vec4<i32>, 10>();
    global0 = array<vec4<i32>, 10>();
    let var_1 = -(~u_input.b);
    global0 = array<vec4<i32>, 10>();
    return !arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_mult_u32(~_wgslsmith_div_u32(_wgslsmith_div_u32(24484u, 22147u), ~5816u), ~(~(~u_input.a))), Struct_1(vec4<bool>(select(u_input.a != u_input.a, true, true), true, !func_1(vec3<u32>(18063u, 36557u, 0u), 4294967295u, u_input.a, vec4<bool>(false, false, false, false)), true)), Struct_1(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), select(func_2().a, vec4<bool>(true, true, true, true), func_1(vec3<u32>(u_input.a, 36063u, u_input.a), u_input.a, u_input.a, vec4<bool>(true, true, false, false))))), vec3<i32>(~833i, u_input.c.x, _wgslsmith_dot_vec4_i32(-(global0[_wgslsmith_index_u32(u_input.a, 10u)] & global0[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(25131u, 10u)]) ^ abs(global0[_wgslsmith_index_u32(u_input.a, 10u)]))), 0i);
    let var_1 = countOneBits(35775i);
    let var_2 = true;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1076f, 1272f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(588f, 266f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-107f + -345f)))));
    global0 = array<vec4<i32>, 10>();
    let var_4 = func_2().a.wz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1287f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1103f)))));
}

