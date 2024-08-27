struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_mult_u32(arg_0.x ^ ~0u, arg_0.x);
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    let var_1 = Struct_2(Struct_1(vec4<bool>(_wgslsmith_f_op_f32(abs(-1652f)) != _wgslsmith_f_op_f32(ceil(-375f)), !any(vec4<bool>(true, true, false, false)), true, !(arg_0.x < arg_0.x))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1678f, -216f)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(609f, _wgslsmith_f_op_f32(-681f + -254f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1535f, -576f)))), var_1.a.a.x)))));
    return i32(-1i) * -24598i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_1(vec4<bool>(arg_1.a.x, any(select(vec3<bool>(true, arg_0.a.x, arg_2.x), !vec3<bool>(arg_0.a.x, arg_2.x, arg_0.a.x), arg_1.a.yyw)), false == arg_0.a.x, !all(!arg_0.a.wzx)));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + arg_3.x)));
    let var_2 = ~vec4<i32>(func_3(vec2<u32>(~1u, ~15914u)), 33511i, 2147483647i, countOneBits(-1i));
    let var_3 = 1u;
    let var_4 = var_2.zx;
    return Struct_2(Struct_1(!select(arg_1.a, !vec4<bool>(var_0.a.x, arg_1.a.x, false, false), arg_0.a)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_3(_wgslsmith_mult_u32(1u, ~countOneBits(1u)));
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    let var_1 = ~_wgslsmith_div_vec4_u32(~max(firstTrailingBit(vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a)), vec4<u32>(var_0.a, var_0.a, 4294967295u, var_0.a)), ~firstLeadingBit(vec4<u32>(var_0.a, var_0.a, var_0.a, 43012u)));
    global0 = array<vec2<u32>, 28>();
    return 53500u;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(39244i, u_input.a & 2147483647i, -u_input.a & u_input.a), vec3<i32>(i32(-1i) * -21184i, -39333i | u_input.a, select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 0i)), -62380i, true))) << ((vec3<u32>(firstTrailingBit(47712u), 9289u, func_4(func_2(Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, false, false)), vec2<bool>(true, true), vec3<f32>(-943f, 1039f, -941f)), Struct_2(Struct_1(vec4<bool>(true, false, true, false))), Struct_1(vec4<bool>(true, true, true, true)))) >> (~vec3<u32>(~0u, 42746u, _wgslsmith_clamp_u32(66533u, 40929u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = -select(vec2<i32>(1i, abs(25406i)), ~vec2<i32>(_wgslsmith_div_i32(-2147483647i, u_input.a), var_0.x), true);
    let var_2 = reverseBits(~firstTrailingBit(global0[_wgslsmith_index_u32(~(~1u), 28u)]));
    var var_3 = !any(vec4<bool>(true, any(vec3<bool>(true, false, true)) | true, true, !any(vec3<bool>(true, false, false))));
    var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 448f)))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1277f))) + -3264f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1360f + 1209f) - _wgslsmith_f_op_f32(786f + -1381f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - 707f), -310f)))));
    return Struct_3(firstLeadingBit(~var_2.x));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-573f, arg_1, -1675f, -942f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1508f, -577f, 866f) + vec4<f32>(arg_1, arg_1, -698f, 321f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(569f, arg_1, arg_1, -623f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, 170f, arg_1, arg_1), vec4<f32>(arg_1, -446f, 803f, -748f), false))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_1, arg_1, -555f), vec4<f32>(-393f, arg_1, -553f, arg_1))))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 761f, arg_1, var_1.x) - vec4<f32>(-466f, 1116f, var_1.x, arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-908f, arg_1, -266f, arg_1) + vec4<f32>(-1017f, -299f, 261f, arg_1)), var_0.a != 11u)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, 1364f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, var_1.x, -603f, var_1.x)), vec4<f32>(-1438f, -142f, arg_1, 128f)))))));
    var var_2 = Struct_1(select(!vec4<bool>(true, any(vec3<bool>(true, true, false)), true, false), !vec4<bool>(any(vec2<bool>(false, false)), true, 21162i >= u_input.a, true), vec4<bool>(false, select(true, func_2(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, false, false)), vec2<bool>(false, true), vec3<f32>(arg_1, arg_1, 1844f)).a.a.x, true), true, true)));
    var var_3 = ~_wgslsmith_sub_vec4_u32(~select(abs(vec4<u32>(4294967295u, var_0.a, arg_0.a, 78910u)), vec4<u32>(arg_0.a, 1u, 41479u, 1u) | vec4<u32>(26813u, 0u, 64104u, arg_0.a), var_2.a.x), firstLeadingBit(vec4<u32>(arg_0.a, func_4(Struct_2(Struct_1(var_2.a)), Struct_2(Struct_1(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, false))), Struct_1(vec4<bool>(false, true, var_2.a.x, var_2.a.x))), min(var_0.a, 4863u), func_4(Struct_2(Struct_1(var_2.a)), Struct_2(Struct_1(var_2.a)), Struct_1(var_2.a)))));
    return Struct_2(Struct_1(!var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), _wgslsmith_div_f32(-1241f, 1f), vec4<i32>(~u_input.a, -(~_wgslsmith_div_i32(-2147483647i, u_input.a)), _wgslsmith_mult_i32(firstTrailingBit(-41172i), ~(-2147483647i >> (1u % 32u))), _wgslsmith_mod_i32(~(-31532i | u_input.a), -24058i)));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~4294967295u, firstTrailingBit(reverseBits(_wgslsmith_add_u32(58895u, 1u)))), ~abs(1u));
    let var_2 = Struct_2(func_2(var_0.a, func_5(func_1(), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-215f - -2178f))), countOneBits(vec4<i32>(2147483647i, -1i, u_input.a, 39742i))).a, select(select(var_0.a.a.xy, vec2<bool>(var_0.a.a.x, var_0.a.a.x), false), vec2<bool>(var_0.a.a.x, any(var_0.a.a.zw)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-336f, -681f, 180f) * vec3<f32>(-1716f, -625f, 684f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-736f, -876f, -1555f)), var_0.a.a.x)))).a);
    var var_3 = ~countOneBits(4294967295u);
    let var_4 = global0[_wgslsmith_index_u32(~(~(~1u)), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(2140f, -1889f)))) * _wgslsmith_f_op_f32(413f + -955f))), 1i);
}

