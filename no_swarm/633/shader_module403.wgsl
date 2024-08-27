struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<f32, 2>;

var<private> global1: array<f32, 20> = array<f32, 20>(-286f, 459f, 1311f, 564f, 1913f, 243f, 1715f, -887f, 441f, 537f, 689f, 1000f, 1000f, 440f, -302f, 417f, -865f, 1266f, -814f, 1538f);

var<private> global2: Struct_4 = Struct_4(Struct_2(10097i, true), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -29000i), vec2<i32>(-1606i, 1i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1048f), -735f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 20u)]))), vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(46414u, 0u), reverseBits(vec2<u32>(0u, 4294967295u))), 2u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(80564u, 2u)]))), -500f)));
    let var_1 = max(select(vec4<u32>(countOneBits(~1u), ~4294967295u, ~(26550u >> (1u % 32u)), 0u), vec4<u32>(~(~6844u), _wgslsmith_sub_u32(4294967295u, ~0u), select(select(4294967295u, 15516u, global2.a.b), _wgslsmith_clamp_u32(55063u, 4294967295u, 4294967295u), all(vec2<bool>(global2.a.b, global2.a.b))), ~(~34255u)), vec4<bool>(false, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]) > _wgslsmith_f_op_f32(floor(var_0.x)), any(!vec4<bool>(global2.a.b, global2.a.b, true, global2.a.b)), !global2.a.b == !global2.a.b)), _wgslsmith_div_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 26075u, 0u, 1u), false), ~_wgslsmith_add_vec4_u32(vec4<u32>(45638u, 26204u, 0u, 2842u), vec4<u32>(1u, 83226u, 43480u, 1u))) ^ (abs(vec4<u32>(4294967295u, 23938u, 37015u, 4294967295u)) & abs(select(vec4<u32>(1u, 0u, 0u, 16315u), vec4<u32>(0u, 26718u, 1u, 0u), vec4<bool>(false, true, false, true)))));
    let var_2 = Struct_1(1i, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 20u)])), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, var_1.x), 2u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -170f))), _wgslsmith_f_op_f32(ceil(-507f)))));
    let var_3 = select(!vec3<bool>(any(vec3<bool>(global2.a.b, global2.a.b, false)), !(!global2.a.b), !(!global2.a.b)), select(!(!vec3<bool>(global2.a.b, true, global2.a.b)), select(!select(vec3<bool>(true, global2.a.b, global2.a.b), vec3<bool>(true, false, false), vec3<bool>(false, global2.a.b, true)), !(!vec3<bool>(global2.a.b, global2.a.b, true)), !(!global2.a.b)), !select(select(vec3<bool>(global2.a.b, global2.a.b, global2.a.b), vec3<bool>(global2.a.b, false, global2.a.b), vec3<bool>(false, false, global2.a.b)), vec3<bool>(true, true, global2.a.b), false)), vec3<bool>(false, !(any(vec3<bool>(false, global2.a.b, global2.a.b)) | true), global2.a.b));
    let var_4 = var_1.x;
    return -(~firstLeadingBit(global2.b.zw));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<f32>) -> f32 {
    var var_0 = Struct_2(global2.b.x, false);
    global1 = array<f32, 20>();
    let var_1 = _wgslsmith_add_u32(firstLeadingBit(1u), 22715u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - arg_2.x) - _wgslsmith_f_op_f32(exp2(arg_2.x)));
    var var_3 = Struct_4(Struct_2(2147483647i, any(!vec4<bool>(true, false, var_0.b, var_0.b))), global2.b, firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.a, 38799i), global2.c) & func_3()));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -911f) * var_2) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, !var_0.b))))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_2 {
    global2 = Struct_4(global2.a, vec4<i32>(global2.c.x, u_input.a, countOneBits(i32(-1i) * -2147483647i), -1i), abs(~(vec2<i32>(-51067i, u_input.a) ^ vec2<i32>(5289i, u_input.a))));
    global0 = array<f32, 2>();
    let var_0 = 4952i;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(801f, global1[_wgslsmith_index_u32(68539u, 20u)], global0[_wgslsmith_index_u32(arg_0, 2u)], global1[_wgslsmith_index_u32(52123u, 20u)])))), var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-405f, -313f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 2u)], global1[_wgslsmith_index_u32(26777u, 20u)]) - vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 2u)], 1225f)))))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(935f, global0[_wgslsmith_index_u32(arg_0, 2u)], -1167f, global1[_wgslsmith_index_u32(arg_0, 20u)]) - vec4<f32>(694f, global1[_wgslsmith_index_u32(arg_0, 20u)], 623f, -819f)), vec4<f32>(-1442f, 900f, 195f, 706f), vec4<bool>(arg_1.x, global2.a.b, false, arg_1.x))))), min(_wgslsmith_mult_i32(u_input.a, ~var_0), 10136i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 20u)])), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(75353u, 2u)]))))), -1177f);
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -579f, 633f, global0[_wgslsmith_index_u32(arg_0, 2u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(arg_0, 20u)], global0[_wgslsmith_index_u32(arg_0, 2u)], 1521f, 1293f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1148f, global0[_wgslsmith_index_u32(4268u, 2u)], global0[_wgslsmith_index_u32(arg_0, 2u)]) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 2u)], var_1.x, global0[_wgslsmith_index_u32(15523u, 2u)], 565f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 2u)], global1[_wgslsmith_index_u32(69164u, 20u)], 925f, 1245f))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-873f, var_1.x, 121f, -1326f), vec4<f32>(global1[_wgslsmith_index_u32(arg_0, 20u)], var_1.x, 1791f, global0[_wgslsmith_index_u32(arg_0, 2u)]))) + _wgslsmith_div_vec4_f32(vec4<f32>(209f, global0[_wgslsmith_index_u32(28853u, 2u)], -433f, global1[_wgslsmith_index_u32(arg_0, 20u)]), vec4<f32>(global1[_wgslsmith_index_u32(13678u, 20u)], -116f, global0[_wgslsmith_index_u32(arg_0, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(22446u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], -1037f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-666f, global0[_wgslsmith_index_u32(1u, 2u)], -2779f, -794f))))))));
    return Struct_2(-26092i, !arg_1.x & all(vec2<bool>(true, var_0 <= u_input.a)));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_5) -> Struct_2 {
    global2 = arg_2.a;
    global0 = array<f32, 2>();
    global2 = arg_2.a;
    var var_0 = arg_0.a.a;
    var_0 = -arg_1;
    return func_1(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 1u, 1u)), min(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, 7867u), vec3<u32>(17986u, 1u, 128400u)), vec3<u32>(1u, 1u, 1u))) & 0u, !(!vec2<bool>(all(vec4<bool>(global2.a.b, false, arg_0.a.b, false)), select(true, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_4(Struct_4(func_1(1u, select(vec2<bool>(true, global2.a.b), vec2<bool>(global2.a.b, global2.a.b), global2.a.b)), vec4<i32>(_wgslsmith_mod_i32(global2.a.a, global2.a.a), global2.c.x, ~global2.b.x, ~36993i), abs(-global2.b.xz)), -54856i, Struct_5(Struct_4(global2.a, vec4<i32>(u_input.a, u_input.a, global2.a.a, -4461i), global2.b.wx ^ global2.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-768f, global1[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(52209u, 2u)]), vec3<f32>(global0[_wgslsmith_index_u32(1u, 2u)], -349f, 1368f), false)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1067f, 619f, -1000f) + vec3<f32>(907f, global0[_wgslsmith_index_u32(6020u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]))))), _wgslsmith_clamp_vec4_i32(global2.b, countOneBits(vec4<i32>(reverseBits(u_input.a), u_input.a, global2.b.x & global2.a.a, u_input.a)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 6690i, 0i, global2.a.a), global2.b), ~global2.b, vec4<bool>(true, global2.a.b, false, false)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(15040u, 47826u, 1298u, 25572u))) % vec4<u32>(32u))), vec2<i32>(u_input.a, -2147483647i));
    var var_1 = vec2<bool>(var_0.a.b, select(all(!vec3<bool>(global2.a.b, var_0.a.b, var_0.a.b)), true, all(select(!vec3<bool>(true, var_0.a.b, global2.a.b), vec3<bool>(global2.a.b, false, global2.a.b), !vec3<bool>(false, true, global2.a.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(30782u, 20u)]));
}

