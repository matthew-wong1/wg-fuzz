struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(true, 54625u, 1900f, vec4<u32>(4294967295u, 49982u, 107096u, 1u), vec2<bool>(true, true)), Struct_1(true, 40962u, 1582f, vec4<u32>(43687u, 4294967295u, 56955u, 0u), vec2<bool>(true, false)), Struct_1(false, 4506u, 331f, vec4<u32>(8022u, 7355u, 21780u, 4294967295u), vec2<bool>(false, false)), Struct_1(true, 0u, -397f, vec4<u32>(32825u, 16788u, 3884u, 57277u), vec2<bool>(false, false)), Struct_1(false, 1u, 533f, vec4<u32>(33229u, 41581u, 4294967295u, 50521u), vec2<bool>(false, true)), Struct_1(true, 1u, -485f, vec4<u32>(67896u, 1u, 4294967295u, 51113u), vec2<bool>(true, false)), Struct_1(false, 3148u, 621f, vec4<u32>(22651u, 0u, 0u, 0u), vec2<bool>(false, true)), Struct_1(true, 0u, 271f, vec4<u32>(83782u, 24019u, 4294967295u, 19985u), vec2<bool>(false, true)), Struct_1(true, 67844u, -404f, vec4<u32>(45763u, 29224u, 58958u, 0u), vec2<bool>(false, false)), Struct_1(false, 0u, 1062f, vec4<u32>(0u, 36724u, 52296u, 4294967295u), vec2<bool>(true, false)), Struct_1(false, 1u, -181f, vec4<u32>(38674u, 49274u, 16228u, 1u), vec2<bool>(true, false)), Struct_1(false, 1u, -1062f, vec4<u32>(45821u, 40671u, 4294967295u, 65468u), vec2<bool>(true, true)), Struct_1(false, 95891u, -154f, vec4<u32>(4294967295u, 25205u, 1u, 73409u), vec2<bool>(true, true)));

