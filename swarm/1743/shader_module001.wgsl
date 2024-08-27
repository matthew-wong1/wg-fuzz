struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(11284i, -22650i);

var<private> global1: array<u32, 9> = array<u32, 9>(1u, 1u, 13825u, 53303u, 1u, 89627u, 11861u, 40698u, 13827u);

var<private> global2: array<u32, 22>;

var<private> global3: array<f32, 8>;

var<private> global4: array<Struct_2, 20>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = Struct_1(arg_0, true);
    let var_1 = select(_wgslsmith_clamp_vec2_i32(abs(~vec2<i32>(u_input.a, 10648i)), firstLeadingBit(select(vec2<i32>(u_input.a, global0.x), select(vec2<i32>(u_input.a, global0.x), vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, true)), arg_0.x)), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(6794i, -11465i), vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(-2147483647i, -19746i)), min(vec2<i32>(-2147483647i, u_input.a), -vec2<i32>(-66305i, u_input.a)))), _wgslsmith_div_vec2_i32((vec2<i32>(-1i) * -vec2<i32>(u_input.a, 12120i)) >> (firstLeadingBit(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18900u, 22u)], 22u)], 22u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 22u)], 9u)])) % vec2<u32>(32u)), vec2<i32>(-34059i, _wgslsmith_add_i32(max(global0.x, global0.x), 1i))), all(!select(select(var_0.a.zx, arg_0.yz, vec2<bool>(true, true)), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(var_0.b, true))));
    global0 = vec2<i32>(_wgslsmith_mod_i32(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(30846i, var_1.x, -2147483647i, 45025i), vec4<i32>(-1i, u_input.a, global0.x, u_input.a)) << (0u % 32u)), _wgslsmith_add_i32(~(-1i), var_1.x)), var_1.x);
    var var_2 = global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61268u, 22u)], 20u)];
    return vec4<bool>(select(var_2.b.b, !(!any(arg_1)), false), all(vec2<bool>(_wgslsmith_f_op_f32(-arg_2.x) >= _wgslsmith_f_op_f32(f32(-1f) * -910f), all(arg_1))), var_2.b.a.x, !(!(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 22u)], 9u)] >= 26822u) && any(vec2<bool>(false, false))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3) -> vec2<i32> {
    let var_0 = global4[_wgslsmith_index_u32(1u, 20u)];
    var var_1 = ~firstLeadingBit(_wgslsmith_sub_vec3_u32(select(_wgslsmith_clamp_vec3_u32(arg_2.d, vec3<u32>(7746u, arg_2.d.x, global2[_wgslsmith_index_u32(arg_2.d.x, 22u)]), arg_2.d), vec3<u32>(39237u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.d.x, 22u)], 22u)], 9u)], 9u)], 22u)], global1[_wgslsmith_index_u32(1u, 9u)]), vec3<bool>(false, true, true)), _wgslsmith_mult_vec3_u32(~arg_2.d, vec3<u32>(arg_0.d.x, 29330u, 0u) | arg_0.d)));
    global0 = arg_2.c.zy << (arg_2.d.yx % vec2<u32>(32u));
    var var_2 = vec3<i32>(i32(-1i) * -(~(-arg_2.c.x)), min(~2147483647i, var_0.a.x) << (_wgslsmith_add_u32(~(~1u), ~59369u) % 32u), _wgslsmith_clamp_i32(19371i, u_input.a, _wgslsmith_div_i32(arg_2.a.a.x, ~arg_0.c.x)));
    let var_3 = Struct_1(arg_0.a.b.a, all(!func_3(arg_2.a.b.a, !vec2<bool>(false, var_0.b.b), vec4<f32>(global3[_wgslsmith_index_u32(var_1.x, 8u)], arg_0.b.x, arg_2.b.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55821u, 22u)], 8u)])).xy));
    return _wgslsmith_mod_vec2_i32(~(~(var_0.a ^ var_0.a)) << (var_1.yx % vec2<u32>(32u)), firstLeadingBit(var_0.a));
}

