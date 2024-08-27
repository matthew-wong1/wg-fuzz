struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(904f, 1628f), vec2<f32>(1000f, -1488f), vec2<f32>(-897f, 439f), vec2<f32>(164f, -832f), vec2<f32>(-1761f, -2547f), vec2<f32>(-676f, -548f), vec2<f32>(-487f, -1000f), vec2<f32>(-864f, 1482f));

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(-601f, vec4<f32>(-508f, 1181f, -413f, -2067f), 1u, -1798f, 35512u), Struct_1(1138f, vec4<f32>(-454f, -486f, 320f, -597f), 4294967295u, -865f, 4294967295u), Struct_1(783f, vec4<f32>(-861f, -187f, -528f, -1058f), 21168u, -308f, 4294967295u), Struct_1(-506f, vec4<f32>(-366f, -407f, -1326f, -793f), 0u, 971f, 0u), Struct_1(-1143f, vec4<f32>(-1715f, -1455f, 303f, -938f), 0u, 429f, 27474u), Struct_1(-239f, vec4<f32>(1362f, -523f, -661f, 452f), 1u, 962f, 86180u), Struct_1(-450f, vec4<f32>(1287f, 290f, -164f, 1232f), 37168u, 526f, 42887u), Struct_1(-1432f, vec4<f32>(199f, -1000f, -1006f, -1845f), 0u, -540f, 83950u), Struct_1(485f, vec4<f32>(-197f, -918f, -1558f, -440f), 0u, 329f, 0u), Struct_1(139f, vec4<f32>(-1306f, -822f, 289f, 160f), 0u, 1108f, 80233u), Struct_1(303f, vec4<f32>(-373f, 712f, -976f, 530f), 0u, 258f, 39159u), Struct_1(-1248f, vec4<f32>(113f, 1011f, 1000f, 442f), 27724u, 1340f, 0u), Struct_1(-461f, vec4<f32>(1123f, 585f, -1360f, 1019f), 25796u, -1136f, 5943u), Struct_1(-630f, vec4<f32>(1112f, 150f, 1040f, 1810f), 0u, 215f, 83100u), Struct_1(1788f, vec4<f32>(-549f, 356f, -937f, -223f), 40538u, -289f, 4294967295u), Struct_1(-294f, vec4<f32>(568f, 795f, -1000f, -1207f), 2025u, -146f, 48834u), Struct_1(-698f, vec4<f32>(460f, 1000f, -1132f, 702f), 65993u, -2833f, 12878u));

var<private> global3: f32;

var<private> global4: vec3<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = Struct_4(!(!(!arg_0)), 1u);
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> bool {
    global3 = -2097f;
    var var_0 = Struct_3(true, _wgslsmith_f_op_f32(-arg_1.d), u_input.c);
    var var_1 = _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a));
    var var_2 = u_input.e;
    return false;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: u32) -> vec4<bool> {
    var var_0 = select(vec3<bool>(func_1(arg_0.a), arg_1, all(select(vec3<bool>(false, arg_1, false), select(vec3<bool>(true, arg_1, true), vec3<bool>(arg_1, arg_1, arg_0.a), arg_0.a), select(vec3<bool>(arg_0.a, arg_0.a, arg_1), vec3<bool>(false, arg_1, arg_1), arg_0.a)))), !vec3<bool>(arg_0.a, true, true | any(vec3<bool>(arg_0.a, arg_1, arg_1))), u_input.c.x > u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(max(2175f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-204f + 2162f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -948f) - _wgslsmith_f_op_f32(max(1920f, -613f))), any(vec4<bool>(arg_1, false, true, var_0.x))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(-2136f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-608f * -471f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-491f))), 1100f))), vec4<f32>(334f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-872f, -815f)) * _wgslsmith_f_op_f32(floor(548f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-884f)) * 251f))), 2157f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-664f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2098f + 182f))))));
    var var_3 = any(select(!(!select(vec3<bool>(var_0.x, false, arg_1), vec3<bool>(false, false, false), true)), !(!select(vec3<bool>(var_0.x, var_0.x, arg_0.a), vec3<bool>(arg_1, var_0.x, arg_1), vec3<bool>(var_0.x, arg_0.a, arg_0.a))), false));
    var var_4 = vec3<f32>(var_2.x, 308f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x), var_2.x));
    return !vec4<bool>(false, false, all(select(!var_0.xz, select(vec2<bool>(true, arg_1), vec2<bool>(false, arg_0.a), true), var_0.x)), true);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = select(vec2<u32>(u_input.e.x, u_input.a.x), global4.xz | _wgslsmith_mod_vec2_u32(global4.zx, vec2<u32>(global4.x, 1u)), min(0u, max(~u_input.e.x, u_input.a.x)) > 1u);
    let var_1 = Struct_5(24021u, !func_4(Struct_4(func_3(Struct_1(arg_2, vec4<f32>(arg_2, 1206f, arg_2, 266f), 97168u, arg_2, var_0.x), Struct_1(arg_2, vec4<f32>(599f, arg_2, arg_2, -1030f), 1u, -588f, global4.x), arg_1), 25027u), select(any(vec2<bool>(arg_1, false)), arg_1, false), 28492u), vec3<bool>(all(func_4(Struct_4(arg_1, 21754u), false, 1u).wxy), false, any(select(!vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(arg_1, false, true, true), arg_1))));
    let var_2 = !(!(!select(select(var_1.c.zx, var_1.b.yw, var_1.c.zz), var_1.c.xy, arg_1)));
    var var_3 = u_input.c;
    var_3 = -vec4<i32>(-2147483647i, countOneBits(countOneBits(reverseBits(u_input.d.x))), ~_wgslsmith_sub_i32(var_3.x, _wgslsmith_mod_i32(-1i, 9985i)), 54879i);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -1458f;
    global2 = array<Struct_1, 17>();
    var var_0 = global2[_wgslsmith_index_u32(min(global4.x, u_input.e.x), 17u)];
    var var_1 = reverseBits(global4.x ^ ~global4.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.yz, 107551u, u_input.b.x, reverseBits(u_input.d.x), select(vec3<u32>(global4.x, func_2(u_input.b.x, func_1(true), _wgslsmith_f_op_f32(-var_0.d)), ~34921u), ~vec3<u32>(1u, u_input.e.x >> (var_0.e % 32u), ~0u), !func_1(721f > var_0.a)));
}

