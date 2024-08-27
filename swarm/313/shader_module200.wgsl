struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(false, true, true, true, false, false, true, false, false, true, true, true, true, true, true, true, false, false, false);

var<private> global1: array<i32, 23>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: u32) -> bool {
    global1 = array<i32, 23>();
    var var_0 = Struct_3(abs(_wgslsmith_add_u32(1u, 1u)), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(arg_2, u_input.d.x), countOneBits(u_input.d)) >> (abs(u_input.d & vec2<u32>(u_input.d.x, 15323u)) % vec2<u32>(32u)), 725f, true, arg_0.zz), vec3<bool>(!arg_1, arg_1, !arg_0.x), Struct_2(~u_input.d.x, Struct_1(vec2<u32>(min(u_input.d.x, 0u), ~0u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1178f)))), true, !select(arg_0.ww, vec2<bool>(true, false), vec2<bool>(false, true))), reverseBits(~(~u_input.a.zx))), _wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(global1[_wgslsmith_index_u32(1u, 23u)]), reverseBits(~global1[_wgslsmith_index_u32(u_input.d.x, 23u)]), ~(-23998i) << (1u % 32u)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), _wgslsmith_sub_vec3_i32(firstTrailingBit(u_input.a), u_input.a))));
    var var_1 = arg_0;
    let var_2 = var_0.d;
    global1 = array<i32, 23>();
    return false;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = vec2<i32>(4560i, -max(1i, arg_0.x));
    global1 = array<i32, 23>();
    var_0 = u_input.a.zx;
    var_0 = arg_0;
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(1u, ~u_input.d.x), ~u_input.d.x), 1012f, global0[_wgslsmith_index_u32(~(~u_input.d.x | 1u) ^ u_input.d.x, 19u)], select(vec2<bool>(true, true), vec2<bool>(any(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(44490u, 19u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 19u)], false, global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(7447u, 19u)], global0[_wgslsmith_index_u32(u_input.d.x, 19u)]))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, 1u, u_input.d.x)), 4294967295u), 19u)]), select(reverseBits(58230u), _wgslsmith_mult_u32(u_input.d.x, 4294967295u), true) == ~u_input.d.x));
    return Struct_2(var_1.a.x, Struct_1(~vec2<u32>(~50802u, ~var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * -447f)), func_3(!(!vec4<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], false)), all(select(vec4<bool>(false, false, var_1.c, var_1.c), vec4<bool>(true, true, false, false), vec4<bool>(true, var_1.c, global0[_wgslsmith_index_u32(13150u, 19u)], true))), 40752u), var_1.d), vec2<i32>(global1[_wgslsmith_index_u32(~u_input.d.x, 23u)], abs(firstTrailingBit(arg_0.x))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> vec2<i32> {
    var var_0 = arg_1.b.d;
    return vec2<i32>(func_2(firstLeadingBit(abs(arg_1.c >> (u_input.d % vec2<u32>(32u))))).c.x, 0i);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: u32) -> vec4<bool> {
    global0 = array<bool, 19>();
    let var_0 = Struct_2(~28705u, Struct_1(u_input.d, _wgslsmith_f_op_f32(-1739f + _wgslsmith_f_op_f32(select(766f, _wgslsmith_f_op_f32(f32(-1f) * -792f), u_input.d.x >= arg_2))), arg_0.x, !vec2<bool>(1u < arg_2, global0[_wgslsmith_index_u32(abs(4294967295u), 19u)])), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, ~0i), func_4(_wgslsmith_f_op_f32(-393f * 318f), func_2(u_input.a.zz | u_input.a.yz), any(vec2<bool>(false, global0[_wgslsmith_index_u32(51433u, 19u)])) || arg_0.x, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-550f * _wgslsmith_div_f32(-447f, var_0.b.b)))), var_0.b.b));
    var var_2 = func_2(max(-vec2<i32>(-arg_1, countOneBits(1i)), _wgslsmith_add_vec2_i32(max(~u_input.a.zx, ~vec2<i32>(var_0.c.x, var_0.c.x)), firstTrailingBit(~vec2<i32>(-14792i, -1i))))).b;
    let var_3 = Struct_4(var_0.b, select(select(!(!vec4<bool>(false, true, var_0.b.d.x, true)), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_2.a.x, 19u)], arg_0.x, true), vec4<bool>(var_2.c, var_0.b.c, arg_0.x, global0[_wgslsmith_index_u32(0u, 19u)]), arg_0.x), select(vec4<bool>(global0[_wgslsmith_index_u32(83301u, 19u)], true, false, true), vec4<bool>(var_2.c, global0[_wgslsmith_index_u32(arg_2, 19u)], true, false), vec4<bool>(var_2.d.x, arg_0.x, var_2.d.x, false)), !vec4<bool>(arg_0.x, true, true, true)), select(select(vec4<bool>(true, false, false, arg_0.x), vec4<bool>(var_2.d.x, false, true, true), vec4<bool>(var_2.c, true, true, false)), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 19u)], false, false, false), true)), select(vec4<bool>(var_0.b.c, global0[_wgslsmith_index_u32(firstLeadingBit(0u), 19u)], !arg_0.x, 1066f > var_0.b.b), vec4<bool>(1i > var_0.c.x, func_3(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_2, 19u)], var_2.c, global0[_wgslsmith_index_u32(0u, 19u)]), false, u_input.d.x), all(vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 19u)], false, global0[_wgslsmith_index_u32(var_2.a.x, 19u)], false)), any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], arg_0.x, arg_0.x, arg_0.x))), any(!vec4<bool>(var_2.c, var_0.b.c, global0[_wgslsmith_index_u32(arg_2, 19u)], false))), var_2.c), var_0, arg_2 <= ~var_2.a.x, Struct_1(vec2<u32>(var_0.b.a.x, 4294967295u), _wgslsmith_f_op_f32(ceil(var_2.b)), true, var_2.d));
    return select(var_3.b, select(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(5822u, ~var_3.e.a.x), 19u)], var_2.c, var_2.c, var_0.b.c), vec4<bool>(func_3(var_3.b, var_0.b.d.x, 1u), all(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(var_2.a.x, 19u)], true), vec3<bool>(arg_0.x, false, global0[_wgslsmith_index_u32(39323u, 19u)]), arg_0)), var_0.b.c, false), all(var_2.d) != !(var_3.e.d.x || var_0.b.d.x)), !(!vec4<bool>(var_3.c.b.d.x, arg_0.x, false, any(vec3<bool>(arg_0.x, true, true)))));
}