fn func_2() -> i32 {
    let var_0 = func_4(Struct_3(Struct_2(~max(vec2<i32>(u_input.a, 388i), vec2<i32>(-50780i, u_input.a)), Struct_1(vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(54586u, 8u)], global3[_wgslsmith_index_u32(27787u, 8u)], -1019f, 1644f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1248f, -207f, -1626f, 1090f) * vec4<f32>(-500f, -364f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 22u)], 8u)], global3[_wgslsmith_index_u32(54815u, 8u)])), true))), _wgslsmith_mod_vec3_i32(~(~vec3<i32>(u_input.a, u_input.a, 27177i)), ~(~vec3<i32>(60336i, 0i, global0.x))), vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(112122u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 22u)], 22u)]), 9u)], _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69132u, 9u)], 22u)], global1[_wgslsmith_index_u32(4294967295u, 9u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 22u)], 9u)], 9u)]) ^ (select(vec3<u32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 9u)], 42946u, 60565u), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 9u)], 4294967295u), true) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(115909u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], 17617u), vec3<u32>(4444u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(75784u, 9u)], 9u)], 22u)], global2[_wgslsmith_index_u32(51984u, 22u)])) % vec3<u32>(32u))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), !func_3(vec3<bool>(true, true, false), vec2<bool>(false, true), vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 8u)], -158f, -287f, 236f)))), u_input.a, Struct_3(Struct_2(vec2<i32>(global0.x, _wgslsmith_mult_i32(global0.x, 0i)), Struct_1(vec3<bool>(false, true, false), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(257f, 976f, 249f, -173f) * vec4<f32>(-1000f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(101063u, 9u)], 22u)], 8u)], global3[_wgslsmith_index_u32(3665u, 8u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24568u, 22u)], 9u)], 22u)], 8u)])))) + vec4<f32>(global3[_wgslsmith_index_u32(4096u, 8u)], _wgslsmith_f_op_f32(1000f + 159f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(25112u, 8u)] - -823f), global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1972u, 9u)], 8u)])), ~firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, global0.x, u_input.a), vec3<i32>(u_input.a, global0.x, global0.x))), vec3<u32>(global1[_wgslsmith_index_u32(14186u, 9u)], global1[_wgslsmith_index_u32(countOneBits(max(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38134u, 22u)], 22u)], 9u)])), 9u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 22u)], 14004u), 22u)], 22u)]), !vec4<bool>(true, false, true, all(vec4<bool>(false, true, false, false)))));
    let var_1 = u_input.a ^ -6462i;
    let var_2 = func_3(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), select(vec2<bool>(any(vec3<bool>(true, true, false)), false), select(vec2<bool>(-1i >= var_1, true), func_3(func_3(vec3<bool>(true, false, true), vec2<bool>(true, false), vec4<f32>(294f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36453u, 9u)], 8u)], global3[_wgslsmith_index_u32(1u, 8u)], 541f)).zxy, vec2<bool>(false, true), _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(34271u, 8u)], -142f, global3[_wgslsmith_index_u32(1u, 8u)], 1247f), vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10673u, 22u)], 9u)], 9u)], 9u)], 9u)], 8u)], -1230f, 389f))).yz, select(func_3(vec3<bool>(true, false, true), vec2<bool>(false, false), vec4<f32>(-425f, 268f, -1671f, -1000f)).zy, vec2<bool>(true, true), vec2<bool>(true, true))), true || (true && all(vec2<bool>(false, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f + -178f), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(44146u, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)]), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16653u, 9u)], 9u)], 22u)], 9u)], 9u)]), 9u)], 8u)], _wgslsmith_f_op_f32(f32(-1f) * -432f)) + vec4<f32>(888f, _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 22u)], 8u)])), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~71071u, 9u)], 8u)], _wgslsmith_f_op_f32(sign(1716f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-737f, 183f, 371f, -1601f))))));
    var var_3 = -(~vec2<i32>(var_1, ~(~var_0.x)));
    global2 = array<u32, 22>();
    return select(min(var_0.x, ~_wgslsmith_mult_i32(global0.x, var_1)), var_0.x, true) << (global1[_wgslsmith_index_u32(select(1u, global1[_wgslsmith_index_u32(1u, 9u)], var_2.x & true), 9u)] % 32u);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec2<f32>) -> vec4<bool> {
    var var_0 = global4[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(max(~arg_0.d.x, ~4294967295u), ~1u)), 20u)];
    let var_1 = vec3<i32>(countOneBits(firstTrailingBit(arg_0.c.x) ^ var_0.a.x) ^ _wgslsmith_mult_i32(min(_wgslsmith_mult_i32(30763i, arg_1.a.x), _wgslsmith_mod_i32(arg_1.a.x, var_0.a.x)), ~func_2()), firstTrailingBit(-2147483647i), func_2());
    global2 = array<u32, 22>();
    var var_2 = vec3<u32>(arg_0.d.x, firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(arg_0.d.x, 22u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(15827u, 4294967295u, arg_0.d.x), 22u)], arg_0.d.x), vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(668u, 22u)], 22u)], 0u, 1u) >> (vec4<u32>(4294967295u, 16206u, 1u, 396u) % vec4<u32>(32u))), 9u)]), abs(_wgslsmith_add_u32(~(~4294967295u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_0.d.xy, arg_0.d.xx), arg_0.d.x), 22u)])));
    return vec4<bool>(arg_1.b.b, false, arg_0.e.x, arg_1.b.a.x);
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = false;
    global3 = array<f32, 8>();
    var var_1 = Struct_2(~vec2<i32>(_wgslsmith_sub_i32(22673i, 40865i), _wgslsmith_mult_i32(-1i, arg_2.a.a.x)) ^ _wgslsmith_div_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -32794i), arg_2.c.zz, vec2<i32>(14955i, arg_2.a.a.x)), arg_2.c.xx), Struct_1(arg_2.a.b.a, u_input.a > arg_0));
    global4 = array<Struct_2, 20>();
    global4 = array<Struct_2, 20>();
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-475f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(933f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 8u)], var_1.b.b)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(25736u, 8u)] + arg_2.b.x))))) + global3[_wgslsmith_index_u32(4294967295u, 8u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(22388i, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_1(Struct_3(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 9u)], 20u)], vec4<f32>(1000f, global3[_wgslsmith_index_u32(65999u, 8u)], global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)]), vec3<i32>(u_input.a, u_input.a, 1i), vec3<u32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 22u)], 9u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 22u)], 9u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 22u)]), vec4<bool>(true, true, true, true)), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(0u, 22u)], 82236u), vec2<u32>(global2[_wgslsmith_index_u32(1u, 22u)], 35625u)), 20u)], vec4<bool>(false, false, false, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(862f, global3[_wgslsmith_index_u32(69786u, 8u)]) + vec2<f32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19102u, 22u)], 9u)], 8u)], 281f)))), !(!func_3(vec3<bool>(false, true, true), vec2<bool>(true, false), vec4<f32>(1082f, global3[_wgslsmith_index_u32(1u, 8u)], 1579f, global3[_wgslsmith_index_u32(5145u, 8u)]))), true), Struct_3(Struct_2(vec2<i32>(max(u_input.a, 26212i), 0i), Struct_1(vec3<bool>(true, false, false), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 8u)], -778f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 8u)], 381f), vec4<f32>(-959f, global3[_wgslsmith_index_u32(0u, 8u)], -689f, 908f))))), vec4<f32>(_wgslsmith_div_f32(949f, -239f), _wgslsmith_f_op_f32(f32(-1f) * -880f), global3[_wgslsmith_index_u32(abs(59895u), 8u)], _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24567u, 9u)], 9u)], 9u)], 8u)])))), (~vec3<i32>(u_input.a, global0.x, -57564i) >> (~vec3<u32>(0u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 9u)]) % vec3<u32>(32u))) & vec3<i32>(select(1i, -1i, false), global0.x | 2147483647i, 9604i), _wgslsmith_add_vec3_u32(vec3<u32>(min(16158u, 16490u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20263u, 9u)], 9u)], global2[_wgslsmith_index_u32(25037u, 22u)]), abs(~vec3<u32>(global1[_wgslsmith_index_u32(1u, 9u)], 41619u, global1[_wgslsmith_index_u32(1u, 9u)]))), vec4<bool>(true, -1i == global0.x, all(vec3<bool>(true, true, true)), true)), Struct_2(reverseBits((vec2<i32>(u_input.a, global0.x) >> (vec2<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 22u)], 72023u) % vec2<u32>(32u))) ^ ~vec2<i32>(global0.x, u_input.a)), Struct_1(vec3<bool>(true, true, true), true)));
}

