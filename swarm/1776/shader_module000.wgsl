struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(false, false, false);

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(27040i, vec3<bool>(true, false, false), -1i, -631f, vec3<i32>(47117i, 15299i, 0i)), Struct_1(-29853i, vec3<bool>(true, false, true), 79376i, -1000f, vec3<i32>(1i, 2147483647i, 31796i)), Struct_1(19798i, vec3<bool>(true, false, true), i32(-2147483648), 593f, vec3<i32>(8949i, -1i, -26842i)), Struct_1(0i, vec3<bool>(false, false, true), 2147483647i, -172f, vec3<i32>(1i, 2147483647i, -28781i)), Struct_1(-89516i, vec3<bool>(true, true, false), 12580i, -213f, vec3<i32>(0i, 0i, 21272i)), Struct_1(0i, vec3<bool>(false, false, false), -27867i, 244f, vec3<i32>(-1i, 2147483647i, -36889i)), Struct_1(12477i, vec3<bool>(true, false, false), 25012i, 693f, vec3<i32>(24690i, i32(-2147483648), 16540i)), Struct_1(i32(-2147483648), vec3<bool>(true, true, true), -20199i, -437f, vec3<i32>(-1i, 1i, 19574i)), Struct_1(-9386i, vec3<bool>(false, false, true), 0i, -422f, vec3<i32>(2147483647i, -37594i, -1i)), Struct_1(52694i, vec3<bool>(true, false, false), i32(-2147483648), 117f, vec3<i32>(-17203i, 17836i, 1i)), Struct_1(0i, vec3<bool>(true, true, false), -6169i, -342f, vec3<i32>(1i, 2147483647i, 42630i)), Struct_1(2147483647i, vec3<bool>(false, true, false), 1i, -1000f, vec3<i32>(1i, 2328i, -1i)), Struct_1(-13374i, vec3<bool>(false, true, true), -1810i, 148f, vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648))), Struct_1(21845i, vec3<bool>(false, false, false), 31358i, -1000f, vec3<i32>(-1i, 1i, 654i)), Struct_1(1i, vec3<bool>(true, true, true), 9872i, -700f, vec3<i32>(1i, 1121i, -233i)), Struct_1(-21774i, vec3<bool>(false, false, true), 0i, 942f, vec3<i32>(i32(-2147483648), 1i, 2147483647i)), Struct_1(0i, vec3<bool>(true, true, true), -4914i, -659f, vec3<i32>(42134i, 52585i, 38334i)), Struct_1(-10048i, vec3<bool>(false, false, true), i32(-2147483648), 1000f, vec3<i32>(-35517i, 11130i, 2147483647i)));

