struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(508f, vec2<i32>(67854i, 9369i), vec3<bool>(false, true, false), vec2<u32>(24615u, 23170u)), Struct_1(1243f, vec2<i32>(1i, 1i), vec3<bool>(true, false, false), vec2<u32>(52929u, 1u)), Struct_1(-689f, vec2<i32>(-1i, 2147483647i), vec3<bool>(true, false, false), vec2<u32>(1u, 4294967295u)), Struct_1(-1638f, vec2<i32>(1i, -1i), vec3<bool>(true, true, true), vec2<u32>(59818u, 15730u)), Struct_1(-640f, vec2<i32>(0i, 25629i), vec3<bool>(true, true, true), vec2<u32>(1u, 69342u)), Struct_1(497f, vec2<i32>(-38943i, 20215i), vec3<bool>(true, true, false), vec2<u32>(30708u, 3976u)), Struct_1(266f, vec2<i32>(2147483647i, 1i), vec3<bool>(true, false, false), vec2<u32>(104134u, 1u)), Struct_1(-263f, vec2<i32>(18241i, -1i), vec3<bool>(true, false, false), vec2<u32>(4294967295u, 35749u)), Struct_1(379f, vec2<i32>(0i, -60769i), vec3<bool>(true, false, false), vec2<u32>(4294967295u, 20823u)), Struct_1(-543f, vec2<i32>(52029i, 1i), vec3<bool>(false, false, true), vec2<u32>(0u, 0u)), Struct_1(-1771f, vec2<i32>(-1i, -1i), vec3<bool>(false, true, false), vec2<u32>(0u, 16064u)), Struct_1(1063f, vec2<i32>(-1i, -1i), vec3<bool>(true, false, true), vec2<u32>(32991u, 4048u)), Struct_1(2545f, vec2<i32>(16143i, 20812i), vec3<bool>(false, true, false), vec2<u32>(66229u, 4294967295u)), Struct_1(-1000f, vec2<i32>(-8214i, i32(-2147483648)), vec3<bool>(false, true, true), vec2<u32>(4294967295u, 0u)), Struct_1(784f, vec2<i32>(2147483647i, i32(-2147483648)), vec3<bool>(true, false, false), vec2<u32>(0u, 32299u)), Struct_1(883f, vec2<i32>(i32(-2147483648), -4054i), vec3<bool>(true, true, true), vec2<u32>(51166u, 24021u)), Struct_1(-590f, vec2<i32>(11475i, -1i), vec3<bool>(false, true, false), vec2<u32>(62596u, 141503u)));

var<private> global1: array<vec4<f32>, 25>;

var<private> global2: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(384f, 582f, 246f, 1695f), vec4<f32>(-952f, 208f, 1370f, -204f), vec4<f32>(330f, 604f, 417f, 1910f), vec4<f32>(-1093f, 325f, -1000f, -780f), vec4<f32>(1753f, -1514f, -1031f, -724f), vec4<f32>(-648f, 352f, 1110f, -795f), vec4<f32>(591f, 730f, -122f, -1871f), vec4<f32>(-642f, -1000f, -230f, 2602f));

var<private> global3: vec4<u32> = vec4<u32>(1159u, 0u, 60038u, 0u);

