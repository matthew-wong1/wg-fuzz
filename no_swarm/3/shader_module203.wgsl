struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

var<private> global0: array<u32, 29> = array<u32, 29>(22040u, 41319u, 4294967295u, 63784u, 42148u, 18606u, 4294967295u, 1u, 1u, 33621u, 4294967295u, 57242u, 88064u, 5301u, 4294967295u, 1u, 0u, 34110u, 20011u, 0u, 32641u, 27160u, 41319u, 21090u, 4294967295u, 1u, 0u, 37833u, 36546u);

var<private> global1: array<f32, 7>;

var<private> global2: array<bool, 27> = array<bool, 27>(true, false, true, true, false, false, false, false, false, false, true, true, false, false, true, true, true, false, false, true, true, false, true, false, true, true, true);

var<private> global3: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(0i, -1i, 2147483647i, 26119i), vec4<i32>(i32(-2147483648), 2147483647i, 42251i, -44474i), vec4<i32>(8952i, 1i, 2147483647i, -1i), vec4<i32>(530i, -41081i, -1007i, -1947i), vec4<i32>(-8702i, -23821i, -11700i, 2147483647i), vec4<i32>(i32(-2147483648), 41150i, 1i, -46941i), vec4<i32>(-53187i, -32426i, 21270i, 2479i), vec4<i32>(i32(-2147483648), 10027i, 39679i, 2147483647i), vec4<i32>(1i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -45467i), vec4<i32>(-30575i, 2147483647i, 13222i, -1i), vec4<i32>(1i, 26396i, 53562i, 6727i), vec4<i32>(-7979i, 23001i, 2147483647i, -1i), vec4<i32>(9421i, -22868i, 14165i, 0i), vec4<i32>(-2391i, 2147483647i, -18904i, 2147483647i), vec4<i32>(0i, 2147483647i, -25244i, 2147483647i), vec4<i32>(-1i, 2147483647i, 1i, 36528i), vec4<i32>(-10719i, i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(-32840i, 39982i, 34729i, 10818i), vec4<i32>(2147483647i, -9136i, 14508i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, 2147483647i, 34265i), vec4<i32>(i32(-2147483648), i32(-2147483648), 18811i, 41431i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 1i), vec4<i32>(-1i, -36481i, 2147483647i, 1i), vec4<i32>(2147483647i, -20i, 45237i, 10332i), vec4<i32>(2147483647i, 17314i, 1i, 26837i), vec4<i32>(528i, 29443i, 1i, -57504i), vec4<i32>(2147483647i, i32(-2147483648), 1i, -48775i), vec4<i32>(0i, -1i, 28241i, 1i));

