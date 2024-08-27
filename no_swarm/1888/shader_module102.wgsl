struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(2861f, 1114f, 1470f, 422f), vec4<f32>(-248f, 265f, -574f, -549f), vec4<f32>(-2657f, 1000f, 653f, 1424f), vec4<f32>(-1934f, -369f, 1041f, -1228f), vec4<f32>(286f, -1248f, 1494f, 753f), vec4<f32>(-466f, 827f, -1000f, 1311f));

var<private> global1: array<bool, 23>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(49933u, 13833u), vec2<u32>(66511u, 5750u), vec2<u32>(5904u, 0u), vec2<u32>(45886u, 1u), vec2<u32>(45930u, 4294967295u), vec2<u32>(0u, 49991u), vec2<u32>(4294967295u, 0u), vec2<u32>(59721u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(79538u, 69421u), vec2<u32>(3407u, 0u), vec2<u32>(0u, 29535u), vec2<u32>(47574u, 9991u), vec2<u32>(19161u, 45836u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(4366u, 0u), vec2<u32>(71459u, 19574u), vec2<u32>(1129u, 19975u), vec2<u32>(4294967295u, 13355u), vec2<u32>(13675u, 24143u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1039u, 48441u));

var<private> global4: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> i32 {
    let var_0 = vec4<i32>(~select(39541i, min(_wgslsmith_add_i32(arg_0.d.a, -9431i), countOneBits(arg_1)), global4.x), 2147483647i, -(~arg_1), 1i);
    let var_1 = vec4<i32>(max(max(_wgslsmith_dot_vec3_i32(u_input.c.xyx, ~u_input.c.ywy), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, -7913i, 9789i, 2147483647i)), select(vec4<i32>(arg_1, 21103i, u_input.c.x, var_0.x), vec4<i32>(var_0.x, -2021i, 1i, 35049i), vec4<bool>(true, false, global4.x, global1[_wgslsmith_index_u32(36343u, 23u)])))), arg_0.d.a), ~abs(firstTrailingBit(arg_0.e.a)), select(~(-19430i), 0i, select(!(!global4.x), true, any(!global2.yx))), (arg_1 >> (u_input.d.x % 32u)) & -14080i);
    global0 = array<vec4<f32>, 6>();
    let var_2 = Struct_2(u_input.a, Struct_1(_wgslsmith_clamp_i32((var_0.x ^ -1i) | arg_0.d.a, ~(~(-75414i)), ~abs(u_input.b)), global4.x, _wgslsmith_f_op_f32(-1057f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 6u)]) + vec4<f32>(-353f, 1153f, 1102f, -1099f)), arg_0.e.d)), ~arg_2, arg_0.e, all(vec2<bool>(!(var_1.x != arg_0.d.a), any(vec2<bool>(global2.x, arg_0.a)))));
    global0 = array<vec4<f32>, 6>();
    return ~(~(_wgslsmith_mod_i32(u_input.b, min(9008i, -24395i)) | firstTrailingBit(~var_1.x)));
}