var<private> global4: array<i32, 11>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    global3 = ~(vec4<u32>(6639u, global3.x, _wgslsmith_clamp_u32(global3.x, u_input.b.x, 30893u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 1u, global3.x, global3.x), vec4<u32>(85912u, 81484u, 23927u, global3.x)), ~vec4<u32>(1u, 4294967295u, 12867u, u_input.b.x))) << (~_wgslsmith_mod_vec4_u32(~vec4<u32>(global3.x, 2835u, global3.x, 12942u), vec4<u32>(21370u, u_input.b.x, 65673u, 17633u)) % vec4<u32>(32u)));
    var var_0 = vec4<bool>(true, all(vec3<bool>(true, _wgslsmith_f_op_f32(round(-435f)) <= _wgslsmith_f_op_f32(round(1841f)), true)), (-_wgslsmith_dot_vec2_i32(u_input.c.yw, vec2<i32>(u_input.c.x, -44040i)) > ~(-16488i)) & (any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)) | true), false);
    let var_1 = 1u;
    global2 = array<vec4<f32>, 8>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(357f * _wgslsmith_f_op_f32(f32(-1f) * -203f)), max(_wgslsmith_mod_vec2_i32(abs(-u_input.c.yz), u_input.c.xy), u_input.c.zz & u_input.c.yx), select(vec3<bool>(true && (true | var_0.x), true, false), select(!(!var_0.www), var_0.zyx, select(var_0.wyz, var_0.yyx, all(var_0.yzx))), var_0.x), vec2<u32>(select(~49507u, firstLeadingBit(25033u), var_0.x) << (min(_wgslsmith_dot_vec2_u32(vec2<u32>(82755u, 4294967295u), global3.yz), 0u) % 32u), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(2487u, var_1, global3.x, 4294967295u), vec4<u32>(var_1, u_input.b.x, 17839u, 0u)), ~u_input.b.x & firstTrailingBit(var_1), max(~u_input.b.x, min(1u, global3.x)))));
    return 1u;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    let var_0 = ~vec3<u32>(u_input.b.x, min(~1u, max(4294967295u, arg_1.d.x)), ~5725u << (_wgslsmith_mult_u32(arg_2.d.x, 50265u) % 32u)) << (vec3<u32>(4294967295u >> (select(func_3(), global3.x, all(arg_0)) % 32u), u_input.b.x, 100033u) % vec3<u32>(32u));
    global1 = array<vec4<f32>, 25>();
    var var_1 = Struct_1(arg_2.a, vec2<i32>(global4[_wgslsmith_index_u32(countOneBits(49777u), 11u)], ~(~(-u_input.a))), !arg_2.c, ~(~arg_2.d));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-481f)) + 1000f) - arg_1.a) * 801f);
    var_1 = arg_1;
    return -1766f;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1110f, 669f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1199f + 290f), _wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, true), Struct_1(arg_1.x, u_input.c.wz, vec3<bool>(true, true, true), vec2<u32>(u_input.b.x, 58378u)), global0[_wgslsmith_index_u32(~u_input.b.x, 17u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) * arg_1))))) - arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(826f, arg_1.x)), arg_1.x);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, 0u), reverseBits(u_input.b.x), ~(~firstLeadingBit(0u)), 1u | u_input.b.x), vec4<u32>(reverseBits(4294967295u), u_input.b.x, ~39878u, ~_wgslsmith_add_u32(0u, u_input.b.x) >> (_wgslsmith_div_u32(59048u, global3.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 8>();
    global2 = array<vec4<f32>, 8>();
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 17u)];
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.a)))), _wgslsmith_mult_vec2_i32(vec2<i32>(-countOneBits(2147483647i), global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 11u)]), vec2<i32>(global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_0.d.x, 0u, global3.x), vec4<u32>(u_input.b.x, global3.x, 1u, u_input.b.x))), 11u)], global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, global3.x), 11u)])), var_0.c, ~vec2<u32>(firstTrailingBit(func_1(global4[_wgslsmith_index_u32(7139u, 11u)], vec3<f32>(var_0.a, 178f, var_0.a), 3308i)), ~19762u));
    var var_2 = _wgslsmith_mod_vec4_i32(firstLeadingBit(-min(abs(vec4<i32>(12114i, var_1.b.x, 36367i, 30719i)), u_input.c)), vec4<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 11u)], ~(-(u_input.a | global4[_wgslsmith_index_u32(var_1.d.x, 11u)])), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(20451u, 11u)], global4[_wgslsmith_index_u32(u_input.b.x, 11u)], 2147483647i), var_1.b.x, global4[_wgslsmith_index_u32(2334u, 11u)] & -44816i), var_1.b.x, var_0.b.x), 57875i));
    global0 = array<Struct_1, 17>();
    var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(13262u, var_1.d.x)), 17u)];
    let var_3 = var_1.c;
    var var_4 = global0[_wgslsmith_index_u32(~global3.x, 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yw, _wgslsmith_mult_i32(-44076i, 0i), abs(~67442u ^ var_0.d.x), reverseBits(-var_0.b.x), firstTrailingBit(min(~(vec2<u32>(var_4.d.x, u_input.b.x) >> (var_0.d % vec2<u32>(32u))), vec2<u32>(~var_4.d.x, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)))));
}