var<private> global4: array<Struct_3, 12>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global3 = array<vec4<i32>, 29>();
    global3 = array<vec4<i32>, 29>();
    let var_0 = select(!global2[_wgslsmith_index_u32(0u, 27u)], !(!(!(global2[_wgslsmith_index_u32(50599u, 27u)] == true))), global2[_wgslsmith_index_u32(~((~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], 29u)] & ~1u) >> (56467u % 32u)), 27u)]);
    global0 = array<u32, 29>();
    var var_1 = any(vec2<bool>(true, !(true || global2[_wgslsmith_index_u32(1u, 27u)])));
    return true;
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global4 = array<Struct_3, 12>();
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(reverseBits(~max(~0u, ~46536u)), 27u)], Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(u_input.b.x, 7u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12868u, 29u)], 29u)], 7u)], global1[_wgslsmith_index_u32(1u, 7u)]))) + vec4<f32>(1369f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 7u)] - global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 7u)]), _wgslsmith_f_op_f32(-613f + global1[_wgslsmith_index_u32(22983u, 7u)]), -962f)), u_input.b.x, func_3()), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], global1[_wgslsmith_index_u32(106358u, 7u)], 903f, global1[_wgslsmith_index_u32(0u, 7u)]) + vec4<f32>(-203f, global1[_wgslsmith_index_u32(u_input.b.x, 7u)], -1000f, -1238f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(293f, global1[_wgslsmith_index_u32(4294967295u, 7u)], -124f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 29u)], 7u)], -1152f, -1186f)))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(reverseBits(global0[_wgslsmith_index_u32(~99185u, 29u)])), 29u)], 29u)], (false && global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 29u)]), 27u)]) && !global2[_wgslsmith_index_u32(1u, 27u)]));
    var var_1 = vec3<i32>(-((i32(-1i) * -42487i) ^ arg_0.x), countOneBits(1i), -65083i);
    return _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.a, 29u)] << (_wgslsmith_dot_vec2_u32(u_input.b >> (u_input.b % vec2<u32>(32u)), min(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.b.b, 2306u), vec2<u32>(u_input.a, 39537u)), ~vec2<u32>(18685u, global0[_wgslsmith_index_u32(4294967295u, 29u)]))) % 32u), global0[_wgslsmith_index_u32(~min(var_0.c.b, 29283u), 29u)]);
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(661f, global1[_wgslsmith_index_u32(countOneBits(30349u), 7u)])) + vec2<f32>(global1[_wgslsmith_index_u32(func_2(abs(global3[_wgslsmith_index_u32(u_input.a, 29u)])), 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -528f) - global1[_wgslsmith_index_u32(~57510u, 7u)]))));
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -_wgslsmith_sub_vec2_i32(abs(vec2<i32>(2147483647i, -3898i)), -vec2<i32>(-2147483647i, 14630i))), ~_wgslsmith_div_i32(abs(reverseBits(0i)), min(abs(1i), -28442i)));
    let var_2 = Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(min(_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(global0[_wgslsmith_index_u32(41767u, 29u)], 55167u), vec2<u32>(global0[_wgslsmith_index_u32(1289u, 29u)], u_input.b.x)), firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(1u, 29u)], u_input.a))), u_input.b), countOneBits(u_input.b)), vec3<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(434f - global1[_wgslsmith_index_u32(66652u, 7u)])) == var_0.x, _wgslsmith_sub_u32(func_2(vec4<i32>(var_1, 34602i, var_1, var_1)), 18859u) >= ~abs(0u)));
    var var_3 = select(!select(select(select(vec4<bool>(var_2.b.x, false, false, var_2.b.x), vec4<bool>(false, true, false, arg_1), vec4<bool>(true, false, false, false)), !vec4<bool>(true, var_2.b.x, global2[_wgslsmith_index_u32(u_input.a, 27u)], false), false), select(select(vec4<bool>(arg_0, arg_1, var_2.b.x, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 27u)], var_2.b.x, true, false), vec4<bool>(var_2.b.x, true, true, arg_1)), !vec4<bool>(var_2.b.x, true, arg_0, global2[_wgslsmith_index_u32(28530u, 27u)]), select(vec4<bool>(true, false, var_2.b.x, global2[_wgslsmith_index_u32(46285u, 27u)]), vec4<bool>(true, var_2.b.x, arg_0, var_2.b.x), false)), any(select(vec4<bool>(true, true, true, arg_0), vec4<bool>(arg_0, global2[_wgslsmith_index_u32(51541u, 27u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(89508u, 29u)], 27u)], global2[_wgslsmith_index_u32(13106u, 27u)]), false))), vec4<bool>(false, true, false, true), vec4<bool>(arg_1, global2[_wgslsmith_index_u32(~min(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(12185u, 16383u), 29u)], ~u_input.b.x), 27u)], arg_0, abs(1u) <= ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.a, 29u)], var_2.a.x)));
    let var_4 = global3[_wgslsmith_index_u32(var_2.a.x, 29u)];
    return global4[_wgslsmith_index_u32(~u_input.a, 12u)];
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = func_1(select(arg_2.c, all(vec4<bool>(true, true && arg_2.c, arg_2.c || arg_2.c, any(vec4<bool>(true, true, false, arg_2.c)))), global2[_wgslsmith_index_u32(~11709u, 27u)]), func_3()).b;
    global4 = array<Struct_3, 12>();
    global3 = array<vec4<i32>, 29>();
    var var_1 = ~2147483647i;
    var var_2 = Struct_3(arg_2.a.x >= arg_1.b.a.x, Struct_2(arg_1.b.a, 1u, func_1(any(vec4<bool>(arg_2.c, arg_2.c, arg_2.c, global2[_wgslsmith_index_u32(arg_1.b.b, 27u)])), select(true, !var_0.c, any(vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b.x, 27u)], arg_2.c)))).a), arg_1.c);
    return StorageBuffer(-1426f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_div_i32(5272i, firstLeadingBit(firstTrailingBit(1i))), 1i, 1311i, _wgslsmith_clamp_i32(-abs(-2147483647i), 1i, ~14623i));
    global4 = array<Struct_3, 12>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, -select(-2147483647i, 27281i, global2[_wgslsmith_index_u32(342u, 27u)]), -2147483647i), _wgslsmith_clamp_vec3_i32(var_0.xyw, var_0.wzw, vec3<i32>(var_0.x, ~(-42918i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -1i, 1i), var_0.yxx)))), func_1(select(any(select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 27u)]), false)), (global2[_wgslsmith_index_u32(83775u, 27u)] | true) && global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 27u)], false), all(vec2<bool>(!global2[_wgslsmith_index_u32(7177u, 27u)], any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 27u)]))))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 7u)], -2144f, global1[_wgslsmith_index_u32(76217u, 7u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 29u)], 7u)], global1[_wgslsmith_index_u32(64048u, 7u)], 1124f) * vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11517u, 29u)], 7u)], 1000f, global1[_wgslsmith_index_u32(1u, 7u)]))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(661f, global1[_wgslsmith_index_u32(22150u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], -988f) * vec4<f32>(global1[_wgslsmith_index_u32(4750u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], -229f, 1012f))))), _wgslsmith_sub_u32(u_input.a, u_input.b.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.a), global0[_wgslsmith_index_u32(0u, 29u)]), vec2<u32>(1u, 45824u) >> (vec2<u32>(global0[_wgslsmith_index_u32(0u, 29u)], 4294967295u) % vec2<u32>(32u))), 27u)]));
}

