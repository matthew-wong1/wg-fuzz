struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_1(45113i, -391f, vec3<f32>(384f, 409f, -1055f), vec2<u32>(14249u, 0u))), Struct_3(Struct_1(-42176i, 1831f, vec3<f32>(-287f, -1104f, 563f), vec2<u32>(4294967295u, 1u))), Struct_3(Struct_1(-25353i, -260f, vec3<f32>(939f, -1967f, -1078f), vec2<u32>(1u, 4294967295u))), Struct_3(Struct_1(10166i, 1134f, vec3<f32>(-158f, -1000f, -1231f), vec2<u32>(85599u, 0u))), Struct_3(Struct_1(i32(-2147483648), 663f, vec3<f32>(1000f, -1652f, 417f), vec2<u32>(4294967295u, 0u))), Struct_3(Struct_1(1i, 317f, vec3<f32>(1365f, 1603f, 541f), vec2<u32>(4294967295u, 0u))), Struct_3(Struct_1(-1i, 1493f, vec3<f32>(390f, -460f, -183f), vec2<u32>(32359u, 47682u))), Struct_3(Struct_1(-47724i, 790f, vec3<f32>(-1274f, 695f, 879f), vec2<u32>(1u, 38642u))), Struct_3(Struct_1(1i, 347f, vec3<f32>(2016f, -504f, 500f), vec2<u32>(0u, 94957u))), Struct_3(Struct_1(2147483647i, 1000f, vec3<f32>(-287f, -216f, 1082f), vec2<u32>(12692u, 65713u))), Struct_3(Struct_1(-13163i, -1956f, vec3<f32>(1384f, -2228f, -1387f), vec2<u32>(14303u, 5992u))), Struct_3(Struct_1(-14720i, -142f, vec3<f32>(-993f, 1332f, 1908f), vec2<u32>(14154u, 0u))), Struct_3(Struct_1(-10646i, 1121f, vec3<f32>(1990f, 170f, -250f), vec2<u32>(81683u, 4294967295u))), Struct_3(Struct_1(i32(-2147483648), -697f, vec3<f32>(1000f, 1000f, 1000f), vec2<u32>(78309u, 0u))), Struct_3(Struct_1(1i, 1133f, vec3<f32>(-1000f, 234f, 1297f), vec2<u32>(1u, 1u))), Struct_3(Struct_1(1i, -1000f, vec3<f32>(608f, 1083f, -790f), vec2<u32>(72329u, 33754u))), Struct_3(Struct_1(0i, 1384f, vec3<f32>(-801f, -1016f, 134f), vec2<u32>(19628u, 0u))), Struct_3(Struct_1(-39850i, -356f, vec3<f32>(103f, -752f, 1304f), vec2<u32>(13809u, 35645u))), Struct_3(Struct_1(-1i, 681f, vec3<f32>(599f, 340f, 980f), vec2<u32>(1u, 5825u))), Struct_3(Struct_1(-21728i, -1000f, vec3<f32>(1194f, -551f, 466f), vec2<u32>(0u, 4294967295u))), Struct_3(Struct_1(-3133i, -233f, vec3<f32>(-712f, 1508f, -1785f), vec2<u32>(24637u, 89274u))), Struct_3(Struct_1(-1i, -354f, vec3<f32>(-654f, 1201f, 903f), vec2<u32>(3411u, 102776u))), Struct_3(Struct_1(2147483647i, 2401f, vec3<f32>(-429f, -700f, 595f), vec2<u32>(4294967295u, 1u))), Struct_3(Struct_1(i32(-2147483648), -1704f, vec3<f32>(-780f, -292f, -451f), vec2<u32>(4294967295u, 4294967295u))), Struct_3(Struct_1(67170i, -1090f, vec3<f32>(136f, -119f, 775f), vec2<u32>(46821u, 34094u))), Struct_3(Struct_1(66198i, 1317f, vec3<f32>(-107f, 843f, -355f), vec2<u32>(8664u, 0u))), Struct_3(Struct_1(0i, 841f, vec3<f32>(-771f, -736f, -1497f), vec2<u32>(33864u, 4294967295u))), Struct_3(Struct_1(39558i, 571f, vec3<f32>(-466f, -506f, 228f), vec2<u32>(1u, 21047u))));

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(0u, 0u, vec3<bool>(true, true, false)), Struct_2(16261u, 35429u, vec3<bool>(true, false, true)), Struct_2(26854u, 37584u, vec3<bool>(true, false, true)), Struct_2(0u, 0u, vec3<bool>(true, true, true)), Struct_2(0u, 35091u, vec3<bool>(true, false, false)), Struct_2(43022u, 4294967295u, vec3<bool>(true, true, true)), Struct_2(0u, 1u, vec3<bool>(false, false, false)));

var<private> global3: vec2<f32> = vec2<f32>(-795f, 542f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec2<f32> {
    return global1.a.c.yx;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> i32 {
    global3 = _wgslsmith_f_op_vec2_f32(-arg_1.a.c.zy);
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), u_input.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.c.x, 944f))), _wgslsmith_f_op_vec2_f32(func_2()))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.c.yx) * vec2<f32>(437f, -1806f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.c.xx * vec2<f32>(345f, 1410f)) + _wgslsmith_f_op_vec2_f32(-arg_0.c.yz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1219f, -453f), arg_1.a.c.yy))))));
    global1 = Struct_3(Struct_1(_wgslsmith_div_i32(-1i, arg_0.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(820f - var_1.x))), vec3<f32>(751f, 883f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-802f, global3.x) * global1.a.b)), abs(arg_1.a.d)));
    global0 = array<Struct_3, 28>();
    return -arg_0.a;
}

fn func_3(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = any(!select(select(vec3<bool>(false, true, arg_1), select(vec3<bool>(true, false, false), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, arg_1, arg_1)), !vec3<bool>(true, arg_1, arg_1)), select(!vec3<bool>(false, arg_1, arg_1), !vec3<bool>(arg_1, true, arg_1), true), vec3<bool>(all(vec4<bool>(true, false, arg_1, false)), any(vec4<bool>(arg_1, true, false, arg_1)), all(vec3<bool>(false, arg_1, arg_1)))));
    var var_1 = true;
    return -428f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (vec4<i32>(-20929i, global1.a.a, _wgslsmith_sub_i32(func_1(global1.a, global0[_wgslsmith_index_u32(u_input.a, 28u)], global3.x, u_input.c.x), -global1.a.a), 2147483647i) >> (select(u_input.b, u_input.b, vec4<bool>(any(vec3<bool>(true, true, false)), all(vec4<bool>(false, false, true, false)), true, true)) % vec4<u32>(32u))) | -firstLeadingBit(~countOneBits(vec4<i32>(0i, global1.a.a, 0i, u_input.d)));
    global2 = array<Struct_2, 7>();
    global2 = array<Struct_2, 7>();
    global0 = array<Struct_3, 28>();
    global2 = array<Struct_2, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global1.a.d.x, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a.c.x * -202f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b) * _wgslsmith_f_op_f32(sign(291f)))))), ~max(min(4294967295u, u_input.a << (global1.a.d.x % 32u)), ~_wgslsmith_dot_vec3_u32(u_input.b.ywx, u_input.b.xxx)), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b.x, 2877u, _wgslsmith_div_u32(u_input.a, u_input.b.x), ~1u) & u_input.b, vec4<u32>(_wgslsmith_mult_u32(~global1.a.d.x, ~u_input.b.x), 38433u ^ _wgslsmith_mod_u32(global1.a.d.x, u_input.b.x), ~global1.a.d.x >> (global1.a.d.x % 32u), ~1u)));
}

