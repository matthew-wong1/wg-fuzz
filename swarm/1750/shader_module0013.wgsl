struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(4294967295u, 181f), Struct_1(27864u, 264f), Struct_1(70483u, 525f), Struct_1(0u, -583f), Struct_1(1u, -1320f), Struct_1(1u, 682f));

var<private> global1: array<Struct_1, 13>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

var<private> global3: array<Struct_1, 21>;

var<private> global4: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec4<f32>(1000f, -277f, 168f, -165f)), Struct_2(vec4<f32>(1788f, -1018f, -499f, -195f)), Struct_2(vec4<f32>(527f, -559f, 1104f, 208f)), Struct_2(vec4<f32>(2915f, 1224f, -1587f, -147f)), Struct_2(vec4<f32>(1775f, -375f, 639f, -975f)), Struct_2(vec4<f32>(894f, -1236f, 1277f, 717f)), Struct_2(vec4<f32>(-750f, -407f, -394f, -1382f)), Struct_2(vec4<f32>(952f, -1391f, -138f, -1984f)), Struct_2(vec4<f32>(-1196f, -568f, 1000f, 231f)), Struct_2(vec4<f32>(-193f, -566f, -611f, -319f)), Struct_2(vec4<f32>(943f, -2618f, -1747f, 1194f)), Struct_2(vec4<f32>(-1958f, -981f, 700f, 1041f)), Struct_2(vec4<f32>(-744f, 684f, -453f, -827f)), Struct_2(vec4<f32>(964f, -1417f, -504f, -663f)), Struct_2(vec4<f32>(-569f, 1813f, -1439f, 169f)), Struct_2(vec4<f32>(-458f, -209f, 796f, -1959f)), Struct_2(vec4<f32>(1737f, 633f, 689f, -498f)), Struct_2(vec4<f32>(-1087f, -371f, 978f, -461f)), Struct_2(vec4<f32>(-337f, 471f, -265f, 742f)), Struct_2(vec4<f32>(155f, 1000f, 650f, 1508f)), Struct_2(vec4<f32>(-528f, -472f, -516f, 109f)), Struct_2(vec4<f32>(878f, -911f, 689f, 627f)), Struct_2(vec4<f32>(-2450f, -133f, -292f, -1486f)), Struct_2(vec4<f32>(-541f, 131f, -1127f, 251f)), Struct_2(vec4<f32>(-2646f, -277f, -1000f, 1421f)), Struct_2(vec4<f32>(-202f, 1919f, 608f, -311f)), Struct_2(vec4<f32>(-213f, -872f, -763f, 1073f)), Struct_2(vec4<f32>(2207f, 1000f, 266f, 818f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> vec2<f32> {
    var var_0 = 4294967295u;
    let var_1 = u_input.b.x;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, _wgslsmith_f_op_f32(-1000f - 1000f), 2178f, _wgslsmith_f_op_f32(-325f + 305f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-109f, -701f, -175f, -1885f) * vec4<f32>(1295f, 704f, 1000f, 1313f)))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(var_2.a.zyz - vec3<f32>(_wgslsmith_f_op_f32(157f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.x - 1286f), -2092f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1444f)), var_2.a.x));
    return vec2<f32>(_wgslsmith_f_op_f32(848f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1158f) + var_3.x))), 1f);
}

fn func_2(arg_0: i32) -> vec3<u32> {
    let var_0 = Struct_1(4294967295u, -1000f);
    var var_1 = 8069i != abs(_wgslsmith_mod_i32(min(~arg_0, 1i), _wgslsmith_add_i32(arg_0, _wgslsmith_mod_i32(u_input.c.x, u_input.e.x))));
    let var_2 = -2105f;
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3(-42591i, _wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.d) ^ firstLeadingBit(vec2<u32>(69752u, 4294967295u)), vec2<u32>(var_0.a << (u_input.a % 32u), _wgslsmith_mult_u32(u_input.a, 139228u)))))));
    let var_4 = any(!(!vec4<bool>(all(vec4<bool>(true, true, true, false)), true, true, true | global2.x)));
    return min(min(u_input.b.xzz, _wgslsmith_sub_vec3_u32(~u_input.b.xwz, ~u_input.b.wzx)), u_input.b.xzw);
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 1665f, -1000f) - vec4<f32>(arg_0.x, 294f, 166f, 1773f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -1291f, arg_0.x) + vec4<f32>(-217f, 165f, 230f, 636f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1573f, arg_0.x, arg_0.x, -1516f) - vec4<f32>(-1000f, -759f, 1301f, -1000f)), select(select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(true, global2.x, true, false), global2.x), !vec4<bool>(true, false, true, global2.x), vec4<bool>(global2.x, global2.x, global2.x, false)))))));
    var var_1 = ~(~0u);
    var var_2 = ~_wgslsmith_sub_vec3_u32(select(~func_2(-1i), vec3<u32>(abs(u_input.d.x), ~0u, _wgslsmith_div_u32(48131u, u_input.b.x)), !select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, global2.x, global2.x), true)), u_input.b.ywz);
    let var_3 = vec2<i32>(max(_wgslsmith_div_i32(u_input.c.x, i32(-1i) * -2147483647i), reverseBits(select(-1i, u_input.e.x, true))), u_input.c.x ^ reverseBits(1i));
    global3 = array<Struct_1, 21>();
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 6u)];
    let var_1 = var_0.a;
    let var_2 = global3[_wgslsmith_index_u32(var_0.a, 21u)];
    global3 = array<Struct_1, 21>();
    global1 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1378f, _wgslsmith_f_op_f32(-1560f * var_0.b), _wgslsmith_f_op_f32(min(var_2.b, var_2.b))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(336f, var_0.b, -814f) + vec3<f32>(-994f, 621f, var_2.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, -953f, var_2.b))))), var_2.b, vec2<i32>(i32(-1i) * -44416i, u_input.c.x), vec4<f32>(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), -2353f, _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, -835f), vec2<f32>(var_0.b, 164f)), select(u_input.d.x, ~0u, !global2.x)))));
}

