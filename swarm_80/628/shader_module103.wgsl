struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(4294967295u, 1u, 55500u), vec3<u32>(33769u, 0u, 78651u), vec3<u32>(0u, 0u, 1u), vec3<u32>(2251u, 31164u, 4294967295u), vec3<u32>(4294967295u, 59716u, 17395u), vec3<u32>(4294967295u, 19963u, 4219u), vec3<u32>(1u, 2602u, 19944u), vec3<u32>(1u, 4294967295u, 4294967295u));

var<private> global1: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec3<f32>(-399f, -454f, 766f), -10477i), Struct_3(vec3<f32>(1542f, 1232f, 110f), -40225i), Struct_3(vec3<f32>(-100f, 412f, 400f), -1i), Struct_3(vec3<f32>(-1308f, 1000f, 1588f), 36845i), Struct_3(vec3<f32>(-1142f, -109f, 1117f), -1i), Struct_3(vec3<f32>(1894f, 1000f, -1321f), 18752i), Struct_3(vec3<f32>(-1013f, 1061f, -170f), 12216i), Struct_3(vec3<f32>(1279f, -687f, -968f), 2147483647i), Struct_3(vec3<f32>(-294f, 1115f, -1233f), -1i), Struct_3(vec3<f32>(992f, 1357f, 606f), 0i), Struct_3(vec3<f32>(-756f, 766f, 211f), i32(-2147483648)), Struct_3(vec3<f32>(1907f, -350f, 568f), 2147483647i), Struct_3(vec3<f32>(508f, 1268f, -827f), -27156i), Struct_3(vec3<f32>(-1000f, 131f, 102f), 12015i), Struct_3(vec3<f32>(157f, 1000f, -502f), -1i), Struct_3(vec3<f32>(-298f, 658f, 580f), 15947i), Struct_3(vec3<f32>(877f, 1178f, -1402f), 35843i), Struct_3(vec3<f32>(-2224f, -180f, -1374f), 16754i), Struct_3(vec3<f32>(-1503f, -317f, -319f), -34062i), Struct_3(vec3<f32>(-925f, 1000f, -424f), -16970i), Struct_3(vec3<f32>(-1698f, 1006f, 287f), 1i), Struct_3(vec3<f32>(-1628f, 505f, -693f), 30837i), Struct_3(vec3<f32>(923f, -215f, 155f), -6513i), Struct_3(vec3<f32>(-741f, 862f, 537f), 0i), Struct_3(vec3<f32>(-217f, 506f, 918f), -1i), Struct_3(vec3<f32>(-1444f, -373f, -247f), -17583i), Struct_3(vec3<f32>(397f, 1337f, 1374f), 50886i), Struct_3(vec3<f32>(-1151f, -2071f, 1000f), -11291i), Struct_3(vec3<f32>(-1197f, 1646f, 272f), -33954i), Struct_3(vec3<f32>(1131f, -1044f, -1134f), 0i), Struct_3(vec3<f32>(-3019f, 716f, 1748f), -1i), Struct_3(vec3<f32>(1964f, -897f, -1668f), 47087i));

