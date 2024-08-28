struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1860i, 2147483647i);

var<private> global1: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(4294967295u, vec3<f32>(506f, -556f, -350f)), Struct_4(4294967295u, vec3<f32>(-1648f, 619f, 769f)));

var<private> global2: array<bool, 31>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<i32>) -> u32 {
    global2 = array<bool, 31>();
    let var_0 = _wgslsmith_f_op_f32(round(236f));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_2), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(843f, -1934f, 678f, arg_2.x) - arg_2) * arg_2))) - arg_2));
    global1 = array<Struct_4, 2>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_2)));
    return arg_1.a.x;
}

fn func_2() -> i32 {
    let var_0 = Struct_4(0u << (func_3(Struct_5(max(u_input.c.x, u_input.d.x)), Struct_1(firstLeadingBit(vec4<u32>(u_input.d.x, 4294967295u, 27774u, 77178u)), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 31u)], false), vec2<bool>(global2[_wgslsmith_index_u32(0u, 31u)], false), vec2<bool>(global2[_wgslsmith_index_u32(43061u, 31u)], false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(571f, 658f, -1000f, -158f))), firstTrailingBit(-vec2<i32>(1i, 50410i))) % 32u), _wgslsmith_div_vec3_f32(vec3<f32>(1483f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-376f * 910f) + -305f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1419f), _wgslsmith_f_op_f32(-531f * 817f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 801f, -339f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(443f, 484f, 180f), vec3<f32>(1079f, 131f, 564f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -197f), _wgslsmith_f_op_f32(abs(818f)), -753f))));
    let var_1 = vec2<u32>(4294967295u, 0u);
    var var_2 = false;
    global1 = array<Struct_4, 2>();
    return global0.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> f32 {
    global2 = array<bool, 31>();
    var var_0 = _wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_clamp_i32(func_2(), -20187i, _wgslsmith_div_i32(36828i, u_input.a)), min(firstLeadingBit(-19718i) ^ _wgslsmith_div_i32(~u_input.a, u_input.a), _wgslsmith_div_i32(~17651i, ~u_input.a) >> (4294967295u % 32u)));
    global0 = vec2<i32>(1i, 1i);
    let var_1 = _wgslsmith_dot_vec2_u32(u_input.d.yx, _wgslsmith_clamp_vec2_u32(abs(~u_input.b.zy) << (~min(u_input.b.yz, u_input.c.xx) % vec2<u32>(32u)), u_input.c.yx, _wgslsmith_add_vec2_u32(u_input.b.yy, u_input.c.xz << (min(u_input.b.zx, u_input.c.zz) % vec2<u32>(32u)))));
    var var_2 = -2147483647i;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-740f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1679f, _wgslsmith_f_op_f32(-195f - 115f)))), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-745f, 832f, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(124f + -1095f)), _wgslsmith_div_vec4_f32(vec4<f32>(-722f, 884f, -227f, 452f), vec4<f32>(549f, 884f, -1626f, -522f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-425f + 706f), 673f, _wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), vec4<bool>(global2[_wgslsmith_index_u32(8552u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)], false, false), vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 31u)]))), -587f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1162f, 758f, -153f, 282f)))), vec4<bool>(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(u_input.d.x, 31u)], !global2[_wgslsmith_index_u32(64741u, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)])))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1246f, 605f, 251f, -161f), vec4<f32>(-128f, 860f, 1039f, -2963f), false)) * vec4<f32>(-1886f, -481f, -1945f, 978f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1752f, -565f, -838f, -796f)))))));
    global2 = array<bool, 31>();
    let var_1 = Struct_2(91413u, vec4<u32>(~22313u, ~1u, ~1u, 1u << (0u % 32u)), all(vec3<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(25137u, 31u)], false, true)), true, any(select(vec2<bool>(global2[_wgslsmith_index_u32(52289u, 31u)], false), vec2<bool>(true, false), global2[_wgslsmith_index_u32(u_input.c.x, 31u)])))));
    global1 = array<Struct_4, 2>();
    let var_2 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_0.x)));
}

