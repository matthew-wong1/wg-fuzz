struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(0u, Struct_2(vec3<u32>(1u, 0u, 0u), vec4<bool>(true, false, false, false), -1841f, -1467f, vec2<u32>(47100u, 4294967295u)), Struct_1(false, true, 4345u, vec4<i32>(i32(-2147483648), -54271i, 1i, -31914i)), vec2<u32>(26304u, 12523u)), Struct_4(4294967295u, Struct_2(vec3<u32>(0u, 28653u, 7540u), vec4<bool>(false, false, true, true), -332f, -1000f, vec2<u32>(51801u, 4294967295u)), Struct_1(false, true, 4294967295u, vec4<i32>(i32(-2147483648), 1i, -1i, 1i)), vec2<u32>(40384u, 1u)), Struct_4(0u, Struct_2(vec3<u32>(0u, 3111u, 0u), vec4<bool>(true, true, false, false), -1000f, -1479f, vec2<u32>(20041u, 1u)), Struct_1(false, true, 1u, vec4<i32>(2147483647i, 7161i, -7669i, -1030i)), vec2<u32>(1u, 1u)), Struct_4(4294967295u, Struct_2(vec3<u32>(17705u, 4294967295u, 0u), vec4<bool>(false, false, true, false), 282f, -2323f, vec2<u32>(1u, 4294967295u)), Struct_1(true, false, 25814u, vec4<i32>(42123i, i32(-2147483648), 2147483647i, 2147483647i)), vec2<u32>(0u, 76549u)), Struct_4(4294967295u, Struct_2(vec3<u32>(4294967295u, 99622u, 41536u), vec4<bool>(false, false, true, false), 1463f, 144f, vec2<u32>(4294967295u, 73940u)), Struct_1(true, false, 553u, vec4<i32>(-6544i, 2147483647i, -29485i, i32(-2147483648))), vec2<u32>(60882u, 33709u)), Struct_4(1u, Struct_2(vec3<u32>(20086u, 0u, 0u), vec4<bool>(false, true, true, false), 328f, 328f, vec2<u32>(1u, 34835u)), Struct_1(false, true, 0u, vec4<i32>(i32(-2147483648), -14070i, 3852i, 2147483647i)), vec2<u32>(46527u, 21688u)), Struct_4(2231u, Struct_2(vec3<u32>(1u, 0u, 1u), vec4<bool>(false, false, true, true), -359f, 752f, vec2<u32>(57692u, 0u)), Struct_1(false, false, 1u, vec4<i32>(-75941i, 0i, -12714i, 2147483647i)), vec2<u32>(82981u, 21544u)), Struct_4(4294967295u, Struct_2(vec3<u32>(0u, 4294967295u, 34876u), vec4<bool>(false, false, true, true), 534f, 471f, vec2<u32>(44778u, 42316u)), Struct_1(true, true, 1u, vec4<i32>(0i, -22623i, 2147483647i, 0i)), vec2<u32>(0u, 0u)), Struct_4(4294967295u, Struct_2(vec3<u32>(1u, 4294967295u, 1u), vec4<bool>(true, false, true, false), 448f, -661f, vec2<u32>(88058u, 14222u)), Struct_1(true, false, 22675u, vec4<i32>(52207i, 0i, -1i, -13837i)), vec2<u32>(1523u, 0u)));

var<private> global2: array<f32, 1> = array<f32, 1>(231f);

var<private> global3: array<i32, 23> = array<i32, 23>(2147483647i, -70597i, 0i, 67583i, 5583i, 2147483647i, 1i, 2147483647i, -6184i, -19953i, -35439i, 12503i, -32187i, 0i, 1i, 2147483647i, 0i, 12897i, 8505i, 32579i, 0i, 0i, -1i);

