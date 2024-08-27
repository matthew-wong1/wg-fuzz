struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-1217f, -1000f, 1560f, 1369f), vec4<f32>(-746f, 1000f, 2130f, 1045f), vec4<f32>(1297f, -165f, 660f, -422f), vec4<f32>(334f, 205f, 1016f, 1000f), vec4<f32>(-733f, 402f, -350f, 265f), vec4<f32>(-975f, 1774f, -1000f, 1000f), vec4<f32>(2746f, -1323f, 1160f, -1065f), vec4<f32>(-1000f, 1119f, 585f, 1721f), vec4<f32>(-1000f, 1083f, -619f, -923f), vec4<f32>(-459f, -1064f, 129f, -1570f), vec4<f32>(-884f, -465f, 573f, -344f), vec4<f32>(1269f, 1380f, 785f, 1000f), vec4<f32>(1302f, -627f, 1892f, -1000f), vec4<f32>(867f, -221f, -163f, -136f), vec4<f32>(-202f, 945f, -312f, 635f), vec4<f32>(-904f, -222f, 690f, -368f), vec4<f32>(-270f, 201f, 1000f, -2517f), vec4<f32>(-2325f, -892f, -888f, -560f), vec4<f32>(786f, 467f, 233f, 219f), vec4<f32>(724f, -1723f, -1000f, 546f), vec4<f32>(-1000f, -354f, -234f, -1156f), vec4<f32>(109f, -1703f, 554f, -1056f), vec4<f32>(-321f, -654f, 885f, -704f), vec4<f32>(-1000f, 1904f, 1274f, 475f));

var<private> global1: array<bool, 8> = array<bool, 8>(true, true, false, false, false, true, false, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    var var_0 = reverseBits(~(-_wgslsmith_add_vec4_i32(-vec4<i32>(-27934i, -8262i, -1i, 1i), countOneBits(vec4<i32>(-1286i, 12485i, 1i, 12778i)))));
    let var_1 = true;
    var_0 = -vec4<i32>(var_0.x, -47792i, firstLeadingBit(var_0.x), (var_0.x << (firstLeadingBit(u_input.a.x) % 32u)) >> (reverseBits(0u) % 32u));
    var var_2 = Struct_1(any(select(arg_0.wyz, !vec3<bool>(arg_0.x, global1[_wgslsmith_index_u32(67010u, 8u)], arg_0.x), arg_0.xzw)), 1u);
    var_0 = ~_wgslsmith_div_vec4_i32(vec4<i32>(-13412i, ~(~(-9860i)), ~(-var_0.x), var_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(-var_0.x, var_0.x, var_0.x, -37406i), -vec4<i32>(2147483647i, 95480i, -10310i, var_0.x)));
    return global1[_wgslsmith_index_u32(u_input.a.x << (~(4299u & (1u >> ((u_input.a.x >> (var_2.b % 32u)) % 32u))) % 32u), 8u)];
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    global1 = array<bool, 8>();
    let var_0 = vec3<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~abs(u_input.a.x), _wgslsmith_div_u32(63599u, _wgslsmith_mult_u32(70592u, 33780u))), 8u)], func_3(vec4<bool>(!(!global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), true, false, _wgslsmith_f_op_f32(min(arg_0, arg_0)) != _wgslsmith_f_op_f32(-arg_0))), any(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]), vec2<bool>(global1[_wgslsmith_index_u32(40360u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec2<bool>(global1[_wgslsmith_index_u32(37846u, 8u)], true)))));
    let var_1 = Struct_1(u_input.a.x <= u_input.a.x, u_input.a.x);
    let var_2 = _wgslsmith_sub_vec3_i32(~(~vec3<i32>(arg_1, 1i, 1i)), ~max(vec3<i32>(-arg_1, 1i, i32(-1i) * -1i), abs(vec3<i32>(-9269i, arg_1, arg_1))));
    var var_3 = var_1;
    return var_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_f32(trunc(-122f)), abs(_wgslsmith_add_i32(arg_1.x, 2147483647i)));
    var var_1 = ~vec2<u32>(var_0.b, _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_3, ~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, var_0.b, u_input.a.x, arg_2.b) >> (vec4<u32>(u_input.a.x, 88526u, arg_3, 13202u) % vec4<u32>(32u)), min(u_input.a, u_input.a))));
    let var_2 = vec3<bool>(!any(vec3<bool>(true, true, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, ~88450u), ~reverseBits(u_input.a.wx)) != 21697u, var_0.a);
    var var_3 = vec4<bool>(var_0.a, arg_2.a, false, true);
    let var_4 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(~arg_1.x, arg_1.x) | arg_1.x, arg_1.x, -4770i >> (abs(var_0.b) % 32u)), -30683i, 0i, -(~(-arg_1.x)));
    return func_2(_wgslsmith_f_op_f32(-arg_0.x), var_4.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = arg_0;
    let var_1 = arg_0;
    var_0 = Struct_1(all(vec3<bool>(select(arg_0.a, false, arg_0.a), arg_1.a, var_1.a)), ~(~1u));
    let var_2 = -33543i;
    var var_3 = Struct_1(any(vec2<bool>(false, var_0.a)), func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -564f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(259f)))), -vec3<i32>(-var_2, _wgslsmith_mod_i32(var_2, var_2), -2147483647i | var_2), Struct_1(-358f >= _wgslsmith_f_op_f32(sign(-541f)), arg_0.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(107048u, 0u, 1u, arg_0.b), _wgslsmith_mult_vec4_u32(~u_input.a, vec4<u32>(4294967295u, 0u, u_input.a.x, var_0.b)))).b);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 8>();
    let var_0 = vec4<i32>(firstLeadingBit(min(_wgslsmith_mod_i32(1i, 1i), ~reverseBits(22374i))), firstTrailingBit(max(func_4(func_1(vec2<f32>(909f, -3197f), vec3<i32>(-25417i, 18060i, 63386i), Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.a.x), u_input.a.x), Struct_1(global1[_wgslsmith_index_u32(1931u, 8u)], 0u)), 0i)), ~35029i, _wgslsmith_div_i32(~abs(_wgslsmith_clamp_i32(18803i, -2147483647i, 51654i)), -abs(reverseBits(2147483647i))));
    let var_1 = func_2(_wgslsmith_f_op_f32(1363f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-816f, 443f)))) * _wgslsmith_f_op_f32(trunc(-352f)))), var_0.x);
    global1 = array<bool, 8>();
    global0 = array<vec4<f32>, 24>();
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -1768f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1636f), vec2<f32>(-866f, 1117f), vec2<bool>(false, true))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-580f, -2488f))))), var_0.xyw, Struct_1(var_1.a, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(307f, 1308f))), vec3<i32>(var_0.x, -var_0.x, -10087i), var_1, u_input.a.x | ~70746u).b), u_input.a.x);
    var var_3 = i32(-1i) * -58798i;
    global1 = array<bool, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, u_input.a.zxz, 11578u, ~(-26459i), var_0.yx);
}