var<private> global2: vec4<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2() -> u32 {
    let var_0 = 1u;
    global0 = array<bool, 3>();
    var var_1 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(firstTrailingBit(-27361i) ^ u_input.b.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(23853i, 15029i, u_input.a.x)), ~u_input.a.wyw), 1i, 1i), -vec4<i32>(u_input.a.x, ~u_input.a.x, i32(-1i) * -u_input.b.x, ~_wgslsmith_mult_i32(u_input.b.x, 1i)), u_input.a);
    global0 = array<bool, 3>();
    let var_2 = global1[_wgslsmith_index_u32(var_0, 18u)];
    return 26150u >> (var_0 % 32u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<u32>) -> vec4<bool> {
    var var_0 = arg_1;
    let var_1 = Struct_1(arg_2.x, !arg_1.b, arg_1.e.x, var_0.d, ~vec3<i32>(arg_2.x, _wgslsmith_add_i32(var_0.e.x, 0i), _wgslsmith_sub_i32(-arg_1.a, 2147483647i)));
    var var_2 = Struct_1(1i, vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 49272u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 26112u), arg_3.yy, vec2<u32>(arg_0.x, 1u))) > arg_3.x, arg_1.b.x, arg_3.x <= 1u), min(1274i, arg_2.x), var_0.d, select(-(vec3<i32>(2347i, 34015i, 4476i) | vec3<i32>(-2147483647i, var_1.a, 79966i)), vec3<i32>(u_input.b.x, ~0i, -var_0.e.x), !var_0.b) & reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-78194i, arg_2.x, -1i, u_input.b.x), arg_2), arg_1.c, arg_1.e.x | u_input.a.x)));
    var var_3 = var_2.d;
    var_0 = Struct_1(-38129i, select(vec3<bool>(_wgslsmith_f_op_f32(-var_1.d) > -209f, !var_1.b.x, -1000f > _wgslsmith_div_f32(var_0.d, -1000f)), select(var_0.b, !(!var_2.b), true), !select(!vec3<bool>(var_2.b.x, var_2.b.x, true), vec3<bool>(var_0.b.x, var_1.b.x, global0[_wgslsmith_index_u32(1u, 3u)]), global2.xyy)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-21526i, -1i), arg_1.e.xz), firstTrailingBit(firstLeadingBit(select(vec2<i32>(arg_1.e.x, -1i), u_input.a.xy, false)))), 1070f, var_0.e);
    return !select(vec4<bool>(any(arg_1.b.zx) || true, any(!vec4<bool>(false, var_0.b.x, false, false)), false, !(!arg_1.b.x)), select(select(select(vec4<bool>(var_2.b.x, global2.x, true, global0[_wgslsmith_index_u32(42641u, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 3u)], false, global0[_wgslsmith_index_u32(arg_3.x, 3u)], var_2.b.x), vec4<bool>(true, false, var_0.b.x, false)), !vec4<bool>(false, var_1.b.x, global2.x, false), global0[_wgslsmith_index_u32(~arg_3.x, 3u)]), !(!vec4<bool>(true, var_2.b.x, true, var_2.b.x)), select(select(vec4<bool>(var_2.b.x, false, var_0.b.x, var_2.b.x), vec4<bool>(true, true, var_1.b.x, false), vec4<bool>(false, var_2.b.x, global2.x, var_2.b.x)), !vec4<bool>(false, global0[_wgslsmith_index_u32(73146u, 3u)], true, false), select(vec4<bool>(true, true, false, var_0.b.x), vec4<bool>(false, var_1.b.x, false, true), var_0.b.x))), true);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(630f, _wgslsmith_f_op_f32(arg_1.d + 1324f), -1000f, _wgslsmith_f_op_f32(trunc(arg_2.d)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-864f + arg_3.d), _wgslsmith_div_f32(218f, 317f), 741f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.d, arg_1.d, arg_3.d, -1071f), vec4<f32>(arg_1.d, 1535f, 315f, 688f))))) * vec4<f32>(arg_3.d, 108f, _wgslsmith_f_op_f32(floor(arg_2.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)) - arg_3.d)));
    let var_1 = ~(~firstTrailingBit(vec2<u32>(1u, func_2())));
    var var_2 = _wgslsmith_f_op_f32(ceil(var_0.x));
    global2 = select(!select(func_3(reverseBits(var_1), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, 1u), 18u)], u_input.a, ~vec3<u32>(1u, var_1.x, var_1.x)), vec4<bool>(1148f >= var_0.x, any(arg_2.b.yx), arg_3.e.x != arg_0.a, arg_3.b.x), select(vec4<bool>(true, arg_1.b.x, false, true), vec4<bool>(arg_2.b.x, global0[_wgslsmith_index_u32(var_1.x, 3u)], arg_3.b.x, global2.x), vec4<bool>(true, false, arg_3.b.x, global2.x))), !func_3(var_1, global1[_wgslsmith_index_u32(var_1.x, 18u)], _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.c, arg_2.c, -36310i, arg_1.e.x), firstLeadingBit(u_input.a)), vec3<u32>(var_1.x, ~var_1.x, var_1.x)), !(!func_3(_wgslsmith_add_vec2_u32(var_1, vec2<u32>(var_1.x, 4294967295u)), Struct_1(1i, arg_1.b, 0i, arg_3.d, arg_2.e), vec4<i32>(2147483647i, 1i, arg_3.e.x, -2464i), ~vec3<u32>(var_1.x, 25584u, var_1.x))));
    let var_3 = arg_0.d;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.d - arg_1.d)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!global2.zx));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(437f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-246f * -1109f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-547f, 1082f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(923f - _wgslsmith_f_op_f32(func_1(Struct_1(25923i, vec3<bool>(global0[_wgslsmith_index_u32(8243u, 3u)], global0[_wgslsmith_index_u32(21378u, 3u)], false), -1i, -742f, u_input.a.wxx), Struct_1(u_input.a.x, vec3<bool>(false, var_0.x, global2.x), 11939i, 850f, vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x)), global1[_wgslsmith_index_u32(12255u, 18u)], Struct_1(-20650i, global2.zzz, 9273i, var_1, vec3<i32>(-2147483647i, u_input.b.x, 1i)))))), _wgslsmith_f_op_f32(sign(var_1))) + vec2<f32>(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(~firstLeadingBit(27554u), 18u)], global1[_wgslsmith_index_u32(36628u, 18u)], global1[_wgslsmith_index_u32(~(~1u), 18u)], Struct_1(u_input.b.x, vec3<bool>(false, global2.x, global0[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), 526f, vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x) & u_input.b))), _wgslsmith_f_op_f32(-var_1)));
    let var_3 = vec2<bool>(!(u_input.b.x == -(i32(-1i) * -9234i)), ((_wgslsmith_add_i32(u_input.b.x, u_input.a.x) << (37470u % 32u)) > 0i) | true);
    var var_4 = ~reverseBits(_wgslsmith_dot_vec4_u32(reverseBits(countOneBits(vec4<u32>(4294967295u, 1u, 4294967295u, 0u))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(31177u, 4294967295u, 44619u, 52890u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(func_1(Struct_1(45067i, vec3<bool>(false, true, true), u_input.a.x, var_1, u_input.b), Struct_1(0i, global2.wyw, 48525i, var_1, u_input.a.zxz), global1[_wgslsmith_index_u32(46915u, 18u)], Struct_1(u_input.b.x, vec3<bool>(global2.x, true, var_0.x), u_input.b.x, 893f, u_input.a.xww))))), _wgslsmith_sub_u32(1u, 1u));
}