var<private> global1: array<u32, 23>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = arg_3;
    let var_1 = Struct_1(false, 0u, 432f, vec4<u32>(4294967295u, 0u, countOneBits(arg_3), 4922u), vec2<bool>(arg_2.e.x, !(true != !arg_2.e.x)));
    var var_2 = false;
    var var_3 = Struct_2(true);
    let var_4 = Struct_2(all(var_1.e));
    return !(!(2890i == (arg_0 >> (abs(4720u) % 32u))));
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_1, 13>();
    let var_0 = Struct_2(func_3(countOneBits(2147483647i), ~(-(~vec2<i32>(0i, -32571i))), Struct_1(1u > firstLeadingBit(global1[_wgslsmith_index_u32(42213u, 23u)]), countOneBits(firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)])), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(-396f, 1000f, true))), ~abs(vec4<u32>(1u, 108095u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22689u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(31052u, 23u)])), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), 1563u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(1041f)) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -370f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(652f))))), ~(~_wgslsmith_div_u32(104160u, global1[_wgslsmith_index_u32(4294967295u, 23u)]) & firstLeadingBit(0u)), 596f, ~(~_wgslsmith_sub_vec4_u32(min(vec4<u32>(31583u, global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57112u, 23u)], 23u)], 0u), vec4<u32>(29413u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], global1[_wgslsmith_index_u32(0u, 23u)], 1u)), abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(83349u, 23u)], 23u)], 23u)], 1u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28348u, 23u)], 23u)])))), !select(vec2<bool>(true, !var_0.a), vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(var_0.a, var_0.a, var_0.a, false)), select(var_0.a, var_0.a, var_0.a))));
    var var_2 = var_0.a | !var_1.a;
    global1 = array<u32, 23>();
    return Struct_2(var_1.c > 213f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = abs(~((i32(-1i) * -3754i) ^ reverseBits(u_input.a)));
    var var_1 = Struct_1(false, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(arg_3.d.yxw) & vec3<u32>(4345u, global1[_wgslsmith_index_u32(0u, 23u)], 4294967295u), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(arg_3.d.x, arg_2.b, 25051u)), ~vec3<u32>(4294967295u, arg_2.d.x, arg_2.d.x))), ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(1u, 23u)], min(arg_2.d.x, arg_2.d.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.c - arg_3.c), -1364f)), arg_2.c, !any(arg_2.e))), -925f)), arg_2.d, arg_2.e);
    var var_2 = u_input.a;
    let var_3 = Struct_1(!(!var_1.e.x), global1[_wgslsmith_index_u32(~(~var_1.d.x), 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.c))) + var_1.c)), firstTrailingBit(~(~arg_2.d)), vec2<bool>(true, true));
    var var_4 = arg_0;
    return abs(countOneBits(_wgslsmith_div_i32(-27913i, -u_input.a)));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    var var_0 = 1u;
    let var_1 = min(_wgslsmith_mod_i32(_wgslsmith_sub_i32(~2147483647i, _wgslsmith_add_i32(-2147483647i, u_input.a)), reverseBits(func_4(Struct_2(true), func_2(), Struct_1(false, global1[_wgslsmith_index_u32(14075u, 23u)], 1398f, vec4<u32>(1u, 43053u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28096u, 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), vec2<bool>(true, true)), Struct_1(true, 54092u, -440f, vec4<u32>(global1[_wgslsmith_index_u32(1u, 23u)], 4294967295u, global1[_wgslsmith_index_u32(1u, 23u)], 1u), vec2<bool>(true, true))))), firstLeadingBit(~_wgslsmith_mod_i32(arg_0.x & -1i, -32715i)));
    var var_2 = arg_0.yzz;
    var_2 = min(arg_0.xxz, -_wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, u_input.b, u_input.b), vec3<i32>(var_2.x, -88i, var_1) >> (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(82600u, 23u)], 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(1u, 23u)], 4294967295u) % vec3<u32>(32u)))) >> (~(~min(~vec3<u32>(1u, global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23768u, 23u)], 23u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9073u, 23u)], 23u)]) ^ vec3<u32>(global1[_wgslsmith_index_u32(65087u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(64705u, 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)]))) % vec3<u32>(32u));
    var_2 = ~countOneBits(~vec3<i32>(-u_input.a, firstLeadingBit(7956i), _wgslsmith_add_i32(var_2.x, u_input.a)));
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    let var_0 = global1[_wgslsmith_index_u32(0u, 23u)] > 323u;
    var var_1 = ~(~countOneBits(max(vec2<u32>(0u, 22095u), vec2<u32>(global1[_wgslsmith_index_u32(0u, 23u)], 8349u))));
    var var_2 = ~vec2<i32>(u_input.b | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, 36716i, u_input.b) >> (vec4<u32>(global1[_wgslsmith_index_u32(1u, 23u)], var_1.x, 4294967295u, global1[_wgslsmith_index_u32(3106u, 23u)]) % vec4<u32>(32u)), max(vec4<i32>(u_input.b, u_input.b, -11512i, 2147483647i), vec4<i32>(u_input.a, -2147483647i, 1i, u_input.b))), ~(~u_input.a));
    let var_3 = Struct_1(!var_0, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19616u, 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), vec2<u32>(40471u, 13338u)) ^ min(~1u, ~0u), 23u)], 599f, _wgslsmith_clamp_vec4_u32(vec4<u32>(12413u, ~_wgslsmith_mod_u32(var_1.x, 4294967295u), 0u, 65742u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, var_1.x, 1u) << (vec4<u32>(36904u, var_1.x, global1[_wgslsmith_index_u32(var_1.x, 23u)], var_1.x) % vec4<u32>(32u)), vec4<u32>(4294967295u, 41815u, 32657u, global1[_wgslsmith_index_u32(1u, 23u)])) >> (~countOneBits(vec4<u32>(0u, 0u, 4294967295u, global1[_wgslsmith_index_u32(var_1.x, 23u)])) % vec4<u32>(32u)), ~(~vec4<u32>(42479u, 30989u, var_1.x, var_1.x))), vec2<bool>(true, true));
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<i32>(var_2.x, -1349i, var_2.x, u_input.b))) - _wgslsmith_f_op_f32(trunc(587f))), -2250f, var_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-588f + var_3.c))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, 1729f, var_3.c, var_3.c))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-193f, 125f, var_3.c, var_3.c) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(851f, 249f, -1000f, var_3.c))))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-(-vec4<i32>(u_input.a, u_input.a, u_input.b, var_2.x) >> (abs(vec4<u32>(var_3.b, 81516u, var_3.b, var_3.b)) % vec4<u32>(32u)))), ~vec2<u32>(56755u, abs(~25888u)), 0u);
}

