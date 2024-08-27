struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, false), vec4<i32>(0i, 55240i, -26548i, 11709i), vec2<f32>(183f, -281f), 1154f);

var<private> global2: array<i32, 11> = array<i32, 11>(1i, 12107i, 2147483647i, 37769i, -1i, 15076i, -1i, 1i, -49279i, 32259i, i32(-2147483648));

var<private> global3: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(1u, 0u, 66442u), vec3<u32>(14857u, 21398u, 0u), vec3<u32>(78493u, 7469u, 34461u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_4) -> bool {
    var var_0 = global1.c;
    var var_1 = global1.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.d, arg_2.x, var_0.x, -920f))))));
    let var_3 = Struct_2(1378f);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-557f - _wgslsmith_f_op_f32(ceil(-595f))) + _wgslsmith_div_f32(-546f, _wgslsmith_f_op_f32(f32(-1f) * -397f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-389f + var_0.x) - 1423f));
    return !(~u_input.c == _wgslsmith_add_u32(u_input.a | u_input.c, 1u)) & !(u_input.a <= (_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(11282u, 3u)], vec3<u32>(1u, u_input.a, 35820u)) << (~25224u % 32u)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(1034f);
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-var_0.a)))));
    var var_2 = Struct_4(-313f, vec2<bool>(global1.a.x, true), Struct_1(vec2<bool>(true, !(!global1.a.x)), select(global1.b, global1.b, select(select(vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x), vec4<bool>(false, global1.a.x, false, false), vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x)), select(vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x), vec4<bool>(false, global1.a.x, true, global1.a.x), false), select(global1.a.x, global1.a.x, global1.a.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(global1.c)))))), global1.c.x));
    var var_3 = select(var_2.c.a, select(vec2<bool>(global1.a.x, any(var_2.b) & true), vec2<bool>(global1.a.x, true), func_3(-u_input.b, global2[_wgslsmith_index_u32(4294967295u, 11u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-626f, var_1.a.a, 554f) * vec3<f32>(var_1.a.a, var_2.a, 791f))), Struct_4(1087f, vec2<bool>(var_2.b.x, var_2.c.a.x), var_2.c))), !global1.a.x);
    let var_4 = ~58504u;
    return var_1;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_4) -> Struct_4 {
    let var_0 = Struct_2(-1127f);
    global0 = 4294967295u;
    let var_1 = reverseBits(reverseBits(-min(vec2<i32>(1i, 1i), vec2<i32>(u_input.b.x, -2397i))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -1000f, var_0.a) * vec3<f32>(var_0.a, arg_1.a.a, arg_3.a)) + vec3<f32>(124f, 1000f, 492f)) + vec3<f32>(1089f, -1131f, 795f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -532f) - arg_3.a), global1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -715f))));
    global0 = u_input.a;
    return Struct_4(-1000f, global1.a, Struct_1(!vec2<bool>(global1.a.x, false), firstLeadingBit(arg_3.c.b), arg_3.c.c, arg_1.a.a));
}

