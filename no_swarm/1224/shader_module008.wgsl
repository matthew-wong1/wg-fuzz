struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: Struct_3;

var<private> global2: array<bool, 18>;

var<private> global3: Struct_4;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>) -> Struct_3 {
    global2 = array<bool, 18>();
    var var_0 = vec3<i32>(-1i) * -(~(-global3.c.a & (vec3<i32>(u_input.b, -2147483647i, 1i) << (vec3<u32>(global1.a.x, 1u, 1u) % vec3<u32>(32u)))));
    var_0 = _wgslsmith_mod_vec3_i32(global3.c.a, reverseBits(-(~vec3<i32>(u_input.b, 2147483647i, global3.a.c.a.x))) << (vec3<u32>(47217u, select(~global1.a.x, ~1u, global0.x), 36963u) % vec3<u32>(32u)));
    let var_1 = !arg_0.zx;
    var_0 = vec3<i32>(firstTrailingBit(select(-1i, _wgslsmith_mod_i32(1i, global3.c.a.x), any(select(arg_0, vec4<bool>(arg_0.x, false, true, global3.a.d), global2[_wgslsmith_index_u32(global1.a.x, 18u)])))), _wgslsmith_mult_i32(2147483647i, u_input.b & _wgslsmith_sub_i32(global1.c.a.x, ~(-1i))), -19436i << ((~_wgslsmith_sub_u32(u_input.a.x, arg_1.x) ^ u_input.c.x) % 32u));
    return global3.a;
}

