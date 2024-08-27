struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -225f;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), 1u);

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<bool>(false, true, true, false), 4294967295u), Struct_1(vec4<bool>(true, false, false, true), 0u), Struct_1(vec4<bool>(false, false, true, false), 0u), Struct_1(vec4<bool>(true, false, true, false), 30733u), Struct_1(vec4<bool>(true, true, true, true), 0u), Struct_1(vec4<bool>(true, true, false, false), 38734u), Struct_1(vec4<bool>(false, false, true, false), 41722u), Struct_1(vec4<bool>(true, true, false, false), 12186u), Struct_1(vec4<bool>(true, true, true, true), 66346u), Struct_1(vec4<bool>(true, true, false, true), 4294967295u), Struct_1(vec4<bool>(false, false, true, true), 31457u), Struct_1(vec4<bool>(true, true, false, false), 44087u), Struct_1(vec4<bool>(true, false, false, true), 33061u), Struct_1(vec4<bool>(false, true, true, false), 71555u), Struct_1(vec4<bool>(true, false, true, true), 1u), Struct_1(vec4<bool>(false, false, false, true), 1u), Struct_1(vec4<bool>(false, false, false, true), 1u), Struct_1(vec4<bool>(true, false, false, true), 0u), Struct_1(vec4<bool>(false, true, true, false), 0u), Struct_1(vec4<bool>(true, false, true, true), 47100u), Struct_1(vec4<bool>(false, false, false, true), 33082u), Struct_1(vec4<bool>(true, true, true, false), 4294967295u), Struct_1(vec4<bool>(true, false, true, false), 1u), Struct_1(vec4<bool>(false, true, false, false), 34712u), Struct_1(vec4<bool>(false, false, false, true), 58562u), Struct_1(vec4<bool>(false, false, true, false), 25338u), Struct_1(vec4<bool>(false, true, true, true), 21851u));

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, false, true, true), 4294967295u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: u32, arg_3: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1231f), _wgslsmith_f_op_f32(select(-1589f, 154f, false)), _wgslsmith_f_op_f32(max(1046f, 1517f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-466f, 167f, 1258f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1319f, -1478f, 1000f) * vec3<f32>(1300f, 836f, 647f)))))));
    global3 = Struct_1(vec4<bool>(global3.a.x, (1u | max(0u, global3.b)) != ~(~43550u), arg_1.x > -1i, true && global1.a.x), firstLeadingBit(4294967295u));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 2007u, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, arg_0, 43645u), vec3<u32>(1u, 56771u, 0u))), arg_2) >> (~_wgslsmith_clamp_u32(~(~65310u), 0u, 1u) % 32u), 27u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(291f, var_0.x), var_0.yz)))));
    var_1 = global2[_wgslsmith_index_u32(global1.b, 27u)];
    return 4294967295u;
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    global2 = array<Struct_1, 27>();
    global1 = global2[_wgslsmith_index_u32(abs(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b.x, 5259u), firstTrailingBit(vec2<u32>(global1.b, 19415u))), ~(~vec2<u32>(648u, 137159u))))), 27u)];
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(897f))), _wgslsmith_f_op_f32(327f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(358f + -1000f), _wgslsmith_f_op_f32(-903f + 1039f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(1265f, -1082f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(936f - -722f) + -576f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 278f), _wgslsmith_f_op_f32(floor(282f)))), 1000f)));
    let var_1 = ~(firstLeadingBit(select(vec3<u32>(arg_0.x, global1.b, u_input.b.x), vec3<u32>(global3.b, global3.b, 51468u), global1.a.x)) >> ((vec3<u32>(u_input.b.x, 1u, u_input.b.x) ^ select(vec3<u32>(arg_0.x, global3.b, global1.b), vec3<u32>(0u, 26823u, global3.b), vec3<bool>(true, global1.a.x, false))) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(~0u, ~_wgslsmith_div_u32(u_input.a, 4294967295u), arg_0.x), vec3<u32>(_wgslsmith_clamp_u32(30639u, _wgslsmith_dot_vec3_u32(vec3<u32>(19109u, u_input.a, u_input.b.x), vec3<u32>(u_input.b.x, arg_0.x, global1.b)), max(u_input.a, global3.b)), u_input.b.x, global3.b & global3.b));
    var var_2 = ~vec3<u32>(reverseBits(12105u), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(global3.b, var_1.x, 81718u, u_input.a), vec4<u32>(global1.b, arg_0.x, 1015u, arg_0.x), vec4<bool>(global1.a.x, global3.a.x, true, global1.a.x)), vec4<u32>(global1.b, 4294967295u, global3.b, var_1.x)), 43142u);
    return -1i;
}

