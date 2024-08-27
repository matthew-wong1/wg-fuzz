struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<Struct_2, 5>;

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<i32>(-3466i, 2147483647i, -1i, 16700i), Struct_1(vec2<f32>(-1405f, 409f))), Struct_2(vec4<i32>(-23227i, 4621i, 2147483647i, -34206i), Struct_1(vec2<f32>(-1089f, 1000f))), Struct_2(vec4<i32>(9113i, 0i, i32(-2147483648), -24585i), Struct_1(vec2<f32>(383f, -1076f))), Struct_2(vec4<i32>(-8242i, i32(-2147483648), 2147483647i, 2147483647i), Struct_1(vec2<f32>(-414f, 1845f))), Struct_2(vec4<i32>(0i, -1i, 2147483647i, i32(-2147483648)), Struct_1(vec2<f32>(-212f, 1283f))), Struct_2(vec4<i32>(0i, 23714i, -58821i, 27420i), Struct_1(vec2<f32>(633f, 2033f))), Struct_2(vec4<i32>(i32(-2147483648), 0i, -14367i, 1i), Struct_1(vec2<f32>(-567f, 964f))), Struct_2(vec4<i32>(-73014i, 10723i, -21546i, -16208i), Struct_1(vec2<f32>(-467f, -1000f))), Struct_2(vec4<i32>(-8146i, 2147483647i, 2147483647i, -1i), Struct_1(vec2<f32>(-362f, -706f))), Struct_2(vec4<i32>(1i, 17938i, -18104i, 41148i), Struct_1(vec2<f32>(333f, -1000f))), Struct_2(vec4<i32>(1i, 0i, -11922i, 2147483647i), Struct_1(vec2<f32>(-252f, -552f))), Struct_2(vec4<i32>(i32(-2147483648), 1i, 2147483647i, i32(-2147483648)), Struct_1(vec2<f32>(2210f, -812f))), Struct_2(vec4<i32>(-12914i, i32(-2147483648), 2147483647i, i32(-2147483648)), Struct_1(vec2<f32>(-397f, -457f))), Struct_2(vec4<i32>(6678i, 0i, 0i, -49942i), Struct_1(vec2<f32>(-501f, 972f))), Struct_2(vec4<i32>(2147483647i, 5824i, 23402i, 62196i), Struct_1(vec2<f32>(678f, 1264f))), Struct_2(vec4<i32>(-11118i, 2400i, i32(-2147483648), 1i), Struct_1(vec2<f32>(338f, -1778f))), Struct_2(vec4<i32>(28656i, -24355i, -7330i, 1127i), Struct_1(vec2<f32>(-721f, 651f))), Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -11039i), Struct_1(vec2<f32>(938f, -2795f))), Struct_2(vec4<i32>(38712i, 37776i, 1041i, 10529i), Struct_1(vec2<f32>(932f, -439f))), Struct_2(vec4<i32>(-38488i, -3783i, 16175i, -11763i), Struct_1(vec2<f32>(1294f, 2270f))), Struct_2(vec4<i32>(2147483647i, 2572i, i32(-2147483648), 2147483647i), Struct_1(vec2<f32>(758f, 270f))), Struct_2(vec4<i32>(3073i, i32(-2147483648), i32(-2147483648), -1i), Struct_1(vec2<f32>(188f, -633f))), Struct_2(vec4<i32>(-35352i, 1i, -51457i, 1030i), Struct_1(vec2<f32>(971f, 566f))), Struct_2(vec4<i32>(-1i, -1i, -24833i, i32(-2147483648)), Struct_1(vec2<f32>(670f, -640f))), Struct_2(vec4<i32>(63898i, 17080i, 2147483647i, i32(-2147483648)), Struct_1(vec2<f32>(-541f, 1834f))), Struct_2(vec4<i32>(-16532i, i32(-2147483648), 2147483647i, 25079i), Struct_1(vec2<f32>(1418f, -954f))));