fn func_2() -> vec3<bool> {
    var var_0 = !vec2<bool>(false, func_3(Struct_3(global4.x, Struct_1(2147483647i, false, -664f, global0[_wgslsmith_index_u32(u_input.d.x, 6u)]), -629f, Struct_1(u_input.b, global2.x, -1312f, vec4<f32>(-1109f, 1348f, -564f, -2907f)), Struct_1(u_input.b, false, -589f, global0[_wgslsmith_index_u32(0u, 6u)])), min(u_input.b, 2147483647i), u_input.d.x >> (u_input.d.x % 32u)) == ~(~u_input.a));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(681f, -1708f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(1184f, _wgslsmith_f_op_f32(f32(-1f) * -695f))), _wgslsmith_f_op_f32(select(-1350f, -435f, any(vec4<bool>(global2.x, true, var_0.x, global2.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-392f, 1307f)))))), true))));
    global4 = !(!(!global2.xx));
    global2 = !select(!(!select(vec3<bool>(var_0.x, var_0.x, global2.x), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 23u)], false), vec3<bool>(true, global4.x, false))), vec3<bool>(global4.x, all(select(vec2<bool>(false, true), global2.zy, global2.yz)), true), global4.x);
    let var_2 = Struct_2(1i, Struct_1(u_input.c.x >> (4294967295u % 32u), !(!select(global1[_wgslsmith_index_u32(0u, 23u)], true, global4.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-108f * var_1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1333f + -557f), var_1.x, _wgslsmith_f_op_f32(trunc(-935f)), var_1.x))), ~_wgslsmith_div_u32(select(abs(58146u), ~u_input.d.x, global1[_wgslsmith_index_u32(u_input.d.x << (u_input.d.x % 32u), 23u)]), ~u_input.d.x), Struct_1(-58611i, true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 612f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1597f), _wgslsmith_f_op_f32(-700f - -1452f), -788f))), false);
    return select(select(vec3<bool>(var_2.d.b, var_2.a <= abs(-1i), any(vec4<bool>(global1[_wgslsmith_index_u32(11100u, 23u)], false, false, false))), !select(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 23u)], var_0.x, global4.x), select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, true, true), vec3<bool>(global4.x, global4.x, global1[_wgslsmith_index_u32(u_input.d.x, 23u)])), any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 23u)], false, false))), select(!select(vec3<bool>(var_2.d.b, global2.x, true), vec3<bool>(global4.x, var_0.x, global1[_wgslsmith_index_u32(1u, 23u)]), global1[_wgslsmith_index_u32(var_2.c, 23u)]), vec3<bool>(var_2.e, !global2.x, false), vec3<bool>(false, true, global4.x))), vec3<bool>(!select(var_2.a == -53924i, all(vec3<bool>(global4.x, false, true)), var_1.x < 494f), !any(!vec3<bool>(false, global2.x, true)), !var_2.b.b), !(!select(!vec3<bool>(var_2.e, global2.x, global1[_wgslsmith_index_u32(0u, 23u)]), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, true, true), true), select(vec3<bool>(global4.x, false, true), vec3<bool>(var_0.x, var_2.d.b, var_0.x), var_0.x))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: f32) -> f32 {
    let var_0 = ~38512u;
    global1 = array<bool, 23>();
    var var_1 = _wgslsmith_mod_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(0u, 0u, var_0)), select(~vec3<u32>(var_0, u_input.d.x, var_0), vec3<u32>(1838u, var_0, 1u), arg_0.x | true), firstTrailingBit(~vec3<u32>(4294967295u, u_input.d.x, var_0)))), select(vec3<u32>(_wgslsmith_div_u32(1u, 39944u), ~_wgslsmith_mult_u32(4294967295u, u_input.d.x), _wgslsmith_clamp_u32(firstLeadingBit(0u), 0u, u_input.d.x)), ~(~(vec3<u32>(u_input.d.x, var_0, 0u) & vec3<u32>(u_input.d.x, 4294967295u, var_0))), !func_2()));
    return _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(ceil(-342f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 23u)], false, true, false), Struct_3(true, Struct_1(1i, global1[_wgslsmith_index_u32(u_input.d.x, 23u)], -1000f, vec4<f32>(-686f, 258f, 1868f, 1295f)), -824f, Struct_1(u_input.a, global2.x, 249f, vec4<f32>(-1000f, 201f, 194f, 475f)), Struct_1(u_input.b, true, 138f, vec4<f32>(-1126f, 563f, 1000f, -2139f))), -1318f)), _wgslsmith_f_op_f32(f32(-1f) * -398f), global1[_wgslsmith_index_u32(0u, 23u)] || global4.x)), _wgslsmith_f_op_f32(f32(-1f) * -285f), -2332f))));
}

