struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(726f, -1248f, 1063f, 475f, 751f, -1000f, -194f, 822f, -1326f, -315f, 1372f, -726f, 336f, 963f, 900f, -1000f, -283f, 842f, -699f, 165f, 1178f, -578f, 868f);

var<private> global1: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(1u, 0u, 0u, 8284u), vec4<u32>(4294967295u, 0u, 63629u, 28374u), vec4<u32>(0u, 4294967295u, 4294967295u, 18306u), vec4<u32>(37260u, 3476u, 6969u, 1u), vec4<u32>(98237u, 4294967295u, 1u, 18492u));

var<private> global2: array<bool, 8>;

var<private> global3: Struct_1 = Struct_1(4294967295u, 6971i, 127f, vec4<i32>(2147483647i, -1i, -41449i, 19047i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global0 = array<f32, 23>();
    global2 = array<bool, 8>();
    global2 = array<bool, 8>();
    let var_0 = arg_0;
    return global3.a;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> bool {
    global2 = array<bool, 8>();
    global3 = Struct_1(~(~1u), ~1i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(func_3(vec3<f32>(global0[_wgslsmith_index_u32(1u, 23u)], -1590f, global3.c)), 23u)])))), vec4<i32>(global3.d.x, arg_0.c | ((arg_1.c << (arg_0.d.x % 32u)) << (~0u % 32u)), _wgslsmith_div_i32(-(u_input.a.x | 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.e.x, arg_1.c), global3.d.zz)), 2147483647i));
    let var_0 = Struct_1(~(~(~10500u)), -1i, -560f, vec4<i32>(~(~(u_input.a.x >> (17436u % 32u))), 1i, min(~(-global3.b), _wgslsmith_dot_vec4_i32(~global3.d, _wgslsmith_sub_vec4_i32(global3.d, vec4<i32>(u_input.b, arg_0.c, global3.d.x, -22527i)))), _wgslsmith_dot_vec3_i32(abs(global3.d.ywy), vec3<i32>(global3.d.x | 0i, -arg_0.a, u_input.b))));
    global1 = array<vec4<u32>, 5>();
    var var_1 = 20943u;
    return true;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>) -> Struct_1 {
    return Struct_1(14107u, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(global3.b, 40786i), ~reverseBits(-vec2<i32>(global3.b, global3.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.c, _wgslsmith_f_op_f32(f32(-1f) * -582f)))), vec4<i32>(-2147483647i, u_input.a.x, i32(-1i) * -_wgslsmith_clamp_i32(73381i, global3.b, global3.d.x), u_input.a.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>) -> Struct_2 {
    global1 = array<vec4<u32>, 5>();
    var var_0 = Struct_2(-1i, vec2<f32>(global0[_wgslsmith_index_u32(global3.a, 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3.a, 23u)] * arg_1.x) * _wgslsmith_div_f32(1f, global3.c))), global3.d.x, ~(~(~vec2<u32>(57706u, 4294967295u))), abs(u_input.a));
    var var_1 = !arg_0.x;
    var var_2 = func_4(!(!all(vec2<bool>(global2[_wgslsmith_index_u32(76721u, 8u)], arg_0.x)) || func_2(Struct_2(u_input.a.x, var_0.b, -18061i, var_0.d, vec3<i32>(0i, var_0.e.x, -3521i)), Struct_2(36306i, var_0.b, -2147483647i, var_0.d, u_input.a), true)), ~firstTrailingBit(vec3<u32>(5415u, global3.a, global3.a) | vec3<u32>(var_0.d.x, 1u, var_0.d.x)) | vec3<u32>(~_wgslsmith_mod_u32(1u, 45657u), 1u << (global3.a % 32u), global3.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1.yz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(959f, 443f))))) * _wgslsmith_f_op_vec2_f32(arg_1.xy + var_0.b)));
    return Struct_2(-2147483647i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)), _wgslsmith_f_op_vec2_f32(-arg_1.xz)), global3.b, select(~(~firstTrailingBit(vec2<u32>(var_0.d.x, 4294967295u))), ~(~(~var_0.d)), select(vec2<bool>(true, true), !vec2<bool>(false, arg_0.x), select(!vec2<bool>(true, arg_0.x), arg_0.xy, !arg_0.zz))), ~u_input.a);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(false, !select(!global2[_wgslsmith_index_u32(arg_2.a, 8u)], global2[_wgslsmith_index_u32(arg_2.a, 8u)], arg_2.c <= _wgslsmith_f_op_f32(floor(1000f))));
    global1 = array<vec4<u32>, 5>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c, -1152f, -180f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c, arg_2.c, global3.c) * vec3<f32>(global0[_wgslsmith_index_u32(40980u, 23u)], global3.c, arg_2.c))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_2.a, 23u)], arg_2.c, 1144f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.b.x, 544f, arg_0.b.x)))), select(!vec3<bool>(true, arg_1, var_0.x), !vec3<bool>(global2[_wgslsmith_index_u32(arg_0.d.x, 8u)], arg_1, true), vec3<bool>(true, false, arg_1)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, arg_0.b.x, global3.c))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-661f)), -246f, -675f), vec3<bool>(all(var_0), true, var_0.x)))));
    global2 = array<bool, 8>();
    var var_2 = arg_2;
    return func_4(true, _wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(100174u, var_2.a), var_2.a, 4294967295u), reverseBits(vec3<u32>(global3.a, var_2.a, ~126757u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 5>();
    let var_0 = vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3.a, ~118041u, global3.a), 23u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-181f, global3.c)))));
    global1 = array<vec4<u32>, 5>();
    global2 = array<bool, 8>();
    global3 = func_5(func_1(vec3<bool>(global2[_wgslsmith_index_u32(global3.a, 8u)], true, global3.a >= ~global3.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, global3.c, 448f))), vec3<f32>(-486f, 1359f, 733f)) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(183f, global3.c), global3.c))), any(!vec2<bool>(global2[_wgslsmith_index_u32(global3.a, 8u)], true)) == any(select(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(93983u, 8u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(19974u, 8u)], false), vec2<bool>(true, global2[_wgslsmith_index_u32(25832u, 8u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(global3.a, 8u)])), all(vec2<bool>(true, global2[_wgslsmith_index_u32(9396u, 8u)])))), Struct_1(select(6005u, func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1662f, 1000f, 798f), vec3<f32>(global3.c, var_0.x, 456f), true))), global2[_wgslsmith_index_u32(~func_4(true, vec3<u32>(global3.a, global3.a, global3.a)).a, 8u)]), 95i, -144f, global3.d));
    global3 = Struct_1(4294967295u, 54318i, 1f, vec4<i32>(~min(14356i, ~1i), _wgslsmith_dot_vec4_i32(~global3.d, ~firstLeadingBit(vec4<i32>(-1i, global3.d.x, -21776i, 2147483647i))), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), ~_wgslsmith_add_i32(-2147483647i, -1i)));
    let var_1 = func_1(!(!vec3<bool>(true, false, u_input.a.x > u_input.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(819f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(61091u, global3.a, 0u), ~vec3<u32>(53715u, global3.a, global3.a)), 23u)], -646f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -133f))))));
    global1 = array<vec4<u32>, 5>();
    let var_2 = !(~global3.a != 35192u);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(!((global2[_wgslsmith_index_u32(var_1.d.x, 8u)] || global2[_wgslsmith_index_u32(global3.a, 8u)]) | any(vec4<bool>(false, var_2, global2[_wgslsmith_index_u32(var_1.d.x, 8u)], true))), ~(~vec3<u32>(var_1.d.x, 0u, 4294967295u)) | vec3<u32>(~global3.a, _wgslsmith_mult_u32(global3.a, 30977u), ~global3.a)).c, ~(~func_5(func_1(vec3<bool>(global2[_wgslsmith_index_u32(global3.a, 8u)], var_2, global2[_wgslsmith_index_u32(0u, 8u)]), vec3<f32>(var_0.x, 1000f, var_1.b.x)), global2[_wgslsmith_index_u32(global3.a, 8u)] | var_2, func_4(true, vec3<u32>(var_1.d.x, global3.a, var_1.d.x))).d.xw), ~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global3.a, var_1.d.x, 4294967295u, global3.a), _wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(var_1.d.x, 5u)]), _wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(global3.a, 5u)], vec4<u32>(0u, 2911u, 75953u, var_1.d.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(global3.a, global3.a, 30331u, global3.a), ~global1[_wgslsmith_index_u32(global3.a, 5u)])));
}

