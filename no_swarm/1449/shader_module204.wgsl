struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(26440u, 305f), Struct_1(26512u, 994f), Struct_1(4294967295u, 677f));

var<private> global2: array<vec3<i32>, 19>;

var<private> global3: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(227f, -970f), vec2<f32>(1000f, -2148f), vec2<f32>(268f, -1388f), vec2<f32>(-1150f, 1148f), vec2<f32>(-466f, -1245f), vec2<f32>(256f, -564f), vec2<f32>(886f, 247f), vec2<f32>(-151f, -2632f), vec2<f32>(-1507f, -220f), vec2<f32>(-256f, 1471f), vec2<f32>(-2823f, -1254f), vec2<f32>(1742f, -924f), vec2<f32>(566f, 180f), vec2<f32>(884f, -959f), vec2<f32>(-974f, 803f), vec2<f32>(1607f, -782f), vec2<f32>(-103f, 1000f), vec2<f32>(-105f, 259f), vec2<f32>(661f, -1052f), vec2<f32>(1000f, -1269f), vec2<f32>(-859f, -195f), vec2<f32>(1109f, -166f), vec2<f32>(1123f, 1000f), vec2<f32>(779f, -216f), vec2<f32>(-1101f, 218f), vec2<f32>(-1256f, 2132f), vec2<f32>(-1000f, -1557f), vec2<f32>(959f, -772f), vec2<f32>(-1227f, -661f));

