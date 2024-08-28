struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec2<f32>(-1198f, -1084f), vec3<u32>(132279u, 0u, 1u), vec2<u32>(1u, 23119u), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec2<bool>(true, false)), Struct_2(vec2<f32>(-422f, -981f), vec3<u32>(15794u, 1u, 1u), vec2<u32>(4294967295u, 31377u), vec4<u32>(50913u, 4660u, 0u, 0u), vec2<bool>(true, false)), Struct_2(vec2<f32>(-199f, 1354f), vec3<u32>(75955u, 4294967295u, 2232u), vec2<u32>(1u, 0u), vec4<u32>(0u, 1u, 52063u, 46498u), vec2<bool>(true, true)), Struct_2(vec2<f32>(-1000f, 208f), vec3<u32>(0u, 0u, 1u), vec2<u32>(1u, 28465u), vec4<u32>(1u, 1u, 1u, 23089u), vec2<bool>(false, true)), Struct_2(vec2<f32>(-923f, -153f), vec3<u32>(1u, 0u, 1u), vec2<u32>(1u, 4294967295u), vec4<u32>(31653u, 4294967295u, 4294967295u, 13074u), vec2<bool>(false, false)), Struct_2(vec2<f32>(402f, -322f), vec3<u32>(4294967295u, 27218u, 0u), vec2<u32>(58107u, 72576u), vec4<u32>(35057u, 4294967295u, 1u, 0u), vec2<bool>(false, false)), Struct_2(vec2<f32>(-121f, -103f), vec3<u32>(36209u, 4294967295u, 3960u), vec2<u32>(38114u, 46730u), vec4<u32>(12461u, 9027u, 33604u, 0u), vec2<bool>(true, false)), Struct_2(vec2<f32>(115f, 153f), vec3<u32>(4294967295u, 32248u, 1u), vec2<u32>(7231u, 1u), vec4<u32>(92697u, 37685u, 32240u, 45066u), vec2<bool>(true, false)), Struct_2(vec2<f32>(1120f, -1403f), vec3<u32>(58421u, 33676u, 20679u), vec2<u32>(12881u, 4294967295u), vec4<u32>(88880u, 25290u, 23510u, 27153u), vec2<bool>(false, false)), Struct_2(vec2<f32>(-1654f, -1259f), vec3<u32>(0u, 173487u, 33853u), vec2<u32>(24455u, 123342u), vec4<u32>(36006u, 72486u, 5328u, 28692u), vec2<bool>(true, false)), Struct_2(vec2<f32>(-1623f, 2149f), vec3<u32>(4294967295u, 4294967295u, 0u), vec2<u32>(4545u, 0u), vec4<u32>(11234u, 0u, 60661u, 0u), vec2<bool>(false, false)), Struct_2(vec2<f32>(356f, -139f), vec3<u32>(52449u, 10445u, 7878u), vec2<u32>(0u, 1u), vec4<u32>(1u, 0u, 1542u, 3260u), vec2<bool>(false, false)), Struct_2(vec2<f32>(2065f, 1140f), vec3<u32>(0u, 0u, 7119u), vec2<u32>(39568u, 40571u), vec4<u32>(0u, 1u, 0u, 52419u), vec2<bool>(true, true)), Struct_2(vec2<f32>(-1000f, -1795f), vec3<u32>(0u, 25519u, 28552u), vec2<u32>(39427u, 15723u), vec4<u32>(0u, 0u, 0u, 75699u), vec2<bool>(true, true)), Struct_2(vec2<f32>(1102f, -1737f), vec3<u32>(0u, 62245u, 1u), vec2<u32>(6117u, 7691u), vec4<u32>(16753u, 504u, 4294967295u, 4294967295u), vec2<bool>(false, true)), Struct_2(vec2<f32>(411f, 548f), vec3<u32>(4294967295u, 1u, 0u), vec2<u32>(0u, 12543u), vec4<u32>(1361u, 1u, 46982u, 51535u), vec2<bool>(true, true)), Struct_2(vec2<f32>(-957f, -1116f), vec3<u32>(7475u, 4294967295u, 0u), vec2<u32>(4294967295u, 1u), vec4<u32>(17289u, 1u, 4294967295u, 8053u), vec2<bool>(false, true)));

var<private> global1: array<Struct_2, 5>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> Struct_1 {
    global0 = array<Struct_2, 17>();
    return Struct_1(u_input.a.xxy);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: f32) -> bool {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_i32(-(~(-vec3<i32>(u_input.a.x, 2147483647i, 4354i))), vec3<i32>(~firstTrailingBit(-18356i), -1i, -u_input.a.x)));
    global0 = array<Struct_2, 17>();
    let var_1 = _wgslsmith_dot_vec4_u32(arg_2.b.d, vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(3144u, 4294967295u, 10074u, 0u), arg_2.b.d) << (_wgslsmith_clamp_u32(u_input.b.x, 15617u, 40393u) % 32u)), 12840u, ~(~1u), _wgslsmith_sub_u32(~(~4294967295u), 4294967295u)));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)))), 491f)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a) + _wgslsmith_f_op_vec3_f32(step(arg_2.a, arg_2.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-463f, arg_3, 547f) - _wgslsmith_f_op_vec3_f32(-arg_2.a)) - _wgslsmith_f_op_vec3_f32(sign(arg_2.a))))) * vec3<f32>(921f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + arg_2.b.a.x)) + _wgslsmith_div_f32(-1000f, -681f)), -873f));
    return true;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<f32>) -> f32 {
    var var_0 = vec4<i32>(1i, ~2147483647i, min(u_input.a.x, abs(~(~u_input.a.x))), -18621i);
    var var_1 = func_3(arg_1.e.x, ~u_input.a.x, arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1075f))));
    return _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -695f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(firstLeadingBit(u_input.b >> (u_input.b % vec4<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -617f), -363f);
    var var_1 = !(all(vec3<bool>(true, true, true)) || false);
    var var_2 = -645f < _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(-801f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-620f, global1[_wgslsmith_index_u32(u_input.b.x, 5u)], Struct_3(vec3<f32>(663f, 258f, 1522f), Struct_2(vec2<f32>(1000f, 1406f), u_input.b.zxy, u_input.b.yz, vec4<u32>(0u, 855u, u_input.b.x, 28465u), vec2<bool>(true, true)), -1421f, vec4<bool>(true, true, false, true)), vec3<f32>(753f, -1630f, 608f))) * _wgslsmith_f_op_f32(1231f + 302f))));
    var_1 = false;
    let var_3 = global0[_wgslsmith_index_u32(u_input.b.x, 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, 1084f, var_3.a.x) * vec3<f32>(var_3.a.x, -404f, var_3.a.x))), vec3<f32>(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-var_3.a.x), var_3.a.x), vec3<bool>(any(var_3.e), func_3(true, u_input.a.x, Struct_3(vec3<f32>(var_3.a.x, 953f, var_3.a.x), Struct_2(var_3.a, var_3.d.xwx, vec2<u32>(var_3.c.x, 57923u), u_input.b, vec2<bool>(var_3.e.x, var_3.e.x)), var_3.a.x, vec4<bool>(true, true, var_3.e.x, true)), var_3.a.x), any(vec2<bool>(var_3.e.x, var_3.e.x)))))), ~min(_wgslsmith_mult_vec2_u32(select(u_input.b.yw, var_3.b.zy, true), vec2<u32>(83277u, 22701u) ^ u_input.b.yz), var_3.d.yx));
}

