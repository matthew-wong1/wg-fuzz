struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: Struct_4,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: array<i32, 2>;

var<private> global2: f32;

var<private> global3: array<u32, 29>;

var<private> global4: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(-1115f, 229f, 805f, -1674f), vec4<f32>(2366f, -860f, -2386f, -1023f), vec4<f32>(1000f, -375f, -281f, 806f), vec4<f32>(1383f, 948f, 308f, 259f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>) -> f32 {
    var var_0 = select(!(!select(select(vec4<bool>(false, true, arg_0.a.x, true), vec4<bool>(false, arg_0.a.x, true, false), vec4<bool>(arg_0.c, arg_0.c, false, arg_0.a.x)), select(vec4<bool>(arg_0.c, arg_0.c, arg_0.a.x, arg_0.c), vec4<bool>(arg_0.a.x, arg_0.c, arg_0.c, arg_0.c), true), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 2u)] == u_input.e)), vec4<bool>(!arg_0.a.x, false, true, true), !(!(!select(vec4<bool>(false, false, false, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, true, arg_0.a.x), true))));
    let var_1 = Struct_1(abs(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mod_i32(-1i, global1[_wgslsmith_index_u32(arg_0.b.x, 2u)])), reverseBits(u_input.d.x ^ -1i))), ~1u, abs(firstTrailingBit(_wgslsmith_add_i32(~u_input.c, global1[_wgslsmith_index_u32(max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30472u, 29u)], 29u)], 4294967295u), 2u)]))), select(select(vec3<i32>(7487i, ~(-29592i), 1287i), ~vec3<i32>(-1i, u_input.a.x, global1[_wgslsmith_index_u32(43521u, 2u)]) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b.x, 1u, arg_0.b.x), vec3<u32>(73807u, global3[_wgslsmith_index_u32(4294967295u, 29u)], 4294967295u)) % vec3<u32>(32u)), true), (select(vec3<i32>(1i, -36860i, -9716i), u_input.d.wxy, var_0.wwy) >> (vec3<u32>(arg_0.b.x, global3[_wgslsmith_index_u32(62251u, 29u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(56922u, 29u)], 29u)], 29u)], 29u)]) % vec3<u32>(32u))) << (arg_0.b % vec3<u32>(32u)), vec3<bool>(true, var_0.x, true)));
    var var_2 = -59150i;
    var_0 = vec4<bool>(arg_0.a.x | !((global1[_wgslsmith_index_u32(18206u, 2u)] & -5994i) == global1[_wgslsmith_index_u32(var_1.b, 2u)]), !(!(global3[_wgslsmith_index_u32(4294967295u, 29u)] != (global3[_wgslsmith_index_u32(80988u, 29u)] | 69094u))), arg_0.c, true);
    var var_3 = firstLeadingBit(~var_1.d);
    return 478f;
}

