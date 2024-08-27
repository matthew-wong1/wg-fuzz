struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
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

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(false, vec4<i32>(43002i, -33430i, i32(-2147483648), 31107i)), Struct_1(false, vec4<i32>(-2534i, -49693i, -45332i, 12006i)), Struct_1(true, vec4<i32>(-6044i, -40192i, 2147483647i, i32(-2147483648))), Struct_1(true, vec4<i32>(2147483647i, -29854i, -1i, 0i)), Struct_1(false, vec4<i32>(-37613i, 11736i, 44913i, 0i)), Struct_1(false, vec4<i32>(i32(-2147483648), -11232i, -1i, -1i)), Struct_1(true, vec4<i32>(2147483647i, 0i, 2147483647i, 2147483647i)));

var<private> global2: array<vec2<u32>, 7>;

var<private> global3: array<bool, 18> = array<bool, 18>(true, true, true, false, false, true, true, true, true, true, false, false, true, false, false, true, false, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    global1 = array<Struct_1, 7>();
    let var_0 = ~(~u_input.b.xz);
    global2 = array<vec2<u32>, 7>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -130f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(260f - 287f) + -1000f)), all(vec4<bool>(true, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.x, arg_0), 18u)], any(vec2<bool>(global3[_wgslsmith_index_u32(1u, 18u)], false)), arg_1)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-379f + -2485f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + 1097f))))));
    let var_2 = ~_wgslsmith_div_u32(12536u, ~_wgslsmith_add_u32(~4294967295u, ~global0.x));
    return vec3<u32>(~_wgslsmith_add_u32(arg_0, ~var_0.x), 1u, arg_0) & u_input.b;
}

fn func_2() -> u32 {
    global0 = countOneBits(_wgslsmith_add_vec3_u32(min(vec3<u32>(0u ^ global0.x, 5447u, ~global0.x), _wgslsmith_add_vec3_u32(func_3(748u, false, global1[_wgslsmith_index_u32(global0.x, 7u)]), abs(u_input.b))), firstLeadingBit(vec3<u32>(~54770u, firstLeadingBit(82003u), firstTrailingBit(25807u)))));
    global0 = func_3(countOneBits(32301u), true, Struct_1(min(_wgslsmith_dot_vec3_i32(vec3<i32>(-46684i, -62888i, -48476i), vec3<i32>(-2147483647i, -24185i, 1i)), _wgslsmith_mult_i32(654i, 22499i)) > -_wgslsmith_sub_i32(26258i, 1i), -(~countOneBits(vec4<i32>(2147483647i, 0i, -2147483647i, 2147483647i)))));
    var var_0 = global1[_wgslsmith_index_u32(abs(global0.x), 7u)];
    var_0 = Struct_1(select(!global3[_wgslsmith_index_u32(abs(20590u), 18u)] || all(vec4<bool>(true, var_0.a, true, global3[_wgslsmith_index_u32(u_input.a.x, 18u)])), global3[_wgslsmith_index_u32(0u, 18u)], !global3[_wgslsmith_index_u32(0u, 18u)]), abs(~select(vec4<i32>(var_0.b.x, var_0.b.x, -1i, 1i), select(var_0.b, var_0.b, var_0.a), select(vec4<bool>(false, false, false, false), vec4<bool>(var_0.a, var_0.a, false, var_0.a), true))));
    global0 = vec3<u32>(countOneBits(global0.x), u_input.a.x, ~_wgslsmith_sub_u32(reverseBits(global0.x), 19384u << (global0.x % 32u)));
    return global0.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<f32>) -> StorageBuffer {
    let var_0 = arg_1;
    let var_1 = arg_2;
    global0 = vec3<u32>(func_2(), u_input.a.x, 1u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -296f) - _wgslsmith_f_op_f32(select(var_1.x, 116f, global3[_wgslsmith_index_u32(1961u, 18u)]))))) * arg_2.x) * var_1.x);
    global1 = array<Struct_1, 7>();
    return StorageBuffer(1825f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(369f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -788f)), _wgslsmith_f_op_f32(f32(-1f) * -890f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1452f - 286f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-721f, -1000f, -490f, 2024f), vec4<f32>(1090f, -1181f, 658f, -875f)))))))), global1[_wgslsmith_index_u32(~(~(~global0.x)), 7u)], Struct_1(true, ~vec4<i32>(2147483647i, -15541i, 3349i, 1i) << (~(~vec4<u32>(global0.x, global0.x, global0.x, 51870u)) % vec4<u32>(32u))));
    var var_1 = vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], false, global3[_wgslsmith_index_u32(u_input.b.x, 18u)]);
    var var_2 = var_0;
    global0 = ~(~(~u_input.a));
    global1 = array<Struct_1, 7>();
    var var_3 = ~vec3<u32>(u_input.b.x, select(max(min(0u, u_input.b.x), _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 10862u)), u_input.a.x, !(!var_2.b.a)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 129927u, u_input.a.x, global0.x)) >> (abs(vec4<u32>(global0.x, global0.x, u_input.b.x, global0.x)) % vec4<u32>(32u)), ~(~vec4<u32>(60937u, 51816u, global0.x, u_input.a.x))));
    let var_4 = select(select(vec4<i32>(-18243i, -1i, var_2.b.b.x, var_0.b.b.x), countOneBits(vec4<i32>(-100910i, 0i, -3224i, -33258i)) >> ((reverseBits(vec4<u32>(24194u, 4294967295u, var_3.x, global0.x)) ^ vec4<u32>(2863u, global0.x, var_3.x, 1u)) % vec4<u32>(32u)), !(!select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], var_0.c.a, global3[_wgslsmith_index_u32(global0.x, 18u)], true), vec4<bool>(var_2.b.a, false, var_0.c.a, var_1.x), false))), select(-var_2.c.b, max(countOneBits(_wgslsmith_sub_vec4_i32(var_2.c.b, var_2.c.b)), abs(~var_2.c.b)), !(!select(vec4<bool>(true, false, var_0.b.a, true), vec4<bool>(false, var_2.b.a, var_0.b.a, global3[_wgslsmith_index_u32(34050u, 18u)]), var_1.x))), !vec4<bool>(!select(true, var_2.b.a, var_1.x), global3[_wgslsmith_index_u32(1u, 18u)] & true, var_0.c.b.x >= _wgslsmith_sub_i32(var_2.c.b.x, 7741i), var_2.b.a));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-532f * var_0.a.x)), var_2.a.x)), _wgslsmith_dot_vec4_i32(var_2.b.b, vec4<i32>(var_4.x, -1i, _wgslsmith_sub_i32(var_2.b.b.x, var_0.b.b.x & 0i), 29543i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 409f, 1655f, -1240f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -668f), 1260f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1121f + -573f)))));
}