fn func_5(arg_0: vec4<bool>) -> i32 {
    var var_0 = Struct_1(vec2<u32>(54216u, u_input.d.x ^ 78038u), -605f, true, select(select(vec2<bool>(any(arg_0.xwz), true), func_1(arg_0.xwy, -u_input.b, countOneBits(u_input.d.x)).xy, func_3(vec4<bool>(false, true, arg_0.x, arg_0.x), !global0[_wgslsmith_index_u32(28598u, 19u)], u_input.d.x)), func_2(u_input.a.yy).b.d, global0[_wgslsmith_index_u32(abs(u_input.d.x), 19u)]));
    let var_1 = max(1u, u_input.d.x) < (30764u & var_0.a.x);
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 19>();
    let var_0 = reverseBits(u_input.a);
    global0 = array<bool, 19>();
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 19u)];
    global1 = array<i32, 23>();
    global0 = array<bool, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(func_5(!func_1(vec3<bool>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(94071u, 19u)], global0[_wgslsmith_index_u32(u_input.d.x, 19u)]), var_0.x, 24092u))), _wgslsmith_sub_vec4_i32(vec4<i32>(~_wgslsmith_mult_i32(var_0.x, 0i), 1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, u_input.b, 3828i), var_0), -1i), ~min(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b, 1i, 1i), vec4<i32>(var_0.x, u_input.b, global1[_wgslsmith_index_u32(u_input.d.x, 23u)], global1[_wgslsmith_index_u32(u_input.d.x, 23u)])), -vec4<i32>(1i, 1i, 42507i, global1[_wgslsmith_index_u32(u_input.d.x, 23u)]))));
}

