struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_5 = Struct_5(Struct_4(Struct_3(vec4<bool>(true, false, true, true), 1041u), vec4<bool>(true, true, true, false), Struct_2(vec4<f32>(-714f, -600f, 224f, -1000f)), vec2<i32>(-21266i, 38465i)), 4294967295u);

var<private> global2: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(681f, 183f, -643f, 1621f), vec4<f32>(-1428f, -1070f, -852f, 1130f), vec4<f32>(1000f, 3251f, 1283f, -199f), vec4<f32>(127f, -642f, -1000f, -1000f), vec4<f32>(1707f, 158f, 645f, -2387f), vec4<f32>(-2795f, -814f, 908f, -1065f), vec4<f32>(-704f, -442f, -111f, 781f), vec4<f32>(-1840f, -559f, -1596f, 401f), vec4<f32>(1108f, -666f, -868f, 1046f), vec4<f32>(1415f, 897f, -289f, 1337f), vec4<f32>(-454f, 355f, 726f, 987f), vec4<f32>(921f, -387f, 1927f, -1084f), vec4<f32>(1051f, 1611f, 1000f, 1000f), vec4<f32>(932f, -1822f, -345f, -649f), vec4<f32>(-1414f, 604f, -919f, 1738f), vec4<f32>(-192f, 510f, 1038f, 1492f), vec4<f32>(-206f, -1853f, -1367f, 1000f), vec4<f32>(1000f, -374f, 512f, 1000f), vec4<f32>(-1000f, -2164f, -931f, -1658f), vec4<f32>(-163f, -427f, -2124f, 994f), vec4<f32>(534f, -1000f, -1140f, 165f), vec4<f32>(213f, 851f, -1353f, -1530f), vec4<f32>(-1000f, 196f, -115f, 1666f), vec4<f32>(-302f, -1066f, 139f, -360f), vec4<f32>(626f, 1000f, 1236f, -830f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<i32> {
    global2 = array<vec4<f32>, 25>();
    let var_0 = Struct_4(Struct_3(vec4<bool>(false, true, global1.a.a.a.x, true), ~select(0u & u_input.d, 24059u, true)), global1.a.b, global1.a.c, vec2<i32>(~u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(5614i, -1i, 6670i, global1.a.d.x), vec4<i32>(global1.a.d.x, u_input.c.x, 9754i, u_input.a.x)), 8002i)) >> (firstLeadingBit(firstTrailingBit(~vec2<u32>(u_input.d, 75100u))) % vec2<u32>(32u)));
    return _wgslsmith_mod_vec4_i32(vec4<i32>(global0.d.x, var_0.d.x, 1i, -41430i), max(countOneBits(reverseBits(vec4<i32>(u_input.c.x, global0.d.x, var_0.d.x, global1.a.d.x))), select(select(reverseBits(vec4<i32>(-10124i, var_0.d.x, 1i, global1.a.d.x)), vec4<i32>(var_0.d.x, -19970i, 47355i, 0i) ^ vec4<i32>(var_0.d.x, 0i, u_input.a.x, global0.d.x), select(vec4<bool>(global1.a.b.x, false, true, global0.a.a.x), global1.a.b, var_0.a.a)), countOneBits(vec4<i32>(u_input.c.x, global0.d.x, u_input.a.x, -33749i)), false)));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = func_3();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a.c.a.x))))), 293f);
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-608f, var_1.x) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1357f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-285f)))), _wgslsmith_f_op_vec2_f32(round(global1.a.c.a.wz)), global1.a.b.wy)));
    var var_2 = ~1u;
    var var_3 = Struct_5(Struct_4(Struct_3(!select(vec4<bool>(false, false, false, global1.a.b.x), global1.a.a.a, vec4<bool>(false, false, false, global1.a.b.x)), u_input.d >> ((23583u >> (1u % 32u)) % 32u)), global0.b, Struct_2(global1.a.c.a), u_input.c.zy), abs(1u));
    return var_3.a.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    var var_0 = ~(~30616u) != ~global0.a.b;
    var_0 = all(vec4<bool>(false, !all(vec3<bool>(true, true, true)), false, all(vec3<bool>(arg_1.a.x, !global0.b.x, global1.a.a.a.x))));
    global1 = Struct_5(Struct_4(global0.a, vec4<bool>(any(vec3<bool>(true, global0.b.x, true)), true, arg_1.a.x, true), Struct_2(arg_0.a), abs(global1.a.d)), firstLeadingBit(_wgslsmith_sub_u32(~(~4294967295u), u_input.b)));
    let var_1 = ~u_input.c;
    global2 = array<vec4<f32>, 25>();
    return abs(25015u);
}

fn func_1(arg_0: bool) -> Struct_4 {
    global2 = array<vec4<f32>, 25>();
    var var_0 = Struct_1(2147483647i);
    var var_1 = _wgslsmith_div_u32(~4294967295u << (func_4(func_2(u_input.d), Struct_3(global1.a.b, 88129u)) % 32u), _wgslsmith_div_u32(5400u, global0.a.b)) >> (_wgslsmith_add_u32(~(~(~global0.a.b)), firstLeadingBit(~global1.b)) % 32u);
    var_0 = Struct_1(1i);
    var_1 = global0.a.b;
    return Struct_4(Struct_3(select(vec4<bool>(u_input.a.x <= global0.d.x, !global0.b.x, !global0.b.x, !arg_0), global1.a.b, true), _wgslsmith_add_u32(global1.b & global0.a.b, abs(1u)) & global0.a.b), vec4<bool>(arg_0, any(vec3<bool>(true, false, global0.b.x)), !any(select(vec3<bool>(arg_0, true, false), global1.a.b.yyz, global1.a.a.a.x)), all(vec4<bool>(true, arg_0, false, false)) || (_wgslsmith_add_i32(-1i, global0.d.x) >= firstLeadingBit(-19536i))), global1.a.c, func_3().xx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(false);
    var var_0 = u_input.c;
    var var_1 = Struct_5(func_1(any(vec3<bool>(select(false, global1.a.a.a.x, global0.b.x), all(global0.b.wy), global1.a.b.x))), _wgslsmith_add_u32(1u, ~_wgslsmith_div_u32(~1u, u_input.d & u_input.b)));
    let var_2 = Struct_5(var_1.a, var_1.b);
    var_0 = select(func_3().yyy | ~min(-u_input.c, ~u_input.c), vec3<i32>(10409i, ~(-18814i), -select(var_0.x, ~(-1i), true)), any(global1.a.b.ywz));
    global1 = var_2;
    var var_3 = global0.c.a.yz;
    var var_4 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.a.c.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1130f, var_2.a.c.a.x) + var_3.x))), -1000f, _wgslsmith_f_op_f32(-func_2(~var_1.a.a.b).a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, global0.a.b, _wgslsmith_dot_vec2_u32(reverseBits(~vec2<u32>(35548u, 5567u)), reverseBits(vec2<u32>(global1.b, var_2.b)))), 1i & u_input.c.x, -1i);
}