fn func_1() -> vec2<bool> {
    let var_0 = u_input.a;
    var var_1 = func_4(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(~global1.b.x, global2[_wgslsmith_index_u32(var_0, 11u)] ^ u_input.b.x), vec2<i32>(global2[_wgslsmith_index_u32(39196u, 11u)], u_input.b.x))), func_2(), u_input.b, Struct_4(-1980f, !global1.a, Struct_1(global1.a, vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 11u)] & -61547i, global2[_wgslsmith_index_u32(4600u, 11u)], min(global2[_wgslsmith_index_u32(var_0, 11u)], -1i), 1i >> (u_input.c % 32u)), global1.c, global1.d)));
    var var_2 = vec4<bool>(func_3(var_1.c.b.xx, global2[_wgslsmith_index_u32(~(u_input.a & 1u), 11u)], vec3<f32>(-3495f, _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-521f, var_1.a)))), func_4(countOneBits(-var_1.c.b.wx), Struct_3(Struct_2(-933f)), firstLeadingBit(countOneBits(vec2<i32>(9451i, -1i))), Struct_4(_wgslsmith_f_op_f32(-global1.c.x), global1.a, var_1.c))), !all(vec2<bool>(var_1.c.a.x, !var_1.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(select(729f, 322f, global1.a.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c.d)))) <= var_1.c.d, var_1.c.a.x);
    let var_3 = vec2<f32>(-371f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(407f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-301f + _wgslsmith_div_f32(-354f, var_1.c.d)) + _wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(f32(-1f) * -767f))))));
    var var_4 = 24899u;
    return var_2.xz;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 11>();
    var var_0 = global1.c.x;
    let var_1 = all(!select(!(!vec2<bool>(global1.a.x, true)), vec2<bool>(any(vec2<bool>(global1.a.x, global1.a.x)), true), func_1()));
    global1 = Struct_1(vec2<bool>(true, global1.a.x), -vec4<i32>(func_4(vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.c, 11u)]), Struct_3(Struct_2(468f)), func_4(vec2<i32>(0i, 2147483647i), Struct_3(Struct_2(1207f)), global1.b.zw, Struct_4(-1529f, vec2<bool>(false, true), Struct_1(vec2<bool>(global1.a.x, false), global1.b, global1.c, global1.d))).c.b.xz, func_4(global1.b.xy, Struct_3(Struct_2(global1.d)), u_input.b, Struct_4(global1.c.x, global1.a, Struct_1(vec2<bool>(var_1, false), vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 11u)], global2[_wgslsmith_index_u32(u_input.c, 11u)], u_input.b.x, 0i), vec2<f32>(global1.d, global1.d), -448f)))).c.b.x, ~_wgslsmith_div_i32(global1.b.x, 2402i), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), global1.b.x), vec2<f32>(2519f, func_4(vec2<i32>(-5337i, -u_input.b.x), Struct_3(func_2().a), vec2<i32>(24797i, u_input.b.x), Struct_4(func_4(global1.b.yw, Struct_3(Struct_2(global1.d)), vec2<i32>(global2[_wgslsmith_index_u32(51130u, 11u)], -1i), Struct_4(1870f, vec2<bool>(false, global1.a.x), Struct_1(vec2<bool>(var_1, var_1), global1.b, vec2<f32>(-918f, 842f), global1.d))).c.d, !global1.a, Struct_1(global1.a, vec4<i32>(1i, 1i, global1.b.x, global1.b.x), global1.c, global1.c.x))).c.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.d - global1.d), -133f))));
    let var_2 = ~_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(15105u, reverseBits(u_input.c)), 3u)], firstLeadingBit(vec3<u32>(~u_input.c, 25912u ^ u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(70772u, u_input.a), vec2<u32>(u_input.c, 32587u)))));
    let x = u_input.a;
    s_output = StorageBuffer((vec4<u32>(38179u, max(29371u, var_2), abs(1u), 1u) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, u_input.c, u_input.a, 51650u), ~vec4<u32>(u_input.a, u_input.c, var_2, 0u), vec4<u32>(var_2, 14376u, 1u, var_2) >> (vec4<u32>(0u, u_input.c, 79161u, 12856u) % vec4<u32>(32u)))) | vec4<u32>(1623u, u_input.a, ~(~u_input.a), ~abs(0u)), _wgslsmith_f_op_f32(ceil(global1.c.x)), select(0i, abs(-1i), func_1().x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, -583f)), vec2<f32>(global1.d, _wgslsmith_div_f32(1161f, global1.d))), _wgslsmith_f_op_vec2_f32(-global1.c), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1171f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1658f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.c.x - global1.c.x), global1.d, -359f) * vec3<f32>(_wgslsmith_f_op_f32(global1.d + global1.c.x), _wgslsmith_f_op_f32(1397f * 893f), _wgslsmith_div_f32(global1.d, global1.d)))));
}