var<private> global4: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(1u, 6753u, 112633u), vec3<u32>(46120u, 76367u, 68057u), vec3<u32>(12166u, 1u, 11379u), vec3<u32>(1u, 132u, 1u), vec3<u32>(55494u, 0u, 0u), vec3<u32>(4294967295u, 5022u, 0u), vec3<u32>(1u, 11039u, 38228u), vec3<u32>(25625u, 46143u, 6489u), vec3<u32>(10510u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 19613u, 11913u), vec3<u32>(3960u, 4294967295u, 4294967295u), vec3<u32>(40135u, 71841u, 46787u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -305f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1770f))), -1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(723f, 1351f, 584f), vec3<f32>(-1005f, 399f, -417f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(963f, 1000f, -1278f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-457f, 1000f, -1364f))))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1275f, 1000f, 470f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-388f, 928f, 533f) + vec3<f32>(610f, -878f, 383f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(267f, -733f, -1775f) + vec3<f32>(505f, 625f, -1111f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(456f, -870f, -305f) * vec3<f32>(-781f, 1084f, 2680f)))))))));
    var var_1 = Struct_1(select(16070u, _wgslsmith_mult_u32(4294967295u, 1u), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f)));
    var var_2 = select(!vec4<bool>(true, false, true, true & (var_1.b < 2087f)), !vec4<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)), true, true), true);
    let var_3 = var_2.x != !(-_wgslsmith_mult_i32(u_input.a, 32584i) <= firstTrailingBit(u_input.a));
    var_2 = select(select(!vec4<bool>(all(vec2<bool>(false, true)), true && var_2.x, false, true), vec4<bool>(!var_3, var_2.x, true, false), select(!(!vec4<bool>(false, true, true, var_2.x)), vec4<bool>(var_2.x || false, false, var_1.b == var_1.b, var_2.x), select(select(vec4<bool>(var_2.x, var_2.x, var_3, true), vec4<bool>(var_3, var_2.x, var_3, var_3), vec4<bool>(var_2.x, true, false, false)), !vec4<bool>(true, var_2.x, var_2.x, var_3), any(var_2.zw)))), vec4<bool>(var_3, !(-904f > var_0.x), !var_3, select((u_input.a & 0i) < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(u_input.a, -5532i, u_input.a)), !any(var_2.xz), var_3)), !vec4<bool>(!(true && var_3), !(634f <= var_1.b), all(select(var_2.xy, vec2<bool>(var_3, var_2.x), vec2<bool>(false, var_2.x))), true));
    return ~_wgslsmith_add_u32(0u, 0u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = ~(~(~_wgslsmith_add_u32(arg_1.a, max(arg_0.a, 36214u))));
    let var_1 = vec3<bool>(true, false, (_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0, var_0), 4294967295u) < firstTrailingBit(44778u)) != true);
    global1 = array<Struct_1, 3>();
    global4 = array<vec3<u32>, 13>();
    let var_2 = arg_0;
    return vec4<bool>(!var_1.x, all(var_1.xz), false, var_1.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec2<u32> {
    global0 = array<Struct_1, 2>();
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, abs(arg_1), ~arg_1, min(arg_0.a, 947u)) & _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0.a, 0u), vec4<u32>(arg_0.a, arg_0.a, 4294967295u, 4294967295u)), ~vec4<u32>(arg_1, 84536u, 37014u, 3428u)), ~(reverseBits(vec4<u32>(26199u, 4294967295u, 25853u, arg_0.a)) | (vec4<u32>(arg_1, arg_1, arg_1, arg_0.a) ^ vec4<u32>(4294967295u, 11442u, arg_0.a, arg_0.a)))), _wgslsmith_f_op_f32(-arg_0.b));
    var var_1 = vec3<bool>(true, firstLeadingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(38846i, -1i, -19411i, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, -1805i))) >= u_input.a, !(~u_input.a <= 1i) || !(true || (21833i >= u_input.a)));
    var var_2 = select(vec4<bool>(var_1.x, all(var_1.xy), var_1.x, false == !var_1.x), !(!func_4(global1[_wgslsmith_index_u32(func_3(), 3u)], global1[_wgslsmith_index_u32(~arg_0.a, 3u)])), !(!(!select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x), var_1.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b)) + 706f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1085f) - arg_0.b), 4294967295u > arg_1)), _wgslsmith_f_op_f32(-arg_0.b), 1000f), vec3<f32>(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-397f))))), _wgslsmith_f_op_f32(var_0.b * -145f), _wgslsmith_f_op_f32(select(962f, 434f, true)))));
    return vec2<u32>(_wgslsmith_clamp_u32(var_0.a, var_0.a, select(min(var_0.a, 1u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_1, arg_0.a), select(var_0.a, 54527u, true), _wgslsmith_mult_u32(1u, var_0.a)), var_1.x)), var_0.a & var_0.a);
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: i32) -> Struct_1 {
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~16374u), func_2(Struct_1(arg_1, -403f), _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(arg_0.x, 13u)], vec3<u32>(arg_0.x, 216u, arg_1) & global4[_wgslsmith_index_u32(arg_0.x, 13u)])).x) ^ _wgslsmith_mult_u32(~_wgslsmith_add_u32(~16048u, 6672u), _wgslsmith_div_u32(arg_0.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(arg_0.x, 13u)], vec3<u32>(arg_0.x, 0u, 24913u)), arg_1))), 2u)];
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> i32 {
    var var_0 = func_5(vec2<u32>(arg_0.a, func_5(~abs(vec2<u32>(4294967295u, 82853u)), (28113u | arg_0.a) | arg_0.a, u_input.a).a), 0u, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, 1i), u_input.a) | 16536i);
    return _wgslsmith_sub_i32(reverseBits(arg_1) << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_0.a, var_0.a) | (vec2<u32>(var_0.a, 16315u) | vec2<u32>(4294967295u, 1u))) % 32u), (u_input.a >> (1u % 32u)) >> (~(~var_0.a) % 32u));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = u_input.a;
    var_0 = func_6(func_5(firstLeadingBit(vec2<u32>(29792u, 59583u)) << (~func_2(global0[_wgslsmith_index_u32(16321u, 2u)], 1u) % vec2<u32>(32u)), ~4294967295u, reverseBits(-24024i)), 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(-1758f, -1000f))));
    var var_1 = Struct_1(func_3(), -1284f);
    var var_2 = any(func_4(global0[_wgslsmith_index_u32(0u, 2u)], Struct_1(var_1.a, arg_0.x)).xy);
    global3 = array<vec2<f32>, 29>();
    return global1[_wgslsmith_index_u32(var_1.a, 3u)];
}

