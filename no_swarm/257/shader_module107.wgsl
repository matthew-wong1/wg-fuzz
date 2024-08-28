struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: f32 = 1283f;

var<private> global2: array<bool, 31> = array<bool, 31>(true, true, false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, true, false, true, false, false, false, true, true, false, true, true, false, true, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = u_input.a.x;
    return max(abs(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_mult_u32(u_input.b, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 15661u, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 23414u, u_input.b), vec3<u32>(u_input.b, 0u, 11759u))))), ~(~u_input.b) | ~_wgslsmith_add_u32(select(u_input.b, 33517u, global2[_wgslsmith_index_u32(u_input.b, 31u)]), firstTrailingBit(4294967295u)));
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_1, 19>();
    var var_0 = true || any(select(select(vec2<bool>(true, global2[_wgslsmith_index_u32(110595u, 31u)]), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), _wgslsmith_div_i32(u_input.d, u_input.c.x) <= 1i));
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(349f, -2018f) * -2146f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f), -1000f), u_input.b == 26315u)) > _wgslsmith_f_op_f32(round(-961f)), true, global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(~u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(5958u, u_input.b, 4294967295u, 4702u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 8962u, u_input.b, 4294967295u), vec4<u32>(4705u, u_input.b, 20673u, u_input.b)))), 31u)]);
    let var_2 = global0[_wgslsmith_index_u32(func_3(global0[_wgslsmith_index_u32(abs(4294967295u), 19u)]), 19u)];
    let var_3 = vec2<bool>(all(select(vec4<bool>(all(vec4<bool>(var_1.x, true, true, true)), global2[_wgslsmith_index_u32(abs(u_input.b), 31u)], var_1.x || false, !var_1.x), select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 31u)], var_1.x, global2[_wgslsmith_index_u32(u_input.b, 31u)]), !vec4<bool>(true, true, global2[_wgslsmith_index_u32(58529u, 31u)], global2[_wgslsmith_index_u32(u_input.b, 31u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 31u)], false, global2[_wgslsmith_index_u32(65758u, 31u)], false)), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 31u)], false, global2[_wgslsmith_index_u32(u_input.b, 31u)]), true))), !all(var_1.yx));
    return Struct_2(var_1.yz, global0[_wgslsmith_index_u32(~(~countOneBits(0u)), 19u)], firstTrailingBit(~min(vec4<u32>(72555u, u_input.b, u_input.b, 13058u) & vec4<u32>(u_input.b, 9887u, u_input.b, 4294967295u), vec4<u32>(1u, u_input.b, 0u, 58893u) >> (vec4<u32>(27668u, 1u, u_input.b, u_input.b) % vec4<u32>(32u)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(~(0u ^ (~arg_1.c.x ^ ~u_input.b)), 31u)];
    let var_1 = func_2();
    global0 = array<Struct_1, 19>();
    let var_2 = -select(_wgslsmith_sub_i32(arg_0.x, 46572i) | 1i, -arg_0.x, !(!(var_1.c.x > arg_1.c.x)));
    var var_3 = vec4<bool>(var_1.a.x, any(!func_2().a), arg_1.a.x, false != all(vec4<bool>(var_1.a.x, false | var_1.a.x, true, arg_1.a.x)));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = 815f;
    var var_1 = 6940i;
    var var_2 = select(select(!(!vec4<bool>(true, false, arg_3.a.x, true)), select(!(!vec4<bool>(arg_1.a.x, arg_1.a.x, true, global2[_wgslsmith_index_u32(7217u, 31u)])), !(!vec4<bool>(arg_1.a.x, arg_3.a.x, arg_3.a.x, arg_1.a.x)), true), any(vec3<bool>(true, true, global2[_wgslsmith_index_u32(8903u, 31u)] && false))), vec4<bool>(arg_3.a.x, all(!arg_3.a) || false, func_1(~countOneBits(vec2<i32>(7033i, u_input.d)), func_1(u_input.a.yw, arg_3)).a.x, all(!(!vec4<bool>(false, false, arg_1.a.x, false)))), func_2().a.x);
    var var_3 = select(vec3<bool>(false, true && arg_3.a.x, func_1(firstTrailingBit(u_input.c), arg_1).a.x), vec3<bool>(arg_1.a.x, (_wgslsmith_mult_i32(u_input.d, 26442i) >= -u_input.d) | arg_3.a.x, arg_1.a.x), vec3<bool>(all(var_2.yxz), false, any(select(!vec4<bool>(false, global2[_wgslsmith_index_u32(arg_3.c.x, 31u)], arg_1.a.x, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(90818u, 31u)]), vec4<bool>(var_2.x, global2[_wgslsmith_index_u32(arg_1.c.x, 31u)], false, arg_3.a.x)), vec4<bool>(arg_1.a.x, true, var_2.x, false)))));
    let var_4 = (~(-27586i) > ((u_input.a.x << (_wgslsmith_sub_u32(arg_1.c.x, 4762u) % 32u)) ^ -48452i)) | var_3.x;
    return arg_1.c.x;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    let var_0 = arg_0;
    global2 = array<bool, 31>();
    global1 = -365f;
    let var_1 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, var_0 ^ 0u), ~(~var_0), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, arg_0)), abs(4294967295u))), ~(~23056u), var_0, 1u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0 | u_input.b, arg_0, arg_0, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_0, 4294967295u))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 39486u, arg_0, 34736u), vec4<u32>(var_0, u_input.b, 0u, var_0)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 31744u, 24251u, 4294967295u), vec4<u32>(0u, 58214u, 4294967295u, 4803u))), vec4<u32>(u_input.b, abs(var_0), (0u | var_0) >> (~49018u % 32u), firstLeadingBit(5044u)));
    let var_2 = -(~u_input.d);
    return !func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1624f, 1404f)))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f) - _wgslsmith_f_op_f32(987f + -1071f)), _wgslsmith_f_op_f32(-1571f * 895f), 1f)), vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -829f)) - _wgslsmith_f_op_f32(f32(-1f) * -1403f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-267f, _wgslsmith_f_op_f32(f32(-1f) * -189f))), -920f, 256f));
    let var_1 = -1i;
    let var_2 = Struct_2(func_5(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 928f, var_0.b.x)), var_0.c, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1390f, 1620f, var_0.c.x, var_0.b.x)))), func_1(reverseBits(u_input.a.zy), Struct_2(vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 31u)]), global0[_wgslsmith_index_u32(55237u, 19u)], vec4<u32>(16541u, u_input.b, u_input.b, u_input.b))), vec4<u32>(u_input.b, u_input.b, firstLeadingBit(u_input.b), u_input.b), Struct_2(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 31u)]), global0[_wgslsmith_index_u32(abs(u_input.b), 19u)], vec4<u32>(37627u, u_input.b, 1010u, u_input.b))), func_2().b, _wgslsmith_f_op_f32(1147f + 517f)), func_1(max(u_input.a.xw, u_input.a.yx), Struct_2(!func_1(vec2<i32>(var_1, 1i), Struct_2(vec2<bool>(false, true), Struct_1(var_0.a, var_0.c, vec4<f32>(-820f, var_0.a.x, 1233f, var_0.b.x)), vec4<u32>(u_input.b, u_input.b, u_input.b, 62688u))).a, Struct_1(_wgslsmith_f_op_vec3_f32(select(var_0.b.wwy, vec3<f32>(var_0.c.x, 174f, 1400f), true)), func_1(vec2<i32>(2147483647i, -80092i), Struct_2(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 31u)]), Struct_1(vec3<f32>(-373f, var_0.a.x, 1338f), var_0.c, var_0.c), vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u))).b.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1298f, 1000f, -236f) * var_0.b)), ~vec4<u32>(u_input.b, u_input.b, 14617u, 9777u))).b, ~abs(func_2().c));
    var var_3 = func_1(vec2<i32>(1i, -min(firstLeadingBit(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -63319i, var_1, var_1), vec4<i32>(var_1, u_input.a.x, var_1, 46296i)))), var_2).a;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(min(1i ^ u_input.a.x, -var_1), reverseBits(max(1i, -2147483647i)), _wgslsmith_clamp_i32(var_1, u_input.c.x, u_input.a.x), i32(-1i) * -31144i), min(var_2.c.zwx, ~abs(_wgslsmith_div_vec3_u32(var_2.c.yxx, var_2.c.xyz))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.b.a.x)), var_2.b.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1227f), -1197f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-578f, var_2.b.a.x, -414f, 2608f)), var_2.b.b), vec4<bool>(true, true, false, true)))));
}

