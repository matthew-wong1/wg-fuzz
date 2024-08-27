struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18>;

var<private> global1: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global2: array<u32, 16> = array<u32, 16>(22545u, 22450u, 4294967295u, 89266u, 62289u, 26494u, 7059u, 0u, 56285u, 27411u, 66972u, 76005u, 21110u, 19626u, 0u, 24465u);

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<bool>(true, false, false, false), true, vec3<bool>(false, false, true), 1i), Struct_1(vec4<bool>(false, true, false, false), false, vec3<bool>(true, false, false), -54117i), Struct_1(vec4<bool>(true, true, true, false), false, vec3<bool>(true, true, true), i32(-2147483648)), Struct_1(vec4<bool>(true, false, true, false), false, vec3<bool>(true, true, false), 2147483647i), Struct_1(vec4<bool>(false, true, true, true), true, vec3<bool>(true, false, false), 61753i), Struct_1(vec4<bool>(false, false, false, false), true, vec3<bool>(false, false, false), 2147483647i), Struct_1(vec4<bool>(true, true, false, false), false, vec3<bool>(false, true, true), 3227i), Struct_1(vec4<bool>(false, true, false, true), false, vec3<bool>(false, false, false), 2147483647i), Struct_1(vec4<bool>(true, false, true, false), true, vec3<bool>(true, true, true), -33606i), Struct_1(vec4<bool>(false, true, true, true), true, vec3<bool>(true, false, true), 1i), Struct_1(vec4<bool>(false, true, false, false), false, vec3<bool>(false, true, true), 18656i), Struct_1(vec4<bool>(true, true, true, true), true, vec3<bool>(false, false, false), -1i), Struct_1(vec4<bool>(false, true, false, false), false, vec3<bool>(false, false, false), 1i), Struct_1(vec4<bool>(true, true, true, true), true, vec3<bool>(true, false, false), 33521i), Struct_1(vec4<bool>(true, false, false, true), true, vec3<bool>(true, true, true), -25885i), Struct_1(vec4<bool>(false, true, true, false), true, vec3<bool>(false, true, false), 1i), Struct_1(vec4<bool>(false, false, false, false), false, vec3<bool>(true, true, true), 89255i), Struct_1(vec4<bool>(true, false, true, false), true, vec3<bool>(false, true, true), -2692i), Struct_1(vec4<bool>(true, false, false, false), false, vec3<bool>(true, false, true), 1i), Struct_1(vec4<bool>(true, true, true, false), true, vec3<bool>(true, true, true), 31616i), Struct_1(vec4<bool>(true, false, true, true), true, vec3<bool>(false, false, true), 50152i), Struct_1(vec4<bool>(true, false, false, false), false, vec3<bool>(false, false, true), 2147483647i), Struct_1(vec4<bool>(false, false, true, true), false, vec3<bool>(false, true, false), -29460i), Struct_1(vec4<bool>(false, true, false, false), true, vec3<bool>(true, true, false), i32(-2147483648)), Struct_1(vec4<bool>(true, false, true, false), true, vec3<bool>(false, true, true), 2147483647i), Struct_1(vec4<bool>(true, true, false, false), false, vec3<bool>(true, true, true), 5052i), Struct_1(vec4<bool>(true, true, true, true), false, vec3<bool>(false, true, false), 2147483647i), Struct_1(vec4<bool>(true, true, false, false), true, vec3<bool>(false, false, false), -1i), Struct_1(vec4<bool>(false, true, true, true), true, vec3<bool>(false, true, false), 1i));

