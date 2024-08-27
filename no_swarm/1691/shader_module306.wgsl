struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(0i, vec3<f32>(944f, 194f, 215f), vec3<u32>(14042u, 0u, 1993u)), Struct_1(19652i, vec3<f32>(-194f, 1467f, -1066f), vec3<u32>(47569u, 8157u, 37434u)), Struct_1(2147483647i, vec3<f32>(-1124f, 1000f, 1000f), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(34565i, vec3<f32>(1425f, 710f, -1456f), vec3<u32>(1u, 3302u, 1u)), Struct_1(49236i, vec3<f32>(-489f, 2302f, -262f), vec3<u32>(65422u, 1u, 4294967295u)), Struct_1(1i, vec3<f32>(-1000f, 873f, -228f), vec3<u32>(0u, 14494u, 4294967295u)), Struct_1(-10144i, vec3<f32>(299f, 362f, -856f), vec3<u32>(4294967295u, 16747u, 4294967295u)), Struct_1(-38767i, vec3<f32>(1420f, -2004f, -1293f), vec3<u32>(0u, 35503u, 1u)), Struct_1(-1i, vec3<f32>(1791f, -209f, 608f), vec3<u32>(1u, 21936u, 11528u)), Struct_1(20580i, vec3<f32>(-999f, -172f, 1148f), vec3<u32>(1u, 47698u, 1u)), Struct_1(-15041i, vec3<f32>(-543f, -1883f, -309f), vec3<u32>(1u, 40563u, 40808u)), Struct_1(-32349i, vec3<f32>(1640f, -1242f, -1212f), vec3<u32>(1u, 14984u, 14042u)), Struct_1(2147483647i, vec3<f32>(948f, -858f, -664f), vec3<u32>(4294967295u, 19512u, 4294967295u)), Struct_1(64271i, vec3<f32>(-1000f, -1017f, 109f), vec3<u32>(59685u, 4294967295u, 22369u)), Struct_1(-1i, vec3<f32>(-179f, -836f, -738f), vec3<u32>(10446u, 53501u, 0u)), Struct_1(1i, vec3<f32>(398f, 774f, 852f), vec3<u32>(98562u, 0u, 17871u)), Struct_1(-12344i, vec3<f32>(-877f, -1000f, 1468f), vec3<u32>(4294967295u, 7707u, 1u)), Struct_1(36250i, vec3<f32>(1667f, -1300f, 1361f), vec3<u32>(67344u, 111167u, 0u)), Struct_1(0i, vec3<f32>(-935f, -320f, -666f), vec3<u32>(0u, 4294967295u, 9238u)), Struct_1(1i, vec3<f32>(-1195f, 1001f, -623f), vec3<u32>(713u, 68336u, 96935u)), Struct_1(i32(-2147483648), vec3<f32>(845f, 149f, -411f), vec3<u32>(1u, 5652u, 0u)));

var<private> global1: vec3<bool>;

var<private> global2: array<i32, 19>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>) -> u32 {
    global1 = vec3<bool>(global1.x, false, !all(!(!vec3<bool>(global1.x, global1.x, arg_0.x))));
    global1 = select(vec3<bool>(true, true, any(!select(vec3<bool>(false, false, global1.x), vec3<bool>(false, false, arg_0.x), true))), vec3<bool>(!(global1.x || any(arg_0)), !(!any(vec3<bool>(arg_0.x, global1.x, false))), !all(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.x, global1.x, global1.x), vec3<bool>(arg_0.x, true, arg_0.x)))), true);
    global2 = array<i32, 19>();
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    return 0u;
}

fn func_2(arg_0: i32) -> u32 {
    global1 = select(!(!(!vec3<bool>(global1.x, global1.x, false))), vec3<bool>(!all(global1.zz), global1.x, true), max(_wgslsmith_mod_u32(~u_input.a, func_3(global1.yz, vec4<f32>(796f, -731f, 320f, -1135f))), 13608u) == 46026u);
    let var_0 = arg_0;
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(u_input.a | 0u, 21u)], any(vec3<bool>(any(select(vec3<bool>(global1.x, false, false), vec3<bool>(true, global1.x, true), true)), true, _wgslsmith_div_i32(35728i, 1i) < ~var_0)), global0[_wgslsmith_index_u32(u_input.a, 21u)], ~firstLeadingBit(vec2<u32>(~1u, u_input.a)), !(!(!select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(global1.x, global1.x, false, false), true))));
    let var_2 = u_input.a | 84789u;
    var var_3 = true;
    return ~firstTrailingBit(~56483u & ~u_input.a) | 4294967295u;
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = min(countOneBits(34145u), u_input.a);
    global1 = vec3<bool>(reverseBits(func_2(abs(global2[_wgslsmith_index_u32(13191u, 19u)]))) <= firstTrailingBit(~(~95647u)), all(global1.xz), true);
    global1 = vec3<bool>(global1.x, !global1.x, !select(true, false, false));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, 1000f) - vec2<f32>(arg_0.b.x, arg_0.b.x)), arg_0.b.xz))));
    let var_2 = !select(vec3<bool>(14111i >= arg_0.a, false, !global1.x), !select(vec3<bool>(global1.x, global1.x, true), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, true, false)), global1.x), false);
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(arg_0.b.x)), var_1.x)));
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_1, 21>();
    let var_0 = vec3<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a, 19u)], 78815i);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(global0[_wgslsmith_index_u32(func_2(0i), 21u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1265f, -1386f, -998f)), vec3<f32>(-144f, 359f, -1913f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-752f, 1269f, -310f))))));
    global2 = array<i32, 19>();
    let var_2 = _wgslsmith_f_op_f32(-865f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)))));
    return Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u), 21u)], any(select(select(vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x), global1.x), !vec3<bool>(true, true, global1.x), !vec3<bool>(false, global1.x, true))) || (global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(47033u, 0u), vec2<u32>(4294967295u, u_input.a)), 19u)] == global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, 1u), 19u)]), global0[_wgslsmith_index_u32(1u, 21u)], ~select(~(~vec2<u32>(4294967295u, u_input.a)), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 40599u), vec2<u32>(52125u, u_input.a)), firstLeadingBit(vec2<u32>(u_input.a, u_input.a))), global1.yy), select(select(vec4<bool>(false || global1.x, all(vec3<bool>(global1.x, global1.x, global1.x)), true, select(global1.x, global1.x, true)), !select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, false, global1.x, false), false), vec4<bool>(all(vec3<bool>(global1.x, false, global1.x)), false, true, !global1.x)), !vec4<bool>(true, global1.x, any(vec3<bool>(false, false, global1.x)), false), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = var_0.b;
    var_0 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(14046u, u_input.a), 21u)], !(2267u == var_0.d.x), func_1().a, var_0.c.c.yz, var_0.e);
    global2 = array<i32, 19>();
    var_1 = any(var_0.e.xwz) || all(func_1().e.zxy);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(707f)), -137f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(exp2(var_0.c.b.x)), _wgslsmith_f_op_f32(-444f * _wgslsmith_f_op_vec3_f32(func_4(func_1().a)).x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(ceil(var_2))))), _wgslsmith_f_op_f32(-var_0.c.b.x), any(select(select(vec2<bool>(var_0.b, var_0.e.x), global1.yz, var_0.e.yz), select(var_0.e.xy, global1.yz, global1.xx), var_0.e.wx)))), vec4<u32>(func_1().d.x, _wgslsmith_div_u32(countOneBits(16598u), 17023u), abs(firstTrailingBit(select(4294967295u, 88013u, var_0.b))), 73432u));
}