fn func_4(arg_0: Struct_5) -> i32 {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_f_op_f32(-arg_0.e.x), Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(1u, 2u)], -u_input.e), ~firstLeadingBit(-35938i)), firstLeadingBit(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.b.b, global3[_wgslsmith_index_u32(7373u, 29u)]), _wgslsmith_add_vec3_u32(vec3<u32>(31164u, arg_0.a, 18383u), vec3<u32>(arg_0.a, 1u, global3[_wgslsmith_index_u32(1u, 29u)]))), 29u)]), 0i, -arg_0.b.d));
    var var_1 = ~(~(~arg_0.a)) | 51420u;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * 431f));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + 2128f)), 603f, arg_0.c.b, _wgslsmith_f_op_f32(max(arg_0.c.b, -1095f))) * vec4<f32>(-674f, 728f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e.x, -685f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-247f - 176f) + _wgslsmith_f_op_f32(f32(-1f) * -183f)))));
    let var_3 = ~(~var_0.c.d.zy);
    return -var_3.x;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    global0 = array<Struct_3, 32>();
    let var_0 = Struct_1(507i, ~(_wgslsmith_sub_u32(4294967295u, 18334u ^ arg_0.x) << (global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.x, 29u)], 29u)], 29u)]), 29u)] % 32u)), _wgslsmith_mod_i32(-(-32476i | _wgslsmith_clamp_i32(-2147483647i, -2147483647i, -2147483647i)), u_input.e), ~vec3<i32>(min(u_input.c, _wgslsmith_mod_i32(2147483647i, -1i)), ~max(u_input.c, global1[_wgslsmith_index_u32(arg_0.x, 2u)]), ~(~u_input.a.x)));
    let var_1 = func_4(Struct_5(43457u, var_0, Struct_4(vec2<i32>(70628i, -var_0.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(389f, -1600f, -142f))), false, vec2<f32>(_wgslsmith_f_op_f32(-537f * -1212f), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(firstTrailingBit(global3[_wgslsmith_index_u32(arg_0.x, 29u)]), 32u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(1035f, -1237f, 1026f, -1000f) * global4[_wgslsmith_index_u32(0u, 4u)]))))));
    let var_2 = 1017f;
    var var_3 = (~vec3<u32>(4294967295u, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(var_0.b, 29u)], global3[_wgslsmith_index_u32(59146u, 29u)]), _wgslsmith_clamp_u32(var_0.b, global3[_wgslsmith_index_u32(24611u, 29u)], 27416u)) ^ ~(vec3<u32>(56674u, 45224u, var_0.b) | ~vec3<u32>(var_0.b, var_0.b, 1u))) ^ reverseBits(select(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, 4294967295u, global3[_wgslsmith_index_u32(4294967295u, 29u)]), arg_0.wwx)), arg_0.zyx, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(43181u, 2u)] >= u_input.d.x)));
    return _wgslsmith_f_op_f32(sign(-517f));
}

