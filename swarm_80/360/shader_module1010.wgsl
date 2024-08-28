struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(-625f, -1491f), vec2<f32>(-1000f, 827f), vec2<f32>(850f, 427f), vec2<f32>(631f, -1000f), vec2<f32>(221f, -414f), vec2<f32>(-1000f, 1175f), vec2<f32>(174f, 1174f), vec2<f32>(-1163f, -737f), vec2<f32>(-709f, -1000f), vec2<f32>(-1483f, 1062f), vec2<f32>(934f, -766f), vec2<f32>(1000f, 191f), vec2<f32>(-1475f, 1315f), vec2<f32>(1312f, -1455f), vec2<f32>(300f, 442f), vec2<f32>(938f, 721f), vec2<f32>(169f, 1584f), vec2<f32>(704f, 267f), vec2<f32>(1005f, -2842f), vec2<f32>(-506f, -1000f), vec2<f32>(158f, -483f));

var<private> global1: array<f32, 31> = array<f32, 31>(2884f, -836f, -761f, 1473f, 1908f, -330f, 786f, -1567f, -170f, 1816f, -1325f, -194f, 813f, 224f, -237f, 126f, -270f, 779f, -426f, 1328f, 638f, 327f, -1557f, -311f, 1620f, -387f, -630f, -589f, 1104f, -238f, -364f);

var<private> global2: array<Struct_1, 10>;