fn func_1(arg_0: u32) -> f32 {
    global3 = Struct_1(global1.a, _wgslsmith_sub_u32(u_input.a, 4294967295u << (global1.b % 32u)));
    let var_0 = select(select(vec2<bool>(!all(vec3<bool>(global3.a.x, false, global1.a.x)), func_2(0u, vec3<i32>(2147483647i, -1i, 2147483647i), 0u, vec4<i32>(53289i, 21314i, 2147483647i, 1i)) <= u_input.b.x), select(global1.a.yy, vec2<bool>(true, global1.a.x), !(!global3.a.zw)), any(select(global1.a, vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), select(vec4<bool>(true, false, global1.a.x, global1.a.x), vec4<bool>(true, global1.a.x, false, global1.a.x), global3.a)))), global1.a.yz, any(global1.a));
    let var_1 = reverseBits(~func_3(abs(u_input.b))) >> (_wgslsmith_clamp_u32(reverseBits(arg_0), func_2(0u, firstTrailingBit(vec3<i32>(-10556i, -20866i, 1i)), min(global1.b, ~1u), ~vec4<i32>(2147483647i, 0i, 0i, 2147483647i)), arg_0) % 32u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(752f + -797f), _wgslsmith_f_op_f32(step(956f, -445f)), _wgslsmith_f_op_f32(ceil(-923f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(560f, -1759f, -519f), vec3<f32>(252f, 110f, -735f)) - vec3<f32>(394f, 508f, 1723f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1118f, -1090f, -1457f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-190f, 1157f, -491f)))))));
    let var_3 = global3.b;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-var_2.x)) - var_2.x), 1f);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = firstLeadingBit(~(-select(select(vec2<i32>(0i, 18528i), vec2<i32>(-1i, 90542i), vec2<bool>(arg_1, global1.a.x)), -vec2<i32>(2147483647i, 22013i), all(arg_2.a.yz))));
    var var_1 = arg_2;
    let var_2 = vec2<u32>(1u, select(82172u, ~(u_input.b.x << (min(0u, global3.b) % 32u)), -abs(var_0.x) <= (_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.x, var_0.x, 12985i), vec4<i32>(18300i, var_0.x, -1i, var_0.x)) >> (_wgslsmith_clamp_u32(17546u, var_1.b, var_1.b) % 32u))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1581f))));
    var var_4 = global2[_wgslsmith_index_u32(var_2.x, 27u)];
    return Struct_1(vec4<bool>(true, true, true, all(var_4.a.yx)), ~func_2(global1.b, -_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, -2147483647i, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x)), ~reverseBits(0u), vec4<i32>(var_0.x, max(var_0.x, var_0.x), var_0.x | -1i, ~var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(false | (_wgslsmith_div_f32(-265f, _wgslsmith_f_op_f32(trunc(-423f))) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1302f)), -250f))), global1.a.x, Struct_1(global1.a, select(19197u, _wgslsmith_clamp_u32(~85810u, global3.b, 1u), false)), vec3<f32>(_wgslsmith_f_op_f32(390f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -523f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(global1.b)), _wgslsmith_f_op_f32(min(-1132f, 1042f)))))), _wgslsmith_f_op_f32(574f * _wgslsmith_f_op_f32(select(-150f, 269f, true)))));
    global3 = func_4(global3.a.x, all(!var_0.a.zxz), func_4(global3.a.x, true, Struct_1(global3.a, 7242u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(495f, -1149f, 223f), vec3<f32>(-568f, -439f, 296f), vec3<bool>(false, false, true))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1076f, 937f, -838f) - vec3<f32>(889f, -1073f, 598f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-662f, -2119f, -1000f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 2013f, 1151f), vec3<f32>(172f, -754f, -276f), var_0.a.zyz))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1675f, -1000f, -249f), vec3<f32>(1000f, -1000f, -1815f))))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1703f), _wgslsmith_div_f32(-1332f, 123f), _wgslsmith_f_op_f32(f32(-1f) * -440f))))));
    let var_1 = Struct_1(global1.a, global1.b);
    global1 = Struct_1(!(!(!select(vec4<bool>(true, true, var_1.a.x, false), global1.a, false))), ~(~global1.b));
    let var_2 = Struct_1(var_0.a, ~(~_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.b, 0u), global3.b & var_0.b)));
    var var_3 = countOneBits(reverseBits(~(-vec4<i32>(1i, -44430i, -38472i, 0i)) >> (~firstTrailingBit(vec4<u32>(u_input.a, var_1.b, var_2.b, 1837u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~vec2<u32>(var_0.b, 4294967295u))), ~var_3.x);
}

