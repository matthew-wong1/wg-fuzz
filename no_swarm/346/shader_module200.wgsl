struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(34773i, -1i, -18210i, i32(-2147483648), 50563i, 1i, -47511i, -12550i);

var<private> global1: f32;

var<private> global2: vec3<f32> = vec3<f32>(-1650f, 665f, -1000f);

var<private> global3: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global4: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<f32>(908f, 444f)), Struct_1(vec2<f32>(1223f, 1095f)), Struct_1(vec2<f32>(-551f, 1017f)), Struct_1(vec2<f32>(-1000f, 1155f)), Struct_1(vec2<f32>(1014f, -1504f)), Struct_1(vec2<f32>(452f, 1789f)), Struct_1(vec2<f32>(-738f, 1610f)), Struct_1(vec2<f32>(-804f, -1000f)), Struct_1(vec2<f32>(505f, 1934f)), Struct_1(vec2<f32>(282f, -946f)), Struct_1(vec2<f32>(-1230f, -604f)), Struct_1(vec2<f32>(-586f, 1337f)), Struct_1(vec2<f32>(553f, -810f)), Struct_1(vec2<f32>(-1246f, 274f)), Struct_1(vec2<f32>(-1000f, 128f)), Struct_1(vec2<f32>(1000f, -483f)), Struct_1(vec2<f32>(254f, 1158f)), Struct_1(vec2<f32>(1107f, -629f)), Struct_1(vec2<f32>(-114f, 1106f)), Struct_1(vec2<f32>(1241f, 840f)), Struct_1(vec2<f32>(-558f, -1871f)), Struct_1(vec2<f32>(280f, 509f)), Struct_1(vec2<f32>(1362f, -309f)), Struct_1(vec2<f32>(177f, 1000f)), Struct_1(vec2<f32>(838f, -458f)), Struct_1(vec2<f32>(-637f, 163f)), Struct_1(vec2<f32>(722f, -308f)), Struct_1(vec2<f32>(178f, -1011f)), Struct_1(vec2<f32>(-695f, -712f)), Struct_1(vec2<f32>(1448f, -102f)), Struct_1(vec2<f32>(1607f, 1780f)), Struct_1(vec2<f32>(139f, -232f)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = -62132i;
    var var_1 = ~u_input.a.x;
    var var_2 = firstLeadingBit(abs(1u));
    let var_3 = 4294967295u;
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-226f, global2.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 248f))))))), Struct_1(_wgslsmith_f_op_vec2_f32(global2.zy - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.yy), global2.yz))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global2.x, 734f), _wgslsmith_f_op_f32(trunc(-674f))))), select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x))) <= -910f, (all(vec4<bool>(false, true, false, true)) | true) | !(24959u != var_3), true));
    return _wgslsmith_f_op_f32(-global2.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global2.zy);
    global1 = _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(f32(-1f) * -1063f));
    global0 = array<i32, 8>();
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-414f, var_0.a.x) * global2.xy))), vec2<f32>(global2.x, _wgslsmith_f_op_f32(func_3(0i))))));
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 8u)];
    return global4[_wgslsmith_index_u32(max((u_input.a.x | (~u_input.a.x & 34346u)) | 1699u, ~_wgslsmith_mult_u32(u_input.a.x, ~35821u)), 32u)];
}

