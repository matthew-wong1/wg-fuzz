struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 29>;

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(vec3<f32>(-671f, 507f, -952f)), Struct_1(vec3<f32>(862f, 583f, -1372f)), vec3<i32>(10856i, 0i, 17299i), Struct_1(vec3<f32>(670f, -776f, -1000f)), vec4<u32>(1u, 1u, 28674u, 4294967295u)), Struct_2(Struct_1(vec3<f32>(562f, 583f, 290f)), Struct_1(vec3<f32>(518f, -1000f, -438f)), vec3<i32>(i32(-2147483648), -34379i, -20785i), Struct_1(vec3<f32>(-1480f, -1000f, -464f)), vec4<u32>(54859u, 4294967295u, 52132u, 91956u)), Struct_2(Struct_1(vec3<f32>(1209f, -1439f, -2611f)), Struct_1(vec3<f32>(-2033f, -1621f, -989f)), vec3<i32>(-23374i, -1i, i32(-2147483648)), Struct_1(vec3<f32>(-305f, 974f, 1353f)), vec4<u32>(3290u, 4294967295u, 29554u, 21321u)), Struct_2(Struct_1(vec3<f32>(1128f, -2598f, 388f)), Struct_1(vec3<f32>(-259f, 1759f, 1000f)), vec3<i32>(1i, -1i, -1i), Struct_1(vec3<f32>(529f, 223f, -594f)), vec4<u32>(33266u, 4294967295u, 90238u, 12016u)), Struct_2(Struct_1(vec3<f32>(908f, 642f, -1401f)), Struct_1(vec3<f32>(173f, 2449f, -914f)), vec3<i32>(-20052i, -1i, 36376i), Struct_1(vec3<f32>(-254f, 240f, 785f)), vec4<u32>(1u, 33873u, 118829u, 4294967295u)), Struct_2(Struct_1(vec3<f32>(1904f, 2201f, -253f)), Struct_1(vec3<f32>(-496f, -145f, 938f)), vec3<i32>(-1i, 1i, -63197i), Struct_1(vec3<f32>(-1104f, 1456f, 367f)), vec4<u32>(22477u, 27579u, 63425u, 4294967295u)), Struct_2(Struct_1(vec3<f32>(-728f, -444f, 308f)), Struct_1(vec3<f32>(-559f, -582f, -1442f)), vec3<i32>(-1i, i32(-2147483648), 2147483647i), Struct_1(vec3<f32>(208f, 743f, -433f)), vec4<u32>(1u, 1u, 4294967295u, 37816u)), Struct_2(Struct_1(vec3<f32>(-931f, -1830f, -1466f)), Struct_1(vec3<f32>(1000f, 450f, 1096f)), vec3<i32>(27175i, 6138i, -20004i), Struct_1(vec3<f32>(114f, -455f, 265f)), vec4<u32>(4294967295u, 70485u, 63592u, 4294967295u)), Struct_2(Struct_1(vec3<f32>(-1577f, -502f, 148f)), Struct_1(vec3<f32>(1861f, -177f, -1162f)), vec3<i32>(-28335i, 1972i, 1i), Struct_1(vec3<f32>(-442f, -884f, 869f)), vec4<u32>(0u, 8577u, 19081u, 0u)), Struct_2(Struct_1(vec3<f32>(-205f, 950f, -2094f)), Struct_1(vec3<f32>(585f, 284f, 188f)), vec3<i32>(-8581i, 1i, -26288i), Struct_1(vec3<f32>(-330f, -872f, -1607f)), vec4<u32>(0u, 4294967295u, 4294967295u, 76550u)), Struct_2(Struct_1(vec3<f32>(-1164f, 1000f, 332f)), Struct_1(vec3<f32>(167f, -983f, 459f)), vec3<i32>(2147483647i, -35182i, -1i), Struct_1(vec3<f32>(-1408f, 1602f, -122f)), vec4<u32>(4294967295u, 19869u, 0u, 116913u)), Struct_2(Struct_1(vec3<f32>(490f, -249f, -739f)), Struct_1(vec3<f32>(238f, -1231f, 351f)), vec3<i32>(2147483647i, -42069i, 12543i), Struct_1(vec3<f32>(-1988f, -579f, -936f)), vec4<u32>(44859u, 0u, 56050u, 37964u)));

var<private> global3: vec4<u32>;

var<private> global4: array<vec2<f32>, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-186f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -933f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(816f * -302f), -117f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2470f, 701f, 37323u > u_input.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(292f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(757f, 753f, -873f, 426f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1577f, 1245f, 208f, -733f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-891f, -1556f, -718f, 282f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.zzy + _wgslsmith_f_op_vec3_f32(var_0.zyx * var_0.xxy)) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -2779f), _wgslsmith_f_op_f32(trunc(var_0.x))))));
    let var_2 = -arg_0;
    let var_3 = 16159i;
    let var_4 = global3.x;
    return _wgslsmith_mod_u32(u_input.a.x, 15744u);
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1010f), -480f, _wgslsmith_f_op_f32(f32(-1f) * -287f))))));
    global0 = !global1[_wgslsmith_index_u32(global3.x, 29u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.a)))) - _wgslsmith_f_op_vec3_f32(var_0.a * var_0.a)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_div_f32(1020f, -341f)), -626f);
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c.x, 4294967295u) >> (4294967295u % 32u), 29u)];
    return ~abs(1634u);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> vec4<f32> {
    var var_0 = 0u;
    global1 = array<bool, 29>();
    var var_1 = vec2<u32>(max(_wgslsmith_clamp_u32(global3.x, 32676u, func_3(arg_0.x ^ global3.x)), ~global3.x), ~abs(arg_0.x));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-733f, 177f))))), _wgslsmith_f_op_f32(round(-441f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1409f)) - 979f)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_2.a + _wgslsmith_f_op_vec3_f32(sign(var_2.a))), var_2.a)))));
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1174f), _wgslsmith_f_op_f32(round(-307f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_2.a.x, -1193f, arg_1)))) + _wgslsmith_f_op_f32(select(448f, var_2.a.x, global1[_wgslsmith_index_u32(~global3.x, 29u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-763f))))), -813f, -206f);
    global3 = u_input.c;
    let var_1 = 44017i;
    var var_2 = vec3<u32>(56074u, ~0u, 23050u);
    global1 = array<bool, 29>();
    var var_3 = func_1(-(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -19003i, var_1, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, 74781i, u_input.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1, var_1, 2147483647i, u_input.b.x), vec4<i32>(0i, u_input.b.x, 25867i, u_input.b.x))) | var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(countOneBits(u_input.b.zz), ~(~(vec2<i32>(1i, 13691i) >> (vec2<u32>(var_2.x, var_2.x) % vec2<u32>(32u)))), vec2<i32>(-2147483647i, -1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(0u, global3.x, var_2.x), global1[_wgslsmith_index_u32(1u, 29u)])) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, -2514f, -1709f, 992f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mod_vec3_u32(global3.zxz, vec3<u32>(0u, var_2.x, 1u)), all(vec2<bool>(global1[_wgslsmith_index_u32(var_2.x, 29u)], false)))))));
}