fn func_7(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = _wgslsmith_mod_vec3_u32(~(~firstTrailingBit(global4[_wgslsmith_index_u32(arg_0.a, 13u)])), global4[_wgslsmith_index_u32(reverseBits(0u), 13u)]) ^ global4[_wgslsmith_index_u32(func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global3[_wgslsmith_index_u32(4294967295u, 29u)], vec2<f32>(-262f, arg_0.b)))), global3[_wgslsmith_index_u32(~arg_0.a, 29u)]), 0i).a, 13u)];
    var var_2 = !(!func_4(global0[_wgslsmith_index_u32(~func_3(), 2u)], global1[_wgslsmith_index_u32(var_1.x, 3u)]));
    global2 = array<vec3<i32>, 19>();
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1480f, arg_0.b))))))), _wgslsmith_f_op_f32(sign(arg_0.b)));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b)), arg_0.b, _wgslsmith_f_op_f32(-arg_0.b), func_5(vec2<u32>(1u, 1u), 86154u, u_input.a).b) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1289f, -1065f, arg_0.b, -407f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b, arg_0.b, 107f, 783f), vec4<f32>(1082f, 1362f, arg_0.b, 2640f), vec4<bool>(false, true, var_2.x, var_2.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -1716f, 118f, arg_0.b) * vec4<f32>(-804f, arg_0.b, arg_0.b, -966f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~1u, 1u);
    var var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0, _wgslsmith_sub_vec2_u32(var_0, var_0)), 19u)], global2[_wgslsmith_index_u32(~(1u ^ var_0.x), 19u)] << ((~vec3<u32>(var_0.x, 4294967295u, 4285u) | reverseBits(vec3<u32>(1u, var_0.x, 11551u))) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(global2[_wgslsmith_index_u32(~(var_0.x >> (var_0.x % 32u)), 19u)], vec3<i32>(2147483647i, abs(2147483647i), -12162i << (var_0.x % 32u))) ^ _wgslsmith_mult_vec3_i32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(4294967295u, 13u)], global4[_wgslsmith_index_u32(1u, 13u)]) << (var_0.x % 32u), 19u)], ~vec3<i32>(u_input.a, 36382i, 2147483647i) >> (vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1317f, -291f, -986f, -101f), vec4<f32>(-1064f, 780f, -1051f, 884f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1106f, -887f, 796f, 1158f), vec4<f32>(-1141f, 299f, 676f, 2229f))))) * _wgslsmith_f_op_vec4_f32(func_7(func_1(vec2<f32>(-183f, 274f), 2147483647i)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(256f, 1404f, 342f, 634f) * vec4<f32>(1160f, -2557f, -449f, 339f)) + vec4<f32>(456f, 1507f, -254f, 158f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -541f), _wgslsmith_f_op_f32(-563f + -1000f), 390f, _wgslsmith_f_op_f32(855f * 257f))))));
    var var_3 = func_5(vec2<u32>(1u, ~(~(var_0.x << (49042u % 32u)))), min(1u, _wgslsmith_clamp_u32(~(~var_0.x), 22262u, var_0.x ^ firstTrailingBit(1u))), firstLeadingBit(-15936i));
    global3 = array<vec2<f32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(1i), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(var_3.a, 29u)]), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_2.yx)))), _wgslsmith_f_op_vec4_f32(func_7(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(var_3.a), ~1119u), 3u)])).xx), vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), -2282f), ~abs(_wgslsmith_mult_u32(0u, 1u) >> (firstLeadingBit(var_3.a) % 32u)));
}

