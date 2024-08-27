struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, false, false, false, false, true, false, false, true, true, true, false, false, true, false, true, false, true, false, true, true, true, true, true, false);

var<private> global1: f32 = 248f;

var<private> global2: Struct_3;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<f32> {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(592f - -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1359f)))))) * _wgslsmith_f_op_f32(min(1353f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1667f), _wgslsmith_f_op_f32(floor(1508f)), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], true, true)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    global0 = array<bool, 25>();
    global1 = _wgslsmith_f_op_f32(trunc(-290f));
    global2 = Struct_3(_wgslsmith_dot_vec3_i32(firstTrailingBit(-vec3<i32>(arg_0.a, arg_0.a, arg_2.a)), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(-1i, 22050i, arg_2.a)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 17700i, arg_3.x), vec3<i32>(global2.b.x, 36336i, 2147483647i), vec3<i32>(arg_2.a, arg_0.a, -16475i)), vec3<i32>(-5131i, global2.a, global2.b.x)))), min(arg_3, arg_3), arg_2.a);
    let var_0 = Struct_2(Struct_1(-1i | global2.a), u_input.a.x, vec3<u32>(_wgslsmith_mod_u32(~(arg_1 & u_input.a.x), _wgslsmith_dot_vec2_u32(~u_input.a.zy, ~u_input.a.yw)), 0u, ~1u ^ (countOneBits(21875u) ^ (36850u >> (u_input.b.x % 32u)))), Struct_1(1i));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1538f)), -1406f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -281f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1390f + -762f)))))));
}

fn func_2(arg_0: f32) -> f32 {
    global2 = Struct_3(_wgslsmith_add_i32(global2.c, -min(-21053i, _wgslsmith_mult_i32(27073i, -1i))), global2.b, 21193i);
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-949f, 330f, 359f))))), vec3<f32>(-314f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(sign(-1644f)))), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(global2.c), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b.x, reverseBits(31881u), 33824u), ~u_input.a.xww), Struct_1(-74557i), global2.b))));
    global2 = Struct_3(~_wgslsmith_dot_vec3_i32(max(-vec3<i32>(global2.b.x, 7168i, 1i), vec3<i32>(0i, global2.b.x, -19728i)), select(~vec3<i32>(11815i, global2.a, 15391i), ~vec3<i32>(-17065i, global2.c, global2.b.x), u_input.b.x != u_input.b.x)), ~global2.b, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(2147483647i, 2147483647i, global2.a), vec3<i32>(global2.b.x, 1i, global2.b.x), global0[_wgslsmith_index_u32(87258u, 25u)]) << (vec3<u32>(51719u, u_input.b.x, u_input.a.x) % vec3<u32>(32u)), ~select(vec3<i32>(2147483647i, -1i, -2147483647i), vec3<i32>(global2.c, global2.b.x, global2.c), global0[_wgslsmith_index_u32(64333u, 25u)])), vec3<i32>(6650i, -1i, -11419i)));
    var var_1 = reverseBits(37868i);
    global1 = var_0.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(min(arg_0, -1133f))) + -466f) + var_0.x) - arg_0);
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> i32 {
    var var_0 = ~(~_wgslsmith_sub_vec4_u32(~u_input.a, ~abs(u_input.a)));
    var var_1 = ~71736u;
    let var_2 = arg_3.b;
    var var_3 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(1000f, 768f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(890f, 570f, any(vec4<bool>(arg_2, false, arg_2, false)))) * _wgslsmith_f_op_f32(ceil(-1924f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1917f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(1209f)), -691f))))));
    var var_4 = !(!select(select(vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 25u)]), arg_2), !(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)])), vec2<bool>(global0[_wgslsmith_index_u32(652u, 25u)], !arg_2)));
    return select(0i << (firstLeadingBit(var_0.x) % 32u), max(-71909i, 24522i), all(select(select(vec3<bool>(global0[_wgslsmith_index_u32(2554u, 25u)], var_4.x, arg_2), vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 25u)], true, global0[_wgslsmith_index_u32(arg_0.x, 25u)]), true), vec3<bool>(true, true, true), select(vec3<bool>(global0[_wgslsmith_index_u32(111726u, 25u)], arg_2, arg_2), vec3<bool>(false, true, var_4.x), true))) && false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 25>();
    var var_0 = abs(~_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(global2.c, 0i, global2.b.x, global2.c), vec4<i32>(global2.c, global2.b.x, 2147483647i, global2.c), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], true, false, false)), _wgslsmith_add_vec4_i32(vec4<i32>(global2.c, 1i, -95997i, global2.b.x), vec4<i32>(1i, global2.a, global2.a, global2.b.x))), -_wgslsmith_div_vec4_i32(vec4<i32>(global2.b.x, global2.b.x, global2.c, global2.b.x), vec4<i32>(global2.c, global2.c, global2.b.x, global2.c))));
    global1 = -1357f;
    var_0 = _wgslsmith_mod_vec4_i32(-min(abs(vec4<i32>(2147483647i, -59186i, 15634i, var_0.x)), vec4<i32>(~2147483647i, _wgslsmith_dot_vec2_i32(global2.b, var_0.wy), -13892i, func_1(u_input.a.xx, 1i, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], Struct_3(global2.a, global2.b, -2147483647i)))), vec4<i32>(-select(-var_0.x, -var_0.x, any(vec4<bool>(false, global0[_wgslsmith_index_u32(25883u, 25u)], true, false))), ~(~global2.a), var_0.x, _wgslsmith_clamp_i32(global2.a, select(firstTrailingBit(10029i), func_1(u_input.b.zy, global2.a, true, Struct_3(var_0.x, var_0.xw, var_0.x)), global0[_wgslsmith_index_u32(36240u, 25u)] & false), _wgslsmith_add_i32(1i, var_0.x) << (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.b.x, 1u, 47945u, 4294967295u)) % 32u))));
    var var_1 = -30679i & _wgslsmith_mult_i32(global2.c, firstLeadingBit(9253i));
    let var_2 = -(i32(-1i) * -46597i);
    var var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1492f, 171f, -1791f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2775f, -921f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1028f, 211f, -1354f))))), vec3<f32>(-896f, 286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(565f))))), firstTrailingBit(abs(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.zwy, var_0.xxx, vec3<i32>(var_2, global2.b.x, var_0.x)), max(var_0.xxx, vec3<i32>(-2147483647i, -27173i, 1i))))), u_input.b.x, 4294967295u);
}

