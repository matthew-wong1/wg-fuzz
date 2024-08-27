struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(-1i), vec2<i32>(-1i, -8902i), Struct_1(-27012i)), Struct_2(Struct_1(981i), vec2<i32>(0i, 17257i), Struct_1(-73933i)), Struct_2(Struct_1(12162i), vec2<i32>(i32(-2147483648), 24330i), Struct_1(i32(-2147483648))), Struct_2(Struct_1(2147483647i), vec2<i32>(59995i, 5460i), Struct_1(2147483647i)), Struct_2(Struct_1(i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)), Struct_1(i32(-2147483648))), Struct_2(Struct_1(-9440i), vec2<i32>(-1i, 23090i), Struct_1(33548i)), Struct_2(Struct_1(-203i), vec2<i32>(10692i, -18389i), Struct_1(2147483647i)), Struct_2(Struct_1(1i), vec2<i32>(25599i, 39571i), Struct_1(1i)), Struct_2(Struct_1(-67417i), vec2<i32>(-8833i, 32140i), Struct_1(-10820i)), Struct_2(Struct_1(i32(-2147483648)), vec2<i32>(8605i, 2147483647i), Struct_1(-28578i)), Struct_2(Struct_1(2147483647i), vec2<i32>(1i, i32(-2147483648)), Struct_1(1i)), Struct_2(Struct_1(-15135i), vec2<i32>(-40604i, -30253i), Struct_1(5018i)), Struct_2(Struct_1(i32(-2147483648)), vec2<i32>(-14971i, 18160i), Struct_1(-1i)), Struct_2(Struct_1(20i), vec2<i32>(2147483647i, 1i), Struct_1(54092i)), Struct_2(Struct_1(16267i), vec2<i32>(2147483647i, 1968i), Struct_1(989i)), Struct_2(Struct_1(i32(-2147483648)), vec2<i32>(2147483647i, -1i), Struct_1(-1i)), Struct_2(Struct_1(27754i), vec2<i32>(i32(-2147483648), -26368i), Struct_1(-1701i)), Struct_2(Struct_1(1i), vec2<i32>(-10528i, 16363i), Struct_1(1i)), Struct_2(Struct_1(i32(-2147483648)), vec2<i32>(-51616i, -1i), Struct_1(i32(-2147483648))));

var<private> global2: array<i32, 3> = array<i32, 3>(2147483647i, 0i, -1i);

var<private> global3: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> i32 {
    global3 = true;
    var var_0 = vec3<bool>(!all(vec2<bool>(true, true)), true, true);
    global1 = array<Struct_2, 19>();
    var var_1 = 4294967295u;
    global1 = array<Struct_2, 19>();
    return u_input.c;
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = u_input.d;
    var var_1 = u_input.d >= 4294967295u;
    var var_2 = ~vec3<u32>(var_0, 64980u, ~u_input.d);
    global0 = arg_1.a;
    global3 = false;
    return !select(select(vec4<bool>(true, all(vec3<bool>(arg_0, arg_0, arg_0)), false, global0.a > global2[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<bool>(false, true, any(vec4<bool>(false, true, false, arg_0)), any(vec3<bool>(false, true, arg_0))), select(select(vec4<bool>(arg_0, true, true, true), vec4<bool>(arg_0, arg_0, false, false), arg_0), !vec4<bool>(true, true, arg_0, false), !vec4<bool>(arg_0, arg_0, arg_0, true))), !select(!vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, true, false, true), global2[_wgslsmith_index_u32(36233u, 3u)] > 5873i), select(!(!vec4<bool>(arg_0, true, arg_0, arg_0)), vec4<bool>(arg_0, arg_0, true, !arg_0), true));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: Struct_3) -> i32 {
    let var_0 = any(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true))), select(func_3(true, arg_0), vec4<bool>(true, any(vec3<bool>(false, false, true)), any(vec4<bool>(true, false, true, false)), arg_3.a >= 762f), func_3(true, global1[_wgslsmith_index_u32(u_input.d, 19u)]).x || false), true));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_add_i32(~arg_0.c.a, global0.a), firstTrailingBit(_wgslsmith_sub_i32(reverseBits(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.d, 3u)])), arg_1)));
    global3 = var_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_3.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_3.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_3.a)), _wgslsmith_f_op_f32(sign(544f))))), 1246f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(264f)), -1313f))));
    let var_3 = vec4<i32>(arg_2, 0i, global0.a, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(max(vec3<i32>(20745i, -6210i, global2[_wgslsmith_index_u32(1u, 3u)]), u_input.b), vec3<i32>(arg_2 & -2147483647i, 2147483647i, arg_0.a.a & -63059i)), countOneBits(-u_input.b)));
    return max(26250i, -21485i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 303f;
    global2 = array<i32, 3>();
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(33901i, global0.a), -2147483647i, _wgslsmith_mod_i32(i32(-1i) * -618i, ~max(func_1(), func_2(global1[_wgslsmith_index_u32(4294967295u, 19u)], 1i, u_input.b.x, Struct_3(1000f)))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -532f) * -411f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, 2086f))))));
    var_2 = Struct_3(var_2.a);
    global3 = any(vec3<bool>(!(u_input.d < 1u) & any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), true, true));
    global3 = false;
    var var_3 = -2175i << (~u_input.d % 32u);
    var var_4 = ~_wgslsmith_sub_vec2_u32(~(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(1u, 1300u)) | vec2<u32>(u_input.d, 6781u)), _wgslsmith_add_vec2_u32(select(~vec2<u32>(0u, u_input.d), vec2<u32>(1u, u_input.d), true), ~vec2<u32>(1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-523f, -855f))), _wgslsmith_f_op_f32(-1287f + var_2.a))), var_0, var_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-134f - var_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1587f) + _wgslsmith_f_op_f32(f32(-1f) * -427f)), true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1632f - _wgslsmith_f_op_f32(1528f - var_0))), -949f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_2.a) - _wgslsmith_f_op_f32(-1615f + -511f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1125f)))));
}