var<private> global4: Struct_3 = Struct_3(vec2<u32>(0u, 8594u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<f32> {
    global3 = array<i32, 23>();
    global3 = array<i32, 23>();
    var var_0 = global1[_wgslsmith_index_u32(27630u, 9u)];
    global4 = Struct_3(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 30229u), vec2<u32>(~_wgslsmith_mod_u32(global0.x, 4294967295u), firstLeadingBit(~global4.a.x))));
    let var_1 = -1870f;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.c), _wgslsmith_f_op_f32(select(201f, var_1, true)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.x, 1u)])))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-326f, 1455f, var_1), vec3<f32>(-2832f, var_0.b.d, var_0.b.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-798f, 876f, var_0.b.c)), var_0.b.b.yyy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1211f, -157f, -1810f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 1u)], 1201f, var_1))), any(select(var_0.b.b.zw, var_0.b.b.xy, var_0.b.b.x)))), select(!(!var_0.b.b.xxx), !(!vec3<bool>(false, false, var_0.c.a)), vec3<bool>(var_0.c.a, true, !var_0.b.b.x)))) * vec3<f32>(_wgslsmith_f_op_f32(min(281f, _wgslsmith_f_op_f32(-var_0.b.c))), _wgslsmith_f_op_f32(-863f * _wgslsmith_f_op_f32(max(842f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(54209u, 1u)])))), 167f));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3());
    global4 = Struct_3(max(vec2<u32>(35225u, ~u_input.a), ~global4.a));
    global0 = vec4<u32>(4294967295u, 1488u & _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global0.x, 12537u, 0u), vec4<u32>(1u, 51216u, u_input.a, 38958u), vec4<u32>(global0.x, u_input.a, 0u, 0u)), min(vec4<u32>(27409u, 12702u, 44590u, 1u), vec4<u32>(global4.a.x, 1u, 4294967295u, global4.a.x)), ~vec4<u32>(58936u, 0u, 47930u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0.x, global0.x, 0u), vec4<u32>(global4.a.x, global4.a.x, global0.x, global4.a.x) ^ vec4<u32>(7976u, u_input.a, 1u, 4294967295u))), 1u, 1u);
    var var_1 = ~(-vec3<i32>(-18350i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global3[_wgslsmith_index_u32(global4.a.x, 23u)], u_input.b.x, 1i), vec4<i32>(-12303i, 1i, 2147483647i, -2147483647i)) | 1i, ~0i));
    let var_2 = select(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), false), vec2<bool>(true, all(vec4<bool>(false, true, true, true)))), vec2<bool>(true, true), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), u_input.b.x <= 3366i)));
    return Struct_2(global0.www, vec4<bool>(var_2.x, var_2.x || any(!var_2), var_2.x | (true || var_2.x), false), _wgslsmith_f_op_f32(trunc(-106f)), -1477f, vec2<u32>(~33406u, ~select(u_input.a, ~global4.a.x, all(vec2<bool>(var_2.x, var_2.x)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_5) -> vec2<bool> {
    let var_0 = func_2(1478f);
    let var_1 = reverseBits(~11217u);
    global4 = Struct_3(~(vec2<u32>(reverseBits(arg_1.a), ~16162u) ^ ~firstTrailingBit(global4.a)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-290f + _wgslsmith_f_op_f32(sign(-400f))))) - var_0.c);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c)));
    return vec2<bool>(func_2(_wgslsmith_f_op_f32(select(-264f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.x, 1u)] + var_0.d), true))).b.x || (var_0.b.x || var_0.b.x), var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(1u, ~global4.a.x, global4.a.x) != abs(0u), !(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.x, 1u)]) != -517f) | true, global4.a.x, vec4<i32>(-1i, ~2147483647i, -2147483647i << (_wgslsmith_add_u32(global0.x & 92381u, ~71172u) % 32u), u_input.b.x));
    let var_1 = select(select(func_1(!vec2<bool>(var_0.b, false), Struct_5(min(global0.x, 68393u), global3[_wgslsmith_index_u32(16385u, 23u)], global3[_wgslsmith_index_u32(~global0.x, 23u)], vec3<i32>(global3[_wgslsmith_index_u32(8129u, 23u)], global3[_wgslsmith_index_u32(0u, 23u)], u_input.b.x))), !select(func_2(123f).b.wz, vec2<bool>(true, true), vec2<bool>(false, true)), var_0.b), !(!vec2<bool>(true, -40140i == var_0.d.x)), any(vec3<bool>(!any(vec2<bool>(true, var_0.a)), var_0.b, !func_2(410f).b.x)));
    var_0 = Struct_1(true, select((var_1.x && var_0.b) && var_0.a, false, !(u_input.a != 24683u)) && var_1.x, _wgslsmith_clamp_u32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1527f, 1359f))).e.x, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, var_0.c), vec2<u32>(u_input.a, global0.x))), 0u), -(-abs(vec4<i32>(46246i, var_0.d.x, var_0.d.x, u_input.d)) | var_0.d));
    let var_2 = Struct_2(global0.xzx, vec4<bool>(global3[_wgslsmith_index_u32(firstLeadingBit(~0u), 23u)] < (firstTrailingBit(global3[_wgslsmith_index_u32(4294967295u, 23u)]) & firstLeadingBit(0i)), false, false, true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~0u, 1u)]))), 1247f, _wgslsmith_mult_vec2_u32(~(~vec2<u32>(global0.x, 4294967295u)), select(global4.a, global4.a, func_2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.x, 1u)])).b.x)));
    global3 = array<i32, 23>();
    var var_3 = _wgslsmith_sub_u32(~1u, ~_wgslsmith_add_u32(~(~global4.a.x), countOneBits(var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, 409f, 140f) + vec3<f32>(-616f, -1000f, var_2.c)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -3126f))));
}