var<private> global3: Struct_1 = Struct_1(vec2<f32>(1678f, 1165f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = array<bool, 2>();
    var var_0 = global0[_wgslsmith_index_u32(~min(_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(47849u, 4298u, 1u, 54170u)), ~vec4<u32>(4294967295u, 0u, 79501u, 4294967295u)), ~min(~1u, 1u)), 2u)];
    global1 = array<Struct_2, 5>();
    global1 = array<Struct_2, 5>();
    return all(!(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 2u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(16447u, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(54457u, 2u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 2u)])), any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 2u)], false, false, true)))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32) -> u32 {
    var var_0 = select(!vec3<bool>(-898f == _wgslsmith_f_op_f32(-global3.a.x), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(5207u, 0u, 1u, arg_2), vec4<u32>(arg_2, 4294967295u, 0u, arg_2))), 2u)], func_3(Struct_2(vec4<i32>(arg_1, 25694i, arg_0, 1i), Struct_1(vec2<f32>(-1566f, 108f))))), vec3<bool>(all(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 2u)], global0[_wgslsmith_index_u32(arg_2, 2u)], global0[_wgslsmith_index_u32(arg_2, 2u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(2593u, 2u)], global0[_wgslsmith_index_u32(62368u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(arg_2, 2u)], true, false))), global0[_wgslsmith_index_u32(0u, 2u)], true), all(!(!select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_2, 2u)]), global0[_wgslsmith_index_u32(4294967295u, 2u)]))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a * global3.a) * global3.a))));
    var var_2 = _wgslsmith_clamp_vec2_u32(~(~firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(53479u, arg_2), vec2<u32>(arg_2, 21891u)))), vec2<u32>(~(~59783u), arg_2), countOneBits(vec2<u32>(arg_2, arg_2)));
    var var_3 = Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, abs(arg_1), -84448i ^ u_input.a, reverseBits(arg_1)) | (-vec4<i32>(arg_1, -32914i, 6267i, u_input.b.x) & vec4<i32>(arg_0, -1i, arg_0, -90374i)), vec4<i32>(firstTrailingBit(-2147483647i), -50606i, -3682i >> (arg_2 % 32u), u_input.c.x) >> (abs(abs(vec4<u32>(var_2.x, arg_2, var_2.x, arg_2))) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a.x, 653f), global3.a))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.a.x, var_1.a.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_3.b.a))), vec2<f32>(global3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(266f - global3.a.x) - -146f))))));
    return var_2.x;
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    let var_0 = (select(44868u, _wgslsmith_sub_u32(~2580u, 1u), global0[_wgslsmith_index_u32(abs(0u), 2u)] || any(vec2<bool>(false, false))) | abs(27779u)) | 1u;
    global2 = array<Struct_2, 26>();
    var var_1 = _wgslsmith_clamp_u32(var_0, func_2(_wgslsmith_add_i32(_wgslsmith_add_i32(firstLeadingBit(-47250i), max(-55336i, u_input.c.x)), ~(~(-9874i))), 2147483647i, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 15632u), ~vec2<u32>(4294967295u, var_0)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(17286u, 4294967295u, 49686u, var_0), min(vec4<u32>(0u, var_0, var_0, var_0), vec4<u32>(var_0, 4294967295u, var_0, var_0))) % 32u)), 18511u);
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(982f + arg_0.x), -665f)), _wgslsmith_f_op_vec2_f32(-arg_0.zy)));
    var var_3 = ~0u;
    return _wgslsmith_dot_vec3_i32(u_input.b, u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = arg_2.x;
    global2 = array<Struct_2, 26>();
    let var_1 = 1u;
    var var_2 = Struct_2(_wgslsmith_add_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(32301i, arg_3.x, 12289i, u_input.c.x), vec4<i32>(-27971i, arg_3.x, u_input.b.x, arg_3.x)), ~vec4<i32>(u_input.b.x, arg_3.x, u_input.a, arg_3.x), arg_1.x > arg_1.x), ~_wgslsmith_add_vec4_i32(vec4<i32>(21582i, arg_3.x, -7093i, u_input.c.x), vec4<i32>(0i, arg_3.x, -1i, arg_3.x))) & select(arg_3, arg_3, vec4<bool>(false, !global0[_wgslsmith_index_u32(var_1, 2u)], !global0[_wgslsmith_index_u32(4294967295u, 2u)], true)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-224f, arg_1.x) - arg_1.yx) * arg_0.a)));
    global3 = var_2.b;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-vec4<i32>(0i, u_input.b.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, u_input.a), u_input.c), -1i), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(163f, global3.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.a.x, global3.a.x, -2056f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.a.x, -560f, global3.a.x)))))), !select(!vec2<bool>(global0[_wgslsmith_index_u32(15725u, 2u)], false), !vec2<bool>(false, global0[_wgslsmith_index_u32(10686u, 2u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(39393u, 2u)]), false)), vec4<i32>(u_input.a, -2147483647i, ~func_1(vec3<f32>(global3.a.x, 588f, -623f)), select(0i, select(u_input.b.x, -3831i, false), any(vec2<bool>(global0[_wgslsmith_index_u32(50741u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]))))));
    global3 = func_4(func_4(func_4(func_4(var_0.b, vec3<f32>(249f, -494f, global3.a.x), !vec2<bool>(global0[_wgslsmith_index_u32(29489u, 2u)], global0[_wgslsmith_index_u32(55322u, 2u)]), -vec4<i32>(-2147483647i, u_input.a, u_input.b.x, 65003i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1580f, 114f, -870f)), select(select(vec2<bool>(global0[_wgslsmith_index_u32(4023u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(18414u, 2u)]), true), select(vec2<bool>(global0[_wgslsmith_index_u32(49799u, 2u)], global0[_wgslsmith_index_u32(44966u, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(55335u, 2u)]), false), true), firstTrailingBit(-vec4<i32>(16015i, 19856i, var_0.a.x, 2147483647i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-665f, var_0.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -738f))), vec2<bool>(true, true), vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(27714i, -34404i, var_0.a.x), vec3<i32>(33373i, 1i, u_input.c.x)), u_input.b.x, func_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.a.x, 1000f, 1236f)))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.c.x, u_input.b.x, u_input.b.x), 0i >> (1u % 32u)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, -481f, var_0.b.a.x)))), !(!vec2<bool>(var_0.b.a.x > 582f, global0[_wgslsmith_index_u32(firstTrailingBit(0u), 2u)])), select(var_0.a, var_0.a, all(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(17876u, 2u)], true), vec3<bool>(true, true, false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(53374u, 2u)])))) & reverseBits(abs(vec4<i32>(var_0.a.x, var_0.a.x, -8033i, 1798i))));
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(195f, -338f)), vec2<f32>(220f, -477f), !vec2<bool>(global0[_wgslsmith_index_u32(53681u, 2u)], false)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), func_4(Struct_1(vec2<f32>(global3.a.x, -1665f)), vec3<f32>(global3.a.x, -933f, global3.a.x), !vec2<bool>(global0[_wgslsmith_index_u32(99447u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]), var_0.a).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1083f * var_0.b.a.x) + 1f))), vec2<bool>(all(select(vec2<bool>(global0[_wgslsmith_index_u32(27331u, 2u)], global0[_wgslsmith_index_u32(71279u, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), global0[_wgslsmith_index_u32(0u, 2u)])) | false, any(vec3<bool>(8763i < var_0.a.x, true, global0[_wgslsmith_index_u32(~4294967295u, 2u)]))), vec4<i32>(_wgslsmith_mult_i32(-1i ^ var_0.a.x, abs(var_0.a.x)), _wgslsmith_mult_i32(var_0.a.x, u_input.c.x & u_input.a), ~var_0.a.x, 0i) ^ vec4<i32>(2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, 2147483647i, u_input.a), var_0.a.wyy), 49064i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, 45449i, var_0.a.x), _wgslsmith_mult_i32(-2147483647i, var_0.a.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.b.a)) + vec2<f32>(2286f, 1274f))))));
    let var_3 = global1[_wgslsmith_index_u32(35934u, 5u)];
    var var_4 = _wgslsmith_div_f32(-2620f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.x, ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(67179u, 45514u, 0u, 0u)), 93442u), firstTrailingBit(var_3.a.yyx));
}