var<private> global4: u32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2125f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1742f) - _wgslsmith_div_f32(1338f, 757f))), -874f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1490f)))), _wgslsmith_f_op_f32(trunc(1594f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1000f, 770f, arg_2.a))))))), arg_3.c));
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>((2147483647i | arg_0.x) << (~57654u % 32u), countOneBits(arg_1), _wgslsmith_mod_i32(arg_0.x, select(arg_3.d, -1i, arg_3.c.x)), arg_0.x) | vec4<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(u_input.b.x, select(10509i, arg_0.x, arg_2.a)), 41201i, -37750i), vec4<i32>(countOneBits(-arg_1), arg_0.x, arg_1, _wgslsmith_dot_vec2_i32(~arg_0, arg_0 & vec2<i32>(-18029i, arg_0.x))), _wgslsmith_clamp_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(34183i, arg_3.d, u_input.b.x, arg_1) >> (u_input.d % vec4<u32>(32u)), vec4<i32>(-19672i, -10981i, arg_1, -53432i) >> (vec4<u32>(arg_2.b.x, 1220u, u_input.d.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2.b.x, 16u)], 16u)]) % vec4<u32>(32u)), vec4<i32>(arg_3.d, arg_0.x, -49884i, -30245i) << (u_input.d % vec4<u32>(32u)))), ~(abs(vec4<i32>(0i, -845i, 0i, arg_0.x)) ^ (vec4<i32>(arg_3.d, arg_3.d, 7142i, arg_0.x) << (u_input.d % vec4<u32>(32u)))), ~(~vec4<i32>(-2147483647i, arg_0.x, -1i, u_input.e)) & -(vec4<i32>(arg_1, u_input.e, arg_1, arg_3.d) >> (vec4<u32>(9317u, 35666u, u_input.a.x, 0u) % vec4<u32>(32u)))));
    let var_2 = arg_3;
    let var_3 = var_0.x;
    var var_4 = arg_3.a.xw;
    return any(!select(vec2<bool>(arg_3.c.x, true), vec2<bool>(true, true), all(vec4<bool>(true, false, false, arg_2.a))));
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    global0 = array<vec2<u32>, 18>();
    let var_0 = Struct_1(vec4<bool>(all(arg_0) && arg_0.x, !(!arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(570f + 833f) - 509f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1618f, 130f, true))), arg_0.x), all(vec2<bool>(false, true)), select(vec3<bool>(all(arg_0), false, func_3(~vec2<i32>(0i, -27525i), ~u_input.c, Struct_2(false, vec3<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 16u)], 12302u, u_input.d.x)), Struct_1(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), true, arg_0, u_input.e))), vec3<bool>(true, true, !arg_0.x), select(select(vec3<bool>(false, arg_0.x, false), !arg_0, !arg_0.x), vec3<bool>(select(arg_0.x, true, arg_0.x), !arg_0.x, false), all(!vec2<bool>(arg_0.x, arg_0.x)))), u_input.b.x);
    var var_1 = global0[_wgslsmith_index_u32(u_input.d.x, 18u)];
    var var_2 = u_input.b.x;
    let var_3 = abs(vec2<u32>(u_input.d.x, 1u));
    return firstTrailingBit(~1i);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_3(2147483647i);
    let var_1 = abs(_wgslsmith_div_i32(func_2(vec3<bool>(true, true, true)), select(-arg_0.x, -u_input.e, any(global1[_wgslsmith_index_u32(35372u, 25u)])))) | -u_input.b.x;
    var var_2 = ~select(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-8290i, var_0.a, 0i, var_0.a) & reverseBits(vec4<i32>(arg_0.x, 48434i, 6936i, -56474i)), _wgslsmith_div_vec4_i32(vec4<i32>(50352i, arg_0.x, 344i, var_0.a), vec4<i32>(2147483647i, var_0.a, var_1, arg_0.x)) & _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, -29892i, var_0.a, var_0.a), vec4<i32>(arg_0.x, var_0.a, 0i, var_0.a)), vec4<i32>(reverseBits(2147483647i), var_1, abs(-5169i), min(1i, 18375i))), vec4<i32>(-1i) * -(vec4<i32>(-23646i, u_input.b.x, 15362i, u_input.b.x) & vec4<i32>(1i, arg_0.x, arg_0.x, u_input.c)), arg_1.a && arg_1.a);
    let var_3 = global0[_wgslsmith_index_u32(arg_1.b.x, 18u)];
    var var_4 = arg_1;
    return (4294967295u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(max(14193u, 4294967295u), 16u)], 16u)] % 32u)) ^ u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~func_1(_wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, 0i, -10662i) << (_wgslsmith_sub_vec3_u32(vec3<u32>(63623u, 54584u, 1u), u_input.d.yww) % vec3<u32>(32u)), u_input.b ^ abs(vec3<i32>(-5017i, u_input.e, -4132i))), Struct_2(u_input.e == -1i, u_input.d.wzz)), 16u)], 16u)];
    var var_0 = Struct_2(true, ~abs(vec3<u32>(_wgslsmith_mult_u32(37077u, 20348u), 1u, 71090u << (1u % 32u))));
    global4 = reverseBits(global2[_wgslsmith_index_u32(~0u, 16u)]);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1347f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(530f, -484f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-223f * _wgslsmith_f_op_f32(f32(-1f) * -509f))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(899f + -1050f))))));
    var var_3 = -41485i;
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(692f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-196f)) - _wgslsmith_f_op_f32(f32(-1f) * -784f))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(countOneBits(u_input.a.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(36013u, 48058u) << ((vec2<u32>(global2[_wgslsmith_index_u32(0u, 16u)], u_input.d.x) << (u_input.a.zx % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]), _wgslsmith_mod_u32(u_input.d.x, u_input.d.x)))));
}

