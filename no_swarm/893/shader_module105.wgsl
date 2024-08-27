struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: array<u32, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_vec2_u32(arg_0.e.yx | vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], 15095u), vec2<u32>(1u, 33561u)) << (vec2<u32>(1u, _wgslsmith_mult_u32(arg_0.e.x, _wgslsmith_sub_u32(11866u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)]))) % vec2<u32>(32u));
    var_0 = arg_0.e.yx ^ arg_0.e.xx;
    let var_1 = arg_1.x;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 23u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~21464u, 23u)]) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]) * _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(arg_0.e.x, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]))))), -153f);
    let var_3 = ~(~arg_2);
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(i32(-1i) * -arg_3.a, 1u, !(!any(arg_0.d)), vec4<bool>(any(vec2<bool>(arg_0.c, true)) | any(vec3<bool>(arg_0.c, arg_0.c, arg_0.c)), all(vec4<bool>(arg_3.d.x, arg_3.c, true, arg_3.c)) & all(!arg_3.d.yzw), !(true || (u_input.a < arg_3.b)), all(arg_3.d.yy)), ~vec3<u32>(u_input.a, 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_3.e.x, global1[_wgslsmith_index_u32(arg_3.b, 30u)], 0u), vec3<u32>(4294967295u, arg_3.b, 0u))));
    var var_1 = arg_3;
    let var_2 = -2147483647i;
    global1 = array<u32, 30>();
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(-423f, -1613f)), 2097f);
    return ~(~(~13847u));
}

fn func_1() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~(~(_wgslsmith_dot_vec4_u32(~vec4<u32>(14053u, 4294967295u, global1[_wgslsmith_index_u32(78212u, 30u)], u_input.a), firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) & func_3(Struct_1(-1i, 0u, true, vec4<bool>(true, true, false, false), vec3<u32>(u_input.a, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41148u, 30u)], 30u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-661f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)]) + vec3<f32>(global0[_wgslsmith_index_u32(11448u, 23u)], 129f, global0[_wgslsmith_index_u32(4294967295u, 23u)])), -1284f, func_2(Struct_1(u_input.b, 0u, true, vec4<bool>(true, true, false, false), vec3<u32>(global1[_wgslsmith_index_u32(13090u, 30u)], global1[_wgslsmith_index_u32(25422u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)])), vec4<i32>(35358i, u_input.b, -1i, 2147483647i), 1i)))), 23u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 23u)] - global0[_wgslsmith_index_u32(2710u, 23u)]), -909f))), vec2<f32>(_wgslsmith_f_op_f32(-1105f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-529f, -604f))), -980f)));
    var var_2 = vec2<u32>(1u, u_input.a);
    var var_3 = _wgslsmith_mult_vec2_u32(select(~(~vec2<u32>(4294967295u, 94874u) << (vec2<u32>(var_2.x, global1[_wgslsmith_index_u32(39286u, 30u)]) % vec2<u32>(32u))), ~vec2<u32>(11305u, countOneBits(19353u)), select(!all(vec3<bool>(false, false, true)), true, false)), ~vec2<u32>(~u_input.a, ~(~4294967295u)));
    global0 = array<f32, 23>();
    return Struct_1(_wgslsmith_div_i32(min(~(u_input.b >> (4294967295u % 32u)), -24510i), 0i << (~(~var_2.x) % 32u)), ~var_2.x, true, select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, false, select(true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false))), !func_2(func_2(Struct_1(-1i, 14719u, false, vec4<bool>(true, true, false, false), vec3<u32>(0u, 4294967295u, u_input.a)), vec4<i32>(11220i, u_input.b, 8750i, 2147483647i), 14375i), -vec4<i32>(22816i, -2147483647i, 1i, -1i), firstTrailingBit(-13065i)).d, false), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.x, 56u, 0u) << ((vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], 0u, global1[_wgslsmith_index_u32(50145u, 30u)]) | vec3<u32>(global1[_wgslsmith_index_u32(5166u, 30u)], 8370u, u_input.a)) % vec3<u32>(32u)), reverseBits(vec3<u32>(8299u, 1u, 121691u)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(9437u, u_input.a, 1u), vec3<u32>(26921u, var_3.x, 23905u)), ~vec3<u32>(4294967295u, 65224u, var_2.x))), ~max(vec3<u32>(0u, 0u, 1u), vec3<u32>(u_input.a, 1u, 1u)) | vec3<u32>(_wgslsmith_sub_u32(41695u, 7918u), ~u_input.a, ~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 30>();
    var var_0 = func_1();
    var var_1 = true || var_0.d.x;
    var var_2 = firstTrailingBit(~(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -71866i), vec2<i32>(-54308i, var_0.a)))) << (var_0.e.yz % vec2<u32>(32u));
    let var_3 = vec3<f32>(global0[_wgslsmith_index_u32(var_0.e.x, 23u)], -935f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 37781u), 23u)]);
    let var_4 = Struct_1(-(i32(-1i) * -1i), 0u, true, !(!select(vec4<bool>(var_0.c, var_0.d.x, false, true), func_2(Struct_1(2147483647i, var_0.e.x, var_0.d.x, vec4<bool>(false, true, true, true), var_0.e), vec4<i32>(-1i, var_2.x, var_2.x, -2147483647i), 0i).d, !vec4<bool>(var_0.c, true, var_0.c, true))), _wgslsmith_mod_vec3_u32(vec3<u32>(func_1().e.x, u_input.a, 4294967295u), ~vec3<u32>(~4294967295u, reverseBits(u_input.a), ~4294967295u)));
    let var_5 = _wgslsmith_f_op_f32(1693f - 973f);
    var_1 = true;
    var var_6 = vec2<i32>(var_4.a, 20025i);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(2114u, 30u)], 38954i, -_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(var_0.a, u_input.b, 1i, var_0.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_4.a, var_0.a, var_6.x, 7762i) & vec4<i32>(u_input.b, var_4.a, -2147483647i, u_input.b), ~vec4<i32>(-2147483647i, var_0.a, var_4.a, -2147483647i), vec4<i32>(-2072i, var_6.x, 0i, u_input.b) << (vec4<u32>(u_input.a, 34091u, var_4.e.x, var_0.e.x) % vec4<u32>(32u))), ~(-vec4<i32>(0i, 2147483647i, var_0.a, var_6.x))), firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(47012u, 30u)], 4294967295u, 23453u, 7755u), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 30u)], u_input.a, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(52996u, 11573u, var_4.b, 50443u), vec4<u32>(u_input.a, 9298u, 0u, global1[_wgslsmith_index_u32(37385u, 30u)]), vec4<u32>(26010u, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(var_0.b, 30u)], 0u))), ~vec4<u32>(45666u, var_0.e.x, 4294967295u, global1[_wgslsmith_index_u32(1u, 30u)]) << (~vec4<u32>(9985u, 37835u, 1u, global1[_wgslsmith_index_u32(var_0.b, 30u)]) % vec4<u32>(32u)))), 20022i);
}

