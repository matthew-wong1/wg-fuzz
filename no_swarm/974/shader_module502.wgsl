struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(284f, -206f, -255f, 676f), vec4<f32>(737f, 437f, -966f, -688f), vec4<f32>(-102f, 968f, 177f, -1000f), vec4<f32>(631f, -330f, -532f, -1241f), vec4<f32>(849f, -316f, 145f, 653f), vec4<f32>(178f, 1629f, 473f, 629f), vec4<f32>(-615f, -1603f, 1000f, 536f), vec4<f32>(-1779f, -406f, -391f, 1112f), vec4<f32>(1745f, 544f, 133f, -1000f), vec4<f32>(-1371f, 1187f, 469f, 468f), vec4<f32>(-758f, 238f, -812f, 1360f), vec4<f32>(-1000f, -1000f, -842f, -1012f), vec4<f32>(573f, -286f, 276f, -2675f));

var<private> global1: array<bool, 16> = array<bool, 16>(false, true, false, false, true, true, false, true, false, true, false, false, true, false, true, true);

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<f32>(1334f, 1693f, -573f)), Struct_1(vec3<f32>(1728f, -1164f, 1043f)), Struct_1(vec3<f32>(491f, -727f, -1204f)));

var<private> global3: vec3<u32> = vec3<u32>(1u, 3762u, 7203u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<bool>) -> f32 {
    var var_0 = ~max(select(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -18088i), vec4<i32>(u_input.c.x, 0i, 14755i, 1i)), abs(vec4<i32>(u_input.c.x, 1i, u_input.c.x, -41168i)) ^ vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.c.x), arg_2), ~vec4<i32>(-2147483647i, _wgslsmith_mult_i32(u_input.c.x, u_input.c.x), 2147483647i, 15047i));
    var var_1 = 93286u;
    let var_2 = 291f;
    global2 = array<Struct_1, 3>();
    global1 = array<bool, 16>();
    return arg_1.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec3<bool>) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(reverseBits(reverseBits(~(~(~13584u)))), 3u)];
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 3u)];
    var var_2 = global2[_wgslsmith_index_u32(u_input.a.x, 3u)];
    var var_3 = global2[_wgslsmith_index_u32(global3.x << (~global3.x % 32u), 3u)];
    global2 = array<Struct_1, 3>();
    return arg_2.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    global0 = array<vec4<f32>, 13>();
    var var_0 = global2[_wgslsmith_index_u32(u_input.b, 3u)];
    var var_1 = vec2<i32>(u_input.c.x, reverseBits(select(u_input.c.x, 27889i, arg_1.x) & abs(u_input.c.x))) >> ((global3.zz | firstLeadingBit(vec2<u32>(~4294967295u, 43472u))) % vec2<u32>(32u));
    let var_2 = arg_3;
    var var_3 = Struct_1(arg_3.a);
    return _wgslsmith_mult_u32(_wgslsmith_mod_u32(29781u, min(95248u, ~(u_input.b >> (4294967295u % 32u)))), ~(~1u));
}

