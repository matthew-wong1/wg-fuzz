struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-1000f, 269f, 1242f, -904f), vec4<f32>(1035f, 983f, -1400f, 1411f), vec4<f32>(545f, -1375f, 492f, 2014f), vec4<f32>(-157f, 831f, 1029f, 842f), vec4<f32>(2070f, -1000f, 1000f, 1404f), vec4<f32>(-1804f, 386f, -1132f, -311f), vec4<f32>(-1681f, 600f, 298f, -1386f), vec4<f32>(137f, 740f, 1346f, 1000f), vec4<f32>(-1001f, 1000f, -1646f, 732f), vec4<f32>(-1000f, -488f, -562f, -991f), vec4<f32>(-886f, -108f, -674f, 1648f), vec4<f32>(-1000f, -384f, 328f, -277f));

var<private> global1: array<u32, 13>;

var<private> global2: array<Struct_2, 15>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: f32) -> vec4<f32> {
    var var_0 = 686f;
    let var_1 = ~(~arg_0.b);
    let var_2 = Struct_5(u_input.b, arg_0.e.a);
    let var_3 = arg_0.e;
    global1 = array<u32, 13>();
    return _wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(~select(~(~global1[_wgslsmith_index_u32(1u, 13u)]), 28224u, false), 12u)], _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(4402u, 12u)]));
}

fn func_2(arg_0: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(vec3<u32>(global1[_wgslsmith_index_u32(27046u, 13u)], 4294967295u, 0u), 65984u, u_input.a.zxx, vec2<f32>(1587f, 1792f), Struct_1(vec2<i32>(u_input.d, u_input.e))), Struct_4(vec4<bool>(true, false, false, false), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7500u, 13u)], 13u)], 15u)], Struct_3(vec3<u32>(48383u, u_input.a.x, 28725u), 4294967295u, vec3<u32>(25659u, 4294967295u, u_input.a.x), vec2<f32>(1000f, -214f), Struct_1(u_input.b.xz)), Struct_2(Struct_1(u_input.b.zy), Struct_1(u_input.b.yy), false, Struct_1(vec2<i32>(-1i, u_input.b.x)))), vec3<bool>(false, false, true), -859f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(223f, 497f, -1267f, -548f)))))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-188f + 589f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1764f * -535f) + -1091f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2401f * -853f) * _wgslsmith_f_op_f32(round(1336f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-126f)), -1569f, true))))));
    var var_1 = u_input.a.ww;
    var var_2 = (_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-67107i, 26090i, -26567i, 0i) ^ vec4<i32>(u_input.d, u_input.b.x, 2147483647i, -16090i)), vec4<i32>(u_input.c, -2147483647i, ~2147483647i, -u_input.d)) >= u_input.b.x) | any(!vec4<bool>(true, true, var_1.x == 4294967295u, true));
    return Struct_4(!select(vec4<bool>(any(vec3<bool>(false, true, true)), true, true, any(vec4<bool>(true, false, false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), false), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true)), global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(161553u, arg_0)) ^ min(40922u, _wgslsmith_dot_vec3_u32(u_input.a.zxx, u_input.a.xyx)), 15u)], Struct_3(_wgslsmith_div_vec3_u32(~(u_input.a.wzw | u_input.a.zyx), _wgslsmith_sub_vec3_u32(~u_input.a.yzx, vec3<u32>(u_input.a.x, 0u, 24675u))), arg_0, ~select(~vec3<u32>(5559u, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.a.x), u_input.a.xzx, all(vec2<bool>(false, true))), var_0.xz, Struct_1(u_input.b.yz)), global2[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(35932u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 0u, 14403u), vec4<u32>(10419u, arg_0, 0u, 0u)), 1u)), 15u)]);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = func_2(min(1u, global1[_wgslsmith_index_u32(~u_input.a.x, 13u)]));
    global2 = array<Struct_2, 15>();
    let var_1 = func_2(~firstTrailingBit(1u)).c;
    var var_2 = u_input.c;
    var_0 = Struct_4(var_0.a, Struct_2(Struct_1(_wgslsmith_div_vec2_i32(u_input.b.xy, u_input.b.zz >> (u_input.a.xx % vec2<u32>(32u)))), var_0.c.e, max(~var_0.b.b.a.x, var_0.d.b.a.x) < ~(~(-2147483647i)), func_2(_wgslsmith_sub_u32(_wgslsmith_add_u32(35369u, global1[_wgslsmith_index_u32(var_0.c.c.x, 13u)]), 1u)).c.e), var_0.c, func_2(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, ~global1[_wgslsmith_index_u32(u_input.a.x, 13u)], ~var_0.c.b), 9799u)).d);
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 13>();
    global0 = array<vec4<f32>, 12>();
    global1 = array<u32, 13>();
    var var_0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1375f), -180f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(575f + 518f))))), global0[_wgslsmith_index_u32(u_input.a.x, 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-879f, -148f))));
    var var_1 = vec3<bool>(_wgslsmith_add_u32(0u, _wgslsmith_div_u32(u_input.a.x, ~global1[_wgslsmith_index_u32(57863u, 13u)])) == ((4294967295u >> (global1[_wgslsmith_index_u32(78425u, 13u)] % 32u)) | 0u), all(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 13u)] >= u_input.a.x, true, false)), !(!(~global1[_wgslsmith_index_u32(0u, 13u)] < _wgslsmith_clamp_u32(0u, u_input.a.x, 1u))));
    var var_2 = !any(vec4<bool>(all(var_1.xx), true, true, any(vec2<bool>(var_1.x, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~u_input.a.x, _wgslsmith_clamp_vec3_i32(~min(u_input.b, u_input.b) >> (u_input.a.wyx % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-4895i, 31677i, 1i, -3066i), reverseBits(vec4<i32>(-30410i, -15131i, 2147483647i, 8633i))), ~(-56742i), -(-10481i << (global1[_wgslsmith_index_u32(u_input.a.x, 13u)] % 32u))), vec3<i32>(u_input.c, 1i, 29951i)), -var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(686f, -1008f, -975f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1058f, 136f, 1000f))))));
}