fn func_4(arg_0: Struct_2) -> u32 {
    global0 = array<i32, 8>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, arg_0.c.a.x)))), -716f, 879f), vec3<f32>(-497f, 1332f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-287f - -337f) * _wgslsmith_f_op_f32(-global2.x))))), true));
    let var_1 = Struct_1(vec2<f32>(arg_0.b.a.x, -1393f));
    let var_2 = ~_wgslsmith_add_vec3_i32(-vec3<i32>(-17658i, global0[_wgslsmith_index_u32(22736u, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)]) | reverseBits(~vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], -35642i)), vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-41879i, 0i), min(vec2<i32>(global0[_wgslsmith_index_u32(0u, 8u)], 2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], 12146i))), 2147483647i, _wgslsmith_mod_i32(~(-992i), ~global0[_wgslsmith_index_u32(u_input.a.x, 8u)])));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-107f, 389f, global2.x, var_1.a.x) + vec4<f32>(-1834f, -183f, -1000f, var_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_0.x, -1347f, global2.x))))))));
    return 585u;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global0 = array<i32, 8>();
    let var_0 = u_input.a.x;
    var var_1 = ~func_4(Struct_2(func_2(), func_2(), arg_2.a, arg_2.d));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -456f)))), 607f));
    let var_3 = _wgslsmith_div_u32(~0u, 17168u);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c.a) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(236f, var_2.x)))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    global1 = 938f;
    let var_0 = !vec4<bool>(-109f >= func_2().a.x, any(select(select(vec2<bool>(arg_1.x, arg_1.x), arg_1.yy, true), !global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)])), true, true);
    let var_1 = arg_2.a.x;
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), -reverseBits(vec3<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 8u)], 1i), 1i, _wgslsmith_add_i32(-17789i, global0[_wgslsmith_index_u32(53085u, 8u)]))));
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 8u)])), _wgslsmith_f_op_f32(f32(-1f) * -667f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x))))));
    return func_1(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec3_i32(var_2, var_2 << (vec3<u32>(20396u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))))), Struct_2(func_2(), func_2(), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.a)) * _wgslsmith_f_op_vec2_f32(arg_0.a + arg_0.a))), arg_1.x), Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a - vec2<f32>(-591f, -1072f)), _wgslsmith_div_vec2_f32(arg_0.a, vec2<f32>(558f, 1349f)))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, 213f)), arg_0.a, vec2<bool>(arg_1.x, arg_1.x)))), arg_2, true)).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(~u_input.a.x, 32u)];
    var var_1 = abs(1i);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-681f, _wgslsmith_f_op_f32(func_5(Struct_1(vec2<f32>(-1434f, 153f)), vec3<bool>(true, false, false), func_1(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], var_0.a.x, Struct_2(global4[_wgslsmith_index_u32(82289u, 32u)], Struct_1(vec2<f32>(var_0.a.x, 1045f)), Struct_1(vec2<f32>(var_0.a.x, var_0.a.x)), false), Struct_2(global4[_wgslsmith_index_u32(4294967295u, 32u)], global4[_wgslsmith_index_u32(u_input.a.x, 32u)], global4[_wgslsmith_index_u32(u_input.a.x, 32u)], false)))))));
    var var_3 = Struct_2(func_1(23767i, -933f, Struct_2(global4[_wgslsmith_index_u32(u_input.a.x, 32u)], global4[_wgslsmith_index_u32(u_input.a.x, 32u)], Struct_1(vec2<f32>(var_0.a.x, global2.x)), all(vec2<bool>(true, true))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, 682f), var_0.a, global3[_wgslsmith_index_u32(u_input.a.x, 12u)]))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(2311f, var_2.x) * var_0.a)), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, -260f), var_2)), true)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, global2.x)))) - var_2)), global4[_wgslsmith_index_u32(53351u, 32u)], !all(vec4<bool>(true, true, false, false)));
    var var_4 = !(all(select(!vec3<bool>(var_3.d, false, var_3.d), vec3<bool>(var_3.d, false, false), vec3<bool>(true, true, var_3.d))) && all(!select(vec2<bool>(var_3.d, var_3.d), global3[_wgslsmith_index_u32(u_input.a.x, 12u)], false)));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(1u, 8u)], vec3<f32>(1560f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.a.x))))), _wgslsmith_f_op_f32(func_3(~1i))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(78029u, 33695u)) << (u_input.a.yz % vec2<u32>(32u)), ~vec2<u32>(36596u, u_input.a.x)), 8u)] ^ ~_wgslsmith_add_i32(countOneBits(1819i), -1i), u_input.a.x);
}

