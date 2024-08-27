struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<f32, 2> = array<f32, 2>(602f, 1713f);

var<private> global2: i32 = -51064i;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1682f));
    let var_1 = global0[_wgslsmith_index_u32(~reverseBits(~(~1u)), 17u)];
    var_0 = _wgslsmith_div_f32(735f, arg_1);
    let var_2 = true;
    var var_3 = global0[_wgslsmith_index_u32(~(~firstTrailingBit(28357u)), 17u)];
    return abs(0u);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: f32) -> Struct_1 {
    global2 = firstLeadingBit(u_input.a.x);
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 24471u) | arg_1, ~vec2<u32>(0u, 4294967295u)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_0.x, 72393u)), ~vec2<u32>(arg_1.x, arg_0.x)) % 32u)), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 94944u, arg_1.x, 4294967295u), vec4<u32>(arg_0.x, 93747u, 1u, arg_0.x))), vec4<u32>(abs(arg_1.x), 0u, 2146u, _wgslsmith_mod_u32(1660u, arg_0.x)))), 17u)];
    var var_1 = -2147483647i;
    global1 = array<f32, 2>();
    global0 = array<Struct_1, 17>();
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, func_3(1000f, -423f, !vec4<bool>(false, any(vec3<bool>(true, false, true)), true, true))), 17u)];
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = global1[_wgslsmith_index_u32(countOneBits(~4294967295u), 2u)];
    global2 = u_input.a.x >> (1u % 32u);
    global2 = _wgslsmith_clamp_i32(6364i, u_input.b, u_input.a.x);
    let var_1 = func_2(abs(vec3<u32>(~max(1u, 1u), firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(29078u, 4294967295u)))), vec2<u32>(~4294967295u, ~70575u), 174f);
    global1 = array<f32, 2>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(firstLeadingBit(~16750u), 2u)], -1146f, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(1u), abs(4294967295u), 1u), 2u)])));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = 0i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(28873u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], -2545f, global1[_wgslsmith_index_u32(27589u, 2u)]) - vec4<f32>(global1[_wgslsmith_index_u32(1u, 2u)], -384f, global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(36999u, 2u)])), _wgslsmith_f_op_vec4_f32(func_4(func_2(vec3<u32>(4294967295u, 32808u, 10964u), vec2<u32>(1u, 1879u), global1[_wgslsmith_index_u32(36656u, 2u)]))), any(vec2<bool>(true, true))))));
    var var_2 = !vec4<bool>(all(vec4<bool>(false, true, true, true)), all(vec2<bool>(false, true)), false, false);
    var var_3 = 0u;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(52103u, 2u)], -1250f, global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(22386u, 2u)])) * vec4<f32>(var_1.x, var_1.x, -1403f, -537f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(47513u, 2u)], var_1.x, global1[_wgslsmith_index_u32(26803u, 2u)], -613f))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(408f, var_1.x, var_1.x, global1[_wgslsmith_index_u32(23883u, 2u)]))) * _wgslsmith_div_vec4_f32(vec4<f32>(214f, global1[_wgslsmith_index_u32(9406u, 2u)], var_1.x, -466f), vec4<f32>(236f, 1242f, -704f, 797f)))))));
    return _wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.a, 31654i, 9505i) >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 50259u), vec3<u32>(61221u, 22393u, 1u)) % vec3<u32>(32u)), vec3<i32>(~(-1i), arg_0.a, -1220i))))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.x);
    global0 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 2u)]), _wgslsmith_f_op_f32(func_1(Struct_1(u_input.b))), global1[_wgslsmith_index_u32(reverseBits(~abs(124048u)), 2u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(26869u, 2u)], 1825f, true))))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(7983u, 2u)], 1704f) - vec4<f32>(-311f, global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)], 1459f)), _wgslsmith_div_vec4_f32(vec4<f32>(657f, global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(68837u, 2u)], 408f), vec4<f32>(-453f, global1[_wgslsmith_index_u32(1u, 2u)], -165f, -982f))))))));
    var var_2 = func_2(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(firstTrailingBit(23241u), firstTrailingBit(4294967295u), 1u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(43770u, 1u, 0u), ~vec3<u32>(1u, 93675u, 39461u))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, _wgslsmith_sub_u32(4294967295u, 4294967295u), ~4294967295u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_add_vec2_u32(abs(~vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 5048u), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(30712u, 59570u), vec2<u32>(0u, 1u)), ~1u), ~vec2<u32>(1u, 1u))), _wgslsmith_f_op_f32(sign(var_1.x)));
    global0 = array<Struct_1, 17>();
    let var_3 = !(!vec4<bool>(true, -70694i >= _wgslsmith_sub_i32(var_0.a, -16639i), !any(vec4<bool>(false, false, true, true)), true));
    let var_4 = firstLeadingBit(select(-(vec2<i32>(-1i) * -u_input.a.wx), vec2<i32>(19937i, var_2.a & 2836i), select(var_3.zy, vec2<bool>(true, false), true)));
    var var_5 = ~(~_wgslsmith_dot_vec4_u32(~max(vec4<u32>(1u, 0u, 33705u, 4294967295u), vec4<u32>(0u, 22912u, 52735u, 72774u)), ~(~vec4<u32>(1u, 1u, 1u, 31767u))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(select(~vec3<u32>(4294967295u, 10184u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(12581u, 49835u, 4088u), vec3<u32>(37643u, 1u, 120267u)), var_3.yxw), vec3<u32>(1u, 1u, 1u)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 2765u, ~1u), abs(firstTrailingBit(vec3<u32>(4294967295u, 0u, 1u)))), _wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 21990u), vec3<u32>(1u, 4294967295u, 2255u)))), 2u)], vec4<i32>(1i, ~var_4.x, var_4.x, 13439i), _wgslsmith_f_op_vec3_f32(-var_1.yyx));
}