var<private> global3: vec4<i32> = vec4<i32>(-65632i, 17790i, -13111i, 2147483647i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> i32 {
    var var_0 = arg_1.c.wzw;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1453f + global1[_wgslsmith_index_u32(~u_input.c.x, 31u)]), global1[_wgslsmith_index_u32(arg_1.e, 31u)]);
    global1 = array<f32, 31>();
    global3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(max(arg_1.b.x, abs(47726i)), -26026i, reverseBits(0i) >> (1u % 32u), ~arg_1.b.x), countOneBits(select(~vec4<i32>(global3.x, -2147483647i, global3.x, u_input.a.x), -vec4<i32>(-13672i, 0i, global3.x, arg_1.b.x), all(vec4<bool>(arg_1.c.x, true, var_0.x, true)))), vec4<i32>(~select(-1i, arg_1.b.x, true), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, global3.x, -3195i, global3.x), firstTrailingBit(vec4<i32>(global3.x, 0i, global3.x, global3.x))), global3.x, arg_1.b.x)) & vec4<i32>(-8566i, -(_wgslsmith_mod_i32(arg_1.b.x, -2147483647i) >> (44707u % 32u)), (27723i << (_wgslsmith_clamp_u32(4294967295u, 64475u, arg_1.e) % 32u)) << (100936u % 32u), (0i >> (0u % 32u)) & global3.x);
    let var_2 = abs(vec3<u32>(0u, select(~4294967295u, 1173u, any(var_0.zx)), arg_0.x));
    return i32(-1i) * -2147483647i;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(arg_1.x, 31u)])), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 31u)])), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(61010u, 31u)], global1[_wgslsmith_index_u32(arg_1.x, 31u)]), _wgslsmith_f_op_f32(min(-728f, global1[_wgslsmith_index_u32(u_input.c.x, 31u)])))))))));
    global1 = array<f32, 31>();
    let var_1 = Struct_3(select(_wgslsmith_mod_i32(0i, _wgslsmith_mod_i32(global3.x, abs(-10155i))), -8606i, arg_0), Struct_1(arg_0, func_3(vec3<u32>(23454u, ~u_input.b, arg_1.x << (arg_1.x % 32u)), Struct_2(_wgslsmith_f_op_vec2_f32(round(var_0.yx)), global3.xw, select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, arg_0, true, arg_0), arg_0), global1[_wgslsmith_index_u32(1u, 31u)], u_input.b)), !select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false)), arg_0), vec4<bool>(true, true, !arg_0, any(!vec2<bool>(arg_0, false)))), Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global3.ww, global3.wx), func_3(vec3<u32>(u_input.c.x, u_input.c.x, arg_1.x), Struct_2(vec2<f32>(2038f, -230f), vec2<i32>(42604i, -2147483647i), vec4<bool>(true, false, arg_0, arg_0), global1[_wgslsmith_index_u32(21524u, 31u)], arg_1.x))) >= 0i, firstTrailingBit(0i), !(!select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), false)), !vec4<bool>(!arg_0, true, true, all(vec4<bool>(arg_0, arg_0, false, arg_0)))));
    let var_2 = arg_1.x;
    let var_3 = var_0.xy;
    return _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(11186i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i) & u_input.a, vec2<i32>(var_1.a, 17921i)), 21409i), u_input.a.x, func_3(vec3<u32>(~arg_1.x, 67995u, 32355u), Struct_2(var_3, vec2<i32>(global3.x, -12027i) | u_input.a, vec4<bool>(var_1.b.a, arg_0, arg_0, var_1.b.d.x), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(var_2, 31u)])), var_2)), u_input.a.x), vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(0i, select(u_input.a.x, 0i, all(vec4<bool>(var_1.c.c.x, true, var_1.c.c.x, arg_0)))), firstTrailingBit(global3.x) << (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_2, arg_1.x, 18518u, 27286u)), select(vec4<u32>(u_input.b, var_2, arg_1.x, 0u), vec4<u32>(0u, arg_1.x, u_input.b, 33969u), vec4<bool>(true, false, var_1.b.c.x, false))) % 32u), _wgslsmith_dot_vec2_i32(global3.zw, ~vec2<i32>(4947i, global3.x) >> (~vec2<u32>(u_input.b, arg_1.x) % vec2<u32>(32u)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = 9835u;
    var var_1 = vec4<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(46619u, 5608u, var_0, 1u), vec4<u32>(4294967295u, arg_1.e, 105916u, 1u)), _wgslsmith_div_u32(~40666u, _wgslsmith_mod_u32(21430u, var_0))) >> (4294967295u % 32u), ~(~_wgslsmith_sub_u32(var_0, 82819u)), max((1u & arg_1.e) ^ ~(~var_0), 0u), 4294967295u);
    let var_2 = 1i;
    global2 = array<Struct_1, 10>();
    global3 = -countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, -1i, arg_1.b.x, arg_1.b.x), firstLeadingBit(vec4<i32>(arg_0.b, 2147483647i, u_input.a.x, -2147483647i))), ~func_2(arg_1.c.x, u_input.c.xxy), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -13730i, 1i, var_2), vec4<i32>(global3.x, var_2, 1i, arg_0.b)), reverseBits(vec4<i32>(arg_0.b, -1i, global3.x, arg_0.b)))));
    return StorageBuffer(arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1099f, _wgslsmith_f_op_f32(trunc(1312f))))), global1[_wgslsmith_index_u32(countOneBits(u_input.b), 31u)]), vec2<i32>(~global3.x ^ global3.x, 28595i), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1322f), global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 31u)], u_input.c.x > u_input.c.x))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.c.x, 31u)]))))), _wgslsmith_div_u32(_wgslsmith_add_u32(0u >> (u_input.c.x % 32u), abs(21144u | u_input.b)), u_input.c.x));
    let var_1 = true;
    let x = u_input.a;
    s_output = func_1(Struct_1(!(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xw, u_input.c.zy), 31u)] >= 431f), _wgslsmith_div_i32(var_0.b.x, i32(-1i) * -global3.x), var_0.c.wz, var_0.c), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_div_f32(var_0.a.x, 2394f))), reverseBits(vec2<i32>(-1i, -2147483647i)), select(var_0.c, select(var_0.c, !vec4<bool>(true, true, var_1, var_0.c.x), var_0.e > 15943u), all(vec2<bool>(var_0.c.x, var_1))), 1903f, 0u));
}