var<private> global2: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(1u, 84123u), vec2<u32>(0u, 70345u), vec2<u32>(78982u, 37134u), vec2<u32>(0u, 1u), vec2<u32>(59437u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(80913u, 4294967295u), vec2<u32>(35928u, 15878u), vec2<u32>(4294967295u, 1u), vec2<u32>(13992u, 65406u), vec2<u32>(11991u, 59983u), vec2<u32>(0u, 37735u), vec2<u32>(54254u, 1u), vec2<u32>(32426u, 12348u), vec2<u32>(0u, 45567u), vec2<u32>(996u, 21670u), vec2<u32>(90736u, 0u), vec2<u32>(1u, 62766u), vec2<u32>(9335u, 13874u), vec2<u32>(820u, 82903u), vec2<u32>(33035u, 1u), vec2<u32>(42345u, 101946u), vec2<u32>(4565u, 2704u), vec2<u32>(4294967295u, 0u), vec2<u32>(36648u, 20490u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    let var_0 = 1u;
    global2 = array<vec2<u32>, 25>();
    var var_1 = Struct_1(_wgslsmith_mult_u32(u_input.a.x, ~max(1u, ~var_0)));
    global0 = array<vec3<u32>, 8>();
    let var_2 = Struct_1(var_0);
    return -_wgslsmith_mod_i32(56031i, -2147483647i);
}

fn func_1() -> vec3<i32> {
    let var_0 = true;
    let var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x ^ u_input.a.x), 8u)]), ~firstLeadingBit(vec3<u32>(u_input.a.x, 33316u, 55925u)), reverseBits(global0[_wgslsmith_index_u32(18333u, 8u)])), ~(vec3<u32>(u_input.a.x, u_input.a.x, 0u) >> (_wgslsmith_mod_vec3_u32(global0[_wgslsmith_index_u32(~u_input.a.x, 8u)], global0[_wgslsmith_index_u32(~1u, 8u)]) % vec3<u32>(32u))), global0[_wgslsmith_index_u32(83331u, 8u)]);
    var var_2 = firstTrailingBit(~vec2<u32>(~12547u, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_clamp_u32(31283u, var_1.x, var_1.x))));
    var var_3 = vec4<i32>(-countOneBits(-15565i) ^ firstTrailingBit(_wgslsmith_clamp_i32(firstLeadingBit(24066i), ~(-2147483647i), -1i)), -1i, i32(-1i) * -(6648i << (u_input.a.x % 32u)), 1i);
    var var_4 = vec3<i32>(30390i, 2147483647i, firstLeadingBit(_wgslsmith_mult_i32(func_2(vec4<f32>(260f, 720f, 1117f, -1182f)), i32(-1i) * -1i)));
    return ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_4.x, var_3.x | var_4.x, -89983i), var_3.wyw, ~var_3.zzy);
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: i32) -> vec4<i32> {
    global1 = array<Struct_3, 32>();
    var var_0 = Struct_1(_wgslsmith_mult_u32(abs(u_input.a.x), ~u_input.a.x));
    global1 = array<Struct_3, 32>();
    let var_1 = arg_1;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -290f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1139f - -685f) - _wgslsmith_f_op_f32(f32(-1f) * -293f)))) * _wgslsmith_f_op_f32(max(192f, 978f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-487f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(559f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -245f) + 1088f)));
    return select(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(arg_2, 2147483647i, arg_2, arg_2)) >> (vec4<u32>(26595u, u_input.a.x, var_0.a, var_0.a) % vec4<u32>(32u)), vec4<i32>(arg_0.x, ~arg_2, _wgslsmith_add_i32(arg_2, -41739i), arg_2)), vec4<i32>(1i << (1u % 32u), 37398i, i32(-1i) * -57073i, 0i | arg_2) & -(~vec4<i32>(-1i, arg_2, 39137i, -1i)), select(vec4<bool>(true, true, var_2.x > -2190f, true), select(vec4<bool>(false, false, arg_1, true), vec4<bool>(true, arg_1, false, var_1), !vec4<bool>(arg_1, var_1, false, false)), vec4<bool>(true, arg_1, 1u < u_input.a.x, any(vec2<bool>(var_1, var_1))))) << (max(min(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, var_0.a, 25534u, var_0.a), vec4<u32>(3015u, u_input.a.x, 40284u, u_input.a.x)), ~vec4<u32>(100354u, 4294967295u, var_0.a, var_0.a)), vec4<u32>(var_0.a & 36734u, select(u_input.a.x, var_0.a, false), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, var_0.a, 4294967295u), vec4<u32>(24599u, 1u, var_0.a, 4294967295u)), 0u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(5829u, u_input.a.x, 62229u, var_0.a), _wgslsmith_sub_vec4_u32(vec4<u32>(43061u, u_input.a.x, 0u, 0u), vec4<u32>(4294967295u, 30417u, var_0.a, 0u))) | vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, 23865u, u_input.a.x), countOneBits(u_input.a.x), ~u_input.a.x, ~var_0.a)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(12882i, 2147483647i, -2147483647i, -19309i), vec4<i32>(-1i, 0i, 2147483647i, -14703i)), 1i), 1i), -reverseBits(~(-37629i)), i32(-1i) * -firstTrailingBit(abs(-2147483647i)));
    var var_1 = ~_wgslsmith_mult_i32(~1i, abs(var_0.x));
    let var_2 = global1[_wgslsmith_index_u32(~(~u_input.a.x & ~99129u), 32u)];
    var_1 = _wgslsmith_dot_vec4_i32(~(~(vec4<i32>(-1i) * -vec4<i32>(var_2.b, 39782i, var_0.x, -60347i))), select(firstTrailingBit(vec4<i32>(-18414i, _wgslsmith_div_i32(2147483647i, var_0.x), ~1i, var_2.b | var_2.b)), _wgslsmith_div_vec4_i32(func_3(func_1(), true, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(-22062i, var_2.b, -66738i, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -30294i, 1i, -3997i), vec4<i32>(var_2.b, var_0.x, var_0.x, var_0.x)))), select(vec4<bool>(all(vec4<bool>(false, false, true, false)), any(vec3<bool>(false, false, false)), true, true), vec4<bool>(false, true, all(vec3<bool>(true, true, true)), false), u_input.a.x > _wgslsmith_div_u32(u_input.a.x, u_input.a.x))));
    let var_3 = _wgslsmith_mult_vec4_i32(reverseBits(~(-vec4<i32>(2147483647i, -19064i, var_0.x, -15175i) ^ ~vec4<i32>(-44727i, 18681i, -28679i, var_0.x))), vec4<i32>(_wgslsmith_add_i32(var_0.x, _wgslsmith_sub_i32(func_2(vec4<f32>(-1000f, var_2.a.x, 650f, -506f)), select(-15886i, 7985i, true))), -224i, -var_0.x, -(~(-2147483647i))));
    global1 = array<Struct_3, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(var_3.x, var_2.b, var_3.x), reverseBits(vec3<i32>(~var_3.x, var_0.x, var_3.x) | var_3.wyw), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(1u, 63716u, 7552u)), vec3<u32>(max(select(21501u, 4294967295u, false), u_input.a.x), u_input.a.x, firstTrailingBit(~u_input.a.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(var_0.x, var_2.b), ~2147483647i), -7589i, _wgslsmith_add_i32(abs(var_3.x), 6394i), min(_wgslsmith_div_i32(var_0.x, 0i), ~var_3.x)), ~max(var_3, vec4<i32>(1i, var_0.x, var_3.x, 13807i))), abs(countOneBits(vec3<u32>(abs(u_input.a.x), u_input.a.x, u_input.a.x))));
}