fn func_5(arg_0: vec4<bool>, arg_1: f32) -> Struct_2 {
    let var_0 = ~0u;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1)));
    let var_1 = firstLeadingBit(u_input.c);
    global1 = array<i32, 2>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(17534u, 4u)] + global4[_wgslsmith_index_u32(60121u, 4u)]))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 459f, 1263f) * vec4<f32>(arg_1, 459f, arg_1, 1000f)) - vec4<f32>(arg_1, arg_1, -1000f, arg_1)))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1820f), -266f, arg_1, -1643f))));
    return Struct_2(~global3[_wgslsmith_index_u32(var_0, 29u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-676f, -686f)))), Struct_1(_wgslsmith_mod_i32(u_input.d.x, _wgslsmith_add_i32(~1i, ~global1[_wgslsmith_index_u32(var_0, 2u)])), var_0, _wgslsmith_dot_vec4_i32(countOneBits(select(vec4<i32>(u_input.b, 2147483647i, global1[_wgslsmith_index_u32(var_0, 2u)], -9581i), vec4<i32>(16872i, u_input.b, global1[_wgslsmith_index_u32(var_0, 2u)], -1i), vec4<bool>(arg_0.x, false, true, arg_0.x))), vec4<i32>(-2147483647i, 2147483647i, 55768i, u_input.a.x) ^ firstTrailingBit(vec4<i32>(-2147483647i, 17785i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 2u)], var_1))), -vec3<i32>(-var_1, 1i, -2147483647i)));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> vec2<i32> {
    global3 = array<u32, 29>();
    global4 = array<vec4<f32>, 4>();
    global0 = array<Struct_3, 32>();
    global4 = array<vec4<f32>, 4>();
    var var_0 = func_5(vec4<bool>(true, arg_2, false, !(!arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_3.b)))) * _wgslsmith_f_op_f32(func_2(reverseBits(vec4<u32>(global3[_wgslsmith_index_u32(116041u, 29u)], global3[_wgslsmith_index_u32(arg_3.c.b, 29u)], 1u, arg_3.a)))))));
    return vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-(global1[_wgslsmith_index_u32(1u, 2u)] & 25951i), _wgslsmith_add_i32(reverseBits(2147483647i), _wgslsmith_mod_i32(u_input.b, arg_1.x)), arg_0), ~(~_wgslsmith_sub_i32(arg_1.x, u_input.d.x))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(global3[_wgslsmith_index_u32(4294967295u, 29u)], Struct_1(24140i, 15508u, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(42436u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 29u)]), select(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 29u)]), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17416u, 29u)], 29u)], 29u)], global3[_wgslsmith_index_u32(28424u, 29u)]), false)), 2u)], _wgslsmith_mod_vec3_i32(vec3<i32>(~1i, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30955u, 29u)], 29u)], 29u)], 29u)], 29u)], 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)], -57342i), firstLeadingBit(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 2u)])), min(-u_input.a.yzx, u_input.d.zwx ^ u_input.d.wzx))), Struct_4(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(1i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30868u, 29u)], 2u)]), _wgslsmith_div_vec2_i32(u_input.d.zz, vec2<i32>(u_input.e, -34726i))), func_1(0i, u_input.a << (vec4<u32>(79632u, global3[_wgslsmith_index_u32(13430u, 29u)], global3[_wgslsmith_index_u32(78545u, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)]) % vec4<u32>(32u)), true, Struct_2(4294967295u, 689f, Struct_1(0i, 0u, -1i, u_input.d.zxz)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1391f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 395f, -1363f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-499f, 472f, -2369f)))))), false, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -536f), _wgslsmith_f_op_f32(f32(-1f) * -1769f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f) - -121f), 338f))));
    let var_1 = abs(u_input.a.x);
    global4 = array<vec4<f32>, 4>();
    let var_2 = Struct_2(~(~(~71479u ^ var_0.a)), 3353f, func_5(vec4<bool>(any(vec3<bool>(var_0.d, true, true)), true, !var_0.d && var_0.d, all(select(vec4<bool>(var_0.d, true, false, var_0.d), vec4<bool>(true, var_0.d, var_0.d, false), vec4<bool>(var_0.d, false, true, false)))), _wgslsmith_f_op_f32(func_2((vec4<u32>(33791u, var_0.b.b, 89487u, var_0.b.b) ^ vec4<u32>(var_0.a, 2227u, var_0.b.b, global3[_wgslsmith_index_u32(var_0.b.b, 29u)])) << (~vec4<u32>(28955u, global3[_wgslsmith_index_u32(5603u, 29u)], var_0.a, 8802u) % vec4<u32>(32u))))).c);
    var var_3 = func_5(select(!vec4<bool>(var_0.d, true, true, any(vec2<bool>(false, var_0.d))), select(vec4<bool>(true, false || var_0.d, any(vec2<bool>(var_0.d, true)), false), !select(vec4<bool>(true, var_0.d, var_0.d, false), vec4<bool>(false, false, true, var_0.d), vec4<bool>(var_0.d, true, true, var_0.d)), !(var_0.d && var_0.d)), false), 403f).c;
    var var_4 = Struct_2(countOneBits(0u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1327f - -154f)))))), func_5(!(!vec4<bool>(true, var_0.d, var_0.d, var_0.d)), var_2.b).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.d, ~u_input.a), firstTrailingBit(countOneBits(vec4<i32>(var_4.c.a, 2147483647i, var_4.c.a, var_0.c.a.x)))), func_1(var_0.c.a.x, vec4<i32>(var_1, ~var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(33006i, global1[_wgslsmith_index_u32(var_4.a, 2u)]), vec2<i32>(var_1, -2147483647i)), 68697i), any(select(vec3<bool>(var_0.d, false, var_0.d), vec3<bool>(false, var_0.d, false), var_0.d)), Struct_2(var_3.b, _wgslsmith_f_op_f32(-var_2.b), func_5(vec4<bool>(var_0.d, var_0.d, true, var_0.d), var_4.b).c)).x));
}

