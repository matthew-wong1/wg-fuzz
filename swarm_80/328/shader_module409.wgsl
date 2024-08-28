struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-175f, -374f, 107f, -1299f), vec4<f32>(-1527f, -756f, 897f, 477f), vec4<f32>(-1095f, 429f, 938f, 1155f), vec4<f32>(507f, -1213f, -752f, -504f), vec4<f32>(1719f, -595f, -1018f, -583f), vec4<f32>(-1516f, -1310f, -1000f, -511f), vec4<f32>(-931f, 650f, 2037f, 103f), vec4<f32>(404f, -419f, -863f, 662f), vec4<f32>(-1404f, 713f, 459f, 541f), vec4<f32>(-1000f, -1365f, 774f, -194f), vec4<f32>(-417f, -674f, -2459f, 599f));

var<private> global1: array<vec4<i32>, 8>;

var<private> global2: array<Struct_1, 20>;

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global4: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = any(global3.zz);
    var var_1 = global2[_wgslsmith_index_u32(1u, 20u)];
    var var_2 = global2[_wgslsmith_index_u32(reverseBits(~20865u), 20u)];
    let var_3 = select(global3.yy, select(global3.wy, global3.wx, global3.xz), vec2<bool>(!(!var_1.a && false), any(global3.xy)));
    var var_4 = vec4<i32>(2147483647i, var_2.b.x, 46368i, select(~abs(-8314i), var_2.b.x, var_2.a)) | _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(u_input.a, -7697i, u_input.b, u_input.a)), vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, var_2.b.x, 1i), vec3<i32>(0i, var_1.b.x, u_input.a)), ~var_2.b.x, ~var_2.b.x, u_input.b));
    return 0u;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = u_input.b > -_wgslsmith_mod_i32(~u_input.a, 15085i);
    let var_1 = global2[_wgslsmith_index_u32(~abs(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(12712u, 4294967295u, 1u, 4294967295u), vec4<u32>(38533u, 9707u, 4294967295u, 65488u)), vec4<u32>(1u, 1u, 1u, 1u))), 20u)];
    global1 = array<vec4<i32>, 8>();
    global1 = array<vec4<i32>, 8>();
    var var_2 = 0u;
    return global2[_wgslsmith_index_u32(abs(~45181u) ^ ~func_3(), 20u)];
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    global2 = array<Struct_1, 20>();
    var var_0 = !arg_0.x;
    let var_1 = func_2(!(_wgslsmith_f_op_f32(min(-1514f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) <= arg_3), !vec3<bool>(true, all(vec2<bool>(arg_0.x, false)) == true, _wgslsmith_f_op_f32(ceil(-566f)) < 731f));
    let var_2 = global2[_wgslsmith_index_u32(abs(~4294967295u), 20u)];
    let var_3 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u)), 0u) ^ ~35980u, 4294967295u, ~max(1u, func_3()), ~firstTrailingBit(1u));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(855f, arg_2.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> u32 {
    global3 = vec4<bool>(!((true & any(global3.zx)) || all(!vec4<bool>(arg_2.a, global3.x, false, arg_2.a))), any(vec4<bool>(!any(vec2<bool>(false, global3.x)), all(!vec4<bool>(true, false, arg_2.a, false)), global3.x, global3.x)), global3.x, select(all(global3.zyw), !any(vec2<bool>(true, true)) || true, global3.x));
    var var_0 = -31765i ^ -_wgslsmith_dot_vec3_i32(firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.a, 2577i, arg_1))), _wgslsmith_mult_vec3_i32(-vec3<i32>(2147483647i, 0i, 25401i), vec3<i32>(-1i, 1i, u_input.b)));
    let var_1 = _wgslsmith_f_op_f32(ceil(-1773f));
    global1 = array<vec4<i32>, 8>();
    var var_2 = (!all(!global3.xxz) & true) && !all(select(!vec4<bool>(true, global3.x, arg_2.a, global3.x), vec4<bool>(true, true, true, true), true));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global3 = !vec4<bool>(true, true, all(vec4<bool>(global3.x, global3.x | true, false, any(vec4<bool>(global3.x, global3.x, global3.x, true)))), !any(select(vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(false, global3.x, global3.x, false), vec4<bool>(global3.x, global3.x, global3.x, true))));
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(12611i, 90372i), var_0), ~(~(~reverseBits(vec2<i32>(0i, u_input.b)))));
    var_1 = -(vec2<i32>(u_input.b, -53764i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    var var_2 = func_4(vec3<f32>(-813f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(528f)) - 124f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -349f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1511f)), _wgslsmith_f_op_f32(func_1(global3.wyy, Struct_1(global3.x, vec2<i32>(var_1.x, var_1.x)), vec2<f32>(334f, 1000f), 1564f))))), 1i, global2[_wgslsmith_index_u32(4294967295u, 20u)], -315f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, 9785u);
}