fn func_2() -> f32 {
    var var_0 = -2147483647i;
    global3 = vec3<u32>(~_wgslsmith_div_u32(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global3.x, global3.x), u_input.a.ywz) | ~71983u), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(0u & u_input.d, 13u)]) - vec4<f32>(_wgslsmith_f_op_f32(691f - 1421f), _wgslsmith_f_op_f32(-1790f - -107f), -580f, _wgslsmith_div_f32(294f, 271f))), !vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(64320u, 16u)], global1[_wgslsmith_index_u32(global3.x, 16u)])), global1[_wgslsmith_index_u32(0u, 16u)], all(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)], true)), func_3(vec2<u32>(4294967295u, u_input.a.x), vec4<i32>(-2147483647i, -21751i, u_input.c.x, -60573i), vec3<bool>(true, true, true))), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(u_input.a.zxx), min(vec3<u32>(32866u, u_input.d, global3.x), u_input.a.zyw)), 16u)], all(!vec4<bool>(global1[_wgslsmith_index_u32(global3.x, 16u)], false, false, false)), true | global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.x, 2541u), 16u)], !any(vec2<bool>(true, global1[_wgslsmith_index_u32(global3.x, 16u)]))), global2[_wgslsmith_index_u32(70174u, 3u)]), _wgslsmith_dot_vec4_u32(~min(vec4<u32>(u_input.a.x, global3.x, u_input.b, u_input.a.x) | vec4<u32>(92625u, 82244u, 4294967295u, global3.x), select(vec4<u32>(27478u, global3.x, global3.x, u_input.d), u_input.a, vec4<bool>(true, true, global1[_wgslsmith_index_u32(72066u, 16u)], false))), countOneBits(vec4<u32>(global3.x, 0u, 16519u, u_input.b) & u_input.a) >> (vec4<u32>(func_4(global0[_wgslsmith_index_u32(0u, 13u)], vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(u_input.d, 16u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(global3.x, 16u)], global1[_wgslsmith_index_u32(global3.x, 16u)]), global2[_wgslsmith_index_u32(46902u, 3u)]), global3.x, _wgslsmith_div_u32(u_input.a.x, u_input.d), global3.x | 1u) % vec4<u32>(32u))));
    var var_1 = select(vec2<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.d, ~17678u), 16u)], true), !(!vec2<bool>(all(vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)])), true)), select(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.zx, vec2<u32>(0u, 4294967295u)), 16u)], true), vec2<bool>(global1[_wgslsmith_index_u32(3628u, 16u)], true), true));
    var var_2 = global2[_wgslsmith_index_u32(~(~(~global3.x ^ ~_wgslsmith_clamp_u32(67866u, global3.x, global3.x))), 3u)];
    let var_3 = -1i;
    return 797f;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = vec2<f32>(arg_1.a.x, -378f);
    global2 = array<Struct_1, 3>();
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-648f)) * _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(arg_1.a.x * 669f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 495f)))) * arg_0.x));
    var var_1 = arg_1;
    var_1 = arg_1;
    return _wgslsmith_sub_i32(u_input.c.x, ~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 16>();
    global0 = array<vec4<f32>, 13>();
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(max(1851f, 943f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -244f, -1580f))), select(vec4<bool>(global1[_wgslsmith_index_u32(58169u, 16u)], true, global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(45559u, 16u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(global3.x, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)], false), global1[_wgslsmith_index_u32(global3.x, 16u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-798f * 355f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1027f - 144f)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(772f - 331f)), _wgslsmith_f_op_f32(round(1f)))));
    global1 = array<bool, 16>();
    var var_1 = u_input.c;
    let var_2 = !any(select(select(!vec4<bool>(global1[_wgslsmith_index_u32(global3.x, 16u)], true, false, true), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 16u)], global1[_wgslsmith_index_u32(0u, 16u)], true, global1[_wgslsmith_index_u32(global3.x, 16u)]), vec4<bool>(global1[_wgslsmith_index_u32(global3.x, 16u)], true, false, global1[_wgslsmith_index_u32(21818u, 16u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(global3.x, 16u)], true, global1[_wgslsmith_index_u32(global3.x, 16u)])), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 16u)], false, true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 16u)], false, global1[_wgslsmith_index_u32(global3.x, 16u)]), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(1u, 16u)]))), select(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(global3.x, 16u)]), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(31073u, 16u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), true), !global1[_wgslsmith_index_u32(~u_input.a.x, 16u)]));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(global3.x), ~abs(u_input.a.x)), 3u)];
    global0 = array<vec4<f32>, 13>();
    global2 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, vec2<i32>(var_0, ~u_input.c.x), ~select(global3.yz, firstTrailingBit(vec2<u32>(u_input.a.x, 1u) << (vec2<u32>(4294967295u, 59161u) % vec2<u32>(32u))), true));
}

