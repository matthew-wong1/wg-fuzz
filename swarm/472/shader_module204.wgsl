struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<f32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(1i, 17156i, 2147483647i, -2990i, 0i, 10709i, -1i, 2147483647i, -1i, i32(-2147483648), 2147483647i, 2147483647i, 33845i, 1i, 5589i, -23257i, -45237i, -34509i, 21256i);

var<private> global1: f32;

var<private> global2: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(-40959i, 413i, 0i), vec3<i32>(2147483647i, -24458i, -12752i), vec3<i32>(-1i, -12795i, -1i), vec3<i32>(-56845i, -50457i, 97289i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(-39552i, 15677i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(1i, 0i, 0i), vec3<i32>(14293i, -25815i, 54621i), vec3<i32>(i32(-2147483648), -35131i, 0i), vec3<i32>(2147483647i, -6650i, 0i), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(6791i, 2147483647i, 22184i), vec3<i32>(0i, 1i, 34259i), vec3<i32>(2147483647i, 19507i, 26878i), vec3<i32>(24960i, 37789i, 0i), vec3<i32>(-1i, 1i, -912i), vec3<i32>(-2173i, 2147483647i, -1i), vec3<i32>(1i, -33659i, 12235i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1468f, -1000f), 1f, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(806f, -744f)), -326f, any(vec2<bool>(false, true))))));
    var var_1 = ~vec4<u32>(~(~43395u), arg_0, ~(~arg_0), _wgslsmith_add_u32(6736u, ~arg_0)) | countOneBits(_wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(arg_0, 1u, arg_0, arg_0)), vec4<u32>(25832u, arg_1, arg_0, abs(arg_1))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-782f, 422f, 792f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-109f, -503f, -740f) + vec3<f32>(111f, 508f, 317f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(440f, 717f, -1541f), vec3<f32>(1665f, -1015f, -548f), true)) - _wgslsmith_div_vec3_f32(vec3<f32>(-514f, 327f, -257f), vec3<f32>(498f, -538f, -142f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(162f, -1000f, 1550f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1024f, 266f, 1248f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-190f, 1318f, 476f), vec3<f32>(-1548f, 1000f, 447f), false))))));
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    return !(false | any(vec3<bool>(false, true, false))) || false;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> bool {
    global2 = array<vec3<i32>, 19>();
    var var_0 = arg_0;
    var var_1 = -(~select(vec2<i32>(u_input.c, _wgslsmith_clamp_i32(u_input.c, -1i, global0[_wgslsmith_index_u32(27700u, 19u)])), -vec2<i32>(global0[_wgslsmith_index_u32(arg_3.a, 19u)], 0i), all(vec4<bool>(true, false, true, true)) & true));
    var var_2 = Struct_3(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, abs(~31951u)), arg_3.a), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(194f + 721f), _wgslsmith_f_op_f32(479f * 1342f), _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, 1695f, var_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1321f, -901f, -2212f))), ~1i < _wgslsmith_clamp_i32(-2147483647i, -6441i, u_input.c))), arg_3, Struct_1(_wgslsmith_add_u32(~arg_3.a, 39194u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0))), any(select(vec4<bool>(func_3(1u, 30681u), true, select(true, true, false), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, false, true), true), arg_2 != -136f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(496f, arg_2)), _wgslsmith_f_op_f32(2141f * 666f))))));
    var var_3 = arg_2;
    return !((global0[_wgslsmith_index_u32(countOneBits(0u), 19u)] > -2147483647i) & var_2.d);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = vec3<i32>(-1979i, 1i, global0[_wgslsmith_index_u32(arg_2.b.a >> (arg_1.c.a % 32u), 19u)]);
    global0 = array<i32, 19>();
    var var_1 = Struct_3(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(48130u, 1u)), ~vec2<u32>(_wgslsmith_add_u32(arg_2.c.a, 0u), arg_3.a >> (4294967295u % 32u))), arg_2, _wgslsmith_f_op_vec2_f32(-arg_2.a.zx), false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)) + -525f))));
    var var_2 = var_0.zy;
    var var_3 = Struct_3(firstLeadingBit(u_input.b << (~arg_2.b.a % 32u)) >> ((~31583u | var_1.b.b.a) % 32u), var_1.b, arg_1.a.xx, -firstTrailingBit(-69623i | var_0.x) <= max(u_input.c, var_2.x), -146f);
    return firstTrailingBit(select(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.b.a, 84196u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, var_1.b.c.a), vec2<u32>(4294967295u, 0u))), 0u | ~u_input.a, all(arg_0))) ^ var_1.a;
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    let var_0 = u_input.a;
    global1 = arg_0.x;
    let var_1 = ~(~firstLeadingBit(vec2<u32>(1u, ~4294967295u)));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, func_4(vec2<bool>(func_2(arg_0, ~vec2<u32>(u_input.b, 12808u), _wgslsmith_f_op_f32(f32(-1f) * -1844f), Struct_1(var_0)), true & all(vec3<bool>(true, false, true))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) - vec3<f32>(arg_0.x, arg_0.x, arg_0.x)) * vec3<f32>(-1284f, arg_0.x, -1000f)), Struct_1(var_1.x), Struct_1(~7502u)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - 1731f), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(ceil(500f))), Struct_1(13151u), Struct_1(0u)), Struct_1(u_input.a | _wgslsmith_clamp_u32(16290u, var_1.x, u_input.b)))), 19u)];
    var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(~83373u)), 19u)];
    return ~(~_wgslsmith_mult_u32(~1u << (var_0 % 32u), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(8400u, ~_wgslsmith_mod_u32(~8078u, 49487u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 6685u), select(vec4<u32>(22117u, u_input.b, u_input.b, 0u), vec4<u32>(u_input.a, u_input.a, 4294967295u, 56218u), vec4<bool>(true, false, true, true)))), ~(~func_1(vec2<f32>(389f, 155f))));
    let var_1 = u_input.b << (_wgslsmith_add_u32(var_0.x, reverseBits(32851u)) % 32u);
    var var_2 = Struct_1(min(func_4(select(vec2<bool>(true, true), vec2<bool>(false, true), true), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-601f, 1657f, 1326f)), Struct_1(1u), Struct_1(var_0.x)), Struct_2(vec3<f32>(1026f, -1000f, 1073f), Struct_1(var_0.x), Struct_1(var_0.x)), Struct_1(1u)), _wgslsmith_mult_u32(~(~59356u), _wgslsmith_div_u32(48812u, ~var_1))));
    var var_3 = var_1;
    var var_4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(595f, -202f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1578f + -169f) - -330f))), -907f), Struct_1(_wgslsmith_mod_u32(50694u, u_input.a)), Struct_1(select(max(1u, var_0.x), ~0u, true) | ~20892u));
    var_2 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_clamp_i32(0i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(0u, 19u)], vec3<i32>(u_input.c, 29854i, u_input.c)), firstTrailingBit(u_input.c), 1i), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.yz, var_0.yz), 19u)]), -9260i, u_input.c, global0[_wgslsmith_index_u32(~(1u << (_wgslsmith_clamp_u32(0u, var_2.a, u_input.b) % 32u)), 19u)]), var_0.wz, ~vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(global0[_wgslsmith_index_u32(63626u, 19u)]), ~global0[_wgslsmith_index_u32(var_4.b.a, 19u)]), abs(global0[_wgslsmith_index_u32(var_1, 19u)]), ~max(u_input.c, u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -403f));
}