fn func_3() -> vec4<bool> {
    let var_0 = func_1(!select(select(!vec4<bool>(false, global0.x, global1.d, global1.d), !vec4<bool>(global0.x, false, global0.x, global3.a.d), !vec4<bool>(true, global2[_wgslsmith_index_u32(global1.a.x, 18u)], global0.x, false)), vec4<bool>(true, !global1.d, any(vec3<bool>(true, global3.a.d, true)), true), !global0.x), abs(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(39830u, 1u), vec2<u32>(0u, 2395u)), _wgslsmith_sub_u32(global3.a.a.x, global1.a.x), ~(global3.a.a.x | 0u), 0u)));
    global2 = array<bool, 18>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -834f), var_0.c.b.x);
    global3 = Struct_4(func_1(!select(vec4<bool>(true, false, false, global3.a.d), !vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(3187u, 18u)]), true), max(vec4<u32>(~global1.a.x, global3.a.a.x, ~0u, var_0.a.x), u_input.a)), abs(vec3<i32>(var_0.c.a.x, global3.c.a.x, ~select(30995i, var_0.c.a.x, var_0.d))), Struct_1(reverseBits(vec3<i32>(-1i, min(-862i, global1.c.a.x), global1.c.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.c.c.wxw)), global1.c.b), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, -1248f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.b - -531f)), var_1.x, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_2 = !(!(!(!select(vec4<bool>(true, var_0.d, false, global1.d), vec4<bool>(true, true, global3.a.d, global1.d), vec4<bool>(true, global3.a.d, false, global0.x)))));
    return vec4<bool>(global1.d, select(!(!all(var_2.wzw)), false, true), global1.d, any(var_2.yy));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    let var_0 = arg_0.x;
    let var_1 = !select(vec4<bool>(true, global0.x, global1.c.c.x <= 446f, select(-904f < global3.a.b, !global3.a.d, global1.d && true)), vec4<bool>(true, true || global0.x, func_1(func_3(), vec4<u32>(0u, arg_0.x, global1.a.x, global3.a.a.x)).d, true && (u_input.c.x <= 46843u)), vec4<bool>(true, false, true, !global2[_wgslsmith_index_u32(max(global3.a.a.x, 55796u), 18u)]));
    global1 = func_1(select(vec4<bool>(true, any(vec4<bool>(false, true, true, var_1.x)), global3.a.d, !all(vec4<bool>(var_1.x, true, true, true))), var_1, vec4<bool>(false, _wgslsmith_f_op_f32(global3.a.b - 653f) <= global1.c.b.x, func_1(!var_1, u_input.a).d, true)), u_input.a);
    let var_2 = Struct_2(vec4<i32>(-2147483647i, reverseBits(-2147483647i), select(33577i, -2147483647i, 0i == select(global1.c.a.x, 9309i, true)), u_input.b), 10817u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(226f * _wgslsmith_f_op_f32(665f * global1.c.b.x)) + 340f)));
    global2 = array<bool, 18>();
    return 537f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 18>();
    global1 = func_1(vec4<bool>(global3.a.d, global1.d, any(select(vec3<bool>(false, global2[_wgslsmith_index_u32(5840u, 18u)], global1.d), select(vec3<bool>(global0.x, true, global2[_wgslsmith_index_u32(1u, 18u)]), vec3<bool>(true, global3.a.d, true), vec3<bool>(false, global0.x, global1.d)), all(vec2<bool>(global3.a.d, true)))), false), vec4<u32>(global3.a.a.x, 51662u, global1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.a.x, global3.a.a.x, 24404u), abs(vec4<u32>(72026u, 4294967295u, u_input.c.x, 1u))) & _wgslsmith_sub_u32(u_input.c.x & u_input.a.x, u_input.a.x)));
    let var_0 = select(vec4<bool>(global1.d, true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, global3.a.a.x), 0u), 18u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1434f * global3.a.b) * global3.a.b) > _wgslsmith_f_op_f32(func_2(vec2<u32>(global1.a.x, 6654u)))), vec4<bool>(global0.x, false, all(!select(vec2<bool>(global2[_wgslsmith_index_u32(global3.a.a.x, 18u)], global2[_wgslsmith_index_u32(global3.a.a.x, 18u)]), vec2<bool>(true, true), vec2<bool>(global0.x, global3.a.d))), false), !(!select(vec4<bool>(global0.x, global3.a.d, global3.a.d, global1.d), !vec4<bool>(global0.x, global2[_wgslsmith_index_u32(40288u, 18u)], global1.d, false), select(vec4<bool>(true, global2[_wgslsmith_index_u32(global1.a.x, 18u)], global1.d, global3.a.d), vec4<bool>(true, global1.d, global1.d, global2[_wgslsmith_index_u32(4294967295u, 18u)]), global0.x))));
    var var_1 = select(~_wgslsmith_add_i32(global3.b.x, _wgslsmith_dot_vec3_i32(global1.c.a, vec3<i32>(19057i, global1.c.a.x, 0i))) > _wgslsmith_dot_vec3_i32(select(vec3<i32>(global3.a.c.a.x, global3.b.x, -1i), reverseBits(vec3<i32>(global3.a.c.a.x, u_input.b, -31289i)), true), vec3<i32>(~global3.a.c.a.x, _wgslsmith_mod_i32(u_input.b, 2147483647i), u_input.b)), true, true);
    var var_2 = ~select(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.a.a.x, 28560u), vec2<u32>(21605u, u_input.a.x))), 0u, global3.a.d);
    var var_3 = reverseBits(i32(-1i) * -94186i);
    var var_4 = var_0.xxz;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(max(26282u, ~global3.a.a.x)), -1278f, vec3<u32>(global3.a.a.x, ~1u, abs(~u_input.c.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-451f, 368f, _wgslsmith_f_op_f32(-1511f + -1362f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global3.a.c.c.zxz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.b, global3.c.c.x)), var_0.xxy)), any(select(vec2<bool>(var_0.x, false), !var_4.xz, !vec2<bool>(var_4.x, global2[_wgslsmith_index_u32(global3.a.a.x, 18u)]))))), func_1(vec4<bool>(true, all(!var_0), var_4.x, false), vec4<u32>(u_input.a.x, ~global3.a.a.x ^ ~u_input.c.x, global3.a.a.x, firstLeadingBit(~u_input.a.x))).c.a.x);
}

