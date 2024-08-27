struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 47i;

var<private> global1: array<bool, 9> = array<bool, 9>(true, false, true, true, true, false, true, true, true);

var<private> global2: array<Struct_1, 13>;

var<private> global3: array<vec2<f32>, 12>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = global2[_wgslsmith_index_u32(~60750u, 13u)];
    let var_1 = vec4<i32>(var_0.b.x, 16098i, var_0.b.x, _wgslsmith_mod_i32(40387i, min(select(-2147483647i, u_input.e.x, global1[_wgslsmith_index_u32(1463u, 9u)]), u_input.e.x ^ var_0.b.x)) | ((_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, u_input.c.x, u_input.a.x, var_0.b.x), vec4<i32>(var_0.b.x, u_input.e.x, 64113i, 36368i)) >> (_wgslsmith_div_u32(u_input.d.x, 1u) % 32u)) & -_wgslsmith_clamp_i32(2147483647i, var_0.b.x, -44998i)));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(u_input.d.yz, select(vec2<u32>(0u, 1u), vec2<u32>(56761u, u_input.b.x), !vec2<bool>(var_0.d, true))), _wgslsmith_sub_vec2_u32(u_input.b, u_input.d.wx)) | u_input.b.x, 13u)];
    global3 = array<vec2<f32>, 12>();
    var var_3 = Struct_1(true, var_0.b >> (~(u_input.b << (vec2<u32>(u_input.b.x, 18741u) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.x), 1000f, var_0.c.x, _wgslsmith_f_op_f32(max(var_0.c.x, var_0.c.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, 617f, -259f, 748f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1259f, -1578f, -758f, -683f), vec4<f32>(-232f, 835f, 1338f, var_2.c.x), false)))), var_2.c), (global1[_wgslsmith_index_u32(abs(u_input.b.x) ^ u_input.b.x, 9u)] || !(var_0.c.x <= var_0.c.x)) & false);
    return select(vec3<bool>(var_0.a, abs(-u_input.c.x) >= -(~var_1.x), !(countOneBits(var_1.x) == _wgslsmith_dot_vec4_i32(u_input.c, var_1))), vec3<bool>(!all(vec2<bool>(false, var_3.a)) | !var_0.a, var_0.d, var_0.a), var_2.c.x <= 169f);
}

fn func_2(arg_0: Struct_1) -> u32 {
    global1 = array<bool, 9>();
    global1 = array<bool, 9>();
    var var_0 = select(select(vec3<bool>(global1[_wgslsmith_index_u32(~u_input.d.x << (_wgslsmith_mod_u32(u_input.d.x, 1259u) % 32u), 9u)], global1[_wgslsmith_index_u32(u_input.d.x, 9u)], max(2147483647i, -27924i) < _wgslsmith_sub_i32(0i, u_input.a.x)), !select(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], false, false), func_3(), true), any(!(!vec2<bool>(arg_0.d, false)))), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], func_3().x, global1[_wgslsmith_index_u32(~1u, 9u)]), vec3<bool>(!(true && (-1720f != arg_0.c.x)), arg_0.c.x < arg_0.c.x, any(select(!vec4<bool>(true, arg_0.d, true, arg_0.d), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], true, arg_0.d, false), vec4<bool>(arg_0.d, false, true, false), false), global1[_wgslsmith_index_u32(1u, 9u)]))));
    var var_1 = Struct_1(all(!func_3().zy) | global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(u_input.d.xzz), ~vec3<u32>(u_input.d.x, u_input.d.x, u_input.b.x)), countOneBits(u_input.d.xwx)), 9u)], arg_0.b, _wgslsmith_f_op_vec4_f32(-arg_0.c), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.b.x), 9u)]);
    var_1 = arg_0;
    return 4294967295u;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 9u)];
    global2 = array<Struct_1, 13>();
    var var_1 = _wgslsmith_f_op_vec2_f32(max(global3[_wgslsmith_index_u32(func_2(Struct_1(true, _wgslsmith_add_vec2_i32(u_input.a.yy, vec2<i32>(2147483647i, 33677i)), vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 - -830f), -629f, _wgslsmith_f_op_f32(555f + 423f)), false)), 12u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.zxz, arg_1), 12u)]));
    var var_2 = global3[_wgslsmith_index_u32(arg_1.x, 12u)];
    let var_3 = _wgslsmith_f_op_f32(min(-1773f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(496f)))))) < 347f;
    return _wgslsmith_f_op_f32(f32(-1f) * -452f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(1u, abs(firstTrailingBit(u_input.d.x >> (u_input.b.x % 32u))), u_input.d.x << ((countOneBits(u_input.b.x) | u_input.b.x) % 32u)) ^ u_input.d.xwz;
    global1 = array<bool, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(1u, 1u)), -((_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, vec4<i32>(u_input.e.x, 2572i, -69932i, 0i)) << (vec4<u32>(25730u, var_0.x, u_input.d.x, var_0.x) % vec4<u32>(32u))) & vec4<i32>(-2147483647i >> (u_input.d.x % 32u), min(-2147483647i, u_input.a.x), u_input.e.x, 0i)), _wgslsmith_div_f32(-128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(442f, select(vec3<u32>(1u, var_0.x, var_0.x), var_0, vec3<bool>(true, global1[_wgslsmith_index_u32(31325u, 9u)], true)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2635f, 332f, 938f, -1404f))))))));
}

